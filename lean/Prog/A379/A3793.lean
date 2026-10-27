import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C025

/-!
# A379300: Number of prime indices of n that are composite.

The programs for A379300, the canonical program `A379300.P4239644402952488053` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379300 has offset 1).

The definition of A379300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379300.P13678646584841804484

`A001222(n+1)-A379311(n+1)`
-/

namespace A379300.P13678646584841804484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A379311 (n + 1)

end

end A379300.P13678646584841804484

namespace A379300

/-- `A001222(n+1)-A379311(n+1)` -/
def P13678646584841804484.Spec : Prop :=
  ∀ n, P13678646584841804484.a n = A379300 (n + 1)

end A379300

/-! ## A379300.P8856216552428505091

`∑{e}[A360329((n+1)/2^val(n+1, 2)), #]`
-/

namespace A379300.P8856216552428505091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360329 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A379300.P8856216552428505091

namespace A379300

/-- `∑{e}[A360329((n+1)/2^val(n+1, 2)), #]` -/
def P8856216552428505091.Spec : Prop :=
  ∀ n, (P8856216552428505091.a n : ℤ) = A379300 (n + 1)

end A379300

/-! ## A379300.P4239644402952488053

`A087436(A360329(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A379300

/-- `A087436(A360329(n+1))` -/
def P4239644402952488053.Spec : Prop :=
  ∀ n, P4239644402952488053.a n = A379300 (n + 1)

theorem P4239644402952488053.correct : P4239644402952488053.Spec := by
  intro n
  simp only [A379300, Nat.add_sub_cancel]

end A379300

/-! ## A379300.P12693289106740333078

`A087436(n+1)-A257994(n+1)`
-/

namespace A379300.P12693289106740333078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1) - A257994 (n + 1)

end

end A379300.P12693289106740333078

namespace A379300

/-- `A087436(n+1)-A257994(n+1)` -/
def P12693289106740333078.Spec : Prop :=
  ∀ n, P12693289106740333078.a n = A379300 (n + 1)

end A379300

/-! ## A379300.P17483987835253693832

`A007814(n+1)+A087436(n+1)-A379311(n+1)`
-/

namespace A379300.P17483987835253693832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A087436 (n + 1) - A379311 (n + 1))

end

end A379300.P17483987835253693832

namespace A379300

/-- `A007814(n+1)+A087436(n+1)-A379311(n+1)` -/
def P17483987835253693832.Spec : Prop :=
  ∀ n, P17483987835253693832.a n = A379300 (n + 1)

end A379300

/-! ## A379300.P5437847554698670031

`A379306(n+1)+A379310(n+1)-A379311(n+1)`
-/

namespace A379300.P5437847554698670031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379306 (n + 1) + (A379310 (n + 1) - A379311 (n + 1))

end

end A379300.P5437847554698670031

namespace A379300

/-- `A379306(n+1)+A379310(n+1)-A379311(n+1)` -/
def P5437847554698670031.Spec : Prop :=
  ∀ n, P5437847554698670031.a n = A379300 (n + 1)

end A379300

/-! ## A379300.P9395854503948717705

`A330944((n+1)/2^val(n+1, 2))`
-/

namespace A379300.P9395854503948717705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330944 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A379300.P9395854503948717705

namespace A379300

/-- `A330944((n+1)/2^val(n+1, 2))` -/
def P9395854503948717705.Spec : Prop :=
  ∀ n, P9395854503948717705.a n = A379300 (n + 1)

end A379300

/-! ## A379300.P14281381027992386082

`A330944((n+1)/xor(n, or(n, n+1)))`
-/

namespace A379300.P14281381027992386082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330944 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat

end

end A379300.P14281381027992386082

namespace A379300

/-- `A330944((n+1)/xor(n, or(n, n+1)))` -/
def P14281381027992386082.Spec : Prop :=
  ∀ n, P14281381027992386082.a n = A379300 (n + 1)

end A379300

/-! ## A379300.P17014766773743600410

`A330944((n+1)*2^-val(n+1, 2))`
-/

namespace A379300.P17014766773743600410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330944 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))).toNat

end

end A379300.P17014766773743600410

namespace A379300

/-- `A330944((n+1)*2^-val(n+1, 2))` -/
def P17014766773743600410.Spec : Prop :=
  ∀ n, P17014766773743600410.a n = A379300 (n + 1)

end A379300

/-! ## A379300.P8492027204047545165

`A330944((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A379300.P8492027204047545165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330944 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat

end

end A379300.P8492027204047545165

namespace A379300

/-- `A330944((n+1)/ceil(xor(n, n+1)/2))` -/
def P8492027204047545165.Spec : Prop :=
  ∀ n, P8492027204047545165.a n = A379300 (n + 1)

end A379300

/-!
# A379301: Positive integers whose prime indices include a unique composite number.

The programs for A379301, there is no canonical definition to state claims against.
-/

/-! ## A379301.P4851982456817820819

`eq[1, A379300(n+1)]+1`
-/

namespace A379301.P4851982456817820819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379300 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379301.P4851982456817820819

/-! ## A379301.P2721002757990255128

`eq[1, A379300(A028310(n))]`
-/

namespace A379301.P2721002757990255128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379300 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379301.P2721002757990255128

/-! ## A379301.P10806897645444308778

`A020725(eq[A001511(n+1), A330944(n+1)])`
-/

namespace A379301.P10806897645444308778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A379301.P10806897645444308778

/-!
# A379302: Number of integer partitions of n with a unique composite part.

The programs for A379302, there is no canonical definition to state claims against.
-/

/-! ## A379302.P4093695352812039062

`A054895(A325546(n)%A128335(n+1))`
-/

namespace A379302.P4093695352812039062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 (Int.tmod (A325546 n) (A128335 (n + 1))).toNat

end

end A379302.P4093695352812039062

/-!
# A379306: Number of squarefree prime indices of n.

The programs for A379306, there is no canonical definition to state claims against.
-/

/-! ## A379306.P2394135527335367133

`A001222(n+1)-A379310(n+1)`
-/

namespace A379306.P2394135527335367133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A379310 (n + 1)

end

end A379306.P2394135527335367133

/-! ## A379306.P12626212366243082926

`∑{e}[A181821(n+1), A008966(#)]`
-/

namespace A379306.P12626212366243082926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008966 (Nat.factorization (f1 n).natAbs p)

end

end A379306.P12626212366243082926

/-! ## A379306.P14835120624902114061

`A384421(A181821(n+1))`
-/

namespace A379306.P14835120624902114061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384421 (A181821 (n + 1)).toNat

end

end A379306.P14835120624902114061

/-! ## A379306.P7492487778873522967

`A384421(A304660(n+1))`
-/

namespace A379306.P7492487778873522967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384421 (A304660 (n + 1)).toNat

end

end A379306.P7492487778873522967

/-! ## A379306.P5177559538255708576

`A379311(n+1)+A086016(A060383(n+1))`
-/

namespace A379306.P5177559538255708576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379311 (n + 1) + A086016 (A060383 (n + 1)).toNat

end

end A379306.P5177559538255708576

/-!
# A379307: Positive integers whose prime indices include no squarefree numbers.

The programs for A379307, there is no canonical definition to state claims against.
-/

/-! ## A379307.P7185763475522278963

`eq[0, A379306(n+1)]+1`
-/

namespace A379307.P7185763475522278963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379306 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379307.P7185763475522278963

/-! ## A379307.P18146736902614043729

`record[A028234(A379316(n+1))]`
-/

namespace A379307.P18146736902614043729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A379316 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379307.P18146736902614043729

/-! ## A379307.P8236635023507912384

`record[A032742(A379316(n+5))]`
-/

namespace A379307.P8236635023507912384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A379316 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379307.P8236635023507912384

/-! ## A379307.P7128801250334501682

`∩[A320629(n+1), A322847(n+1)]`
-/

namespace A379307.P7128801250334501682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379307.P7128801250334501682

/-! ## A379307.P8796671037815621070

`∩[A320629(n+1), A330236(n+1)]`
-/

namespace A379307.P8796671037815621070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379307.P8796671037815621070

/-!
# A379310: Number of nonsquarefree prime indices of n.

The programs for A379310, there is no canonical definition to state claims against.
-/

/-! ## A379310.P1043383716337588345

`A001222(n+1)-A379306(n+1)`
-/

namespace A379310.P1043383716337588345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A379306 (n + 1)

end

end A379310.P1043383716337588345

/-! ## A379310.P4796881752770671787

`val(A165851(n+1), 2)-A379306(n+1)`
-/

namespace A379310.P4796881752770671787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A165851 (n + 1)).toNat 2 : ℤ) - A379306 (n + 1)

end

end A379310.P4796881752770671787

/-! ## A379310.P18018795402212340582

`A056239(A181819(n+1))-A379306(n+1)`
-/

namespace A379310.P18018795402212340582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A181819 (n + 1)).toNat - A379306 (n + 1)

end

end A379310.P18018795402212340582

/-! ## A379310.P16266250516063191208

`A007814(n+1)+A087436(n+1)-A379306(n+1)`
-/

namespace A379310.P16266250516063191208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A087436 (n + 1) - A379306 (n + 1))

end

end A379310.P16266250516063191208

/-! ## A379310.P4953694671954253217

`A001221(A068956(A007781(A353394(A353394(n+1)))))`
-/

namespace A379310.P4953694671954253217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A068956 (A007781 (A353394 (A353394 (n + 1)).toNat).toNat).toNat).toNat

end

end A379310.P4953694671954253217

/-!
# A379311: Number of prime indices of n that are 1 or prime.

The programs for A379311, the canonical program `A379311.P6504775159606680234` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379311 has offset 1).

The definition of A379311 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A379300, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379311.P6504775159606680234

