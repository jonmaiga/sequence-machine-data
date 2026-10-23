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
import Seq.B005.C002
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A004600: Expansion of e in base 9.

The programs for A004600, there is no canonical definition to state claims against.
-/

/-! ## A004600.P4239114542197860187

`gcd(A272598(n+1), A332395(n+1))`
-/

namespace A004600.P4239114542197860187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A272598 (n + 1)) (A332395 (n + 1))

end

end A004600.P4239114542197860187

/-! ## A004600.P4192835539682115376

`A332395(n+1)+A101455(A335527(n+1))`
-/

namespace A004600.P4192835539682115376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332395 (n + 1) + A101455 (A335527 (n + 1)).toNat

end

end A004600.P4192835539682115376

/-! ## A004600.P5077195860166054465

`A332395(n+1)+A178225(A264443(n+1))`
-/

namespace A004600.P5077195860166054465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332395 (n + 1) + A178225 (A264443 (n + 1)).toNat

end

end A004600.P5077195860166054465

/-! ## A004600.P15411897787208836197

`A332395(n+1)+A088917(A332368(n+2))`
-/

namespace A004600.P15411897787208836197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332395 (n + 1) + A088917 (A332368 (n + 2)).toNat

end

end A004600.P15411897787208836197

/-! ## A004600.P10847074517309760323

`A010054(A008837(n+1))*A332395(n+1)`
-/

namespace A004600.P10847074517309760323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A008837 (n + 1)).toNat * A332395 (n + 1)

end

end A004600.P10847074517309760323

/-!
# A004601: Expansion of Pi in base 2 (or, binary expansion of Pi).

The programs for A004601, there is no canonical definition to state claims against.
-/

/-! ## A004601.P5626419426343103631

`∑[A155482(n)]`
-/

namespace A004601.P5626419426343103631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004601.P5626419426343103631

/-! ## A004601.P14308242573437431736

`A159959(n)%2`
-/

namespace A004601.P14308242573437431736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159959 n) 2

end

end A004601.P14308242573437431736

/-! ## A004601.P12628023976379327343

`1-A180433(n+1)`
-/

namespace A004601.P12628023976379327343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A180433 (n + 1)

end

end A004601.P12628023976379327343

/-! ## A004601.P12287957153632610609

`char[A004711(n+1)-1]`
-/

namespace A004601.P12287957153632610609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A004601.P12287957153632610609

/-! ## A004601.P6994046554110741936

`and(A158388(n), A159959(n))`
-/

namespace A004601.P6994046554110741936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A159959 n)

end

end A004601.P6994046554110741936

/-! ## A004601.P16008988914557764639

`and(A159959(n), A267537(n))`
-/

namespace A004601.P16008988914557764639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159959 n) (A267537 n)

end

end A004601.P16008988914557764639

/-! ## A004601.P16693325252578267036

`and(A159959(n), A267869(n))`
-/

namespace A004601.P16693325252578267036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159959 n) (A267869 n)

end

end A004601.P16693325252578267036

/-! ## A004601.P5041850836942021758

`and(A159959(n), A267871(n))`
-/

namespace A004601.P5041850836942021758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159959 n) (A267871 n)

end

end A004601.P5041850836942021758

/-! ## A004601.P10828739147430291974

`xor(1, A180433(A000027(n+1)))`
-/

namespace A004601.P10828739147430291974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A180433 (A000027 (n + 1)).toNat)

end

end A004601.P10828739147430291974

/-! ## A004601.P3918505416034369161

`A000007(n*A180433(n+1))`
-/

namespace A004601.P3918505416034369161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A180433 (n + 1)).toNat

end

end A004601.P3918505416034369161

/-! ## A004601.P18116114152201150230

`floor(acot(A028310(n)*A180433(n+1)))`
-/

namespace A004601.P18116114152201150230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A028310 n * A180433 (n + 1) : ℝ)⌋

end

end A004601.P18116114152201150230

/-! ## A004601.P17199420424737040546

`A000035(A159959(n))`
-/

namespace A004601.P17199420424737040546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A159959 n).toNat

end

end A004601.P17199420424737040546

/-! ## A004601.P15344831173072861987

`A059841(A159959(n)+1)`
-/

namespace A004601.P15344831173072861987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A159959 n + 1).toNat

end

end A004601.P15344831173072861987

/-! ## A004601.P14551389280982787708

`and(A159959(n), A176410(n))`
-/

namespace A004601.P14551389280982787708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159959 n) (A176410 n)

end

end A004601.P14551389280982787708

/-! ## A004601.P5138677454169038362

`and(A159959(n), A176794(n))`
-/

namespace A004601.P5138677454169038362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159959 n) (A176794 n)

end

end A004601.P5138677454169038362

/-! ## A004601.P745582649632279727

`A030315(A083652(n)*A180433(n+1))`
-/

namespace A004601.P745582649632279727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 (A083652 n * A180433 (n + 1)).toNat

end

end A004601.P745582649632279727

/-! ## A004601.P11925043008576229742

`floor(2^n*acos(0))%2`
-/

namespace A004601.P11925043008576229742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 ^ n : ℝ) * Real.arccos (0 : ℝ)⌋ 2

end

end A004601.P11925043008576229742

/-! ## A004601.P1074031952198647974

`floor(2^n*asin(1))%2`
-/

namespace A004601.P1074031952198647974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 ^ n : ℝ) * Real.arcsin (1 : ℝ)⌋ 2

end

end A004601.P1074031952198647974

/-! ## A004601.P14966499868962023970

`and(1, floor(2^n*acos(0)))`
-/

namespace A004601.P14966499868962023970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(2 ^ n : ℝ) * Real.arccos (0 : ℝ)⌋

end

end A004601.P14966499868962023970

/-!
# A004602: Expansion of Pi in base 3.

The programs for A004602, there is no canonical definition to state claims against.
-/

/-! ## A004602.P3184501814369560807

`A159962(n)%3`
-/

namespace A004602.P3184501814369560807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159962 n) 3

end

end A004602.P3184501814369560807

/-! ## A004602.P916758748755978189

`A010872(A159962(n))`
-/

namespace A004602.P916758748755978189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A159962 n).toNat

end

end A004602.P916758748755978189

/-! ## A004602.P12984262068200621852

`A159955(3*A159962(n))`
-/

namespace A004602.P12984262068200621852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159955 (3 * A159962 n).toNat

end

end A004602.P12984262068200621852

/-! ## A004602.P601173855212785983

`A110269(4*A159962(n))`
-/

namespace A004602.P601173855212785983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110269 (4 * A159962 n).toNat

end

end A004602.P601173855212785983

/-! ## A004602.P9356843653059894684

`A110269(A159962(n)/(1/2)²)`
-/

namespace A004602.P9356843653059894684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110269 (SequenceMachineLib.roundAway ((A159962 n : ℚ) / ((1 : ℚ) / 2) ^ 2)).toNat

end

end A004602.P9356843653059894684

/-!
# A004603: Expansion of Pi in base 4.

The programs for A004603, there is no canonical definition to state claims against.
-/

/-! ## A004603.P3499461735681358959

`2*A004601(2*(n+1))+A004601(2*(n+1)+1)`
-/

namespace A004603.P3499461735681358959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004601 (2 * (n + 1)) + A004601 (2 * (n + 1) + 1)

end

end A004603.P3499461735681358959

/-! ## A004603.P14496187936047168209

`A004601(2*n+3)+2*A004601(2*(n+1))`
-/

namespace A004603.P14496187936047168209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (2 * n + 3) + 2 * A004601 (2 * (n + 1))

end

end A004603.P14496187936047168209

/-! ## A004603.P7537380128315375849

`floor(π*4^n)%4`
-/

namespace A004603.P7537380128315375849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.pi * (4 ^ n : ℝ)⌋ 4

end

end A004603.P7537380128315375849

/-! ## A004603.P17817570509679471142

`and(3, floor(π*4^n))`
-/

namespace A004603.P17817570509679471142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ⌊Real.pi * (4 ^ n : ℝ)⌋

end

end A004603.P17817570509679471142

/-!
# A004609: Expansion of sqrt(6) in base 2.

The programs for A004609, the canonical program `A004609.P6114762697630435467` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004609 has offset 2).

The definition of A004609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004609.P6114762697630435467

`A221718(A004273(n))%2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004609

/-- `A221718(A004273(n))%2` -/
def P6114762697630435467.Spec : Prop :=
  ∀ n, P6114762697630435467.a n = A004609 (n + 2)

theorem P6114762697630435467.correct : P6114762697630435467.Spec := by
  intro n
  simp only [A004609, Nat.add_sub_cancel]

end A004609

/-! ## A004609.P374197970271144564

`and(2, A221718(2*n+1))/2`
-/

namespace A004609.P374197970271144564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A221718 (2 * n + 1)) : ℚ) / 2

end

end A004609.P374197970271144564

namespace A004609

/-- `and(2, A221718(2*n+1))/2` -/
def P374197970271144564.Spec : Prop :=
  ∀ n, P374197970271144564.a n = (A004609 (n + 2) : ℚ)

end A004609

/-! ## A004609.P17705584328866278467

`floor(sqrt(A164908(n)))%2`
-/

namespace A004609.P17705584328866278467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A164908 n)) 2

end

end A004609.P17705584328866278467

namespace A004609

/-- `floor(sqrt(A164908(n)))%2` -/
def P17705584328866278467.Spec : Prop :=
  ∀ n, P17705584328866278467.a n = A004609 (n + 2)

end A004609

/-! ## A004609.P5101220762327265010

`and(1, floor(sqrt(A283507(2*n))))`
-/

namespace A004609.P5101220762327265010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.sqrt (A283507 (2 * n)))

end

end A004609.P5101220762327265010

namespace A004609

/-- `and(1, floor(sqrt(A283507(2*n))))` -/
def P5101220762327265010.Spec : Prop :=
  ∀ n, P5101220762327265010.a n = A004609 (n + 2)

end A004609

/-! ## A004609.P58429653425712786

`and(1, floor(sqrt(A290074(2*n))))`
-/

namespace A004609.P58429653425712786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.sqrt (A290074 (2 * n)))

end

end A004609.P58429653425712786

namespace A004609

/-- `and(1, floor(sqrt(A290074(2*n))))` -/
def P58429653425712786.Spec : Prop :=
  ∀ n, P58429653425712786.a n = A004609 (n + 2)

end A004609

/-! ## A004609.P7199020197658311604

`floor(sqrt(Δ[A000079(n)²]/2))%2`
-/

namespace A004609.P7199020197658311604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.sqrt ((f1 (n + 1) - f1 n : ℚ) / 2 : ℝ)⌋ 2

end

end A004609.P7199020197658311604

namespace A004609

/-- `floor(sqrt(Δ[A000079(n)²]/2))%2` -/
def P7199020197658311604.Spec : Prop :=
  ∀ n, P7199020197658311604.a n = A004609 (n + 2)

end A004609

/-!
# A004610: Expansion of sqrt(6) in base 3.

The programs for A004610, the canonical program `A004610.P5182888975923859271` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004610 has offset 1).

The definition of A004610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004610.P5182888975923859271

`A221944(2*n+1)%3`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004610

/-- `A221944(2*n+1)%3` -/
def P5182888975923859271.Spec : Prop :=
  ∀ n, P5182888975923859271.a n = A004610 (n + 1)

theorem P5182888975923859271.correct : P5182888975923859271.Spec := by
  intro n
  simp only [A004610, Nat.add_sub_cancel]

end A004610

/-! ## A004610.P4007886784108030489

`record[A221944(A004442(n))]%3`
-/

namespace A004610.P4007886784108030489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221944 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 3

end

end A004610.P4007886784108030489

namespace A004610

/-- `record[A221944(A004442(n))]%3` -/
def P4007886784108030489.Spec : Prop :=
  ∀ n, P4007886784108030489.a n = A004610 (n + 1)

end A004610

/-! ## A004610.P13137601081979102245

`record[A221944(A028234(n+1))]%3`
-/

namespace A004610.P13137601081979102245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221944 (A028234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 3

end

end A004610.P13137601081979102245

namespace A004610

/-- `record[A221944(A028234(n+1))]%3` -/
def P13137601081979102245.Spec : Prop :=
  ∀ n, P13137601081979102245.a n = A004610 (n + 1)

end A004610

/-! ## A004610.P9889147442909933861

`record[A221944(A185782(n+1))]%3`
-/

namespace A004610.P9889147442909933861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221944 (A185782 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 3

end

end A004610.P9889147442909933861

namespace A004610

/-- `record[A221944(A185782(n+1))]%3` -/
def P9889147442909933861.Spec : Prop :=
  ∀ n, P9889147442909933861.a n = A004610 (n + 1)

end A004610

/-! ## A004610.P3235336638130412242

`floor(sqrt(A087290(n)))%3`
-/

namespace A004610.P3235336638130412242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A087290 n)) 3

end

end A004610.P3235336638130412242

namespace A004610

/-- `floor(sqrt(A087290(n)))%3` -/
def P3235336638130412242.Spec : Prop :=
  ∀ n, P3235336638130412242.a n = A004610 (n + 1)

end A004610

/-! ## A004610.P13140696356917204786

`floor(sqrt(A199564(n)))%3`
-/

namespace A004610.P13140696356917204786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A199564 n)) 3

end

end A004610.P13140696356917204786

namespace A004610

/-- `floor(sqrt(A199564(n)))%3` -/
def P13140696356917204786.Spec : Prop :=
  ∀ n, P13140696356917204786.a n = A004610 (n + 1)

end A004610

/-!
# A004611: Divisible only by primes congruent to 1 mod 3.

The programs for A004611, the canonical program `A004611.P11928257504915027012` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004611 has offset 1).

The definition of A004611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5883 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004611.P14542654542680412239

`∪[A129904(n+1), A003215(n)]`
-/

namespace A004611.P14542654542680412239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004611.P14542654542680412239

namespace A004611

/-- `∪[A129904(n+1), A003215(n)]` -/
def P14542654542680412239.Spec : Prop :=
  ∀ n, (P14542654542680412239.a n : ℤ) = A004611 (n + 1)

end A004611

/-! ## A004611.P2384504890506096401

`∪[A129904(n+1), A008394(n)]`
-/

namespace A004611.P2384504890506096401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008394 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004611.P2384504890506096401

namespace A004611

/-- `∪[A129904(n+1), A008394(n)]` -/
def P2384504890506096401.Spec : Prop :=
  ∀ n, (P2384504890506096401.a n : ℤ) = A004611 (n + 1)

end A004611

/-! ## A004611.P16428536951860441367

`∪[A129904(n+1), A158480(n)]`
-/

namespace A004611.P16428536951860441367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158480 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004611.P16428536951860441367

namespace A004611

/-- `∪[A129904(n+1), A158480(n)]` -/
def P16428536951860441367.Spec : Prop :=
  ∀ n, (P16428536951860441367.a n : ℤ) = A004611 (n + 1)

end A004611

/-! ## A004611.P4599731279655528877

`filter[A034017(n+1), A014578(#)]`
-/

namespace A004611.P4599731279655528877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A004611.P4599731279655528877

namespace A004611

/-- `filter[A034017(n+1), A014578(#)]` -/
def P4599731279655528877.Spec : Prop :=
  ∀ n, P4599731279655528877.a n = A004611 (n + 1)

end A004611

/-! ## A004611.P1107177273881679392

`filter[A034017(n+2), A187074(#)]`
-/

namespace A004611.P1107177273881679392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A004611.P1107177273881679392

namespace A004611

/-- `filter[A034017(n+2), A187074(#)]` -/
def P1107177273881679392.Spec : Prop :=
  ∀ n, P1107177273881679392.a n = A004611 (n + 1)

end A004611

/-! ## A004611.P6682769228102698623

`filter[A364614(n+1), A187074(#)]`
-/

namespace A004611.P6682769228102698623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A004611.P6682769228102698623

namespace A004611

/-- `filter[A364614(n+1), A187074(#)]` -/
def P6682769228102698623.Spec : Prop :=
  ∀ n, P6682769228102698623.a n = A004611 (n + 1)

end A004611

/-! ## A004611.P12656253452469767210

`filter[A364614(n+1), A359374(#)]`
-/

namespace A004611.P12656253452469767210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A004611.P12656253452469767210

namespace A004611

/-- `filter[A364614(n+1), A359374(#)]` -/
def P12656253452469767210.Spec : Prop :=
  ∀ n, P12656253452469767210.a n = A004611 (n + 1)

end A004611

/-! ## A004611.P3853070341316727930

`filter[A364614(n+1), A373155(#)]`
-/

namespace A004611.P3853070341316727930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A004611.P3853070341316727930

namespace A004611

/-- `filter[A364614(n+1), A373155(#)]` -/
def P3853070341316727930.Spec : Prop :=
  ∀ n, P3853070341316727930.a n = A004611 (n + 1)

end A004611

/-! ## A004611.P5418584743629794243

`filter[A364614(n+1), A373156(#)]`
-/

namespace A004611.P5418584743629794243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A004611.P5418584743629794243

namespace A004611

/-- `filter[A364614(n+1), A373156(#)]` -/
def P5418584743629794243.Spec : Prop :=
  ∀ n, P5418584743629794243.a n = A004611 (n + 1)

end A004611

/-! ## A004611.P15862027026157049031

`filter[A364614(n+1), A374043(#)]`
-/

namespace A004611.P15862027026157049031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A004611.P15862027026157049031

namespace A004611

/-- `filter[A364614(n+1), A374043(#)]` -/
def P15862027026157049031.Spec : Prop :=
  ∀ n, P15862027026157049031.a n = A004611 (n + 1)

end A004611

/-! ## A004611.P11928257504915027012

`record[(n+1)*A319691(n+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004611

/-- `record[(n+1)*A319691(n+1)]` -/
def P11928257504915027012.Spec : Prop :=
  ∀ n, P11928257504915027012.a n = A004611 (n + 1)

theorem P11928257504915027012.correct : P11928257504915027012.Spec := by
  intro n
  simp only [A004611, Nat.add_sub_cancel]

end A004611

/-! ## A004611.P2681120763865981367

`filter[A034017(n+1), A354354(#)]`
-/

namespace A004611.P2681120763865981367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A004611.P2681120763865981367

namespace A004611

/-- `filter[A034017(n+1), A354354(#)]` -/
def P2681120763865981367.Spec : Prop :=
  ∀ n, P2681120763865981367.a n = A004611 (n + 1)

end A004611

/-! ## A004611.P16066978534194260292

`filter[A202822(n+1), A319691(#)]`
-/

namespace A004611.P16066978534194260292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A004611.P16066978534194260292

namespace A004611

/-- `filter[A202822(n+1), A319691(#)]` -/
def P16066978534194260292.Spec : Prop :=
  ∀ n, P16066978534194260292.a n = A004611 (n + 1)

end A004611

/-! ## A004611.P13212213525742012598

`filter[A364614(n+1), A162289(#)]`
-/

namespace A004611.P13212213525742012598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A004611.P13212213525742012598

namespace A004611

/-- `filter[A364614(n+1), A162289(#)]` -/
def P13212213525742012598.Spec : Prop :=
  ∀ n, P13212213525742012598.a n = A004611 (n + 1)

end A004611

/-! ## A004611.P3249792478099612560

`filter[A260682(n+1), A319691(#)]`
-/

namespace A004611.P3249792478099612560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A004611.P3249792478099612560

namespace A004611

/-- `filter[A260682(n+1), A319691(#)]` -/
def P3249792478099612560.Spec : Prop :=
  ∀ n, P3249792478099612560.a n = A004611 (n + 1)

end A004611

/-! ## A004611.P17741745987913097470

`filter[A266836(n+1), A319691(#)]`
-/

namespace A004611.P17741745987913097470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A004611.P17741745987913097470

namespace A004611

/-- `filter[A266836(n+1), A319691(#)]` -/
def P17741745987913097470.Spec : Prop :=
  ∀ n, P17741745987913097470.a n = A004611 (n + 1)

end A004611

/-! ## A004611.P12505474973134988448

`filter[A364614(n+1), A319691(#)]`
-/

namespace A004611.P12505474973134988448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A004611.P12505474973134988448

namespace A004611

/-- `filter[A364614(n+1), A319691(#)]` -/
def P12505474973134988448.Spec : Prop :=
  ∀ n, P12505474973134988448.a n = A004611 (n + 1)

end A004611

/-! ## A004611.P12030115808316303486

`filter[A364614(n+1), A320106(#)]`
-/

namespace A004611.P12030115808316303486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A004611.P12030115808316303486

namespace A004611

/-- `filter[A364614(n+1), A320106(#)]` -/
def P12030115808316303486.Spec : Prop :=
  ∀ n, P12030115808316303486.a n = A004611 (n + 1)

end A004611

/-! ## A004611.P11330804554727457132

`filter[A364614(n+1), A354354(#)]`
-/

namespace A004611.P11330804554727457132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A004611.P11330804554727457132

namespace A004611

/-- `filter[A364614(n+1), A354354(#)]` -/
def P11330804554727457132.Spec : Prop :=
  ∀ n, P11330804554727457132.a n = A004611 (n + 1)

end A004611

/-! ## A004611.P7606993252475980763

`filter[A034017(n+2), A162289(#)]`
-/

namespace A004611.P7606993252475980763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A004611.P7606993252475980763

namespace A004611

/-- `filter[A034017(n+2), A162289(#)]` -/
def P7606993252475980763.Spec : Prop :=
  ∀ n, P7606993252475980763.a n = A004611 (n + 1)

end A004611

/-!
# A004612: Numbers that are divisible only by primes congruent to 2 mod 3.

The programs for A004612, the canonical program `A004612.P8021407294462197357` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004612 has offset 1).

The definition of A004612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7375 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004612.P8021407294462197357

`filter[A088232(n+1), A014578(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A004612

/-- `filter[A088232(n+1), A014578(#)]` -/
def P8021407294462197357.Spec : Prop :=
  ∀ n, P8021407294462197357.a n = A004612 (n + 1)

theorem P8021407294462197357.correct : P8021407294462197357.Spec := by
  intro n
  simp only [A004612, Nat.add_sub_cancel]

end A004612

/-! ## A004612.P1583634798648212818

`filter[A088232(n+1), A374039(#)]`
-/

namespace A004612.P1583634798648212818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374039 (f1 j).toNat = 1) n)

end

end A004612.P1583634798648212818

namespace A004612

/-- `filter[A088232(n+1), A374039(#)]` -/
def P1583634798648212818.Spec : Prop :=
  ∀ n, P1583634798648212818.a n = A004612 (n + 1)

end A004612

/-! ## A004612.P15552217958005632863

`∩[A088232(n+1), A160545(n+1)]`
-/

namespace A004612.P15552217958005632863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004612.P15552217958005632863

namespace A004612

/-- `∩[A088232(n+1), A160545(n+1)]` -/
def P15552217958005632863.Spec : Prop :=
  ∀ n, (P15552217958005632863.a n : ℤ) = A004612 (n + 1)

end A004612

/-! ## A004612.P8364886843409119949

`∩[A160545(n+1), A230780(n+1)]`
-/

namespace A004612.P8364886843409119949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004612.P8364886843409119949

namespace A004612

/-- `∩[A160545(n+1), A230780(n+1)]` -/
def P8364886843409119949.Spec : Prop :=
  ∀ n, (P8364886843409119949.a n : ℤ) = A004612 (n + 1)

end A004612

/-! ## A004612.P1005155308205738000

`∩[A088232(n+1), A229973(n+1)]`
-/

namespace A004612.P1005155308205738000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004612.P1005155308205738000

namespace A004612

/-- `∩[A088232(n+1), A229973(n+1)]` -/
def P1005155308205738000.Spec : Prop :=
  ∀ n, (P1005155308205738000.a n : ℤ) = A004612 (n + 1)

end A004612

/-! ## A004612.P12286717023556513661

`∩[A229973(n+1), A230780(n+1)]`
-/

namespace A004612.P12286717023556513661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004612.P12286717023556513661

namespace A004612

/-- `∩[A229973(n+1), A230780(n+1)]` -/
def P12286717023556513661.Spec : Prop :=
  ∀ n, (P12286717023556513661.a n : ℤ) = A004612 (n + 1)

end A004612

/-! ## A004612.P11053034425542648849

`∩[A074232(n+1), A088232(n+1)]`
-/

namespace A004612.P11053034425542648849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004612.P11053034425542648849

namespace A004612

/-- `∩[A074232(n+1), A088232(n+1)]` -/
def P11053034425542648849.Spec : Prop :=
  ∀ n, (P11053034425542648849.a n : ℤ) = A004612 (n + 1)

end A004612

/-! ## A004612.P5087374075315576636

`∩[A001651(n+1), A088232(n+1)]`
-/

namespace A004612.P5087374075315576636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004612.P5087374075315576636

namespace A004612

/-- `∩[A001651(n+1), A088232(n+1)]` -/
def P5087374075315576636.Spec : Prop :=
  ∀ n, (P5087374075315576636.a n : ℤ) = A004612 (n + 1)

end A004612

/-! ## A004612.P12363994113176964618

`∩[A001651(n+1), A230780(n+1)]`
-/

namespace A004612.P12363994113176964618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004612.P12363994113176964618

namespace A004612

/-- `∩[A001651(n+1), A230780(n+1)]` -/
def P12363994113176964618.Spec : Prop :=
  ∀ n, (P12363994113176964618.a n : ℤ) = A004612 (n + 1)

end A004612

/-! ## A004612.P3085893823351982319

`∩[A007417(n+1), A088232(n+1)]`
-/

namespace A004612.P3085893823351982319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004612.P3085893823351982319

namespace A004612

/-- `∩[A007417(n+1), A088232(n+1)]` -/
def P3085893823351982319.Spec : Prop :=
  ∀ n, (P3085893823351982319.a n : ℤ) = A004612 (n + 1)

end A004612

/-! ## A004612.P3703190238575752938

`record[A343430(n+1)]`
-/

namespace A004612.P3703190238575752938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004612.P3703190238575752938

namespace A004612

/-- `record[A343430(n+1)]` -/
def P3703190238575752938.Spec : Prop :=
  ∀ n, P3703190238575752938.a n = A004612 (n + 1)

end A004612

/-! ## A004612.P16489438145056834549

`eq[1, gcd(3, A053191(n+1))]+1`
-/

namespace A004612.P16489438145056834549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A053191 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A004612.P16489438145056834549

namespace A004612

/-- `eq[1, gcd(3, A053191(n+1))]+1` -/
def P16489438145056834549.Spec : Prop :=
  ∀ n, (P16489438145056834549.a n : ℤ) = A004612 (n + 1)

end A004612

/-! ## A004612.P9256300418178098466

`∩[A088232(n+1), A382751(n+1)]`
-/

namespace A004612.P9256300418178098466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004612.P9256300418178098466

namespace A004612

/-- `∩[A088232(n+1), A382751(n+1)]` -/
def P9256300418178098466.Spec : Prop :=
  ∀ n, (P9256300418178098466.a n : ℤ) = A004612 (n + 1)

end A004612

/-! ## A004612.P11860092887644103107

`record[A038502((n+1)/A248909(n+1))]`
-/

namespace A004612.P11860092887644103107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A248909 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004612.P11860092887644103107

namespace A004612

/-- `record[A038502((n+1)/A248909(n+1))]` -/
def P11860092887644103107.Spec : Prop :=
  ∀ n, P11860092887644103107.a n = A004612 (n + 1)

end A004612

/-! ## A004612.P6719222170681375310

`eq[A001221(n+1), A005090(n+1)]+1`
-/

namespace A004612.P6719222170681375310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A004612.P6719222170681375310

namespace A004612

/-- `eq[A001221(n+1), A005090(n+1)]+1` -/
def P6719222170681375310.Spec : Prop :=
  ∀ n, (P6719222170681375310.a n : ℤ) = A004612 (n + 1)

end A004612

/-! ## A004612.P3780875731884529040

`eq[A005063(n+1), A005075(n+1)]+1`
-/

namespace A004612.P3780875731884529040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005075 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A004612.P3780875731884529040

namespace A004612

/-- `eq[A005063(n+1), A005075(n+1)]+1` -/
def P3780875731884529040.Spec : Prop :=
  ∀ n, (P3780875731884529040.a n : ℤ) = A004612 (n + 1)

end A004612

/-! ## A004612.P6724434010635039668

`eq[A001222(n+1), A319444(n+1)]+1`
-/

namespace A004612.P6724434010635039668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A004612.P6724434010635039668

namespace A004612

/-- `eq[A001222(n+1), A319444(n+1)]+1` -/
def P6724434010635039668.Spec : Prop :=
  ∀ n, (P6724434010635039668.a n : ℤ) = A004612 (n + 1)

end A004612

/-! ## A004612.P1938935015731704325

`lt[n+1, A283443(A000010(2*(n+1)))]+1`
-/

namespace A004612.P1938935015731704325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 (A000010 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004612.P1938935015731704325

namespace A004612

/-- `lt[n+1, A283443(A000010(2*(n+1)))]+1` -/
def P1938935015731704325.Spec : Prop :=
  ∀ n, (P1938935015731704325.a n : ℤ) = A004612 (n + 1)

end A004612

/-! ## A004612.P6223216476260711876

`eq[A065331(A000265(n+1)), A248909(n+1)]+1`
-/

namespace A004612.P6223216476260711876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A000265 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A004612.P6223216476260711876

namespace A004612

/-- `eq[A065331(A000265(n+1)), A248909(n+1)]+1` -/
def P6223216476260711876.Spec : Prop :=
  ∀ n, (P6223216476260711876.a n : ℤ) = A004612 (n + 1)

end A004612

/-! ## A004612.P17863331203901410410

`filter[A088232(n+1), A011655(#)]`
-/

namespace A004612.P17863331203901410410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A004612.P17863331203901410410

namespace A004612

/-- `filter[A088232(n+1), A011655(#)]` -/
def P17863331203901410410.Spec : Prop :=
  ∀ n, P17863331203901410410.a n = A004612 (n + 1)

end A004612

/-!
# A004613: Numbers that are divisible only by primes congruent to 1 mod 4.

The programs for A004613, the canonical program `A004613.P9700504550633713822` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004613 has offset 1).

The definition of A004613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004613.P12639722726505093209

`∪[A008846(n+1), A001844(n)]`
-/

namespace A004613.P12639722726505093209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004613.P12639722726505093209

namespace A004613

/-- `∪[A008846(n+1), A001844(n)]` -/
def P12639722726505093209.Spec : Prop :=
  ∀ n, (P12639722726505093209.a n : ℤ) = A004613 (n + 1)

end A004613

/-! ## A004613.P6786290997883969810

`∪[A008846(n+1), A001848(n)]`
-/

namespace A004613.P6786290997883969810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001848 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004613.P6786290997883969810

namespace A004613

/-- `∪[A008846(n+1), A001848(n)]` -/
def P6786290997883969810.Spec : Prop :=
  ∀ n, (P6786290997883969810.a n : ℤ) = A004613 (n + 1)

end A004613

/-! ## A004613.P1561670646680585085

`∪[A008846(n+1), A007204(n)]`
-/

namespace A004613.P1561670646680585085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007204 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004613.P1561670646680585085

namespace A004613

/-- `∪[A008846(n+1), A007204(n)]` -/
def P1561670646680585085.Spec : Prop :=
  ∀ n, (P1561670646680585085.a n : ℤ) = A004613 (n + 1)

end A004613

/-! ## A004613.P17570247152551004215

`∪[A008846(n+1), A008514(n)]`
-/

namespace A004613.P17570247152551004215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004613.P17570247152551004215

namespace A004613

/-- `∪[A008846(n+1), A008514(n)]` -/
def P17570247152551004215.Spec : Prop :=
  ∀ n, (P17570247152551004215.a n : ℤ) = A004613 (n + 1)

end A004613

/-! ## A004613.P1513483172392621056

`∪[A008846(n+1), A016818(n)]`
-/

namespace A004613.P1513483172392621056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016818 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004613.P1513483172392621056

namespace A004613

/-- `∪[A008846(n+1), A016818(n)]` -/
def P1513483172392621056.Spec : Prop :=
  ∀ n, (P1513483172392621056.a n : ℤ) = A004613 (n + 1)

end A004613

/-! ## A004613.P11491424456122282766

`∪[A008846(n+1), A143010(n)]`
-/

namespace A004613.P11491424456122282766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004613.P11491424456122282766

namespace A004613

/-- `∪[A008846(n+1), A143010(n)]` -/
def P11491424456122282766.Spec : Prop :=
  ∀ n, (P11491424456122282766.a n : ℤ) = A004613 (n + 1)

end A004613

/-! ## A004613.P9700504550633713822

`A008846(C(n, a(A057427(n)-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A004613

/-- `A008846(C(n, a(A057427(n)-1)))` -/
def P9700504550633713822.Spec : Prop :=
  ∀ n, P9700504550633713822.a n = A004613 (n + 1)

theorem P9700504550633713822.correct : P9700504550633713822.Spec := by
  intro n
  simp only [A004613, Nat.add_sub_cancel]

end A004613

/-! ## A004613.P8793429142946636621

`A008846(A028310(n))%A057326(n+1)`
-/

namespace A004613.P8793429142946636621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008846 (A028310 n).toNat) (A057326 (n + 1))

end

end A004613.P8793429142946636621

namespace A004613

/-- `A008846(A028310(n))%A057326(n+1)` -/
def P8793429142946636621.Spec : Prop :=
  ∀ n, P8793429142946636621.a n = A004613 (n + 1)

end A004613

/-! ## A004613.P12595332944116257831

`∩[2*n+1, A008784(n+1)]`
-/

namespace A004613.P12595332944116257831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004613.P12595332944116257831

namespace A004613

/-- `∩[2*n+1, A008784(n+1)]` -/
def P12595332944116257831.Spec : Prop :=
  ∀ n, (P12595332944116257831.a n : ℤ) = A004613 (n + 1)

end A004613

/-! ## A004613.P17965732888154152363

`filter[A008784(n+1), A187074(#)]`
-/

namespace A004613.P17965732888154152363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A004613.P17965732888154152363

namespace A004613

/-- `filter[A008784(n+1), A187074(#)]` -/
def P17965732888154152363.Spec : Prop :=
  ∀ n, P17965732888154152363.a n = A004613 (n + 1)

end A004613

/-! ## A004613.P10851995886527815475

`filter[A008784(n+1), A372573(#)]`
-/

namespace A004613.P10851995886527815475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A004613.P10851995886527815475

namespace A004613

/-- `filter[A008784(n+1), A372573(#)]` -/
def P10851995886527815475.Spec : Prop :=
  ∀ n, P10851995886527815475.a n = A004613 (n + 1)

end A004613

/-! ## A004613.P15619348703131400909

`filter[A008784(n+1), A372574(#)]`
-/

namespace A004613.P15619348703131400909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A004613.P15619348703131400909

namespace A004613

/-- `filter[A008784(n+1), A372574(#)]` -/
def P15619348703131400909.Spec : Prop :=
  ∀ n, P15619348703131400909.a n = A004613 (n + 1)

end A004613

/-! ## A004613.P1649556703322390036

`filter[A008784(n+1), A093719(#)]`
-/

namespace A004613.P1649556703322390036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A004613.P1649556703322390036

namespace A004613

/-- `filter[A008784(n+1), A093719(#)]` -/
def P1649556703322390036.Spec : Prop :=
  ∀ n, P1649556703322390036.a n = A004613 (n + 1)

end A004613

/-! ## A004613.P1540911964066316198

`filter[A008784(n+1), A152822(#)]`
-/

namespace A004613.P1540911964066316198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A004613.P1540911964066316198

namespace A004613

/-- `filter[A008784(n+1), A152822(#)]` -/
def P1540911964066316198.Spec : Prop :=
  ∀ n, P1540911964066316198.a n = A004613 (n + 1)

end A004613

/-! ## A004613.P13838510666165458887

`filter[A008784(n+1), A320106(#)]`
-/

namespace A004613.P13838510666165458887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A004613.P13838510666165458887

namespace A004613

/-- `filter[A008784(n+1), A320106(#)]` -/
def P13838510666165458887.Spec : Prop :=
  ∀ n, P13838510666165458887.a n = A004613 (n + 1)

end A004613

/-! ## A004613.P9245790910544130166

`filter[A008784(n+1), A354354(#)]`
-/

namespace A004613.P9245790910544130166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A004613.P9245790910544130166

namespace A004613

/-- `filter[A008784(n+1), A354354(#)]` -/
def P9245790910544130166.Spec : Prop :=
  ∀ n, P9245790910544130166.a n = A004613 (n + 1)

end A004613

/-! ## A004613.P1229039763488276724

`filter[A008784(n+1), A035263(#)]`
-/

namespace A004613.P1229039763488276724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A004613.P1229039763488276724

namespace A004613

/-- `filter[A008784(n+1), A035263(#)]` -/
def P1229039763488276724.Spec : Prop :=
  ∀ n, P1229039763488276724.a n = A004613 (n + 1)

end A004613

/-! ## A004613.P3223624693955301453

`∩[2*n+1, A057129(n+1)]`
-/

namespace A004613.P3223624693955301453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004613.P3223624693955301453

namespace A004613

/-- `∩[2*n+1, A057129(n+1)]` -/
def P3223624693955301453.Spec : Prop :=
  ∀ n, (P3223624693955301453.a n : ℤ) = A004613 (n + 1)

end A004613

/-! ## A004613.P2319820725814095898

`filter[A057129(n+1), A093719(#)]`
-/

namespace A004613.P2319820725814095898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A004613.P2319820725814095898

namespace A004613

/-- `filter[A057129(n+1), A093719(#)]` -/
def P2319820725814095898.Spec : Prop :=
  ∀ n, P2319820725814095898.a n = A004613 (n + 1)

end A004613

/-! ## A004613.P8359283682145288559

`filter[A057129(n+1), A320106(#)]`
-/

namespace A004613.P8359283682145288559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A004613.P8359283682145288559

namespace A004613

/-- `filter[A057129(n+1), A320106(#)]` -/
def P8359283682145288559.Spec : Prop :=
  ∀ n, P8359283682145288559.a n = A004613 (n + 1)

end A004613

/-!
# A004614: Numbers that are divisible only by primes congruent to 3 mod 4.

The programs for A004614, the canonical program `A004614.P9711491461572912569` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004614 has offset 1).

The definition of A004614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004614.P11982493820000658568

`∩[2*n+1, A004144(n+1)]`
-/

namespace A004614.P11982493820000658568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004614.P11982493820000658568

namespace A004614

/-- `∩[2*n+1, A004144(n+1)]` -/
def P11982493820000658568.Spec : Prop :=
  ∀ n, (P11982493820000658568.a n : ℤ) = A004614 (n + 1)

end A004614

/-! ## A004614.P6977237404085688036

`∩[2*n+1, A081754(n+1)]`
-/

namespace A004614.P6977237404085688036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004614.P6977237404085688036

namespace A004614

/-- `∩[2*n+1, A081754(n+1)]` -/
def P6977237404085688036.Spec : Prop :=
  ∀ n, (P6977237404085688036.a n : ℤ) = A004614 (n + 1)

end A004614

/-! ## A004614.P9711491461572912569

`filter[A081754(n+1), A354036(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A004614

/-- `filter[A081754(n+1), A354036(#)]` -/
def P9711491461572912569.Spec : Prop :=
  ∀ n, P9711491461572912569.a n = A004614 (n + 1)

theorem P9711491461572912569.correct : P9711491461572912569.Spec := by
  intro n
  simp only [A004614, Nat.add_sub_cancel]

end A004614

/-! ## A004614.P21765999258540577

`filter[A004144(n+1), A354036(#)]`
-/

namespace A004614.P21765999258540577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A004614.P21765999258540577

namespace A004614

/-- `filter[A004144(n+1), A354036(#)]` -/
def P21765999258540577.Spec : Prop :=
  ∀ n, P21765999258540577.a n = A004614 (n + 1)

end A004614

/-! ## A004614.P7090717083373478241

`∩[A004144(n+1), A069254(n+1)]`
-/

namespace A004614.P7090717083373478241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004614.P7090717083373478241

namespace A004614

/-- `∩[A004144(n+1), A069254(n+1)]` -/
def P7090717083373478241.Spec : Prop :=
  ∀ n, (P7090717083373478241.a n : ℤ) = A004614 (n + 1)

end A004614

/-! ## A004614.P109608151931946286

`∩[A004144(n+1), A045572(n+1)]`
-/

namespace A004614.P109608151931946286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004614.P109608151931946286

namespace A004614

/-- `∩[A004144(n+1), A045572(n+1)]` -/
def P109608151931946286.Spec : Prop :=
  ∀ n, (P109608151931946286.a n : ℤ) = A004614 (n + 1)

end A004614

/-! ## A004614.P10469255629612514308

`∩[A004144(n+1), A241662(n+1)]`
-/

namespace A004614.P10469255629612514308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004614.P10469255629612514308

namespace A004614

/-- `∩[A004144(n+1), A241662(n+1)]` -/
def P10469255629612514308.Spec : Prop :=
  ∀ n, (P10469255629612514308.a n : ℤ) = A004614 (n + 1)

end A004614

/-! ## A004614.P18309473549524084595

`∩[A004144(n+1), A204457(n+1)]`
-/

namespace A004614.P18309473549524084595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004614.P18309473549524084595

namespace A004614

/-- `∩[A004144(n+1), A204457(n+1)]` -/
def P18309473549524084595.Spec : Prop :=
  ∀ n, (P18309473549524084595.a n : ℤ) = A004614 (n + 1)

end A004614

/-! ## A004614.P13165726604627483241

`∩[A081754(n+1), A204457(n+1)]`
-/

namespace A004614.P13165726604627483241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004614.P13165726604627483241

namespace A004614

/-- `∩[A081754(n+1), A204457(n+1)]` -/
def P13165726604627483241.Spec : Prop :=
  ∀ n, (P13165726604627483241.a n : ℤ) = A004614 (n + 1)

end A004614

/-! ## A004614.P13268199297595776707

`∩[A004144(n+1), A204458(n+1)]`
-/

namespace A004614.P13268199297595776707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004614.P13268199297595776707

namespace A004614

/-- `∩[A004144(n+1), A204458(n+1)]` -/
def P13268199297595776707.Spec : Prop :=
  ∀ n, (P13268199297595776707.a n : ℤ) = A004614 (n + 1)

end A004614

/-! ## A004614.P13381495731562046562

`∩[A081754(n+1), A204458(n+1)]`
-/

namespace A004614.P13381495731562046562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004614.P13381495731562046562

namespace A004614

/-- `∩[A081754(n+1), A204458(n+1)]` -/
def P13381495731562046562.Spec : Prop :=
  ∀ n, (P13381495731562046562.a n : ℤ) = A004614 (n + 1)

end A004614

/-! ## A004614.P15135201882764893062

`∩[A004144(n+1), A081339(n+1)]`
-/

namespace A004614.P15135201882764893062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004614.P15135201882764893062

namespace A004614

/-- `∩[A004144(n+1), A081339(n+1)]` -/
def P15135201882764893062.Spec : Prop :=
  ∀ n, (P15135201882764893062.a n : ℤ) = A004614 (n + 1)

end A004614

/-! ## A004614.P11823100685462735666

`∩[A004144(n+1), A004273(n)]`
-/

namespace A004614.P11823100685462735666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004614.P11823100685462735666

namespace A004614

/-- `∩[A004144(n+1), A004273(n)]` -/
def P11823100685462735666.Spec : Prop :=
  ∀ n, (P11823100685462735666.a n : ℤ) = A004614 (n + 1)

end A004614

/-! ## A004614.P14763833867139630160

`∩[A004144(n+1), A060747(n)]`
-/

namespace A004614.P14763833867139630160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004614.P14763833867139630160

namespace A004614

/-- `∩[A004144(n+1), A060747(n)]` -/
def P14763833867139630160.Spec : Prop :=
  ∀ n, (P14763833867139630160.a n : ℤ) = A004614 (n + 1)

end A004614

/-! ## A004614.P13150902255704988246

`∩[A081754(n+1), A004273(n)]`
-/

namespace A004614.P13150902255704988246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004614.P13150902255704988246

namespace A004614

/-- `∩[A081754(n+1), A004273(n)]` -/
def P13150902255704988246.Spec : Prop :=
  ∀ n, (P13150902255704988246.a n : ℤ) = A004614 (n + 1)

end A004614

/-! ## A004614.P12821044302262277323

`∩[A081754(n+1), A060747(n)]`
-/

namespace A004614.P12821044302262277323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004614.P12821044302262277323

namespace A004614

/-- `∩[A081754(n+1), A060747(n)]` -/
def P12821044302262277323.Spec : Prop :=
  ∀ n, (P12821044302262277323.a n : ℤ) = A004614 (n + 1)

end A004614

/-! ## A004614.P11260248807888281179

`∩[A004144(n+1), A277599(n+1)]`
-/

namespace A004614.P11260248807888281179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004614.P11260248807888281179

namespace A004614

/-- `∩[A004144(n+1), A277599(n+1)]` -/
def P11260248807888281179.Spec : Prop :=
  ∀ n, (P11260248807888281179.a n : ℤ) = A004614 (n + 1)

end A004614

/-! ## A004614.P3917227869250001069

`record[A097706(n+1)]`
-/

namespace A004614.P3917227869250001069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004614.P3917227869250001069

namespace A004614

/-- `record[A097706(n+1)]` -/
def P3917227869250001069.Spec : Prop :=
  ∀ n, P3917227869250001069.a n = A004614 (n + 1)

end A004614

/-! ## A004614.P2797238415922426634

`record[A072438(2*n+1)]`
-/

namespace A004614.P2797238415922426634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004614.P2797238415922426634

namespace A004614

/-- `record[A072438(2*n+1)]` -/
def P2797238415922426634.Spec : Prop :=
  ∀ n, P2797238415922426634.a n = A004614 (n + 1)

end A004614

/-!
# A004615: Divisible only by primes congruent to 1 mod 5.

The programs for A004615, there is no canonical definition to state claims against.
-/

/-! ## A004615.P11326939316486936450

`A017281(lt[1, A031362(n+1)+1])`
-/

namespace A004615.P11326939316486936450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031362 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A004615.P11326939316486936450

/-! ## A004615.P6506901893493228482

`eq[A001876(n), A304442(n)]`
-/

namespace A004615.P6506901893493228482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004615.P6506901893493228482

/-! ## A004615.P2028789511133470421

`eq[A001876(n), A382524(n)]`
-/

namespace A004615.P2028789511133470421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382524 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004615.P2028789511133470421

/-! ## A004615.P3908581303035709526

`eq[A032741(n)+1, A001876(n)]`
-/

namespace A004615.P3908581303035709526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004615.P3908581303035709526

/-! ## A004615.P2726344836527922706

`eq[A129303(n+1), A284097(n+1)]+1`
-/

namespace A004615.P2726344836527922706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A004615.P2726344836527922706

/-! ## A004615.P3686051492883667054

`eq[A138557(n+1), A284097(n+1)]+1`
-/

namespace A004615.P3686051492883667054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A004615.P3686051492883667054

/-! ## A004615.P2237902973184761399

`eq[A000005(A028310(n)), A001876(n)]`
-/

namespace A004615.P2237902973184761399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004615.P2237902973184761399

/-! ## A004615.P14095024140615494897

`A004442(eq[A129303(n+1), A284097(n+1)])`
-/

namespace A004615.P14095024140615494897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A004615.P14095024140615494897

/-! ## A004615.P4824411120505922194

`A004442(eq[A138557(n+1), A284097(n+1)])`
-/

namespace A004615.P4824411120505922194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A004615.P4824411120505922194

/-!
# A004616: Divisible only by primes congruent to 2 mod 5.

The programs for A004616, there is no canonical definition to state claims against.
-/

/-! ## A004616.P14669962607243366098

`eq[A192006(n), A217605(A331844(n))]`
-/

namespace A004616.P14669962607243366098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217605 (A331844 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004616.P14669962607243366098

/-! ## A004616.P16196707671830464831

`eq[1, A175045(3*n)]`
-/

namespace A004616.P16196707671830464831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175045 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004616.P16196707671830464831

/-! ## A004616.P9809797482743067223

`eq[3, A263939(A125510(n))]`
-/

namespace A004616.P9809797482743067223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263939 (A125510 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004616.P9809797482743067223

/-! ## A004616.P10774525618806684688

`A376597(n+1)+A000035(A345051(n+1))`
-/

namespace A004616.P10774525618806684688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376597 (n + 1) + A000035 (A345051 (n + 1)).toNat

end

end A004616.P10774525618806684688

/-!
# A004617: Divisible only by primes congruent to 3 mod 5.

The programs for A004617, there is no canonical definition to state claims against.
-/

/-! ## A004617.P6312182701495627935

`A213923(A218921(n)+A130944(n))`
-/

namespace A004617.P6312182701495627935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213923 (A218921 n + A130944 n).toNat

end

end A004617.P6312182701495627935

/-!
# A004618: Divisible only by primes congruent to 4 mod 5.

The programs for A004618, there is no canonical definition to state claims against.
-/

/-! ## A004618.P16573665919759773291

`A045457(n+1)%A050248(n+1)`
-/

namespace A004618.P16573665919759773291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045457 (n + 1)) (A050248 (n + 1))

end

end A004618.P16573665919759773291

/-! ## A004618.P16630768402465067239

`A108137(n+1)%A226396(n+1)`
-/

namespace A004618.P16630768402465067239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108137 (n + 1)) (A226396 (n + 1))

end

end A004618.P16630768402465067239

/-! ## A004618.P13633777040437980226

`record[A014963(5*A101174(n+1)+4)]`
-/

namespace A004618.P13633777040437980226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (5 * A101174 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004618.P13633777040437980226

/-! ## A004618.P11993629963250639054

`A045457(n+1)^A018895(A018895(n))`
-/

namespace A004618.P11993629963250639054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045457 (n + 1) : ℚ) ^ (A018895 (A018895 n).toNat : ℤ)

end

end A004618.P11993629963250639054

/-! ## A004618.P15488996290817453881

`A030433(A028310(n))%A226396(n+1)`
-/

namespace A004618.P15488996290817453881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030433 (A028310 n).toNat) (A226396 (n + 1))

end

end A004618.P15488996290817453881

/-!
# A004619: Numbers divisible only by primes congruent to 1 mod 7.

The programs for A004619, there is no canonical definition to state claims against.
-/

/-! ## A004619.P7784062399783850

`eq[A279061(n), A304442(n)]`
-/

namespace A004619.P7784062399783850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004619.P7784062399783850

/-! ## A004619.P4168339966144048208

`filter[A034167(n+1), A212793(#)]`
-/

namespace A004619.P4168339966144048208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A004619.P4168339966144048208

/-! ## A004619.P10268243647966390906

`filter[A034167(n+1), A335909(#)]`
-/

namespace A004619.P10268243647966390906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A335909 (f1 j).toNat = 1) n)

end

end A004619.P10268243647966390906

/-! ## A004619.P9453008444742872501

`filter[A034167(n+1), A355823(#)]`
-/

namespace A004619.P9453008444742872501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A004619.P9453008444742872501

/-! ## A004619.P2007437885715094400

`filter[A034167(n+1), A355825(#)]`
-/

namespace A004619.P2007437885715094400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A004619.P2007437885715094400

/-! ## A004619.P16173300639411333870

`filter[A034167(n+1), A359471(#)]`
-/

namespace A004619.P16173300639411333870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A004619.P16173300639411333870

/-! ## A004619.P1119060690796521182

`∩[A004709(n+1), A034167(n+1)]`
-/

namespace A004619.P1119060690796521182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004619.P1119060690796521182

/-! ## A004619.P9747260661161778933

`∩[A008365(n+1), A034167(n+1)]`
-/

namespace A004619.P9747260661161778933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004619.P9747260661161778933

/-! ## A004619.P3742318256800825977

`∩[A008366(n+1), A034167(n+1)]`
-/

namespace A004619.P3742318256800825977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004619.P3742318256800825977

/-! ## A004619.P7340175374399692654

`∩[A034167(n+1), A037143(n+1)]`
-/

namespace A004619.P7340175374399692654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004619.P7340175374399692654

/-!
# A004620: Divisible only by primes congruent to 2 mod 7.

The programs for A004620, there is no canonical definition to state claims against.
-/

/-! ## A004620.P5708491097900272340

`∩[A010443(n+1), A062729(n+1)]`
-/

namespace A004620.P5708491097900272340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004620.P5708491097900272340

/-! ## A004620.P5939105165672046046

`A062729(lt[A163227(n+1), A075362(n+1)])`
-/

namespace A004620.P5939105165672046046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A004620.P5939105165672046046

/-! ## A004620.P2595376186560652203

`∩[A062729(n+1), A055572(n)]`
-/

namespace A004620.P2595376186560652203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004620.P2595376186560652203

/-!
# A004622: Divisible only by primes congruent to 4 mod 7.

The programs for A004622, there is no canonical definition to state claims against.
-/

/-! ## A004622.P324734886612643672

`A120841(A301715(n))`
-/

namespace A004622.P324734886612643672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120841 (A301715 n).toNat

end

end A004622.P324734886612643672

/-!
# A004624: Divisible only by primes congruent to 6 mod 7.

The programs for A004624, there is no canonical definition to state claims against.
-/

/-! ## A004624.P230395059826356164

`A006530(C(p?[or(1, 7*n-1)], ∑{e}[n+1, #]))`
-/

namespace A004624.P230395059826356164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((7 * n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A004624.P230395059826356164

/-! ## A004624.P13571747559303649843

`eq[A234044(n+1), A326843(n)]`
-/

namespace A004624.P13571747559303649843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004624.P13571747559303649843

/-! ## A004624.P5386132594999633287

`eq[A326843(n)², A061395(n+1)]`
-/

namespace A004624.P5386132594999633287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326843 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004624.P5386132594999633287

/-!
# A004625: Numbers divisible only by primes congruent to 1 mod 8.

The programs for A004625, there is no canonical definition to state claims against.
-/

/-! ## A004625.P10225503531966683481

`∩[A004613(n+1), A058529(n+1)]`
-/

namespace A004625.P10225503531966683481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004625.P10225503531966683481

/-! ## A004625.P16508207234541813929

`∩[A004613(n+1), A253408(n+1)]`
-/

namespace A004625.P16508207234541813929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004625.P16508207234541813929

/-! ## A004625.P8088164827282691428

`∩[2*n+1, A192453(n+1)]`
-/

namespace A004625.P8088164827282691428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004625.P8088164827282691428

/-! ## A004625.P9332255381463564830

`filter[A192453(n+1), A187074(#)]`
-/

namespace A004625.P9332255381463564830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A004625.P9332255381463564830

/-! ## A004625.P2665798862226292849

`filter[A192453(n+1), A322980(#)]`
-/

namespace A004625.P2665798862226292849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A004625.P2665798862226292849

/-! ## A004625.P17507541607830464628

`A192453(eq[1, A192453(n+1)%2]+1)`
-/

namespace A004625.P17507541607830464628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192453 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192453 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004625.P17507541607830464628

/-! ## A004625.P18138140464657898765

`∩[A004613(n+1), A057126(n+1)]`
-/

namespace A004625.P18138140464657898765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004625.P18138140464657898765

/-! ## A004625.P8360403082163181682

`∩[A008784(n+1), A058529(n+1)]`
-/

namespace A004625.P8360403082163181682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004625.P8360403082163181682

/-! ## A004625.P4007438889060070896

`∩[A008784(n+1), A253408(n+1)]`
-/

namespace A004625.P4007438889060070896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004625.P4007438889060070896

/-! ## A004625.P13199219320338806423

`filter[A192453(n+1), A093719(#)]`
-/

namespace A004625.P13199219320338806423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A004625.P13199219320338806423

/-! ## A004625.P14181065414746073588

`filter[A192453(n+1), A152822(#)]`
-/

namespace A004625.P14181065414746073588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A004625.P14181065414746073588

/-! ## A004625.P14761024675852980274

`filter[A192453(n+1), A162289(#)]`
-/

namespace A004625.P14761024675852980274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A004625.P14761024675852980274

/-! ## A004625.P11150214028743933313

`filter[A192453(n+1), A320106(#)]`
-/

namespace A004625.P11150214028743933313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A004625.P11150214028743933313

/-! ## A004625.P4058969012877354379

`filter[A192453(n+1), A035263(#)]`
-/

namespace A004625.P4058969012877354379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A004625.P4058969012877354379

/-! ## A004625.P11177360074476987079

`∩[A004613(n+1), A057127(n+1)]`
-/

namespace A004625.P11177360074476987079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004625.P11177360074476987079

/-! ## A004625.P849766896008991569

`∩[A057127(n+1), A058529(n+1)]`
-/

namespace A004625.P849766896008991569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004625.P849766896008991569

/-! ## A004625.P12183138073521941526

`∩[A057127(n+1), A253408(n+1)]`
-/

namespace A004625.P12183138073521941526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004625.P12183138073521941526

/-! ## A004625.P15564277925561171439

`∩[A057129(n+1), A058529(n+1)]`
-/

namespace A004625.P15564277925561171439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004625.P15564277925561171439

/-! ## A004625.P1229069237628298181

`∩[A057129(n+1), A253408(n+1)]`
-/

namespace A004625.P1229069237628298181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004625.P1229069237628298181

/-! ## A004625.P10357986809970246521

`∩[A192453(n+1), A383288(n+1)]`
-/

namespace A004625.P10357986809970246521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004625.P10357986809970246521

/-!
# A004626: Divisible only by primes congruent to 3 mod 8.

The programs for A004626, there is no canonical definition to state claims against.
-/

/-! ## A004626.P14842154740635653159

`∩[A004614(n+1), A014657(n+1)]`
-/

namespace A004626.P14842154740635653159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004626.P14842154740635653159

/-! ## A004626.P7150545338478436641

`∩[A004614(n+1), A392946(n+1)]`
-/

namespace A004626.P7150545338478436641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004626.P7150545338478436641

/-! ## A004626.P12894448473165160588

`filter[A392946(n+1), A354036(#)]`
-/

namespace A004626.P12894448473165160588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A004626.P12894448473165160588

/-! ## A004626.P12116566111147347125

`∩[A004144(n+1), A392946(n+1)]`
-/

namespace A004626.P12116566111147347125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004626.P12116566111147347125

/-! ## A004626.P5960600782794968175

`∩[A004614(n+1), A057127(n+1)]`
-/

namespace A004626.P5960600782794968175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004626.P5960600782794968175

/-! ## A004626.P15789438680096250009

`∩[A354039(n+1), A392946(n+1)]`
-/

namespace A004626.P15789438680096250009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004626.P15789438680096250009

/-! ## A004626.P3833498154152218360

`∩[A081754(n+1), A392946(n+1)]`
-/

namespace A004626.P3833498154152218360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004626.P3833498154152218360

/-! ## A004626.P151690948583658197

`∩[A268377(n+1), A392946(n+1)]`
-/

namespace A004626.P151690948583658197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004626.P151690948583658197

/-! ## A004626.P3094444190741546769

`∩[A004614(n+1), A343110(n+1)]`
-/

namespace A004626.P3094444190741546769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004626.P3094444190741546769

/-! ## A004626.P11830613097278078461

`∩[A081339(n+1), A392946(n+1)]`
-/

namespace A004626.P11830613097278078461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004626.P11830613097278078461

/-! ## A004626.P635632220490375344

`∩[A209921(n+1), A392946(n+1)]`
-/

namespace A004626.P635632220490375344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004626.P635632220490375344

/-! ## A004626.P2557977585955351285

`record[A097706(A014657(n+1))]`
-/

namespace A004626.P2557977585955351285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A014657 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004626.P2557977585955351285

/-! ## A004626.P3284113905893674026

`record[A097706(A057127(n+1))]`
-/

namespace A004626.P3284113905893674026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A057127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004626.P3284113905893674026

/-! ## A004626.P10096040187303592994

`record[gcd(A097706(n+1), A331671(n+1))]`
-/

namespace A004626.P10096040187303592994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097706 (n + 1)) (A331671 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004626.P10096040187303592994

/-! ## A004626.P12721398959217823782

`record[A072438(A000265(A343110(n+1)))]`
-/

namespace A004626.P12721398959217823782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A000265 (A343110 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004626.P12721398959217823782

/-! ## A004626.P9397884384223667083

`record[A057127(n+2)/A072436(A057127(n+2))]`
-/

namespace A004626.P9397884384223667083
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057127 (n + 2) : ℚ) / (A072436 (A057127 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004626.P9397884384223667083

/-! ## A004626.P7495366934531744555

`∩[A004144(n+1), A225771(n+1)]`
-/

namespace A004626.P7495366934531744555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004626.P7495366934531744555

/-! ## A004626.P5724342064076396386

`∩[A004614(n+1), A225771(n+1)]`
-/

namespace A004626.P5724342064076396386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004626.P5724342064076396386

/-! ## A004626.P15207595973959351213

`∩[A081754(n+1), A225771(n+1)]`
-/

namespace A004626.P15207595973959351213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004626.P15207595973959351213

/-!
# A004627: Divisible only by primes congruent to 5 mod 8.

The programs for A004627, the canonical program `A004627.P17803393918126401768` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004627 has offset 1).

The definition of A004627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004627.P17803393918126401768

`record[gcd(A170818(n+1), A331671(n+1))]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A004627

/-- `record[gcd(A170818(n+1), A331671(n+1))]` -/
def P17803393918126401768.Spec : Prop :=
  ∀ n, (P17803393918126401768.a n : ℤ) = A004627 (n + 1)

theorem P17803393918126401768.correct : P17803393918126401768.Spec := by
  intro n
  simp only [A004627, Nat.add_sub_cancel]

end A004627

/-! ## A004627.P10717323154564271735

`record[A072436(A214728(n))]`
-/

namespace A004627.P10717323154564271735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (A214728 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004627.P10717323154564271735

namespace A004627

/-- `record[A072436(A214728(n))]` -/
def P10717323154564271735.Spec : Prop :=
  ∀ n, P10717323154564271735.a n = A004627 (n + 1)

end A004627

/-! ## A004627.P17553429234896308531

`record[A170818(record[A214728(n)])]`
-/

namespace A004627.P17553429234896308531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004627.P17553429234896308531

namespace A004627

/-- `record[A170818(record[A214728(n)])]` -/
def P17553429234896308531.Spec : Prop :=
  ∀ n, P17553429234896308531.a n = A004627 (n + 1)

end A004627

/-! ## A004627.P9950781901060798307

`record[A072436(A101157(n+1))]`
-/

namespace A004627.P9950781901060798307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (A101157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004627.P9950781901060798307

namespace A004627

/-- `record[A072436(A101157(n+1))]` -/
def P9950781901060798307.Spec : Prop :=
  ∀ n, P9950781901060798307.a n = A004627 (n + 1)

end A004627

/-! ## A004627.P15743311860183939231

`record[A170818(A101157(n+2))]`
-/

namespace A004627.P15743311860183939231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A101157 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004627.P15743311860183939231

namespace A004627

/-- `record[A170818(A101157(n+2))]` -/
def P15743311860183939231.Spec : Prop :=
  ∀ n, P15743311860183939231.a n = A004627 (n + 1)

end A004627

/-! ## A004627.P11067402666836976572

`record[A072436(sqrt(A101158(n+1)))]`
-/

namespace A004627.P11067402666836976572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (SequenceMachineLib.roundAway (Real.sqrt (A101158 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004627.P11067402666836976572

namespace A004627

/-- `record[A072436(sqrt(A101158(n+1)))]` -/
def P11067402666836976572.Spec : Prop :=
  ∀ n, P11067402666836976572.a n = A004627 (n + 1)

end A004627

/-! ## A004627.P8406584064651382890

`record[A170818(sqrt(A101158(n+1)))]`
-/

namespace A004627.P8406584064651382890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (SequenceMachineLib.roundAway (Real.sqrt (A101158 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004627.P8406584064651382890

namespace A004627

/-- `record[A170818(sqrt(A101158(n+1)))]` -/
def P8406584064651382890.Spec : Prop :=
  ∀ n, P8406584064651382890.a n = A004627 (n + 1)

end A004627

/-! ## A004627.P304920543982855132

`record[A101157(2*n+1)/A097706(A101157(2*n+1))]`
-/

namespace A004627.P304920543982855132
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101157 (2 * n + 1) : ℚ) / (A097706 (A101157 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004627.P304920543982855132

namespace A004627

/-- `record[A101157(2*n+1)/A097706(A101157(2*n+1))]` -/
def P304920543982855132.Spec : Prop :=
  ∀ n, P304920543982855132.a n = (A004627 (n + 1) : ℚ)

end A004627

/-!
# A004628: Divisible only by primes congruent to 7 mod 8.

The programs for A004628, there is no canonical definition to state claims against.
-/

/-! ## A004628.P10594900298907126856

`∩[A004614(n+1), A036259(n+1)]`
-/

namespace A004628.P10594900298907126856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004628.P10594900298907126856

/-! ## A004628.P16116344475581962257

`∩[A004614(n+1), A057126(n+1)]`
-/

namespace A004628.P16116344475581962257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004628.P16116344475581962257

/-! ## A004628.P12264537818550904464

`∩[A004614(n+1), A058529(n+1)]`
-/

namespace A004628.P12264537818550904464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004628.P12264537818550904464

/-! ## A004628.P12356425749782781913

`∩[A004614(n+1), A253408(n+1)]`
-/

namespace A004628.P12356425749782781913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004628.P12356425749782781913

/-! ## A004628.P4190666183529326491

`∩[A004144(n+1), A036259(n+1)]`
-/

namespace A004628.P4190666183529326491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004628.P4190666183529326491

/-! ## A004628.P1465920925315808438

`∩[A004144(n+1), A058529(n+1)]`
-/

namespace A004628.P1465920925315808438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004628.P1465920925315808438

/-! ## A004628.P3067057440822457488

`∩[A004144(n+1), A253408(n+1)]`
-/

namespace A004628.P3067057440822457488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004628.P3067057440822457488

/-! ## A004628.P9897281300471460453

`∩[A036259(n+1), A081754(n+1)]`
-/

namespace A004628.P9897281300471460453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004628.P9897281300471460453

/-! ## A004628.P7186482538291601822

`∩[A058529(n+1), A081754(n+1)]`
-/

namespace A004628.P7186482538291601822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004628.P7186482538291601822

/-! ## A004628.P4146514074442017231

`∩[A081754(n+1), A253408(n+1)]`
-/

namespace A004628.P4146514074442017231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004628.P4146514074442017231

/-! ## A004628.P10429945537456209567

`∩[A004614(n+1), A343108(n+1)]`
-/

namespace A004628.P10429945537456209567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004628.P10429945537456209567

/-! ## A004628.P8383913522575343808

`∩[A004614(n+1), A309583(n+1)]`
-/

namespace A004628.P8383913522575343808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004628.P8383913522575343808

/-! ## A004628.P3108242210467056214

`∩[A004614(n+1), A066507(n+1)]`
-/

namespace A004628.P3108242210467056214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004628.P3108242210467056214

/-! ## A004628.P850370431404080275

`record[A072438(A036259(n+1))]`
-/

namespace A004628.P850370431404080275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A036259 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004628.P850370431404080275

/-! ## A004628.P5789240674845289644

`record[A072438(A058529(n+1))]`
-/

namespace A004628.P5789240674845289644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A058529 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004628.P5789240674845289644

/-! ## A004628.P1284643656227726932

`record[A097706(A057126(n+1))]`
-/

namespace A004628.P1284643656227726932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A057126 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004628.P1284643656227726932

/-! ## A004628.P4614085164420543950

`record[A097706(A343108(n+1))]`
-/

namespace A004628.P4614085164420543950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A343108 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004628.P4614085164420543950

/-! ## A004628.P16487453527190053088

`record[A097706(or(1, A036259(n+1)))]`
-/

namespace A004628.P16487453527190053088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (Int.lor 1 (A036259 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004628.P16487453527190053088

/-! ## A004628.P7256238304736135929

`record[A097706(2*A036259(n+1))]`
-/

namespace A004628.P7256238304736135929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (2 * A036259 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004628.P7256238304736135929

/-! ## A004628.P16269162062751755497

`record[A097706(lcm(2, A036259(n+1)))]`
-/

namespace A004628.P16269162062751755497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (Int.lcm 2 (A036259 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004628.P16269162062751755497

/-!
# A004629: Squares written in base 11. (Next term contains a nondecimal digit.)

The programs for A004629, there is no canonical definition to state claims against.
-/

/-! ## A004629.P13733234005248434707

`eq[2, A000122(A171397(n))]`
-/

namespace A004629.P13733234005248434707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A171397 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004629.P13733234005248434707

/-! ## A004629.P8537567969237132541

`eq[1, A053186(A171397(n)+1)]`
-/

namespace A004629.P8537567969237132541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A171397 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004629.P8537567969237132541

/-! ## A004629.P7490072387079139555

`eq[A000007(n), A053186(A171397(n))]`
-/

namespace A004629.P7490072387079139555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A171397 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004629.P7490072387079139555

/-! ## A004629.P3085846081763630595

`eq[A000038(n), A053186(A171397(n))]`
-/

namespace A004629.P3085846081763630595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A171397 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004629.P3085846081763630595

/-! ## A004629.P11216749254465446922

`record[A028310(n-A053186(A171397(n)))]`
-/

namespace A004629.P11216749254465446922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - A053186 (A171397 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004629.P11216749254465446922

/-!
# A004630: Squares written in base 12. (Next term contains a non-decimal character.)

The programs for A004630, there is no canonical definition to state claims against.
-/

/-! ## A004630.P6642475361924971432

`∑[or(1, ceil(5*n/3))]`
-/

namespace A004630.P6642475361924971432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌈5 * ((n : ℚ) / 3)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004630.P6642475361924971432

/-! ## A004630.P13687331953127103317

`∑[∑[∑[(4-2/n)*a(n-1)]%3]]` with `a(0)=1, a(1)=1`
-/

namespace A004630.P13687331953127103317
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f3 =>
  (4 - 2 / (n : ℚ)) * f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f3 j)) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004630.P13687331953127103317

/-! ## A004630.P11291378041313532209

`∑[∑[A024718(n)%3]]`
-/

namespace A004630.P11291378041313532209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024718 n) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004630.P11291378041313532209

/-! ## A004630.P1801941923036346003

`∑[∑[A054113(n)%3]]`
-/

namespace A004630.P1801941923036346003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054113 n) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004630.P1801941923036346003

/-!
# A004631: Squares written in base 16. (Next term contains a non-decimal character.)

The programs for A004631, there is no canonical definition to state claims against.
-/

/-! ## A004631.P4924292302770490992

`A057946((n+1)²)`
-/

namespace A004631.P4924292302770490992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057946 ((n + 1) ^ 2)

end

end A004631.P4924292302770490992

/-! ## A004631.P16425311243932124476

`record[A057946((1-n)²)]`
-/

namespace A004631.P16425311243932124476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057946 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004631.P16425311243932124476

/-! ## A004631.P1145049780888171825

`A266297(A008825(n+1))`
-/

namespace A004631.P1145049780888171825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266297 (A008825 (n + 1)).toNat

end

end A004631.P1145049780888171825

/-! ## A004631.P10665100921543354110

`eq[0, A267635(A102489(n))]`
-/

namespace A004631.P10665100921543354110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (A102489 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004631.P10665100921543354110

/-! ## A004631.P17611400799249829158

`eq[1, A003285(A102489(n)+1)]`
-/

namespace A004631.P17611400799249829158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A102489 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004631.P17611400799249829158

/-!
# A004632: Cubes written in base 2.

The programs for A004632, the canonical program `A004632.P3387701604835768164` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004632 has offset 1).

The definition of A004632 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004632.P3387701604835768164

`A007088((n+1)^3)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004632

/-- `A007088((n+1)^3)` -/
def P3387701604835768164.Spec : Prop :=
  ∀ n, P3387701604835768164.a n = A004632 (n + 1)

theorem P3387701604835768164.correct : P3387701604835768164.Spec := by
  intro n
  simp only [A004632, Nat.add_sub_cancel]

end A004632

/-! ## A004632.P9029170997841182793

`record[A007088(gcd(1-n, floor(n/2))^3)]`
-/

namespace A004632.P9029170997841182793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004632.P9029170997841182793

namespace A004632

/-- `record[A007088(gcd(1-n, floor(n/2))^3)]` -/
def P9029170997841182793.Spec : Prop :=
  ∀ n, P9029170997841182793.a n = A004632 (n + 1)

end A004632

/-! ## A004632.P164254547969341072

`Δ[A007088(n*n²)+a(n-1)]` with `a(0)=1`
-/

namespace A004632.P164254547969341072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A007088 (n * n ^ 2) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004632.P164254547969341072

namespace A004632

/-- `Δ[A007088(n*n²)+a(n-1)]` -/
def P164254547969341072.Spec : Prop :=
  ∀ n, P164254547969341072.a n = A004632 (n + 1)

end A004632

/-! ## A004632.P2507009103579133038

`sqrt(A063009((n+1)^3))`
-/

namespace A004632.P2507009103579133038
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 ((n + 1) ^ 3) : ℝ)

end

end A004632.P2507009103579133038

namespace A004632

/-- `sqrt(A063009((n+1)^3))` -/
def P2507009103579133038.Spec : Prop :=
  ∀ n, P2507009103579133038.a n = (A004632 (n + 1) : ℝ)

end A004632

/-! ## A004632.P6961489794145001411

`A340051(A211786(n+1))`
-/

namespace A004632.P6961489794145001411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340051 (A211786 (n + 1)).toNat

end

end A004632.P6961489794145001411

namespace A004632

/-- `A340051(A211786(n+1))` -/
def P6961489794145001411.Spec : Prop :=
  ∀ n, P6961489794145001411.a n = A004632 (n + 1)

end A004632

/-!
# A004633: Cubes written in base 3.

The programs for A004633, the canonical program `A004633.P9102770555637317471` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004633 has offset 1).

The definition of A004633 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004633.P9102770555637317471

`A007089((n+1)^3)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004633

/-- `A007089((n+1)^3)` -/
def P9102770555637317471.Spec : Prop :=
  ∀ n, P9102770555637317471.a n = A004633 (n + 1)

theorem P9102770555637317471.correct : P9102770555637317471.Spec := by
  intro n
  simp only [A004633, Nat.add_sub_cancel]

end A004633

/-! ## A004633.P7006363335736297821

`A097585((n+1)^3)`
-/

namespace A004633.P7006363335736297821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097585 ((n + 1) ^ 3)

end

end A004633.P7006363335736297821

namespace A004633

/-- `A097585((n+1)^3)` -/
def P7006363335736297821.Spec : Prop :=
  ∀ n, P7006363335736297821.a n = A004633 (n + 1)

end A004633

/-! ## A004633.P3731363318742240757

`A343810(Δ[∑[n]²])/4`
-/

namespace A004633.P3731363318742240757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 4

end

end A004633.P3731363318742240757

namespace A004633

/-- `A343810(Δ[∑[n]²])/4` -/
def P3731363318742240757.Spec : Prop :=
  ∀ n, P3731363318742240757.a n = (A004633 (n + 1) : ℚ)

end A004633

/-! ## A004633.P12867178473654049418

`floor(A343810((n+1)^3)/4)`
-/

namespace A004633.P12867178473654049418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A343810 ((n + 1) ^ 3) : ℚ) / 4⌋

end

end A004633.P12867178473654049418

namespace A004633

/-- `floor(A343810((n+1)^3)/4)` -/
def P12867178473654049418.Spec : Prop :=
  ∀ n, P12867178473654049418.a n = A004633 (n + 1)

end A004633

/-! ## A004633.P17390151557412238939

`record[A007089(ceil(abs((1-n)/2))^3)]`
-/

namespace A004633.P17390151557412238939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (⌈|(1 - (n : ℤ) : ℚ) / 2|⌉ ^ 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004633.P17390151557412238939

namespace A004633

/-- `record[A007089(ceil(abs((1-n)/2))^3)]` -/
def P17390151557412238939.Spec : Prop :=
  ∀ n, P17390151557412238939.a n = A004633 (n + 1)

end A004633

/-!
# A004634: Cubes written in base 4.

The programs for A004634, the canonical program `A004634.P4824655262314359882` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004634 has offset 1).

The definition of A004634 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004634.P4824655262314359882

`A007090((n+1)^3)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004634

/-- `A007090((n+1)^3)` -/
def P4824655262314359882.Spec : Prop :=
  ∀ n, P4824655262314359882.a n = A004634 (n + 1)

theorem P4824655262314359882.correct : P4824655262314359882.Spec := by
  intro n
  simp only [A004634, Nat.add_sub_cancel]

end A004634

/-! ## A004634.P1421575450881164720

`∑[-Δ[-A007090(n^3)]]`
-/

namespace A004634.P1421575450881164720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A007090 (n ^ 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004634.P1421575450881164720

namespace A004634

/-- `∑[-Δ[-A007090(n^3)]]` -/
def P1421575450881164720.Spec : Prop :=
  ∀ n, P1421575450881164720.a n = A004634 (n + 1)

end A004634

/-! ## A004634.P16984231276799208508

`record[A007090(A133823(n))]`
-/

namespace A004634.P16984231276799208508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A133823 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004634.P16984231276799208508

namespace A004634

/-- `record[A007090(A133823(n))]` -/
def P16984231276799208508.Spec : Prop :=
  ∀ n, P16984231276799208508.a n = A004634 (n + 1)

end A004634

/-! ## A004634.P2551694858736724455

`record[A007090(A109614(n+1))]`
-/

namespace A004634.P2551694858736724455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A109614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004634.P2551694858736724455

namespace A004634

/-- `record[A007090(A109614(n+1))]` -/
def P2551694858736724455.Spec : Prop :=
  ∀ n, P2551694858736724455.a n = A004634 (n + 1)

end A004634

/-!
# A004635: Cubes written in base 5.

The programs for A004635, the canonical program `A004635.P6720941365882696357` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004635 has offset 1).

The definition of A004635 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004635.P6720941365882696357

`A007091((n+1)^3)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004635

/-- `A007091((n+1)^3)` -/
def P6720941365882696357.Spec : Prop :=
  ∀ n, P6720941365882696357.a n = A004635 (n + 1)

theorem P6720941365882696357.correct : P6720941365882696357.Spec := by
  intro n
  simp only [A004635, Nat.add_sub_cancel]

end A004635

/-! ## A004635.P8889272251646343858

`A014263(Δ[∑[n]²]+1)/2`
-/

namespace A004635.P8889272251646343858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014263 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat : ℚ) / 2

end

end A004635.P8889272251646343858

namespace A004635

/-- `A014263(Δ[∑[n]²]+1)/2` -/
def P8889272251646343858.Spec : Prop :=
  ∀ n, P8889272251646343858.a n = (A004635 (n + 1) : ℚ)

end A004635

/-! ## A004635.P13141550505720379440

`record[A007091(ceil(xor(1, n)/2)^3)]`
-/

namespace A004635.P13141550505720379440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (⌈(Nat.xor 1 n : ℚ) / 2⌉ ^ 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004635.P13141550505720379440

namespace A004635

/-- `record[A007091(ceil(xor(1, n)/2)^3)]` -/
def P13141550505720379440.Spec : Prop :=
  ∀ n, P13141550505720379440.a n = A004635 (n + 1)

end A004635

/-! ## A004635.P12621254163695760967

`round(cosh(log(A014263((n+1)^3+1))))`
-/

namespace A004635.P12621254163695760967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (A014263 ((n + 1) ^ 3 + 1) : ℝ)))

end

end A004635.P12621254163695760967

namespace A004635

/-- `round(cosh(log(A014263((n+1)^3+1))))` -/
def P12621254163695760967.Spec : Prop :=
  ∀ n, P12621254163695760967.a n = A004635 (n + 1)

end A004635

/-!
# A004636: Cubes written in base 6.

The programs for A004636, there is no canonical definition to state claims against.
-/

/-! ## A004636.P16934985574942812478

`A007092((n+1)^3)`
-/

namespace A004636.P16934985574942812478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 ((n + 1) ^ 3)

end

end A004636.P16934985574942812478

/-! ## A004636.P16411512654585349179

`record[A007092(abs((1-n)^3))]`
-/

namespace A004636.P16411512654585349179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 |(1 - (n : ℤ)) ^ 3|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004636.P16411512654585349179

/-!
# A004637: Cubes written in base 7.

The programs for A004637, the canonical program `A004637.P12728284506072076378` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004637 has offset 1).

The definition of A004637 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007093, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004637.P12728284506072076378

`A007093((n+1)^3)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A004637

/-- `A007093((n+1)^3)` -/
def P12728284506072076378.Spec : Prop :=
  ∀ n, P12728284506072076378.a n = A004637 (n + 1)

theorem P12728284506072076378.correct : P12728284506072076378.Spec := by
  intro n
  simp only [A004637, Nat.add_sub_cancel]

end A004637

/-! ## A004637.P4508515158810877901

`record[A007093(gcd(1-n, floor(n/2))^3)]`
-/

namespace A004637.P4508515158810877901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004637.P4508515158810877901

namespace A004637

/-- `record[A007093(gcd(1-n, floor(n/2))^3)]` -/
def P4508515158810877901.Spec : Prop :=
  ∀ n, P4508515158810877901.a n = A004637 (n + 1)

end A004637

/-! ## A004637.P15060458128965646183

`record[A007093(A133823(n))]`
-/

namespace A004637.P15060458128965646183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A133823 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004637.P15060458128965646183

namespace A004637

/-- `record[A007093(A133823(n))]` -/
def P15060458128965646183.Spec : Prop :=
  ∀ n, P15060458128965646183.a n = A004637 (n + 1)

end A004637

/-!
# A004638: Cubes written in base 8.

The programs for A004638, the canonical program `A004638.P15092359656829141479` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004638 has offset 1).

The definition of A004638 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004638.P15092359656829141479

`A007094((n+1)^3)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004638

/-- `A007094((n+1)^3)` -/
def P15092359656829141479.Spec : Prop :=
  ∀ n, P15092359656829141479.a n = A004638 (n + 1)

theorem P15092359656829141479.correct : P15092359656829141479.Spec := by
  intro n
  simp only [A004638, Nat.add_sub_cancel]

end A004638

/-! ## A004638.P15886484158108066262

`∑[abs(Δ[A007094(n^3)])]`
-/

namespace A004638.P15886484158108066262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (n ^ 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004638.P15886484158108066262

namespace A004638

/-- `∑[abs(Δ[A007094(n^3)])]` -/
def P15886484158108066262.Spec : Prop :=
  ∀ n, P15886484158108066262.a n = A004638 (n + 1)

end A004638

/-! ## A004638.P8112406134895595658

`record[A007094(A133823(n))]`
-/

namespace A004638.P8112406134895595658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A133823 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004638.P8112406134895595658

namespace A004638

/-- `record[A007094(A133823(n))]` -/
def P8112406134895595658.Spec : Prop :=
  ∀ n, P8112406134895595658.a n = A004638 (n + 1)

end A004638

/-!
# A004639: Cubes written in base 9.

The programs for A004639, the canonical program `A004639.P12073377836634223053` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004639 has offset 1).

The definition of A004639 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007095, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004639.P12073377836634223053

`A007095((n+1)^3)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004639

/-- `A007095((n+1)^3)` -/
def P12073377836634223053.Spec : Prop :=
  ∀ n, P12073377836634223053.a n = A004639 (n + 1)

theorem P12073377836634223053.correct : P12073377836634223053.Spec := by
  intro n
  simp only [A004639, Nat.add_sub_cancel]

end A004639

/-! ## A004639.P12362527681847342687

`A037479(Δ[∑[n]²])`
-/

namespace A004639.P12362527681847342687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A004639.P12362527681847342687

namespace A004639

/-- `A037479(Δ[∑[n]²])` -/
def P12362527681847342687.Spec : Prop :=
  ∀ n, P12362527681847342687.a n = A004639 (n + 1)

end A004639

/-! ## A004639.P7090224610843379516

`record[A007095(ceil(xor(1, n)/2)^3)]`
-/

namespace A004639.P7090224610843379516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (⌈(Nat.xor 1 n : ℚ) / 2⌉ ^ 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004639.P7090224610843379516

namespace A004639

/-- `record[A007095(ceil(xor(1, n)/2)^3)]` -/
def P7090224610843379516.Spec : Prop :=
  ∀ n, P7090224610843379516.a n = A004639 (n + 1)

end A004639

/-! ## A004639.P13661783439721502766

`record[A007095(gcd(1-n, floor(n/2))^3)]`
-/

namespace A004639.P13661783439721502766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004639.P13661783439721502766

namespace A004639

/-- `record[A007095(gcd(1-n, floor(n/2))^3)]` -/
def P13661783439721502766.Spec : Prop :=
  ∀ n, P13661783439721502766.a n = A004639 (n + 1)

end A004639

/-!
# A004640: Cubes written in base 11. (Next term contains a non-decimal character.)

The programs for A004640, there is no canonical definition to state claims against.
-/

/-! ## A004640.P5881927249004095252

`eq[1, A055400(A171397(n)+1)]`
-/

namespace A004640.P5881927249004095252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A171397 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004640.P5881927249004095252

/-! ## A004640.P6408795394287764235

`eq[A000038(n), A055400(A171397(n))]`
-/

namespace A004640.P6408795394287764235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A171397 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004640.P6408795394287764235

/-! ## A004640.P2964611978636814388

`eq[A000007(n), A074989(A171397(n))]`
-/

namespace A004640.P2964611978636814388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 (A171397 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004640.P2964611978636814388

/-!
# A004641: Fixed under 0 -> 10, 1 -> 100.

The programs for A004641, the canonical program `A004641.P10259241811400143337` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004641 has offset 1).

The definition of A004641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004641.P10259241811400143337

`floor((n+1)*(sqrt(2)-1)+sqrt(1/2))-floor(n*(sqrt(2)-1)+sqrt(1/2))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004641

/-- `floor((n+1)*(sqrt(2)-1)+sqrt(1/2))-floor(n*(sqrt(2)-1)+sqrt(1/2))` -/
def P10259241811400143337.Spec : Prop :=
  ∀ n, P10259241811400143337.a n = A004641 (n + 1)

theorem P10259241811400143337.correct : P10259241811400143337.Spec := by
  intro n
  simp only [A004641, Nat.add_sub_cancel]

end A004641

/-!
# A004642: Powers of 2 written in base 3.

The programs for A004642, there is no canonical definition to state claims against.
-/

/-! ## A004642.P17983305556424762857

`A131096(A022331(n))`
-/

namespace A004642.P17983305556424762857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131096 (A022331 n).toNat

end

end A004642.P17983305556424762857

/-! ## A004642.P18011068297085896798

`record[gcd(A022329(n+1), A131096(n+1))]`
-/

namespace A004642.P18011068297085896798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022329 (n + 1)) (A131096 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004642.P18011068297085896798

/-! ## A004642.P6642799947359736780

`A007089(2^n)`
-/

namespace A004642.P6642799947359736780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (2 ^ n)

end

end A004642.P6642799947359736780

/-! ## A004642.P17581021379168514553

`A343810(2^n)/4`
-/

namespace A004642.P17581021379168514553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 (2 ^ n) : ℚ) / 4

end

end A004642.P17581021379168514553

/-! ## A004642.P15214498872295834076

`record[A007089(A029930(n))]`
-/

namespace A004642.P15214498872295834076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004642.P15214498872295834076

/-!
# A004643: Powers of 2 written in base 4.

The programs for A004643, the canonical program `A004643.P6153302396370785038` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004643 has offset 0).

The definition of A004643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004643.P6153302396370785038

`10*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004643

/-- `10*a(n-2)` -/
def P6153302396370785038.Spec : Prop :=
  ∀ n, (P6153302396370785038.a n : ℤ) = A004643 n

theorem P6153302396370785038.correct : P6153302396370785038.Spec := by
  intro n
  simp only [A004643]

end A004643

/-! ## A004643.P15564440489515357954

`(3-(-1)^n)/2*10^floor(n/2)`
-/

namespace A004643.P15564440489515357954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - (-1) ^ n : ℚ) / 2 * (10 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A004643.P15564440489515357954

namespace A004643

/-- `(3-(-1)^n)/2*10^floor(n/2)` -/
def P15564440489515357954.Spec : Prop :=
  ∀ n, P15564440489515357954.a n = (A004643 n : ℚ)

end A004643

/-! ## A004643.P13520536093364902396

`ogf((1+2x)/(1-10x^2))`
-/

namespace A004643.P13520536093364902396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -10] n

end

end A004643.P13520536093364902396

namespace A004643

/-- `ogf((1+2x)/(1-10x^2))` -/
def P13520536093364902396.Spec : Prop :=
  ∀ n, P13520536093364902396.a n = A004643 n

end A004643

/-! ## A004643.P9651691140131955106

`∏[7-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A004643.P9651691140131955106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004643.P9651691140131955106

namespace A004643

/-- `∏[7-a(n-1)]` -/
def P9651691140131955106.Spec : Prop :=
  ∀ n, P9651691140131955106.a n = A004643 n

end A004643

/-! ## A004643.P8514056074662397391

`∏[(n²-1)%4+2]`
-/

namespace A004643.P8514056074662397391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 1) 4 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004643.P8514056074662397391

namespace A004643

/-- `∏[(n²-1)%4+2]` -/
def P8514056074662397391.Spec : Prop :=
  ∀ n, P8514056074662397391.a n = A004643 n

end A004643

/-! ## A004643.P11847375321289463856

`∏[ceil(3^n/2)%6]`
-/

namespace A004643.P11847375321289463856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(3 ^ n : ℚ) / 2⌉ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004643.P11847375321289463856

namespace A004643

/-- `∏[ceil(3^n/2)%6]` -/
def P11847375321289463856.Spec : Prop :=
  ∀ n, P11847375321289463856.a n = A004643 n

end A004643

/-! ## A004643.P10096240465911699035

`∏[∑{d}[n, round(1/#)]²+1]`
-/

namespace A004643.P10096240465911699035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), SequenceMachineLib.roundAway (1 / (d : ℚ))) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004643.P10096240465911699035

namespace A004643

/-- `∏[∑{d}[n, round(1/#)]²+1]` -/
def P10096240465911699035.Spec : Prop :=
  ∀ n, P10096240465911699035.a n = A004643 n

end A004643

/-! ## A004643.P6097046407988919151

`∏[abs((2*n+n-1)%6)]`
-/

namespace A004643.P6097046407988919151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((2 * n : ℤ) + ((n : ℤ) - 1)) 6|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004643.P6097046407988919151

namespace A004643

/-- `∏[abs((2*n+n-1)%6)]` -/
def P6097046407988919151.Spec : Prop :=
  ∀ n, P6097046407988919151.a n = A004643 n

end A004643

/-! ## A004643.P3266456637779796939

`a(n-2)+lcm(9, a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A004643.P3266456637779796939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + Nat.lcm 9 (a (n - 2))

end

end A004643.P3266456637779796939

namespace A004643

/-- `a(n-2)+lcm(9, a(n-2))` -/
def P3266456637779796939.Spec : Prop :=
  ∀ n, (P3266456637779796939.a n : ℤ) = A004643 n

end A004643

/-! ## A004643.P7484015777722715882

`a(n-2)+a(n-2)/(1/3)²` with `a(0)=1, a(1)=2`
-/

namespace A004643.P7484015777722715882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 2) / ((1 : ℚ) / 3) ^ 2

end

end A004643.P7484015777722715882

namespace A004643

/-- `a(n-2)+a(n-2)/(1/3)²` -/
def P7484015777722715882.Spec : Prop :=
  ∀ n, P7484015777722715882.a n = (A004643 n : ℚ)

end A004643

/-! ## A004643.P6861736393833864788

`A194350(Δ[n²])`
-/

namespace A004643.P6861736393833864788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A004643.P6861736393833864788

namespace A004643

/-- `A194350(Δ[n²])` -/
def P6861736393833864788.Spec : Prop :=
  ∀ n, P6861736393833864788.a n = A004643 n

end A004643

/-! ## A004643.P5350470445434253173

`∏[dr(A083329(n))]`
-/

namespace A004643.P5350470445434253173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083329 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004643.P5350470445434253173

namespace A004643

/-- `∏[dr(A083329(n))]` -/
def P5350470445434253173.Spec : Prop :=
  ∀ n, (P5350470445434253173.a n : ℤ) = A004643 n

end A004643

/-! ## A004643.P14922998287012782510

`∏[A059855(n+1)]`
-/

namespace A004643.P14922998287012782510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004643.P14922998287012782510

namespace A004643

/-- `∏[A059855(n+1)]` -/
def P14922998287012782510.Spec : Prop :=
  ∀ n, P14922998287012782510.a n = A004643 n

end A004643

/-! ## A004643.P4934147792010234501

`∏[dr(A266550(n+2))]`
-/

namespace A004643.P4934147792010234501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A266550 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004643.P4934147792010234501

namespace A004643

/-- `∏[dr(A266550(n+2))]` -/
def P4934147792010234501.Spec : Prop :=
  ∀ n, (P4934147792010234501.a n : ℤ) = A004643 n

end A004643

/-! ## A004643.P8705285995317968503

`∏[dr(A267589(n+3))]`
-/

namespace A004643.P8705285995317968503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A267589 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004643.P8705285995317968503

namespace A004643

/-- `∏[dr(A267589(n+3))]` -/
def P8705285995317968503.Spec : Prop :=
  ∀ n, (P8705285995317968503.a n : ℤ) = A004643 n

end A004643

/-! ## A004643.P12735883599500757477

`∏[A004598(a(n-1))]` with `a(0)=1`
-/

namespace A004643.P12735883599500757477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A004598 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004643.P12735883599500757477

namespace A004643

/-- `∏[A004598(a(n-1))]` -/
def P12735883599500757477.Spec : Prop :=
  ∀ n, P12735883599500757477.a n = A004643 n

end A004643

/-! ## A004643.P6246571933776181990

`∏[A007292(a(n-1))]` with `a(0)=1`
-/

namespace A004643.P6246571933776181990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A007292 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004643.P6246571933776181990

namespace A004643

/-- `∏[A007292(a(n-1))]` -/
def P6246571933776181990.Spec : Prop :=
  ∀ n, P6246571933776181990.a n = A004643 n

end A004643

/-! ## A004643.P5863519053003165500

`∏[A025504(a(n-1))]` with `a(0)=1`
-/

namespace A004643.P5863519053003165500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A025504 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004643.P5863519053003165500

namespace A004643

/-- `∏[A025504(a(n-1))]` -/
def P5863519053003165500.Spec : Prop :=
  ∀ n, P5863519053003165500.a n = A004643 n

end A004643

/-! ## A004643.P12304327440387052737

`∏[A029648(a(n-1))]` with `a(0)=1`
-/

namespace A004643.P12304327440387052737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A029648 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004643.P12304327440387052737

namespace A004643

/-- `∏[A029648(a(n-1))]` -/
def P12304327440387052737.Spec : Prop :=
  ∀ n, P12304327440387052737.a n = A004643 n

end A004643

/-! ## A004643.P17388440625669897394

`∏[A040622(a(n-1))]` with `a(0)=1`
-/

namespace A004643.P17388440625669897394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A040622 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004643.P17388440625669897394

namespace A004643

/-- `∏[A040622(a(n-1))]` -/
def P17388440625669897394.Spec : Prop :=
  ∀ n, P17388440625669897394.a n = A004643 n

end A004643

/-!
# A004645: Powers of 2 written in base 6.

The programs for A004645, there is no canonical definition to state claims against.
-/

/-! ## A004645.P18133265134658191056

`A007092(2^n)`
-/

namespace A004645.P18133265134658191056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (2 ^ n)

end

end A004645.P18133265134658191056

/-! ## A004645.P14236709051982824609

`record[A007092(A029930(n))]`
-/

namespace A004645.P14236709051982824609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004645.P14236709051982824609

/-! ## A004645.P13609622213011110770

`record[A007092(A034008(n))]`
-/

namespace A004645.P13609622213011110770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A034008 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004645.P13609622213011110770

/-! ## A004645.P13308337126564413996

`record[A007092(A048483(n))]`
-/

namespace A004645.P13308337126564413996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A048483 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004645.P13308337126564413996

/-! ## A004645.P17614713568036897257

`record[A007092(A055248(n))]`
-/

namespace A004645.P17614713568036897257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004645.P17614713568036897257

/-!
# A004646: Powers of 2 written in base 7.

The programs for A004646, there is no canonical definition to state claims against.
-/

/-! ## A004646.P2158956888118592047

`A007093(2^n)`
-/

namespace A004646.P2158956888118592047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (2 ^ n)

end

end A004646.P2158956888118592047

/-! ## A004646.P4834598642249873777

`A214677(2^n)`
-/

namespace A004646.P4834598642249873777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (2 ^ n)

end

end A004646.P4834598642249873777

/-! ## A004646.P6162990990006872154

`record[A007093(A001316(n))]`
-/

namespace A004646.P6162990990006872154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004646.P6162990990006872154

/-! ## A004646.P10660327240881058296

`record[A007093(A029930(n))]`
-/

namespace A004646.P10660327240881058296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004646.P10660327240881058296

/-! ## A004646.P13424215791262687218

`record[A007093(A034008(n))]`
-/

namespace A004646.P13424215791262687218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A034008 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004646.P13424215791262687218

/-!
# A004647: Powers of 2 written in base 8.

The programs for A004647, the canonical program `A004647.P5693789684478243938` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004647 has offset 0).

The definition of A004647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004647.P5693789684478243938

`10*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004647

/-- `10*a(n-3)` -/
def P5693789684478243938.Spec : Prop :=
  ∀ n, (P5693789684478243938.a n : ℤ) = A004647 n

theorem P5693789684478243938.correct : P5693789684478243938.Spec := by
  intro n
  simp only [A004647]

end A004647

/-! ## A004647.P6457881717063527207

`A004655(A004773(n))`
-/

namespace A004647.P6457881717063527207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004655 (A004773 n).toNat

end

end A004647.P6457881717063527207

namespace A004647

/-- `A004655(A004773(n))` -/
def P6457881717063527207.Spec : Prop :=
  ∀ n, P6457881717063527207.a n = A004647 n

end A004647

/-! ## A004647.P11163103503673074944

`A004655(lt[A236313(n+1), 3])`
-/

namespace A004647.P11163103503673074944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236313 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004655 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A004647.P11163103503673074944

namespace A004647

/-- `A004655(lt[A236313(n+1), 3])` -/
def P11163103503673074944.Spec : Prop :=
  ∀ n, P11163103503673074944.a n = A004647 n

end A004647

/-! ## A004647.P1028748902882993072

`A173862(n+1)*A245478(n+1)`
-/

namespace A004647.P1028748902882993072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173862 (n + 1) * A245478 (n + 1)

end

end A004647.P1028748902882993072

namespace A004647

/-- `A173862(n+1)*A245478(n+1)` -/
def P1028748902882993072.Spec : Prop :=
  ∀ n, P1028748902882993072.a n = A004647 n

end A004647

/-! ## A004647.P6808541144431415206

`record[(A056699(n+1)-n)*A194350(n+1)]`
-/

namespace A004647.P6808541144431415206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056699 (n + 1) - (n : ℤ)) * A194350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004647.P6808541144431415206

namespace A004647

/-- `record[(A056699(n+1)-n)*A194350(n+1)]` -/
def P6808541144431415206.Spec : Prop :=
  ∀ n, P6808541144431415206.a n = A004647 n

end A004647

/-! ## A004647.P9022963544725122888

`ogf((1+2x+4x^2)/(1-10x^3))`
-/

namespace A004647.P9022963544725122888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 4] [1, 0, 0, -10] n

end

end A004647.P9022963544725122888

namespace A004647

/-- `ogf((1+2x+4x^2)/(1-10x^3))` -/
def P9022963544725122888.Spec : Prop :=
  ∀ n, P9022963544725122888.a n = A004647 n

end A004647

/-! ## A004647.P6870377894343286766

`record[Δ[A004655(n)]]`
-/

namespace A004647.P6870377894343286766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004655 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004647.P6870377894343286766

namespace A004647

/-- `record[Δ[A004655(n)]]` -/
def P6870377894343286766.Spec : Prop :=
  ∀ n, P6870377894343286766.a n = A004647 n

end A004647

/-! ## A004647.P10762865088201833541

`∪[2*A004643(n), A004643(n)]`
-/

namespace A004647.P10762865088201833541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004643 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004647.P10762865088201833541

namespace A004647

/-- `∪[2*A004643(n), A004643(n)]` -/
def P10762865088201833541.Spec : Prop :=
  ∀ n, (P10762865088201833541.a n : ℤ) = A004647 n

end A004647

/-! ## A004647.P14809194069321318463

`record[A004655(n+1)-A004655(n)]`
-/

namespace A004647.P14809194069321318463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004655 (n + 1) - A004655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004647.P14809194069321318463

namespace A004647

/-- `record[A004655(n+1)-A004655(n)]` -/
def P14809194069321318463.Spec : Prop :=
  ∀ n, P14809194069321318463.a n = A004647 n

end A004647

/-! ## A004647.P4192875437925608517

`A051109(n+2)/5`
-/

namespace A004647.P4192875437925608517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051109 (n + 2) : ℚ) / 5

end

end A004647.P4192875437925608517

namespace A004647

/-- `A051109(n+2)/5` -/
def P4192875437925608517.Spec : Prop :=
  ∀ n, P4192875437925608517.a n = (A004647 n : ℚ)

end A004647

/-! ## A004647.P18155443865733064302

`Δ[A117727(n+1)/5]`
-/

namespace A004647.P18155443865733064302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117727 (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004647.P18155443865733064302

namespace A004647

/-- `Δ[A117727(n+1)/5]` -/
def P18155443865733064302.Spec : Prop :=
  ∀ n, P18155443865733064302.a n = (A004647 n : ℚ)

end A004647

/-! ## A004647.P16778230933847619069

`record[Δ[A307714(n+1)]]`
-/

namespace A004647.P16778230933847619069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307714 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004647.P16778230933847619069

namespace A004647

/-- `record[Δ[A307714(n+1)]]` -/
def P16778230933847619069.Spec : Prop :=
  ∀ n, P16778230933847619069.a n = A004647 n

end A004647

/-!
# A004648: a(n) = prime(n) mod n.

The programs for A004648, the canonical program `A004648.P171968973179240133` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004648 has offset 1).

The definition of A004648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004648.P15314722801467701648

`Δ[A007504(n)]%(n+1)`
-/

namespace A004648.P15314722801467701648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A004648.P15314722801467701648

namespace A004648

/-- `Δ[A007504(n)]%(n+1)` -/
def P15314722801467701648.Spec : Prop :=
  ∀ n, P15314722801467701648.a n = A004648 (n + 1)

end A004648

/-! ## A004648.P171968973179240133

`A000040(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004648

/-- `A000040(n+1)%(n+1)` -/
def P171968973179240133.Spec : Prop :=
  ∀ n, P171968973179240133.a n = A004648 (n + 1)

theorem P171968973179240133.correct : P171968973179240133.Spec := by
  intro n
  simp only [A004648, Nat.add_sub_cancel]

end A004648

/-! ## A004648.P7975430878055382463

`A004232(n+1)%(n+1)`
-/

namespace A004648.P7975430878055382463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004232 (n + 1)) (n + 1 : ℤ)

end

end A004648.P7975430878055382463

namespace A004648

/-- `A004232(n+1)%(n+1)` -/
def P7975430878055382463.Spec : Prop :=
  ∀ n, P7975430878055382463.a n = A004648 (n + 1)

end A004648

/-! ## A004648.P15637698589440059596

`A006005(n+1)%(n+1)`
-/

namespace A004648.P15637698589440059596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 1)) (n + 1 : ℤ)

end

end A004648.P15637698589440059596

namespace A004648

/-- `A006005(n+1)%(n+1)` -/
def P15637698589440059596.Spec : Prop :=
  ∀ n, P15637698589440059596.a n = A004648 (n + 1)

end A004648

/-! ## A004648.P9854309183700860304

`A014688(n+1)%(n+1)`
-/

namespace A004648.P9854309183700860304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014688 (n + 1)) (n + 1 : ℤ)

end

end A004648.P9854309183700860304

namespace A004648

/-- `A014688(n+1)%(n+1)` -/
def P9854309183700860304.Spec : Prop :=
  ∀ n, P9854309183700860304.a n = A004648 (n + 1)

end A004648

/-! ## A004648.P11621215671900885952

`A014689(n+1)%(n+1)`
-/

namespace A004648.P11621215671900885952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014689 (n + 1)) (n + 1 : ℤ)

end

end A004648.P11621215671900885952

namespace A004648

/-- `A014689(n+1)%(n+1)` -/
def P11621215671900885952.Spec : Prop :=
  ∀ n, P11621215671900885952.a n = A004648 (n + 1)

end A004648

/-! ## A004648.P15874231732996283499

`A045532(n+1)%(n+1)`
-/

namespace A004648.P15874231732996283499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045532 (n + 1)) (n + 1 : ℤ)

end

end A004648.P15874231732996283499

namespace A004648

/-- `A045532(n+1)%(n+1)` -/
def P15874231732996283499.Spec : Prop :=
  ∀ n, P15874231732996283499.a n = A004648 (n + 1)

end A004648

/-! ## A004648.P18007211838523504616

`A072063(n+1)%(n+1)`
-/

namespace A004648.P18007211838523504616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072063 (n + 1)) (n + 1 : ℤ)

end

end A004648.P18007211838523504616

namespace A004648

/-- `A072063(n+1)%(n+1)` -/
def P18007211838523504616.Spec : Prop :=
  ∀ n, P18007211838523504616.a n = A004648 (n + 1)

end A004648

/-! ## A004648.P15373384288788223053

`A078916(n+1)%(n+1)`
-/

namespace A004648.P15373384288788223053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078916 (n + 1)) (n + 1 : ℤ)

end

end A004648.P15373384288788223053

namespace A004648

/-- `A078916(n+1)%(n+1)` -/
def P15373384288788223053.Spec : Prop :=
  ∀ n, P15373384288788223053.a n = A004648 (n + 1)

end A004648

/-! ## A004648.P11934380942157933663

`A089620(n+1)%(n+1)`
-/

namespace A004648.P11934380942157933663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089620 (n + 1)) (n + 1 : ℤ)

end

end A004648.P11934380942157933663

namespace A004648

/-- `A089620(n+1)%(n+1)` -/
def P11934380942157933663.Spec : Prop :=
  ∀ n, P11934380942157933663.a n = A004648 (n + 1)

end A004648

/-! ## A004648.P3792360986377690484

`A089621(n+1)%(n+1)`
-/

namespace A004648.P3792360986377690484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089621 (n + 1)) (n + 1 : ℤ)

end

end A004648.P3792360986377690484

namespace A004648

/-- `A089621(n+1)%(n+1)` -/
def P3792360986377690484.Spec : Prop :=
  ∀ n, P3792360986377690484.a n = A004648 (n + 1)

end A004648

/-! ## A004648.P14487783891403272871

`A097240(n+1)%(n+1)`
-/

namespace A004648.P14487783891403272871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097240 (n + 1)) (n + 1 : ℤ)

end

end A004648.P14487783891403272871

namespace A004648

/-- `A097240(n+1)%(n+1)` -/
def P14487783891403272871.Spec : Prop :=
  ∀ n, P14487783891403272871.a n = A004648 (n + 1)

end A004648

/-! ## A004648.P2703777021083469639

`A125718(n+1)%(n+1)`
-/

namespace A004648.P2703777021083469639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125718 (n + 1)) (n + 1 : ℤ)

end

end A004648.P2703777021083469639

namespace A004648

/-- `A125718(n+1)%(n+1)` -/
def P2703777021083469639.Spec : Prop :=
  ∀ n, P2703777021083469639.a n = A004648 (n + 1)

end A004648

/-! ## A004648.P777444531266599125

`A171577(n+1)%(n+1)`
-/

namespace A004648.P777444531266599125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171577 (n + 1)) (n + 1 : ℤ)

end

end A004648.P777444531266599125

namespace A004648

/-- `A171577(n+1)%(n+1)` -/
def P777444531266599125.Spec : Prop :=
  ∀ n, P777444531266599125.a n = A004648 (n + 1)

end A004648

/-! ## A004648.P13075834910183687122

`A174008(n+1)%(n+1)`
-/

namespace A004648.P13075834910183687122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174008 (n + 1)) (n + 1 : ℤ)

end

end A004648.P13075834910183687122

namespace A004648

/-- `A174008(n+1)%(n+1)` -/
def P13075834910183687122.Spec : Prop :=
  ∀ n, P13075834910183687122.a n = A004648 (n + 1)

end A004648

/-! ## A004648.P16511683793829524710

`A176624(n+1)%(n+1)`
-/

namespace A004648.P16511683793829524710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176624 (n + 1)) (n + 1 : ℤ)

end

end A004648.P16511683793829524710

namespace A004648

/-- `A176624(n+1)%(n+1)` -/
def P16511683793829524710.Spec : Prop :=
  ∀ n, P16511683793829524710.a n = A004648 (n + 1)

end A004648

/-! ## A004648.P7689100661272891513

`A176628(n+1)%(n+1)`
-/

namespace A004648.P7689100661272891513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176628 (n + 1)) (n + 1 : ℤ)

end

end A004648.P7689100661272891513

namespace A004648

/-- `A176628(n+1)%(n+1)` -/
def P7689100661272891513.Spec : Prop :=
  ∀ n, P7689100661272891513.a n = A004648 (n + 1)

end A004648

/-! ## A004648.P4434110761693585010

`A192327(n+1)%(n+1)`
-/

namespace A004648.P4434110761693585010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192327 (n + 1)) (n + 1 : ℤ)

end

end A004648.P4434110761693585010

namespace A004648

/-- `A192327(n+1)%(n+1)` -/
def P4434110761693585010.Spec : Prop :=
  ∀ n, P4434110761693585010.a n = A004648 (n + 1)

end A004648

/-! ## A004648.P17261982281038767808

`A087611(n+1)+A057427(n)`
-/

namespace A004648.P17261982281038767808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087611 (n + 1) + A057427 n

end

end A004648.P17261982281038767808

namespace A004648

/-- `A087611(n+1)+A057427(n)` -/
def P17261982281038767808.Spec : Prop :=
  ∀ n, P17261982281038767808.a n = A004648 (n + 1)

end A004648

/-! ## A004648.P12028223515527753440

`A087611(n+1)-A057428(n)`
-/

namespace A004648.P12028223515527753440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087611 (n + 1) - A057428 n

end

end A004648.P12028223515527753440

namespace A004648

/-- `A087611(n+1)-A057428(n)` -/
def P12028223515527753440.Spec : Prop :=
  ∀ n, P12028223515527753440.a n = A004648 (n + 1)

end A004648

/-!
# A004649: a(n) = prime(n) mod (n-1).

The programs for A004649, the canonical program `A004649.P16888078738840110512` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004649 has offset 2).

The definition of A004649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004649.P16888078738840110512

`p?[2*n+1]%(n+1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004649

/-- `p?[2*n+1]%(n+1)` -/
def P16888078738840110512.Spec : Prop :=
  ∀ n, (P16888078738840110512.a n : ℤ) = A004649 (n + 2)

theorem P16888078738840110512.correct : P16888078738840110512.Spec := by
  intro n
  simp only [A004649, Nat.add_sub_cancel]

end A004649

/-! ## A004649.P2505693893408307305

`(p?[n+1+n]+n+1)%(n+1)`
-/

namespace A004649.P2505693893408307305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + (n + 1)) % (n + 1)

end

end A004649.P2505693893408307305

namespace A004649

/-- `(p?[n+1+n]+n+1)%(n+1)` -/
def P2505693893408307305.Spec : Prop :=
  ∀ n, (P2505693893408307305.a n : ℤ) = A004649 (n + 2)

theorem P2505693893408307305.correct : P2505693893408307305.Spec := by
  intro n
  simp only [A004649, Nat.add_sub_cancel, A004649.P2505693893408307305.f1, A004649.P2505693893408307305.a, A004649.P16888078738840110512.f1, A004649.P16888078738840110512.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A004649

/-! ## A004649.P13235232997944518145

`A033287(n)%(n+1)`
-/

namespace A004649.P13235232997944518145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033287 n) (n + 1 : ℤ)

end

end A004649.P13235232997944518145

namespace A004649

/-- `A033287(n)%(n+1)` -/
def P13235232997944518145.Spec : Prop :=
  ∀ n, P13235232997944518145.a n = A004649 (n + 2)

end A004649

/-! ## A004649.P10700641092248297592

`A014690(n+1)%(n+1)`
-/

namespace A004649.P10700641092248297592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014690 (n + 1)) (n + 1 : ℤ)