`A001222(n+1)-A379300(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A379311

/-- `A001222(n+1)-A379300(n+1)` -/
def P6504775159606680234.Spec : Prop :=
  ∀ n, P6504775159606680234.a n = A379311 (n + 1)

theorem P6504775159606680234.correct : P6504775159606680234.Spec := by
  intro n
  simp only [A379311, Nat.add_sub_cancel]

end A379311

/-! ## A379311.P10024390534345564528

`A257994(n+1)+val(n+1, 2)`
-/

namespace A379311.P10024390534345564528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (n + 1) + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A379311.P10024390534345564528

namespace A379311

/-- `A257994(n+1)+val(n+1, 2)` -/
def P10024390534345564528.Spec : Prop :=
  ∀ n, P10024390534345564528.a n = A379311 (n + 1)

end A379311

/-! ## A379311.P4237798493545455315

`A257994(n+1)+Δ[A011371(n)]`
-/

namespace A379311.P4237798493545455315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (n + 1) + (f1 (n + 1) - f1 n)

end

end A379311.P4237798493545455315

namespace A379311

/-- `A257994(n+1)+Δ[A011371(n)]` -/
def P4237798493545455315.Spec : Prop :=
  ∀ n, P4237798493545455315.a n = A379311 (n + 1)

end A379311

/-! ## A379311.P8824240054246717929

`A257994(n+1)+A007814(n+1)`
-/

namespace A379311.P8824240054246717929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (n + 1) + A007814 (n + 1)

end

end A379311.P8824240054246717929

namespace A379311

/-- `A257994(n+1)+A007814(n+1)` -/
def P8824240054246717929.Spec : Prop :=
  ∀ n, P8824240054246717929.a n = A379311 (n + 1)

end A379311

/-! ## A379311.P18063543610036823726

`A257994(n+1)+A056239(A006519(n+1))`
-/

namespace A379311.P18063543610036823726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (n + 1) + A056239 (A006519 (n + 1)).toNat

end

end A379311.P18063543610036823726

namespace A379311

/-- `A257994(n+1)+A056239(A006519(n+1))` -/
def P18063543610036823726.Spec : Prop :=
  ∀ n, P18063543610036823726.a n = A379311 (n + 1)

end A379311

/-! ## A379311.P11389452734305567328

`A379306(n+1)+A379310(n+1)-A379300(n+1)`
-/

namespace A379311.P11389452734305567328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379306 (n + 1) + (A379310 (n + 1) - A379300 (n + 1))

end

end A379311.P11389452734305567328

namespace A379311

/-- `A379306(n+1)+A379310(n+1)-A379300(n+1)` -/
def P11389452734305567328.Spec : Prop :=
  ∀ n, P11389452734305567328.a n = A379311 (n + 1)

end A379311

/-! ## A379311.P1918272188227088976

`A257994(A394497(n+1))`
-/

namespace A379311.P1918272188227088976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A394497 (n + 1)).toNat

end

end A379311.P1918272188227088976

namespace A379311

/-- `A257994(A394497(n+1))` -/
def P1918272188227088976.Spec : Prop :=
  ∀ n, P1918272188227088976.a n = A379311 (n + 1)

end A379311

/-! ## A379311.P1113135217702725226

`∑{e}[n+1, #]-A330944((n+1)/2^val(n+1, 2))`
-/

namespace A379311.P1113135217702725226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - A330944 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A379311.P1113135217702725226

namespace A379311

/-- `∑{e}[n+1, #]-A330944((n+1)/2^val(n+1, 2))` -/
def P1113135217702725226.Spec : Prop :=
  ∀ n, P1113135217702725226.a n = A379311 (n + 1)

end A379311

/-! ## A379311.P3560950201506096759

`A001222(n+1)-A330944(A065330(n+1))`
-/

namespace A379311.P3560950201506096759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A330944 (A065330 (n + 1)).toNat

end

end A379311.P3560950201506096759

namespace A379311

/-- `A001222(n+1)-A330944(A065330(n+1))` -/
def P3560950201506096759.Spec : Prop :=
  ∀ n, P3560950201506096759.a n = A379311 (n + 1)

end A379311

/-! ## A379311.P582827478997668224

`A356006(A330061(n+1))`
-/

namespace A379311.P582827478997668224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356006 (A330061 (n + 1)).toNat

end

end A379311.P582827478997668224

namespace A379311

/-- `A356006(A330061(n+1))` -/
def P582827478997668224.Spec : Prop :=
  ∀ n, P582827478997668224.a n = A379311 (n + 1)

end A379311

/-!
# A379312: Positive integers whose prime indices include a unique 1 or prime number.

The programs for A379312, there is no canonical definition to state claims against.
-/

/-! ## A379312.P15013473536218311552

`eq[1, A379311(n+1)]+1`
-/

namespace A379312.P15013473536218311552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379311 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379312.P15013473536218311552

/-! ## A379312.P1544138005814913930

`eq[1, A379311(A028310(n))]`
-/

namespace A379312.P1544138005814913930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379311 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379312.P1544138005814913930

/-! ## A379312.P13329116753169707890

`eq[2, A379311(A004277(n))]`
-/

namespace A379312.P13329116753169707890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379311 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379312.P13329116753169707890

/-! ## A379312.P11992677851253811765

`eq[2, A379311(A004275(n+1))]`
-/

namespace A379312.P11992677851253811765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379311 (A004275 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379312.P11992677851253811765

/-! ## A379312.P11841187998208517662

`∩[A331784(n+1), A379313(n+1)]`
-/

namespace A379312.P11841187998208517662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379312.P11841187998208517662

/-!
# A379313: Positive integers whose prime indices are not all composite.

The programs for A379313, there is no canonical definition to state claims against.
-/

/-! ## A379313.P8264179117294445460

`lt[0, A379311(n+1)]+1`
-/

namespace A379313.P8264179117294445460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379311 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A379313.P8264179117294445460

/-! ## A379313.P15546599715805353025

`comp[A320629(n+1)-1]+1`
-/

namespace A379313.P15546599715805353025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A379313.P15546599715805353025

/-! ## A379313.P9306390889130007028

`comp[A360329(2*n+1)-floor(1/(n+1))]`
-/

namespace A379313.P9306390889130007028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360329 (2 * n + 1) - ⌊1 / (n + 1 : ℚ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A379313.P9306390889130007028

/-! ## A379313.P3165434238539294379

`comp[C((n+1)/2^val(n+1, 2), A360327(n+1))]`
-/

namespace A379313.P3165434238539294379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat (A360327 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A379313.P3165434238539294379

/-! ## A379313.P18274116168427562328

`comp[A023443(A320629(n+1))]+1`
-/

namespace A379313.P18274116168427562328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A320629 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A379313.P18274116168427562328

/-! ## A379313.P425122293878708961

`comp[A000035(n)*A360329(n+4)]`
-/

namespace A379313.P425122293878708961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A360329 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A379313.P425122293878708961

/-! ## A379313.P15506332953053295152

`∪[A331386(n+1), Δ[A002378(n)]]`
-/

namespace A379313.P15506332953053295152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331386 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379313.P15506332953053295152

/-! ## A379313.P6471624216409293525

`comp[∪[A320629(n+1), A005061(n)]]`
-/

namespace A379313.P6471624216409293525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A379313.P6471624216409293525

/-! ## A379313.P6628745525156557686

`∪[A047228(n+1), A331386(n+1)]`
-/

namespace A379313.P6628745525156557686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379313.P6628745525156557686

/-! ## A379313.P2573867592460456608

`∪[A047235(n+1), A331386(n+1)]`
-/

namespace A379313.P2573867592460456608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379313.P2573867592460456608

/-!
# A379314: Number of integer partitions of n with a unique 1 or prime part.

The programs for A379314, there is no canonical definition to state claims against.
-/

/-! ## A379314.P17058111668894618060

`A365006(n)-A186717(A017281(n))`
-/

namespace A379314.P17058111668894618060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365006 n - A186717 (A017281 n).toNat

end

end A379314.P17058111668894618060

/-! ## A379314.P12425223405713645044

`A379315(n)+A011738(A372651(n+1))`
-/

namespace A379314.P12425223405713645044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379315 n + A011738 (A372651 (n + 1)).toNat

end

end A379314.P12425223405713645044

/-! ## A379314.P7039796223087782113

`A379315(n)+A000035(A374828(3*n+7))`
-/

namespace A379314.P7039796223087782113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379315 n + A000035 (A374828 (3 * n + 7)).toNat

end

end A379314.P7039796223087782113

/-! ## A379314.P1216508300505799481

`A008289(A196423(n+1))%A320340(n+1)`
-/

namespace A379314.P1216508300505799481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008289 (A196423 (n + 1)).toNat) (A320340 (n + 1))

end

end A379314.P1216508300505799481

/-!
# A379315: Number of strict integer partitions of n with a unique 1 or prime part.

The programs for A379315, there is no canonical definition to state claims against.
-/

/-! ## A379315.P12969197018230602460

`A347705(∏{p}[A377903(n+1)+A085417(n+1), #-1])`
-/

namespace A379315.P12969197018230602460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377903 (n + 1) + A085417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347705 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)).toNat

end

end A379315.P12969197018230602460

/-!
# A379316: Positive integers whose prime indices include a unique squarefree number.

The programs for A379316, there is no canonical definition to state claims against.
-/

/-! ## A379316.P7521149196931645217

`eq[1, A379306(n+1)]+1`
-/

namespace A379316.P7521149196931645217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379306 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379316.P7521149196931645217

/-! ## A379316.P7591308348050452590

`eq[2, A379306(A004277(n))]`
-/

namespace A379316.P7591308348050452590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379306 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379316.P7591308348050452590

/-! ## A379316.P10484629547766036559

`eq[A037234(n), A066781(A112798(n+2))]`
-/

namespace A379316.P10484629547766036559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (A112798 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379316.P10484629547766036559

/-!
# A379317: Positive integers with a unique even prime index.

The programs for A379317, there is no canonical definition to state claims against.
-/

/-! ## A379317.P13519845262781629087

`eq[1, A257992(n+1)]+1`
-/

namespace A379317.P13519845262781629087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379317.P13519845262781629087

/-! ## A379317.P3927627204891135189

`lt[A353458(n+1), 0]+1`
-/

namespace A379317.P3927627204891135189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A379317.P3927627204891135189

/-! ## A379317.P4425966177033213129

`eq[1, A257992(A004277(n))]`
-/

namespace A379317.P4425966177033213129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379317.P4425966177033213129

/-! ## A379317.P2513521017763010417

`eq[1, A257992(A008574(n))]`
-/

namespace A379317.P2513521017763010417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379317.P2513521017763010417

/-! ## A379317.P665306099140998451

`eq[1, A257992(A008706(n))]`
-/

namespace A379317.P665306099140998451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379317.P665306099140998451

/-! ## A379317.P9434559643330476119

`eq[1, A257992(A022144(n))]`
-/

namespace A379317.P9434559643330476119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379317.P9434559643330476119

/-! ## A379317.P11936715740055816067

`eq[1, A257992(A028310(n))]`
-/

namespace A379317.P11936715740055816067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379317.P11936715740055816067

/-! ## A379317.P4066402648183564503

`A020725(lt[A353458(n+1), 0])`
-/

namespace A379317.P4066402648183564503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A379317.P4066402648183564503

/-! ## A379317.P16863670837532688758

`A114637(lt[A353458(n+1), 0])`
-/

namespace A379317.P16863670837532688758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A379317.P16863670837532688758

/-! ## A379317.P2129679484207017211

`eq[1, A257992(A233583(n+1))]`
-/

namespace A379317.P2129679484207017211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379317.P2129679484207017211

/-!
# A379318: Odd numbers whose product of prime indices is a multiple of their sum of prime indices.

The programs for A379318, there is no canonical definition to state claims against.
-/

/-! ## A379318.P9478149890892806597

`∩[2*n+1, A326149(n+1)]`
-/

namespace A379318.P9478149890892806597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379318.P9478149890892806597

/-! ## A379318.P5882643840554614082

`record[A088492(A326149(n+2))]`
-/

namespace A379318.P5882643840554614082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088492 (A326149 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379318.P5882643840554614082

/-! ## A379318.P15237499297812701479

`filter[A326149(n+1), A000035(#)]`
-/

namespace A379318.P15237499297812701479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A379318.P15237499297812701479

/-! ## A379318.P7924891217784247119

`filter[A326149(n+1), A266070(#)]`
-/

namespace A379318.P7924891217784247119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A379318.P7924891217784247119

/-! ## A379318.P672502219218668039

`filter[A326149(n+1), A267155(#)]`
-/

namespace A379318.P672502219218668039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A379318.P672502219218668039

/-! ## A379318.P10097883480325583277

`filter[A326149(n+1), A360113(#)]`
-/

namespace A379318.P10097883480325583277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A379318.P10097883480325583277

/-! ## A379318.P7688426986591301641

`filter[A326149(n+1), A379952(#)]`
-/

namespace A379318.P7688426986591301641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A379318.P7688426986591301641

/-! ## A379318.P14404235656419488207

`filter[A326149(n+2), A118102(#)]`
-/

namespace A379318.P14404235656419488207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118102 (f1 j).toNat = 1) n)

end

end A379318.P14404235656419488207

/-! ## A379318.P8193241759995849042

`filter[A326149(n+2), A266719(#)]`
-/

namespace A379318.P8193241759995849042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A379318.P8193241759995849042

/-! ## A379318.P10012631993695494050

`filter[A326149(n+2), A267256(#)]`
-/

namespace A379318.P10012631993695494050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A379318.P10012631993695494050

/-!
# A379319: Even numbers whose product of prime indices is a multiple of their sum of prime indices.

The programs for A379319, there is no canonical definition to state claims against.
-/

/-! ## A379319.P17488409612902242414

`2*A380217(n+1)`
-/

namespace A379319.P17488409612902242414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A380217 (n + 1)

end

end A379319.P17488409612902242414

/-! ## A379319.P1218012931013013322

`∩[2*n, A326149(n+1)]`
-/

namespace A379319.P1218012931013013322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379319.P1218012931013013322

/-! ## A379319.P10280323107729837557

`A004277(A380217(n+1))`
-/

namespace A379319.P10280323107729837557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A380217 (n + 1)).toNat