end

end A004649.P10700641092248297592

namespace A004649

/-- `A014690(n+1)%(n+1)` -/
def P10700641092248297592.Spec : Prop :=
  ∀ n, P10700641092248297592.a n = A004649 (n + 2)

end A004649

/-! ## A004649.P4485863117959701807

`A045319(n+1)%(n+1)`
-/

namespace A004649.P4485863117959701807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045319 (n + 1)) (n + 1 : ℤ)

end

end A004649.P4485863117959701807

namespace A004649

/-- `A045319(n+1)%(n+1)` -/
def P4485863117959701807.Spec : Prop :=
  ∀ n, P4485863117959701807.a n = A004649 (n + 2)

end A004649

/-! ## A004649.P807958016053928807

`A045344(n+1)%(n+1)`
-/

namespace A004649.P807958016053928807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045344 (n + 1)) (n + 1 : ℤ)

end

end A004649.P807958016053928807

namespace A004649

/-- `A045344(n+1)%(n+1)` -/
def P807958016053928807.Spec : Prop :=
  ∀ n, P807958016053928807.a n = A004649 (n + 2)

end A004649

/-! ## A004649.P12790379150909578950

`A065091(n+1)%(n+1)`
-/

namespace A004649.P12790379150909578950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 1)) (n + 1 : ℤ)