end

end A379319.P10280323107729837557

/-! ## A379319.P16996083822068380223

`record[A038608(A326149(n+1))]`
-/

namespace A379319.P16996083822068380223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A326149 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379319.P16996083822068380223

/-! ## A379319.P3899199916389623436

`A004275(A380217(n+1)+1)`
-/

namespace A379319.P3899199916389623436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A380217 (n + 1) + 1).toNat

end

end A379319.P3899199916389623436

/-!
# A379320: Number of integer partitions of n whose product is a multiple of n + 1.

The programs for A379320, there is no canonical definition to state claims against.
-/

/-! ## A379320.P17707677691517623824

`A057568(n+1)-A379734(n+1)`
-/

namespace A379320.P17707677691517623824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057568 (n + 1) - A379734 (n + 1)

end

end A379320.P17707677691517623824

/-!
# A379323: Decimal expansion of log((2*5! + (8 - 1)!)^sqrt(9) + 4! + (3!)!)/sqrt(67).

The programs for A379323, there is no canonical definition to state claims against.
-/

/-! ## A379323.P10757306601224450307

`A185294(A307370(n))+A000796(n)`
-/

namespace A379323.P10757306601224450307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185294 (A307370 n).toNat + A000796 (n + 1)

end

end A379323.P10757306601224450307

/-! ## A379323.P17895201238974027357

`A347706(A147136(n+1))+A000796(n)`
-/

namespace A379323.P17895201238974027357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347706 (A147136 (n + 1)).toNat + A000796 (n + 1)

end

end A379323.P17895201238974027357

/-! ## A379323.P4983296899354695375

`A347706(A147136(n+1))+9-A030644(n)`
-/

namespace A379323.P4983296899354695375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347706 (A147136 (n + 1)).toNat + (9 - A030644 (n + 1))

end

end A379323.P4983296899354695375

/-! ## A379323.P7852523788272737761

`or(A000796(n), A286807(A332843(3*n+5)))`
-/

namespace A379323.P7852523788272737761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000796 (n + 1)) (A286807 (A332843 (3 * n + 5)).toNat)

end

end A379323.P7852523788272737761

/-! ## A379323.P12333341068656704858

`A347706(A147136(n+1))+A001355(Δ[n²])`
-/

namespace A379323.P12333341068656704858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347706 (A147136 (n + 1)).toNat + A001355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A379323.P12333341068656704858

/-!
# A379325: Largest primitive practical number p that divides the n-th practical number - A005153(n) such that the radical of the quotient A005153(n)/p is a divisor of p.

The programs for A379325, there is no canonical definition to state claims against.
-/

/-! ## A379325.P4754892805499870310

`A341866(A007918(n))*A378202(n+1)`
-/

namespace A379325.P4754892805499870310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341866 (A007918 n).toNat * A378202 (n + 1)

end

end A379325.P4754892805499870310

/-! ## A379325.P2029670687346005544

`A378202(n+1)%A005117(A025398(n+1))`
-/

namespace A379325.P2029670687346005544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378202 (n + 1)) (A005117 (A025398 (n + 1)).toNat)

end

end A379325.P2029670687346005544

/-! ## A379325.P15936517577804093273

`A327832(A282689(2*(n+2)))*A378202(n+1)`
-/

namespace A379325.P15936517577804093273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (A282689 (2 * (n + 2))).toNat * A378202 (n + 1)

end

end A379325.P15936517577804093273

/-! ## A379325.P578980600999397288

`A378202(n+1)%A033274(A019565(n))`
-/

namespace A379325.P578980600999397288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378202 (n + 1)) (A033274 (A019565 n).toNat)

end

end A379325.P578980600999397288

/-! ## A379325.P14939555344127300478

`A005171((A378202(n+1)+1)²)*A378202(n+1)`
-/

namespace A379325.P14939555344127300478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 ((A378202 (n + 1) + 1) ^ 2).toNat * A378202 (n + 1)

end

end A379325.P14939555344127300478

/-! ## A379325.P4256609903603514433

`lcm(A033999(A262495(n)), A378202(n+1))`
-/

namespace A379325.P4256609903603514433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (A262495 n).toNat) (A378202 (n + 1))

end

end A379325.P4256609903603514433

/-! ## A379325.P8994845497729452910

`A378214(A320384(n+5))+A378202(n+1)`
-/

namespace A379325.P8994845497729452910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378214 (A320384 (n + 5)).toNat + A378202 (n + 1)

end

end A379325.P8994845497729452910

/-! ## A379325.P410018689933417107

`A378215(A299256(2*(n+1)))+A378202(n+1)`
-/

namespace A379325.P410018689933417107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378215 (A299256 (2 * (n + 1))).toNat + A378202 (n + 1)

end

end A379325.P410018689933417107

/-! ## A379325.P320893683566167623

`gcd(A240544(n+1), A378202(n+1))`
-/

namespace A379325.P320893683566167623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A240544 (n + 1)) (A378202 (n + 1))

end

end A379325.P320893683566167623

/-!
# A379327: G.f. A(x) satisfies A(x) = sqrt( (1 + 2*x*A(x)^2) * (1 + 2*x*A(x)) ).

The programs for A379327, there is no canonical definition to state claims against.
-/

/-! ## A379327.P16109966258057072919

`A285758(A000110(n)*A026352(n))`
-/

namespace A379327.P16109966258057072919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285758 (A000110 n * A026352 n).toNat

end

end A379327.P16109966258057072919

/-! ## A379327.P7438267431708334521

`A333080(n)+A130496(A006927(2*(n+1)))`
-/

namespace A379327.P7438267431708334521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333080 n + A130496 (A006927 (2 * (n + 1))).toNat

end

end A379327.P7438267431708334521

/-! ## A379327.P1519704108985543324

`A083919(A370891(n))+A063895(2*n+3)`
-/

namespace A379327.P1519704108985543324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083919 (A370891 n).toNat + A063895 (2 * n + 3)

end

end A379327.P1519704108985543324

/-!
# A379328: G.f. A(x) satisfies A(x) = sqrt( (1 + 2*x*A(x)^3) * (1 + 2*x*A(x)) ).

The programs for A379328, there is no canonical definition to state claims against.
-/

/-! ## A379328.P8037016647054120649

`A007843(A289208(n))`
-/

namespace A379328.P8037016647054120649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (A289208 n).toNat

end

end A379328.P8037016647054120649

/-! ## A379328.P5824141977458524980

`ceil(2^(n-1))*A101776(A004111(3*n))`
-/

namespace A379328.P5824141977458524980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A101776 (A004111 (3 * n)).toNat

end

end A379328.P5824141977458524980

/-!
# A379329: G.f. A(x) satisfies A(x) = 1/sqrt( (1 - 2*x) * (1 - 2*x*A(x)) ).

The programs for A379329, there is no canonical definition to state claims against.
-/

/-! ## A379329.P10598123088660631138

`A008620(A033543(n+1)+A003415(n))`
-/

namespace A379329.P10598123088660631138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A033543 (n + 1) + A003415 n).toNat

end

end A379329.P10598123088660631138

/-! ## A379329.P12978642975497610227

`A349536(A150145(n))`
-/

namespace A379329.P12978642975497610227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (A150145 n).toNat

end

end A379329.P12978642975497610227

/-!
# A379330: G.f. A(x) satisfies A(x) = 1/sqrt( (1 - 2*x*A(x)^2) * (1 - 2*x*A(x)) ).

The programs for A379330, there is no canonical definition to state claims against.
-/

/-! ## A379330.P902318702648140582

`A095254(A183160(n))-n`
-/

namespace A379330.P902318702648140582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095254 (A183160 n).toNat - (n : ℤ)

end

end A379330.P902318702648140582

/-!
# A379331: G.f. A(x) satisfies A(x) = 1/sqrt( (1 - 2*x*A(x)^3) * (1 - 2*x*A(x)) ).

The programs for A379331, there is no canonical definition to state claims against.
-/

/-! ## A379331.P3090554815018399785

`A070320(A000888(n)+1)`
-/

namespace A379331.P3090554815018399785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070320 (A000888 n + 1).toNat

end

end A379331.P3090554815018399785

/-!
# A379333: Numbers k such that lambda(k)^k == lambda(k) (mod k), where lambda = A002322.

The programs for A379333, there is no canonical definition to state claims against.
-/

/-! ## A379333.P2861958400248008020

`eq[A278222(A336125(n+1)), A378602(n+1)]+1`
-/

namespace A379333.P2861958400248008020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A336125 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378602 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A379333.P2861958400248008020

/-! ## A379333.P16499324239347085358

`∑[A058263(Δ[A365072(2*n)])]`
-/

namespace A379333.P16499324239347085358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365072 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379333.P16499324239347085358

/-! ## A379333.P11799629639664183598

`eq[A107286(n), A329766(A074206(n))]`
-/

namespace A379333.P11799629639664183598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329766 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379333.P11799629639664183598

/-! ## A379333.P15761352079068893377

`lt[A107393(n), A301924(A020639(n+2))]`
-/