end

end A004649.P12790379150909578950

namespace A004649

/-- `A065091(n+1)%(n+1)` -/
def P12790379150909578950.Spec : Prop :=
  ∀ n, P12790379150909578950.a n = A004649 (n + 2)

end A004649

/-! ## A004649.P8990975801686397256

`A140475(n+1)%(n+1)`
-/

namespace A004649.P8990975801686397256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140475 (n + 1)) (n + 1 : ℤ)

end

end A004649.P8990975801686397256

namespace A004649

/-- `A140475(n+1)%(n+1)` -/
def P8990975801686397256.Spec : Prop :=
  ∀ n, P8990975801686397256.a n = A004649 (n + 2)

end A004649

/-! ## A004649.P4014102022107829789

`A152117(n+1)%(n+1)`
-/

namespace A004649.P4014102022107829789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152117 (n + 1)) (n + 1 : ℤ)

end

end A004649.P4014102022107829789

namespace A004649

/-- `A152117(n+1)%(n+1)` -/
def P4014102022107829789.Spec : Prop :=
  ∀ n, P4014102022107829789.a n = A004649 (n + 2)

end A004649

/-! ## A004649.P4680330868928029673

`A000040(n+2)%(n+1)`
-/

namespace A004649.P4680330868928029673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) (n + 1 : ℤ)

end

end A004649.P4680330868928029673

namespace A004649

/-- `A000040(n+2)%(n+1)` -/
def P4680330868928029673.Spec : Prop :=
  ∀ n, P4680330868928029673.a n = A004649 (n + 2)

end A004649

/-! ## A004649.P16400597912568278261

`A006005(n+2)%(n+1)`
-/

namespace A004649.P16400597912568278261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 2)) (n + 1 : ℤ)

end

end A004649.P16400597912568278261

namespace A004649

/-- `A006005(n+2)%(n+1)` -/
def P16400597912568278261.Spec : Prop :=
  ∀ n, P16400597912568278261.a n = A004649 (n + 2)

end A004649

/-! ## A004649.P8462757701958405670

`A014692(n+2)%(n+1)`
-/

namespace A004649.P8462757701958405670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014692 (n + 2)) (n + 1 : ℤ)

end

end A004649.P8462757701958405670

namespace A004649

/-- `A014692(n+2)%(n+1)` -/
def P8462757701958405670.Spec : Prop :=
  ∀ n, P8462757701958405670.a n = A004649 (n + 2)

end A004649

/-! ## A004649.P1126866033041854626

`A033286(n+2)%(n+1)`
-/

namespace A004649.P1126866033041854626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033286 (n + 2)) (n + 1 : ℤ)

end

end A004649.P1126866033041854626

namespace A004649

/-- `A033286(n+2)%(n+1)` -/
def P1126866033041854626.Spec : Prop :=
  ∀ n, P1126866033041854626.a n = A004649 (n + 2)

end A004649

/-! ## A004649.P18401950952573070077

`A075765(n+2)%(n+1)`
-/

namespace A004649.P18401950952573070077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075765 (n + 2)) (n + 1 : ℤ)

end

end A004649.P18401950952573070077

namespace A004649

/-- `A075765(n+2)%(n+1)` -/
def P18401950952573070077.Spec : Prop :=
  ∀ n, P18401950952573070077.a n = A004649 (n + 2)

end A004649

/-! ## A004649.P10850754830130116868

`A083723(n+2)%(n+1)`
-/

namespace A004649.P10850754830130116868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083723 (n + 2)) (n + 1 : ℤ)

end

end A004649.P10850754830130116868

namespace A004649

/-- `A083723(n+2)%(n+1)` -/
def P10850754830130116868.Spec : Prop :=
  ∀ n, P10850754830130116868.a n = A004649 (n + 2)

end A004649

/-! ## A004649.P12265525392795622552

`A090942(n+2)%(n+1)`
-/

namespace A004649.P12265525392795622552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090942 (n + 2)) (n + 1 : ℤ)

end

end A004649.P12265525392795622552

namespace A004649

/-- `A090942(n+2)%(n+1)` -/
def P12265525392795622552.Spec : Prop :=
  ∀ n, P12265525392795622552.a n = A004649 (n + 2)

end A004649

/-! ## A004649.P14036279850272118619

`A095116(n+2)%(n+1)`
-/

namespace A004649.P14036279850272118619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095116 (n + 2)) (n + 1 : ℤ)

end

end A004649.P14036279850272118619

namespace A004649

/-- `A095116(n+2)%(n+1)` -/
def P14036279850272118619.Spec : Prop :=
  ∀ n, P14036279850272118619.a n = A004649 (n + 2)

end A004649

/-! ## A004649.P17388855058791551595

`A129726(n+2)%(n+1)`
-/

namespace A004649.P17388855058791551595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129726 (n + 2)) (n + 1 : ℤ)

end

end A004649.P17388855058791551595

namespace A004649

/-- `A129726(n+2)%(n+1)` -/
def P17388855058791551595.Spec : Prop :=
  ∀ n, P17388855058791551595.a n = A004649 (n + 2)

end A004649

/-! ## A004649.P11334097371374102873

`record[A006530(n+3)]%(n+1)`
-/

namespace A004649.P11334097371374102873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A004649.P11334097371374102873

namespace A004649

/-- `record[A006530(n+3)]%(n+1)` -/
def P11334097371374102873.Spec : Prop :=
  ∀ n, P11334097371374102873.a n = A004649 (n + 2)

end A004649

/-! ## A004649.P8969878211066500454

`record[A020639(n+3)]%(n+1)`
-/

namespace A004649.P8969878211066500454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A004649.P8969878211066500454

namespace A004649

/-- `record[A020639(n+3)]%(n+1)` -/
def P8969878211066500454.Spec : Prop :=
  ∀ n, P8969878211066500454.a n = A004649 (n + 2)

end A004649

/-!
# A004650: a(n) = prime(n) mod (n+1).

The programs for A004650, the canonical program `A004650.P17268089652292632579` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004650 has offset 1).

The definition of A004650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004650.P17541312502397775002

`A033287(n)%(n+2)`
-/

namespace A004650.P17541312502397775002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033287 n) (n + 2 : ℤ)

end

end A004650.P17541312502397775002

namespace A004650

/-- `A033287(n)%(n+2)` -/
def P17541312502397775002.Spec : Prop :=
  ∀ n, P17541312502397775002.a n = A004650 (n + 1)

end A004650

/-! ## A004650.P5945089489896961056

`Δ[A007504(n)]%(n+2)`
-/

namespace A004650.P5945089489896961056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 2 : ℤ)

end

end A004650.P5945089489896961056

namespace A004650

/-- `Δ[A007504(n)]%(n+2)` -/
def P5945089489896961056.Spec : Prop :=
  ∀ n, P5945089489896961056.a n = A004650 (n + 1)

end A004650

/-! ## A004650.P17268089652292632579

`A000040(n+1)%(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004650

/-- `A000040(n+1)%(n+2)` -/
def P17268089652292632579.Spec : Prop :=
  ∀ n, P17268089652292632579.a n = A004650 (n + 1)

theorem P17268089652292632579.correct : P17268089652292632579.Spec := by
  intro n
  simp only [A004650, Nat.add_sub_cancel]

end A004650

/-! ## A004650.P4494322244191603694

`A065890(n+1)%(n+2)`
-/

namespace A004650.P4494322244191603694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065890 (n + 1)) (n + 2 : ℤ)

end

end A004650.P4494322244191603694

namespace A004650

/-- `A065890(n+1)%(n+2)` -/
def P4494322244191603694.Spec : Prop :=
  ∀ n, P4494322244191603694.a n = A004650 (n + 1)

end A004650

/-! ## A004650.P8018692347014751678

`A161847(n+1)%(n+2)`
-/

namespace A004650.P8018692347014751678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161847 (n + 1)) (n + 2 : ℤ)

end

end A004650.P8018692347014751678

namespace A004650

/-- `A161847(n+1)%(n+2)` -/
def P8018692347014751678.Spec : Prop :=
  ∀ n, P8018692347014751678.a n = A004650 (n + 1)

end A004650

/-! ## A004650.P12844680918864415153

`A356868(n+1)%(n+2)`
-/

namespace A004650.P12844680918864415153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356868 (n + 1)) (n + 2 : ℤ)

end

end A004650.P12844680918864415153

namespace A004650

/-- `A356868(n+1)%(n+2)` -/
def P12844680918864415153.Spec : Prop :=
  ∀ n, P12844680918864415153.a n = A004650 (n + 1)

end A004650

/-! ## A004650.P15421328711303501360

`abs(Δ[A022837(n)])%(n+2)`
-/

namespace A004650.P15421328711303501360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| (n + 2 : ℤ)

end

end A004650.P15421328711303501360

namespace A004650

/-- `abs(Δ[A022837(n)])%(n+2)` -/
def P15421328711303501360.Spec : Prop :=
  ∀ n, P15421328711303501360.a n = A004650 (n + 1)

end A004650

/-! ## A004650.P9156362582874497524

`(A006093(n+1)+1)%(n+2)`
-/

namespace A004650.P9156362582874497524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) (n + 2 : ℤ)

end

end A004650.P9156362582874497524

namespace A004650

/-- `(A006093(n+1)+1)%(n+2)` -/
def P9156362582874497524.Spec : Prop :=
  ∀ n, P9156362582874497524.a n = A004650 (n + 1)

end A004650

/-! ## A004650.P9467153315805635405

`A006005(n+1)%A057544(n)`
-/

namespace A004650.P9467153315805635405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 1)) (A057544 n)

end

end A004650.P9467153315805635405

namespace A004650

/-- `A006005(n+1)%A057544(n)` -/
def P9467153315805635405.Spec : Prop :=
  ∀ n, P9467153315805635405.a n = A004650 (n + 1)

end A004650

/-! ## A004650.P4195985467296754539

`A171577(n+1)%A057544(n)`
-/

namespace A004650.P4195985467296754539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171577 (n + 1)) (A057544 n)

end

end A004650.P4195985467296754539

namespace A004650

/-- `A171577(n+1)%A057544(n)` -/
def P4195985467296754539.Spec : Prop :=
  ∀ n, P4195985467296754539.a n = A004650 (n + 1)

end A004650

/-! ## A004650.P18442812397657982900

`A008578(n+2)%(n+2)`
-/

namespace A004650.P18442812397657982900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) (n + 2 : ℤ)

end

end A004650.P18442812397657982900

namespace A004650

/-- `A008578(n+2)%(n+2)` -/
def P18442812397657982900.Spec : Prop :=
  ∀ n, P18442812397657982900.a n = A004650 (n + 1)

end A004650

/-! ## A004650.P3293786796378357085

`A090178(n+2)%(n+2)`
-/

namespace A004650.P3293786796378357085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090178 (n + 2)) (n + 2 : ℤ)

end

end A004650.P3293786796378357085

namespace A004650

/-- `A090178(n+2)%(n+2)` -/
def P3293786796378357085.Spec : Prop :=
  ∀ n, P3293786796378357085.a n = A004650 (n + 1)

end A004650

/-! ## A004650.P12798255226231634258

`A090942(n+2)%(n+2)`
-/

namespace A004650.P12798255226231634258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090942 (n + 2)) (n + 2 : ℤ)

end

end A004650.P12798255226231634258

namespace A004650

/-- `A090942(n+2)%(n+2)` -/
def P12798255226231634258.Spec : Prop :=
  ∀ n, P12798255226231634258.a n = A004650 (n + 1)

end A004650

/-! ## A004650.P16765850774587450478

`A162177(n+2)%(n+2)`
-/

namespace A004650.P16765850774587450478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162177 (n + 2)) (n + 2 : ℤ)

end

end A004650.P16765850774587450478

namespace A004650

/-- `A162177(n+2)%(n+2)` -/
def P16765850774587450478.Spec : Prop :=
  ∀ n, P16765850774587450478.a n = A004650 (n + 1)

end A004650

/-! ## A004650.P3521509187501914309

`A171575(n+2)%(n+2)`
-/

namespace A004650.P3521509187501914309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171575 (n + 2)) (n + 2 : ℤ)

end

end A004650.P3521509187501914309

namespace A004650

/-- `A171575(n+2)%(n+2)` -/
def P3521509187501914309.Spec : Prop :=
  ∀ n, P3521509187501914309.a n = A004650 (n + 1)

end A004650

/-! ## A004650.P6552845448223826197

`A182986(n+2)%(n+2)`
-/

namespace A004650.P6552845448223826197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182986 (n + 2)) (n + 2 : ℤ)

end

end A004650.P6552845448223826197

namespace A004650

/-- `A182986(n+2)%(n+2)` -/
def P6552845448223826197.Spec : Prop :=
  ∀ n, P6552845448223826197.a n = A004650 (n + 1)

end A004650

/-! ## A004650.P13869688498795447327

`record[A006530(n+2)]%(n+2)`
-/

namespace A004650.P13869688498795447327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 2 : ℤ)

end

end A004650.P13869688498795447327

namespace A004650

/-- `record[A006530(n+2)]%(n+2)` -/
def P13869688498795447327.Spec : Prop :=
  ∀ n, P13869688498795447327.a n = A004650 (n + 1)

end A004650

/-! ## A004650.P8825032716029927139

`record[A020639(n+2)]%(n+2)`
-/

namespace A004650.P8825032716029927139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 2 : ℤ)

end

end A004650.P8825032716029927139

namespace A004650

/-- `record[A020639(n+2)]%(n+2)` -/
def P8825032716029927139.Spec : Prop :=
  ∀ n, P8825032716029927139.a n = A004650 (n + 1)

end A004650

/-! ## A004650.P11780937641183863345

`record[A000010(n+1)+1]%(n+2)`
-/

namespace A004650.P11780937641183863345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 2 : ℤ)

end

end A004650.P11780937641183863345

namespace A004650

/-- `record[A000010(n+1)+1]%(n+2)` -/
def P11780937641183863345.Spec : Prop :=
  ∀ n, P11780937641183863345.a n = A004650 (n + 1)

end A004650

/-!
# A004652: Expansion of x*(1+x^2+x^4)/((1-x)*(1-x^2)*(1-x^3)).

The programs for A004652, the canonical program `A004652.P6529953097953943564` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004652 has offset 0).

The definition of A004652 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^3+x^5)/(1-x-x^2+x^4+x^5-x^6))` (program `A004652.P6529953097953943564`, by `A004652.P6529953097953943564.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004652.P763284298865143202

`ceil(n²/4)`
-/

namespace A004652.P763284298865143202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 4⌉

end

end A004652.P763284298865143202

namespace A004652

/-- `ceil(n²/4)` -/
def P763284298865143202.Spec : Prop :=
  ∀ n, P763284298865143202.a n = A004652 n

end A004652

/-! ## A004652.P16270995006028485555

`n-1+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A004652.P16270995006028485555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - 1 + a (n - 2)

end

end A004652.P16270995006028485555

namespace A004652

/-- `n-1+a(n-2)` -/
def P16270995006028485555.Spec : Prop :=
  ∀ n, P16270995006028485555.a n = A004652 n

end A004652

/-! ## A004652.P6529953097953943564

`ogf((x+x^3+x^5)/(1-x-x^2+x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004652

/-- `ogf((x+x^3+x^5)/(1-x-x^2+x^4+x^5-x^6))` -/
def P6529953097953943564.Spec : Prop :=
  ∀ n, P6529953097953943564.a n = A004652 n

theorem P6529953097953943564.correct : P6529953097953943564.Spec := by
  intro n
  simp only [A004652]

end A004652

/-! ## A004652.P16548733752231196398

`C(floor((n+3)/2), 2)+C(floor((n+(-1)^n)/2), 2)`
-/

namespace A004652.P16548733752231196398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n + 3 : ℚ) / 2⌋.toNat 2 + Nat.choose ⌊((n : ℤ) + (-1) ^ n : ℚ) / 2⌋.toNat 2

end

end A004652.P16548733752231196398

namespace A004652

/-- `C(floor((n+3)/2), 2)+C(floor((n+(-1)^n)/2), 2)` -/
def P16548733752231196398.Spec : Prop :=
  ∀ n, (P16548733752231196398.a n : ℤ) = A004652 n

end A004652

/-! ## A004652.P15235075295630542481

`floor(sin(1)+(n/2)²)`
-/

namespace A004652.P15235075295630542481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (1 : ℝ) + (((n : ℚ) / 2) ^ 2 : ℝ)⌋

end

end A004652.P15235075295630542481

namespace A004652

/-- `floor(sin(1)+(n/2)²)` -/
def P15235075295630542481.Spec : Prop :=
  ∀ n, P15235075295630542481.a n = A004652 n

end A004652

/-! ## A004652.P2654794197687295564

`floor((n/2)²-cos(3))`
-/

namespace A004652.P2654794197687295564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n : ℚ) / 2) ^ 2 : ℝ) - Real.cos (3 : ℝ)⌋

end

end A004652.P2654794197687295564

namespace A004652

/-- `floor((n/2)²-cos(3))` -/
def P2654794197687295564.Spec : Prop :=
  ∀ n, P2654794197687295564.a n = A004652 n

end A004652

/-! ## A004652.P4055851679746176230

`round((n/2)²-cos(2))`
-/

namespace A004652.P4055851679746176230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n : ℚ) / 2) ^ 2 : ℝ) - Real.cos (2 : ℝ))

end

end A004652.P4055851679746176230

namespace A004652

/-- `round((n/2)²-cos(2))` -/
def P4055851679746176230.Spec : Prop :=
  ∀ n, P4055851679746176230.a n = A004652 n

end A004652

/-! ## A004652.P5773484446820217608

`floor(atan(1)+(n/2)²)`
-/

namespace A004652.P5773484446820217608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (1 : ℝ) + (((n : ℚ) / 2) ^ 2 : ℝ)⌋

end

end A004652.P5773484446820217608

namespace A004652

/-- `floor(atan(1)+(n/2)²)` -/
def P5773484446820217608.Spec : Prop :=
  ∀ n, P5773484446820217608.a n = A004652 n

end A004652

/-! ## A004652.P15349516216058125200

`floor(tanh(1)+(n/2)²)`
-/

namespace A004652.P15349516216058125200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tanh (1 : ℝ) + (((n : ℚ) / 2) ^ 2 : ℝ)⌋

end

end A004652.P15349516216058125200

namespace A004652

/-- `floor(tanh(1)+(n/2)²)` -/
def P15349516216058125200.Spec : Prop :=
  ∀ n, P15349516216058125200.a n = A004652 n

end A004652

/-! ## A004652.P4633541556096633762

`floor(acot(1)+(n/2)²)`
-/

namespace A004652.P4633541556096633762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (1 : ℝ) + (((n : ℚ) / 2) ^ 2 : ℝ)⌋

end

end A004652.P4633541556096633762

namespace A004652

/-- `floor(acot(1)+(n/2)²)` -/
def P4633541556096633762.Spec : Prop :=
  ∀ n, P4633541556096633762.a n = A004652 n

end A004652

/-! ## A004652.P4831754834583934314

`round(acot(2)+(n/2)²)`
-/

namespace A004652.P4831754834583934314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (2 : ℝ) + (((n : ℚ) / 2) ^ 2 : ℝ))

end

end A004652.P4831754834583934314

namespace A004652

/-- `round(acot(2)+(n/2)²)` -/
def P4831754834583934314.Spec : Prop :=
  ∀ n, P4831754834583934314.a n = A004652 n

end A004652

/-! ## A004652.P14510379276212599813

`round((n/2)²-cot(2))`
-/

namespace A004652.P14510379276212599813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n : ℚ) / 2) ^ 2 : ℝ) - Real.cot (2 : ℝ))

end

end A004652.P14510379276212599813

namespace A004652

/-- `round((n/2)²-cot(2))` -/
def P14510379276212599813.Spec : Prop :=
  ∀ n, P14510379276212599813.a n = A004652 n

end A004652

/-! ## A004652.P5221244407979249895

`floor(and(1, n)+(n/2)²)`
-/

namespace A004652.P5221244407979249895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 1 n : ℚ) + ((n : ℚ) / 2) ^ 2⌋

end

end A004652.P5221244407979249895

namespace A004652

/-- `floor(and(1, n)+(n/2)²)` -/
def P5221244407979249895.Spec : Prop :=
  ∀ n, P5221244407979249895.a n = A004652 n

end A004652

/-! ## A004652.P8537305071197689092

`∑[floor(n/2)]+and(1, n)`
-/

namespace A004652.P8537305071197689092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.land 1 n : ℤ)

end

end A004652.P8537305071197689092

namespace A004652

/-- `∑[floor(n/2)]+and(1, n)` -/
def P8537305071197689092.Spec : Prop :=
  ∀ n, P8537305071197689092.a n = A004652 n

end A004652

/-! ## A004652.P16084266725059036140

`n-(1-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A004652.P16084266725059036140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - (1 - a (n - 2))

end

end A004652.P16084266725059036140

namespace A004652

/-- `n-(1-a(n-2))` -/
def P16084266725059036140.Spec : Prop :=
  ∀ n, P16084266725059036140.a n = A004652 n

end A004652

/-! ## A004652.P2553894877687577529

`(n²+3*n%2)/4`
-/

namespace A004652.P2553894877687577529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + 3 * (n % 2) : ℕ) : ℚ) / 4

end

end A004652.P2553894877687577529

namespace A004652

/-- `(n²+3*n%2)/4` -/
def P2553894877687577529.Spec : Prop :=
  ∀ n, P2553894877687577529.a n = (A004652 n : ℚ)

end A004652

/-! ## A004652.P8420708798111893600

`∑[∑[char[2*n]]]-or(1, n)`
-/

namespace A004652.P8420708798111893600
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.lor 1 n : ℤ)

end

end A004652.P8420708798111893600

namespace A004652

/-- `∑[∑[char[2*n]]]-or(1, n)` -/
def P8420708798111893600.Spec : Prop :=
  ∀ n, P8420708798111893600.a n = A004652 n

end A004652

/-! ## A004652.P8989135201706687465

`1-∑[∑[∑[ogf((1-2x)/(1+x))]]]`
-/

namespace A004652.P8989135201706687465
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004652.P8989135201706687465

namespace A004652

/-- `1-∑[∑[∑[ogf((1-2x)/(1+x))]]]` -/
def P8989135201706687465.Spec : Prop :=
  ∀ n, P8989135201706687465.a n = A004652 n

end A004652

/-! ## A004652.P3402162014479005146

`round(or(2, (n+1)*(n-1))/4)`
-/

namespace A004652.P3402162014479005146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor 2 ((n + 1 : ℤ) * ((n : ℤ) - 1)) : ℚ) / 4)

end

end A004652.P3402162014479005146

namespace A004652

/-- `round(or(2, (n+1)*(n-1))/4)` -/
def P3402162014479005146.Spec : Prop :=
  ∀ n, P3402162014479005146.a n = A004652 n

end A004652

/-! ## A004652.P545661975689577032

`round((lcm(n, n-1)+n+1)/4)`
-/

namespace A004652.P545661975689577032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lcm (n : ℤ) ((n : ℤ) - 1) + (n + 1) : ℚ) / 4)

end

end A004652.P545661975689577032

namespace A004652

/-- `round((lcm(n, n-1)+n+1)/4)` -/
def P545661975689577032.Spec : Prop :=
  ∀ n, P545661975689577032.a n = A004652 n

end A004652

/-!
# A004653: Powers of 2 written in base 14. (Next term contains a non-decimal character.)

The programs for A004653, there is no canonical definition to state claims against.
-/

/-! ## A004653.P347447088477360148

`A066589(A327009(n+2))`
-/

namespace A004653.P347447088477360148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066589 (A327009 (n + 2)).toNat

end

end A004653.P347447088477360148

/-!
# A004654: Powers of 2 written in base 15. (Next term contains a non-decimal character.)

The programs for A004654, there is no canonical definition to state claims against.
-/

/-! ## A004654.P15040770538831344083

`A106747(2*a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A004654.P15040770538831344083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106747 (2 * a (n - 1)).toNat + a (n - 1)

end

end A004654.P15040770538831344083

/-! ## A004654.P7469485571973282414

`A106747(a(n-1)+a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A004654.P7469485571973282414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106747 (a (n - 1) + a (n - 1)).toNat + a (n - 1)

end

end A004654.P7469485571973282414

/-! ## A004654.P7028364223553205419

`A018749(∑[∑{e}[or(3, n+1), #]])`
-/

namespace A004654.P7028364223553205419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018749 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004654.P7028364223553205419

/-! ## A004654.P11708007416353150264

`A018749(∑[A212369(n)])`
-/

namespace A004654.P11708007416353150264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018749 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004654.P11708007416353150264

/-! ## A004654.P17186605257575523526

`A018749(∑[A341847(n)])`
-/

namespace A004654.P17186605257575523526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018749 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004654.P17186605257575523526

/-!
# A004655: Powers of 2 written in base 16.

The programs for A004655, the canonical program `A004655.P7416596220426554104` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004655 has offset 0).

The definition of A004655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004655.P7416596220426554104