namespace A379333.P15761352079068893377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301924 (A020639 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379333.P15761352079068893377

/-! ## A379333.P833359113574107062

`eq[A008290(A333940(2*n+3)), A326644(2*n)]`
-/

namespace A379333.P833359113574107062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (A333940 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326644 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379333.P833359113574107062

/-!
# A379335: Number of subsets of {-n..n} whose sum of reciprocals is 1.

The programs for A379335, there is no canonical definition to state claims against.
-/

/-! ## A379335.P18237106744600481155

`∏[A100549(A078057(n))]`
-/

namespace A379335.P18237106744600481155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100549 (A078057 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A379335.P18237106744600481155

/-! ## A379335.P6906944226058856059

`∏[A191302(A347589(n))]`
-/

namespace A379335.P6906944226058856059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191302 (A347589 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A379335.P6906944226058856059

/-! ## A379335.P16000865180102107533

`∏[A020639(∑[A368095(n)])]`
-/

namespace A379335.P16000865180102107533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368095 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A379335.P16000865180102107533

/-! ## A379335.P5161822092145138827

`∏[A036452(A068904(n+1))]`
-/

namespace A379335.P5161822092145138827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (A068904 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A379335.P5161822092145138827

/-! ## A379335.P12558797089066242316

`∏[A129654(A120430(n+1))]`
-/

namespace A379335.P12558797089066242316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (A120430 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A379335.P12558797089066242316

/-!
# A379336: Numbers k such that there exists a divisor pair (d, d/k) such that one neither divides nor is coprime to the other.

The programs for A379336, the canonical program `A379336.P4604804875248092193` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379336 has offset 1).

The definition of A379336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379336.P4604804875248092193

`∪[A375055(n+1), A378767(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A379336

/-- `∪[A375055(n+1), A378767(n+1)]` -/
def P4604804875248092193.Spec : Prop :=
  ∀ n, (P4604804875248092193.a n : ℤ) = A379336 (n + 1)

theorem P4604804875248092193.correct : P4604804875248092193.Spec := by
  intro n
  simp only [A379336, Nat.add_sub_cancel]

end A379336

/-! ## A379336.P7978308756207761632

`lt[A056624(n+1), A340596(n+1)]+1`
-/

namespace A379336.P7978308756207761632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340596 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A379336.P7978308756207761632

namespace A379336

/-- `lt[A056624(n+1), A340596(n+1)]+1` -/
def P7978308756207761632.Spec : Prop :=
  ∀ n, (P7978308756207761632.a n : ℤ) = A379336 (n + 1)

end A379336

/-! ## A379336.P5447679502665777712

`filter[A317534(n+1), A143731(#)]`
-/

namespace A379336.P5447679502665777712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A379336.P5447679502665777712

namespace A379336

/-- `filter[A317534(n+1), A143731(#)]` -/
def P5447679502665777712.Spec : Prop :=
  ∀ n, P5447679502665777712.a n = A379336 (n + 1)

end A379336

/-! ## A379336.P6574699538671926394

`filter[A317534(n+1), A355447(#)]`
-/

namespace A379336.P6574699538671926394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A379336.P6574699538671926394

namespace A379336

/-- `filter[A317534(n+1), A355447(#)]` -/
def P6574699538671926394.Spec : Prop :=
  ∀ n, P6574699538671926394.a n = A379336 (n + 1)

end A379336

/-! ## A379336.P6405934864791194523

`∩[A024619(n+1), A317534(n+1)]`
-/

namespace A379336.P6405934864791194523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379336.P6405934864791194523

namespace A379336

/-- `∩[A024619(n+1), A317534(n+1)]` -/
def P6405934864791194523.Spec : Prop :=
  ∀ n, (P6405934864791194523.a n : ℤ) = A379336 (n + 1)

end A379336

/-! ## A379336.P1963166849524185424

`∩[A074739(n+1), A317534(n+1)]`
-/

namespace A379336.P1963166849524185424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379336.P1963166849524185424

namespace A379336

/-- `∩[A074739(n+1), A317534(n+1)]` -/
def P1963166849524185424.Spec : Prop :=
  ∀ n, (P1963166849524185424.a n : ℤ) = A379336 (n + 1)

end A379336

/-! ## A379336.P1015871473986404789

`∩[A085971(n+1), A317534(n+1)]`
-/

namespace A379336.P1015871473986404789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379336.P1015871473986404789

namespace A379336

/-- `∩[A085971(n+1), A317534(n+1)]` -/
def P1015871473986404789.Spec : Prop :=
  ∀ n, (P1015871473986404789.a n : ℤ) = A379336 (n + 1)

end A379336

/-! ## A379336.P3961008034396178140

`∩[A102467(n+1), A317534(n+1)]`
-/

namespace A379336.P3961008034396178140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379336.P3961008034396178140

namespace A379336

/-- `∩[A102467(n+1), A317534(n+1)]` -/
def P3961008034396178140.Spec : Prop :=
  ∀ n, (P3961008034396178140.a n : ℤ) = A379336 (n + 1)

end A379336

/-! ## A379336.P4139856145268121907

`∩[A126706(n+1), A317534(n+1)]`
-/

namespace A379336.P4139856145268121907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379336.P4139856145268121907

namespace A379336

/-- `∩[A126706(n+1), A317534(n+1)]` -/
def P4139856145268121907.Spec : Prop :=
  ∀ n, (P4139856145268121907.a n : ℤ) = A379336 (n + 1)

end A379336

/-!
# A379338: Decimal expansion of 2*(2 - sqrt(3)).

The programs for A379338, there is no canonical definition to state claims against.
-/

/-! ## A379338.P15624623794130051276

`9-A010469(n+1)`
-/

namespace A379338.P15624623794130051276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A010469 (n + 1 + 1)

end

end A379338.P15624623794130051276

/-! ## A379338.P4865389526298695871

`9-A176394(n+1)`
-/

namespace A379338.P4865389526298695871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A176394 (n + 1 + 1)

end

end A379338.P4865389526298695871

/-! ## A379338.P1607909821498429614

`9-A343199(n+1)`
-/

namespace A379338.P1607909821498429614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A343199 (n + 1 + 1)

end

end A379338.P1607909821498429614

/-! ## A379338.P9092457244206874708

`9-A343964(n+2)`
-/

namespace A379338.P9092457244206874708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A343964 (n + 2 + 2)

end

end A379338.P9092457244206874708

/-!
# A379341: Population of elementary triangular automaton rule 50 at generation n, starting from a lone 1 cell at generation 0.

The programs for A379341, there is no canonical definition to state claims against.
-/

/-! ## A379341.P11750207016769613258

`eq[A035222(n), A232988(n)]`
-/

namespace A379341.P11750207016769613258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379341.P11750207016769613258

/-! ## A379341.P12835561877675670409

`A321091(A104350(n+1))*A326712(n+1)`
-/

namespace A379341.P12835561877675670409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321091 (A104350 (n + 1)).toNat * A326712 (n + 1)

end

end A379341.P12835561877675670409

/-!
# A379342: a(n) = A378684(A378684(n)).

The programs for A379342, the canonical program `A379342.P3691008895860038562` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379342 has offset 1).

The definition of A379342 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378684, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379342.P3691008895860038562

`A378684(A378684(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A379342

/-- `A378684(A378684(n+1))` -/
def P3691008895860038562.Spec : Prop :=
  ∀ n, P3691008895860038562.a n = A379342 (n + 1)

theorem P3691008895860038562.correct : P3691008895860038562.Spec := by
  intro n
  simp only [A379342, Nat.add_sub_cancel]

end A379342

/-! ## A379342.P11625231679936140572

`A376214(A380200(n+1))`
-/

namespace A379342.P11625231679936140572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A380200 (n + 1)).toNat

end

end A379342.P11625231679936140572

namespace A379342

/-- `A376214(A380200(n+1))` -/
def P11625231679936140572.Spec : Prop :=
  ∀ n, P11625231679936140572.a n = A379342 (n + 1)

end A379342

/-! ## A379342.P16598080848846445184

`A380245(A376214(n+1))`
-/

namespace A379342.P16598080848846445184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (A376214 (n + 1)).toNat

end

end A379342.P16598080848846445184

namespace A379342

/-- `A380245(A376214(n+1))` -/
def P16598080848846445184.Spec : Prop :=
  ∀ n, P16598080848846445184.a n = A379342 (n + 1)

end A379342

/-! ## A379342.P416683920809561575

`A378762(A378200(n+1))`
-/

namespace A379342.P416683920809561575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378762 (A378200 (n + 1)).toNat

end

end A379342.P416683920809561575

namespace A379342

/-- `A378762(A378200(n+1))` -/
def P416683920809561575.Spec : Prop :=
  ∀ n, P416683920809561575.a n = A379342 (n + 1)

end A379342

/-! ## A379342.P7476472257193436572

`A378705(A378705(n+1))`
-/

namespace A379342.P7476472257193436572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (A378705 (n + 1)).toNat

end

end A379342.P7476472257193436572

namespace A379342

/-- `A378705(A378705(n+1))` -/
def P7476472257193436572.Spec : Prop :=
  ∀ n, P7476472257193436572.a n = A379342 (n + 1)

end A379342

/-! ## A379342.P9383274343146110906

`A381663(A379343(n+1))`
-/

namespace A379342.P9383274343146110906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381663 (A379343 (n + 1)).toNat

end

end A379342.P9383274343146110906

namespace A379342

/-- `A381663(A379343(n+1))` -/
def P9383274343146110906.Spec : Prop :=
  ∀ n, P9383274343146110906.a n = A379342 (n + 1)

end A379342

/-! ## A379342.P15734636120785685857

`A379343(A381664(n+1))`
-/

namespace A379342.P15734636120785685857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A381664 (n + 1)).toNat

end

end A379342.P15734636120785685857

namespace A379342

/-- `A379343(A381664(n+1))` -/
def P15734636120785685857.Spec : Prop :=
  ∀ n, P15734636120785685857.a n = A379342 (n + 1)

end A379342

/-! ## A379342.P562403347194182135

`A380817(A380245(n+1))`
-/

namespace A379342.P562403347194182135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A380245 (n + 1)).toNat

end

end A379342.P562403347194182135

namespace A379342

/-- `A380817(A380245(n+1))` -/
def P562403347194182135.Spec : Prop :=
  ∀ n, P562403347194182135.a n = A379342 (n + 1)

end A379342

/-! ## A379342.P17364277283255844371

`A380815(A380817(n+1))`
-/

namespace A379342.P17364277283255844371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380815 (A380817 (n + 1)).toNat

end

end A379342.P17364277283255844371

namespace A379342

/-- `A380815(A380817(n+1))` -/
def P17364277283255844371.Spec : Prop :=
  ∀ n, P17364277283255844371.a n = A379342 (n + 1)

end A379342

/-! ## A379342.P1080072419282354972

`A380200(A381662(n+1))`
-/

namespace A379342.P1080072419282354972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (A381662 (n + 1)).toNat

end

end A379342.P1080072419282354972

namespace A379342

/-- `A380200(A381662(n+1))` -/
def P1080072419282354972.Spec : Prop :=
  ∀ n, P1080072419282354972.a n = A379342 (n + 1)

end A379342

/-! ## A379342.P513654080906649046

`A381662(A380815(n+1))`
-/

namespace A379342.P513654080906649046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381662 (A380815 (n + 1)).toNat

end

end A379342.P513654080906649046

namespace A379342

/-- `A381662(A380815(n+1))` -/
def P513654080906649046.Spec : Prop :=
  ∀ n, P513654080906649046.a n = A379342 (n + 1)

end A379342

/-! ## A379342.P5849643626171569327

`A381664(A381663(n+1))`
-/

namespace A379342.P5849643626171569327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381664 (A381663 (n + 1)).toNat

end

end A379342.P5849643626171569327

namespace A379342

/-- `A381664(A381663(n+1))` -/
def P5849643626171569327.Spec : Prop :=
  ∀ n, P5849643626171569327.a n = A379342 (n + 1)

end A379342

/-! ## A379342.P11794130789707648351

`A056023(A380200(A056023(n+1)))`
-/

namespace A379342.P11794130789707648351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A380200 (A056023 (n + 1)).toNat).toNat

end

end A379342.P11794130789707648351

namespace A379342

/-- `A056023(A380200(A056023(n+1)))` -/
def P11794130789707648351.Spec : Prop :=
  ∀ n, P11794130789707648351.a n = A379342 (n + 1)

end A379342

/-! ## A379342.P14120829926835329148

`A056023(A380245(A378762(n+1)))`
-/

namespace A379342.P14120829926835329148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A380245 (A378762 (n + 1)).toNat).toNat

end

end A379342.P14120829926835329148

namespace A379342

/-- `A056023(A380245(A378762(n+1)))` -/
def P14120829926835329148.Spec : Prop :=
  ∀ n, P14120829926835329148.a n = A379342 (n + 1)

end A379342

/-! ## A379342.P11682980388221087694

`A376214(A378200(A383589(n+1)))`
-/

namespace A379342.P11682980388221087694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A378200 (A383589 (n + 1)).toNat).toNat

end

end A379342.P11682980388221087694

namespace A379342

/-- `A376214(A378200(A383589(n+1)))` -/
def P11682980388221087694.Spec : Prop :=
  ∀ n, P11682980388221087694.a n = A379342 (n + 1)

end A379342

/-! ## A379342.P17177416651602592184

`A378200(A376214(A383723(n+1)))`
-/

namespace A379342.P17177416651602592184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A376214 (A383723 (n + 1)).toNat).toNat

end

end A379342.P17177416651602592184

namespace A379342

/-- `A378200(A376214(A383723(n+1)))` -/
def P17177416651602592184.Spec : Prop :=
  ∀ n, P17177416651602592184.a n = A379342 (n + 1)

end A379342

/-! ## A379342.P16835681845372249921

`A381968(A379343(A382499(n+1)))`
-/

namespace A379342.P16835681845372249921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A379343 (A382499 (n + 1)).toNat).toNat

end

end A379342.P16835681845372249921

namespace A379342

/-- `A381968(A379343(A382499(n+1)))` -/
def P16835681845372249921.Spec : Prop :=
  ∀ n, P16835681845372249921.a n = A379342 (n + 1)

end A379342

/-! ## A379342.P14417202803893593878

`A382680(A379343(A381968(n+1)))`
-/

namespace A379342.P14417202803893593878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A379343 (A381968 (n + 1)).toNat).toNat

end

end A379342.P14417202803893593878

namespace A379342

/-- `A382680(A379343(A381968(n+1)))` -/
def P14417202803893593878.Spec : Prop :=
  ∀ n, P14417202803893593878.a n = A379342 (n + 1)

end A379342

/-! ## A379342.P1408504571938218605

`A382499(A379343(A382679(n+1)))`
-/

namespace A379342.P1408504571938218605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A379343 (A382679 (n + 1)).toNat).toNat

end

end A379342.P1408504571938218605

namespace A379342

/-- `A382499(A379343(A382679(n+1)))` -/
def P1408504571938218605.Spec : Prop :=
  ∀ n, P1408504571938218605.a n = A379342 (n + 1)

end A379342

/-! ## A379342.P8034706959146676366

`A378200(A383722(A382680(n+1)))`
-/

namespace A379342.P8034706959146676366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A383722 (A382680 (n + 1)).toNat).toNat

end

end A379342.P8034706959146676366

namespace A379342

/-- `A378200(A383722(A382680(n+1)))` -/
def P8034706959146676366.Spec : Prop :=
  ∀ n, P8034706959146676366.a n = A379342 (n + 1)

end A379342

/-!
# A379343: Square array read by upward antidiagonals: T(n,k) = (2*(k+n-1)^2 + 2*k - 2*n + 3 + (-2*k - 2*n + 3)*(-1)^n - (-1)^k + (-2*k - 2*n + 1)*(-1)^(k+n))/4.

The programs for A379343, the canonical program `A379343.P2690974883127903731` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379343 has offset 1).

The definition of A379343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379343.P10606199901782426148

`A199855(A213205(n+1))`
-/

namespace A379343.P10606199901782426148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199855 (A213205 (n + 1)).toNat

end

end A379343.P10606199901782426148

namespace A379343

/-- `A199855(A213205(n+1))` -/
def P10606199901782426148.Spec : Prop :=
  ∀ n, P10606199901782426148.a n = A379343 (n + 1)

end A379343

/-! ## A379343.P11063820463132530885

`A213196(A213171(n+1))`
-/

namespace A379343.P11063820463132530885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213196 (A213171 (n + 1)).toNat

end

end A379343.P11063820463132530885

namespace A379343

/-- `A213196(A213171(n+1))` -/
def P11063820463132530885.Spec : Prop :=
  ∀ n, P11063820463132530885.a n = A379343 (n + 1)

end A379343

/-! ## A379343.P1233711732753795305

`A378684(A376214(n+1))`
-/

namespace A379343.P1233711732753795305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A376214 (n + 1)).toNat

end

end A379343.P1233711732753795305

namespace A379343

/-- `A378684(A376214(n+1))` -/
def P1233711732753795305.Spec : Prop :=
  ∀ n, P1233711732753795305.a n = A379343 (n + 1)

end A379343

/-! ## A379343.P1346484727427006874

`A376214(A381663(n+1))`
-/

namespace A379343.P1346484727427006874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A381663 (n + 1)).toNat

end

end A379343.P1346484727427006874

namespace A379343

/-- `A376214(A381663(n+1))` -/
def P1346484727427006874.Spec : Prop :=
  ∀ n, P1346484727427006874.a n = A379343 (n + 1)

end A379343

/-! ## A379343.P12478069997421293718

`A379342(A380245(n+1))`
-/

namespace A379343.P12478069997421293718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (A380245 (n + 1)).toNat

end

end A379343.P12478069997421293718

namespace A379343

/-- `A379342(A380245(n+1))` -/
def P12478069997421293718.Spec : Prop :=
  ∀ n, P12478069997421293718.a n = A379343 (n + 1)

end A379343

/-! ## A379343.P10359653717465562364

`A380815(A379342(n+1))`
-/

namespace A379343.P10359653717465562364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380815 (A379342 (n + 1)).toNat

end

end A379343.P10359653717465562364

namespace A379343

/-- `A380815(A379342(n+1))` -/
def P10359653717465562364.Spec : Prop :=
  ∀ n, P10359653717465562364.a n = A379343 (n + 1)

end A379343

/-! ## A379343.P479335719401888907

`A381662(A378684(n+1))`
-/

namespace A379343.P479335719401888907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381662 (A378684 (n + 1)).toNat

end

end A379343.P479335719401888907

namespace A379343

/-- `A381662(A378684(n+1))` -/
def P479335719401888907.Spec : Prop :=
  ∀ n, P479335719401888907.a n = A379343 (n + 1)

end A379343

/-! ## A379343.P15436076394407450479

`A380200(A380200(n+1))`
-/

namespace A379343.P15436076394407450479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (A380200 (n + 1)).toNat

end

end A379343.P15436076394407450479

namespace A379343

/-- `A380200(A380200(n+1))` -/
def P15436076394407450479.Spec : Prop :=
  ∀ n, P15436076394407450479.a n = A379343 (n + 1)

end A379343

/-! ## A379343.P6127643865675214113

`A380245(A380815(n+1))`
-/

namespace A379343.P6127643865675214113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (A380815 (n + 1)).toNat

end

end A379343.P6127643865675214113

namespace A379343

/-- `A380245(A380815(n+1))` -/
def P6127643865675214113.Spec : Prop :=
  ∀ n, P6127643865675214113.a n = A379343 (n + 1)

end A379343

/-! ## A379343.P11127534863478196633

`A383589(A378705(n+1))`
-/

namespace A379343.P11127534863478196633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383589 (A378705 (n + 1)).toNat

end

end A379343.P11127534863478196633

namespace A379343

/-- `A383589(A378705(n+1))` -/
def P11127534863478196633.Spec : Prop :=
  ∀ n, P11127534863478196633.a n = A379343 (n + 1)

end A379343

/-! ## A379343.P5661355226813662186

`A378705(A383723(n+1))`
-/

namespace A379343.P5661355226813662186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (A383723 (n + 1)).toNat

end

end A379343.P5661355226813662186

namespace A379343

/-- `A378705(A383723(n+1))` -/
def P5661355226813662186.Spec : Prop :=
  ∀ n, P5661355226813662186.a n = A379343 (n + 1)

end A379343

/-! ## A379343.P13168528772875263197

`A381663(A380817(n+1))`
-/

namespace A379343.P13168528772875263197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381663 (A380817 (n + 1)).toNat

end

end A379343.P13168528772875263197

namespace A379343

/-- `A381663(A380817(n+1))` -/
def P13168528772875263197.Spec : Prop :=
  ∀ n, P13168528772875263197.a n = A379343 (n + 1)

end A379343

/-! ## A379343.P17491957583286082874

`A380817(A381664(n+1))`
-/

namespace A379343.P17491957583286082874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A381664 (n + 1)).toNat

end

end A379343.P17491957583286082874

namespace A379343

/-- `A380817(A381664(n+1))` -/
def P17491957583286082874.Spec : Prop :=
  ∀ n, P17491957583286082874.a n = A379343 (n + 1)

end A379343

/-! ## A379343.P5969138802341210260

`A381664(A381662(n+1))`
-/

namespace A379343.P5969138802341210260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381664 (A381662 (n + 1)).toNat

end

end A379343.P5969138802341210260

namespace A379343

/-- `A381664(A381662(n+1))` -/
def P5969138802341210260.Spec : Prop :=
  ∀ n, P5969138802341210260.a n = A379343 (n + 1)

end A379343

/-! ## A379343.P2690974883127903731

`A056023(A378684(A056023(n+1)))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A379343

/-- `A056023(A378684(A056023(n+1)))` -/
def P2690974883127903731.Spec : Prop :=
  ∀ n, P2690974883127903731.a n = A379343 (n + 1)

theorem P2690974883127903731.correct : P2690974883127903731.Spec := by
  intro n
  simp only [A379343, Nat.add_sub_cancel]

end A379343

/-! ## A379343.P3394146116704548292

`A056023(A381664(A378762(n+1)))`
-/

namespace A379343.P3394146116704548292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A381664 (A378762 (n + 1)).toNat).toNat

end

end A379343.P3394146116704548292

namespace A379343

/-- `A056023(A381664(A378762(n+1)))` -/
def P3394146116704548292.Spec : Prop :=
  ∀ n, P3394146116704548292.a n = A379343 (n + 1)

end A379343

/-! ## A379343.P5421586037757026410

`A378200(A380817(A378200(n+1)))`
-/

namespace A379343.P5421586037757026410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A380817 (A378200 (n + 1)).toNat).toNat

end

end A379343.P5421586037757026410

namespace A379343

/-- `A378200(A380817(A378200(n+1)))` -/
def P5421586037757026410.Spec : Prop :=
  ∀ n, P5421586037757026410.a n = A379343 (n + 1)

end A379343

/-! ## A379343.P16435895623969093082

`A378200(A380815(A383589(n+1)))`
-/

namespace A379343.P16435895623969093082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A380815 (A383589 (n + 1)).toNat).toNat

end

end A379343.P16435895623969093082

namespace A379343

/-- `A378200(A380815(A383589(n+1)))` -/
def P16435895623969093082.Spec : Prop :=
  ∀ n, P16435895623969093082.a n = A379343 (n + 1)

end A379343

/-! ## A379343.P12487218723454641262

`A378684(A382679(A381968(n+1)))`
-/

namespace A379343.P12487218723454641262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A382679 (A381968 (n + 1)).toNat).toNat

end

end A379343.P12487218723454641262

namespace A379343

/-- `A378684(A382679(A381968(n+1)))` -/
def P12487218723454641262.Spec : Prop :=
  ∀ n, P12487218723454641262.a n = A379343 (n + 1)

end A379343

/-! ## A379343.P15899901989407927663

`A378684(A381968(A382680(n+1)))`
-/

namespace A379343.P15899901989407927663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A381968 (A382680 (n + 1)).toNat).toNat

end

end A379343.P15899901989407927663

namespace A379343

/-- `A378684(A381968(A382680(n+1)))` -/
def P15899901989407927663.Spec : Prop :=
  ∀ n, P15899901989407927663.a n = A379343 (n + 1)

end A379343

/-!
# A379345: Number of integers of the form k^2 - 1 whose greatest prime factor is at most prime(n).

The programs for A379345, there is no canonical definition to state claims against.
-/

/-! ## A379345.P15817794426882506597

`∑[A181471(n+1)]`
-/

namespace A379345.P15817794426882506597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379345.P15817794426882506597

/-! ## A379345.P2998889641755746611

`∑[record[A181471(A257213(n))]]`
-/

namespace A379345.P2998889641755746611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181471 (A257213 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379345.P2998889641755746611

/-! ## A379345.P16538993441813641412

`∑[record[A181471(A304740(n))]]`
-/

namespace A379345.P16538993441813641412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181471 (A304740 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379345.P16538993441813641412

/-! ## A379345.P2132578931105174945

`lt[A223701(n+1), A223701(A028310(n))]`
-/

namespace A379345.P2132578931105174945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223701 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379345.P2132578931105174945

/-! ## A379345.P11064941733417642831

`∑[A316340(A188573(n))+A026924(3*n+5)]`
-/

namespace A379345.P11064941733417642831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316340 (A188573 n).toNat + A026924 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379345.P11064941733417642831

/-!
# A379351: a(n) is the greatest prime factor of n^2 + 2.

The programs for A379351, the canonical program `A379351.P3218989933823751428` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379351 has offset 0).

The definition of A379351 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379351.P3218989933823751428

`A006530(A059100(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A379351

/-- `A006530(A059100(n))` -/
def P3218989933823751428.Spec : Prop :=
  ∀ n, P3218989933823751428.a n = A379351 n

theorem P3218989933823751428.correct : P3218989933823751428.Spec := by
  intro n
  simp only [A379351]

end A379351

/-! ## A379351.P11494764584777945965

`A006530(n²+2)`
-/

namespace A379351.P11494764584777945965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n ^ 2 + 2)

end

end A379351.P11494764584777945965

namespace A379351

/-- `A006530(n²+2)` -/
def P11494764584777945965.Spec : Prop :=
  ∀ n, P11494764584777945965.a n = A379351 n

end A379351

/-! ## A379351.P10528991991499733996

`A000040(A061395(n²+2))`
-/

namespace A379351.P10528991991499733996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (n ^ 2 + 2)).toNat

end

end A379351.P10528991991499733996

namespace A379351

/-- `A000040(A061395(n²+2))` -/
def P10528991991499733996.Spec : Prop :=
  ∀ n, P10528991991499733996.a n = A379351 n

end A379351

/-! ## A379351.P13464682804563741455

`A000027(A006530(n*n+2))`
-/

namespace A379351.P13464682804563741455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A006530 (n * n + 2)).toNat

end

end A379351.P13464682804563741455

namespace A379351

/-- `A000027(A006530(n*n+2))` -/
def P13464682804563741455.Spec : Prop :=
  ∀ n, P13464682804563741455.a n = A379351 n

end A379351

/-! ## A379351.P16468828546569851135

`or(n%2, A006530(A000290(n)+2))`
-/

namespace A379351.P16468828546569851135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A006530 (A000290 n + 2).toNat)

end

end A379351.P16468828546569851135

namespace A379351

/-- `or(n%2, A006530(A000290(n)+2))` -/
def P16468828546569851135.Spec : Prop :=
  ∀ n, P16468828546569851135.a n = A379351 n

end A379351

/-! ## A379351.P14660201231758839299

`A345931(A345931(n²+2))`
-/

namespace A379351.P14660201231758839299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (A345931 (n ^ 2 + 2)).toNat

end

end A379351.P14660201231758839299

namespace A379351

/-- `A345931(A345931(n²+2))` -/
def P14660201231758839299.Spec : Prop :=
  ∀ n, P14660201231758839299.a n = A379351 n

end A379351

/-! ## A379351.P1477722797834958230

`A111089(n²+2)`
-/

namespace A379351.P1477722797834958230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n ^ 2 + 2)

end

end A379351.P1477722797834958230

namespace A379351

/-- `A111089(n²+2)` -/
def P1477722797834958230.Spec : Prop :=
  ∀ n, P1477722797834958230.a n = A379351 n

end A379351

/-!
# A379353: Connected domination number of the n-triangular grid graph.

The programs for A379353, there is no canonical definition to state claims against.
-/

/-! ## A379353.P14521023511895277026

`A363694(n+1)+A258376(n+1)`
-/

namespace A379353.P14521023511895277026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363694 (n + 1) + A258376 (n + 1)

end

end A379353.P14521023511895277026

/-!
# A379363: Numerators of the partial sums of the reciprocals of Pillai's arithmetical function (A018804).

The programs for A379363, there is no canonical definition to state claims against.
-/

/-! ## A379363.P4816672425670800338

`A320324(A322531(A322527(n+1)²))`
-/

namespace A379363.P4816672425670800338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320324 (A322531 (A322527 (n + 1) ^ 2).toNat).toNat

end

end A379363.P4816672425670800338

/-!
# A379364: Denominators of the partial sums of the reciprocals of Pillai's arithmetical function (A018804).

The programs for A379364, there is no canonical definition to state claims against.
-/

/-! ## A379364.P8887454416464103932

`lcm(A323921(A379366(n+1)), A379366(n+1))`
-/

namespace A379364.P8887454416464103932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A323921 (A379366 (n + 1)).toNat) (A379366 (n + 1))

end

end A379364.P8887454416464103932

/-! ## A379364.P8147542588623140111

`A336651(A000522(n))*A379366(n+1)`
-/

namespace A379364.P8147542588623140111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336651 (A000522 n).toNat * A379366 (n + 1)

end

end A379364.P8147542588623140111

/-! ## A379364.P7056364245094482910

`lcm(A323921(A000984(n)), A379366(n+1))`
-/

namespace A379364.P7056364245094482910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A323921 (A000984 n).toNat) (A379366 (n + 1))

end

end A379364.P7056364245094482910

/-!
# A379365: Numerators of the partial alternating sums of the reciprocals of Pillai's arithmetical function (A018804).

The programs for A379365, there is no canonical definition to state claims against.
-/

/-! ## A379365.P472077237611052359

`A162842(A102866(n))`
-/

namespace A379365.P472077237611052359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162842 (A102866 n).toNat

end

end A379365.P472077237611052359

/-!
# A379368: Denominators of the partial sums of the reciprocals of the squarefree kernel function (A007947).

The programs for A379368, there is no canonical definition to state claims against.
-/

/-! ## A379368.P14140671294074592696

`A007913(∏[∏{p}[(n+1)%(A259912(3*n+2)+1), #]])`
-/

namespace A379368.P14140671294074592696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A259912 (3 * n + 2) + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A379368.P14140671294074592696

/-! ## A379368.P3040286882898623657

`A007913(∏[∏{p}[n+1, #]])`
-/

namespace A379368.P3040286882898623657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A379368.P3040286882898623657

/-! ## A379368.P9204827026757218194

`A007913(∏[sqrt(∏{p}[2*n-(n-1), #²])])`
-/

namespace A379368.P9204827026757218194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, p ^ 2 : ℕ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A379368.P9204827026757218194

/-! ## A379368.P1572755068418524144

`A007913(A048803(n+1))`
-/

namespace A379368.P1572755068418524144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A048803 (n + 1)).toNat

end

end A379368.P1572755068418524144

/-! ## A379368.P9845056565138839976

`A372000(A032555(n+1))`
-/

namespace A379368.P9845056565138839976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372000 (A032555 (n + 1)).toNat

end

end A379368.P9845056565138839976

/-!
# A379370: Denominators of the partial alternating sums of the reciprocals of the squarefree kernel function (A007947).

The programs for A379370, there is no canonical definition to state claims against.
-/

/-! ## A379370.P7093632591429248323

`A380315(A077168(n))`
-/

namespace A379370.P7093632591429248323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380315 (A077168 n).toNat

end

end A379370.P7093632591429248323

/-! ## A379370.P11997939816886689655

`A380315(A043319(n+1))`
-/

namespace A379370.P11997939816886689655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380315 (A043319 (n + 1)).toNat

end

end A379370.P11997939816886689655

/-! ## A379370.P16305748603706311628

`A380315(A044916(n+1))`
-/

namespace A379370.P16305748603706311628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380315 (A044916 (n + 1)).toNat

end

end A379370.P16305748603706311628

/-! ## A379370.P7675869190301779197

`A380315(A055646(n+1))`
-/

namespace A379370.P7675869190301779197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380315 (A055646 (n + 1)).toNat

end

end A379370.P7675869190301779197

/-! ## A379370.P14905700632770482765

`A380315(A055647(n)+1)`
-/

namespace A379370.P14905700632770482765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380315 (A055647 n + 1).toNat

end

end A379370.P14905700632770482765

/-!
# A379372: Sphenic numbers k such that 2*k+1 is also a sphenic number.

The programs for A379372, the canonical program `A379372.P8846924178214362787` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379372 has offset 1).

The definition of A379372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1906 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379372.P8846924178214362787

`filter[A234099(n+1), A354926(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A379372

/-- `filter[A234099(n+1), A354926(#)]` -/
def P8846924178214362787.Spec : Prop :=
  ∀ n, P8846924178214362787.a n = A379372 (n + 1)

theorem P8846924178214362787.correct : P8846924178214362787.Spec := by
  intro n
  simp only [A379372, Nat.add_sub_cancel]

end A379372

/-! ## A379372.P10861625930624166318

`∩[A007304(n+1), A234099(n+1)]`
-/

namespace A379372.P10861625930624166318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379372.P10861625930624166318

namespace A379372

/-- `∩[A007304(n+1), A234099(n+1)]` -/
def P10861625930624166318.Spec : Prop :=
  ∀ n, (P10861625930624166318.a n : ℤ) = A379372 (n + 1)

end A379372

/-! ## A379372.P11909632023623436530

`∩[A111173(n+1), A117204(n+1)]`
-/

namespace A379372.P11909632023623436530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379372.P11909632023623436530

namespace A379372

/-- `∩[A111173(n+1), A117204(n+1)]` -/
def P11909632023623436530.Spec : Prop :=
  ∀ n, (P11909632023623436530.a n : ℤ) = A379372 (n + 1)

end A379372

/-!
# A379374: Irregular triangle read by rows in which row n lists the divisors of n except the divisors "e" described in A005279.

The programs for A379374, there is no canonical definition to state claims against.
-/

/-! ## A379374.P2145525662883691793

`lcm(A005361(A342889(n)), A210208(n+1))`
-/

namespace A379374.P2145525662883691793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005361 (A342889 n).toNat) (A210208 (n + 1))

end

end A379374.P2145525662883691793

/-! ## A379374.P16176532313178488805

`A027750(record[A338336(n+5)])`
-/

namespace A379374.P16176532313178488805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338336 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379374.P16176532313178488805

/-! ## A379374.P9614839693150492068

`A027750(A391623(n+1)%A376598(3*n+2))`
-/

namespace A379374.P9614839693150492068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (Int.tmod (A391623 (n + 1)) (A376598 (3 * n + 2))).toNat

end

end A379374.P9614839693150492068

/-! ## A379374.P14919947836840176927

`A027750(A335467(n+2)%A335469(3*n+4))`
-/

namespace A379374.P14919947836840176927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (Int.tmod (A335467 (n + 2)) (A335469 (3 * n + 4))).toNat

end

end A379374.P14919947836840176927

/-! ## A379374.P14696862160177332614

`A027750(A256474(n+1)%A344085(3*(n+1)))`
-/

namespace A379374.P14696862160177332614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (Int.tmod (A256474 (n + 1)) (A344085 (3 * (n + 1)))).toNat

end

end A379374.P14696862160177332614

/-!
# A379375: a(n) is the number of coincidences between the sequence thus far and its terms rearranged in descending order.

The programs for A379375, there is no canonical definition to state claims against.
-/

/-! ## A379375.P17755563258010647766

`A249615(A329863(n+1))`
-/

namespace A379375.P17755563258010647766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249615 (A329863 (n + 1)).toNat

end

end A379375.P17755563258010647766

/-! ## A379375.P8753956101831584627

`A275806(A177256(2*n+1)-(1-2*n%2))`
-/

namespace A379375.P8753956101831584627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A177256 (2 * n + 1) - (1 - ((2 * (n % 2) : ℕ) : ℤ))).toNat

end

end A379375.P8753956101831584627

/-! ## A379375.P10803029542944301856

`A001221(A123736(n+4)+A000081(n))`
-/

namespace A379375.P10803029542944301856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A123736 (n + 4) + A000081 n).toNat

end

end A379375.P10803029542944301856

/-! ## A379375.P14308021728378565511

`A257992(A048692(n+1))`
-/

namespace A379375.P14308021728378565511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A048692 (n + 1)).toNat

end

end A379375.P14308021728378565511

/-! ## A379375.P995327774819181475

`A307707(n+1)-A080116(A088726(n+3))`
-/

namespace A379375.P995327774819181475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (n + 1) - A080116 (A088726 (n + 3)).toNat

end

end A379375.P995327774819181475

/-!
# A379378: The n-th term of the n-th forward differences of partition numbers A000041.

The programs for A379378, there is no canonical definition to state claims against.
-/

/-! ## A379378.P1508414791387413207

`A175804(∑[4*n])`
-/

namespace A379378.P1508414791387413207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A379378.P1508414791387413207

/-! ## A379378.P16682062273528229740

`abs(A175804(A046092(n)))`
-/

namespace A379378.P16682062273528229740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A175804 (A046092 n).toNat|

end

end A379378.P16682062273528229740

/-! ## A379378.P14376626006884949700

`or(A000007(n), A175804(A046092(n)))`
-/

namespace A379378.P14376626006884949700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A175804 (A046092 n).toNat)