`10*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004655

/-- `10*a(n-4)` -/
def P7416596220426554104.Spec : Prop :=
  ∀ n, (P7416596220426554104.a n : ℤ) = A004655 n

theorem P7416596220426554104.correct : P7416596220426554104.Spec := by
  intro n
  simp only [A004655]

end A004655

/-! ## A004655.P13731594018388032638

`a(n-1)+a(n-1)/a(2%gcd(4, n))` with `a(0)=1`
-/

namespace A004655.P13731594018388032638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - 1) / a (2 % Nat.gcd 4 n)

end

end A004655.P13731594018388032638

namespace A004655

/-- `a(n-1)+a(n-1)/a(2%gcd(4, n))` -/
def P13731594018388032638.Spec : Prop :=
  ∀ n, P13731594018388032638.a n = (A004655 n : ℚ)

end A004655

/-! ## A004655.P7805048194025699388

`a(n-gcd(3, A217516(n+2)))+a(n-1)` with `a(0)=1`
-/

namespace A004655.P7805048194025699388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - Int.gcd 3 (A217516 (n + 2))) + a (n - 1)

end

end A004655.P7805048194025699388

namespace A004655

/-- `a(n-gcd(3, A217516(n+2)))+a(n-1)` -/
def P7805048194025699388.Spec : Prop :=
  ∀ n, (P7805048194025699388.a n : ℤ) = A004655 n

end A004655

/-! ## A004655.P3715203946460712262

`A037124(A028836(n+1))`
-/

namespace A004655.P3715203946460712262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (A028836 (n + 1)).toNat

end

end A004655.P3715203946460712262

namespace A004655

/-- `A037124(A028836(n+1))` -/
def P3715203946460712262.Spec : Prop :=
  ∀ n, P3715203946460712262.a n = A004655 n

end A004655

/-! ## A004655.P197046396418735732

`A037124(A110659(9*n))`
-/

namespace A004655.P197046396418735732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (A110659 (9 * n)).toNat

end

end A004655.P197046396418735732

namespace A004655

/-- `A037124(A110659(9*n))` -/
def P197046396418735732.Spec : Prop :=
  ∀ n, P197046396418735732.a n = A004655 n

end A004655

/-! ## A004655.P18165332768175530230

`A037124(A110659(n)+n+n)`
-/

namespace A004655.P18165332768175530230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (A110659 n + (n : ℤ) + (n : ℤ)).toNat

end

end A004655.P18165332768175530230

namespace A004655

/-- `A037124(A110659(n)+n+n)` -/
def P18165332768175530230.Spec : Prop :=
  ∀ n, P18165332768175530230.a n = A004655 n

end A004655

/-! ## A004655.P2365013358554219713

`A037124(A003485(n)+A002265(n))`
-/

namespace A004655.P2365013358554219713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (A003485 n + A002265 n).toNat

end

end A004655.P2365013358554219713

namespace A004655

/-- `A037124(A003485(n)+A002265(n))` -/
def P2365013358554219713.Spec : Prop :=
  ∀ n, P2365013358554219713.a n = A004655 n

end A004655

/-! ## A004655.P1952323111154794563

`A037124(A110659(n)+A005843(n))`
-/

namespace A004655.P1952323111154794563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (A110659 n + A005843 n).toNat

end

end A004655.P1952323111154794563

namespace A004655

/-- `A037124(A110659(n)+A005843(n))` -/
def P1952323111154794563.Spec : Prop :=
  ∀ n, P1952323111154794563.a n = A004655 n

end A004655

/-! ## A004655.P11338700754453375262

`∪[2*A004647(n), A004647(n)]`
-/

namespace A004655.P11338700754453375262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004647 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004647 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004655.P11338700754453375262

namespace A004655

/-- `∪[2*A004647(n), A004647(n)]` -/
def P11338700754453375262.Spec : Prop :=
  ∀ n, (P11338700754453375262.a n : ℤ) = A004655 n

end A004655

/-! ## A004655.P11815139014280748003

`∩[A025612(n+1), A037124(n+1)]`
-/

namespace A004655.P11815139014280748003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004655.P11815139014280748003

namespace A004655

/-- `∩[A025612(n+1), A037124(n+1)]` -/
def P11815139014280748003.Spec : Prop :=
  ∀ n, (P11815139014280748003.a n : ℤ) = A004655 n

end A004655

/-! ## A004655.P7472493458318898664

`∩[A025612(n+1), A085133(n+1)]`
-/

namespace A004655.P7472493458318898664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004655.P7472493458318898664

namespace A004655

/-- `∩[A025612(n+1), A085133(n+1)]` -/
def P7472493458318898664.Spec : Prop :=
  ∀ n, (P7472493458318898664.a n : ℤ) = A004655 n

end A004655

/-! ## A004655.P9352860226084381336

`∩[A025612(n+1), A085135(n+1)]`
-/

namespace A004655.P9352860226084381336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004655.P9352860226084381336

namespace A004655

/-- `∩[A025612(n+1), A085135(n+1)]` -/
def P9352860226084381336.Spec : Prop :=
  ∀ n, (P9352860226084381336.a n : ℤ) = A004655 n

end A004655

/-! ## A004655.P9961883883110074147

`∩[A025612(n+1), A193460(n+1)]`
-/

namespace A004655.P9961883883110074147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004655.P9961883883110074147

namespace A004655

/-- `∩[A025612(n+1), A193460(n+1)]` -/
def P9961883883110074147.Spec : Prop :=
  ∀ n, (P9961883883110074147.a n : ℤ) = A004655 n

end A004655

/-! ## A004655.P17023564296422625407

`∩[A025612(n+1), A383592(n+1)]`
-/

namespace A004655.P17023564296422625407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004655.P17023564296422625407

namespace A004655

/-- `∩[A025612(n+1), A383592(n+1)]` -/
def P17023564296422625407.Spec : Prop :=
  ∀ n, (P17023564296422625407.a n : ℤ) = A004655 n

end A004655

/-! ## A004655.P12441604492105444425

`∩[A025612(n+1), A325112(n+1)]`
-/

namespace A004655.P12441604492105444425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004655.P12441604492105444425

namespace A004655

/-- `∩[A025612(n+1), A325112(n+1)]` -/
def P12441604492105444425.Spec : Prop :=
  ∀ n, (P12441604492105444425.a n : ℤ) = A004655 n

end A004655

/-! ## A004655.P16518605499488229009

`∪[2*A136859(n+2), A136859(n+2)]`
-/

namespace A004655.P16518605499488229009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136859 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136859 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004655.P16518605499488229009

namespace A004655

/-- `∪[2*A136859(n+2), A136859(n+2)]` -/
def P16518605499488229009.Spec : Prop :=
  ∀ n, (P16518605499488229009.a n : ℤ) = A004655 n

end A004655

/-!
# A004656: Powers of 3 written in base 2.

The programs for A004656, there is no canonical definition to state claims against.
-/

/-! ## A004656.P2683464075285554277

`A007088(3^n)`
-/

namespace A004656.P2683464075285554277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (3 ^ n)

end

end A004656.P2683464075285554277

/-! ## A004656.P1124446221905215082

`record[A007088(A048883(n))]`
-/

namespace A004656.P1124446221905215082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A048883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004656.P1124446221905215082

/-! ## A004656.P10151913876685475469

`record[A007088(A061980(n))]`
-/

namespace A004656.P10151913876685475469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A061980 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004656.P10151913876685475469

/-! ## A004656.P16346712298047498430

`record[A007088(A106516(n))]`
-/

namespace A004656.P16346712298047498430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A106516 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004656.P16346712298047498430

/-! ## A004656.P17711137215512811755

`record[A007088(A133579(n))]`
-/

namespace A004656.P17711137215512811755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A133579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004656.P17711137215512811755

/-!
# A004657: Expansion of g.f.: (1+x^3)*(1+x^4)/((1-x)*(1-x^2)^2*(1-x^4)).

The programs for A004657, the canonical program `A004657.P18080860416805043684` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004657 has offset 0).

The definition of A004657 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^3+x^4+x^7)/(1-x-2x^2+2x^3+2x^6-2x^7-x^8+x^9))` (program `A004657.P18080860416805043684`, by `A004657.P18080860416805043684.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004657.P18080860416805043684

`ogf((1+x^3+x^4+x^7)/(1-x-2x^2+2x^3+2x^6-2x^7-x^8+x^9))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004657

/-- `ogf((1+x^3+x^4+x^7)/(1-x-2x^2+2x^3+2x^6-2x^7-x^8+x^9))` -/
def P18080860416805043684.Spec : Prop :=
  ∀ n, P18080860416805043684.a n = A004657 n

theorem P18080860416805043684.correct : P18080860416805043684.Spec := by
  intro n
  simp only [A004657]

end A004657

/-! ## A004657.P16856009008547295625

`∑[ceil(A028242(n)²/2)]`
-/

namespace A004657.P16856009008547295625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028242 n ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004657.P16856009008547295625

namespace A004657

/-- `∑[ceil(A028242(n)²/2)]` -/
def P16856009008547295625.Spec : Prop :=
  ∀ n, P16856009008547295625.a n = A004657 n

end A004657

/-! ## A004657.P8020203382968427632

`∑[A000982(ceil(xor(1, n)/2))]`
-/

namespace A004657.P8020203382968427632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004657.P8020203382968427632

namespace A004657

/-- `∑[A000982(ceil(xor(1, n)/2))]` -/
def P8020203382968427632.Spec : Prop :=
  ∀ n, P8020203382968427632.a n = A004657 n

end A004657

/-! ## A004657.P10243896609842498599

`∑[A000982(round(xor(1, n)/2))]`
-/

namespace A004657.P10243896609842498599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004657.P10243896609842498599

namespace A004657

/-- `∑[A000982(round(xor(1, n)/2))]` -/
def P10243896609842498599.Spec : Prop :=
  ∀ n, P10243896609842498599.a n = A004657 n

end A004657

/-! ## A004657.P3369445173536319819

`A053307(n)-round(n²/8)`
-/

namespace A004657.P3369445173536319819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053307 n - SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8)

end

end A004657.P3369445173536319819

namespace A004657

/-- `A053307(n)-round(n²/8)` -/
def P3369445173536319819.Spec : Prop :=
  ∀ n, P3369445173536319819.a n = A004657 n

end A004657

/-! ## A004657.P4706602323940944751

`∑[ceil(∑[A280193(n)]²/2)]`
-/

namespace A004657.P4706602323940944751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℤ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004657.P4706602323940944751

namespace A004657

/-- `∑[ceil(∑[A280193(n)]²/2)]` -/
def P4706602323940944751.Spec : Prop :=
  ∀ n, P4706602323940944751.a n = A004657 n

end A004657

/-! ## A004657.P3428089113239704143

`∑[A000982(A028242(n))]`
-/

namespace A004657.P3428089113239704143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004657.P3428089113239704143

namespace A004657

/-- `∑[A000982(A028242(n))]` -/
def P3428089113239704143.Spec : Prop :=
  ∀ n, P3428089113239704143.a n = A004657 n

end A004657

/-! ## A004657.P12382472500081094118

`∑[A000982(∑[A280193(n)])]`
-/

namespace A004657.P12382472500081094118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004657.P12382472500081094118

namespace A004657

/-- `∑[A000982(∑[A280193(n)])]` -/
def P12382472500081094118.Spec : Prop :=
  ∀ n, P12382472500081094118.a n = A004657 n

end A004657

/-! ## A004657.P5745632434807826670

`A054974(n+2)-A282513(n)`
-/

namespace A004657.P5745632434807826670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054974 (n + 2) - A282513 n

end

end A004657.P5745632434807826670

namespace A004657

/-- `A054974(n+2)-A282513(n)` -/
def P5745632434807826670.Spec : Prop :=
  ∀ n, P5745632434807826670.a n = A004657 n

end A004657

/-! ## A004657.P6860562758164871832

`∑[A059169(n+1)²+A008624(n)²]`
-/

namespace A004657.P6860562758164871832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1) ^ 2 + A008624 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004657.P6860562758164871832

namespace A004657

/-- `∑[A059169(n+1)²+A008624(n)²]` -/
def P6860562758164871832.Spec : Prop :=
  ∀ n, P6860562758164871832.a n = A004657 n

end A004657

/-! ## A004657.P16127811715582984230

`A005232(n)+A005232(n)-A004652(n+1)`
-/

namespace A004657.P16127811715582984230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 n + (A005232 n - A004652 (n + 1))

end

end A004657.P16127811715582984230

namespace A004657

/-- `A005232(n)+A005232(n)-A004652(n+1)` -/
def P16127811715582984230.Spec : Prop :=
  ∀ n, P16127811715582984230.a n = A004657 n

end A004657

/-! ## A004657.P5264324997137847498

`∑[A000982(A109613(n)-A004526(n+1))]`
-/

namespace A004657.P5264324997137847498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A109613 n - A004526 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004657.P5264324997137847498

namespace A004657

/-- `∑[A000982(A109613(n)-A004526(n+1))]` -/
def P5264324997137847498.Spec : Prop :=
  ∀ n, P5264324997137847498.a n = A004657 n

end A004657

/-! ## A004657.P15589796355745934646

`∑[A000982(A001651(n+1))-(n²+n)]`
-/

namespace A004657.P15589796355745934646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A001651 (n + 1)).toNat - (n ^ 2 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004657.P15589796355745934646

namespace A004657

/-- `∑[A000982(A001651(n+1))-(n²+n)]` -/
def P15589796355745934646.Spec : Prop :=
  ∀ n, P15589796355745934646.a n = A004657 n

end A004657

/-! ## A004657.P8286200056002672091

`A008765(2*n+1)+A008765(3*n)-A001400(4*n)`
-/

namespace A004657.P8286200056002672091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008765 (2 * n + 1) + (A008765 (3 * n) - A001400 (4 * n))

end

end A004657.P8286200056002672091

namespace A004657

/-- `A008765(2*n+1)+A008765(3*n)-A001400(4*n)` -/
def P8286200056002672091.Spec : Prop :=
  ∀ n, P8286200056002672091.a n = A004657 n

end A004657

/-! ## A004657.P9466518321387554852

`∑[A000982(n+1-A100795(a(n-1)+1))]` with `a(0)=1`
-/

namespace A004657.P9466518321387554852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000982 ((n + 1 : ℤ) - A100795 (f1 (n - 1) + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004657.P9466518321387554852

namespace A004657

/-- `∑[A000982(n+1-A100795(a(n-1)+1))]` -/
def P9466518321387554852.Spec : Prop :=
  ∀ n, P9466518321387554852.a n = A004657 n

end A004657

/-! ## A004657.P12132715946325166773

`∑[A130472(n)+A008619(A130472(n)²)]`
-/

namespace A004657.P12132715946325166773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n + A008619 (A130472 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004657.P12132715946325166773

namespace A004657

/-- `∑[A130472(n)+A008619(A130472(n)²)]` -/
def P12132715946325166773.Spec : Prop :=
  ∀ n, P12132715946325166773.a n = A004657 n

end A004657

/-! ## A004657.P4464036658721113442

`∑[A008619(A001057(n)²)-A001057(n)]`
-/

namespace A004657.P4464036658721113442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A001057 n ^ 2).toNat - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004657.P4464036658721113442

namespace A004657

/-- `∑[A008619(A001057(n)²)-A001057(n)]` -/
def P4464036658721113442.Spec : Prop :=
  ∀ n, P4464036658721113442.a n = A004657 n

end A004657

/-! ## A004657.P9534368903887021395

`∑[A004525(A028242(n)²)]`
-/

namespace A004657.P9534368903887021395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028242 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004657.P9534368903887021395

namespace A004657

/-- `∑[A004525(A028242(n)²)]` -/
def P9534368903887021395.Spec : Prop :=
  ∀ n, P9534368903887021395.a n = A004657 n

end A004657

/-! ## A004657.P14016900024864269281

`∑[A110654(A028242(n)²)]`
-/

namespace A004657.P14016900024864269281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A028242 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004657.P14016900024864269281

namespace A004657

/-- `∑[A110654(A028242(n)²)]` -/
def P14016900024864269281.Spec : Prop :=
  ∀ n, P14016900024864269281.a n = A004657 n

end A004657

/-! ## A004657.P3419853142730640303

`∑[A004525(1-A317300(n))]`
-/

namespace A004657.P3419853142730640303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (1 - A317300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004657.P3419853142730640303

namespace A004657

/-- `∑[A004525(1-A317300(n))]` -/
def P3419853142730640303.Spec : Prop :=
  ∀ n, P3419853142730640303.a n = A004657 n

end A004657

/-!
# A004658: Powers of 3 written in base 4.

The programs for A004658, there is no canonical definition to state claims against.
-/

/-! ## A004658.P1339004621471115167

`A007090(3^n)`
-/

namespace A004658.P1339004621471115167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (3 ^ n)

end

end A004658.P1339004621471115167

/-! ## A004658.P3297479276206018031

`record[A007090(A048883(n))]`
-/

namespace A004658.P3297479276206018031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A048883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004658.P3297479276206018031

/-! ## A004658.P9624515863026629211

`record[A007090(A061980(n))]`
-/

namespace A004658.P9624515863026629211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A061980 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004658.P9624515863026629211

/-! ## A004658.P6161462190334020227

`record[A007090(A106516(n))]`
-/

namespace A004658.P6161462190334020227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A106516 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004658.P6161462190334020227

/-! ## A004658.P12477275304501465758

`record[A007090(A112626(n))]`
-/

namespace A004658.P12477275304501465758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A112626 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004658.P12477275304501465758

/-!
# A004659: Powers of 3 written in base 5.

The programs for A004659, there is no canonical definition to state claims against.
-/

/-! ## A004659.P1445208685075972629

`A007091(3^n)`
-/

namespace A004659.P1445208685075972629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (3 ^ n)

end

end A004659.P1445208685075972629

/-! ## A004659.P5723007792016668887

`A014263(3^n+1)/2`
-/

namespace A004659.P5723007792016668887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014263 (3 ^ n + 1) : ℚ) / 2

end

end A004659.P5723007792016668887

/-! ## A004659.P2964732308577646261

`record[A007091(A048883(n))]`
-/

namespace A004659.P2964732308577646261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A048883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004659.P2964732308577646261

/-! ## A004659.P6839591953908797141

`record[A007091(A061980(n))]`
-/

namespace A004659.P6839591953908797141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A061980 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004659.P6839591953908797141

/-! ## A004659.P1335464289239380934

`record[A007091(A106516(n))]`
-/

namespace A004659.P1335464289239380934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A106516 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004659.P1335464289239380934

/-!
# A004660: Powers of 3 written in base 6.

The programs for A004660, there is no canonical definition to state claims against.
-/

/-! ## A004660.P15210474384678916518

`A007092(3^n)`
-/

namespace A004660.P15210474384678916518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (3 ^ n)

end

end A004660.P15210474384678916518

/-! ## A004660.P17965208708987490875

`A007092(∑[3*a(n-1)]+1)-1` with `a(0)=1, a(1)=2`
-/

namespace A004660.P17965208708987490875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A004660.P17965208708987490875

/-! ## A004660.P12885205051320989917

`record[A007092(A048883(n))]`
-/

namespace A004660.P12885205051320989917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A048883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004660.P12885205051320989917

/-! ## A004660.P14212160230641529220

`record[A007092(A061980(n))]`
-/

namespace A004660.P14212160230641529220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A061980 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004660.P14212160230641529220

/-! ## A004660.P17691191217585539429

`record[A007092(A106516(n))]`
-/

namespace A004660.P17691191217585539429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A106516 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004660.P17691191217585539429

/-!
# A004661: Powers of 3 written in base 7.

The programs for A004661, there is no canonical definition to state claims against.
-/

/-! ## A004661.P9377571496498388273

`A007093(3^n)`
-/

namespace A004661.P9377571496498388273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (3 ^ n)

end

end A004661.P9377571496498388273

/-! ## A004661.P1656326926407668773

`record[A007093(A048883(n))]`
-/

namespace A004661.P1656326926407668773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A048883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004661.P1656326926407668773

/-! ## A004661.P13365206389115998720

`record[A007093(A061980(n))]`
-/

namespace A004661.P13365206389115998720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A061980 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004661.P13365206389115998720

/-! ## A004661.P18430849028058602166

`record[A007093(A106516(n))]`
-/

namespace A004661.P18430849028058602166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A106516 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004661.P18430849028058602166

/-! ## A004661.P3478765269700929918

`record[A007093(A112626(n))]`
-/

namespace A004661.P3478765269700929918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A112626 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004661.P3478765269700929918

/-!
# A004662: Powers of 3 written in base 8.

The programs for A004662, there is no canonical definition to state claims against.
-/

/-! ## A004662.P17393665343470556680

`A007094(3^n)`
-/

namespace A004662.P17393665343470556680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (3 ^ n)

end

end A004662.P17393665343470556680

/-! ## A004662.P8670399200560921180

`A214678(3^n)`
-/

namespace A004662.P8670399200560921180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (3 ^ n)

end

end A004662.P8670399200560921180

/-! ## A004662.P17029215363371595227

`record[A007094(A048883(n))]`
-/

namespace A004662.P17029215363371595227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A048883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004662.P17029215363371595227

/-! ## A004662.P17816630501160319360

`record[A007094(A106516(n))]`
-/

namespace A004662.P17816630501160319360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A106516 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004662.P17816630501160319360

/-! ## A004662.P2438600302741284074

`record[A007094(A112626(n))]`
-/

namespace A004662.P2438600302741284074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A112626 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004662.P2438600302741284074

/-!
# A004663: Powers of 3 written in base 9.

The programs for A004663, the canonical program `A004663.P15924348623251738281` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004663 has offset 0).

The definition of A004663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004663.P15924348623251738281

`3*a(n-1)+(1+(-1)^n)/2*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004663

/-- `3*a(n-1)+(1+(-1)^n)/2*a(n-2)` -/
def P15924348623251738281.Spec : Prop :=
  ∀ n, P15924348623251738281.a n = (A004663 n : ℚ)

end A004663

/-! ## A004663.P1353779743024462532

`2*a(n-1)+3*a(n-2)+10^floor((n-2)/2)` with `a(0)=1, a(1)=3`
-/

namespace A004663.P1353779743024462532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) + (10 : ℚ) ^ (⌊((n : ℤ) - 2 : ℚ) / 2⌋ : ℤ)

end

end A004663.P1353779743024462532

namespace A004663

/-- `2*a(n-1)+3*a(n-2)+10^floor((n-2)/2)` -/
def P1353779743024462532.Spec : Prop :=
  ∀ n, P1353779743024462532.a n = (A004663 n : ℚ)

end A004663

/-! ## A004663.P5930272877550994728

`ogf((1+3x)/(1-10x^2))`
-/

namespace A004663.P5930272877550994728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 0, -10] n

end

end A004663.P5930272877550994728

namespace A004663

/-- `ogf((1+3x)/(1-10x^2))` -/
def P5930272877550994728.Spec : Prop :=
  ∀ n, P5930272877550994728.a n = A004663 n

end A004663

/-! ## A004663.P5325920974747866608

`10*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A004663.P5325920974747866608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  10 * a (n - 2)

end

end A004663.P5325920974747866608

namespace A004663

/-- `10*a(n-2)` -/
def P5325920974747866608.Spec : Prop :=
  ∀ n, (P5325920974747866608.a n : ℤ) = A004663 n

end A004663

/-! ## A004663.P4209070652458445550

`∏[10/a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A004663.P4209070652458445550
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  10 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004663.P4209070652458445550

namespace A004663

/-- `∏[10/a(n-1)]` -/
def P4209070652458445550.Spec : Prop :=
  ∀ n, P4209070652458445550.a n = (A004663 n : ℚ)

end A004663

/-! ## A004663.P1856167361949867688

`3^(n%2)*10^floor(n/2)`
-/

namespace A004663.P1856167361949867688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (n % 2) : ℚ) * (10 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A004663.P1856167361949867688

namespace A004663

/-- `3^(n%2)*10^floor(n/2)` -/
def P1856167361949867688.Spec : Prop :=
  ∀ n, P1856167361949867688.a n = (A004663 n : ℚ)

end A004663

/-! ## A004663.P5686657852453581373

`a(n-2)+a(n-2)/(1/3)²` with `a(0)=1, a(1)=3`
-/

namespace A004663.P5686657852453581373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + a (n - 2) / ((1 : ℚ) / 3) ^ 2

end

end A004663.P5686657852453581373

namespace A004663

/-- `a(n-2)+a(n-2)/(1/3)²` -/
def P5686657852453581373.Spec : Prop :=
  ∀ n, P5686657852453581373.a n = (A004663 n : ℚ)

end A004663

/-! ## A004663.P17920836832787358131

`A136853(n+2)`
-/

namespace A004663.P17920836832787358131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136853 (n + 2)

end

end A004663.P17920836832787358131

namespace A004663

/-- `A136853(n+2)` -/
def P17920836832787358131.Spec : Prop :=
  ∀ n, P17920836832787358131.a n = A004663 n

end A004663

/-! ## A004663.P1758228477301883155

`and(3, Δ[n²])*A286507(n)`
-/

namespace A004663.P1758228477301883155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A286507 n

end

end A004663.P1758228477301883155

namespace A004663

/-- `and(3, Δ[n²])*A286507(n)` -/
def P1758228477301883155.Spec : Prop :=
  ∀ n, P1758228477301883155.a n = A004663 n

end A004663

/-! ## A004663.P10073449478334648892

`lcm(2^floor(n/2), A056487(n))`
-/

namespace A004663.P10073449478334648892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (A056487 n)

end

end A004663.P10073449478334648892

namespace A004663

/-- `lcm(2^floor(n/2), A056487(n))` -/
def P10073449478334648892.Spec : Prop :=
  ∀ n, (P10073449478334648892.a n : ℤ) = A004663 n

end A004663

/-! ## A004663.P7901203235328264928

`2^floor(n/2)*Δ[A026383(n)]`
-/

namespace A004663.P7901203235328264928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (f1 (n + 1) - f1 n : ℚ)

end

end A004663.P7901203235328264928

namespace A004663

/-- `2^floor(n/2)*Δ[A026383(n)]` -/
def P7901203235328264928.Spec : Prop :=
  ∀ n, P7901203235328264928.a n = (A004663 n : ℚ)

end A004663

/-! ## A004663.P2559583703925686405

`A004669(A032766(n))`
-/

namespace A004663.P2559583703925686405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004669 (A032766 n).toNat

end

end A004663.P2559583703925686405

namespace A004663

/-- `A004669(A032766(n))` -/
def P2559583703925686405.Spec : Prop :=
  ∀ n, P2559583703925686405.a n = A004663 n

end A004663

/-! ## A004663.P15888033121323684246

`A004669(∑[A134451(n)])`
-/

namespace A004663.P15888033121323684246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004669 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004663.P15888033121323684246

namespace A004663

/-- `A004669(∑[A134451(n)])` -/
def P15888033121323684246.Spec : Prop :=
  ∀ n, P15888033121323684246.a n = A004663 n

end A004663

/-! ## A004663.P10983637762112755051

`A004669(A004526(3*n))`
-/

namespace A004663.P10983637762112755051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004669 (A004526 (3 * n)).toNat

end

end A004663.P10983637762112755051

namespace A004663

/-- `A004669(A004526(3*n))` -/
def P10983637762112755051.Spec : Prop :=
  ∀ n, P10983637762112755051.a n = A004663 n

end A004663

/-! ## A004663.P6273303158370646986

`A004669(A004526(n)+n)`
-/

namespace A004663.P6273303158370646986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004669 (A004526 n + (n : ℤ)).toNat

end

end A004663.P6273303158370646986

namespace A004663

/-- `A004669(A004526(n)+n)` -/
def P6273303158370646986.Spec : Prop :=
  ∀ n, P6273303158370646986.a n = A004663 n

end A004663

/-! ## A004663.P10727052617129297629

`A016116(n)*A056487(n)`
-/

namespace A004663.P10727052617129297629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A056487 n

end

end A004663.P10727052617129297629

namespace A004663

/-- `A016116(n)*A056487(n)` -/
def P10727052617129297629.Spec : Prop :=
  ∀ n, P10727052617129297629.a n = A004663 n

end A004663

/-! ## A004663.P14183614263271689943

`A010684(n)*A286507(n)`
-/

namespace A004663.P14183614263271689943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A286507 n

end

end A004663.P14183614263271689943

namespace A004663

/-- `A010684(n)*A286507(n)` -/
def P14183614263271689943.Spec : Prop :=
  ∀ n, P14183614263271689943.a n = A004663 n

end A004663

/-! ## A004663.P1121455714651934303

`∩[A004669(n), A278742(n+1)]`
-/

namespace A004663.P1121455714651934303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004663.P1121455714651934303

namespace A004663

/-- `∩[A004669(n), A278742(n+1)]` -/
def P1121455714651934303.Spec : Prop :=
  ∀ n, (P1121455714651934303.a n : ℤ) = A004663 n

end A004663

/-! ## A004663.P14107186405068937744

`A074872(n+1)*A164073(n+1)`
-/

namespace A004663.P14107186405068937744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (n + 1) * A164073 (n + 1)

end

end A004663.P14107186405068937744

namespace A004663

/-- `A074872(n+1)*A164073(n+1)` -/
def P14107186405068937744.Spec : Prop :=
  ∀ n, P14107186405068937744.a n = A004663 n

end A004663

/-! ## A004663.P92263687419684605

`5^A004526(n)*A164073(n+1)`
-/

namespace A004663.P92263687419684605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A004526 n : ℤ) * (A164073 (n + 1) : ℚ)

end

end A004663.P92263687419684605

namespace A004663

/-- `5^A004526(n)*A164073(n+1)` -/
def P92263687419684605.Spec : Prop :=
  ∀ n, P92263687419684605.a n = (A004663 n : ℚ)

end A004663

/-!
# A004664: a(n) = n! + n^2.

The programs for A004664, the canonical program `A004664.P2016887011664002620` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004664 has offset 0).

The definition of A004664 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!+n²` (program `A004664.P2016887011664002620`, by `A004664.P2016887011664002620.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004664.P2016887011664002620

`n!+n²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004664

/-- `n!+n²` -/
def P2016887011664002620.Spec : Prop :=
  ∀ n, (P2016887011664002620.a n : ℤ) = A004664 n

theorem P2016887011664002620.correct : P2016887011664002620.Spec := by
  intro n
  simp only [A004664]

end A004664

/-! ## A004664.P3009653550599280159

`∑[2*n]+n!-n`
-/

namespace A004664.P3009653550599280159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((Nat.factorial n : ℤ) - (n : ℤ))

end

end A004664.P3009653550599280159

namespace A004664

/-- `∑[2*n]+n!-n` -/
def P3009653550599280159.Spec : Prop :=
  ∀ n, P3009653550599280159.a n = A004664 n

end A004664

/-! ## A004664.P7969253205636032657

`∑[2*n]-(n-n!)`
-/

namespace A004664.P7969253205636032657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - (Nat.factorial n : ℤ))

end

end A004664.P7969253205636032657

namespace A004664

/-- `∑[2*n]-(n-n!)` -/
def P7969253205636032657.Spec : Prop :=
  ∀ n, P7969253205636032657.a n = A004664 n

end A004664

/-! ## A004664.P12845849057445154506

`∏[round(1/acot(n))]+n²`
-/

namespace A004664.P12845849057445154506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A004664.P12845849057445154506

namespace A004664

/-- `∏[round(1/acot(n))]+n²` -/
def P12845849057445154506.Spec : Prop :=
  ∀ n, P12845849057445154506.a n = A004664 n

end A004664

/-! ## A004664.P10877605766526507374

`∑[comp[2*(n+1)]]+n!`
-/

namespace A004664.P10877605766526507374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.factorial n

end

end A004664.P10877605766526507374

namespace A004664

/-- `∑[comp[2*(n+1)]]+n!` -/
def P10877605766526507374.Spec : Prop :=
  ∀ n, (P10877605766526507374.a n : ℤ) = A004664 n

end A004664

/-! ## A004664.P10671335949991182378

`n!+n*(n+1)-n`
-/

namespace A004664.P10671335949991182378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n + n * (n + 1) : ℤ) - (n : ℤ)

end

end A004664.P10671335949991182378

namespace A004664

/-- `n!+n*(n+1)-n` -/
def P10671335949991182378.Spec : Prop :=
  ∀ n, P10671335949991182378.a n = A004664 n

theorem P10671335949991182378.correct : P10671335949991182378.Spec := by
  intro n
  simp only [A004664, Nat.add_sub_cancel, A004664.P10671335949991182378.a, A004664.P2016887011664002620.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A004664

/-! ## A004664.P17099170898397130084

`∏[ceil(abs(sin(1)-n))]+n²`
-/

namespace A004664.P17099170898397130084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (1 : ℝ) - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A004664.P17099170898397130084

namespace A004664

/-- `∏[ceil(abs(sin(1)-n))]+n²` -/
def P17099170898397130084.Spec : Prop :=
  ∀ n, P17099170898397130084.a n = A004664 n

end A004664

/-! ## A004664.P12912299617186018629

`∏[n^ceil(abs(sin(n)))]+n²`
-/

namespace A004664.P12912299617186018629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℚ)

end

end A004664.P12912299617186018629

namespace A004664

/-- `∏[n^ceil(abs(sin(n)))]+n²` -/
def P12912299617186018629.Spec : Prop :=
  ∀ n, P12912299617186018629.a n = (A004664 n : ℚ)

end A004664

/-! ## A004664.P4893695491711348181

`n*(a(n-1)-(1-n)²+n)` with `a(0)=1`
-/

namespace A004664.P4893695491711348181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (a (n - 1) - (1 - (n : ℤ)) ^ 2 + (n : ℤ))

end

end A004664.P4893695491711348181

namespace A004664

/-- `n*(a(n-1)-(1-n)²+n)` -/
def P4893695491711348181.Spec : Prop :=
  ∀ n, P4893695491711348181.a n = A004664 n

end A004664

/-! ## A004664.P11295688446414888665

`n*(n-((1-n)²-a(n-1)))` with `a(0)=1`
-/

namespace A004664.P11295688446414888665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * ((n : ℤ) - ((1 - (n : ℤ)) ^ 2 - a (n - 1)))

end

end A004664.P11295688446414888665

namespace A004664

/-- `n*(n-((1-n)²-a(n-1)))` -/
def P11295688446414888665.Spec : Prop :=
  ∀ n, P11295688446414888665.a n = A004664 n

end A004664

/-!
# A004665: Powers of 3 written in base 11. (Next term contains a non-decimal character.)

The programs for A004665, there is no canonical definition to state claims against.
-/

/-! ## A004665.P5168633399914498454

`eq[1, A053735(A171397(n))]`
-/

namespace A004665.P5168633399914498454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A171397 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004665.P5168633399914498454

/-! ## A004665.P1110857810434465166

`eq[A054977(n), A092037(A171397(n))]`
-/

namespace A004665.P1110857810434465166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092037 (A171397 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004665.P1110857810434465166

/-! ## A004665.P9788976139071650104

`eq[A057427(n), A113261(A171397(n))]`
-/

namespace A004665.P9788976139071650104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113261 (A171397 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004665.P9788976139071650104

/-! ## A004665.P6603175377957000202

`eq[A000040(n+1)%2, A257656(A171397(n))]`
-/

namespace A004665.P6603175377957000202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257656 (A171397 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004665.P6603175377957000202

/-!
# A004666: Powers of 3 written in base 12. (Next term contains a non-decimal character.)

The programs for A004666, there is no canonical definition to state claims against.
-/

/-! ## A004666.P10189190496429845590

`eq[1, A005812(A102487(n+1))]`
-/

namespace A004666.P10189190496429845590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A102487 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004666.P10189190496429845590

/-! ## A004666.P17195916120732293701

`eq[A030108(A102487(n+1)), A204689(n)]`
-/

namespace A004666.P17195916120732293701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 (A102487 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004666.P17195916120732293701

/-! ## A004666.P6885383716283264474

`eq[A040168(n), A206424(A102487(n+1))]`
-/

namespace A004666.P6885383716283264474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040168 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206424 (A102487 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004666.P6885383716283264474

/-!
# A004667: Powers of 3 written in base 13. (Next term contains a non-decimal digit.)

The programs for A004667, there is no canonical definition to state claims against.
-/

/-! ## A004667.P9988568275504332798

`ogf((1+3x+4x^2)/(1-5x^2-6x^3))`
-/

namespace A004667.P9988568275504332798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4] [1, 0, -5, -6] n

end

end A004667.P9988568275504332798

/-! ## A004667.P9832506835962232326

`A047501(A271895(n))`
-/

namespace A004667.P9832506835962232326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047501 (A271895 n).toNat

end

end A004667.P9832506835962232326

/-! ## A004667.P2099197957623758289

`A177855(A336135(n+1))`
-/

namespace A004667.P2099197957623758289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177855 (A336135 (n + 1)).toNat

end

end A004667.P2099197957623758289

/-!
# A004668: Powers of 3 written in base 26. (Next term contains a non-decimal digit.)

The programs for A004668, there is no canonical definition to state claims against.
-/

/-! ## A004668.P11477508788323096629

`char[8]+11*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A004668.P11477508788323096629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 11 * a (n - 3)

end

end A004668.P11477508788323096629

/-! ## A004668.P17982119160834205151

`11*a(n-3)-char[8]` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A004668.P17982119160834205151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  11 * a (n - 3) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A004668.P17982119160834205151

/-! ## A004668.P6885731501179574877

`11*a(n-3-A239657(3*n+4))` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A004668.P6885731501179574877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  11 * a ((n : ℤ) - 3 - A239657 (3 * n + 4)).toNat

end

end A004668.P6885731501179574877

/-! ## A004668.P17566506761967412236

`A052382(A004669(n))`
-/

namespace A004668.P17566506761967412236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (A004669 n).toNat

end

end A004668.P17566506761967412236

/-!
# A004669: Powers of 3 written in base 27.

The programs for A004669, the canonical program `A004669.P17158467499587644242` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004669 has offset 0).

The definition of A004669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004669.P17158467499587644242

`10*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004669

/-- `10*a(n-3)` -/
def P17158467499587644242.Spec : Prop :=
  ∀ n, (P17158467499587644242.a n : ℤ) = A004669 n

theorem P17158467499587644242.correct : P17158467499587644242.Spec := by
  intro n
  simp only [A004669]

end A004669

/-! ## A004669.P9073812432094207537

`A037124(∑[A010882(n)!])`
-/

namespace A004669.P9073812432094207537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010882 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004669.P9073812432094207537

namespace A004669

/-- `A037124(∑[A010882(n)!])` -/
def P9073812432094207537.Spec : Prop :=
  ∀ n, P9073812432094207537.a n = A004669 n

end A004669

/-! ## A004669.P1460301619257250596

`A037124(∑[A131749(a(n-1)+1)])` with `a(0)=1`
-/

namespace A004669.P1460301619257250596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A131749 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004669.P1460301619257250596

namespace A004669

/-- `A037124(∑[A131749(a(n-1)+1)])` -/
def P1460301619257250596.Spec : Prop :=
  ∀ n, P1460301619257250596.a n = A004669 n

end A004669

/-! ## A004669.P7034696511292892457

`ogf((1+3x+9x^2)/(1-10x^3))`
-/

namespace A004669.P7034696511292892457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 9] [1, 0, 0, -10] n

end

end A004669.P7034696511292892457

namespace A004669

/-- `ogf((1+3x+9x^2)/(1-10x^3))` -/
def P7034696511292892457.Spec : Prop :=
  ∀ n, P7034696511292892457.a n = A004669 n

end A004669

/-! ## A004669.P9973237391898365260

`record[Δ[A194350(A056699(n+1))]]`
-/

namespace A004669.P9973237391898365260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A056699 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004669.P9973237391898365260

namespace A004669

/-- `record[Δ[A194350(A056699(n+1))]]` -/
def P9973237391898365260.Spec : Prop :=
  ∀ n, P9973237391898365260.a n = A004669 n

end A004669

/-! ## A004669.P5669879758203540753

`∩[A025616(n+1), A037124(n+1)]`
-/

namespace A004669.P5669879758203540753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004669.P5669879758203540753

namespace A004669

/-- `∩[A025616(n+1), A037124(n+1)]` -/
def P5669879758203540753.Spec : Prop :=
  ∀ n, (P5669879758203540753.a n : ℤ) = A004669 n

end A004669

/-! ## A004669.P5028359067676436153

`∩[A025616(n+1), A193460(n+1)]`
-/

namespace A004669.P5028359067676436153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004669.P5028359067676436153

namespace A004669

/-- `∩[A025616(n+1), A193460(n+1)]` -/
def P5028359067676436153.Spec : Prop :=
  ∀ n, (P5028359067676436153.a n : ℤ) = A004669 n

end A004669

/-! ## A004669.P8269704627836647162

`∩[A025616(n+1), A070023(n+1)]`
-/

namespace A004669.P8269704627836647162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004669.P8269704627836647162

namespace A004669

/-- `∩[A025616(n+1), A070023(n+1)]` -/
def P8269704627836647162.Spec : Prop :=
  ∀ n, (P8269704627836647162.a n : ℤ) = A004669 n

end A004669

/-! ## A004669.P14244993428054130825

`∩[A025616(n+1), A249587(n+1)]`
-/

namespace A004669.P14244993428054130825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004669.P14244993428054130825

namespace A004669

/-- `∩[A025616(n+1), A249587(n+1)]` -/
def P14244993428054130825.Spec : Prop :=
  ∀ n, (P14244993428054130825.a n : ℤ) = A004669 n

end A004669

/-! ## A004669.P12042769745452260887

`∩[A025616(n+1), A398453(n+1)]`
-/

namespace A004669.P12042769745452260887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004669.P12042769745452260887

namespace A004669

/-- `∩[A025616(n+1), A398453(n+1)]` -/
def P12042769745452260887.Spec : Prop :=
  ∀ n, (P12042769745452260887.a n : ℤ) = A004669 n

end A004669

/-!
# A004672: Theta series of extremal even unimodular lattice in dimension 48.

The programs for A004672, there is no canonical definition to state claims against.
-/

/-! ## A004672.P16672660095105010294

`A109148(n)*A319719(∑{d}[∏{p}[n+1, #], (n+1)/#])`
-/

namespace A004672.P16672660095105010294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109148 n * A319719 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))).toNat

end

end A004672.P16672660095105010294

/-!
# A004673: Theta series of extremal even unimodular lattice in dimension 56.

The programs for A004673, there is no canonical definition to state claims against.
-/

/-! ## A004673.P12784937979790462659

`A040019(A008430(n))*A109147(n)`
-/

namespace A004673.P12784937979790462659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 (A008430 n).toNat * A109147 n

end

end A004673.P12784937979790462659

/-!
# A004676: Primes written in base 2.

The programs for A004676, the canonical program `A004676.P4552260834261095781` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004676 has offset 1).

The definition of A004676 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004676.P4552260834261095781

`A007088(A000040(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004676

/-- `A007088(A000040(n+1))` -/
def P4552260834261095781.Spec : Prop :=
  ∀ n, P4552260834261095781.a n = A004676 (n + 1)

theorem P4552260834261095781.correct : P4552260834261095781.Spec := by
  intro n
  simp only [A004676, Nat.add_sub_cancel]

end A004676

/-! ## A004676.P11506425891316374571

`A303593(A303595(n+1))`
-/

namespace A004676.P11506425891316374571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303593 (A303595 (n + 1)).toNat

end

end A004676.P11506425891316374571

namespace A004676

/-- `A303593(A303595(n+1))` -/
def P11506425891316374571.Spec : Prop :=
  ∀ n, P11506425891316374571.a n = A004676 (n + 1)

end A004676

/-! ## A004676.P13736640935302595755

`A007088(Δ[A007504(n)])`
-/

namespace A004676.P13736640935302595755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (n + 1) - f1 n).toNat

end

end A004676.P13736640935302595755

namespace A004676

/-- `A007088(Δ[A007504(n)])` -/
def P13736640935302595755.Spec : Prop :=
  ∀ n, P13736640935302595755.a n = A004676 (n + 1)

end A004676

/-! ## A004676.P7907462015614135041

`A007088(A008578(n+2))`
-/

namespace A004676.P7907462015614135041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A008578 (n + 2)).toNat

end

end A004676.P7907462015614135041

namespace A004676

/-- `A007088(A008578(n+2))` -/
def P7907462015614135041.Spec : Prop :=
  ∀ n, P7907462015614135041.a n = A004676 (n + 1)

end A004676

/-! ## A004676.P14114344948182415344

`A007088(A182986(n+2))`
-/

namespace A004676.P14114344948182415344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A182986 (n + 2)).toNat

end

end A004676.P14114344948182415344

namespace A004676

/-- `A007088(A182986(n+2))` -/
def P14114344948182415344.Spec : Prop :=
  ∀ n, P14114344948182415344.a n = A004676 (n + 1)

end A004676

/-! ## A004676.P2281253925128423195

`A007088(record[A075643(n+1)])`
-/

namespace A004676.P2281253925128423195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004676.P2281253925128423195

namespace A004676

/-- `A007088(record[A075643(n+1)])` -/
def P2281253925128423195.Spec : Prop :=
  ∀ n, P2281253925128423195.a n = A004676 (n + 1)

end A004676

/-! ## A004676.P12539930363680097955

`A007088(record[A006530(n+2)])`
-/

namespace A004676.P12539930363680097955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004676.P12539930363680097955

namespace A004676

/-- `A007088(record[A006530(n+2)])` -/
def P12539930363680097955.Spec : Prop :=
  ∀ n, P12539930363680097955.a n = A004676 (n + 1)

end A004676

/-! ## A004676.P17636950165631164785

`A007088(record[A020639(n+2)])`
-/

namespace A004676.P17636950165631164785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004676.P17636950165631164785

namespace A004676

/-- `A007088(record[A020639(n+2)])` -/
def P17636950165631164785.Spec : Prop :=
  ∀ n, P17636950165631164785.a n = A004676 (n + 1)

end A004676

/-! ## A004676.P12663778974437189477

`A007088(A006093(n+1)+1)`
-/

namespace A004676.P12663778974437189477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A006093 (n + 1) + 1).toNat

end

end A004676.P12663778974437189477

namespace A004676

/-- `A007088(A006093(n+1)+1)` -/
def P12663778974437189477.Spec : Prop :=
  ∀ n, P12663778974437189477.a n = A004676 (n + 1)

end A004676

/-! ## A004676.P16403322660139520227

`A007088(A040976(n+1)+2)`
-/

namespace A004676.P16403322660139520227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A040976 (n + 1) + 2).toNat

end

end A004676.P16403322660139520227

namespace A004676

/-- `A007088(A040976(n+1)+2)` -/
def P16403322660139520227.Spec : Prop :=
  ∀ n, P16403322660139520227.a n = A004676 (n + 1)

end A004676

/-! ## A004676.P1509823042939192975

`A007088(A207790(2*(n+1)))`
-/

namespace A004676.P1509823042939192975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A207790 (2 * (n + 1))).toNat

end

end A004676.P1509823042939192975

namespace A004676

/-- `A007088(A207790(2*(n+1)))` -/
def P1509823042939192975.Spec : Prop :=
  ∀ n, P1509823042939192975.a n = A004676 (n + 1)

end A004676

/-! ## A004676.P12876108788784033806

`A007088(A100484(n+1)/2)`
-/

namespace A004676.P12876108788784033806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A004676.P12876108788784033806

namespace A004676

/-- `A007088(A100484(n+1)/2)` -/
def P12876108788784033806.Spec : Prop :=
  ∀ n, P12876108788784033806.a n = A004676 (n + 1)

end A004676

/-! ## A004676.P10027300950878940400

`A007088(record[A000010(n+1)+1])`
-/

namespace A004676.P10027300950878940400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004676.P10027300950878940400

namespace A004676

/-- `A007088(record[A000010(n+1)+1])` -/
def P10027300950878940400.Spec : Prop :=
  ∀ n, P10027300950878940400.a n = A004676 (n + 1)

end A004676

/-! ## A004676.P4313303491179211758

`A007088(eq[1, A001222(n+1)]+1)`
-/

namespace A004676.P4313303491179211758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004676.P4313303491179211758

namespace A004676

/-- `A007088(eq[1, A001222(n+1)]+1)` -/
def P4313303491179211758.Spec : Prop :=
  ∀ n, P4313303491179211758.a n = A004676 (n + 1)

end A004676

/-! ## A004676.P3072543193333330916

`A007088(eq[2, A000005(n+1)]+1)`
-/

namespace A004676.P3072543193333330916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004676.P3072543193333330916

namespace A004676

/-- `A007088(eq[2, A000005(n+1)]+1)` -/
def P3072543193333330916.Spec : Prop :=
  ∀ n, P3072543193333330916.a n = A004676 (n + 1)

end A004676

/-! ## A004676.P7584477281176320301

`A007088(A006530(A100484(n+1)))`
-/

namespace A004676.P7584477281176320301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A006530 (A100484 (n + 1)).toNat).toNat

end

end A004676.P7584477281176320301

namespace A004676

/-- `A007088(A006530(A100484(n+1)))` -/
def P7584477281176320301.Spec : Prop :=
  ∀ n, P7584477281176320301.a n = A004676 (n + 1)

end A004676

/-! ## A004676.P13996830690871041478

`A007088(A007504(n+1)-A007504(n))`
-/

namespace A004676.P13996830690871041478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A007504 (n + 1) - A007504 n).toNat

end

end A004676.P13996830690871041478

namespace A004676

/-- `A007088(A007504(n+1)-A007504(n))` -/
def P13996830690871041478.Spec : Prop :=
  ∀ n, P13996830690871041478.a n = A004676 (n + 1)

end A004676

/-! ## A004676.P5962451403812246435

`record[A097585(n+2)]`
-/

namespace A004676.P5962451403812246435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097585 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004676.P5962451403812246435

namespace A004676

/-- `record[A097585(n+2)]` -/
def P5962451403812246435.Spec : Prop :=
  ∀ n, P5962451403812246435.a n = A004676 (n + 1)

end A004676

/-! ## A004676.P16636077972139173332

`A007088(eq[1, ∑{e}[n, #]])`
-/

namespace A004676.P16636077972139173332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A004676.P16636077972139173332

namespace A004676

/-- `A007088(eq[1, ∑{e}[n, #]])` -/
def P16636077972139173332.Spec : Prop :=
  ∀ n, P16636077972139173332.a n = A004676 (n + 1)

end A004676

/-! ## A004676.P6662968330362354276

`A007088(p?[A014681(n)])`
-/

namespace A004676.P6662968330362354276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A004676.P6662968330362354276

namespace A004676

/-- `A007088(p?[A014681(n)])` -/
def P6662968330362354276.Spec : Prop :=
  ∀ n, P6662968330362354276.a n = A004676 (n + 1)

end A004676

/-!
# A004677: Numerator of 2^n*(3*n-3)!/( ((n-1)!)^3 * (2*n)! ).

The programs for A004677, there is no canonical definition to state claims against.
-/

/-! ## A004677.P3029835369953250097

`A349634(A001764(n)/A000265(n+1))`
-/

namespace A004677.P3029835369953250097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349634 (SequenceMachineLib.roundAway ((A001764 n : ℚ) / (A000265 (n + 1) : ℚ))).toNat

end

end A004677.P3029835369953250097

/-! ## A004677.P4816657903345578860

`A286096(A176230(n))+A093411(A000139(n))`
-/

namespace A004677.P4816657903345578860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286096 (A176230 n).toNat + A093411 (A000139 n).toNat

end

end A004677.P4816657903345578860

/-!
# A004678: Primes written in base 4.

The programs for A004678, the canonical program `A004678.P6275972245920334493` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004678 has offset 1).

The definition of A004678 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004678.P6275972245920334493

`A007090(A000040(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004678

/-- `A007090(A000040(n+1))` -/
def P6275972245920334493.Spec : Prop :=
  ∀ n, P6275972245920334493.a n = A004678 (n + 1)

theorem P6275972245920334493.correct : P6275972245920334493.Spec := by
  intro n
  simp only [A004678, Nat.add_sub_cancel]

end A004678

/-! ## A004678.P10246292752585460962

`A007090(p?[comp[n²]])`
-/

namespace A004678.P10246292752585460962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A004678.P10246292752585460962

namespace A004678

/-- `A007090(p?[comp[n²]])` -/
def P10246292752585460962.Spec : Prop :=
  ∀ n, P10246292752585460962.a n = A004678 (n + 1)

end A004678

/-! ## A004678.P3807117635251168774

`A007090(eq[1, ∑{e}[n, #]])`
-/

namespace A004678.P3807117635251168774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A004678.P3807117635251168774

namespace A004678

/-- `A007090(eq[1, ∑{e}[n, #]])` -/
def P3807117635251168774.Spec : Prop :=
  ∀ n, P3807117635251168774.a n = A004678 (n + 1)

end A004678

/-! ## A004678.P337128316495724149

`A007090(Δ[A007504(n)])`
-/

namespace A004678.P337128316495724149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f1 (n + 1) - f1 n).toNat

end

end A004678.P337128316495724149

namespace A004678

/-- `A007090(Δ[A007504(n)])` -/
def P337128316495724149.Spec : Prop :=
  ∀ n, P337128316495724149.a n = A004678 (n + 1)

end A004678

/-! ## A004678.P14476764094557402108

`A007090(A008578(n+2))`
-/

namespace A004678.P14476764094557402108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A008578 (n + 2)).toNat

end

end A004678.P14476764094557402108

namespace A004678

/-- `A007090(A008578(n+2))` -/
def P14476764094557402108.Spec : Prop :=
  ∀ n, P14476764094557402108.a n = A004678 (n + 1)

end A004678

/-! ## A004678.P1061723053959192568

`A007090(A182986(n+2))`
-/

namespace A004678.P1061723053959192568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A182986 (n + 2)).toNat

end

end A004678.P1061723053959192568

namespace A004678

/-- `A007090(A182986(n+2))` -/
def P1061723053959192568.Spec : Prop :=
  ∀ n, P1061723053959192568.a n = A004678 (n + 1)

end A004678

/-! ## A004678.P14725884044168313338

`A007090(eq[1, A032741(n)])`
-/

namespace A004678.P14725884044168313338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004678.P14725884044168313338

namespace A004678

/-- `A007090(eq[1, A032741(n)])` -/
def P14725884044168313338.Spec : Prop :=
  ∀ n, P14725884044168313338.a n = A004678 (n + 1)

end A004678

/-! ## A004678.P6355922093764869370

`A007090(eq[1, A105700(n)])`
-/

namespace A004678.P6355922093764869370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004678.P6355922093764869370

namespace A004678

/-- `A007090(eq[1, A105700(n)])` -/
def P6355922093764869370.Spec : Prop :=
  ∀ n, P6355922093764869370.a n = A004678 (n + 1)

end A004678

/-! ## A004678.P936816521594124370

`A007090(eq[1, A328847(n)])`
-/

namespace A004678.P936816521594124370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004678.P936816521594124370

namespace A004678

/-- `A007090(eq[1, A328847(n)])` -/
def P936816521594124370.Spec : Prop :=
  ∀ n, P936816521594124370.a n = A004678 (n + 1)

end A004678

/-! ## A004678.P15443040234057313650

`A007090(lt[n, A103164(n)])`
-/

namespace A004678.P15443040234057313650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A004678.P15443040234057313650

namespace A004678

/-- `A007090(lt[n, A103164(n)])` -/
def P15443040234057313650.Spec : Prop :=
  ∀ n, P15443040234057313650.a n = A004678 (n + 1)

end A004678

/-! ## A004678.P10752885583779386310

`A007090(record[A006530(n+2)])`
-/

namespace A004678.P10752885583779386310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004678.P10752885583779386310

namespace A004678

/-- `A007090(record[A006530(n+2)])` -/
def P10752885583779386310.Spec : Prop :=
  ∀ n, P10752885583779386310.a n = A004678 (n + 1)

end A004678

/-! ## A004678.P6833566231301305552

`A007090(record[A014963(n+2)])`
-/

namespace A004678.P6833566231301305552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004678.P6833566231301305552

namespace A004678

/-- `A007090(record[A014963(n+2)])` -/
def P6833566231301305552.Spec : Prop :=
  ∀ n, P6833566231301305552.a n = A004678 (n + 1)

end A004678

/-! ## A004678.P10252108788220758283

`A007090(record[A020639(n+2)])`
-/

namespace A004678.P10252108788220758283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004678.P10252108788220758283

namespace A004678

/-- `A007090(record[A020639(n+2)])` -/
def P10252108788220758283.Spec : Prop :=
  ∀ n, P10252108788220758283.a n = A004678 (n + 1)

end A004678

/-! ## A004678.P1695076820234149910

`A007090(A006093(n+1)+1)`
-/

namespace A004678.P1695076820234149910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A006093 (n + 1) + 1).toNat

end

end A004678.P1695076820234149910

namespace A004678

/-- `A007090(A006093(n+1)+1)` -/
def P1695076820234149910.Spec : Prop :=
  ∀ n, P1695076820234149910.a n = A004678 (n + 1)

end A004678

/-! ## A004678.P8540069212751928017

`A007090(A209259(2*n+1))`
-/

namespace A004678.P8540069212751928017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A209259 (2 * n + 1)).toNat

end

end A004678.P8540069212751928017

namespace A004678

/-- `A007090(A209259(2*n+1))` -/
def P8540069212751928017.Spec : Prop :=
  ∀ n, P8540069212751928017.a n = A004678 (n + 1)

end A004678

/-! ## A004678.P30700020973547248

`A007090(eq[1, A001222(n+1)]+1)`
-/

namespace A004678.P30700020973547248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004678.P30700020973547248

namespace A004678

/-- `A007090(eq[1, A001222(n+1)]+1)` -/
def P30700020973547248.Spec : Prop :=
  ∀ n, P30700020973547248.a n = A004678 (n + 1)

end A004678

/-! ## A004678.P16291318270158472456

`A007090(A163293(n+1)+A035100(n+1))`
-/

namespace A004678.P16291318270158472456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A163293 (n + 1) + A035100 (n + 1)).toNat

end

end A004678.P16291318270158472456

namespace A004678

/-- `A007090(A163293(n+1)+A035100(n+1))` -/
def P16291318270158472456.Spec : Prop :=
  ∀ n, P16291318270158472456.a n = A004678 (n + 1)

end A004678

/-! ## A004678.P14862708504569898268

`A007090(A163292(n+1)+A163291(n+1))`
-/

namespace A004678.P14862708504569898268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A163292 (n + 1) + A163291 (n + 1)).toNat

end

end A004678.P14862708504569898268

namespace A004678

/-- `A007090(A163292(n+1)+A163291(n+1))` -/
def P14862708504569898268.Spec : Prop :=
  ∀ n, P14862708504569898268.a n = A004678 (n + 1)

end A004678

/-! ## A004678.P13701034577029124885

`A007090(lt[1, A105700(2*n)])`
-/

namespace A004678.P13701034577029124885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A004678.P13701034577029124885

namespace A004678

/-- `A007090(lt[1, A105700(2*n)])` -/
def P13701034577029124885.Spec : Prop :=
  ∀ n, P13701034577029124885.a n = A004678 (n + 1)

end A004678

/-! ## A004678.P2274734500616978222

`A007090(eq[2, A226378(2*n)])`
-/

namespace A004678.P2274734500616978222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004678.P2274734500616978222

namespace A004678

/-- `A007090(eq[2, A226378(2*n)])` -/
def P2274734500616978222.Spec : Prop :=
  ∀ n, P2274734500616978222.a n = A004678 (n + 1)

end A004678

/-!
# A004679: Primes written in base 5.

The programs for A004679, the canonical program `A004679.P10561121472635893882` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004679 has offset 1).

The definition of A004679 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004679.P10561121472635893882

`A007091(A000040(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004679

/-- `A007091(A000040(n+1))` -/
def P10561121472635893882.Spec : Prop :=
  ∀ n, P10561121472635893882.a n = A004679 (n + 1)

theorem P10561121472635893882.correct : P10561121472635893882.Spec := by
  intro n
  simp only [A004679, Nat.add_sub_cancel]

end A004679

/-! ## A004679.P2498098222454696024

`A007091(p?[comp[n²]])`
-/

namespace A004679.P2498098222454696024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A004679.P2498098222454696024

namespace A004679

/-- `A007091(p?[comp[n²]])` -/
def P2498098222454696024.Spec : Prop :=
  ∀ n, P2498098222454696024.a n = A004679 (n + 1)

end A004679

/-! ## A004679.P8296976225931903815

`A007091(Δ[A007504(n)])`
-/

namespace A004679.P8296976225931903815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (f1 (n + 1) - f1 n).toNat

end

end A004679.P8296976225931903815

namespace A004679

/-- `A007091(Δ[A007504(n)])` -/
def P8296976225931903815.Spec : Prop :=
  ∀ n, P8296976225931903815.a n = A004679 (n + 1)

end A004679

/-! ## A004679.P9801621632250738953

`A007091(A008578(n+2))`
-/

namespace A004679.P9801621632250738953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A008578 (n + 2)).toNat

end

end A004679.P9801621632250738953

namespace A004679

/-- `A007091(A008578(n+2))` -/
def P9801621632250738953.Spec : Prop :=
  ∀ n, P9801621632250738953.a n = A004679 (n + 1)

end A004679

/-! ## A004679.P3322987429925346883

`A007091(A182986(n+2))`
-/

namespace A004679.P3322987429925346883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A182986 (n + 2)).toNat

end

end A004679.P3322987429925346883

namespace A004679

/-- `A007091(A182986(n+2))` -/
def P3322987429925346883.Spec : Prop :=
  ∀ n, P3322987429925346883.a n = A004679 (n + 1)

end A004679

/-! ## A004679.P590375521208252173

`A007091(eq[1, A003415(n)])`
-/

namespace A004679.P590375521208252173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004679.P590375521208252173

namespace A004679

/-- `A007091(eq[1, A003415(n)])` -/
def P590375521208252173.Spec : Prop :=
  ∀ n, P590375521208252173.a n = A004679 (n + 1)

end A004679

/-! ## A004679.P17945731321723895529

`A007091(eq[1, A105700(n)])`
-/

namespace A004679.P17945731321723895529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004679.P17945731321723895529

namespace A004679

/-- `A007091(eq[1, A105700(n)])` -/
def P17945731321723895529.Spec : Prop :=
  ∀ n, P17945731321723895529.a n = A004679 (n + 1)

end A004679

/-! ## A004679.P302047638999521288

`A007091(eq[1, A175126(n)])`
-/

namespace A004679.P302047638999521288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004679.P302047638999521288

namespace A004679

/-- `A007091(eq[1, A175126(n)])` -/
def P302047638999521288.Spec : Prop :=
  ∀ n, P302047638999521288.a n = A004679 (n + 1)

end A004679

/-! ## A004679.P5695195000332393704

`A007091(sqrt(A001248(n+1)))`
-/

namespace A004679.P5695195000332393704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A004679.P5695195000332393704

namespace A004679

/-- `A007091(sqrt(A001248(n+1)))` -/
def P5695195000332393704.Spec : Prop :=
  ∀ n, P5695195000332393704.a n = A004679 (n + 1)

end A004679

/-! ## A004679.P7241704766823001320

`A007091(record[A006530(n+2)])`
-/

namespace A004679.P7241704766823001320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004679.P7241704766823001320

namespace A004679

/-- `A007091(record[A006530(n+2)])` -/
def P7241704766823001320.Spec : Prop :=
  ∀ n, P7241704766823001320.a n = A004679 (n + 1)

end A004679

/-! ## A004679.P695407387464537438

`A007091(record[A014963(n+2)])`
-/

namespace A004679.P695407387464537438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004679.P695407387464537438

namespace A004679

/-- `A007091(record[A014963(n+2)])` -/
def P695407387464537438.Spec : Prop :=
  ∀ n, P695407387464537438.a n = A004679 (n + 1)

end A004679

/-! ## A004679.P14976003935902139587

`A007091(record[A020639(n+2)])`
-/

namespace A004679.P14976003935902139587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004679.P14976003935902139587

namespace A004679

/-- `A007091(record[A020639(n+2)])` -/
def P14976003935902139587.Spec : Prop :=
  ∀ n, P14976003935902139587.a n = A004679 (n + 1)

end A004679

/-! ## A004679.P15829059275907095809

`A007091(A006093(n+1)+1)`
-/

namespace A004679.P15829059275907095809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A006093 (n + 1) + 1).toNat

end

end A004679.P15829059275907095809

namespace A004679

/-- `A007091(A006093(n+1)+1)` -/
def P15829059275907095809.Spec : Prop :=
  ∀ n, P15829059275907095809.a n = A004679 (n + 1)

end A004679

/-! ## A004679.P11864734311390828357

`A007091(A001747(n+2)/2)`
-/

namespace A004679.P11864734311390828357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A004679.P11864734311390828357

namespace A004679

/-- `A007091(A001747(n+2)/2)` -/
def P11864734311390828357.Spec : Prop :=
  ∀ n, P11864734311390828357.a n = A004679 (n + 1)

end A004679

/-! ## A004679.P16985670675511157443

`A014263(A000040(n+1)+1)/2`
-/

namespace A004679.P16985670675511157443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014263 (A000040 (n + 1) + 1).toNat : ℚ) / 2

end

end A004679.P16985670675511157443

namespace A004679

/-- `A014263(A000040(n+1)+1)/2` -/
def P16985670675511157443.Spec : Prop :=
  ∀ n, P16985670675511157443.a n = (A004679 (n + 1) : ℚ)

end A004679

/-! ## A004679.P16900276008629385957

`A007091(eq[1, A001222(n+1)]+1)`
-/

namespace A004679.P16900276008629385957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004679.P16900276008629385957

namespace A004679

/-- `A007091(eq[1, A001222(n+1)]+1)` -/
def P16900276008629385957.Spec : Prop :=
  ∀ n, P16900276008629385957.a n = A004679 (n + 1)

end A004679

/-! ## A004679.P4104546876430138459

`A007091(eq[A060576(n), A107463(n)])`
-/

namespace A004679.P4104546876430138459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A004679.P4104546876430138459

namespace A004679

/-- `A007091(eq[A060576(n), A107463(n)])` -/
def P4104546876430138459.Spec : Prop :=
  ∀ n, P4104546876430138459.a n = A004679 (n + 1)

end A004679

/-! ## A004679.P18302935081655807104

`A024657(A100484(n+1))/2`
-/

namespace A004679.P18302935081655807104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024657 (A100484 (n + 1)).toNat : ℚ) / 2

end

end A004679.P18302935081655807104

namespace A004679

/-- `A024657(A100484(n+1))/2` -/
def P18302935081655807104.Spec : Prop :=
  ∀ n, P18302935081655807104.a n = (A004679 (n + 1) : ℚ)

end A004679

/-! ## A004679.P3833299926453893162

`A007091(lt[1, A105700(2*n)])`
-/

namespace A004679.P3833299926453893162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A004679.P3833299926453893162

namespace A004679

/-- `A007091(lt[1, A105700(2*n)])` -/
def P3833299926453893162.Spec : Prop :=
  ∀ n, P3833299926453893162.a n = A004679 (n + 1)

end A004679

/-! ## A004679.P9418655329043725611

`A007091(eq[2, A226378(2*n)])`
-/

namespace A004679.P9418655329043725611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004679.P9418655329043725611

namespace A004679

/-- `A007091(eq[2, A226378(2*n)])` -/
def P9418655329043725611.Spec : Prop :=
  ∀ n, P9418655329043725611.a n = A004679 (n + 1)

end A004679

/-!
# A004680: Primes written in base 6.

The programs for A004680, there is no canonical definition to state claims against.
-/

/-! ## A004680.P13261552545032544534

`A007092(p?[comp[n²]])`
-/

namespace A004680.P13261552545032544534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A004680.P13261552545032544534

/-! ## A004680.P8566841385136048951

`A007092(eq[1, ∑{e}[n, #]])`
-/

namespace A004680.P8566841385136048951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A004680.P8566841385136048951

/-! ## A004680.P394488493284766549

`A007092(record[p?[∏{p}[n+1, #]]])`
-/

namespace A004680.P394488493284766549
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A004680.P394488493284766549

/-! ## A004680.P8422676762147248958

`A007092(Δ[A007504(n)])`
-/

namespace A004680.P8422676762147248958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (n + 1) - f1 n).toNat

end

end A004680.P8422676762147248958

/-! ## A004680.P14848683094212393350

`A007092(A000040(n+1))`
-/

namespace A004680.P14848683094212393350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A000040 (n + 1)).toNat

end

end A004680.P14848683094212393350

/-! ## A004680.P10923303861652315029

`A007092(A008578(n+2))`
-/

namespace A004680.P10923303861652315029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A008578 (n + 2)).toNat

end

end A004680.P10923303861652315029

/-! ## A004680.P4278113773714289376

`A007092(A182986(n+2))`
-/

namespace A004680.P4278113773714289376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A182986 (n + 2)).toNat

end

end A004680.P4278113773714289376

/-! ## A004680.P9257597724922732847

`A007092(eq[0, A007920(n)])`
-/

namespace A004680.P9257597724922732847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004680.P9257597724922732847

/-! ## A004680.P6462756357408311655

`A007092(eq[1, A032741(n)])`
-/

namespace A004680.P6462756357408311655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004680.P6462756357408311655

/-! ## A004680.P18436414645854634037

`A007092(eq[1, A105700(n)])`
-/

namespace A004680.P18436414645854634037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004680.P18436414645854634037

/-! ## A004680.P5082422352561905133

`A007092(eq[1, A175126(n)])`
-/

namespace A004680.P5082422352561905133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004680.P5082422352561905133

/-! ## A004680.P8700638976776646905

`A007092(sqrt(A001248(n+1)))`
-/

namespace A004680.P8700638976776646905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A004680.P8700638976776646905

/-! ## A004680.P11606857855842734607

`A007092(record[A006530(n+2)])`
-/

namespace A004680.P11606857855842734607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004680.P11606857855842734607

/-! ## A004680.P2935238024125044046

`A007092(record[A014963(n+2)])`
-/

namespace A004680.P2935238024125044046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004680.P2935238024125044046

/-! ## A004680.P14023479299531787558

`A007092(record[A020639(n+2)])`
-/

namespace A004680.P14023479299531787558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004680.P14023479299531787558

/-! ## A004680.P5087361550727003805

`A007092(A006093(n+1)+1)`
-/

namespace A004680.P5087361550727003805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A006093 (n + 1) + 1).toNat

end

end A004680.P5087361550727003805

/-! ## A004680.P11140012838373382479

`A007092(A040976(n+1)+2)`
-/

namespace A004680.P11140012838373382479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A040976 (n + 1) + 2).toNat

end

end A004680.P11140012838373382479

/-! ## A004680.P5353148729799246316

`A007092(A052147(n+1)-2)`
-/

namespace A004680.P5353148729799246316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A052147 (n + 1) - 2).toNat

end

end A004680.P5353148729799246316

/-! ## A004680.P3659730410113935011

`A007092(A209259(2*n+1))`
-/

namespace A004680.P3659730410113935011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A209259 (2 * n + 1)).toNat

end

end A004680.P3659730410113935011

/-! ## A004680.P4315893369263852790

`A007092(eq[1, A001222(n+1)]+1)`
-/

namespace A004680.P4315893369263852790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004680.P4315893369263852790

/-!
# A004681: Primes written in base 7.

The programs for A004681, the canonical program `A004681.P13437568865808830214` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004681 has offset 1).

The definition of A004681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004681.P18350360706304016741

`A007093(p?[comp[n²]])`
-/

namespace A004681.P18350360706304016741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A004681.P18350360706304016741

namespace A004681

/-- `A007093(p?[comp[n²]])` -/
def P18350360706304016741.Spec : Prop :=
  ∀ n, P18350360706304016741.a n = A004681 (n + 1)

end A004681

/-! ## A004681.P13437568865808830214

`A007093(eq[1, ∑{e}[n, #]])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A004681

/-- `A007093(eq[1, ∑{e}[n, #]])` -/
def P13437568865808830214.Spec : Prop :=
  ∀ n, P13437568865808830214.a n = A004681 (n + 1)

theorem P13437568865808830214.correct : P13437568865808830214.Spec := by
  intro n
  simp only [A004681, Nat.add_sub_cancel]

end A004681

/-! ## A004681.P8489974645979620861

`A007093(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])`
-/

namespace A004681.P8489974645979620861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A004681.P8489974645979620861

namespace A004681

/-- `A007093(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])` -/
def P8489974645979620861.Spec : Prop :=
  ∀ n, P8489974645979620861.a n = A004681 (n + 1)

end A004681

/-! ## A004681.P14027166083129231323

`A007093(Δ[A007504(n)])`
-/

namespace A004681.P14027166083129231323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (f1 (n + 1) - f1 n).toNat

end

end A004681.P14027166083129231323

namespace A004681

/-- `A007093(Δ[A007504(n)])` -/
def P14027166083129231323.Spec : Prop :=
  ∀ n, P14027166083129231323.a n = A004681 (n + 1)

end A004681

/-! ## A004681.P1870337461365690406

`A007093(record[A162753(n)])`
-/

namespace A004681.P1870337461365690406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004681.P1870337461365690406

namespace A004681

/-- `A007093(record[A162753(n)])` -/
def P1870337461365690406.Spec : Prop :=
  ∀ n, P1870337461365690406.a n = A004681 (n + 1)

end A004681

/-! ## A004681.P6543521190367065348

`A007093(A000040(n+1))`
-/

namespace A004681.P6543521190367065348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A000040 (n + 1)).toNat

end

end A004681.P6543521190367065348

namespace A004681

/-- `A007093(A000040(n+1))` -/
def P6543521190367065348.Spec : Prop :=
  ∀ n, P6543521190367065348.a n = A004681 (n + 1)

end A004681

/-! ## A004681.P17436104091523143794

`A007093(A008578(n+2))`
-/

namespace A004681.P17436104091523143794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A008578 (n + 2)).toNat

end

end A004681.P17436104091523143794

namespace A004681

/-- `A007093(A008578(n+2))` -/
def P17436104091523143794.Spec : Prop :=
  ∀ n, P17436104091523143794.a n = A004681 (n + 1)

end A004681

/-! ## A004681.P15504794998206381446

`A007093(A182986(n+2))`
-/

namespace A004681.P15504794998206381446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A182986 (n + 2)).toNat

end

end A004681.P15504794998206381446

namespace A004681

/-- `A007093(A182986(n+2))` -/
def P15504794998206381446.Spec : Prop :=
  ∀ n, P15504794998206381446.a n = A004681 (n + 1)

end A004681

/-! ## A004681.P17167786803639866666

`A007093(eq[1, A105700(n)])`
-/

namespace A004681.P17167786803639866666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004681.P17167786803639866666