end

end A379378.P14376626006884949700

/-! ## A379378.P6959991447230891776

`A175804(A046092(n))%A048473(n+3)`
-/

namespace A379378.P6959991447230891776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175804 (A046092 n).toNat) (A048473 (n + 3))

end

end A379378.P6959991447230891776

/-! ## A379378.P16305758363136728080

`A175804(A046092(n))+C(n, A000079(n))`
-/

namespace A379378.P16305758363136728080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 (A046092 n).toNat + (Nat.choose n (A000079 n).toNat : ℤ)

end

end A379378.P16305758363136728080

/-! ## A379378.P10713967305817669410

`A175804(A046092(n))+A151763(2*(n+1))`
-/

namespace A379378.P10713967305817669410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 (A046092 n).toNat + A151763 (2 * (n + 1))

end

end A379378.P10713967305817669410

/-! ## A379378.P1677984083517212554

`A175804(A046092(n))+C(n, A063496(n+1))`
-/

namespace A379378.P1677984083517212554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 (A046092 n).toNat + (Nat.choose n (A063496 (n + 1)).toNat : ℤ)

end

end A379378.P1677984083517212554

/-! ## A379378.P14453979832638919383

`A175804(A046092(n))+C(n, A133532(n+1))`
-/

namespace A379378.P14453979832638919383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 (A046092 n).toNat + (Nat.choose n (A133532 (n + 1)).toNat : ℤ)