namespace A004681

/-- `A007093(eq[1, A105700(n)])` -/
def P17167786803639866666.Spec : Prop :=
  ∀ n, P17167786803639866666.a n = A004681 (n + 1)

end A004681

/-! ## A004681.P13858521409347111027

`A007093(eq[1, A328847(n)])`
-/

namespace A004681.P13858521409347111027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004681.P13858521409347111027

namespace A004681

/-- `A007093(eq[1, A328847(n)])` -/
def P13858521409347111027.Spec : Prop :=
  ∀ n, P13858521409347111027.a n = A004681 (n + 1)

end A004681

/-! ## A004681.P12374256063139322969

`A007093(record[A006530(n+2)])`
-/

namespace A004681.P12374256063139322969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004681.P12374256063139322969

namespace A004681

/-- `A007093(record[A006530(n+2)])` -/
def P12374256063139322969.Spec : Prop :=
  ∀ n, P12374256063139322969.a n = A004681 (n + 1)

end A004681

/-! ## A004681.P703242940113185827

`A007093(record[A014963(n+2)])`
-/

namespace A004681.P703242940113185827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004681.P703242940113185827

namespace A004681

/-- `A007093(record[A014963(n+2)])` -/
def P703242940113185827.Spec : Prop :=
  ∀ n, P703242940113185827.a n = A004681 (n + 1)

end A004681

/-! ## A004681.P2278213014783413822

`A007093(record[A020639(n+2)])`
-/

namespace A004681.P2278213014783413822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004681.P2278213014783413822

namespace A004681

/-- `A007093(record[A020639(n+2)])` -/
def P2278213014783413822.Spec : Prop :=
  ∀ n, P2278213014783413822.a n = A004681 (n + 1)

end A004681

/-! ## A004681.P17273217554504877727

`A007093(A006093(n+1)+1)`
-/

namespace A004681.P17273217554504877727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A006093 (n + 1) + 1).toNat

end

end A004681.P17273217554504877727

namespace A004681

/-- `A007093(A006093(n+1)+1)` -/
def P17273217554504877727.Spec : Prop :=
  ∀ n, P17273217554504877727.a n = A004681 (n + 1)

end A004681

/-! ## A004681.P10988548671401536734

`A007093(A008864(n+1)-1)`
-/

namespace A004681.P10988548671401536734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A008864 (n + 1) - 1).toNat

end

end A004681.P10988548671401536734

namespace A004681

/-- `A007093(A008864(n+1)-1)` -/
def P10988548671401536734.Spec : Prop :=
  ∀ n, P10988548671401536734.a n = A004681 (n + 1)

end A004681

/-! ## A004681.P3838415075952053927

`A007093(eq[1, A001222(n+1)]+1)`
-/

namespace A004681.P3838415075952053927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004681.P3838415075952053927

namespace A004681

/-- `A007093(eq[1, A001222(n+1)]+1)` -/
def P3838415075952053927.Spec : Prop :=
  ∀ n, P3838415075952053927.a n = A004681 (n + 1)

end A004681

/-! ## A004681.P4466996887942653218

`A007093(eq[2, A000005(n+1)]+1)`
-/

namespace A004681.P4466996887942653218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004681.P4466996887942653218

namespace A004681

/-- `A007093(eq[2, A000005(n+1)]+1)` -/
def P4466996887942653218.Spec : Prop :=
  ∀ n, P4466996887942653218.a n = A004681 (n + 1)

end A004681

/-! ## A004681.P6325431770450095557

`A007093(eq[n, A000010(n+1)]+1)`
-/

namespace A004681.P6325431770450095557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004681.P6325431770450095557

namespace A004681

/-- `A007093(eq[n, A000010(n+1)]+1)` -/
def P6325431770450095557.Spec : Prop :=
  ∀ n, P6325431770450095557.a n = A004681 (n + 1)

end A004681

/-! ## A004681.P4535056147945690757

`A007093(lt[1, A105700(2*n)])`
-/

namespace A004681.P4535056147945690757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A004681.P4535056147945690757

namespace A004681

/-- `A007093(lt[1, A105700(2*n)])` -/
def P4535056147945690757.Spec : Prop :=
  ∀ n, P4535056147945690757.a n = A004681 (n + 1)

end A004681

/-!
# A004682: Primes written in base 8.

The programs for A004682, the canonical program `A004682.P15892170561098935702` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004682 has offset 1).

The definition of A004682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004682.P1211822087804506318

`A007094(p?[comp[n²]])`
-/

namespace A004682.P1211822087804506318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A004682.P1211822087804506318

namespace A004682

/-- `A007094(p?[comp[n²]])` -/
def P1211822087804506318.Spec : Prop :=
  ∀ n, P1211822087804506318.a n = A004682 (n + 1)

end A004682

/-! ## A004682.P3143488224761392144

`A007094(Δ[A007504(n)])`
-/

namespace A004682.P3143488224761392144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (f1 (n + 1) - f1 n).toNat

end

end A004682.P3143488224761392144

namespace A004682

/-- `A007094(Δ[A007504(n)])` -/
def P3143488224761392144.Spec : Prop :=
  ∀ n, P3143488224761392144.a n = A004682 (n + 1)

end A004682

/-! ## A004682.P15892170561098935702

`A007094(A000040(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004682

/-- `A007094(A000040(n+1))` -/
def P15892170561098935702.Spec : Prop :=
  ∀ n, P15892170561098935702.a n = A004682 (n + 1)

theorem P15892170561098935702.correct : P15892170561098935702.Spec := by
  intro n
  simp only [A004682, Nat.add_sub_cancel]

end A004682

/-! ## A004682.P15284243217652847453

`A007094(A008578(n+2))`
-/

namespace A004682.P15284243217652847453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A008578 (n + 2)).toNat

end

end A004682.P15284243217652847453

namespace A004682

/-- `A007094(A008578(n+2))` -/
def P15284243217652847453.Spec : Prop :=
  ∀ n, P15284243217652847453.a n = A004682 (n + 1)

end A004682

/-! ## A004682.P9914217018334292370

`A007094(A182986(n+2))`
-/

namespace A004682.P9914217018334292370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A182986 (n + 2)).toNat

end

end A004682.P9914217018334292370

namespace A004682

/-- `A007094(A182986(n+2))` -/
def P9914217018334292370.Spec : Prop :=
  ∀ n, P9914217018334292370.a n = A004682 (n + 1)

end A004682

/-! ## A004682.P13254446235411526431

`A007094(eq[0, A007920(n)])`
-/

namespace A004682.P13254446235411526431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004682.P13254446235411526431

namespace A004682

/-- `A007094(eq[0, A007920(n)])` -/
def P13254446235411526431.Spec : Prop :=
  ∀ n, P13254446235411526431.a n = A004682 (n + 1)

end A004682

/-! ## A004682.P16647655547456881385

`A007094(eq[1, A003415(n)])`
-/

namespace A004682.P16647655547456881385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004682.P16647655547456881385

namespace A004682

/-- `A007094(eq[1, A003415(n)])` -/
def P16647655547456881385.Spec : Prop :=
  ∀ n, P16647655547456881385.a n = A004682 (n + 1)

end A004682

/-! ## A004682.P13011335882775152956

`A007094(eq[1, A032741(n)])`
-/

namespace A004682.P13011335882775152956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004682.P13011335882775152956

namespace A004682

/-- `A007094(eq[1, A032741(n)])` -/
def P13011335882775152956.Spec : Prop :=
  ∀ n, P13011335882775152956.a n = A004682 (n + 1)

end A004682

/-! ## A004682.P7096641290358067815

`A007094(eq[1, A105700(n)])`
-/

namespace A004682.P7096641290358067815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004682.P7096641290358067815

namespace A004682

/-- `A007094(eq[1, A105700(n)])` -/
def P7096641290358067815.Spec : Prop :=
  ∀ n, P7096641290358067815.a n = A004682 (n + 1)

end A004682

/-! ## A004682.P6341457436691870438

`A007094(eq[2, A077462(n)])`
-/

namespace A004682.P6341457436691870438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004682.P6341457436691870438

namespace A004682

/-- `A007094(eq[2, A077462(n)])` -/
def P6341457436691870438.Spec : Prop :=
  ∀ n, P6341457436691870438.a n = A004682 (n + 1)

end A004682

/-! ## A004682.P5646181610798920486

`A007094(record[A093074(n+1)])`
-/

namespace A004682.P5646181610798920486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004682.P5646181610798920486

namespace A004682

/-- `A007094(record[A093074(n+1)])` -/
def P5646181610798920486.Spec : Prop :=
  ∀ n, P5646181610798920486.a n = A004682 (n + 1)

end A004682

/-! ## A004682.P10648269015134472655

`A007094(record[A006530(n+2)])`
-/

namespace A004682.P10648269015134472655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004682.P10648269015134472655

namespace A004682

/-- `A007094(record[A006530(n+2)])` -/
def P10648269015134472655.Spec : Prop :=
  ∀ n, P10648269015134472655.a n = A004682 (n + 1)

end A004682

/-! ## A004682.P15341648659463685997

`A007094(record[A014963(n+2)])`
-/

namespace A004682.P15341648659463685997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004682.P15341648659463685997

namespace A004682

/-- `A007094(record[A014963(n+2)])` -/
def P15341648659463685997.Spec : Prop :=
  ∀ n, P15341648659463685997.a n = A004682 (n + 1)

end A004682

/-! ## A004682.P2587078045843517685

`A007094(record[A020639(n+2)])`
-/

namespace A004682.P2587078045843517685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004682.P2587078045843517685

namespace A004682

/-- `A007094(record[A020639(n+2)])` -/
def P2587078045843517685.Spec : Prop :=
  ∀ n, P2587078045843517685.a n = A004682 (n + 1)

end A004682

/-! ## A004682.P12164270488681384456

`A007094(record[p?[A004151(n+1)]])`
-/

namespace A004682.P12164270488681384456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004682.P12164270488681384456

namespace A004682

/-- `A007094(record[p?[A004151(n+1)]])` -/
def P12164270488681384456.Spec : Prop :=
  ∀ n, P12164270488681384456.a n = A004682 (n + 1)

end A004682

/-! ## A004682.P18366512183665423289

`A007094(eq[1, A001222(n+1)]+1)`
-/

namespace A004682.P18366512183665423289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004682.P18366512183665423289

namespace A004682

/-- `A007094(eq[1, A001222(n+1)]+1)` -/
def P18366512183665423289.Spec : Prop :=
  ∀ n, P18366512183665423289.a n = A004682 (n + 1)

end A004682

/-! ## A004682.P10716525807333149584

`A007094(eq[2, A000005(n+1)]+1)`
-/

namespace A004682.P10716525807333149584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004682.P10716525807333149584

namespace A004682

/-- `A007094(eq[2, A000005(n+1)]+1)` -/
def P10716525807333149584.Spec : Prop :=
  ∀ n, P10716525807333149584.a n = A004682 (n + 1)

end A004682

/-! ## A004682.P16580183956632302149

`A007094(eq[n, A000010(n+1)]+1)`
-/

namespace A004682.P16580183956632302149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004682.P16580183956632302149

namespace A004682

/-- `A007094(eq[n, A000010(n+1)]+1)` -/
def P16580183956632302149.Spec : Prop :=
  ∀ n, P16580183956632302149.a n = A004682 (n + 1)

end A004682

/-! ## A004682.P5313799856607820540

`A007094(∏{d}[A000040(Δ[n²]-n), #])`
-/

namespace A004682.P5313799856607820540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A004682.P5313799856607820540

namespace A004682

/-- `A007094(∏{d}[A000040(Δ[n²]-n), #])` -/
def P5313799856607820540.Spec : Prop :=
  ∀ n, P5313799856607820540.a n = A004682 (n + 1)

end A004682

/-! ## A004682.P10091678094868114205

`A007094(eq[A072480(n)², A035444(n)])`
-/

namespace A004682.P10091678094868114205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A004682.P10091678094868114205

namespace A004682

/-- `A007094(eq[A072480(n)², A035444(n)])` -/
def P10091678094868114205.Spec : Prop :=
  ∀ n, P10091678094868114205.a n = A004682 (n + 1)

end A004682

/-!
# A004683: Primes written in base 9.

The programs for A004683, the canonical program `A004683.P11169989558280829634` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004683 has offset 1).

The definition of A004683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004683.P11169989558280829634

`A007095(eq[1, ∑{e}[n, #]])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004683

/-- `A007095(eq[1, ∑{e}[n, #]])` -/
def P11169989558280829634.Spec : Prop :=
  ∀ n, P11169989558280829634.a n = A004683 (n + 1)

theorem P11169989558280829634.correct : P11169989558280829634.Spec := by
  intro n
  simp only [A004683, Nat.add_sub_cancel]

end A004683

/-! ## A004683.P13080473162534270106

`A007095(Δ[A007504(n)])`
-/

namespace A004683.P13080473162534270106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (f1 (n + 1) - f1 n).toNat

end

end A004683.P13080473162534270106

namespace A004683

/-- `A007095(Δ[A007504(n)])` -/
def P13080473162534270106.Spec : Prop :=
  ∀ n, P13080473162534270106.a n = A004683 (n + 1)

end A004683

/-! ## A004683.P5785058996088547005

`A007095(A000040(n+1))`
-/

namespace A004683.P5785058996088547005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A000040 (n + 1)).toNat

end

end A004683.P5785058996088547005

namespace A004683

/-- `A007095(A000040(n+1))` -/
def P5785058996088547005.Spec : Prop :=
  ∀ n, P5785058996088547005.a n = A004683 (n + 1)

end A004683

/-! ## A004683.P14541766014584581865

`A007095(A008578(n+2))`
-/

namespace A004683.P14541766014584581865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A008578 (n + 2)).toNat

end

end A004683.P14541766014584581865

namespace A004683

/-- `A007095(A008578(n+2))` -/
def P14541766014584581865.Spec : Prop :=
  ∀ n, P14541766014584581865.a n = A004683 (n + 1)

end A004683

/-! ## A004683.P17037878260930248643

`A007095(A182986(n+2))`
-/

namespace A004683.P17037878260930248643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A182986 (n + 2)).toNat

end

end A004683.P17037878260930248643

namespace A004683

/-- `A007095(A182986(n+2))` -/
def P17037878260930248643.Spec : Prop :=
  ∀ n, P17037878260930248643.a n = A004683 (n + 1)

end A004683

/-! ## A004683.P14872404755008133069

`A007095(eq[0, A007920(n)])`
-/

namespace A004683.P14872404755008133069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004683.P14872404755008133069

namespace A004683

/-- `A007095(eq[0, A007920(n)])` -/
def P14872404755008133069.Spec : Prop :=
  ∀ n, P14872404755008133069.a n = A004683 (n + 1)

end A004683

/-! ## A004683.P1367097809559023101

`A007095(eq[0, A051699(n)])`
-/

namespace A004683.P1367097809559023101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004683.P1367097809559023101

namespace A004683

/-- `A007095(eq[0, A051699(n)])` -/
def P1367097809559023101.Spec : Prop :=
  ∀ n, P1367097809559023101.a n = A004683 (n + 1)

end A004683

/-! ## A004683.P15614125927245918740

`A007095(eq[1, A003415(n)])`
-/

namespace A004683.P15614125927245918740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004683.P15614125927245918740

namespace A004683

/-- `A007095(eq[1, A003415(n)])` -/
def P15614125927245918740.Spec : Prop :=
  ∀ n, P15614125927245918740.a n = A004683 (n + 1)

end A004683

/-! ## A004683.P2234991229035371093

`A007095(eq[1, A018783(n)])`
-/

namespace A004683.P2234991229035371093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004683.P2234991229035371093

namespace A004683

/-- `A007095(eq[1, A018783(n)])` -/
def P2234991229035371093.Spec : Prop :=
  ∀ n, P2234991229035371093.a n = A004683 (n + 1)

end A004683

/-! ## A004683.P914739114065372102

`A007095(eq[1, A032741(n)])`
-/

namespace A004683.P914739114065372102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004683.P914739114065372102

namespace A004683

/-- `A007095(eq[1, A032741(n)])` -/
def P914739114065372102.Spec : Prop :=
  ∀ n, P914739114065372102.a n = A004683 (n + 1)

end A004683

/-! ## A004683.P1957465927617160897

`A007095(eq[1, A105700(n)])`
-/

namespace A004683.P1957465927617160897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004683.P1957465927617160897

namespace A004683

/-- `A007095(eq[1, A105700(n)])` -/
def P1957465927617160897.Spec : Prop :=
  ∀ n, P1957465927617160897.a n = A004683 (n + 1)

end A004683

/-! ## A004683.P6097965809424139326

`A007095(eq[2, A077982(n)])`
-/

namespace A004683.P6097965809424139326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004683.P6097965809424139326

namespace A004683

/-- `A007095(eq[2, A077982(n)])` -/
def P6097965809424139326.Spec : Prop :=
  ∀ n, P6097965809424139326.a n = A004683 (n + 1)

end A004683

/-! ## A004683.P14470286549972861015

`A007095(sqrt(A001248(n+1)))`
-/

namespace A004683.P14470286549972861015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A004683.P14470286549972861015

namespace A004683

/-- `A007095(sqrt(A001248(n+1)))` -/
def P14470286549972861015.Spec : Prop :=
  ∀ n, P14470286549972861015.a n = A004683 (n + 1)

end A004683

/-! ## A004683.P9389244062497085120

`A007095(record[A006530(n+2)])`
-/

namespace A004683.P9389244062497085120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004683.P9389244062497085120

namespace A004683

/-- `A007095(record[A006530(n+2)])` -/
def P9389244062497085120.Spec : Prop :=
  ∀ n, P9389244062497085120.a n = A004683 (n + 1)

end A004683

/-! ## A004683.P12884708425860509100

`A007095(record[A020639(n+2)])`
-/

namespace A004683.P12884708425860509100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004683.P12884708425860509100

namespace A004683

/-- `A007095(record[A020639(n+2)])` -/
def P12884708425860509100.Spec : Prop :=
  ∀ n, P12884708425860509100.a n = A004683 (n + 1)

end A004683

/-! ## A004683.P4927211312714163133

`A037479(record[A006530(n+2)])`
-/

namespace A004683.P4927211312714163133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004683.P4927211312714163133

namespace A004683

/-- `A037479(record[A006530(n+2)])` -/
def P4927211312714163133.Spec : Prop :=
  ∀ n, P4927211312714163133.a n = A004683 (n + 1)

end A004683

/-! ## A004683.P6712916749949932027

`A037479(record[A020639(n+2)])`
-/

namespace A004683.P6712916749949932027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004683.P6712916749949932027

namespace A004683

/-- `A037479(record[A020639(n+2)])` -/
def P6712916749949932027.Spec : Prop :=
  ∀ n, P6712916749949932027.a n = A004683 (n + 1)

end A004683

/-! ## A004683.P2384857039117990481

`A007095(eq[n, A093868(n+1)])`
-/

namespace A004683.P2384857039117990481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004683.P2384857039117990481

namespace A004683

/-- `A007095(eq[n, A093868(n+1)])` -/
def P2384857039117990481.Spec : Prop :=
  ∀ n, P2384857039117990481.a n = A004683 (n + 1)

end A004683

/-! ## A004683.P16716675887715700846

`A007095(eq[1, A001222(n+1)]+1)`
-/

namespace A004683.P16716675887715700846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004683.P16716675887715700846

namespace A004683

/-- `A007095(eq[1, A001222(n+1)]+1)` -/
def P16716675887715700846.Spec : Prop :=
  ∀ n, P16716675887715700846.a n = A004683 (n + 1)

end A004683

/-! ## A004683.P706483714884271845

`A007095(eq[2, A000005(n+1)]+1)`
-/

namespace A004683.P706483714884271845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004683.P706483714884271845

namespace A004683

/-- `A007095(eq[2, A000005(n+1)]+1)` -/
def P706483714884271845.Spec : Prop :=
  ∀ n, P706483714884271845.a n = A004683 (n + 1)

end A004683

/-!
# A004684: Primes written in base 11. (Next term contains a nondecimal character.)

The programs for A004684, there is no canonical definition to state claims against.
-/

/-! ## A004684.P5708455519197313140

`ceil(e*p?[comp[n²]]/3)`
-/

namespace A004684.P5708455519197313140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) / 3⌉

end

end A004684.P5708455519197313140

/-! ## A004684.P3791323644968581429

`ceil(sqrt(A244583(n+1)))`
-/

namespace A004684.P3791323644968581429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A244583 (n + 1) : ℝ)⌉

end

end A004684.P3791323644968581429

/-! ## A004684.P9346145011598413264

`round(A137558(n+1)/22)`
-/

namespace A004684.P9346145011598413264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A137558 (n + 1) : ℚ) / 22)

end

end A004684.P9346145011598413264

/-! ## A004684.P3061402583147689398

`ceil(sqrt(∑[A358683(n+1)]))`
-/

namespace A004684.P3061402583147689398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A004684.P3061402583147689398

/-! ## A004684.P15207210975183006938

`floor(A008864(n+1)/log(3))`
-/

namespace A004684.P15207210975183006938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008864 (n + 1) : ℝ) / Real.log (3 : ℝ)⌋

end

end A004684.P15207210975183006938

/-!
# A004685: Fibonacci numbers written in base 2.

The programs for A004685, the canonical program `A004685.P3602064584758155543` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004685 has offset 0).

The definition of A004685 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004685.P3602064584758155543

`A007088(A000045(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004685

/-- `A007088(A000045(n))` -/
def P3602064584758155543.Spec : Prop :=
  ∀ n, P3602064584758155543.a n = A004685 n

theorem P3602064584758155543.correct : P3602064584758155543.Spec := by
  intro n
  simp only [A004685]

end A004685

/-! ## A004685.P18003162474842114547

`A007088(round(ϕ^n/sqrt(5)))`
-/

namespace A004685.P18003162474842114547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))).toNat

end

end A004685.P18003162474842114547

namespace A004685

/-- `A007088(round(ϕ^n/sqrt(5)))` -/
def P18003162474842114547.Spec : Prop :=
  ∀ n, P18003162474842114547.a n = A004685 n

end A004685

/-! ## A004685.P7441566178830866543

`and(-1, A007088(abs(A236191(n))))`
-/

namespace A004685.P7441566178830866543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007088 |A236191 n|.toNat)

end

end A004685.P7441566178830866543

namespace A004685

/-- `and(-1, A007088(abs(A236191(n))))` -/
def P7441566178830866543.Spec : Prop :=
  ∀ n, P7441566178830866543.a n = A004685 n

end A004685

/-! ## A004685.P10367446117188089977

`and(-1, A007088(A212804(n+1)))`
-/

namespace A004685.P10367446117188089977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007088 (A212804 (n + 1)).toNat)

end

end A004685.P10367446117188089977

namespace A004685

/-- `and(-1, A007088(A212804(n+1)))` -/
def P10367446117188089977.Spec : Prop :=
  ∀ n, P10367446117188089977.a n = A004685 n

end A004685

/-!
# A004686: Fibonacci numbers written in base 3.

The programs for A004686, there is no canonical definition to state claims against.
-/

/-! ## A004686.P994291859557693740

`A007089(round(ϕ^n/sqrt(5)))`
-/

namespace A004686.P994291859557693740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))).toNat

end

end A004686.P994291859557693740

/-! ## A004686.P5979224166423040592

`A343810(A000045(n))/4`
-/

namespace A004686.P5979224166423040592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 (A000045 n).toNat : ℚ) / 4

end

end A004686.P5979224166423040592

/-! ## A004686.P5094100915815903461

`and(-1, A007089(abs(A236191(n))))`
-/

namespace A004686.P5094100915815903461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007089 |A236191 n|.toNat)

end

end A004686.P5094100915815903461

/-! ## A004686.P11565870394737283854

`A343810(A001611(n)-1)/4`
-/

namespace A004686.P11565870394737283854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 (A001611 n - 1).toNat : ℚ) / 4

end

end A004686.P11565870394737283854

/-!
# A004687: Fibonacci numbers written in base 4.

The programs for A004687, there is no canonical definition to state claims against.
-/

/-! ## A004687.P15147656098559681593

`A007090(round(ϕ^n/sqrt(5)))`
-/

namespace A004687.P15147656098559681593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))).toNat

end

end A004687.P15147656098559681593

/-! ## A004687.P13845498240284976832

`and(-1, A007090(A000045(n)))`
-/

namespace A004687.P13845498240284976832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007090 (A000045 n).toNat)

end

end A004687.P13845498240284976832

/-! ## A004687.P12720142101134400585

`and(-1, A007090(abs(A236191(n))))`
-/

namespace A004687.P12720142101134400585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007090 |A236191 n|.toNat)

end

end A004687.P12720142101134400585

/-! ## A004687.P1635428001255375178

`and(-1, A007090(A212804(n+1)))`
-/

namespace A004687.P1635428001255375178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007090 (A212804 (n + 1)).toNat)

end

end A004687.P1635428001255375178

/-!
# A004688: Fibonacci numbers written in base 5.

The programs for A004688, there is no canonical definition to state claims against.
-/

/-! ## A004688.P16324880510767419923

`A007091(round(ϕ^n/sqrt(5)))`
-/

namespace A004688.P16324880510767419923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))).toNat

end

end A004688.P16324880510767419923

/-! ## A004688.P15096000428229513199

`A014263(A001611(n))/2`
-/

namespace A004688.P15096000428229513199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014263 (A001611 n).toNat : ℚ) / 2

end

end A004688.P15096000428229513199

/-! ## A004688.P2562970106346571804

`and(-1, A007091(A000045(n)))`
-/

namespace A004688.P2562970106346571804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007091 (A000045 n).toNat)

end

end A004688.P2562970106346571804

/-! ## A004688.P4873206421597253543

`and(-1, A007091(abs(A236191(n))))`
-/

namespace A004688.P4873206421597253543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007091 |A236191 n|.toNat)

end

end A004688.P4873206421597253543

/-!
# A004689: Fibonacci numbers written in base 6.

The programs for A004689, there is no canonical definition to state claims against.
-/

/-! ## A004689.P3436158380906346760

`A007092(round(ϕ^n/sqrt(5)))`
-/

namespace A004689.P3436158380906346760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))).toNat

end

end A004689.P3436158380906346760

/-! ## A004689.P8756656332527761008

`and(-1, A007092(A000045(n)))`
-/

namespace A004689.P8756656332527761008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007092 (A000045 n).toNat)

end

end A004689.P8756656332527761008

/-! ## A004689.P12140334571713189418

`and(-1, A007092(abs(A236191(n))))`
-/

namespace A004689.P12140334571713189418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007092 |A236191 n|.toNat)

end

end A004689.P12140334571713189418

/-! ## A004689.P9672010343490507035

`and(-1, A007092(A212804(n+1)))`
-/

namespace A004689.P9672010343490507035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007092 (A212804 (n + 1)).toNat)

end

end A004689.P9672010343490507035

/-!
# A004690: Fibonacci numbers written in base 7.

The programs for A004690, there is no canonical definition to state claims against.
-/

/-! ## A004690.P12530763102200524678

`A007093(round(ϕ^n/sqrt(5)))`
-/

namespace A004690.P12530763102200524678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))).toNat

end

end A004690.P12530763102200524678

/-! ## A004690.P14351660513287390913

`and(-1, A007093(A000045(n)))`
-/

namespace A004690.P14351660513287390913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007093 (A000045 n).toNat)

end

end A004690.P14351660513287390913

/-! ## A004690.P8282691343523668677

`and(-1, A007093(abs(A236191(n))))`
-/

namespace A004690.P8282691343523668677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007093 |A236191 n|.toNat)

end

end A004690.P8282691343523668677

/-! ## A004690.P5425980275800100979

`and(-1, A007093(A212804(n+1)))`
-/

namespace A004690.P5425980275800100979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007093 (A212804 (n + 1)).toNat)

end

end A004690.P5425980275800100979

/-!
# A004691: Fibonacci numbers written in base 8.

The programs for A004691, there is no canonical definition to state claims against.
-/

/-! ## A004691.P136715443344485197

`A007094(round(ϕ^n/sqrt(5)))`
-/

namespace A004691.P136715443344485197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))).toNat

end

end A004691.P136715443344485197

/-! ## A004691.P10847572961557105435

`and(-1, A007094(A000045(n)))`
-/

namespace A004691.P10847572961557105435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007094 (A000045 n).toNat)

end

end A004691.P10847572961557105435

/-! ## A004691.P16009140192162951851

`and(-1, A007094(abs(A236191(n))))`
-/

namespace A004691.P16009140192162951851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007094 |A236191 n|.toNat)

end

end A004691.P16009140192162951851

/-! ## A004691.P8009689429478763082

`and(-1, A007094(A212804(n+1)))`
-/

namespace A004691.P8009689429478763082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007094 (A212804 (n + 1)).toNat)

end

end A004691.P8009689429478763082

/-!
# A004692: Fibonacci numbers written in base 9.

The programs for A004692, there is no canonical definition to state claims against.
-/

/-! ## A004692.P14967289098955827267

`A007095(round(ϕ^n/sqrt(5)))`
-/

namespace A004692.P14967289098955827267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))).toNat

end

end A004692.P14967289098955827267

/-! ## A004692.P8893533600862642285

`and(-1, A007095(A000045(n)))`
-/

namespace A004692.P8893533600862642285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007095 (A000045 n).toNat)

end

end A004692.P8893533600862642285

/-! ## A004692.P10004599627719287936

`and(-1, A007095(abs(A236191(n))))`
-/

namespace A004692.P10004599627719287936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007095 |A236191 n|.toNat)

end

end A004692.P10004599627719287936

/-! ## A004692.P14192032690395247323

`and(-1, A007095(A212804(n+1)))`
-/

namespace A004692.P14192032690395247323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007095 (A212804 (n + 1)).toNat)

end

end A004692.P14192032690395247323

/-!
# A004694: Fibonacci numbers written in base 13. (Next term contains a non-decimal character.)

The programs for A004694, there is no canonical definition to state claims against.
-/

/-! ## A004694.P15488944185416479918

`Δ[A240733(n)]-∑{digits}[n, val(#+1, 8)]`
-/

namespace A004694.P15488944185416479918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240733 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 1) 8).sum : ℕ) : ℤ)

end

end A004694.P15488944185416479918

/-! ## A004694.P17320146946167436829

`xor(A011884(n), A254308(n))`
-/

namespace A004694.P17320146946167436829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011884 n) (A254308 n)

end

end A004694.P17320146946167436829

/-! ## A004694.P17433119802519732266

`xor(A011885(n), A254308(n))`
-/

namespace A004694.P17433119802519732266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011885 n) (A254308 n)

end

end A004694.P17433119802519732266

/-! ## A004694.P4747918169782604403

`xor(A035548(n), A254308(n))`
-/

namespace A004694.P4747918169782604403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035548 n) (A254308 n)

end

end A004694.P4747918169782604403

/-! ## A004694.P1312638942787595027

`xor(A035571(n), A254308(n))`
-/

namespace A004694.P1312638942787595027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035571 n) (A254308 n)

end

end A004694.P1312638942787595027

/-!
# A004695: a(n) = floor(Fibonacci(n)/2).

The programs for A004695, the canonical program `A004695.P5667418127149445875` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004695 has offset 0).

The definition of A004695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004695.P5667418127149445875

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004695

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P5667418127149445875.Spec : Prop :=
  ∀ n, P5667418127149445875.a n = A004695 n

theorem P5667418127149445875.correct : P5667418127149445875.Spec := by
  intro n
  simp only [A004695]

end A004695

/-! ## A004695.P5776890078891365946

`(A000045(n)-A011655(n))/2`
-/

namespace A004695.P5776890078891365946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n - A011655 n : ℚ) / 2

end

end A004695.P5776890078891365946

namespace A004695

/-- `(A000045(n)-A011655(n))/2` -/
def P5776890078891365946.Spec : Prop :=
  ∀ n, P5776890078891365946.a n = (A004695 n : ℚ)

end A004695

/-! ## A004695.P18009467189700835346

`4%gcd(3, n)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A004695.P18009467189700835346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  4 % Nat.gcd 3 n + (a (n - 1) + a (n - 2))

end

end A004695.P18009467189700835346

namespace A004695

/-- `4%gcd(3, n)+a(n-1)+a(n-2)` -/
def P18009467189700835346.Spec : Prop :=
  ∀ n, (P18009467189700835346.a n : ℤ) = A004695 n

end A004695

/-! ## A004695.P12875459953310545499

`1-n²%3+a(n-1)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A004695.P12875459953310545499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - ((n ^ 2 % 3 : ℕ) : ℤ) + (a (n - 1) + a (n - 2))

end

end A004695.P12875459953310545499

namespace A004695

/-- `1-n²%3+a(n-1)+a(n-2)` -/
def P12875459953310545499.Spec : Prop :=
  ∀ n, P12875459953310545499.a n = A004695 n

end A004695

/-! ## A004695.P664206603899204292

`∑[n+1]%3+a(n-1)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A004695.P664206603899204292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 3 + (a (n - 1) + a (n - 2))

end

end A004695.P664206603899204292

namespace A004695

/-- `∑[n+1]%3+a(n-1)+a(n-2)` -/
def P664206603899204292.Spec : Prop :=
  ∀ n, (P664206603899204292.a n : ℤ) = A004695 n

end A004695

/-! ## A004695.P16343216257044534580

`A147997(n)-1`
-/

namespace A004695.P16343216257044534580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 n - 1

end

end A004695.P16343216257044534580

namespace A004695

/-- `A147997(n)-1` -/
def P16343216257044534580.Spec : Prop :=
  ∀ n, P16343216257044534580.a n = A004695 n

end A004695

/-! ## A004695.P14029044736136005684

`A173673(2*n)`
-/

namespace A004695.P14029044736136005684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (2 * n)

end

end A004695.P14029044736136005684

namespace A004695

/-- `A173673(2*n)` -/
def P14029044736136005684.Spec : Prop :=
  ∀ n, P14029044736136005684.a n = A004695 n

end A004695

/-! ## A004695.P6136976083182644272

`a(n-3)-A152163(n)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A004695.P6136976083182644272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 3) - A152163 n

end

end A004695.P6136976083182644272

namespace A004695

/-- `a(n-3)-A152163(n)` -/
def P6136976083182644272.Spec : Prop :=
  ∀ n, P6136976083182644272.a n = A004695 n

end A004695

/-! ## A004695.P2437070173811424564

`A000045(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A004695.P2437070173811424564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A000045 (n - 2) + a (n - 3)

end

end A004695.P2437070173811424564

namespace A004695

/-- `A000045(n-2)+a(n-3)` -/
def P2437070173811424564.Spec : Prop :=
  ∀ n, P2437070173811424564.a n = A004695 n

end A004695

/-! ## A004695.P2830586932078109219

`A173173(n)-A011655(n)`
-/

namespace A004695.P2830586932078109219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 n - A011655 n

end

end A004695.P2830586932078109219

namespace A004695

/-- `A173173(n)-A011655(n)` -/
def P2830586932078109219.Spec : Prop :=
  ∀ n, P2830586932078109219.a n = A004695 n

end A004695

/-! ## A004695.P8048310361962806167

`A079978(n)+A173173(n)-1`
-/

namespace A004695.P8048310361962806167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n + (A173173 n - 1)

end

end A004695.P8048310361962806167

namespace A004695

/-- `A079978(n)+A173173(n)-1` -/
def P8048310361962806167.Spec : Prop :=
  ∀ n, P8048310361962806167.a n = A004695 n

end A004695

/-! ## A004695.P9461186863152461712

`A004697(n)+Δ[A004697(n+1)]`
-/

namespace A004695.P9461186863152461712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004697 n + (f1 (n + 1) - f1 n)

end

end A004695.P9461186863152461712

namespace A004695

/-- `A004697(n)+Δ[A004697(n+1)]` -/
def P9461186863152461712.Spec : Prop :=
  ∀ n, P9461186863152461712.a n = A004695 n

end A004695

/-! ## A004695.P2499598938745963687

`floor(∑[a(n-1)+a(n-2)]/2)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A004695.P2499598938745963687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A004695.P2499598938745963687

namespace A004695

/-- `floor(∑[a(n-1)+a(n-2)]/2)` -/
def P2499598938745963687.Spec : Prop :=
  ∀ n, P2499598938745963687.a n = A004695 n

end A004695

/-! ## A004695.P6885634160120270279

`A104221(n)/2`
-/

namespace A004695.P6885634160120270279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104221 n : ℚ) / 2

end

end A004695.P6885634160120270279

namespace A004695

/-- `A104221(n)/2` -/
def P6885634160120270279.Spec : Prop :=
  ∀ n, P6885634160120270279.a n = (A004695 n : ℚ)

end A004695

/-! ## A004695.P8591097822717094344

`floor(A000045(n)/2)`
-/

namespace A004695.P8591097822717094344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n : ℚ) / 2⌋

end

end A004695.P8591097822717094344

namespace A004695

/-- `floor(A000045(n)/2)` -/
def P8591097822717094344.Spec : Prop :=
  ∀ n, P8591097822717094344.a n = A004695 n

end A004695

/-! ## A004695.P17406998511541372605

`floor(A104220(n)/2)`
-/

namespace A004695.P17406998511541372605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A104220 n : ℚ) / 2⌋

end

end A004695.P17406998511541372605

namespace A004695

/-- `floor(A104220(n)/2)` -/
def P17406998511541372605.Spec : Prop :=
  ∀ n, P17406998511541372605.a n = A004695 n

end A004695

/-! ## A004695.P194998631424245766

`floor(abs(A236191(n)/2))`
-/

namespace A004695.P194998631424245766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(A236191 n : ℚ) / 2|⌋

end

end A004695.P194998631424245766

namespace A004695

/-- `floor(abs(A236191(n)/2))` -/
def P194998631424245766.Spec : Prop :=
  ∀ n, P194998631424245766.a n = A004695 n

end A004695

/-! ## A004695.P16167528383980174670

`floor(A212804(n+1)/2)`
-/

namespace A004695.P16167528383980174670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212804 (n + 1) : ℚ) / 2⌋

end

end A004695.P16167528383980174670

namespace A004695

/-- `floor(A212804(n+1)/2)` -/
def P16167528383980174670.Spec : Prop :=
  ∀ n, P16167528383980174670.a n = A004695 n

end A004695

/-! ## A004695.P13617241656487581208

`floor(A324969(n+1)/2)`
-/

namespace A004695.P13617241656487581208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A324969 (n + 1) : ℚ) / 2⌋

end

end A004695.P13617241656487581208

namespace A004695

/-- `floor(A324969(n+1)/2)` -/
def P13617241656487581208.Spec : Prop :=
  ∀ n, P13617241656487581208.a n = A004695 n

end A004695

/-!
# A004696: a(n) = floor(Fibonacci(n)/3).

The programs for A004696, the canonical program `A004696.P3452124584783387889` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004696 has offset 0).

The definition of A004696 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082115, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004696.P3452124584783387889

`(A000045(n)-A082115(n))/3`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004696

/-- `(A000045(n)-A082115(n))/3` -/
def P3452124584783387889.Spec : Prop :=
  ∀ n, P3452124584783387889.a n = (A004696 n : ℚ)

end A004696

/-! ## A004696.P4781269944800839705

`A293543(n)-A166486(n)`
-/

namespace A004696.P4781269944800839705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293543 n - A166486 n

end

end A004696.P4781269944800839705

namespace A004696

/-- `A293543(n)-A166486(n)` -/
def P4781269944800839705.Spec : Prop :=
  ∀ n, P4781269944800839705.a n = A004696 n

end A004696

/-! ## A004696.P2568590879770540062

`floor(A293545(n)/2)`
-/

namespace A004696.P2568590879770540062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293545 n : ℚ) / 2⌋

end

end A004696.P2568590879770540062

namespace A004696

/-- `floor(A293545(n)/2)` -/
def P2568590879770540062.Spec : Prop :=
  ∀ n, P2568590879770540062.a n = A004696 n

end A004696

/-! ## A004696.P3089271040252626385

`floor(A293547(n)/2)`
-/

namespace A004696.P3089271040252626385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293547 n : ℚ) / 2⌋

end

end A004696.P3089271040252626385

namespace A004696

/-- `floor(A293547(n)/2)` -/
def P3089271040252626385.Spec : Prop :=
  ∀ n, P3089271040252626385.a n = A004696 n

end A004696

/-! ## A004696.P12631090940965111481

`A293545(n)-A293544(n)`
-/

namespace A004696.P12631090940965111481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293545 n - A293544 n

end

end A004696.P12631090940965111481

namespace A004696

/-- `A293545(n)-A293544(n)` -/
def P12631090940965111481.Spec : Prop :=
  ∀ n, P12631090940965111481.a n = A004696 n

end A004696

/-! ## A004696.P14801242311522446165

`A293547(n)-A293543(n)`
-/

namespace A004696.P14801242311522446165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293547 n - A293543 n

end

end A004696.P14801242311522446165

namespace A004696

/-- `A293547(n)-A293543(n)` -/
def P14801242311522446165.Spec : Prop :=
  ∀ n, P14801242311522446165.a n = A004696 n

end A004696

/-! ## A004696.P6840882454400268377

`floor(∑[a(n-1)+a(n-2)]/3)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A004696.P6840882454400268377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A004696.P6840882454400268377

namespace A004696

/-- `floor(∑[a(n-1)+a(n-2)]/3)` -/
def P6840882454400268377.Spec : Prop :=
  ∀ n, P6840882454400268377.a n = A004696 n

end A004696

/-! ## A004696.P617436532734572631

`floor(A000045(n)/3)`
-/

namespace A004696.P617436532734572631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n : ℚ) / 3⌋

end

end A004696.P617436532734572631

namespace A004696

/-- `floor(A000045(n)/3)` -/
def P617436532734572631.Spec : Prop :=
  ∀ n, P617436532734572631.a n = A004696 n

end A004696

/-! ## A004696.P12778179466778025321

`Δ[A179001(abs(1-n))]`
-/

namespace A004696.P12778179466778025321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179001 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004696.P12778179466778025321

namespace A004696

/-- `Δ[A179001(abs(1-n))]` -/
def P12778179466778025321.Spec : Prop :=
  ∀ n, P12778179466778025321.a n = A004696 n

end A004696

/-! ## A004696.P16225380758896076743

`floor(A212804(n+1)/3)`
-/

namespace A004696.P16225380758896076743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212804 (n + 1) : ℚ) / 3⌋

end

end A004696.P16225380758896076743

namespace A004696

/-- `floor(A212804(n+1)/3)` -/
def P16225380758896076743.Spec : Prop :=
  ∀ n, P16225380758896076743.a n = A004696 n

end A004696

/-! ## A004696.P14584115310186493273

`floor((A001611(n)-1)/3)`
-/

namespace A004696.P14584115310186493273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001611 n - 1 : ℚ) / 3⌋

end

end A004696.P14584115310186493273

namespace A004696

/-- `floor((A001611(n)-1)/3)` -/
def P14584115310186493273.Spec : Prop :=
  ∀ n, P14584115310186493273.a n = A004696 n

end A004696

/-! ## A004696.P17158403953251374460

`floor(A103609(2*n)/3)`
-/

namespace A004696.P17158403953251374460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103609 (2 * n) : ℚ) / 3⌋

end

end A004696.P17158403953251374460

namespace A004696

/-- `floor(A103609(2*n)/3)` -/
def P17158403953251374460.Spec : Prop :=
  ∀ n, P17158403953251374460.a n = A004696 n

end A004696

/-! ## A004696.P11917717776964809469

`A000045(n)-A293546(n)`
-/

namespace A004696.P11917717776964809469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A293546 n

end

end A004696.P11917717776964809469

namespace A004696

/-- `A000045(n)-A293546(n)` -/
def P11917717776964809469.Spec : Prop :=
  ∀ n, P11917717776964809469.a n = A004696 n

end A004696

/-! ## A004696.P9066073859170038428

`floor(A167816(n)/A167817(n))`
-/

namespace A004696.P9066073859170038428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167816 n : ℚ) / (A167817 n : ℚ)⌋

end

end A004696.P9066073859170038428

namespace A004696

/-- `floor(A167816(n)/A167817(n))` -/
def P9066073859170038428.Spec : Prop :=
  ∀ n, P9066073859170038428.a n = A004696 n

end A004696

/-! ## A004696.P10263210501325414478

`floor(lcm(A167808(n), A167816(n))/3)`
-/

namespace A004696.P10263210501325414478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm (A167808 n) (A167816 n) : ℚ) / 3⌋

end

end A004696.P10263210501325414478

namespace A004696

/-- `floor(lcm(A167808(n), A167816(n))/3)` -/
def P10263210501325414478.Spec : Prop :=
  ∀ n, P10263210501325414478.a n = A004696 n

end A004696

/-! ## A004696.P17919660118001130421

`A000045(n)-(A293544(n)+A293543(n))`
-/

namespace A004696.P17919660118001130421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (A293544 n + A293543 n)

end

end A004696.P17919660118001130421

namespace A004696

/-- `A000045(n)-(A293544(n)+A293543(n))` -/
def P17919660118001130421.Spec : Prop :=
  ∀ n, P17919660118001130421.a n = A004696 n

end A004696

/-! ## A004696.P3564961753460327974

`A293545(n)+A293547(n)-A000045(n)`
-/

namespace A004696.P3564961753460327974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293545 n + (A293547 n - A000045 n)

end

end A004696.P3564961753460327974

namespace A004696

/-- `A293545(n)+A293547(n)-A000045(n)` -/
def P3564961753460327974.Spec : Prop :=
  ∀ n, P3564961753460327974.a n = A004696 n

end A004696

/-! ## A004696.P14880221781131462619

`A212804(n+1)-(A293544(n)+A293543(n))`
-/

namespace A004696.P14880221781131462619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - (A293544 n + A293543 n)

end

end A004696.P14880221781131462619

namespace A004696

/-- `A212804(n+1)-(A293544(n)+A293543(n))` -/
def P14880221781131462619.Spec : Prop :=
  ∀ n, P14880221781131462619.a n = A004696 n

end A004696

/-! ## A004696.P2954197725118295443

`floor(A053602(2*n)/3)`
-/

namespace A004696.P2954197725118295443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053602 (2 * n) : ℚ) / 3⌋

end

end A004696.P2954197725118295443

namespace A004696

/-- `floor(A053602(2*n)/3)` -/
def P2954197725118295443.Spec : Prop :=
  ∀ n, P2954197725118295443.a n = A004696 n

end A004696

/-! ## A004696.P7158985168324582465

`floor(A302126(2*n)/3)`
-/

namespace A004696.P7158985168324582465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A302126 (2 * n) : ℚ) / 3⌋

end

end A004696.P7158985168324582465

namespace A004696

/-- `floor(A302126(2*n)/3)` -/
def P7158985168324582465.Spec : Prop :=
  ∀ n, P7158985168324582465.a n = A004696 n

end A004696

/-!
# A004697: a(n) = floor(Fibonacci(n)/4).

The programs for A004697, the canonical program `A004697.P149714185296957463` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004697 has offset 0).

The definition of A004697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004697.P149714185296957463

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)-a(n-7)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1, a(6)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004697

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)-a(n-7)` -/
def P149714185296957463.Spec : Prop :=
  ∀ n, P149714185296957463.a n = A004697 n

theorem P149714185296957463.correct : P149714185296957463.Spec := by
  intro n
  simp only [A004697]

end A004697

/-! ## A004697.P9705656523000826990

`(A000045(n)-A079343(n))/4`
-/

namespace A004697.P9705656523000826990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n - A079343 n : ℚ) / 4

end

end A004697.P9705656523000826990

namespace A004697

/-- `(A000045(n)-A079343(n))/4` -/
def P9705656523000826990.Spec : Prop :=
  ∀ n, P9705656523000826990.a n = (A004697 n : ℚ)

end A004697

/-! ## A004697.P13894168046155714748

`floor(∑[A293014(n)/2])`
-/

namespace A004697.P13894168046155714748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293014 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A004697.P13894168046155714748

namespace A004697

/-- `floor(∑[A293014(n)/2])` -/
def P13894168046155714748.Spec : Prop :=
  ∀ n, P13894168046155714748.a n = A004697 n

end A004697

/-! ## A004697.P1917642198826677879

`A293552(n)-A097325(n)`
-/

namespace A004697.P1917642198826677879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293552 n - A097325 n

end

end A004697.P1917642198826677879

namespace A004697

/-- `A293552(n)-A097325(n)` -/
def P1917642198826677879.Spec : Prop :=
  ∀ n, P1917642198826677879.a n = A004697 n

end A004697

/-! ## A004697.P12870734431270622979

`floor(A004695(n)/2)`
-/

namespace A004697.P12870734431270622979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004695 n : ℚ) / 2⌋

end

end A004697.P12870734431270622979

namespace A004697

/-- `floor(A004695(n)/2)` -/
def P12870734431270622979.Spec : Prop :=
  ∀ n, P12870734431270622979.a n = A004697 n

end A004697

/-! ## A004697.P17008348164155535402

`Δ[A179006(abs(1-n))]`
-/

namespace A004697.P17008348164155535402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179006 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004697.P17008348164155535402

namespace A004697

/-- `Δ[A179006(abs(1-n))]` -/
def P17008348164155535402.Spec : Prop :=
  ∀ n, P17008348164155535402.a n = A004697 n

end A004697

/-! ## A004697.P10606075120604333589

`floor((A147997(n)-1)/2)`
-/

namespace A004697.P10606075120604333589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A147997 n - 1 : ℚ) / 2⌋

end

end A004697.P10606075120604333589

namespace A004697

/-- `floor((A147997(n)-1)/2)` -/
def P10606075120604333589.Spec : Prop :=
  ∀ n, P10606075120604333589.a n = A004697 n

end A004697

/-! ## A004697.P11372704533095977140

`floor(A173673(2*n)/2)`
-/

namespace A004697.P11372704533095977140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173673 (2 * n) : ℚ) / 2⌋

end

end A004697.P11372704533095977140

namespace A004697

/-- `floor(A173673(2*n)/2)` -/
def P11372704533095977140.Spec : Prop :=
  ∀ n, P11372704533095977140.a n = A004697 n

end A004697

/-! ## A004697.P7561246652485142318

`floor(∑[a(n-1)+a(n-2)]/4)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A004697.P7561246652485142318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4⌋

end

end A004697.P7561246652485142318

namespace A004697

/-- `floor(∑[a(n-1)+a(n-2)]/4)` -/
def P7561246652485142318.Spec : Prop :=
  ∀ n, P7561246652485142318.a n = A004697 n

end A004697

/-! ## A004697.P5001515619602448307

`floor(A000045(n)/4)`
-/

namespace A004697.P5001515619602448307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n : ℚ) / 4⌋

end

end A004697.P5001515619602448307

namespace A004697

/-- `floor(A000045(n)/4)` -/
def P5001515619602448307.Spec : Prop :=
  ∀ n, P5001515619602448307.a n = A004697 n

end A004697

/-! ## A004697.P13708072462376950360

`floor(A104220(n)/4)`
-/

namespace A004697.P13708072462376950360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A104220 n : ℚ) / 4⌋

end

end A004697.P13708072462376950360

namespace A004697

/-- `floor(A104220(n)/4)` -/
def P13708072462376950360.Spec : Prop :=
  ∀ n, P13708072462376950360.a n = A004697 n

end A004697

/-! ## A004697.P10828946989511220557

`floor(A104221(n)/4)`
-/

namespace A004697.P10828946989511220557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A104221 n : ℚ) / 4⌋

end

end A004697.P10828946989511220557

namespace A004697

/-- `floor(A104221(n)/4)` -/
def P10828946989511220557.Spec : Prop :=
  ∀ n, P10828946989511220557.a n = A004697 n

end A004697

/-! ## A004697.P9295047222964474919

`∑[Δ[A128429(n)]/3]`
-/

namespace A004697.P9295047222964474919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128429 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004697.P9295047222964474919

namespace A004697

/-- `∑[Δ[A128429(n)]/3]` -/
def P9295047222964474919.Spec : Prop :=
  ∀ n, P9295047222964474919.a n = (A004697 n : ℚ)

end A004697

/-! ## A004697.P8644954646236123243

`floor(A128429(n+1)/3)`
-/

namespace A004697.P8644954646236123243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A128429 (n + 1) : ℚ) / 3⌋

end

end A004697.P8644954646236123243

namespace A004697

/-- `floor(A128429(n+1)/3)` -/
def P8644954646236123243.Spec : Prop :=
  ∀ n, P8644954646236123243.a n = A004697 n

end A004697

/-! ## A004697.P17688548642468517328

`floor(A212804(n+1)/4)`
-/

namespace A004697.P17688548642468517328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212804 (n + 1) : ℚ) / 4⌋

end

end A004697.P17688548642468517328

namespace A004697

/-- `floor(A212804(n+1)/4)` -/
def P17688548642468517328.Spec : Prop :=
  ∀ n, P17688548642468517328.a n = A004697 n

end A004697

/-! ## A004697.P14222500810029863662

`floor((A001611(n)-1)/4)`
-/

namespace A004697.P14222500810029863662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001611 n - 1 : ℚ) / 4⌋

end

end A004697.P14222500810029863662

namespace A004697

/-- `floor((A001611(n)-1)/4)` -/
def P14222500810029863662.Spec : Prop :=
  ∀ n, P14222500810029863662.a n = A004697 n

end A004697

/-! ## A004697.P13135873113866247893

`floor((A002062(n)-n)/4)`
-/

namespace A004697.P13135873113866247893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002062 n - (n : ℤ) : ℚ) / 4⌋

end

end A004697.P13135873113866247893

namespace A004697

/-- `floor((A002062(n)-n)/4)` -/
def P13135873113866247893.Spec : Prop :=
  ∀ n, P13135873113866247893.a n = A004697 n

end A004697

/-! ## A004697.P2684343634713251673

`floor(floor(A141325(n)/2)/2)`
-/

namespace A004697.P2684343634713251673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A141325 n : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A004697.P2684343634713251673

namespace A004697

/-- `floor(floor(A141325(n)/2)/2)` -/
def P2684343634713251673.Spec : Prop :=
  ∀ n, P2684343634713251673.a n = A004697 n

end A004697

/-! ## A004697.P13300899976354589182

`ceil((A103609(2*n)-(char[2]+3))/4)`
-/

namespace A004697.P13300899976354589182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A103609 (2 * n) - (((if ∃ j, f1 j = n then 1 else 0) + 3 : ℕ) : ℤ) : ℚ) / 4⌉

end

end A004697.P13300899976354589182

namespace A004697

/-- `ceil((A103609(2*n)-(char[2]+3))/4)` -/
def P13300899976354589182.Spec : Prop :=
  ∀ n, P13300899976354589182.a n = A004697 n

end A004697

/-!
# A004698: a(n) = floor(Fibonacci(n)/5).

The programs for A004698, the canonical program `A004698.P15694019374451496152` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004698 has offset 0).

The definition of A004698 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082116, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004698.P15694019374451496152

`(A000045(n)-A082116(n))/5`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004698

/-- `(A000045(n)-A082116(n))/5` -/
def P15694019374451496152.Spec : Prop :=
  ∀ n, P15694019374451496152.a n = (A004698 n : ℚ)

end A004698

/-! ## A004698.P18414575078211572559

`A293637(n)-A011558(n)`
-/

namespace A004698.P18414575078211572559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293637 n - A011558 n

end

end A004698.P18414575078211572559

namespace A004698

/-- `A293637(n)-A011558(n)` -/
def P18414575078211572559.Spec : Prop :=
  ∀ n, P18414575078211572559.a n = A004698 n

end A004698

/-! ## A004698.P14920417463152983825

`floor(A293639(n)/2)`
-/

namespace A004698.P14920417463152983825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293639 n : ℚ) / 2⌋

end

end A004698.P14920417463152983825

namespace A004698

/-- `floor(A293639(n)/2)` -/
def P14920417463152983825.Spec : Prop :=
  ∀ n, P14920417463152983825.a n = A004698 n

end A004698

/-! ## A004698.P1122117843267852055

`A293639(n)-A293638(n)`
-/

namespace A004698.P1122117843267852055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293639 n - A293638 n

end

end A004698.P1122117843267852055

namespace A004698

/-- `A293639(n)-A293638(n)` -/
def P1122117843267852055.Spec : Prop :=
  ∀ n, P1122117843267852055.a n = A004698 n

end A004698

/-! ## A004698.P10887213244078894835

`A293637(n)+A293639(n)-A293640(n)`
-/

namespace A004698.P10887213244078894835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293637 n + (A293639 n - A293640 n)

end

end A004698.P10887213244078894835

namespace A004698

/-- `A293637(n)+A293639(n)-A293640(n)` -/
def P10887213244078894835.Spec : Prop :=
  ∀ n, P10887213244078894835.a n = A004698 n

end A004698

/-! ## A004698.P2880722329236682603

`A293637(n)-A293637(A293640(n)-A293639(n))`
-/

namespace A004698.P2880722329236682603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293637 n - A293637 (A293640 n - A293639 n).toNat

end

end A004698.P2880722329236682603

namespace A004698

/-- `A293637(n)-A293637(A293640(n)-A293639(n))` -/
def P2880722329236682603.Spec : Prop :=
  ∀ n, P2880722329236682603.a n = A004698 n

end A004698

/-! ## A004698.P8646426616743449507

`floor(A293642(n)/3)`
-/

namespace A004698.P8646426616743449507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293642 n : ℚ) / 3⌋

end

end A004698.P8646426616743449507

namespace A004698

/-- `floor(A293642(n)/3)` -/
def P8646426616743449507.Spec : Prop :=
  ∀ n, P8646426616743449507.a n = A004698 n

end A004698

/-! ## A004698.P200364521749476279

`floor(A293644(n)/3)`
-/

namespace A004698.P200364521749476279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293644 n : ℚ) / 3⌋

end

end A004698.P200364521749476279

namespace A004698

/-- `floor(A293644(n)/3)` -/
def P200364521749476279.Spec : Prop :=
  ∀ n, P200364521749476279.a n = A004698 n

end A004698

/-! ## A004698.P5045997423296429648

`A293642(n)-A293641(n)`
-/

namespace A004698.P5045997423296429648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293642 n - A293641 n

end

end A004698.P5045997423296429648

namespace A004698

/-- `A293642(n)-A293641(n)` -/
def P5045997423296429648.Spec : Prop :=
  ∀ n, P5045997423296429648.a n = A004698 n

end A004698

/-! ## A004698.P4119160725310555936

`A293644(n)-A293640(n)`
-/

namespace A004698.P4119160725310555936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293644 n - A293640 n

end

end A004698.P4119160725310555936

namespace A004698

/-- `A293644(n)-A293640(n)` -/
def P4119160725310555936.Spec : Prop :=
  ∀ n, P4119160725310555936.a n = A004698 n

end A004698

/-! ## A004698.P15988726332447239928

`floor(∑[a(n-1)+a(n-2)]/5)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A004698.P15988726332447239928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A004698.P15988726332447239928

namespace A004698

/-- `floor(∑[a(n-1)+a(n-2)]/5)` -/
def P15988726332447239928.Spec : Prop :=
  ∀ n, P15988726332447239928.a n = A004698 n

end A004698

/-! ## A004698.P18366797859787643297

`floor(A000045(n)/5)`
-/

namespace A004698.P18366797859787643297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n : ℚ) / 5⌋

end

end A004698.P18366797859787643297

namespace A004698

/-- `floor(A000045(n)/5)` -/
def P18366797859787643297.Spec : Prop :=
  ∀ n, P18366797859787643297.a n = A004698 n

end A004698

/-! ## A004698.P7139719327295485062

`floor((A001611(n)-1)/5)`
-/

namespace A004698.P7139719327295485062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001611 n - 1 : ℚ) / 5⌋

end

end A004698.P7139719327295485062

namespace A004698

/-- `floor((A001611(n)-1)/5)` -/
def P7139719327295485062.Spec : Prop :=
  ∀ n, P7139719327295485062.a n = A004698 n

end A004698

/-! ## A004698.P5604247878882491093

`A000045(n)-A293672(n)`
-/

namespace A004698.P5604247878882491093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A293672 n

end

end A004698.P5604247878882491093

namespace A004698

/-- `A000045(n)-A293672(n)` -/
def P5604247878882491093.Spec : Prop :=
  ∀ n, P5604247878882491093.a n = A004698 n

end A004698

/-! ## A004698.P7541686739436460228

`A293673(n)-A293643(n)`
-/

namespace A004698.P7541686739436460228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293673 n - A293643 n

end

end A004698.P7541686739436460228

namespace A004698

/-- `A293673(n)-A293643(n)` -/
def P7541686739436460228.Spec : Prop :=
  ∀ n, P7541686739436460228.a n = A004698 n

end A004698

/-! ## A004698.P6767602706847504224

`A212804(n+1)-A293672(n)`
-/

namespace A004698.P6767602706847504224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A293672 n

end

end A004698.P6767602706847504224

namespace A004698

/-- `A212804(n+1)-A293672(n)` -/
def P6767602706847504224.Spec : Prop :=
  ∀ n, P6767602706847504224.a n = A004698 n

end A004698

/-! ## A004698.P9899606721929815665

`floor(lcm(A167808(n), A167816(n))/5)`
-/

namespace A004698.P9899606721929815665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm (A167808 n) (A167816 n) : ℚ) / 5⌋

end

end A004698.P9899606721929815665

namespace A004698

/-- `floor(lcm(A167808(n), A167816(n))/5)` -/
def P9899606721929815665.Spec : Prop :=
  ∀ n, P9899606721929815665.a n = A004698 n

end A004698

/-! ## A004698.P6161135217203807169

`A000045(n)-(A293641(n)+A293640(n))`
-/

namespace A004698.P6161135217203807169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (A293641 n + A293640 n)

end

end A004698.P6161135217203807169

namespace A004698

/-- `A000045(n)-(A293641(n)+A293640(n))` -/
def P6161135217203807169.Spec : Prop :=
  ∀ n, P6161135217203807169.a n = A004698 n

end A004698

/-! ## A004698.P1202707230464706321

`A293642(n)+A293644(n)-A000045(n)`
-/

namespace A004698.P1202707230464706321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293642 n + (A293644 n - A000045 n)

end

end A004698.P1202707230464706321

namespace A004698

/-- `A293642(n)+A293644(n)-A000045(n)` -/
def P1202707230464706321.Spec : Prop :=
  ∀ n, P1202707230464706321.a n = A004698 n

end A004698

/-! ## A004698.P13723443230901156744

`A293639(n)+A293642(n)-A293671(n)`
-/

namespace A004698.P13723443230901156744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293639 n + (A293642 n - A293671 n)

end

end A004698.P13723443230901156744

namespace A004698

/-- `A293639(n)+A293642(n)-A293671(n)` -/
def P13723443230901156744.Spec : Prop :=
  ∀ n, P13723443230901156744.a n = A004698 n

end A004698

/-!
# A004699: a(n) = floor(Fibonacci(n)/6).

The programs for A004699, the canonical program `A004699.P12239774125625034341` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004699 has offset 0).

The definition of A004699 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004699.P12239774125625034341

`(A000045(n)-A082117(n))/6`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004699

/-- `(A000045(n)-A082117(n))/6` -/
def P12239774125625034341.Spec : Prop :=
  ∀ n, P12239774125625034341.a n = (A004699 n : ℚ)

end A004699

/-! ## A004699.P12397537298369760425

`floor(∑[A293014(n)/3])`
-/

namespace A004699.P12397537298369760425
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293014 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A004699.P12397537298369760425

namespace A004699

/-- `floor(∑[A293014(n)/3])` -/
def P12397537298369760425.Spec : Prop :=
  ∀ n, P12397537298369760425.a n = A004699 n

end A004699

/-! ## A004699.P73973025642141312

`floor(A004696(n)/2)`
-/

namespace A004699.P73973025642141312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004696 n : ℚ) / 2⌋

end

end A004699.P73973025642141312

namespace A004699

/-- `floor(A004696(n)/2)` -/
def P73973025642141312.Spec : Prop :=
  ∀ n, P73973025642141312.a n = A004699 n

end A004699

/-! ## A004699.P12989605147356829407

`floor(A004695(n)/3)`
-/

namespace A004699.P12989605147356829407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004695 n : ℚ) / 3⌋

end

end A004699.P12989605147356829407

namespace A004699

/-- `floor(A004695(n)/3)` -/
def P12989605147356829407.Spec : Prop :=
  ∀ n, P12989605147356829407.a n = A004699 n

end A004699

/-! ## A004699.P9119914622223267184

`floor(A173673(2*n)/3)`
-/

namespace A004699.P9119914622223267184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173673 (2 * n) : ℚ) / 3⌋

end

end A004699.P9119914622223267184

namespace A004699

/-- `floor(A173673(2*n)/3)` -/
def P9119914622223267184.Spec : Prop :=
  ∀ n, P9119914622223267184.a n = A004699 n

end A004699

/-! ## A004699.P12531223440903931430

`floor(A000045(n)/6)`
-/

namespace A004699.P12531223440903931430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n : ℚ) / 6⌋

end

end A004699.P12531223440903931430

namespace A004699

/-- `floor(A000045(n)/6)` -/
def P12531223440903931430.Spec : Prop :=
  ∀ n, P12531223440903931430.a n = A004699 n

end A004699

/-! ## A004699.P15970336785982850027

`floor(A141325(n)/6)`
-/

namespace A004699.P15970336785982850027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141325 n : ℚ) / 6⌋

end

end A004699.P15970336785982850027

namespace A004699

/-- `floor(A141325(n)/6)` -/
def P15970336785982850027.Spec : Prop :=
  ∀ n, P15970336785982850027.a n = A004699 n

end A004699

/-! ## A004699.P3626410657504346492

`floor(A212804(n+1)/6)`
-/

namespace A004699.P3626410657504346492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212804 (n + 1) : ℚ) / 6⌋

end

end A004699.P3626410657504346492

namespace A004699

/-- `floor(A212804(n+1)/6)` -/
def P3626410657504346492.Spec : Prop :=
  ∀ n, P3626410657504346492.a n = A004699 n

end A004699

/-! ## A004699.P17934008232505225560

`floor((A001611(n)-1)/6)`
-/

namespace A004699.P17934008232505225560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001611 n - 1 : ℚ) / 6⌋

end

end A004699.P17934008232505225560

namespace A004699

/-- `floor((A001611(n)-1)/6)` -/
def P17934008232505225560.Spec : Prop :=
  ∀ n, P17934008232505225560.a n = A004699 n

end A004699

/-! ## A004699.P2721044524930842252

`floor(A103609(2*n)/6)`
-/

namespace A004699.P2721044524930842252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103609 (2 * n) : ℚ) / 6⌋

end

end A004699.P2721044524930842252

namespace A004699

/-- `floor(A103609(2*n)/6)` -/
def P2721044524930842252.Spec : Prop :=
  ∀ n, P2721044524930842252.a n = A004699 n

end A004699

/-! ## A004699.P10235926731296474866

`floor((A160536(n)-n²)/6)`
-/

namespace A004699.P10235926731296474866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160536 n - (n ^ 2 : ℤ) : ℚ) / 6⌋

end

end A004699.P10235926731296474866

namespace A004699

/-- `floor((A160536(n)-n²)/6)` -/
def P10235926731296474866.Spec : Prop :=
  ∀ n, P10235926731296474866.a n = A004699 n

end A004699

/-! ## A004699.P16180826994327952250

`floor(∑[A212804(abs(1-n))]/6)`
-/

namespace A004699.P16180826994327952250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 6⌋

end

end A004699.P16180826994327952250

namespace A004699

/-- `floor(∑[A212804(abs(1-n))]/6)` -/
def P16180826994327952250.Spec : Prop :=
  ∀ n, P16180826994327952250.a n = A004699 n

end A004699

/-! ## A004699.P3780000622181565795

`floor(A167816(n)/(2*A167817(n)))`
-/

namespace A004699.P3780000622181565795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167816 n : ℚ) / (2 * A167817 n : ℚ)⌋

end

end A004699.P3780000622181565795

namespace A004699

/-- `floor(A167816(n)/(2*A167817(n)))` -/
def P3780000622181565795.Spec : Prop :=
  ∀ n, P3780000622181565795.a n = A004699 n

end A004699

/-! ## A004699.P6826434711725316381

`floor(lcm(A167808(n), A167816(n))/6)`
-/

namespace A004699.P6826434711725316381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm (A167808 n) (A167816 n) : ℚ) / 6⌋

end

end A004699.P6826434711725316381

namespace A004699

/-- `floor(lcm(A167808(n), A167816(n))/6)` -/
def P6826434711725316381.Spec : Prop :=
  ∀ n, P6826434711725316381.a n = A004699 n

end A004699

/-! ## A004699.P4973740180339881999

`floor((A057427(n)+A000071(A028310(n)))/6)`
-/

namespace A004699.P4973740180339881999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n + A000071 (A028310 n).toNat : ℚ) / 6⌋

end

end A004699.P4973740180339881999

namespace A004699

/-- `floor((A057427(n)+A000071(A028310(n)))/6)` -/
def P4973740180339881999.Spec : Prop :=
  ∀ n, P4973740180339881999.a n = A004699 n

end A004699

/-! ## A004699.P8395280916509836167

`floor((A280193(A109613(n))+A001611(n))/6)`
-/

namespace A004699.P8395280916509836167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A280193 (A109613 n).toNat + A001611 n : ℚ) / 6⌋

end

end A004699.P8395280916509836167

namespace A004699

/-- `floor((A280193(A109613(n))+A001611(n))/6)` -/
def P8395280916509836167.Spec : Prop :=
  ∀ n, P8395280916509836167.a n = A004699 n

end A004699

/-! ## A004699.P13120825375929269890

`floor(A286350(n)/9)`
-/

namespace A004699.P13120825375929269890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286350 n : ℚ) / 9⌋

end

end A004699.P13120825375929269890

namespace A004699

/-- `floor(A286350(n)/9)` -/
def P13120825375929269890.Spec : Prop :=
  ∀ n, P13120825375929269890.a n = A004699 n

end A004699

/-! ## A004699.P17685295309665916832

`floor(A001588(n)/12)`
-/

namespace A004699.P17685295309665916832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001588 n : ℚ) / 12⌋

end

end A004699.P17685295309665916832

namespace A004699

/-- `floor(A001588(n)/12)` -/
def P17685295309665916832.Spec : Prop :=
  ∀ n, P17685295309665916832.a n = A004699 n

end A004699

/-! ## A004699.P1706637494529563258

`floor(A055389(n)/12)`
-/

namespace A004699.P1706637494529563258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055389 n : ℚ) / 12⌋

end

end A004699.P1706637494529563258

namespace A004699

/-- `floor(A055389(n)/12)` -/
def P1706637494529563258.Spec : Prop :=
  ∀ n, P1706637494529563258.a n = A004699 n

end A004699

/-! ## A004699.P11329042160919357134

`floor(Δ[A000071(n+1)]/6)`
-/

namespace A004699.P11329042160919357134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 6⌋

end

end A004699.P11329042160919357134

namespace A004699

/-- `floor(Δ[A000071(n+1)]/6)` -/
def P11329042160919357134.Spec : Prop :=
  ∀ n, P11329042160919357134.a n = A004699 n

end A004699