end

end A379378.P14453979832638919383

/-! ## A379378.P7618251102857600566

`A059841(A000010(3*n+5))*A175804(A046092(n))`
-/

namespace A379378.P7618251102857600566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A000010 (3 * n + 5)).toNat * A175804 (A046092 n).toNat

end

end A379378.P7618251102857600566

/-! ## A379378.P17256605348645645881

`A175804(A046092(n))+C(n, A350848(n+1))`
-/

namespace A379378.P17256605348645645881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 (A046092 n).toNat + (Nat.choose n (A350848 (n + 1)).toNat : ℤ)

end

end A379378.P17256605348645645881

/-!
# A379379: Sum of odd divisors of n except the "e" odd divisors described in A005279.

The programs for A379379, there is no canonical definition to state claims against.
-/

/-! ## A379379.P11084799813238660459

`A000593(n+1)-A383147(n+1)`
-/

namespace A379379.P11084799813238660459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A383147 (n + 1)

end

end A379379.P11084799813238660459

/-! ## A379379.P6328710452863108649

`A000203(n+1)-A389591(n+1)`
-/

namespace A379379.P6328710452863108649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A389591 (n + 1)

end

end A379379.P6328710452863108649

/-! ## A379379.P1134123135196148746

`gcd(∑{d}[n+1, #*#%2], A325188(A029748(2*n)))`
-/

namespace A379379.P1134123135196148746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d * (d % 2) : ℕ) : ℤ) (A325188 (A029748 (2 * n)).toNat)

end

end A379379.P1134123135196148746

/-! ## A379379.P7406593834943157305

`A318876(A090634(n+1))`
-/

namespace A379379.P7406593834943157305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318876 (A090634 (n + 1)).toNat

end

end A379379.P7406593834943157305

/-! ## A379379.P4858918448220106307

`A000593(A124219(n+1)%A093795(n+1))`
-/

namespace A379379.P4858918448220106307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (Int.tmod (A124219 (n + 1)) (A093795 (n + 1))).toNat

end

end A379379.P4858918448220106307

/-!
# A379380: Prime numbers p such that (2*p)# - p# + 1 is prime, where p# = A034386(p).

The programs for A379380, there is no canonical definition to state claims against.
-/

/-! ## A379380.P14737799021689973154

`A175944(∑[A054859(n)])`
-/

namespace A379380.P14737799021689973154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175944 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A379380.P14737799021689973154

/-! ## A379380.P2710404394837071121

`A295994(n+2)%A002263(A000040(n+1))`
-/

namespace A379380.P2710404394837071121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295994 (n + 2)) (A002263 (A000040 (n + 1)).toNat)

end

end A379380.P2710404394837071121

/-!
# A379381: a(1)=1, a(2)=2; thereafter, a(n) is the smallest positive integer such that for any value k, the number of distinct values between a pair of k's is distinct, counting k itself.

The programs for A379381, there is no canonical definition to state claims against.
-/

/-! ## A379381.P1432887316333894308

`A005812(C(A325394(n+1), A078822(n)))`
-/

namespace A379381.P1432887316333894308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (Nat.choose (A325394 (n + 1)).toNat (A078822 n).toNat)

end

end A379381.P1432887316333894308

/-! ## A379381.P6509878951879787564

`A000120(A096111(n)*A236371(n+1))`
-/

namespace A379381.P6509878951879787564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A096111 n * A236371 (n + 1)).toNat

end

end A379381.P6509878951879787564

/-! ## A379381.P16097488791583616764

`A280700(A030307(n+4)+A001317(n))`
-/

namespace A379381.P16097488791583616764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280700 (A030307 (n + 4) + A001317 n).toNat

end

end A379381.P16097488791583616764

/-! ## A379381.P403431413365263490

`A278043(A082582(n)+A068189(n+1))`
-/

namespace A379381.P403431413365263490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278043 (A082582 n + A068189 (n + 1)).toNat

end

end A379381.P403431413365263490

/-! ## A379381.P9139063153949160830

`A257564(A001694(n+1))-A340134(n+1)`
-/

namespace A379381.P9139063153949160830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A001694 (n + 1)).toNat - A340134 (n + 1)

end

end A379381.P9139063153949160830

/-!
# A379382: G.f. A(x) satisfies A(x) = sqrt( (1 + 2*x*A(x))/(1 - 2*x*A(x)^2) ).

The programs for A379382, there is no canonical definition to state claims against.
-/

/-! ## A379382.P7432223964723963797

`2^n*A106228(n)`
-/

namespace A379382.P7432223964723963797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A106228 n

end

end A379382.P7432223964723963797

/-! ## A379382.P309153545297370613

`A106228(n)*A156552(A000040(n+1))`
-/

namespace A379382.P309153545297370613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106228 n * A156552 (A000040 (n + 1)).toNat

end

end A379382.P309153545297370613

/-! ## A379382.P4995983034931670202

`A106228(n)*A194357(n²)`
-/

namespace A379382.P4995983034931670202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106228 n * A194357 (n ^ 2)

end

end A379382.P4995983034931670202

/-! ## A379382.P7645538312344261999

`A106228(n)*A257610(A000217(n))`
-/

namespace A379382.P7645538312344261999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106228 n * A257610 (A000217 n).toNat

end

end A379382.P7645538312344261999

/-! ## A379382.P5921826287791855675

`A106228(n)*A281469(A000124(n))`
-/

namespace A379382.P5921826287791855675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106228 n * A281469 (A000124 n).toNat

end

end A379382.P5921826287791855675

/-!
# A379383: G.f. A(x) satisfies A(x) = sqrt( (1 + 2*x*A(x))/(1 - 2*x*A(x)^3) ).

The programs for A379383, there is no canonical definition to state claims against.
-/

/-! ## A379383.P3849073017451859317

`A178330(A005183(n))`
-/

namespace A379383.P3849073017451859317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178330 (A005183 n).toNat

end

end A379383.P3849073017451859317

/-!
# A379395: Maximum number of fundamentally different graceful labelings for a simple graph of n nodes.

The programs for A379395, there is no canonical definition to state claims against.
-/

/-! ## A379395.P11462203252895543251

`A100898(A019439(n))`
-/

namespace A379395.P11462203252895543251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100898 (A019439 n).toNat

end

end A379395.P11462203252895543251

/-! ## A379395.P8655303460402929431

`A358493(n)+A131852(A358504(n))`
-/

namespace A379395.P8655303460402929431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358493 n + A131852 (A358504 n).toNat

end

end A379395.P8655303460402929431

/-!
# A379396: Numbers that can be written in exactly one way as a sum of at most nine positive third powers.

The programs for A379396, there is no canonical definition to state claims against.
-/

/-! ## A379396.P6828202754586680818

`eq[1, A025453(n)]`
-/

namespace A379396.P6828202754586680818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379396.P6828202754586680818

/-! ## A379396.P6789527340048080370

`lt[A049768(A025453(n)+1), 2]`
-/

namespace A379396.P6789527340048080370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049768 (A025453 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A379396.P6789527340048080370

/-! ## A379396.P15057178378924773373

`lt[A027471(A025453(n)+1), 3]`
-/

namespace A379396.P15057178378924773373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (A025453 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A379396.P15057178378924773373

/-! ## A379396.P5872239992323270788

`lt[A001221(A025453(n)+12), 2]`
-/

namespace A379396.P5872239992323270788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A025453 n + 12).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A379396.P5872239992323270788

/-! ## A379396.P5635298566259177424

`eq[1, A025462(n)+A025452(n)]`
-/

namespace A379396.P5635298566259177424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n + A025452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379396.P5635298566259177424

/-!
# A379397: Numbers that can be written in exactly two different ways as a sum of at most nine positive third powers.

The programs for A379397, there is no canonical definition to state claims against.
-/

/-! ## A379397.P11674546366522930247

`eq[2, A025453(n)]`
-/

namespace A379397.P11674546366522930247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379397.P11674546366522930247

/-! ## A379397.P16394967270792231624

`eq[2, A025462(n)+A025452(n)]`
-/

namespace A379397.P16394967270792231624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n + A025452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379397.P16394967270792231624

/-! ## A379397.P14204610817481111555

`lt[A071936(A025453(n)), A010054(n)]`
-/

namespace A379397.P14204610817481111555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071936 (A025453 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379397.P14204610817481111555

/-! ## A379397.P8746395791124593790

`lt[A071936(A025453(n)), A030308(n)]`
-/

namespace A379397.P8746395791124593790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071936 (A025453 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379397.P8746395791124593790

/-! ## A379397.P4038052196614314814

`lt[A071936(A025453(n)), A071936(2*n+1)]`
-/

namespace A379397.P4038052196614314814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071936 (A025453 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071936 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379397.P4038052196614314814

/-! ## A379397.P1743844641713630268

`lt[(A025453(n)*A240502(A025462(n))-2)², 1]`
-/

namespace A379397.P1743844641713630268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025453 n * A240502 (A025462 n).toNat - 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A379397.P1743844641713630268

/-!
# A379398: Numbers that can be written in exactly three different ways as a sum of at most nine positive third powers.

The programs for A379398, there is no canonical definition to state claims against.
-/

/-! ## A379398.P15502386414583797056

`eq[3, A025453(n)]`
-/

namespace A379398.P15502386414583797056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379398.P15502386414583797056

/-! ## A379398.P3043880471845787640

`eq[3, A025462(n)+A025452(n)]`
-/

namespace A379398.P3043880471845787640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n + A025452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379398.P3043880471845787640

/-! ## A379398.P10456449944687744782

`lt[A025454(n), A005928(A025453(n))]`
-/

namespace A379398.P10456449944687744782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 (A025453 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379398.P10456449944687744782

/-! ## A379398.P5280280864912565727

`lt[A280711(n+1), A006667(A025453(n))]`
-/

namespace A379398.P5280280864912565727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A025453 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379398.P5280280864912565727

/-! ## A379398.P7831444555181509802

`lt[A106457(n+3), A030001(A025453(n))]`
-/

namespace A379398.P7831444555181509802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106457 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030001 (A025453 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379398.P7831444555181509802

/-!
# A379399: Numbers that can be written in exactly four different ways as a sum of at most nine positive third powers.

The programs for A379399, there is no canonical definition to state claims against.
-/

/-! ## A379399.P12851981109182171647

`eq[4, A025453(n)]`
-/

namespace A379399.P12851981109182171647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379399.P12851981109182171647

/-! ## A379399.P1843970200068871795

`eq[4, A025462(n)+A025452(n)]`
-/

namespace A379399.P1843970200068871795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n + A025452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379399.P1843970200068871795

/-! ## A379399.P15311114905689877481

`lt[A049581(A025453(n)), A006519(2*n+1)]`
-/

namespace A379399.P15311114905689877481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A025453 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379399.P15311114905689877481

