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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C049
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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A147800: Minimal value of A007947(m*(5^n-m)) with m coprime to 5.

The programs for A147800, there is no canonical definition to state claims against.
-/

/-! ## A147800.P4726968464113107519

`A392257(5^(n+1))`
-/

namespace A147800.P4726968464113107519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392257 (5 ^ (n + 1))

end

end A147800.P4726968464113107519

/-!
# A147801: Minimal value of A007947(m*(3^n-m)) with m coprime to 3.

The programs for A147801, there is no canonical definition to state claims against.
-/

/-! ## A147801.P16057630511372682232

`A392257(3^(n+1))`
-/

namespace A147801.P16057630511372682232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392257 (3 ^ (n + 1))

end

end A147801.P16057630511372682232

/-! ## A147801.P13140740089141636262

`A163575(A333629(n)+A282584(n+3))`
-/

namespace A147801.P13140740089141636262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (A333629 n + A282584 (n + 3)).toNat

end

end A147801.P13140740089141636262

/-!
# A147802: Least m coprime to 3 minimizing A007947(m*(3^n-m)).

The programs for A147802, there is no canonical definition to state claims against.
-/

/-! ## A147802.P12155103498767645059

`A201912(A027045(n+2))`
-/

namespace A147802.P12155103498767645059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201912 (A027045 (n + 2)).toNat

end

end A147802.P12155103498767645059

/-! ## A147802.P4504870446881755734

`A078898(A169793(n)-n)`
-/

namespace A147802.P4504870446881755734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A169793 n - (n : ℤ)).toNat

end

end A147802.P4504870446881755734

/-! ## A147802.P632948064427697436

`A292250(∑[A258369(n)])+1`
-/

namespace A147802.P632948064427697436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292250 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A147802.P632948064427697436

/-!
# A147804: Least m coprime to 7 minimizing A007947(m*(7^n-m)).

The programs for A147804, there is no canonical definition to state claims against.
-/

/-! ## A147804.P7978159171612424452

`A380217(((n+1)/2^val(n+1, 2))^(xor(n, n+1)+1))`
-/

namespace A147804.P7978159171612424452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380217 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)) ^ (Nat.xor n (n + 1) + 1))).toNat

end

end A147804.P7978159171612424452

/-!
# A147806: Partial sums of A147809(n) = tau(n^2 + 1)/2 - 1.

The programs for A147806, the canonical program `A147806.P12689677907134375891` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147806 has offset 1).

The definition of A147806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147806.P10770927614731493311

`A147807(n+1)-(n+1)`
-/

namespace A147806.P10770927614731493311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147807 (n + 1) - (n + 1 : ℤ)

end

end A147806.P10770927614731493311

namespace A147806

/-- `A147807(n+1)-(n+1)` -/
def P10770927614731493311.Spec : Prop :=
  ∀ n, P10770927614731493311.a n = A147806 (n + 1)

end A147806

/-! ## A147806.P10214219610913032364

`∑[A147809(n+1)]`
-/

namespace A147806.P10214219610913032364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147806.P10214219610913032364

namespace A147806

/-- `∑[A147809(n+1)]` -/
def P10214219610913032364.Spec : Prop :=
  ∀ n, P10214219610913032364.a n = A147806 (n + 1)

end A147806

/-! ## A147806.P8267923715781310430

`∑[A147810(n+1)-1]`
-/

namespace A147806.P8267923715781310430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147810 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147806.P8267923715781310430

namespace A147806

/-- `∑[A147810(n+1)-1]` -/
def P8267923715781310430.Spec : Prop :=
  ∀ n, P8267923715781310430.a n = A147806 (n + 1)

end A147806

/-! ## A147806.P12689677907134375891

`∑[A193432(n+1)/2-1]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A147806

/-- `∑[A193432(n+1)/2-1]` -/
def P12689677907134375891.Spec : Prop :=
  ∀ n, P12689677907134375891.a n = (A147806 (n + 1) : ℚ)

end A147806

/-! ## A147806.P16012451919487591396

`∑[A046667(A193432(n+1))]`
-/

namespace A147806.P16012451919487591396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A193432 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147806.P16012451919487591396

namespace A147806

/-- `∑[A046667(A193432(n+1))]` -/
def P16012451919487591396.Spec : Prop :=
  ∀ n, P16012451919487591396.a n = A147806 (n + 1)

end A147806

/-! ## A147806.P6575764963991497713

`∑[A038548(A278162(n+1))-1]`
-/

namespace A147806.P6575764963991497713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A278162 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147806.P6575764963991497713

namespace A147806

/-- `∑[A038548(A278162(n+1))-1]` -/
def P6575764963991497713.Spec : Prop :=
  ∀ n, P6575764963991497713.a n = A147806 (n + 1)

end A147806

/-! ## A147806.P10715876210223720597

`A004524(A333171(n+1))-(n+1)`
-/

namespace A147806.P10715876210223720597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A333171 (n + 1)).toNat - (n + 1 : ℤ)

end

end A147806.P10715876210223720597

namespace A147806

/-- `A004524(A333171(n+1))-(n+1)` -/
def P10715876210223720597.Spec : Prop :=
  ∀ n, P10715876210223720597.a n = A147806 (n + 1)

end A147806

/-! ## A147806.P6612996186872492672

`∑[∏{e}[(n+1)²+1, #+1]/2-1]`
-/

namespace A147806.P6612996186872492672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2 - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147806.P6612996186872492672

namespace A147806

/-- `∑[∏{e}[(n+1)²+1, #+1]/2-1]` -/
def P6612996186872492672.Spec : Prop :=
  ∀ n, P6612996186872492672.a n = (A147806 (n + 1) : ℚ)

end A147806

/-! ## A147806.P2088795132035787289

`∑[val(A000005((n+1)²+1)!, 4)]`
-/

namespace A147806.P2088795132035787289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A000005 ((n + 1) ^ 2 + 1)).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147806.P2088795132035787289

namespace A147806

/-- `∑[val(A000005((n+1)²+1)!, 4)]` -/
def P2088795132035787289.Spec : Prop :=
  ∀ n, (P2088795132035787289.a n : ℤ) = A147806 (n + 1)

end A147806

/-! ## A147806.P11044343604068887075

`∑[A072670((n+1)²)]`
-/

namespace A147806.P11044343604068887075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147806.P11044343604068887075

namespace A147806

/-- `∑[A072670((n+1)²)]` -/
def P11044343604068887075.Spec : Prop :=
  ∀ n, P11044343604068887075.a n = A147806 (n + 1)

end A147806

/-! ## A147806.P3140419811398845840

`∑[A211159((n+1)²)]`
-/

namespace A147806.P3140419811398845840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211159 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147806.P3140419811398845840

namespace A147806

/-- `∑[A211159((n+1)²)]` -/
def P3140419811398845840.Spec : Prop :=
  ∀ n, P3140419811398845840.a n = A147806 (n + 1)

end A147806

/-!
# A147807: Partial sums of A147810(n) = tau(n^2 + 1)/2.

The programs for A147807, the canonical program `A147807.P3053565621181724089` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147807 has offset 1).

The definition of A147807 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147806, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A147807.P3053565621181724089

`n+1+A147806(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A147807

/-- `n+1+A147806(n+1)` -/
def P3053565621181724089.Spec : Prop :=
  ∀ n, P3053565621181724089.a n = A147807 (n + 1)

theorem P3053565621181724089.correct : P3053565621181724089.Spec := by
  intro n
  simp only [A147807, Nat.add_sub_cancel]

end A147807

/-! ## A147807.P4587901879028923279

`∑[A147810(n+1)]`
-/

namespace A147807.P4587901879028923279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147807.P4587901879028923279

namespace A147807

/-- `∑[A147810(n+1)]` -/
def P4587901879028923279.Spec : Prop :=
  ∀ n, P4587901879028923279.a n = A147807 (n + 1)

end A147807

/-! ## A147807.P9675495454535081280

`∑[Δ[A333171(n)]/2]`
-/

namespace A147807.P9675495454535081280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333171 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147807.P9675495454535081280

namespace A147807

/-- `∑[Δ[A333171(n)]/2]` -/
def P9675495454535081280.Spec : Prop :=
  ∀ n, P9675495454535081280.a n = (A147807 (n + 1) : ℚ)

end A147807

/-! ## A147807.P17534336317237885827

`floor(A333171(n+1)/2)`
-/

namespace A147807.P17534336317237885827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333171 (n + 1) : ℚ) / 2⌋

end

end A147807.P17534336317237885827

namespace A147807

/-- `floor(A333171(n+1)/2)` -/
def P17534336317237885827.Spec : Prop :=
  ∀ n, P17534336317237885827.a n = A147807 (n + 1)

end A147807

/-! ## A147807.P11087770534386699791

`∑[A147809(n+1)+1]`
-/

namespace A147807.P11087770534386699791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147807.P11087770534386699791

namespace A147807

/-- `∑[A147809(n+1)+1]` -/
def P11087770534386699791.Spec : Prop :=
  ∀ n, P11087770534386699791.a n = A147807 (n + 1)

end A147807

/-! ## A147807.P6393988870007020021

`∑[A193432(n+1)/2]`
-/

namespace A147807.P6393988870007020021
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193432 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147807.P6393988870007020021

namespace A147807

/-- `∑[A193432(n+1)/2]` -/
def P6393988870007020021.Spec : Prop :=
  ∀ n, P6393988870007020021.a n = (A147807 (n + 1) : ℚ)

end A147807

/-! ## A147807.P4828905642681537516

`∑[A001281(A193432(n+1))]`
-/

namespace A147807.P4828905642681537516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A193432 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147807.P4828905642681537516

namespace A147807

/-- `∑[A001281(A193432(n+1))]` -/
def P4828905642681537516.Spec : Prop :=
  ∀ n, P4828905642681537516.a n = A147807 (n + 1)

end A147807

/-! ## A147807.P11114598183925669146

`∑[A046667(A193432(n+1)+2)]`
-/

namespace A147807.P11114598183925669146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A193432 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147807.P11114598183925669146

namespace A147807

/-- `∑[A046667(A193432(n+1)+2)]` -/
def P11114598183925669146.Spec : Prop :=
  ∀ n, P11114598183925669146.a n = A147807 (n + 1)

end A147807

/-! ## A147807.P10001870693795046580

`∑[A000005(A278162(n+1))/2]`
-/

namespace A147807.P10001870693795046580
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A278162 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147807.P10001870693795046580

namespace A147807

/-- `∑[A000005(A278162(n+1))/2]` -/
def P10001870693795046580.Spec : Prop :=
  ∀ n, P10001870693795046580.a n = (A147807 (n + 1) : ℚ)

end A147807

/-! ## A147807.P7908813299244176236

`∑[A038548(A278162(n+1))]`
-/

namespace A147807.P7908813299244176236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A278162 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147807.P7908813299244176236

namespace A147807

/-- `∑[A038548(A278162(n+1))]` -/
def P7908813299244176236.Spec : Prop :=
  ∀ n, P7908813299244176236.a n = A147807 (n + 1)

end A147807

/-! ## A147807.P12525316001875396399

`A004524(A333171(n+1))`
-/

namespace A147807.P12525316001875396399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A333171 (n + 1)).toNat

end

end A147807.P12525316001875396399

namespace A147807

/-- `A004524(A333171(n+1))` -/
def P12525316001875396399.Spec : Prop :=
  ∀ n, P12525316001875396399.a n = A147807 (n + 1)

end A147807

/-! ## A147807.P10812160098485715316

`∑[∏{e}[(n+1)²+1, #+1]/2]`
-/

namespace A147807.P10812160098485715316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147807.P10812160098485715316

namespace A147807

/-- `∑[∏{e}[(n+1)²+1, #+1]/2]` -/
def P10812160098485715316.Spec : Prop :=
  ∀ n, P10812160098485715316.a n = (A147807 (n + 1) : ℚ)

end A147807

/-! ## A147807.P15020525047785227943

`∑[ceil(∏{e}[lcm(n, n+1)+2+n, #+1]/2)]`
-/

namespace A147807.P15020525047785227943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1) + 2 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147807.P15020525047785227943

namespace A147807

/-- `∑[ceil(∏{e}[lcm(n, n+1)+2+n, #+1]/2)]` -/
def P15020525047785227943.Spec : Prop :=
  ∀ n, P15020525047785227943.a n = A147807 (n + 1)

end A147807

/-! ## A147807.P13884589826022010040

`∑[A000005((n+1)²+1)/2]`
-/

namespace A147807.P13884589826022010040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 ((n + 1) ^ 2 + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147807.P13884589826022010040

namespace A147807

/-- `∑[A000005((n+1)²+1)/2]` -/
def P13884589826022010040.Spec : Prop :=
  ∀ n, P13884589826022010040.a n = (A147807 (n + 1) : ℚ)

end A147807

/-! ## A147807.P13865598060825753208

`∑[A000005(n*(n+2)+2)]/2`
-/

namespace A147807.P13865598060825753208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n * (n + 2) + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A147807.P13865598060825753208

namespace A147807

/-- `∑[A000005(n*(n+2)+2)]/2` -/
def P13865598060825753208.Spec : Prop :=
  ∀ n, P13865598060825753208.a n = (A147807 (n + 1) : ℚ)

end A147807

/-! ## A147807.P15968115106193332554

`∑[A057554(A000005((n+1)²+1)²)]`
-/

namespace A147807.P15968115106193332554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A000005 ((n + 1) ^ 2 + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147807.P15968115106193332554

namespace A147807

/-- `∑[A057554(A000005((n+1)²+1)²)]` -/
def P15968115106193332554.Spec : Prop :=
  ∀ n, P15968115106193332554.a n = A147807 (n + 1)

end A147807

/-! ## A147807.P1075642710346756519

`∑[A359909((n+1)²+1)]`
-/

namespace A147807.P1075642710346756519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359909 ((n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147807.P1075642710346756519

namespace A147807

/-- `∑[A359909((n+1)²+1)]` -/
def P1075642710346756519.Spec : Prop :=
  ∀ n, P1075642710346756519.a n = A147807 (n + 1)

end A147807

/-! ## A147807.P115729439555760111

`∑[A292286((n+1)²+1)]`
-/

namespace A147807.P115729439555760111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292286 ((n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147807.P115729439555760111

namespace A147807

/-- `∑[A292286((n+1)²+1)]` -/
def P115729439555760111.Spec : Prop :=
  ∀ n, P115729439555760111.a n = A147807 (n + 1)

end A147807

/-! ## A147807.P16857429015000321666

`∑[A072670((n+1)²)+1]`
-/

namespace A147807.P16857429015000321666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147807.P16857429015000321666

namespace A147807

/-- `∑[A072670((n+1)²)+1]` -/
def P16857429015000321666.Spec : Prop :=
  ∀ n, P16857429015000321666.a n = A147807 (n + 1)

end A147807

/-! ## A147807.P17700390202716949129

`∑[A211159((n+1)²)+1]`
-/

namespace A147807.P17700390202716949129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211159 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147807.P17700390202716949129

namespace A147807

/-- `∑[A211159((n+1)²)+1]` -/
def P17700390202716949129.Spec : Prop :=
  ∀ n, P17700390202716949129.a n = A147807 (n + 1)

end A147807

/-!
# A147809: Half the number of proper divisors (> 1) of n^2 + 1, i.e., tau(n^2 + 1)/2 - 1.

The programs for A147809, the canonical program `A147809.P2695604963517228140` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147809 has offset 1).

The definition of A147809 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147809.P7565184165736223334

`A147810(n+1)-1`
-/

namespace A147809.P7565184165736223334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147810 (n + 1) - 1

end

end A147809.P7565184165736223334

namespace A147809

/-- `A147810(n+1)-1` -/
def P7565184165736223334.Spec : Prop :=
  ∀ n, P7565184165736223334.a n = A147809 (n + 1)

end A147809

/-! ## A147809.P2695604963517228140

`A000005((n+1)²+1)/2-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A147809

/-- `A000005((n+1)²+1)/2-1` -/
def P2695604963517228140.Spec : Prop :=
  ∀ n, P2695604963517228140.a n = (A147809 (n + 1) : ℚ)

end A147809

/-! ## A147809.P10773631260441325315

`Δ[A333171(n)/2]-1`
-/

namespace A147809.P10773631260441325315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333171 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A147809.P10773631260441325315

namespace A147809

/-- `Δ[A333171(n)/2]-1` -/
def P10773631260441325315.Spec : Prop :=
  ∀ n, P10773631260441325315.a n = (A147809 (n + 1) : ℚ)

end A147809

/-! ## A147809.P8439466945688714661

`A193432(n+1)/2-1`
-/

namespace A147809.P8439466945688714661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193432 (n + 1) : ℚ) / 2 - 1

end

end A147809.P8439466945688714661

namespace A147809

/-- `A193432(n+1)/2-1` -/
def P8439466945688714661.Spec : Prop :=
  ∀ n, P8439466945688714661.a n = (A147809 (n + 1) : ℚ)

end A147809

/-! ## A147809.P1641926039148223809

`A046667(A193432(n+1))`
-/

namespace A147809.P1641926039148223809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A193432 (n + 1)).toNat

end

end A147809.P1641926039148223809

namespace A147809

/-- `A046667(A193432(n+1))` -/
def P1641926039148223809.Spec : Prop :=
  ∀ n, P1641926039148223809.a n = A147809 (n + 1)

end A147809

/-! ## A147809.P16829172437841811894

`A004526(A193432(n+1)-1)`
-/

namespace A147809.P16829172437841811894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A193432 (n + 1) - 1).toNat

end

end A147809.P16829172437841811894

namespace A147809

/-- `A004526(A193432(n+1)-1)` -/
def P16829172437841811894.Spec : Prop :=
  ∀ n, P16829172437841811894.a n = A147809 (n + 1)

end A147809

/-! ## A147809.P289552889041677258

`A028242(A193432(n+1)-1)`
-/

namespace A147809.P289552889041677258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A193432 (n + 1) - 1).toNat

end

end A147809.P289552889041677258

namespace A147809

/-- `A028242(A193432(n+1)-1)` -/
def P289552889041677258.Spec : Prop :=
  ∀ n, P289552889041677258.a n = A147809 (n + 1)

end A147809

/-! ## A147809.P13871364225453700246

`A057979(A193432(n+1)-1)`
-/

namespace A147809.P13871364225453700246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A193432 (n + 1) - 1).toNat

end

end A147809.P13871364225453700246

namespace A147809

/-- `A057979(A193432(n+1)-1)` -/
def P13871364225453700246.Spec : Prop :=
  ∀ n, P13871364225453700246.a n = A147809 (n + 1)

end A147809

/-! ## A147809.P11164875980272134302

`A127229(n+5)%A147810(n+1)`
-/

namespace A147809.P11164875980272134302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A147810 (n + 1))

end

end A147809.P11164875980272134302

namespace A147809

/-- `A127229(n+5)%A147810(n+1)` -/
def P11164875980272134302.Spec : Prop :=
  ∀ n, P11164875980272134302.a n = A147809 (n + 1)

end A147809

/-! ## A147809.P13942989745197374166

`A033999(2*n+1)+A193432(n+1)/2`
-/

namespace A147809.P13942989745197374166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (2 * n + 1) : ℚ) + (A193432 (n + 1) : ℚ) / 2

end

end A147809.P13942989745197374166

namespace A147809

/-- `A033999(2*n+1)+A193432(n+1)/2` -/
def P13942989745197374166.Spec : Prop :=
  ∀ n, P13942989745197374166.a n = (A147809 (n + 1) : ℚ)

end A147809

/-! ## A147809.P441580408571699837

`A200748(n)%A147810(n+1)`
-/

namespace A147809.P441580408571699837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A147810 (n + 1))

end

end A147809.P441580408571699837

namespace A147809

/-- `A200748(n)%A147810(n+1)` -/
def P441580408571699837.Spec : Prop :=
  ∀ n, P441580408571699837.a n = A147809 (n + 1)

end A147809

/-! ## A147809.P1645441029026840860

`A038548(A278162(n+1))-1`
-/

namespace A147809.P1645441029026840860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A278162 (n + 1)).toNat - 1

end

end A147809.P1645441029026840860

namespace A147809

/-- `A038548(A278162(n+1))-1` -/
def P1645441029026840860.Spec : Prop :=
  ∀ n, P1645441029026840860.a n = A147809 (n + 1)

end A147809

/-! ## A147809.P15551890465550927732

`A058197(n+1)%A147810(n+1)`
-/

namespace A147809.P15551890465550927732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A147810 (n + 1))

end

end A147809.P15551890465550927732

namespace A147809

/-- `A058197(n+1)%A147810(n+1)` -/
def P15551890465550927732.Spec : Prop :=
  ∀ n, P15551890465550927732.a n = A147809 (n + 1)

end A147809

/-! ## A147809.P2217652530626917879

`∏{e}[(n+1)²+1, #+1]/2-1`
-/

namespace A147809.P2217652530626917879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2 - 1

end

end A147809.P2217652530626917879

namespace A147809

/-- `∏{e}[(n+1)²+1, #+1]/2-1` -/
def P2217652530626917879.Spec : Prop :=
  ∀ n, P2217652530626917879.a n = (A147809 (n + 1) : ℚ)

end A147809

/-! ## A147809.P270583389851399268

`A153823(n)%A147810(n+1)`
-/

namespace A147809.P270583389851399268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153823 n) (A147810 (n + 1))

end

end A147809.P270583389851399268

namespace A147809

/-- `A153823(n)%A147810(n+1)` -/
def P270583389851399268.Spec : Prop :=
  ∀ n, P270583389851399268.a n = A147809 (n + 1)

end A147809

/-! ## A147809.P18077407722953319997

`val(A000005((n+1)²+1)!, 4)`
-/

namespace A147809.P18077407722953319997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A000005 ((n + 1) ^ 2 + 1)).toNat) 4

end

end A147809.P18077407722953319997

namespace A147809

/-- `val(A000005((n+1)²+1)!, 4)` -/
def P18077407722953319997.Spec : Prop :=
  ∀ n, (P18077407722953319997.a n : ℤ) = A147809 (n + 1)

end A147809

/-! ## A147809.P10508896368251142231

`A057979(A000005(n²+2*(n+1))-1)`
-/

namespace A147809.P10508896368251142231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A000005 (n ^ 2 + 2 * (n + 1)) - 1).toNat

end

end A147809.P10508896368251142231

namespace A147809

/-- `A057979(A000005(n²+2*(n+1))-1)` -/
def P10508896368251142231.Spec : Prop :=
  ∀ n, P10508896368251142231.a n = A147809 (n + 1)

end A147809

/-! ## A147809.P3885463990395619947

`A083800(n+1)%A147810(n+1)`
-/

namespace A147809.P3885463990395619947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A147810 (n + 1))

end

end A147809.P3885463990395619947

namespace A147809

/-- `A083800(n+1)%A147810(n+1)` -/
def P3885463990395619947.Spec : Prop :=
  ∀ n, P3885463990395619947.a n = A147809 (n + 1)

end A147809

/-! ## A147809.P7781825782170715853

`A070198(n)%A147810(n+1)`
-/

namespace A147809.P7781825782170715853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A147810 (n + 1))

end

end A147809.P7781825782170715853

namespace A147809

/-- `A070198(n)%A147810(n+1)` -/
def P7781825782170715853.Spec : Prop :=
  ∀ n, P7781825782170715853.a n = A147809 (n + 1)

end A147809

/-! ## A147809.P460072569632734207

`A079782(n+1)%A147810(n+1)`
-/

namespace A147809.P460072569632734207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A147810 (n + 1))

end

end A147809.P460072569632734207

namespace A147809

/-- `A079782(n+1)%A147810(n+1)` -/
def P460072569632734207.Spec : Prop :=
  ∀ n, P460072569632734207.a n = A147809 (n + 1)

end A147809

/-!
# A147810: Half the number of divisors of n^2+1.

The programs for A147810, the canonical program `A147810.P3662463774335131867` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147810 has offset 1).

The definition of A147810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147810.P3662463774335131867

`A147809(n+1)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A147810

/-- `A147809(n+1)+1` -/
def P3662463774335131867.Spec : Prop :=
  ∀ n, P3662463774335131867.a n = A147810 (n + 1)

theorem P3662463774335131867.correct : P3662463774335131867.Spec := by
  intro n
  simp only [A147810, Nat.add_sub_cancel]

end A147810

/-! ## A147810.P17163541387822300463

`A000005((n+1)²+1)/2`
-/

namespace A147810.P17163541387822300463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 ((n + 1) ^ 2 + 1) : ℚ) / 2

end

end A147810.P17163541387822300463

namespace A147810

/-- `A000005((n+1)²+1)/2` -/
def P17163541387822300463.Spec : Prop :=
  ∀ n, P17163541387822300463.a n = (A147810 (n + 1) : ℚ)

end A147810

/-! ## A147810.P4725018997474926132

`Δ[A333171(n)/2]`
-/

namespace A147810.P4725018997474926132
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333171 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147810.P4725018997474926132

namespace A147810

/-- `Δ[A333171(n)/2]` -/
def P4725018997474926132.Spec : Prop :=
  ∀ n, P4725018997474926132.a n = (A147810 (n + 1) : ℚ)

end A147810

/-! ## A147810.P8318129895032581658

`A193432(n+1)/2`
-/

namespace A147810.P8318129895032581658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193432 (n + 1) : ℚ) / 2

end

end A147810.P8318129895032581658

namespace A147810

/-- `A193432(n+1)/2` -/
def P8318129895032581658.Spec : Prop :=
  ∀ n, P8318129895032581658.a n = (A147810 (n + 1) : ℚ)

end A147810

/-! ## A147810.P6717393955459599018

`A001281(A193432(n+1))`
-/

namespace A147810.P6717393955459599018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A193432 (n + 1)).toNat

end

end A147810.P6717393955459599018

namespace A147810

/-- `A001281(A193432(n+1))` -/
def P6717393955459599018.Spec : Prop :=
  ∀ n, P6717393955459599018.a n = A147810 (n + 1)

end A147810

/-! ## A147810.P7647307544537387801

`A004526(A193432(n+1)+1)`
-/

namespace A147810.P7647307544537387801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A193432 (n + 1) + 1).toNat

end

end A147810.P7647307544537387801

namespace A147810

/-- `A004526(A193432(n+1)+1)` -/
def P7647307544537387801.Spec : Prop :=
  ∀ n, P7647307544537387801.a n = A147810 (n + 1)

end A147810

/-! ## A147810.P5847001153088055404

`A028242(A193432(n+1)+1)`
-/

namespace A147810.P5847001153088055404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A193432 (n + 1) + 1).toNat

end

end A147810.P5847001153088055404

namespace A147810

/-- `A028242(A193432(n+1)+1)` -/
def P5847001153088055404.Spec : Prop :=
  ∀ n, P5847001153088055404.a n = A147810 (n + 1)

end A147810

/-! ## A147810.P4535948198169051858

`A057979(A193432(n+1)+1)`
-/

namespace A147810.P4535948198169051858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A193432 (n + 1) + 1).toNat

end

end A147810.P4535948198169051858

namespace A147810

/-- `A057979(A193432(n+1)+1)` -/
def P4535948198169051858.Spec : Prop :=
  ∀ n, P4535948198169051858.a n = A147810 (n + 1)

end A147810

/-! ## A147810.P9010627316223215085

`A046667(A193432(n+1)+2)`
-/

namespace A147810.P9010627316223215085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A193432 (n + 1) + 2).toNat

end

end A147810.P9010627316223215085

namespace A147810

/-- `A046667(A193432(n+1)+2)` -/
def P9010627316223215085.Spec : Prop :=
  ∀ n, P9010627316223215085.a n = A147810 (n + 1)

end A147810

/-! ## A147810.P5800688362624261085

`A002265(2*A193432(n+1))`
-/

namespace A147810.P5800688362624261085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A193432 (n + 1)).toNat

end

end A147810.P5800688362624261085

namespace A147810

/-- `A002265(2*A193432(n+1))` -/
def P5800688362624261085.Spec : Prop :=
  ∀ n, P5800688362624261085.a n = A147810 (n + 1)

end A147810

/-! ## A147810.P4156822975615010688

`A174571(2*A193432(n+1))`
-/

namespace A147810.P4156822975615010688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (2 * A193432 (n + 1)).toNat

end

end A147810.P4156822975615010688

namespace A147810

/-- `A174571(2*A193432(n+1))` -/
def P4156822975615010688.Spec : Prop :=
  ∀ n, P4156822975615010688.a n = A147810 (n + 1)

end A147810

/-! ## A147810.P4672362184627157957

`2/A040057(n+1)*A333167(n+1)`
-/

namespace A147810.P4672362184627157957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A040057 (n + 1) : ℚ) * (A333167 (n + 1) : ℚ)

end

end A147810.P4672362184627157957

namespace A147810

/-- `2/A040057(n+1)*A333167(n+1)` -/
def P4672362184627157957.Spec : Prop :=
  ∀ n, P4672362184627157957.a n = (A147810 (n + 1) : ℚ)

end A147810

/-! ## A147810.P5607792653445218461

`A038548(A278162(n+1))`
-/

namespace A147810.P5607792653445218461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A278162 (n + 1)).toNat

end

end A147810.P5607792653445218461

namespace A147810

/-- `A038548(A278162(n+1))` -/
def P5607792653445218461.Spec : Prop :=
  ∀ n, P5607792653445218461.a n = A147810 (n + 1)

end A147810

/-! ## A147810.P5534488032663230873

`∏{e}[(n+1)²+1, #+1]/2`
-/

namespace A147810.P5534488032663230873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2

end

end A147810.P5534488032663230873

namespace A147810

/-- `∏{e}[(n+1)²+1, #+1]/2` -/
def P5534488032663230873.Spec : Prop :=
  ∀ n, P5534488032663230873.a n = (A147810 (n + 1) : ℚ)

end A147810

/-! ## A147810.P11842845664059606487

`floor(∏{e}[∑[2*n+1]+1, #+1]/2)`
-/

namespace A147810.P11842845664059606487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌋

end

end A147810.P11842845664059606487

namespace A147810

/-- `floor(∏{e}[∑[2*n+1]+1, #+1]/2)` -/
def P11842845664059606487.Spec : Prop :=
  ∀ n, P11842845664059606487.a n = A147810 (n + 1)

end A147810

/-! ## A147810.P974483109630499818

`round(∏{e}[A002061(n+1)+n+1, #+1]/2)`
-/

namespace A147810.P974483109630499818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℚ) / 2)

end

end A147810.P974483109630499818

namespace A147810

/-- `round(∏{e}[A002061(n+1)+n+1, #+1]/2)` -/
def P974483109630499818.Spec : Prop :=
  ∀ n, P974483109630499818.a n = A147810 (n + 1)

end A147810

/-! ## A147810.P1191271673850962143

`floor(A000005(n*(n+2)+2)/2)`
-/

namespace A147810.P1191271673850962143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (n * (n + 2) + 2) : ℚ) / 2⌋

end

end A147810.P1191271673850962143

namespace A147810

/-- `floor(A000005(n*(n+2)+2)/2)` -/
def P1191271673850962143.Spec : Prop :=
  ∀ n, P1191271673850962143.a n = A147810 (n + 1)

end A147810

/-! ## A147810.P17672542581944993731

`A359909((n+1)²+1)`
-/

namespace A147810.P17672542581944993731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359909 ((n + 1) ^ 2 + 1)

end

end A147810.P17672542581944993731

namespace A147810

/-- `A359909((n+1)²+1)` -/
def P17672542581944993731.Spec : Prop :=
  ∀ n, P17672542581944993731.a n = A147810 (n + 1)

end A147810

/-! ## A147810.P11761331265785085285

`A292286((n+1)²+1)`
-/

namespace A147810.P11761331265785085285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292286 ((n + 1) ^ 2 + 1)

end

end A147810.P11761331265785085285

namespace A147810

/-- `A292286((n+1)²+1)` -/
def P11761331265785085285.Spec : Prop :=
  ∀ n, P11761331265785085285.a n = A147810 (n + 1)

end A147810

/-! ## A147810.P2421206133157690686

`A072670((n+1)²)+1`
-/

namespace A147810.P2421206133157690686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 ((n + 1) ^ 2) + 1

end

end A147810.P2421206133157690686

namespace A147810

/-- `A072670((n+1)²)+1` -/
def P2421206133157690686.Spec : Prop :=
  ∀ n, P2421206133157690686.a n = A147810 (n + 1)

end A147810

/-!
# A147811: Alexandrian integers: numbers of the form n = p*q*r such that 1/n = 1/p - 1/q - 1/r for some integers p,q,r.

The programs for A147811, there is no canonical definition to state claims against.
-/

/-! ## A147811.P8950667136578681251

`A371972(A365686(n+1))`
-/

namespace A147811.P8950667136578681251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371972 (A365686 (n + 1)).toNat

end

end A147811.P8950667136578681251

/-!
# A147812: Primes prime(n) such that prime(n+1) - prime(n) > prime(n+2) - prime(n+1).

The programs for A147812, the canonical program `A147812.P3936914708627381155` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147812 has offset 1).

The definition of A147812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4749 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147812.P5574383200979611158

`A045319(A258026(n+1)-1)`
-/

namespace A147812.P5574383200979611158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A258026 (n + 1) - 1).toNat

end

end A147812.P5574383200979611158

namespace A147812

/-- `A045319(A258026(n+1)-1)` -/
def P5574383200979611158.Spec : Prop :=
  ∀ n, P5574383200979611158.a n = A147812 (n + 1)

end A147812

/-! ## A147812.P10651856354668836595

`A004139(A258026(n+1)-2)`
-/

namespace A147812.P10651856354668836595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A258026 (n + 1) - 2).toNat

end

end A147812.P10651856354668836595

namespace A147812

/-- `A004139(A258026(n+1)-2)` -/
def P10651856354668836595.Spec : Prop :=
  ∀ n, P10651856354668836595.a n = A147812 (n + 1)

end A147812

/-! ## A147812.P1040890308520053769

`A045319(eq[1, A079054(n+2)])`
-/

namespace A147812.P1040890308520053769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A147812.P1040890308520053769

namespace A147812

/-- `A045319(eq[1, A079054(n+2)])` -/
def P1040890308520053769.Spec : Prop :=
  ∀ n, P1040890308520053769.a n = A147812 (n + 1)

end A147812

/-! ## A147812.P3936914708627381155

`A065091(lt[A001223(n+2), A001223(n+1)])`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A147812

/-- `A065091(lt[A001223(n+2), A001223(n+1)])` -/
def P3936914708627381155.Spec : Prop :=
  ∀ n, P3936914708627381155.a n = A147812 (n + 1)

theorem P3936914708627381155.correct : P3936914708627381155.Spec := by
  intro n
  simp only [A147812, Nat.add_sub_cancel]

end A147812

/-! ## A147812.P10271542148738105501

`A000040(A258026(1+n))`
-/

namespace A147812.P10271542148738105501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A258026 (1 + n)).toNat

end

end A147812.P10271542148738105501

namespace A147812

/-- `A000040(A258026(1+n))` -/
def P10271542148738105501.Spec : Prop :=
  ∀ n, P10271542148738105501.a n = A147812 (n + 1)

end A147812

/-! ## A147812.P6300000909364610082

`A046022(A358531(n+1))`
-/

namespace A147812.P6300000909364610082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A358531 (n + 1)).toNat

end

end A147812.P6300000909364610082

namespace A147812

/-- `A046022(A358531(n+1))` -/
def P6300000909364610082.Spec : Prop :=
  ∀ n, P6300000909364610082.a n = A147812 (n + 1)

end A147812

/-! ## A147812.P8773332688501856562

`A000040(∑[A333215(n+1)])`
-/

namespace A147812.P8773332688501856562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147812.P8773332688501856562

namespace A147812

/-- `A000040(∑[A333215(n+1)])` -/
def P8773332688501856562.Spec : Prop :=
  ∀ n, P8773332688501856562.a n = A147812 (n + 1)

end A147812

/-! ## A147812.P13860615518527684333

`A000040(lt[Δ[A048852(n)], 0])`
-/

namespace A147812.P13860615518527684333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A147812.P13860615518527684333

namespace A147812

/-- `A000040(lt[Δ[A048852(n)], 0])` -/
def P13860615518527684333.Spec : Prop :=
  ∀ n, P13860615518527684333.a n = A147812 (n + 1)

end A147812

/-! ## A147812.P10546024351282461843

`A008578(A258026(n+1)+1)`
-/

namespace A147812.P10546024351282461843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A258026 (n + 1) + 1).toNat

end

end A147812.P10546024351282461843

namespace A147812

/-- `A008578(A258026(n+1)+1)` -/
def P10546024351282461843.Spec : Prop :=
  ∀ n, P10546024351282461843.a n = A147812 (n + 1)

end A147812

/-! ## A147812.P4106595100297660458

`A000040(A358531(n+1)-2)`
-/

namespace A147812.P4106595100297660458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A358531 (n + 1) - 2).toNat

end

end A147812.P4106595100297660458

namespace A147812

/-- `A000040(A358531(n+1)-2)` -/
def P4106595100297660458.Spec : Prop :=
  ∀ n, P4106595100297660458.a n = A147812 (n + 1)

end A147812

/-! ## A147812.P1979834143729530709

`A045319(lt[1, A073274(n+1)])`
-/

namespace A147812.P1979834143729530709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A147812.P1979834143729530709

namespace A147812

/-- `A045319(lt[1, A073274(n+1)])` -/
def P1979834143729530709.Spec : Prop :=
  ∀ n, P1979834143729530709.a n = A147812 (n + 1)

end A147812

/-! ## A147812.P12674075183951573524

`A065091(lt[A137174(n+2), 0])`
-/

namespace A147812.P12674075183951573524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137174 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A147812.P12674075183951573524

namespace A147812

/-- `A065091(lt[A137174(n+2), 0])` -/
def P12674075183951573524.Spec : Prop :=
  ∀ n, P12674075183951573524.a n = A147812 (n + 1)

end A147812

/-! ## A147812.P8786691817894447279

`A000040(lt[1, A073272(n+1)]+1)`
-/

namespace A147812.P8786691817894447279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A147812.P8786691817894447279

namespace A147812

/-- `A000040(lt[1, A073272(n+1)]+1)` -/
def P8786691817894447279.Spec : Prop :=
  ∀ n, P8786691817894447279.a n = A147812 (n + 1)

end A147812

/-! ## A147812.P6969533192457493425

`A000040(eq[1, A079054(n+2)]+1)`
-/

namespace A147812.P6969533192457493425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A147812.P6969533192457493425

namespace A147812

/-- `A000040(eq[1, A079054(n+2)]+1)` -/
def P6969533192457493425.Spec : Prop :=
  ∀ n, P6969533192457493425.a n = A147812 (n + 1)

end A147812

/-! ## A147812.P10184032244030321570

`A000040(lt[A048852(n+1), A048852(n)])`
-/

namespace A147812.P10184032244030321570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A147812.P10184032244030321570

namespace A147812

/-- `A000040(lt[A048852(n+1), A048852(n)])` -/
def P10184032244030321570.Spec : Prop :=
  ∀ n, P10184032244030321570.a n = A147812 (n + 1)

end A147812

/-! ## A147812.P7842119452647521521

`A000040(lt[A227127(n+1), A227127(n)])`
-/

namespace A147812.P7842119452647521521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A147812.P7842119452647521521

namespace A147812

/-- `A000040(lt[A227127(n+1), A227127(n)])` -/
def P7842119452647521521.Spec : Prop :=
  ∀ n, P7842119452647521521.a n = A147812 (n + 1)

end A147812

/-! ## A147812.P14267439970584670031

`A000040(eq[A045319(n+1), A051701(n+1)])`
-/

namespace A147812.P14267439970584670031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A147812.P14267439970584670031

namespace A147812

/-- `A000040(eq[A045319(n+1), A051701(n+1)])` -/
def P14267439970584670031.Spec : Prop :=
  ∀ n, P14267439970584670031.a n = A147812 (n + 1)

end A147812

/-! ## A147812.P18231779801191088545

`A000040(lt[A008578(n+1), A118534(n+1)])`
-/

namespace A147812.P18231779801191088545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A147812.P18231779801191088545

namespace A147812

/-- `A000040(lt[A008578(n+1), A118534(n+1)])` -/
def P18231779801191088545.Spec : Prop :=
  ∀ n, P18231779801191088545.a n = A147812 (n + 1)

end A147812

/-! ## A147812.P423482474899609103

`A045319(eq[A045319(n+2), A051701(n+2)])`
-/

namespace A147812.P423482474899609103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A147812.P423482474899609103

namespace A147812

/-- `A045319(eq[A045319(n+2), A051701(n+2)])` -/
def P423482474899609103.Spec : Prop :=
  ∀ n, P423482474899609103.a n = A147812 (n + 1)

end A147812

/-! ## A147812.P3678774829963364800

`A045344(eq[A045344(n+2), A051701(n+2)])`
-/

namespace A147812.P3678774829963364800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A147812.P3678774829963364800

namespace A147812

/-- `A045344(eq[A045344(n+2), A051701(n+2)])` -/
def P3678774829963364800.Spec : Prop :=
  ∀ n, P3678774829963364800.a n = A147812 (n + 1)

end A147812

/-!
# A147813: Primes prime(n) such that (-prime(n) + 2*prime(n+1) - prime(n+2))/((1 - prime(n) + prime(n+1))^(3/2)) < 0.

The programs for A147813, the canonical program `A147813.P1679973090657813842` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147813 has offset 1).

The definition of A147813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147813.P10917047945919534845

`∪[A122535(n+1), A063535(n)]`
-/

namespace A147813.P10917047945919534845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A147813.P10917047945919534845

namespace A147813

/-- `∪[A122535(n+1), A063535(n)]` -/
def P10917047945919534845.Spec : Prop :=
  ∀ n, (P10917047945919534845.a n : ℤ) = A147813 (n + 1)

end A147813

/-! ## A147813.P1679973090657813842

`A000040(A333230(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A147813

/-- `A000040(A333230(n+1))` -/
def P1679973090657813842.Spec : Prop :=
  ∀ n, P1679973090657813842.a n = A147813 (n + 1)

theorem P1679973090657813842.correct : P1679973090657813842.Spec := by
  intro n
  simp only [A147813, Nat.add_sub_cancel]

end A147813

/-! ## A147813.P10012613746815452633

`A000040(lt[A073272(n+1), 2]+1)`
-/

namespace A147813.P10012613746815452633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073272 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A147813.P10012613746815452633

namespace A147813

/-- `A000040(lt[A073272(n+1), 2]+1)` -/
def P10012613746815452633.Spec : Prop :=
  ∀ n, P10012613746815452633.a n = A147813 (n + 1)

end A147813

/-! ## A147813.P12671173061521147819

`A000040(lt[A073274(n+1), 2]+1)`
-/

namespace A147813.P12671173061521147819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073274 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A147813.P12671173061521147819

namespace A147813

/-- `A000040(lt[A073274(n+1), 2]+1)` -/
def P12671173061521147819.Spec : Prop :=
  ∀ n, P12671173061521147819.a n = A147813 (n + 1)

end A147813

/-! ## A147813.P379718496105240483

`A000040(∑[runs[A092243(1+n)+n]])`
-/

namespace A147813.P379718496105240483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (1 + n) + (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A147813.P379718496105240483

namespace A147813

/-- `A000040(∑[runs[A092243(1+n)+n]])` -/
def P379718496105240483.Spec : Prop :=
  ∀ n, P379718496105240483.a n = A147813 (n + 1)

end A147813

/-! ## A147813.P18024289245775918335

`A006093(∑[runs[A092243(n+1)+n]])+1`
-/

namespace A147813.P18024289245775918335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (n + 1) + (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A147813.P18024289245775918335

namespace A147813

/-- `A006093(∑[runs[A092243(n+1)+n]])+1` -/
def P18024289245775918335.Spec : Prop :=
  ∀ n, P18024289245775918335.a n = A147813 (n + 1)

end A147813

/-! ## A147813.P17849890703672774570

`A008578(A333230(n+1)+1)`
-/

namespace A147813.P17849890703672774570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A333230 (n + 1) + 1).toNat

end

end A147813.P17849890703672774570

namespace A147813

/-- `A008578(A333230(n+1)+1)` -/
def P17849890703672774570.Spec : Prop :=
  ∀ n, P17849890703672774570.a n = A147813 (n + 1)

end A147813

/-! ## A147813.P10059579428426223042

`A000040(lt[2, Δ[A048852(n+1)]]+1)`
-/

namespace A147813.P10059579428426223042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A147813.P10059579428426223042

namespace A147813

/-- `A000040(lt[2, Δ[A048852(n+1)]]+1)` -/
def P10059579428426223042.Spec : Prop :=
  ∀ n, P10059579428426223042.a n = A147813 (n + 1)

end A147813

/-! ## A147813.P8266306332957859047

`p?[A000040(n+1)-A051702(n+1)]`
-/

namespace A147813.P8266306332957859047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A051702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A147813.P8266306332957859047

namespace A147813

/-- `p?[A000040(n+1)-A051702(n+1)]` -/
def P8266306332957859047.Spec : Prop :=
  ∀ n, P8266306332957859047.a n = A147813 (n + 1)

end A147813

/-! ## A147813.P15248586986192222341

`record[gcd(A000040(n+1), A051701(n+2))]`
-/

namespace A147813.P15248586986192222341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A051701 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147813.P15248586986192222341

namespace A147813

/-- `record[gcd(A000040(n+1), A051701(n+2))]` -/
def P15248586986192222341.Spec : Prop :=
  ∀ n, (P15248586986192222341.a n : ℤ) = A147813 (n + 1)

end A147813

/-! ## A147813.P3808718749839493630

`p?[A000040(n+1)-(A046929(n+1)+1)]`
-/

namespace A147813.P3808718749839493630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A046929 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A147813.P3808718749839493630

namespace A147813

/-- `p?[A000040(n+1)-(A046929(n+1)+1)]` -/
def P3808718749839493630.Spec : Prop :=
  ∀ n, P3808718749839493630.a n = A147813 (n + 1)

end A147813

/-! ## A147813.P5867231341002763888

`A000040(eq[A008578(n+1), A051701(n+1)])`
-/

namespace A147813.P5867231341002763888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A147813.P5867231341002763888

namespace A147813

/-- `A000040(eq[A008578(n+1), A051701(n+1)])` -/
def P5867231341002763888.Spec : Prop :=
  ∀ n, P5867231341002763888.a n = A147813 (n + 1)

end A147813

/-! ## A147813.P1968971055177327992

`A000040(lt[A051701(n+1), A000040(n+1)])`
-/

namespace A147813.P1968971055177327992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A147813.P1968971055177327992

namespace A147813

/-- `A000040(lt[A051701(n+1), A000040(n+1)])` -/
def P1968971055177327992.Spec : Prop :=
  ∀ n, P1968971055177327992.a n = A147813 (n + 1)

end A147813

/-! ## A147813.P1311167910704031342

`A008578(eq[A008578(n+1), A051701(n+1)]+1)`
-/

namespace A147813.P1311167910704031342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A147813.P1311167910704031342

namespace A147813

/-- `A008578(eq[A008578(n+1), A051701(n+1)]+1)` -/
def P1311167910704031342.Spec : Prop :=
  ∀ n, P1311167910704031342.a n = A147813 (n + 1)

end A147813

/-! ## A147813.P1757691876146326277

`A051701(eq[A051701(n+1), A182986(n+1)]+1)`
-/

namespace A147813.P1757691876146326277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A147813.P1757691876146326277

namespace A147813

/-- `A051701(eq[A051701(n+1), A182986(n+1)]+1)` -/
def P1757691876146326277.Spec : Prop :=
  ∀ n, P1757691876146326277.a n = A147813 (n + 1)

end A147813

/-! ## A147813.P12126778041388190829

`A000040(eq[A000040(n+1), A051701(n+2)]+1)`
-/

namespace A147813.P12126778041388190829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A147813.P12126778041388190829

namespace A147813

/-- `A000040(eq[A000040(n+1), A051701(n+2)]+1)` -/
def P12126778041388190829.Spec : Prop :=
  ∀ n, P12126778041388190829.a n = A147813 (n + 1)

end A147813

/-! ## A147813.P3423989760173463937

`A000040(lt[A054541(n+1), A001223(n+1)+1])`
-/

namespace A147813.P3423989760173463937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A147813.P3423989760173463937

namespace A147813

/-- `A000040(lt[A054541(n+1), A001223(n+1)+1])` -/
def P3423989760173463937.Spec : Prop :=
  ∀ n, P3423989760173463937.a n = A147813 (n + 1)

end A147813

/-! ## A147813.P11678674164807030062

`A051701(lt[A051701(n+1), A008864(n+1)]+1)`
-/

namespace A147813.P11678674164807030062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A147813.P11678674164807030062

namespace A147813

/-- `A051701(lt[A051701(n+1), A008864(n+1)]+1)` -/
def P11678674164807030062.Spec : Prop :=
  ∀ n, P11678674164807030062.a n = A147813 (n + 1)

end A147813

/-! ## A147813.P5968970131135602752

`A051701(lt[A051701(n+1), A045319(n+1)]+1)`
-/

namespace A147813.P5968970131135602752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A147813.P5968970131135602752

namespace A147813

/-- `A051701(lt[A051701(n+1), A045319(n+1)]+1)` -/
def P5968970131135602752.Spec : Prop :=
  ∀ n, P5968970131135602752.a n = A147813 (n + 1)

end A147813

/-! ## A147813.P14292062271201490568

`A051701(lt[A051701(n+1), A078444(n+1)]+1)`
-/

namespace A147813.P14292062271201490568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A147813.P14292062271201490568

namespace A147813

/-- `A051701(lt[A051701(n+1), A078444(n+1)]+1)` -/
def P14292062271201490568.Spec : Prop :=
  ∀ n, P14292062271201490568.a n = A147813 (n + 1)

end A147813

/-!
# A147814: a(n) is the number of bits in the Elias omega-coded value of prime(n).

The programs for A147814, the canonical program `A147814.P6067598058715786826` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147814 has offset 1).

The definition of A147814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147814.P7314292398378727606

`A072464(p?[A259153(n)])+1`
-/

namespace A147814.P7314292398378727606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072464 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A147814.P7314292398378727606

namespace A147814

/-- `A072464(p?[A259153(n)])+1` -/
def P7314292398378727606.Spec : Prop :=
  ∀ n, P7314292398378727606.a n = A147814 (n + 1)

end A147814

/-! ## A147814.P15902323827413548028

`∑{d}[p?[A259153(n)], A072464(#)]`
-/

namespace A147814.P15902323827413548028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A072464 d

end

end A147814.P15902323827413548028

namespace A147814

/-- `∑{d}[p?[A259153(n)], A072464(#)]` -/
def P15902323827413548028.Spec : Prop :=
  ∀ n, P15902323827413548028.a n = A147814 (n + 1)

end A147814

/-! ## A147814.P11203067793548142344

`A072464(A000040(n+1))+1`
-/

namespace A147814.P11203067793548142344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072464 (A000040 (n + 1)).toNat + 1

end

end A147814.P11203067793548142344

namespace A147814

/-- `A072464(A000040(n+1))+1` -/
def P11203067793548142344.Spec : Prop :=
  ∀ n, P11203067793548142344.a n = A147814 (n + 1)

end A147814

/-! ## A147814.P11523348869981963197

`A072464(p?[A005100(n+1)])+1`
-/

namespace A147814.P11523348869981963197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072464 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A147814.P11523348869981963197

namespace A147814

/-- `A072464(p?[A005100(n+1)])+1` -/
def P11523348869981963197.Spec : Prop :=
  ∀ n, P11523348869981963197.a n = A147814 (n + 1)

end A147814

/-! ## A147814.P16667932747880719744

`A292046(A008864(n+1))-p?[A259153(n)]`
-/

namespace A147814.P16667932747880719744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292046 (A008864 (n + 1)).toNat - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A147814.P16667932747880719744

namespace A147814

/-- `A292046(A008864(n+1))-p?[A259153(n)]` -/
def P16667932747880719744.Spec : Prop :=
  ∀ n, P16667932747880719744.a n = A147814 (n + 1)

end A147814

/-! ## A147814.P6067598058715786826

`A292046(A008864(n+1))-p?[A005100(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A147814

/-- `A292046(A008864(n+1))-p?[A005100(n+1)]` -/
def P6067598058715786826.Spec : Prop :=
  ∀ n, P6067598058715786826.a n = A147814 (n + 1)

theorem P6067598058715786826.correct : P6067598058715786826.Spec := by
  intro n
  simp only [A147814, Nat.add_sub_cancel]

end A147814

/-! ## A147814.P8882230250845002782

`A292046(A000040(n+1)+1)-A000040(n+1)`
-/

namespace A147814.P8882230250845002782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292046 (A000040 (n + 1) + 1).toNat - A000040 (n + 1)

end

end A147814.P8882230250845002782

namespace A147814

/-- `A292046(A000040(n+1)+1)-A000040(n+1)` -/
def P8882230250845002782.Spec : Prop :=
  ∀ n, P8882230250845002782.a n = A147814 (n + 1)

end A147814

/-! ## A147814.P6412376675770799319

`A072464(p?[A131732(n)])+1`
-/

namespace A147814.P6412376675770799319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072464 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A147814.P6412376675770799319

namespace A147814

/-- `A072464(p?[A131732(n)])+1` -/
def P6412376675770799319.Spec : Prop :=
  ∀ n, P6412376675770799319.a n = A147814 (n + 1)

end A147814

/-! ## A147814.P17401318773481452770

`∑{d}[p?[A131732(n)], A072464(#)]`
-/

namespace A147814.P17401318773481452770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A072464 d

end

end A147814.P17401318773481452770

namespace A147814

/-- `∑{d}[p?[A131732(n)], A072464(#)]` -/
def P17401318773481452770.Spec : Prop :=
  ∀ n, P17401318773481452770.a n = A147814 (n + 1)

end A147814

/-!
# A147816: Concatenation of n digits 1 and 2(n-1) digits 0.

The programs for A147816, the canonical program `A147816.P6284431573632983481` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147816 has offset 1).

The definition of A147816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147816.P6284431573632983481

`A138119(n+1)/10`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A147816

/-- `A138119(n+1)/10` -/
def P6284431573632983481.Spec : Prop :=
  ∀ n, P6284431573632983481.a n = (A147816 (n + 1) : ℚ)

end A147816

/-! ## A147816.P5481947383560200299

`(10^n)²*∑[10^n]`
-/

namespace A147816.P5481947383560200299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 ^ n) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A147816.P5481947383560200299

namespace A147816

/-- `(10^n)²*∑[10^n]` -/
def P5481947383560200299.Spec : Prop :=
  ∀ n, (P5481947383560200299.a n : ℤ) = A147816 (n + 1)

end A147816

/-! ## A147816.P14209034711441142546

`lcm((10^n)², ∑[10^n])`
-/

namespace A147816.P14209034711441142546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((10 ^ n) ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A147816.P14209034711441142546

namespace A147816

/-- `lcm((10^n)², ∑[10^n])` -/
def P14209034711441142546.Spec : Prop :=
  ∀ n, (P14209034711441142546.a n : ℤ) = A147816 (n + 1)

end A147816

/-! ## A147816.P17404275005550046395

`A309761(A064225(n))`
-/

namespace A147816.P17404275005550046395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A064225 n).toNat

end

end A147816.P17404275005550046395

namespace A147816

/-- `A309761(A064225(n))` -/
def P17404275005550046395.Spec : Prop :=
  ∀ n, P17404275005550046395.a n = A147816 (n + 1)

end A147816

/-! ## A147816.P6809313579139528867

`A309761(A062725(n)+1)`
-/

namespace A147816.P6809313579139528867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A062725 n + 1).toNat

end

end A147816.P6809313579139528867

namespace A147816

/-- `A309761(A062725(n)+1)` -/
def P6809313579139528867.Spec : Prop :=
  ∀ n, P6809313579139528867.a n = A147816 (n + 1)

end A147816

/-!
# A147817: Number of consistent sets of 4 irreflexive binary order relationships over n objects.

The programs for A147817, the canonical program `A147817.P2306518472124610913` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147817 has offset 4).

The definition of A147817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147817.P2306518472124610913

`C(n+4, 4)*((n+4)^4+2*(n+4)^3-5*(n+4)²-22*(n+4)-30)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A147817

/-- `C(n+4, 4)*((n+4)^4+2*(n+4)^3-5*(n+4)²-22*(n+4)-30)` -/
def P2306518472124610913.Spec : Prop :=
  ∀ n, P2306518472124610913.a n = A147817 (n + 4)

theorem P2306518472124610913.correct : P2306518472124610913.Spec := by
  intro n
  simp only [A147817, Nat.add_sub_cancel]

end A147817

/-! ## A147817.P6517318540904516586

`A081064(A000125(n+3)+4)`
-/

namespace A147817.P6517318540904516586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081064 (A000125 (n + 3) + 4).toNat

end

end A147817.P6517318540904516586

namespace A147817

/-- `A081064(A000125(n+3)+4)` -/
def P6517318540904516586.Spec : Prop :=
  ∀ n, P6517318540904516586.a n = A147817 (n + 4)

end A147817

/-!
# A147818: Period 4: repeat [5, 9, 9, 5].

The programs for A147818, the canonical program `A147818.P13749628108963590930` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147818 has offset 1).

The definition of A147818 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A147818.anchor (n : ℕ) (hn : 1 ≤ n) : A147818 n = (([5, 9, 9, 5].getD ((n - 1) % 4) 0 : ℕ) : ℤ)` in `Proof.A147.A147818`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147818.P13749628108963590930

`a(n-4)` with `a(0)=5, a(1)=9, a(2)=9, a(3)=5`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A147818

/-- `a(n-4)` -/
def P13749628108963590930.Spec : Prop :=
  ∀ n, (P13749628108963590930.a n : ℤ) = A147818 (n + 1)

theorem P13749628108963590930.correct : P13749628108963590930.Spec := by
  intro n
  simp only [A147818, Nat.add_sub_cancel]

end A147818

/-!
# A147819: Nearest-neighbors of odd primes.

The programs for A147819, there is no canonical definition to state claims against.
-/

/-! ## A147819.P17432978572167825882

`lt[n, ∑{p}[1-n², #]]`
-/

namespace A147819.P17432978572167825882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A147819.P17432978572167825882

/-! ## A147819.P17779252593693444063

`∪[p?[2*n+1], p?[2*n+1]+2]-1`
-/

namespace A147819.P17779252593693444063
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n) + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n : ℤ) - 1

end

end A147819.P17779252593693444063

/-! ## A147819.P10665202304459370303

`2*A147820(n+1)`
-/

namespace A147819.P10665202304459370303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147820 (n + 1)

end

end A147819.P10665202304459370303

/-! ## A147819.P6770546423261210641

`lcm(2, A210939(n+1))`
-/

namespace A147819.P6770546423261210641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A210939 (n + 1))

end

end A147819.P6770546423261210641

/-! ## A147819.P1634153087448471509

`filter[2*n, A051700(#)]`
-/

namespace A147819.P1634153087448471509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A051700 (f1 j) = 1) n)

end

end A147819.P1634153087448471509

/-! ## A147819.P8917127745732541478

`∩[2*n, A045718(n)]`
-/

namespace A147819.P8917127745732541478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147819.P8917127745732541478

/-! ## A147819.P14593646962986871998

`∑[runs[A110560(n)]]+1`
-/

namespace A147819.P14593646962986871998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A147819.P14593646962986871998

/-! ## A147819.P4355066667040525276

`∑[2*runs[A211173(n)]]`
-/

namespace A147819.P4355066667040525276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211173 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147819.P4355066667040525276

/-! ## A147819.P17473924887545906678

`eq[(-1)^n, A051700(n)]`
-/

namespace A147819.P17473924887545906678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A147819.P17473924887545906678

/-!
# A147820: Nearest-neighbors of odd primes, divided by 2.

The programs for A147820, there is no canonical definition to state claims against.
-/

/-! ## A147820.P11123151611488118193

`A147819(n+1)/2`
-/

namespace A147820.P11123151611488118193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147819 (n + 1) : ℚ) / 2

end

end A147820.P11123151611488118193

/-! ## A147820.P2169114103308384020

`lt[2*n, ∑{p}[1-(2*n)², #]]`
-/

namespace A147820.P2169114103308384020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * n) ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A147820.P2169114103308384020

/-! ## A147820.P10091819582963810244

`∑[runs[A211173(n)]]`
-/

namespace A147820.P10091819582963810244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211173 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147820.P10091819582963810244

/-! ## A147820.P4790750252879453685

`eq[1, A051700(2*n)]`
-/

namespace A147820.P4790750252879453685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A147820.P4790750252879453685

/-! ## A147820.P1051057648891597817

`lt[A051699(2*n), 2]`
-/

namespace A147820.P1051057648891597817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A147820.P1051057648891597817

/-! ## A147820.P9625828532360009986

`lt[0, Δ[A128059(n)]²]`
-/

namespace A147820.P9625828532360009986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A147820.P9625828532360009986

/-! ## A147820.P13293436692956184635

`∑[runs[A085090(n+1)]]`
-/

namespace A147820.P13293436692956184635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147820.P13293436692956184635

/-! ## A147820.P340839095182796087

`∑[runs[A128059(n+1)]]`
-/

namespace A147820.P340839095182796087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147820.P340839095182796087

/-!
# A147823: Minimum number k for which the digital sum of k*n is 3*n.

The programs for A147823, there is no canonical definition to state claims against.
-/

/-! ## A147823.P12876797217254109904

`A002998(A118759(3*n))/(C(2, n+2)+n)`
-/

namespace A147823.P12876797217254109904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002998 (A118759 (3 * n)).toNat : ℚ) / (Nat.choose 2 (n + 2) + n : ℚ)

end

end A147823.P12876797217254109904

/-! ## A147823.P7429552534373340879

`A002998(A118759(3*n))/A028310(n)`
-/

namespace A147823.P7429552534373340879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002998 (A118759 (3 * n)).toNat : ℚ) / (A028310 n : ℚ)

end

end A147823.P7429552534373340879

/-! ## A147823.P10399611238051192754

`A002998(A118759(3*n))/A065033(2*n)`
-/

namespace A147823.P10399611238051192754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002998 (A118759 (3 * n)).toNat : ℚ) / (A065033 (2 * n) : ℚ)

end

end A147823.P10399611238051192754

/-! ## A147823.P7956366077743002141

`A002998(A118759(3*n))/(A000038(n)+n)`
-/

namespace A147823.P7956366077743002141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002998 (A118759 (3 * n)).toNat : ℚ) / (A000038 n + (n : ℤ) : ℚ)

end

end A147823.P7956366077743002141

/-! ## A147823.P15644001632892577692

`A002998(A118759(3*n))/A007318(A000124(n))`
-/

namespace A147823.P15644001632892577692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002998 (A118759 (3 * n)).toNat : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A147823.P15644001632892577692

/-!
# A147824: Minimum number k for which the digital sum of k*n is 4*n.

The programs for A147824, there is no canonical definition to state claims against.
-/

/-! ## A147824.P13712995096332355843

`A115908(n+1)-A040619(A005602(n+1))`
-/

namespace A147824.P13712995096332355843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115908 (n + 1) - A040619 (A005602 (n + 1)).toNat

end

end A147824.P13712995096332355843

/-! ## A147824.P6566806498511715656

`A115908(n+1)-A374251(A086893(n+1))`
-/

namespace A147824.P6566806498511715656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115908 (n + 1) - A374251 (A086893 (n + 1)).toNat

end

end A147824.P6566806498511715656

/-!
# A147825: Minimum number k for which the digital sum of k*n is 5*n.

The programs for A147825, there is no canonical definition to state claims against.
-/

/-! ## A147825.P15256532346391572831

`A236966(A258896(n+1))`
-/

namespace A147825.P15256532346391572831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236966 (A258896 (n + 1)).toNat

end

end A147825.P15256532346391572831

/-!
# A147826: Minimum number k for which the digital sum of k*n is 6*n.

The programs for A147826, there is no canonical definition to state claims against.
-/

/-! ## A147826.P4006142988165190739

`3*A147822(3*n)`
-/

namespace A147826.P4006142988165190739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A147822 (3 * n)

end

end A147826.P4006142988165190739

/-! ## A147826.P10288891657565486500

`A008585(A147822(3*n))`
-/

namespace A147826.P10288891657565486500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A147822 (3 * n)).toNat

end

end A147826.P10288891657565486500

/-!
# A147829: Minimum number k for which the digital sum of k*n is 9*n.

The programs for A147829, there is no canonical definition to state claims against.
-/

/-! ## A147829.P11000604540682686323

`3*A147823(3*n)`
-/

namespace A147829.P11000604540682686323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A147823 (3 * n)

end

end A147829.P11000604540682686323

/-!
# A147830: Minimum number k for which the digital sum of k*n is 10*n.

The programs for A147830, there is no canonical definition to state claims against.
-/

/-! ## A147830.P16714661850285684367

`A002998(10*n)/A004277(5*n)`
-/

namespace A147830.P16714661850285684367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002998 (10 * n) : ℚ) / (A004277 (5 * n) : ℚ)

end

end A147830.P16714661850285684367

/-! ## A147830.P18284772814790854152

`record[A131382(2*(n+2))*A232990(2*(n+1))]`
-/

namespace A147830.P18284772814790854152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131382 (2 * (n + 2)) * A232990 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147830.P18284772814790854152

/-!
# A147832: Numbers congruent (0,2) mod 14.

The programs for A147832, the canonical program `A147832.P10691945415349476430` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147832 has offset 1).

The definition of A147832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147832.P18023389329085988712

`ogf((2x+12x^2)/(1-x-x^2+x^3))`
-/

namespace A147832.P18023389329085988712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 12] [1, -1, -1, 1] n

end

end A147832.P18023389329085988712

namespace A147832

/-- `ogf((2x+12x^2)/(1-x-x^2+x^3))` -/
def P18023389329085988712.Spec : Prop :=
  ∀ n, P18023389329085988712.a n = A147832 (n + 1)

end A147832

/-! ## A147832.P5013286301484713281

`14*(n+1)-a(n-1)-26` with `a(0)=0`
-/

namespace A147832.P5013286301484713281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (14 * (n + 1) : ℤ) - a (n - 1) - 26

end

end A147832.P5013286301484713281

namespace A147832

/-- `14*(n+1)-a(n-1)-26` -/
def P5013286301484713281.Spec : Prop :=
  ∀ n, P5013286301484713281.a n = A147832 (n + 1)

end A147832

/-! ## A147832.P1171583555171062958

`(14*(n+1)-5*(-1)^(n+1)-19)/2`
-/

namespace A147832.P1171583555171062958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((14 * (n + 1) : ℤ) - 5 * (-1) ^ (n + 1) - 19 : ℚ) / 2

end

end A147832.P1171583555171062958

namespace A147832

/-- `(14*(n+1)-5*(-1)^(n+1)-19)/2` -/
def P1171583555171062958.Spec : Prop :=
  ∀ n, P1171583555171062958.a n = (A147832 (n + 1) : ℚ)

end A147832

/-! ## A147832.P10691945415349476430

`2*A047274(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A147832

/-- `2*A047274(n+1)` -/
def P10691945415349476430.Spec : Prop :=
  ∀ n, P10691945415349476430.a n = A147832 (n + 1)

theorem P10691945415349476430.correct : P10691945415349476430.Spec := by
  intro n
  simp only [A147832, Nat.add_sub_cancel]

end A147832

/-! ## A147832.P15855225930786815709

`14+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A147832.P15855225930786815709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  14 + a (n - 2)

end

end A147832.P15855225930786815709

namespace A147832

/-- `14+a(n-2)` -/
def P15855225930786815709.Spec : Prop :=
  ∀ n, (P15855225930786815709.a n : ℤ) = A147832 (n + 1)

end A147832

/-! ## A147832.P14230486490658001713

`record[n-(n^5)%14]`
-/

namespace A147832.P14230486490658001713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n ^ 5 % 14 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147832.P14230486490658001713

namespace A147832

/-- `record[n-(n^5)%14]` -/
def P14230486490658001713.Spec : Prop :=
  ∀ n, P14230486490658001713.a n = A147832 (n + 1)

end A147832

/-! ## A147832.P2860010590354691909

`∑[14-a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A147832.P2860010590354691909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  14 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147832.P2860010590354691909

namespace A147832

/-- `∑[14-a(n-1)]` -/
def P2860010590354691909.Spec : Prop :=
  ∀ n, P2860010590354691909.a n = A147832 (n + 1)

end A147832

/-! ## A147832.P3677235666168083259

`7*n-5*n%2`
-/

namespace A147832.P3677235666168083259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - ((5 * (n % 2) : ℕ) : ℤ)

end

end A147832.P3677235666168083259

namespace A147832

/-- `7*n-5*n%2` -/
def P3677235666168083259.Spec : Prop :=
  ∀ n, P3677235666168083259.a n = A147832 (n + 1)

end A147832

/-! ## A147832.P8772833202112683303

`7*n-5*and(1, n)`
-/

namespace A147832.P8772833202112683303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - (5 * Nat.land 1 n : ℤ)

end

end A147832.P8772833202112683303

namespace A147832

/-- `7*n-5*and(1, n)` -/
def P8772833202112683303.Spec : Prop :=
  ∀ n, P8772833202112683303.a n = A147832 (n + 1)

end A147832

/-! ## A147832.P9313483595099449637

`filter[2*n, C(2, #%7)]`
-/

namespace A147832.P9313483595099449637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Nat.choose 2 (f1 j % 7) = 1) n)

end

end A147832.P9313483595099449637

namespace A147832

/-- `filter[2*n, C(2, #%7)]` -/
def P9313483595099449637.Spec : Prop :=
  ∀ n, (P9313483595099449637.a n : ℤ) = A147832 (n + 1)

end A147832

/-! ## A147832.P1133670543420270682

`5*and(n, -2)+2*n`
-/

namespace A147832.P1133670543420270682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * Int.land (n : ℤ) (-2) + (2 * n : ℤ)

end

end A147832.P1133670543420270682

namespace A147832

/-- `5*and(n, -2)+2*n` -/
def P1133670543420270682.Spec : Prop :=
  ∀ n, P1133670543420270682.a n = A147832 (n + 1)

end A147832

/-! ## A147832.P2630499808488108476

`∑[5*a((n+1)%2)+2]` with `a(0)=0`
-/

namespace A147832.P2630499808488108476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  5 * f1 ((n + 1) % 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147832.P2630499808488108476

namespace A147832

/-- `∑[5*a((n+1)%2)+2]` -/
def P2630499808488108476.Spec : Prop :=
  ∀ n, (P2630499808488108476.a n : ℤ) = A147832 (n + 1)

end A147832

/-! ## A147832.P13572528842765043547

`A113806(n+1)-6`
-/

namespace A147832.P13572528842765043547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113806 (n + 1) - 6

end

end A147832.P13572528842765043547

namespace A147832

/-- `A113806(n+1)-6` -/
def P13572528842765043547.Spec : Prop :=
  ∀ n, P13572528842765043547.a n = A147832 (n + 1)

end A147832

/-! ## A147832.P5594391252770083470

`2*(A047353(n+1)-1)`
-/

namespace A147832.P5594391252770083470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047353 (n + 1) - 1)

end

end A147832.P5594391252770083470

namespace A147832

/-- `2*(A047353(n+1)-1)` -/
def P5594391252770083470.Spec : Prop :=
  ∀ n, P5594391252770083470.a n = A147832 (n + 1)

end A147832

/-! ## A147832.P1931132363853553510

`2*(A047358(n+1)-2)`
-/

namespace A147832.P1931132363853553510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047358 (n + 1) - 2)

end

end A147832.P1931132363853553510

namespace A147832

/-- `2*(A047358(n+1)-2)` -/
def P1931132363853553510.Spec : Prop :=
  ∀ n, P1931132363853553510.a n = A147832 (n + 1)

end A147832

/-! ## A147832.P7582658175820175032

`2*(A047341(n+1)-3)`
-/

namespace A147832.P7582658175820175032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047341 (n + 1) - 3)

end

end A147832.P7582658175820175032

namespace A147832

/-- `2*(A047341(n+1)-3)` -/
def P7582658175820175032.Spec : Prop :=
  ∀ n, P7582658175820175032.a n = A147832 (n + 1)

end A147832

/-! ## A147832.P11801671471308801109

`2*(A047374(n+1)-4)`
-/

namespace A147832.P11801671471308801109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047374 (n + 1) - 4)

end

end A147832.P11801671471308801109

namespace A147832

/-- `2*(A047374(n+1)-4)` -/
def P11801671471308801109.Spec : Prop :=
  ∀ n, P11801671471308801109.a n = A147832 (n + 1)

end A147832

/-! ## A147832.P5358861863732688438

`2*(A047319(n+1)-5)`
-/

namespace A147832.P5358861863732688438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047319 (n + 1) - 5)

end

end A147832.P5358861863732688438

namespace A147832

/-- `2*(A047319(n+1)-5)` -/
def P5358861863732688438.Spec : Prop :=
  ∀ n, P5358861863732688438.a n = A147832 (n + 1)

end A147832

/-! ## A147832.P10075473228693747266

`A146509(n+1)-Δ[n²]`
-/

namespace A147832.P10075473228693747266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146509 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A147832.P10075473228693747266

namespace A147832

/-- `A146509(n+1)-Δ[n²]` -/
def P10075473228693747266.Spec : Prop :=
  ∀ n, P10075473228693747266.a n = A147832 (n + 1)

end A147832

/-! ## A147832.P17915306725771700356

`A112653(n)+A110654(n)`
-/

namespace A147832.P17915306725771700356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 n + A110654 n

end

end A147832.P17915306725771700356

namespace A147832

/-- `A112653(n)+A110654(n)` -/
def P17915306725771700356.Spec : Prop :=
  ∀ n, P17915306725771700356.a n = A147832 (n + 1)

end A147832

/-!
# A147833: Expansion of (4*x^2+x-1)/(12*x^3+4*x^2+x-1).

The programs for A147833, the canonical program `A147833.P13467524102558836786` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147833 has offset 0).

The definition of A147833 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-4x^2)/(1-x-4x^2-12x^3))` (program `A147833.P13467524102558836786`, by `A147833.P13467524102558836786.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147833.P12157854114813904108

`a(n-1)+4*a(n-2)+12*a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A147833.P12157854114813904108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) + 4 * a (n - 2) + 12 * a (n - 3)

end

end A147833.P12157854114813904108

namespace A147833

/-- `a(n-1)+4*a(n-2)+12*a(n-3)` -/
def P12157854114813904108.Spec : Prop :=
  ∀ n, (P12157854114813904108.a n : ℤ) = A147833 n

end A147833

/-! ## A147833.P13467524102558836786

`ogf((1-x-4x^2)/(1-x-4x^2-12x^3))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A147833

/-- `ogf((1-x-4x^2)/(1-x-4x^2-12x^3))` -/
def P13467524102558836786.Spec : Prop :=
  ∀ n, P13467524102558836786.a n = A147833 n

theorem P13467524102558836786.correct : P13467524102558836786.Spec := by
  intro n
  simp only [A147833]

end A147833

/-! ## A147833.P5485882326316869372

`A028631(round(sqrt(n))^A082273(n+1))`
-/

namespace A147833.P5485882326316869372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028631 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) : ℚ) ^ (A082273 (n + 1) : ℤ))).toNat

end

end A147833.P5485882326316869372

namespace A147833

/-- `A028631(round(sqrt(n))^A082273(n+1))` -/
def P5485882326316869372.Spec : Prop :=
  ∀ n, P5485882326316869372.a n = A147833 n

end A147833

/-!
# A147834: Coefficient expansion of the characteristic polynomial of the {3,4,5} simplex matrix: M = {{0, 3, 0}, {0, 0, 4}, {1, 1, 1}}; p(x)=12 + 4 x + x^2 - x^3.

The programs for A147834, the canonical program `A147834.P9533967087431855508` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147834 has offset 0).

The definition of A147834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147834.P8861226938060749641

`ogf(1/(1-x-4x^2-12x^3))`
-/

namespace A147834.P8861226938060749641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -4, -12] n

end

end A147834.P8861226938060749641

namespace A147834

/-- `ogf(1/(1-x-4x^2-12x^3))` -/
def P8861226938060749641.Spec : Prop :=
  ∀ n, P8861226938060749641.a n = A147834 n

end A147834

/-! ## A147834.P9533967087431855508

`a(n-1)+4*a(n-2)+12*a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A147834

/-- `a(n-1)+4*a(n-2)+12*a(n-3)` -/
def P9533967087431855508.Spec : Prop :=
  ∀ n, (P9533967087431855508.a n : ℤ) = A147834 n

theorem P9533967087431855508.correct : P9533967087431855508.Spec := by
  intro n
  simp only [A147834]

end A147834

/-! ## A147834.P15310457622108235214

`∑[A147833(n)+A147833(n+1)/3]`
-/

namespace A147834.P15310457622108235214
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147833 n : ℚ) + (A147833 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147834.P15310457622108235214

namespace A147834

/-- `∑[A147833(n)+A147833(n+1)/3]` -/
def P15310457622108235214.Spec : Prop :=
  ∀ n, P15310457622108235214.a n = (A147834 n : ℚ)

end A147834

/-! ## A147834.P1346647088962842399

`A147833(n+3)/12`
-/

namespace A147834.P1346647088962842399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147833 (n + 3) : ℚ) / 12

end

end A147834.P1346647088962842399

namespace A147834

/-- `A147833(n+3)/12` -/
def P1346647088962842399.Spec : Prop :=
  ∀ n, P1346647088962842399.a n = (A147834 n : ℚ)

end A147834

/-! ## A147834.P18137718830087156707

`ceil(record[A147833(n)/12])`
-/

namespace A147834.P18137718830087156707
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147833 n : ℚ) / 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A147834.P18137718830087156707

namespace A147834

/-- `ceil(record[A147833(n)/12])` -/
def P18137718830087156707.Spec : Prop :=
  ∀ n, P18137718830087156707.a n = A147834 n

end A147834

/-!
# A147835: a(n) = floor(Pi * n^n).

The programs for A147835, the canonical program `A147835.P11710144450132806496` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147835 has offset 1).

The definition of A147835 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(π*(n+1)^(n+1))` (program `A147835.P11710144450132806496`, by `A147835.P11710144450132806496.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147835.P11710144450132806496

`floor(π*(n+1)^(n+1))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A147835

/-- `floor(π*(n+1)^(n+1))` -/
def P11710144450132806496.Spec : Prop :=
  ∀ n, P11710144450132806496.a n = A147835 (n + 1)

theorem P11710144450132806496.correct : P11710144450132806496.Spec := by
  intro n
  simp only [A147835, Nat.add_sub_cancel]

end A147835

/-!
# A147836: a(n) = floor(Pi * n!).

The programs for A147836, the canonical program `A147836.P12252715361488973794` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147836 has offset 0).

The definition of A147836 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(π*n!)` (program `A147836.P12252715361488973794`, by `A147836.P12252715361488973794.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147836.P12252715361488973794

`floor(π*n!)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A147836

/-- `floor(π*n!)` -/
def P12252715361488973794.Spec : Prop :=
  ∀ n, P12252715361488973794.a n = A147836 n

theorem P12252715361488973794.correct : P12252715361488973794.Spec := by
  intro n
  simp only [A147836]

end A147836

/-! ## A147836.P14496494638528171170

`ceil(π*n!)-1`
-/

namespace A147836.P14496494638528171170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (Nat.factorial n : ℝ)⌉ - 1

end

end A147836.P14496494638528171170

namespace A147836

/-- `ceil(π*n!)-1` -/
def P14496494638528171170.Spec : Prop :=
  ∀ n, P14496494638528171170.a n = A147836 n

end A147836

/-! ## A147836.P9635714774889679109

`floor(n!*acos(-1))`
-/

namespace A147836.P9635714774889679109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n : ℝ) * Real.arccos (-1 : ℝ)⌋

end

end A147836.P9635714774889679109

namespace A147836

/-- `floor(n!*acos(-1))` -/
def P9635714774889679109.Spec : Prop :=
  ∀ n, P9635714774889679109.a n = A147836 n

theorem P9635714774889679109.correct : P9635714774889679109.Spec := by
  intro n
  simp only [A147836, Nat.add_sub_cancel, A147836.P9635714774889679109.a, A147836.P12252715361488973794.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A147836

/-! ## A147836.P622317343740022661

`floor(π*A000142(n))`
-/

namespace A147836.P622317343740022661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A000142 n : ℝ)⌋

end

end A147836.P622317343740022661

namespace A147836

/-- `floor(π*A000142(n))` -/
def P622317343740022661.Spec : Prop :=
  ∀ n, P622317343740022661.a n = A147836 n

theorem P622317343740022661.correct : P622317343740022661.Spec := by
  intro n
  simp only [A147836, Nat.add_sub_cancel, A147836.P622317343740022661.a, A147836.P12252715361488973794.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147836

/-!
# A147837: a(n)=7*a(n-1)-5*a(n-2), a(0)=1, a(1)=5.

The programs for A147837, the canonical program `A147837.P1786472496109269247` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147837 has offset 0).

The definition of A147837 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-5*a(n-2)` (program `A147837.P1786472496109269247`, by `A147837.P1786472496109269247.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147837.P117716051957461281

`ogf((1-2x)/(1-7x+5x^2))`
-/

namespace A147837.P117716051957461281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -7, 5] n

end

end A147837.P117716051957461281

namespace A147837

/-- `ogf((1-2x)/(1-7x+5x^2))` -/
def P117716051957461281.Spec : Prop :=
  ∀ n, P117716051957461281.a n = A147837 n

end A147837

/-! ## A147837.P1786472496109269247

`7*a(n-1)-5*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A147837

/-- `7*a(n-1)-5*a(n-2)` -/
def P1786472496109269247.Spec : Prop :=
  ∀ n, P1786472496109269247.a n = A147837 n

theorem P1786472496109269247.correct : P1786472496109269247.Spec := by
  intro n
  simp only [A147837]

end A147837

/-! ## A147837.P4691093735081994606

`∑{#}[n, A147703(C(n+1, 2)+#)*4^#]`
-/

namespace A147837.P4691093735081994606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A147703 (Nat.choose (n + 1) 2 + k) * (4 ^ k : ℤ)

end

end A147837.P4691093735081994606

namespace A147837

/-- `∑{#}[n, A147703(C(n+1, 2)+#)*4^#]` -/
def P4691093735081994606.Spec : Prop :=
  ∀ n, P4691093735081994606.a n = A147837 n

end A147837

/-! ## A147837.P9688094671315980375

`∑{#}[n, C(n, #)*A100237(#)]`
-/

namespace A147837.P9688094671315980375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A100237 k

end

end A147837.P9688094671315980375

namespace A147837

/-- `∑{#}[n, C(n, #)*A100237(#)]` -/
def P9688094671315980375.Spec : Prop :=
  ∀ n, P9688094671315980375.a n = A147837 n

end A147837

/-! ## A147837.P2978006498537071932

`A018904(n)-A190974(n)`
-/

namespace A147837.P2978006498537071932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018904 n - A190974 n

end

end A147837.P2978006498537071932

namespace A147837

/-- `A018904(n)-A190974(n)` -/
def P2978006498537071932.Spec : Prop :=
  ∀ n, P2978006498537071932.a n = A147837 n

end A147837

/-! ## A147837.P16311287749110794817

`A190974(n+1)-2*A190974(n)`
-/

namespace A147837.P16311287749110794817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190974 (n + 1) - 2 * A190974 n

end

end A147837.P16311287749110794817

namespace A147837

/-- `A190974(n+1)-2*A190974(n)` -/
def P16311287749110794817.Spec : Prop :=
  ∀ n, P16311287749110794817.a n = A147837 n

end A147837

/-! ## A147837.P6467087403306416848

`Δ[A190974(n)]-A190974(n)-n*A000038(n)`
-/

namespace A147837.P6467087403306416848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A190974 n - (n : ℤ) * A000038 n

end

end A147837.P6467087403306416848

namespace A147837

/-- `Δ[A190974(n)]-A190974(n)-n*A000038(n)` -/
def P6467087403306416848.Spec : Prop :=
  ∀ n, P6467087403306416848.a n = A147837 n

end A147837

/-! ## A147837.P1858464915785820874

`A018904(n)-A018904(n+1)%A018904(n)`
-/

namespace A147837.P1858464915785820874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018904 n - Int.tmod (A018904 (n + 1)) (A018904 n)

end

end A147837.P1858464915785820874

namespace A147837

/-- `A018904(n)-A018904(n+1)%A018904(n)` -/
def P1858464915785820874.Spec : Prop :=
  ∀ n, P1858464915785820874.a n = A147837 n

end A147837

/-!
# A147838: a(n) = 8*a(n-1) - 6*a(n-2), a(0)=1, a(1)=6.

The programs for A147838, the canonical program `A147838.P5896228634175759739` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147838 has offset 0).

The definition of A147838 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-6*a(n-2)` (program `A147838.P5896228634175759739`, by `A147838.P5896228634175759739.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147838.P12796688572581988411

`ogf((1-2x)/(1-8x+6x^2))`
-/

namespace A147838.P12796688572581988411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -8, 6] n

end

end A147838.P12796688572581988411

namespace A147838

/-- `ogf((1-2x)/(1-8x+6x^2))` -/
def P12796688572581988411.Spec : Prop :=
  ∀ n, P12796688572581988411.a n = A147838 n

end A147838

/-! ## A147838.P5896228634175759739

`8*a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A147838

/-- `8*a(n-1)-6*a(n-2)` -/
def P5896228634175759739.Spec : Prop :=
  ∀ n, P5896228634175759739.a n = A147838 n

theorem P5896228634175759739.correct : P5896228634175759739.Spec := by
  intro n
  simp only [A147838]

end A147838

/-! ## A147838.P13070437877437633166

`2*(A154635(n)+a(n-1))` with `a(0)=1`
-/

namespace A147838.P13070437877437633166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A154635 n + a (n - 1))

end

end A147838.P13070437877437633166

namespace A147838

/-- `2*(A154635(n)+a(n-1))` -/
def P13070437877437633166.Spec : Prop :=
  ∀ n, P13070437877437633166.a n = A147838 n

end A147838

/-! ## A147838.P2324061926155360611

`abs(A190978(n)-Δ[A190978(n)])`
-/

namespace A147838.P2324061926155360611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A190978 n - (f1 (n + 1) - f1 n)|

end

end A147838.P2324061926155360611

namespace A147838

/-- `abs(A190978(n)-Δ[A190978(n)])` -/
def P2324061926155360611.Spec : Prop :=
  ∀ n, P2324061926155360611.a n = A147838 n

end A147838

/-! ## A147838.P1553727306717161681

`(5+sqrt(10))*(4+sqrt(10))^n/10+(5-sqrt(10))*(4-sqrt(10))^n/10`
-/

namespace A147838.P1553727306717161681
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 + Real.sqrt (10 : ℝ)) * (4 + Real.sqrt (10 : ℝ)) ^ n / 10 + (5 - Real.sqrt (10 : ℝ)) * (4 - Real.sqrt (10 : ℝ)) ^ n / 10

end

end A147838.P1553727306717161681

namespace A147838

/-- `(5+sqrt(10))*(4+sqrt(10))^n/10+(5-sqrt(10))*(4-sqrt(10))^n/10` -/
def P1553727306717161681.Spec : Prop :=
  ∀ n, P1553727306717161681.a n = (A147838 n : ℝ)

theorem P1553727306717161681.correct : P1553727306717161681.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A147838, Nat.add_sub_cancel, A147838.P1553727306717161681.a, A147838.P5896228634175759739.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A147838, Nat.add_sub_cancel, A147838.P1553727306717161681.a, A147838.P5896228634175759739.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A147838

/-!
# A147839: a(n)=9*a(n-1)-7*a(n-2), a(0)=1, a(1)=7 .

The programs for A147839, the canonical program `A147839.P5955323165338815773` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147839 has offset 0).

The definition of A147839 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-7*a(n-2)` (program `A147839.P5955323165338815773`, by `A147839.P5955323165338815773.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147839.P7605657897891690802

`ogf((1-2x)/(1-9x+7x^2))`
-/

namespace A147839.P7605657897891690802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -9, 7] n

end

end A147839.P7605657897891690802

namespace A147839

/-- `ogf((1-2x)/(1-9x+7x^2))` -/
def P7605657897891690802.Spec : Prop :=
  ∀ n, P7605657897891690802.a n = A147839 n

end A147839

/-! ## A147839.P5955323165338815773

`9*a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A147839

/-- `9*a(n-1)-7*a(n-2)` -/
def P5955323165338815773.Spec : Prop :=
  ∀ n, P5955323165338815773.a n = A147839 n

theorem P5955323165338815773.correct : P5955323165338815773.Spec := by
  intro n
  simp only [A147839]

end A147839

/-! ## A147839.P4162166785876134622

`Δ[A190984(n)]-A190984(n)`
-/

namespace A147839.P4162166785876134622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A190984 n

end

end A147839.P4162166785876134622

namespace A147839

/-- `Δ[A190984(n)]-A190984(n)` -/
def P4162166785876134622.Spec : Prop :=
  ∀ n, P4162166785876134622.a n = A147839 n

end A147839

/-! ## A147839.P6469442079525591353

`A190984(n+1)-2*A190984(n)`
-/

namespace A147839.P6469442079525591353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190984 (n + 1) - 2 * A190984 n

end

end A147839.P6469442079525591353

namespace A147839

/-- `A190984(n+1)-2*A190984(n)` -/
def P6469442079525591353.Spec : Prop :=
  ∀ n, P6469442079525591353.a n = A147839 n

end A147839

/-!
# A147840: a(n)=10*a(n-1)-8*a(n-2), a(0)=1, a(1)=8 .

The programs for A147840, the canonical program `A147840.P14956866784383108230` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147840 has offset 0).

The definition of A147840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-8*a(n-2)` (program `A147840.P14956866784383108230`, by `A147840.P14956866784383108230.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147840.P6710228377376530285

`ogf((1-2x)/(1-10x+8x^2))`
-/

namespace A147840.P6710228377376530285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -10, 8] n

end

end A147840.P6710228377376530285

namespace A147840

/-- `ogf((1-2x)/(1-10x+8x^2))` -/
def P6710228377376530285.Spec : Prop :=
  ∀ n, P6710228377376530285.a n = A147840 n

end A147840

/-! ## A147840.P14956866784383108230

`10*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A147840

/-- `10*a(n-1)-8*a(n-2)` -/
def P14956866784383108230.Spec : Prop :=
  ∀ n, P14956866784383108230.a n = A147840 n

theorem P14956866784383108230.correct : P14956866784383108230.Spec := by
  intro n
  simp only [A147840]

end A147840

/-! ## A147840.P16827318684151902073

`2^n*A052913(n)`
-/

namespace A147840.P16827318684151902073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A052913 n

end

end A147840.P16827318684151902073

namespace A147840

/-- `2^n*A052913(n)` -/
def P16827318684151902073.Spec : Prop :=
  ∀ n, P16827318684151902073.a n = A147840 n

end A147840

/-! ## A147840.P10430229073440954858

`2^(n-1)*A147722(n+1)`
-/

namespace A147840.P10430229073440954858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A147722 (n + 1) : ℚ)

end

end A147840.P10430229073440954858

namespace A147840

/-- `2^(n-1)*A147722(n+1)` -/
def P10430229073440954858.Spec : Prop :=
  ∀ n, P10430229073440954858.a n = (A147840 n : ℚ)

end A147840

/-! ## A147840.P10406640052690931536

`∑[A060801(n)]*A000079(n)`
-/

namespace A147840.P10406640052690931536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A147840.P10406640052690931536

namespace A147840

/-- `∑[A060801(n)]*A000079(n)` -/
def P10406640052690931536.Spec : Prop :=
  ∀ n, P10406640052690931536.a n = A147840 n

end A147840

/-! ## A147840.P613171564933597845

`A052913(n)*A152166(2*n)`
-/

namespace A147840.P613171564933597845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052913 n * A152166 (2 * n)

end

end A147840.P613171564933597845

namespace A147840

/-- `A052913(n)*A152166(2*n)` -/
def P613171564933597845.Spec : Prop :=
  ∀ n, P613171564933597845.a n = A147840 n

end A147840

/-! ## A147840.P3132715206402386488

`A190990(n+1)-2*A190990(n)`
-/

namespace A147840.P3132715206402386488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190990 (n + 1) - 2 * A190990 n

end

end A147840.P3132715206402386488

namespace A147840

/-- `A190990(n+1)-2*A190990(n)` -/
def P3132715206402386488.Spec : Prop :=
  ∀ n, P3132715206402386488.a n = A147840 n

end A147840

/-! ## A147840.P3938012855724521136

`A000079(n)*A079162(2*n+1)`
-/

namespace A147840.P3938012855724521136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A079162 (2 * n + 1)

end

end A147840.P3938012855724521136

namespace A147840

/-- `A000079(n)*A079162(2*n+1)` -/
def P3938012855724521136.Spec : Prop :=
  ∀ n, P3938012855724521136.a n = A147840 n

end A147840

/-! ## A147840.P11838896723205774084

`(A005824(2*n+1)+A005824(2*n))*A011782(n+1)`
-/

namespace A147840.P11838896723205774084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005824 (2 * n + 1) + A005824 (2 * n)) * A011782 (n + 1)

end

end A147840.P11838896723205774084

namespace A147840

/-- `(A005824(2*n+1)+A005824(2*n))*A011782(n+1)` -/
def P11838896723205774084.Spec : Prop :=
  ∀ n, P11838896723205774084.a n = A147840 n

end A147840

/-! ## A147840.P1648806476441099310

`(17+3*sqrt(17))*(5+sqrt(17))^n/34+(17-3*sqrt(17))*(5-sqrt(17))^n/34`
-/

namespace A147840.P1648806476441099310
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (17 + 3 * Real.sqrt (17 : ℝ)) * (5 + Real.sqrt (17 : ℝ)) ^ n / 34 + (17 - 3 * Real.sqrt (17 : ℝ)) * (5 - Real.sqrt (17 : ℝ)) ^ n / 34

end

end A147840.P1648806476441099310

namespace A147840

/-- `(17+3*sqrt(17))*(5+sqrt(17))^n/34+(17-3*sqrt(17))*(5-sqrt(17))^n/34` -/
def P1648806476441099310.Spec : Prop :=
  ∀ n, P1648806476441099310.a n = (A147840 n : ℝ)

theorem P1648806476441099310.correct : P1648806476441099310.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A147840, Nat.add_sub_cancel, A147840.P1648806476441099310.a, A147840.P14956866784383108230.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A147840, Nat.add_sub_cancel, A147840.P1648806476441099310.a, A147840.P14956866784383108230.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A147840

/-!
# A147841: a(n) = 11*a(n-1) - 9*a(n-2) with a(0)=1, a(1)=9.

The programs for A147841, the canonical program `A147841.P14558953230395377742` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147841 has offset 0).

The definition of A147841 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)-9*a(n-2)` (program `A147841.P14558953230395377742`, by `A147841.P14558953230395377742.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147841.P5389497313296570252

`ogf((1-2x)/(1-11x+9x^2))`
-/

namespace A147841.P5389497313296570252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -11, 9] n

end

end A147841.P5389497313296570252

namespace A147841

/-- `ogf((1-2x)/(1-11x+9x^2))` -/
def P5389497313296570252.Spec : Prop :=
  ∀ n, P5389497313296570252.a n = A147841 n

end A147841

/-! ## A147841.P14558953230395377742

`11*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A147841

/-- `11*a(n-1)-9*a(n-2)` -/
def P14558953230395377742.Spec : Prop :=
  ∀ n, P14558953230395377742.a n = A147841 n

theorem P14558953230395377742.correct : P14558953230395377742.Spec := by
  intro n
  simp only [A147841]

end A147841

/-! ## A147841.P11602645455661799454

`∑{#}[n, A147703(C(n+1, 2)+#)*8^#]`
-/

namespace A147841.P11602645455661799454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A147703 (Nat.choose (n + 1) 2 + k) * (8 ^ k : ℤ)

end

end A147841.P11602645455661799454

namespace A147841

/-- `∑{#}[n, A147703(C(n+1, 2)+#)*8^#]` -/
def P11602645455661799454.Spec : Prop :=
  ∀ n, P11602645455661799454.a n = A147841 n

end A147841

/-! ## A147841.P11288356314946012239

`A333344(n)-A190872(n)`
-/

namespace A147841.P11288356314946012239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333344 n - A190872 n

end

end A147841.P11288356314946012239

namespace A147841

/-- `A333344(n)-A190872(n)` -/
def P11288356314946012239.Spec : Prop :=
  ∀ n, P11288356314946012239.a n = A147841 n

end A147841

/-! ## A147841.P11451731494194796863

`A190872(n+1)-2*A190872(n)`
-/

namespace A147841.P11451731494194796863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190872 (n + 1) - 2 * A190872 n

end

end A147841.P11451731494194796863

namespace A147841

/-- `A190872(n+1)-2*A190872(n)` -/
def P11451731494194796863.Spec : Prop :=
  ∀ n, P11451731494194796863.a n = A147841 n

end A147841

/-! ## A147841.P11673099811397394990

`∑[A333347(7*n)]`
-/

namespace A147841.P11673099811397394990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333347 (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147841.P11673099811397394990

namespace A147841

/-- `∑[A333347(7*n)]` -/
def P11673099811397394990.Spec : Prop :=
  ∀ n, P11673099811397394990.a n = A147841 n

end A147841

/-! ## A147841.P5269322490706354073

`∑[record[A333347(A195159(n))]]`
-/

namespace A147841.P5269322490706354073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333347 (A195159 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147841.P5269322490706354073

namespace A147841

/-- `∑[record[A333347(A195159(n))]]` -/
def P5269322490706354073.Spec : Prop :=
  ∀ n, P5269322490706354073.a n = A147841 n

end A147841

/-!
# A147842: Sum of all balanced numbers less than 10^n.

The programs for A147842, there is no canonical definition to state claims against.
-/

/-! ## A147842.P5503043286304891559

`∑[A147808(1+n)]`
-/

namespace A147842.P5503043286304891559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147808 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147842.P5503043286304891559

/-! ## A147842.P12402097639619260839

`∑[record[A147808(A102885(n))]]`
-/

namespace A147842.P12402097639619260839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147808 (A102885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147842.P12402097639619260839

/-! ## A147842.P9814566947346141775

`∑[record[A147808(A126759(n))]]`
-/

namespace A147842.P9814566947346141775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147808 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147842.P9814566947346141775

/-! ## A147842.P5493093931036660900

`∑[record[A147808(A324346(n))]]`
-/

namespace A147842.P5493093931036660900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147808 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147842.P5493093931036660900

/-! ## A147842.P9604526347993799741

`∑[record[A147808(A332013(n))]]`
-/

namespace A147842.P9604526347993799741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147808 (A332013 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147842.P9604526347993799741

/-!
# A147843: a(n) = -n*A010815(n).

The programs for A147843, the canonical program `A147843.P14429766809705781327` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147843 has offset 0).

The definition of A147843 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A147843.P14429766809705781327

`-n*A010815(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A147843

/-- `-n*A010815(n)` -/
def P14429766809705781327.Spec : Prop :=
  ∀ n, P14429766809705781327.a n = A147843 n

theorem P14429766809705781327.correct : P14429766809705781327.Spec := by
  intro n
  simp only [A147843]

end A147843

/-! ## A147843.P17970780809139987423

`∑{#}[n-1, A010815(#)*A000203(n-#)]`
-/

namespace A147843.P17970780809139987423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A010815 k * A000203 (n - k)

end

end A147843.P17970780809139987423

namespace A147843

/-- `∑{#}[n-1, A010815(#)*A000203(n-#)]` -/
def P17970780809139987423.Spec : Prop :=
  ∀ n, P17970780809139987423.a n = A147843 n

end A147843

/-! ## A147843.P6516476211021870341

`n*A257628(n)`
-/

namespace A147843.P6516476211021870341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A257628 n

end

end A147843.P6516476211021870341

namespace A147843

/-- `n*A257628(n)` -/
def P6516476211021870341.Spec : Prop :=
  ∀ n, P6516476211021870341.a n = A147843 n

end A147843

/-! ## A147843.P9344208998002479746

`-(n*A010815(n))`
-/

namespace A147843.P9344208998002479746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * A010815 n)

end

end A147843.P9344208998002479746

namespace A147843

/-- `-(n*A010815(n))` -/
def P9344208998002479746.Spec : Prop :=
  ∀ n, P9344208998002479746.a n = A147843 n

theorem P9344208998002479746.correct : P9344208998002479746.Spec := by
  intro n
  simp only [A147843, Nat.add_sub_cancel, A147843.P9344208998002479746.a, A147843.P14429766809705781327.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A147843

/-! ## A147843.P2798583379545073813

`-(n*Δ[A078616(abs(1-n))])`
-/

namespace A147843.P2798583379545073813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (f1 (n + 1) - f1 n))

end

end A147843.P2798583379545073813

namespace A147843

/-- `-(n*Δ[A078616(abs(1-n))])` -/
def P2798583379545073813.Spec : Prop :=
  ∀ n, P2798583379545073813.a n = A147843 n

theorem P2798583379545073813.correct : P2798583379545073813.Spec := by
  intro n
  simp only [A147843, Nat.add_sub_cancel, A147843.P2798583379545073813.f1, A147843.P2798583379545073813.a, A147843.P14429766809705781327.a, A010815, A010815.P5219802530418017542.f1, A010815.P5219802530418017542.a, A078616, A078616.P11557008643438510974.a, A007877, A007877.P13957624937217873679.a, A235963, A235963.P8917601203416474347.a, A085141, A085141.P2552504133626541575.a, A180447, A180447.P3440103669525281536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A147843

/-! ## A147843.P2098082584338204705

`-(n*(-1)^n*A121373(n))`
-/

namespace A147843.P2098082584338204705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * ((-1) ^ n * A121373 n))

end

end A147843.P2098082584338204705

namespace A147843

/-- `-(n*(-1)^n*A121373(n))` -/
def P2098082584338204705.Spec : Prop :=
  ∀ n, P2098082584338204705.a n = A147843 n

end A147843

/-! ## A147843.P7303740724401536936

`A121373(n)*A181983(n)`
-/

namespace A147843.P7303740724401536936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n * A181983 n

end

end A147843.P7303740724401536936

namespace A147843

/-- `A121373(n)*A181983(n)` -/
def P7303740724401536936.Spec : Prop :=
  ∀ n, P7303740724401536936.a n = A147843 n

end A147843

/-! ## A147843.P14440987247059997761

`n*(A000007(n)-A010815(n))`
-/

namespace A147843.P14440987247059997761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000007 n - A010815 n)

end

end A147843.P14440987247059997761

namespace A147843

/-- `n*(A000007(n)-A010815(n))` -/
def P14440987247059997761.Spec : Prop :=
  ∀ n, P14440987247059997761.a n = A147843 n

end A147843

/-! ## A147843.P11604587079102926156

`n*(A000038(n)-A010815(n))`
-/

namespace A147843.P11604587079102926156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000038 n - A010815 n)

end

end A147843.P11604587079102926156

namespace A147843

/-- `n*(A000038(n)-A010815(n))` -/
def P11604587079102926156.Spec : Prop :=
  ∀ n, P11604587079102926156.a n = A147843 n

end A147843

/-! ## A147843.P14357314731155088004

`n*A010815(n)*A057428(n)`
-/

namespace A147843.P14357314731155088004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010815 n * A057428 n)

end

end A147843.P14357314731155088004

namespace A147843

/-- `n*A010815(n)*A057428(n)` -/
def P14357314731155088004.Spec : Prop :=
  ∀ n, P14357314731155088004.a n = A147843 n

end A147843

/-! ## A147843.P4082654178939128396

`n*A062157(n)*A121373(n)`
-/

namespace A147843.P4082654178939128396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A062157 n * A121373 n)

end

end A147843.P4082654178939128396

namespace A147843

/-- `n*A062157(n)*A121373(n)` -/
def P4082654178939128396.Spec : Prop :=
  ∀ n, P4082654178939128396.a n = A147843 n

end A147843

/-! ## A147843.P8569269021352341949

`n*Δ[A010815(n)-A078616(n)]`
-/

namespace A147843.P8569269021352341949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n - A078616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A147843.P8569269021352341949

namespace A147843

/-- `n*Δ[A010815(n)-A078616(n)]` -/
def P8569269021352341949.Spec : Prop :=
  ∀ n, P8569269021352341949.a n = A147843 n

end A147843

/-! ## A147843.P10639580352534265972

`n*(A260958(A004016(n))-A010815(n))`
-/

namespace A147843.P10639580352534265972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A260958 (A004016 n).toNat - A010815 n)

end

end A147843.P10639580352534265972

namespace A147843

/-- `n*(A260958(A004016(n))-A010815(n))` -/
def P10639580352534265972.Spec : Prop :=
  ∀ n, P10639580352534265972.a n = A147843 n

end A147843

/-! ## A147843.P5481472775778620732

`n*(A005872(A005872(n))-A010815(n))`
-/

namespace A147843.P5481472775778620732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005872 (A005872 n).toNat - A010815 n)

end

end A147843.P5481472775778620732

namespace A147843

/-- `n*(A005872(A005872(n))-A010815(n))` -/
def P5481472775778620732.Spec : Prop :=
  ∀ n, P5481472775778620732.a n = A147843 n

end A147843

/-! ## A147843.P5049079469832012698

`n*(A033685(A033685(n))-A010815(n))`
-/

namespace A147843.P5049079469832012698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A033685 (A033685 n).toNat - A010815 n)

end

end A147843.P5049079469832012698

namespace A147843

/-- `n*(A033685(A033685(n))-A010815(n))` -/
def P5049079469832012698.Spec : Prop :=
  ∀ n, P5049079469832012698.a n = A147843 n

end A147843

/-! ## A147843.P2923498617117453498

`n*(n-A286956(n))`
-/

namespace A147843.P2923498617117453498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - A286956 n)

end

end A147843.P2923498617117453498

namespace A147843

/-- `n*(n-A286956(n))` -/
def P2923498617117453498.Spec : Prop :=
  ∀ n, P2923498617117453498.a n = A147843 n

theorem P2923498617117453498.correct : P2923498617117453498.Spec := by
  intro n
  simp only [A147843, Nat.add_sub_cancel, A147843.P2923498617117453498.a, A147843.P14429766809705781327.a, A010815, A010815.P5219802530418017542.f1, A010815.P5219802530418017542.a, A286956, A286956.P16005335099664677132.a, A078616, A078616.P11557008643438510974.a, A007877, A007877.P13957624937217873679.a, A235963, A235963.P8917601203416474347.a, A085141, A085141.P2552504133626541575.a, A180447, A180447.P3440103669525281536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A147843

/-! ## A147843.P18324996027782852128

`(1-A007706(n))*n`
-/

namespace A147843.P18324996027782852128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A007706 n) * (n : ℤ)

end

end A147843.P18324996027782852128

namespace A147843

/-- `(1-A007706(n))*n` -/
def P18324996027782852128.Spec : Prop :=
  ∀ n, P18324996027782852128.a n = A147843 n

end A147843

/-! ## A147843.P2706585305793376140

`A184365(n)-A010815(n)`
-/

namespace A147843.P2706585305793376140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184365 n - A010815 n

end

end A147843.P2706585305793376140

namespace A147843

/-- `A184365(n)-A010815(n)` -/
def P2706585305793376140.Spec : Prop :=
  ∀ n, P2706585305793376140.a n = A147843 n

theorem P2706585305793376140.correct : P2706585305793376140.Spec := by
  intro n
  simp only [A147843, Nat.add_sub_cancel, A147843.P2706585305793376140.a, A147843.P14429766809705781327.a, A010815, A010815.P5219802530418017542.f1, A010815.P5219802530418017542.a, A184365, A184365.P16997047362946431375.f1, A184365.P16997047362946431375.a, A078616, A078616.P11557008643438510974.a, A007877, A007877.P13957624937217873679.a, A235963, A235963.P8917601203416474347.a, A085141, A085141.P2552504133626541575.a, A180447, A180447.P3440103669525281536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A147843

/-! ## A147843.P4553208469396247806

`A010815(n)-A184362(n)`
-/

namespace A147843.P4553208469396247806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n - A184362 n

end

end A147843.P4553208469396247806

namespace A147843

/-- `A010815(n)-A184362(n)` -/
def P4553208469396247806.Spec : Prop :=
  ∀ n, P4553208469396247806.a n = A147843 n

theorem P4553208469396247806.correct : P4553208469396247806.Spec := by
  intro n
  simp only [A147843, Nat.add_sub_cancel, A147843.P4553208469396247806.a, A147843.P14429766809705781327.a, A010815, A010815.P5219802530418017542.f1, A010815.P5219802530418017542.a, A184362, A184362.P12277345138454522326.f1, A184362.P12277345138454522326.a, A078616, A078616.P11557008643438510974.a, A007877, A007877.P13957624937217873679.a, A235963, A235963.P8917601203416474347.a, A085141, A085141.P2552504133626541575.a, A180447, A180447.P3440103669525281536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A147843

/-!
# A147844: Difference between the number of distinct prime divisors of (2*n)!/n!^2 and pi(2*n), where pi(x) is the prime counting function.

The programs for A147844, there is no canonical definition to state claims against.
-/

/-! ## A147844.P2952588135340371683

`A036541(2*(n+1))`
-/

namespace A147844.P2952588135340371683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036541 (2 * (n + 1))

end

end A147844.P2952588135340371683

/-! ## A147844.P13213824270742447908

`A036541(n+2+n)%14`
-/

namespace A147844.P13213824270742447908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036541 (n + 2 + n)) 14

end

end A147844.P13213824270742447908

/-! ## A147844.P1172102782544774922

`∑[∑{p}[n+1, val(#, n+1)]]-A193990(n+1)`
-/

namespace A147844.P1172102782544774922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A193990 (n + 1)

end

end A147844.P1172102782544774922

/-! ## A147844.P16515315090316194209

`∑[C(2*n+1, ∏{d}[2*n+1, #])]-A067434(n+1)`
-/

namespace A147844.P16515315090316194209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A067434 (n + 1)

end

end A147844.P16515315090316194209

/-! ## A147844.P11205221868723441625

`A099801(n)%A067434(n+1)`
-/

namespace A147844.P11205221868723441625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099801 n) (A067434 (n + 1))

end

end A147844.P11205221868723441625

/-! ## A147844.P17917590267313767855

`A099802(n+1)-A067434(n+1)`
-/

namespace A147844.P17917590267313767855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (n + 1) - A067434 (n + 1)

end

end A147844.P17917590267313767855

/-! ## A147844.P18399010855259861476

`A108954(n+1)-A071854(n+1)`
-/

namespace A147844.P18399010855259861476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (n + 1) - A071854 (n + 1)

end

end A147844.P18399010855259861476

/-! ## A147844.P14433261824062726013

`A000720(n+1)-A193990(n+1)`
-/

namespace A147844.P14433261824062726013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A193990 (n + 1)

end

end A147844.P14433261824062726013

/-! ## A147844.P3659904950937357116

`A001222(2^A036541(n+2+n))`
-/

namespace A147844.P3659904950937357116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A036541 (n + 2 + n) : ℤ))).toNat

end

end A147844.P3659904950937357116

/-! ## A147844.P10415272018860192739

`A000720(2*(n+1))-A067434(n+1)`
-/

namespace A147844.P10415272018860192739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1)) - A067434 (n + 1)

end

end A147844.P10415272018860192739

/-!
# A147845: Odd positive integers a(n) such that for every odd integer m>=7 there exists a unique representation of the form m=a(p)+2a(q)+4a(r).

The programs for A147845, the canonical program `A147845.P9272741338971517792` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147845 has offset 1).

The definition of A147845 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147845.P9272741338971517792

`2*A033045(n)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A147845

/-- `2*A033045(n)+1` -/
def P9272741338971517792.Spec : Prop :=
  ∀ n, P9272741338971517792.a n = A147845 (n + 1)

theorem P9272741338971517792.correct : P9272741338971517792.Spec := by
  intro n
  simp only [A147845, Nat.add_sub_cancel]

end A147845

/-! ## A147845.P10907070378403413241

`1+2*A033045(n)`
-/

namespace A147845.P10907070378403413241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A033045 n

end

end A147845.P10907070378403413241

namespace A147845

/-- `1+2*A033045(n)` -/
def P10907070378403413241.Spec : Prop :=
  ∀ n, P10907070378403413241.a n = A147845 (n + 1)

theorem P10907070378403413241.correct : P10907070378403413241.Spec := by
  intro n
  simp only [A147845, Nat.add_sub_cancel, A147845.P10907070378403413241.a, A147845.P9272741338971517792.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A147845

/-! ## A147845.P10541480976384564490

`2*A097254(n+1)/7+1`
-/

namespace A147845.P10541480976384564490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A097254 (n + 1) : ℚ) / 7) + 1

end

end A147845.P10541480976384564490

namespace A147845

/-- `2*A097254(n+1)/7+1` -/
def P10541480976384564490.Spec : Prop :=
  ∀ n, P10541480976384564490.a n = (A147845 (n + 1) : ℚ)

end A147845

/-! ## A147845.P15932903870256277326

`2*A037456(A005836(n+1))+1`
-/

namespace A147845.P15932903870256277326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037456 (A005836 (n + 1)).toNat + 1

end

end A147845.P15932903870256277326

namespace A147845

/-- `2*A037456(A005836(n+1))+1` -/
def P15932903870256277326.Spec : Prop :=
  ∀ n, P15932903870256277326.a n = A147845 (n + 1)

end A147845

/-! ## A147845.P3998343338062562559

`2*A037456(A003278(n+1))-1`
-/

namespace A147845.P3998343338062562559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037456 (A003278 (n + 1)).toNat - 1

end

end A147845.P3998343338062562559

namespace A147845

/-- `2*A037456(A003278(n+1))-1` -/
def P3998343338062562559.Spec : Prop :=
  ∀ n, P3998343338062562559.a n = A147845 (n + 1)

end A147845

/-! ## A147845.P13438740716063447892

`A037456(record[A004488(n)])+1`
-/

namespace A147845.P13438740716063447892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A147845.P13438740716063447892

namespace A147845

/-- `A037456(record[A004488(n)])+1` -/
def P13438740716063447892.Spec : Prop :=
  ∀ n, P13438740716063447892.a n = A147845 (n + 1)

end A147845

/-! ## A147845.P11432129331451135464

`A037456(A005823(n+1))+1`
-/

namespace A147845.P11432129331451135464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (A005823 (n + 1)).toNat + 1

end

end A147845.P11432129331451135464

namespace A147845

/-- `A037456(A005823(n+1))+1` -/
def P11432129331451135464.Spec : Prop :=
  ∀ n, P11432129331451135464.a n = A147845 (n + 1)

end A147845

/-! ## A147845.P1953268644594582229

`A037462(A145812(n+1))`
-/

namespace A147845.P1953268644594582229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A145812 (n + 1)).toNat

end

end A147845.P1953268644594582229

namespace A147845

/-- `A037462(A145812(n+1))` -/
def P1953268644594582229.Spec : Prop :=
  ∀ n, P1953268644594582229.a n = A147845 (n + 1)

end A147845

/-! ## A147845.P3898479399304502030

`A037462(2*A000695(n)+1)`
-/

namespace A147845.P3898479399304502030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (2 * A000695 n + 1).toNat

end

end A147845.P3898479399304502030

namespace A147845

/-- `A037462(2*A000695(n)+1)` -/
def P3898479399304502030.Spec : Prop :=
  ∀ n, P3898479399304502030.a n = A147845 (n + 1)

end A147845

/-! ## A147845.P17593370797060337470

`A037462(A000695(n)+A000695(n)+1)`
-/

namespace A147845.P17593370797060337470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A000695 n + (A000695 n + 1)).toNat

end

end A147845.P17593370797060337470

namespace A147845

/-- `A037462(A000695(n)+A000695(n)+1)` -/
def P17593370797060337470.Spec : Prop :=
  ∀ n, P17593370797060337470.a n = A147845 (n + 1)

end A147845

/-!
# A147846: Triangular numbers n*(n+1)/2 with n or n+1 prime.

The programs for A147846, the canonical program `A147846.P1764007228067789796` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147846 has offset 1).

The definition of A147846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147846.P9972246474287287409

`A385186(1+n)/2`
-/

namespace A147846.P9972246474287287409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385186 (1 + n) : ℚ) / 2

end

end A147846.P9972246474287287409

namespace A147846

/-- `A385186(1+n)/2` -/
def P9972246474287287409.Spec : Prop :=
  ∀ n, P9972246474287287409.a n = (A147846 (n + 1) : ℚ)

end A147846

/-! ## A147846.P1764007228067789796

`C(A093515(n+1), 2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A147846

/-- `C(A093515(n+1), 2)` -/
def P1764007228067789796.Spec : Prop :=
  ∀ n, (P1764007228067789796.a n : ℤ) = A147846 (n + 1)

theorem P1764007228067789796.correct : P1764007228067789796.Spec := by
  intro n
  simp only [A147846, Nat.add_sub_cancel]

end A147846

/-! ## A147846.P2253318382890486744

`C(A173919(n+1)+1, 2)`
-/

namespace A147846.P2253318382890486744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A173919 (n + 1) + 1).toNat 2

end

end A147846.P2253318382890486744

namespace A147846

/-- `C(A173919(n+1)+1, 2)` -/
def P2253318382890486744.Spec : Prop :=
  ∀ n, (P2253318382890486744.a n : ℤ) = A147846 (n + 1)

theorem P2253318382890486744.correct : P2253318382890486744.Spec := by
  intro n
  simp only [A147846, Nat.add_sub_cancel, A147846.P2253318382890486744.a, A147846.P1764007228067789796.a, A093515, A093515.P4013259352811988212.f1, A093515.P4013259352811988212.f2, A093515.P4013259352811988212.a, A173919, A173919.P13920908538941556849.a, A323162, A323162.P4199434762193306250.a, A066247, A066247.P15227533178821378383.f1, A066247.P15227533178821378383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A147846

/-! ## A147846.P3252834133815277480

`∪[A008837(n+1), A034953(n+1)]`
-/

namespace A147846.P3252834133815277480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A147846.P3252834133815277480

namespace A147846

/-- `∪[A008837(n+1), A034953(n+1)]` -/
def P3252834133815277480.Spec : Prop :=
  ∀ n, (P3252834133815277480.a n : ℤ) = A147846 (n + 1)

end A147846

/-! ## A147846.P6674242446738413498

`∪[A008837(n+1), A144519(n+1)]`
-/

namespace A147846.P6674242446738413498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A147846.P6674242446738413498

namespace A147846

/-- `∪[A008837(n+1), A144519(n+1)]` -/
def P6674242446738413498.Spec : Prop :=
  ∀ n, (P6674242446738413498.a n : ℤ) = A147846 (n + 1)

end A147846

/-! ## A147846.P3768332311294765544

`A093515(n+1)/2*A173919(n+1)`
-/

namespace A147846.P3768332311294765544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093515 (n + 1) : ℚ) / 2 * (A173919 (n + 1) : ℚ)

end

end A147846.P3768332311294765544

namespace A147846

/-- `A093515(n+1)/2*A173919(n+1)` -/
def P3768332311294765544.Spec : Prop :=
  ∀ n, P3768332311294765544.a n = (A147846 (n + 1) : ℚ)

end A147846

/-! ## A147846.P6378014777839999474

`C(∪[A000040(n+1)+1, A000040(n+1)], 2)`
-/

namespace A147846.P6378014777839999474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) 2

end

end A147846.P6378014777839999474

namespace A147846

/-- `C(∪[A000040(n+1)+1, A000040(n+1)], 2)` -/
def P6378014777839999474.Spec : Prop :=
  ∀ n, (P6378014777839999474.a n : ℤ) = A147846 (n + 1)

end A147846

/-! ## A147846.P728881287471346829

`A000217(A173919(n+1))`
-/

namespace A147846.P728881287471346829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A173919 (n + 1)).toNat

end

end A147846.P728881287471346829

namespace A147846

/-- `A000217(A173919(n+1))` -/
def P728881287471346829.Spec : Prop :=
  ∀ n, P728881287471346829.a n = A147846 (n + 1)

end A147846

/-! ## A147846.P2671844858456064164

`A000217(A093515(n+1)-1)`
-/

namespace A147846.P2671844858456064164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A093515 (n + 1) - 1).toNat

end

end A147846.P2671844858456064164

namespace A147846

/-- `A000217(A093515(n+1)-1)` -/
def P2671844858456064164.Spec : Prop :=
  ∀ n, P2671844858456064164.a n = A147846 (n + 1)

end A147846

/-! ## A147846.P18032324891110361800

`A000217(∪[A000040(n+1), A006093(n+1)])`
-/

namespace A147846.P18032324891110361800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A147846.P18032324891110361800

namespace A147846

/-- `A000217(∪[A000040(n+1), A006093(n+1)])` -/
def P18032324891110361800.Spec : Prop :=
  ∀ n, P18032324891110361800.a n = A147846 (n + 1)

end A147846

/-! ## A147846.P9321493714152971393

`A000217(∪[A000040(n+1)-1, A000040(n+1)])`
-/

namespace A147846.P9321493714152971393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A147846.P9321493714152971393

namespace A147846

/-- `A000217(∪[A000040(n+1)-1, A000040(n+1)])` -/
def P9321493714152971393.Spec : Prop :=
  ∀ n, P9321493714152971393.a n = A147846 (n + 1)

end A147846

/-! ## A147846.P9745767892455255624

`C(eq[1, A175078(n+1)], 2)`
-/

namespace A147846.P9745767892455255624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2

end

end A147846.P9745767892455255624

namespace A147846

/-- `C(eq[1, A175078(n+1)], 2)` -/
def P9745767892455255624.Spec : Prop :=
  ∀ n, (P9745767892455255624.a n : ℤ) = A147846 (n + 1)

end A147846

/-! ## A147846.P6310800961104176928

`A161680(A093515(n+1))`
-/

namespace A147846.P6310800961104176928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A093515 (n + 1)).toNat

end

end A147846.P6310800961104176928

namespace A147846

/-- `A161680(A093515(n+1))` -/
def P6310800961104176928.Spec : Prop :=
  ∀ n, P6310800961104176928.a n = A147846 (n + 1)

end A147846

/-! ## A147846.P17924294008120651453

`A000217(lt[A007920(n), 2])`
-/

namespace A147846.P17924294008120651453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A147846.P17924294008120651453

namespace A147846

/-- `A000217(lt[A007920(n), 2])` -/
def P17924294008120651453.Spec : Prop :=
  ∀ n, P17924294008120651453.a n = A147846 (n + 1)

end A147846

/-! ## A147846.P12996665110815614952

`A000124(A093515(n+1)-1)-1`
-/

namespace A147846.P12996665110815614952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A093515 (n + 1) - 1).toNat - 1

end

end A147846.P12996665110815614952

namespace A147846

/-- `A000124(A093515(n+1)-1)-1` -/
def P12996665110815614952.Spec : Prop :=
  ∀ n, P12996665110815614952.a n = A147846 (n + 1)

end A147846

/-! ## A147846.P4123467379152024202

`A000217(lt[n, A093074(n+1)]+1)`
-/

namespace A147846.P4123467379152024202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A147846.P4123467379152024202

namespace A147846

/-- `A000217(lt[n, A093074(n+1)]+1)` -/
def P4123467379152024202.Spec : Prop :=
  ∀ n, P4123467379152024202.a n = A147846 (n + 1)

end A147846

/-! ## A147846.P9831795666418916233

`A000217(eq[A007920(n)², A007920(n)])`
-/

namespace A147846.P9831795666418916233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A147846.P9831795666418916233

namespace A147846

/-- `A000217(eq[A007920(n)², A007920(n)])` -/
def P9831795666418916233.Spec : Prop :=
  ∀ n, P9831795666418916233.a n = A147846 (n + 1)

end A147846

/-! ## A147846.P75709817314699997

`∑{#}[A173919(n+1), #]`
-/

namespace A147846.P75709817314699997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k

end

end A147846.P75709817314699997

namespace A147846

/-- `∑{#}[A173919(n+1), #]` -/
def P75709817314699997.Spec : Prop :=
  ∀ n, (P75709817314699997.a n : ℤ) = A147846 (n + 1)

end A147846

/-! ## A147846.P15345577303249784228

`C(lt[n, A006530((n+1)*(n+2))]+2, 2)`
-/

namespace A147846.P15345577303249784228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2) 2

end

end A147846.P15345577303249784228

namespace A147846

/-- `C(lt[n, A006530((n+1)*(n+2))]+2, 2)` -/
def P15345577303249784228.Spec : Prop :=
  ∀ n, (P15345577303249784228.a n : ℤ) = A147846 (n + 1)

end A147846

/-! ## A147846.P9482876312351479680

`A014682(A385186(n+1))`
-/

namespace A147846.P9482876312351479680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A385186 (n + 1)).toNat

end

end A147846.P9482876312351479680

namespace A147846

/-- `A014682(A385186(n+1))` -/
def P9482876312351479680.Spec : Prop :=
  ∀ n, P9482876312351479680.a n = A147846 (n + 1)

end A147846

/-!
# A147847: Concerning hypotenuses of triangles such that the sum of the two legs is a perfect square.

The programs for A147847, there is no canonical definition to state claims against.
-/

/-! ## A147847.P14169879691468733721

`A235402(A134376(3*(n+1))-A299477(n+1))`
-/

namespace A147847.P14169879691468733721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235402 (A134376 (3 * (n + 1)) - A299477 (n + 1)).toNat

end

end A147847.P14169879691468733721

/-!
# A147848: Number (up to isomorphism) of groups of order 2n that have Z/nZ as a subgroup (that is, that have an element of order n).

The programs for A147848, the canonical program `A147848.P5380392809057908469` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147848 has offset 1).

The definition of A147848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147848.P15654299142478864831

`A046523(A306652(1+n))`
-/

namespace A147848.P15654299142478864831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A306652 (1 + n)).toNat

end

end A147848.P15654299142478864831

namespace A147848

/-- `A046523(A306652(1+n))` -/
def P15654299142478864831.Spec : Prop :=
  ∀ n, P15654299142478864831.a n = A147848 (n + 1)

end A147848

/-! ## A147848.P18405754918764813752

`A306652(A058035(n+1))`
-/

namespace A147848.P18405754918764813752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306652 (A058035 (n + 1)).toNat

end

end A147848.P18405754918764813752

namespace A147848

/-- `A306652(A058035(n+1))` -/
def P18405754918764813752.Spec : Prop :=
  ∀ n, P18405754918764813752.a n = A147848 (n + 1)

end A147848

/-! ## A147848.P5380392809057908469

`∑{d}[n+1, A008966(#)*A093148((n+1)/#-1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A147848

/-- `∑{d}[n+1, A008966(#)*A093148((n+1)/#-1)]` -/
def P5380392809057908469.Spec : Prop :=
  ∀ n, P5380392809057908469.a n = A147848 (n + 1)

theorem P5380392809057908469.correct : P5380392809057908469.Spec := by
  intro n
  simp only [A147848, Nat.add_sub_cancel]

end A147848

/-! ## A147848.P11683704977508610699

`A000034(n)*A289831(A087688(n+1))`
-/

namespace A147848.P11683704977508610699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A289831 (A087688 (n + 1)).toNat

end

end A147848.P11683704977508610699

namespace A147848

/-- `A000034(n)*A289831(A087688(n+1))` -/
def P11683704977508610699.Spec : Prop :=
  ∀ n, P11683704977508610699.a n = A147848 (n + 1)

end A147848

/-! ## A147848.P9347594960471459654

`A034444(n+1)*A049237(A160467(n+1))`
-/

namespace A147848.P9347594960471459654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A049237 (A160467 (n + 1)).toNat

end

end A147848.P9347594960471459654

namespace A147848

/-- `A034444(n+1)*A049237(A160467(n+1))` -/
def P9347594960471459654.Spec : Prop :=
  ∀ n, P9347594960471459654.a n = A147848 (n + 1)

end A147848

/-! ## A147848.P14376411993273408279

`A060594(n+1)+A304182(n+1)-A034444(n+1)`
-/

namespace A147848.P14376411993273408279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1) + (A304182 (n + 1) - A034444 (n + 1))

end

end A147848.P14376411993273408279

namespace A147848

/-- `A060594(n+1)+A304182(n+1)-A034444(n+1)` -/
def P14376411993273408279.Spec : Prop :=
  ∀ n, P14376411993273408279.a n = A147848 (n + 1)

end A147848

/-!
# A147849: a(n) is the smallest triangular number > n-th prime.

The programs for A147849, there is no canonical definition to state claims against.
-/

/-! ## A147849.P9171355642977005947

`∑{#}[A123387(n+1), #]`
-/

namespace A147849.P9171355642977005947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k

end

end A147849.P9171355642977005947

/-! ## A147849.P8655270550377394790

`C(A123387(1+n)+1, 2)`
-/

namespace A147849.P8655270550377394790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A123387 (1 + n) + 1).toNat 2

end

end A147849.P8655270550377394790

/-! ## A147849.P815508832790412100

`C(2+A317137(n+1), 2)`
-/

namespace A147849.P815508832790412100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 + A317137 (n + 1)).toNat 2

end

end A147849.P815508832790412100

/-! ## A147849.P5630941378886606726

`C(row(A000040(n+1))+2, 2)`
-/

namespace A147849.P5630941378886606726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow (A000040 (n + 1)).toNat + 2) 2

end

end A147849.P5630941378886606726

/-! ## A147849.P7081902598533676765

`C(round(sqrt(A072055(n+1)))+1, 2)`
-/

namespace A147849.P7081902598533676765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A072055 (n + 1) : ℝ)) + 1).toNat 2

end

end A147849.P7081902598533676765

/-! ## A147849.P3798311619766292574

`C(round(sqrt(A089241(n+1)))+1, 2)`
-/

namespace A147849.P3798311619766292574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A089241 (n + 1) : ℝ)) + 1).toNat 2

end

end A147849.P3798311619766292574

/-! ## A147849.P5345689170546401872

`C(round(sqrt(A161344(n+2)))+1, 2)`
-/

namespace A147849.P5345689170546401872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A161344 (n + 2) : ℝ)) + 1).toNat 2

end

end A147849.P5345689170546401872

/-! ## A147849.P15164891677531610491

`A127739(p?[round(8*n/7)]+1)`
-/

namespace A147849.P15164891677531610491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A147849.P15164891677531610491

/-! ## A147849.P9258564689391660062

`A000217(A123387(n+1))`
-/

namespace A147849.P9258564689391660062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A123387 (n + 1)).toNat

end

end A147849.P9258564689391660062

/-! ## A147849.P17004577980196842156

`A127739(A008864(n+1))`
-/

namespace A147849.P17004577980196842156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (A008864 (n + 1)).toNat

end

end A147849.P17004577980196842156

/-!
# A147850: Parity of the digits sum of Sum_{j = 8*n-7..8*n} prime(j).

The programs for A147850, there is no canonical definition to state claims against.
-/

/-! ## A147850.P9440400823100357094

`1-A147781(n+1)`
-/

namespace A147850.P9440400823100357094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A147781 (n + 1)

end

end A147850.P9440400823100357094

/-! ## A147850.P12138972895341753488

`xor(1, A147781(C(n+1, n)))`
-/

namespace A147850.P12138972895341753488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A147781 (Nat.choose (n + 1) n))

end

end A147850.P12138972895341753488

/-! ## A147850.P18202104158491121650

`xor(1, A147781(A000027(n+1)))`
-/

namespace A147850.P18202104158491121650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A147781 (A000027 (n + 1)).toNat)

end

end A147850.P18202104158491121650

/-! ## A147850.P4394338736807346018

`xor(1, A147781(A028310(n+1)))`
-/

namespace A147850.P4394338736807346018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A147781 (A028310 (n + 1)).toNat)

end

end A147850.P4394338736807346018

/-! ## A147850.P10699005600295122623

`xor(1, A147781(A130446(n+1)))`
-/

namespace A147850.P10699005600295122623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A147781 (A130446 (n + 1)).toNat)

end

end A147850.P10699005600295122623

/-! ## A147850.P16562960967688104512

`A000007(n*A147781(n+1))`
-/

namespace A147850.P16562960967688104512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A147781 (n + 1)).toNat

end

end A147850.P16562960967688104512

/-! ## A147850.P18215463255133064393

`xor(A147781(n+1), A361338(n))`
-/

namespace A147850.P18215463255133064393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A147781 (n + 1)) (A361338 n)

end

end A147850.P18215463255133064393

/-! ## A147850.P15915062716126525970

`∏{d}[n*A147781(n+1), A001222(#)]`
-/

namespace A147850.P15915062716126525970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A147781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001222 d

end

end A147850.P15915062716126525970

/-! ## A147850.P10208164539407252077

`∏{d}[n*A147781(n+1), A147781(#)]`
-/

namespace A147850.P10208164539407252077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A147781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A147781 d

end

end A147850.P10208164539407252077

/-! ## A147850.P17150522363923457210

`A000035(A147781(n+1)+2*n+1)`
-/

namespace A147850.P17150522363923457210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A147781 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A147850.P17150522363923457210

/-! ## A147850.P168159750941642823

`C(2, A018252(n+1)*A147781(n+1))`
-/

namespace A147850.P168159750941642823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A018252 (n + 1) * A147781 (n + 1)).toNat

end

end A147850.P168159750941642823

/-! ## A147850.P4453314061544934626

`xor(A000032(((-1)^n)²), A147781(n+1))`
-/

namespace A147850.P4453314061544934626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000032 (((-1) ^ n) ^ 2).toNat) (A147781 (n + 1))

end

end A147850.P4453314061544934626

/-! ## A147850.P1774625772830145359

`xor(A000045(A020639(2*(n+1))), A147781(n+1))`
-/

namespace A147850.P1774625772830145359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000045 (A020639 (2 * (n + 1))).toNat) (A147781 (n + 1))

end

end A147850.P1774625772830145359

/-!
# A147851: Expansion of 1/(1 - x^3 - x^4 - x^5 + x^8)^2.

The programs for A147851, the canonical program `A147851.P7810846969781231800` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147851 has offset 0).

The definition of A147851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x^3-2x^4-2x^5+x^6+2x^7+5x^8+2x^9+x^10-2x^11-2x^12-2x^13+x^16))` (program `A147851.P7810846969781231800`, by `A147851.P7810846969781231800.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147851.P7810846969781231800

`ogf(1/(1-2x^3-2x^4-2x^5+x^6+2x^7+5x^8+2x^9+x^10-2x^11-2x^12-2x^13+x^16))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A147851

/-- `ogf(1/(1-2x^3-2x^4-2x^5+x^6+2x^7+5x^8+2x^9+x^10-2x^11-2x^12-2x^13+x^16))` -/
def P7810846969781231800.Spec : Prop :=
  ∀ n, P7810846969781231800.a n = A147851 n

theorem P7810846969781231800.correct : P7810846969781231800.Spec := by
  intro n
  simp only [A147851]

end A147851

/-! ## A147851.P16100972809070587112

`∑{#}[n, A225482(#)*A225482(n-#)]`
-/

namespace A147851.P16100972809070587112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A225482 k * A225482 (n - k)

end

end A147851.P16100972809070587112

namespace A147851

/-- `∑{#}[n, A225482(#)*A225482(n-#)]` -/
def P16100972809070587112.Spec : Prop :=
  ∀ n, P16100972809070587112.a n = A147851 n

end A147851

/-!
# A147852: Expansion of -x*(x+1)*(x^3+x^2+x-1) /(2*x^6+4*x^4-x^2-2*x+1).

The programs for A147852, the canonical program `A147852.P17047161434399483629` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147852 has offset 0).

The definition of A147852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-2x^3-2x^4-x^5)/(1-2x-x^2+4x^4+2x^6))` (program `A147852.P17047161434399483629`, by `A147852.P17047161434399483629.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147852.P17047161434399483629

`ogf((x-2x^3-2x^4-x^5)/(1-2x-x^2+4x^4+2x^6))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A147852

/-- `ogf((x-2x^3-2x^4-x^5)/(1-2x-x^2+4x^4+2x^6))` -/
def P17047161434399483629.Spec : Prop :=
  ∀ n, P17047161434399483629.a n = A147852 n

theorem P17047161434399483629.correct : P17047161434399483629.Spec := by
  intro n
  simp only [A147852]

end A147852

/-! ## A147852.P8497835282272640847

`A018152(n)-A117707(A018136(n))`
-/

namespace A147852.P8497835282272640847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018152 n - A117707 (A018136 n).toNat

end

end A147852.P8497835282272640847

namespace A147852

/-- `A018152(n)-A117707(A018136(n))` -/
def P8497835282272640847.Spec : Prop :=
  ∀ n, P8497835282272640847.a n = A147852 n

end A147852

/-! ## A147852.P10990822092707180607

`A003059(∑[ceil(3^(n-1))])-A248781(n+1)`
-/

namespace A147852.P10990822092707180607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A248781 (n + 1)

end

end A147852.P10990822092707180607

namespace A147852

/-- `A003059(∑[ceil(3^(n-1))])-A248781(n+1)` -/
def P10990822092707180607.Spec : Prop :=
  ∀ n, P10990822092707180607.a n = A147852 n

end A147852

/-! ## A147852.P10634879757143506593

`A005087(2*n+1)+A003056(ceil(Δ[3^(n-2)])-1)`
-/

namespace A147852.P10634879757143506593
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (2 * n + 1) + A003056 (⌈f1 (n + 1) - f1 n⌉ - 1).toNat

end

end A147852.P10634879757143506593

namespace A147852

/-- `A005087(2*n+1)+A003056(ceil(Δ[3^(n-2)])-1)` -/
def P10634879757143506593.Spec : Prop :=
  ∀ n, P10634879757143506593.a n = A147852 n

end A147852

/-! ## A147852.P16940818847525197214

`A000196(A032120(n)-A006882(n))`
-/

namespace A147852.P16940818847525197214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A032120 n - A006882 n).toNat

end

end A147852.P16940818847525197214

namespace A147852

/-- `A000196(A032120(n)-A006882(n))` -/
def P16940818847525197214.Spec : Prop :=
  ∀ n, P16940818847525197214.a n = A147852 n

end A147852

/-!
# A147853: Least prime p such that there is a prime q with (p+q)/2=A002110(n), the n-th primorial.

The programs for A147853, there is no canonical definition to state claims against.
-/

/-! ## A147853.P4184942064603984658

`A151800(∑{p}[A215294(n+2), #])`
-/

namespace A147853.P4184942064603984658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215294 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A147853.P4184942064603984658

/-! ## A147853.P5833589711024766342

`A005145(5*A030050(n+1))`
-/

namespace A147853.P5833589711024766342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (5 * A030050 (n + 1)).toNat

end

end A147853.P5833589711024766342

/-! ## A147853.P16824622156170457396

`A251416(eq[4, A278986(n+1)])`
-/

namespace A147853.P16824622156170457396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A147853.P16824622156170457396

/-!
# A147855: G.f.: 1 / (1 + 4*x*G(x)^2 - 7*x*G(x)^3) where G(x) = 1 + x*G(x)^4 is the g.f. of A002293.

The programs for A147855, the canonical program `A147855.P2855657110258849670` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147855 has offset 0).

The definition of A147855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147855.P2855657110258849670

`∑{#}[n, C(#, n-#)*C(4*n-#, #)]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A147855

/-- `∑{#}[n, C(#, n-#)*C(4*n-#, #)]` -/
def P2855657110258849670.Spec : Prop :=
  ∀ n, (P2855657110258849670.a n : ℤ) = A147855 n

theorem P2855657110258849670.correct : P2855657110258849670.Spec := by
  intro n
  simp only [A147855]

end A147855

/-! ## A147855.P8096159205251220444

`A109244(A062728(n))`
-/

namespace A147855.P8096159205251220444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A062728 n).toNat

end

end A147855.P8096159205251220444

namespace A147855

/-- `A109244(A062728(n))` -/
def P8096159205251220444.Spec : Prop :=
  ∀ n, P8096159205251220444.a n = A147855 n

end A147855

/-! ## A147855.P16774142274717032941

`A059260(n*(8*n+5))`
-/

namespace A147855.P16774142274717032941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (n * (8 * n + 5))

end

end A147855.P16774142274717032941

namespace A147855

/-- `A059260(n*(8*n+5))` -/
def P16774142274717032941.Spec : Prop :=
  ∀ n, P16774142274717032941.a n = A147855 n

end A147855

/-! ## A147855.P7326259310416985581

`A035317(A139274(n))`
-/

namespace A147855.P7326259310416985581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A139274 n).toNat

end

end A147855.P7326259310416985581

namespace A147855

/-- `A035317(A139274(n))` -/
def P7326259310416985581.Spec : Prop :=
  ∀ n, P7326259310416985581.a n = A147855 n

end A147855

/-! ## A147855.P8784214631966476675

`A059259(A139276(n))`
-/

namespace A147855.P8784214631966476675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (A139276 n).toNat

end

end A147855.P8784214631966476675

namespace A147855

/-- `A059259(A139276(n))` -/
def P8784214631966476675.Spec : Prop :=
  ∀ n, P8784214631966476675.a n = A147855 n

end A147855

/-!
# A147856: Positive integers n such that n^2 = (x^4 - y^4)*(z^4 - t^4) where x>y and z>t are distinct pairs of integers with gcd(x,y)=gcd(z,t)=1.

The programs for A147856, there is no canonical definition to state claims against.
-/

/-! ## A147856.P17604679537315962766

`A147854(A041569(n))`
-/

namespace A147856.P17604679537315962766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147854 (A041569 n).toNat

end

end A147856.P17604679537315962766

/-!
# A147857: Differences of two positive 4th powers.

The programs for A147857, there is no canonical definition to state claims against.
-/

/-! ## A147857.P16836295675145881887

`∩[A152044(n+1), A152411(n+1)]`
-/

namespace A147857.P16836295675145881887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147857.P16836295675145881887

/-! ## A147857.P12939437423116562158

`filter[A152044(n+1), A267594(#)]`
-/

namespace A147857.P12939437423116562158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A147857.P12939437423116562158

/-! ## A147857.P640033871662299623

`filter[A152044(n+1), A267612(#)]`
-/

namespace A147857.P640033871662299623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267612 (f1 j).toNat = 1) n)

end

end A147857.P640033871662299623

/-! ## A147857.P8609785647634377672

`filter[A152044(n+1), A267635(#)]`
-/

namespace A147857.P8609785647634377672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A147857.P8609785647634377672

/-! ## A147857.P1927832334013841665

`∩[A152044(n+1), A174805(n)]`
-/

namespace A147857.P1927832334013841665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174805 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147857.P1927832334013841665

/-!
# A147858: Differences of two coprime 4th powers.

The programs for A147858, there is no canonical definition to state claims against.
-/

/-! ## A147858.P12242803804302853924

`A147857(A187394(n+1)%A121964(n+1))`
-/

namespace A147858.P12242803804302853924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147857 (Int.tmod (A187394 (n + 1)) (A121964 (n + 1 + 30))).toNat

end

end A147858.P12242803804302853924

/-! ## A147858.P4310994826506261551

`A147857(A051772(n+1)%A249107(n+1))`
-/

namespace A147858.P4310994826506261551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147857 (Int.tmod (A051772 (n + 1)) (A249107 (n + 1))).toNat

end

end A147858.P4310994826506261551

/-! ## A147858.P10129478973593956503

`A147857(A080907(n+1)%A356201(n+2))`
-/

namespace A147858.P10129478973593956503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147857 (Int.tmod (A080907 (n + 1)) (A356201 (n + 2))).toNat

end

end A147858.P10129478973593956503

/-! ## A147858.P11322164829875292071

`A147857(A187394(n+1)-A054467(n+1)%3)`
-/

namespace A147858.P11322164829875292071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147857 (A187394 (n + 1) - Int.tmod (A054467 (n + 1)) 3).toNat

end

end A147858.P11322164829875292071

/-!
# A147859: Chromatic polynomial pi_n(z) of the helm graph H_n evaluated at z=n.

The programs for A147859, there is no canonical definition to state claims against.
-/

/-! ## A147859.P15630615235139199487

`A047162(n+1)*A087328(abs(n^n*xor(n, -1)))`
-/

namespace A147859.P15630615235139199487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047162 (n + 1) * A087328 |(n ^ n : ℤ) * Int.xor (n : ℤ) (-1)|.toNat

end

end A147859.P15630615235139199487

/-!
# A147860: Number of consistent sets of 6 irreflexive binary order relationships over n objects.

The programs for A147860, there is no canonical definition to state claims against.
-/

/-! ## A147860.P12752029453469909164

`A081064(A000125(n+3)+6)`
-/

namespace A147860.P12752029453469909164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081064 (A000125 (n + 3) + 6).toNat

end

end A147860.P12752029453469909164

/-!
# A147861: Triangle read by rows: T(n,k)=min(k, n/k) if k divides n, T(n,k)=0 otherwise (n >=1, 1<=k<=n).

The programs for A147861, there is no canonical definition to state claims against.
-/

/-! ## A147861.P1975050624802456909

`A051731(n+1)*A325028(n+1)`
-/

namespace A147861.P1975050624802456909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A325028 (n + 1)

end

end A147861.P1975050624802456909

/-! ## A147861.P4203082943124220869

`and(A130888(n+1), A325028(n+1))`
-/

namespace A147861.P4203082943124220869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130888 (n + 1)) (A325028 (n + 1))

end

end A147861.P4203082943124220869

/-! ## A147861.P13232632206081079263

`char[eq[0, A173541(n+1)]]*A325028(n+1)`
-/

namespace A147861.P13232632206081079263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173541 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A325028 (n + 1)

end

end A147861.P13232632206081079263

/-! ## A147861.P6393279035040887009

`char[lt[0, A054522(n+1)]]*A325028(n+1)`
-/

namespace A147861.P6393279035040887009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A325028 (n + 1)

end

end A147861.P6393279035040887009

/-! ## A147861.P11453497013014319468

`char[lt[0, A054523(n+1)]]*A325028(n+1)`
-/

namespace A147861.P11453497013014319468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A325028 (n + 1)

end

end A147861.P11453497013014319468

/-! ## A147861.P10768805789712151649

`char[lt[0, A286563(n+1)]]*A325028(n+1)`
-/

namespace A147861.P10768805789712151649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286563 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A325028 (n + 1)

end

end A147861.P10768805789712151649

/-! ## A147861.P4807993022441890889

`A000007(A048158(n+1))*A325028(n+1)`
-/

namespace A147861.P4807993022441890889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A048158 (n + 1)).toNat * A325028 (n + 1)

end

end A147861.P4807993022441890889

/-!
# A147869: Expansion of Product_{k>0} (1 + A004001(k)*x^k).

The programs for A147869, there is no canonical definition to state claims against.
-/

/-! ## A147869.P474888671395314747

`A257212(A002203(n)-A331279(n))`
-/

namespace A147869.P474888671395314747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A002203 n - A331279 n).toNat

end

end A147869.P474888671395314747

/-! ## A147869.P7529073626260361378

`A102450(A002379(n)-A010815(n+3))`
-/

namespace A147869.P7529073626260361378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102450 (A002379 n - A010815 (n + 3)).toNat

end

end A147869.P7529073626260361378

/-! ## A147869.P18233123097205546022

`A111470(Δ[A169985(n)])`
-/

namespace A147869.P18233123097205546022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111470 (f1 (n + 1) - f1 n).toNat

end

end A147869.P18233123097205546022

/-! ## A147869.P5280538685113137253

`A227394(A025047(n)+1)`
-/

namespace A147869.P5280538685113137253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (A025047 n + 1).toNat

end

end A147869.P5280538685113137253

/-! ## A147869.P9026895051743942688

`A111470(Δ[record[A090244(n)]])`
-/

namespace A147869.P9026895051743942688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111470 (f1 (n + 1) - f1 n).toNat

end

end A147869.P9026895051743942688

/-!
# A147871: Expansion of Product_{k > 0} (1 + A147665(k)*x^k).

The programs for A147871, there is no canonical definition to state claims against.
-/

/-! ## A147871.P2292268629060134667

`A005098(A321359(n)%A170954(n+1))`
-/

namespace A147871.P2292268629060134667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (Int.tmod (A321359 n) (A170954 (n + 1))).toNat

end

end A147871.P2292268629060134667

/-! ## A147871.P5529839991698598760

`A338006(floor(sqrt(ceil(3^(n-1)))))`
-/

namespace A147871.P5529839991698598760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338006 (Int.sqrt ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A147871.P5529839991698598760

/-! ## A147871.P3694361782810578160

`A328806(A151365(n+1))`
-/

namespace A147871.P3694361782810578160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328806 (A151365 (n + 1)).toNat

end

end A147871.P3694361782810578160

/-! ## A147871.P7688728079302825929

`A105224(A114696(n)+n)`
-/

namespace A147871.P7688728079302825929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A114696 n + (n : ℤ)).toNat

end

end A147871.P7688728079302825929

/-! ## A147871.P2149287590381926163

`Δ[A002024(Δ[A114203(n)])]`
-/

namespace A147871.P2149287590381926163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114203 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147871.P2149287590381926163

/-!
# A147873: A sequence based on the mechanics of A147781: b(n) = Apply[Plus, IntegerDigits( 17982*Sum_{m=0..7} Prime(n+m) )]; a(n) = 1-(b(n) mod 2).

The programs for A147873, there is no canonical definition to state claims against.
-/

/-! ## A147873.P9127271844754123796

`A292077(lcm(A008292(n+1), A261095(n)))`
-/

namespace A147873.P9127271844754123796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292077 (Int.lcm (A008292 (n + 1)) (A261095 n))

end

end A147873.P9127271844754123796

/-! ## A147873.P12302596876300346465

`A054845(n)%A103956(A006218(n))`
-/

namespace A147873.P12302596876300346465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054845 n) (A103956 (A006218 n).toNat)

end

end A147873.P12302596876300346465

/-! ## A147873.P832037041118244866

`A079126(n)!%A103956(A006218(n))`
-/

namespace A147873.P832037041118244866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A079126 n).toNat : ℤ) (A103956 (A006218 n).toNat)

end

end A147873.P832037041118244866

/-! ## A147873.P14306805362436463356

`A000032(∑{p}[n, #])%A103956(A006218(n))`
-/

namespace A147873.P14306805362436463356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (∑ p ∈ Nat.primeFactors (f1 n), p)) (A103956 (A006218 n).toNat)

end

end A147873.P14306805362436463356

/-! ## A147873.P9781686690504145112

`A006530(A212207(n))%A103956(A006218(n))`
-/

namespace A147873.P9781686690504145112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A212207 n).toNat) (A103956 (A006218 n).toNat)

end

end A147873.P9781686690504145112

/-!
# A147874: a(n) = (5*n-7)*(n-1).

The programs for A147874, the canonical program `A147874.P12438232049573977665` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147874 has offset 1).

The definition of A147874 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*(n+1)-7)*n` (program `A147874.P12438232049573977665`, by `A147874.P12438232049573977665.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147874.P4202340958501012949

`5*n²-2*n`
-/

namespace A147874.P4202340958501012949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 2 : ℤ) - (2 * n : ℤ)

end

end A147874.P4202340958501012949

namespace A147874

/-- `5*n²-2*n` -/
def P4202340958501012949.Spec : Prop :=
  ∀ n, P4202340958501012949.a n = A147874 (n + 1)

theorem P4202340958501012949.correct : P4202340958501012949.Spec := by
  intro n
  simp only [A147874, Nat.add_sub_cancel, A147874.P4202340958501012949.a, A147874.P12438232049573977665.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A147874

/-! ## A147874.P12438232049573977665

`(5*(n+1)-7)*n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A147874

/-- `(5*(n+1)-7)*n` -/
def P12438232049573977665.Spec : Prop :=
  ∀ n, P12438232049573977665.a n = A147874 (n + 1)

theorem P12438232049573977665.correct : P12438232049573977665.Spec := by
  intro n
  simp only [A147874, Nat.add_sub_cancel]

end A147874

/-! ## A147874.P255204040699613556

`ogf((3x+7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A147874.P255204040699613556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 7] [1, -3, 3, -1] n

end

end A147874.P255204040699613556

namespace A147874

/-- `ogf((3x+7x^2)/(1-3x+3x^2-x^3))` -/
def P255204040699613556.Spec : Prop :=
  ∀ n, P255204040699613556.a n = A147874 (n + 1)

end A147874

/-! ## A147874.P4427124412802090358

`A193872(n)/4`
-/

namespace A147874.P4427124412802090358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193872 n : ℚ) / 4

end

end A147874.P4427124412802090358

namespace A147874

/-- `A193872(n)/4` -/
def P4427124412802090358.Spec : Prop :=
  ∀ n, P4427124412802090358.a n = (A147874 (n + 1) : ℚ)

theorem P4427124412802090358.correct : P4427124412802090358.Spec := by
  intro n
  simp only [A147874, Nat.add_sub_cancel, A147874.P4427124412802090358.a, A147874.P12438232049573977665.a, A193872, A193872.P12395081508790096406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147874

/-! ## A147874.P11064176197317745243

`A131242(10*n+2)`
-/

namespace A147874.P11064176197317745243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 (10 * n + 2)

end

end A147874.P11064176197317745243

namespace A147874

/-- `A131242(10*n+2)` -/
def P11064176197317745243.Spec : Prop :=
  ∀ n, P11064176197317745243.a n = A147874 (n + 1)

end A147874

/-! ## A147874.P1886991922793968012

`n*(record[lcm(2, n)]+n)`
-/

namespace A147874.P1886991922793968012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n)

end

end A147874.P1886991922793968012

namespace A147874

/-- `n*(record[lcm(2, n)]+n)` -/
def P1886991922793968012.Spec : Prop :=
  ∀ n, (P1886991922793968012.a n : ℤ) = A147874 (n + 1)

end A147874

/-! ## A147874.P13781521970924480621

`∑[a(n-1)+10]` with `a(0)=0, a(1)=3`
-/

namespace A147874.P13781521970924480621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147874.P13781521970924480621

namespace A147874

/-- `∑[a(n-1)+10]` -/
def P13781521970924480621.Spec : Prop :=
  ∀ n, (P13781521970924480621.a n : ℤ) = A147874 (n + 1)

end A147874

/-! ## A147874.P2654883473885481447

`∑[ogf((3x+7x^2)/(1-2x+x^2))]`
-/

namespace A147874.P2654883473885481447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147874.P2654883473885481447

namespace A147874

/-- `∑[ogf((3x+7x^2)/(1-2x+x^2))]` -/
def P2654883473885481447.Spec : Prop :=
  ∀ n, P2654883473885481447.a n = A147874 (n + 1)

end A147874

/-! ## A147874.P4092914897048671924

`(A152745(n)+n)/2`
-/

namespace A147874.P4092914897048671924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152745 n + (n : ℤ) : ℚ) / 2

end

end A147874.P4092914897048671924

namespace A147874

/-- `(A152745(n)+n)/2` -/
def P4092914897048671924.Spec : Prop :=
  ∀ n, P4092914897048671924.a n = (A147874 (n + 1) : ℚ)

theorem P4092914897048671924.correct : P4092914897048671924.Spec := by
  intro n
  simp only [A147874, Nat.add_sub_cancel, A147874.P4092914897048671924.a, A147874.P12438232049573977665.a, A152745, A152745.P16319448158655216416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147874

/-! ## A147874.P14703060177923580651

`(A195018(n)-n)/2`
-/

namespace A147874.P14703060177923580651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195018 n - (n : ℤ) : ℚ) / 2

end

end A147874.P14703060177923580651

namespace A147874

/-- `(A195018(n)-n)/2` -/
def P14703060177923580651.Spec : Prop :=
  ∀ n, P14703060177923580651.a n = (A147874 (n + 1) : ℚ)

theorem P14703060177923580651.correct : P14703060177923580651.Spec := by
  intro n
  simp only [A147874, Nat.add_sub_cancel, A147874.P14703060177923580651.a, A147874.P12438232049573977665.a, A195018, A195018.P10780825552711397623.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147874

/-! ## A147874.P1338280123754224709

`A016862(n)%A033574(n)`
-/

namespace A147874.P1338280123754224709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016862 n) (A033574 n)

end

end A147874.P1338280123754224709

namespace A147874

/-- `A016862(n)%A033574(n)` -/
def P1338280123754224709.Spec : Prop :=
  ∀ n, P1338280123754224709.a n = A147874 (n + 1)

end A147874

/-! ## A147874.P17731318134679587269

`A194454(n)%A005892(n)`
-/

namespace A147874.P17731318134679587269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194454 n) (A005892 n)

end

end A147874.P17731318134679587269

namespace A147874

/-- `A194454(n)%A005892(n)` -/
def P17731318134679587269.Spec : Prop :=
  ∀ n, P17731318134679587269.a n = A147874 (n + 1)

end A147874

/-! ## A147874.P6494360117908665796

`A134154(n)%A158186(n)`
-/

namespace A147874.P6494360117908665796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134154 n) (A158186 n)

end

end A147874.P6494360117908665796

namespace A147874

/-- `A134154(n)%A158186(n)` -/
def P6494360117908665796.Spec : Prop :=
  ∀ n, P6494360117908665796.a n = A147874 (n + 1)

end A147874

/-! ## A147874.P2736317751199151677

`A163832(n)%A288534(n)`
-/

namespace A147874.P2736317751199151677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163832 n) (A288534 n)

end

end A147874.P2736317751199151677

namespace A147874

/-- `A163832(n)%A288534(n)` -/
def P2736317751199151677.Spec : Prop :=
  ∀ n, P2736317751199151677.a n = A147874 (n + 1)

end A147874

/-! ## A147874.P3605519527156940592

`A244729(n)%A383466(n)`
-/

namespace A147874.P3605519527156940592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244729 n) (A383466 n)

end

end A147874.P3605519527156940592

namespace A147874

/-- `A244729(n)%A383466(n)` -/
def P3605519527156940592.Spec : Prop :=
  ∀ n, P3605519527156940592.a n = A147874 (n + 1)

end A147874

/-! ## A147874.P11480237839231888815

`A069190(n+1)%A131878(n)`
-/

namespace A147874.P11480237839231888815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069190 (n + 1)) (A131878 n)

end

end A147874.P11480237839231888815

namespace A147874

/-- `A069190(n+1)%A131878(n)` -/
def P11480237839231888815.Spec : Prop :=
  ∀ n, P11480237839231888815.a n = A147874 (n + 1)

end A147874

/-! ## A147874.P18059335975406918295

`A144459(n)%A069133(n+1)`
-/

namespace A147874.P18059335975406918295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144459 n) (A069133 (n + 1))

end

end A147874.P18059335975406918295

namespace A147874

/-- `A144459(n)%A069133(n+1)` -/
def P18059335975406918295.Spec : Prop :=
  ∀ n, P18059335975406918295.a n = A147874 (n + 1)

end A147874

/-! ## A147874.P4293283145633019570

`A010019(n)%A244804(n+1)`
-/

namespace A147874.P4293283145633019570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010019 n) (A244804 (n + 1))

end

end A147874.P4293283145633019570

namespace A147874

/-- `A010019(n)%A244804(n+1)` -/
def P4293283145633019570.Spec : Prop :=
  ∀ n, P4293283145633019570.a n = A147874 (n + 1)

end A147874

/-! ## A147874.P16894705224162704645

`A161587(n)%A118057(n+1)`
-/

namespace A147874.P16894705224162704645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161587 n) (A118057 (n + 1))

end

end A147874.P16894705224162704645

namespace A147874

/-- `A161587(n)%A118057(n+1)` -/
def P16894705224162704645.Spec : Prop :=
  ∀ n, P16894705224162704645.a n = A147874 (n + 1)

end A147874

/-! ## A147874.P4641967012874768892

`A158187(n)%A273982(n+1)`
-/

namespace A147874.P4641967012874768892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158187 n) (A273982 (n + 1))

end

end A147874.P4641967012874768892

namespace A147874

/-- `A158187(n)%A273982(n+1)` -/
def P4641967012874768892.Spec : Prop :=
  ∀ n, P4641967012874768892.a n = A147874 (n + 1)

end A147874

/-!
# A147875: Second heptagonal numbers: a(n) = n*(5*n+3)/2.

The programs for A147875, the canonical program `A147875.P2074133665203692447` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147875 has offset 0).

The definition of A147875 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(5*n+3)/2` (program `A147875.P2410933317395905471`, by `A147875.P2410933317395905471.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147875.P2410933317395905471

`n*(5*n+3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147875.P2410933317395905471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (5 * n + 3) : ℚ) / 2

end

end A147875.P2410933317395905471

namespace A147875

/-- `n*(5*n+3)/2` -/
def P2410933317395905471.Spec : Prop :=
  ∀ n, P2410933317395905471.a n = (A147875 n : ℚ)

theorem P2410933317395905471.correct : P2410933317395905471.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A147875, Nat.add_sub_cancel, A147875.P2410933317395905471.a, A147875.P2074133665203692447.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A147875, Nat.add_sub_cancel, A147875.P2410933317395905471.a, A147875.P2074133665203692447.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A147875

/-! ## A147875.P9273371392370058692

`ogf((4x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A147875.P9273371392370058692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 1] [1, -3, 3, -1] n

end

end A147875.P9273371392370058692

namespace A147875

/-- `ogf((4x+x^2)/(1-3x+3x^2-x^3))` -/
def P9273371392370058692.Spec : Prop :=
  ∀ n, P9273371392370058692.a n = A147875 n

end A147875

/-! ## A147875.P2074133665203692447

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=4, a(2)=13`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A147875

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P2074133665203692447.Spec : Prop :=
  ∀ n, P2074133665203692447.a n = A147875 n

theorem P2074133665203692447.correct : P2074133665203692447.Spec := by
  intro n
  simp only [A147875]

end A147875

/-! ## A147875.P12136791338692762002

`A003215(n)-A000217(n+1)`
-/

namespace A147875.P12136791338692762002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - A000217 (n + 1)

end

end A147875.P12136791338692762002

namespace A147875

/-- `A003215(n)-A000217(n+1)` -/
def P12136791338692762002.Spec : Prop :=
  ∀ n, P12136791338692762002.a n = A147875 n

end A147875

/-! ## A147875.P6241917079525667993

`A000096(n)+2*A000290(n)`
-/

namespace A147875.P6241917079525667993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 2 * A000290 n

end

end A147875.P6241917079525667993

namespace A147875

/-- `A000096(n)+2*A000290(n)` -/
def P6241917079525667993.Spec : Prop :=
  ∀ n, P6241917079525667993.a n = A147875 n

end A147875

/-! ## A147875.P2544248184856754244

`A000217(n)+A000217(2*n)`
-/

namespace A147875.P2544248184856754244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A000217 (2 * n)

end

end A147875.P2544248184856754244

namespace A147875

/-- `A000217(n)+A000217(2*n)` -/
def P2544248184856754244.Spec : Prop :=
  ∀ n, P2544248184856754244.a n = A147875 n

end A147875

/-! ## A147875.P2707509963597907355

`A130520(5*n+3)`
-/

namespace A147875.P2707509963597907355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (5 * n + 3)

end

end A147875.P2707509963597907355

namespace A147875

/-- `A130520(5*n+3)` -/
def P2707509963597907355.Spec : Prop :=
  ∀ n, P2707509963597907355.a n = A147875 n

end A147875

/-! ## A147875.P17238909659043658899

`∑[a(n-1)+5]` with `a(0)=0, a(1)=4`
-/

namespace A147875.P17238909659043658899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147875.P17238909659043658899

namespace A147875

/-- `∑[a(n-1)+5]` -/
def P17238909659043658899.Spec : Prop :=
  ∀ n, (P17238909659043658899.a n : ℤ) = A147875 n

end A147875

/-! ## A147875.P4239718244032126594

`5*C(n+1, 2)-n`
-/

namespace A147875.P4239718244032126594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * Nat.choose (n + 1) 2 : ℤ) - (n : ℤ)

end

end A147875.P4239718244032126594

namespace A147875

/-- `5*C(n+1, 2)-n` -/
def P4239718244032126594.Spec : Prop :=
  ∀ n, P4239718244032126594.a n = A147875 n

end A147875

/-! ## A147875.P5394587218811506260

`∑[ogf((4x+x^2)/(1-2x+x^2))]`
-/

namespace A147875.P5394587218811506260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147875.P5394587218811506260

namespace A147875

/-- `∑[ogf((4x+x^2)/(1-2x+x^2))]` -/
def P5394587218811506260.Spec : Prop :=
  ∀ n, P5394587218811506260.a n = A147875 n

end A147875

/-! ## A147875.P7501985815302872701

`Δ[n^3-C(n+2, 3)]`
-/

namespace A147875.P7501985815302872701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.choose (n + 2) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147875.P7501985815302872701

namespace A147875

/-- `Δ[n^3-C(n+2, 3)]` -/
def P7501985815302872701.Spec : Prop :=
  ∀ n, P7501985815302872701.a n = A147875 n

end A147875

/-! ## A147875.P8554803688890554287

`5*n+a(n-1)-1` with `a(0)=0`
-/

namespace A147875.P8554803688890554287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (5 * n : ℤ) + a (n - 1) - 1

end

end A147875.P8554803688890554287

namespace A147875

/-- `5*n+a(n-1)-1` -/
def P8554803688890554287.Spec : Prop :=
  ∀ n, P8554803688890554287.a n = A147875 n

end A147875

/-! ## A147875.P8925383592038210174

`5*n-(1-a(n-1))` with `a(0)=0`
-/

namespace A147875.P8925383592038210174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (5 * n : ℤ) - (1 - a (n - 1))

end

end A147875.P8925383592038210174

namespace A147875

/-- `5*n-(1-a(n-1))` -/
def P8925383592038210174.Spec : Prop :=
  ∀ n, P8925383592038210174.a n = A147875 n

end A147875

/-! ## A147875.P1703639530976519163

`n²-∑[a(n-1)-3]` with `a(0)=0`
-/

namespace A147875.P1703639530976519163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147875.P1703639530976519163

namespace A147875

/-- `n²-∑[a(n-1)-3]` -/
def P1703639530976519163.Spec : Prop :=
  ∀ n, P1703639530976519163.a n = A147875 n

end A147875

/-! ## A147875.P13152960511326874657

`n-(∑[a(n-1)-5]-2)` with `a(0)=2`
-/

namespace A147875.P13152960511326874657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A147875.P13152960511326874657

namespace A147875

/-- `n-(∑[a(n-1)-5]-2)` -/
def P13152960511326874657.Spec : Prop :=
  ∀ n, P13152960511326874657.a n = A147875 n

end A147875

/-! ## A147875.P11248378651967576513

`∑[2*n+(2*n)%(n+1)+2*n]`
-/

namespace A147875.P11248378651967576513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n % (n + 1) + 2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147875.P11248378651967576513

namespace A147875

/-- `∑[2*n+(2*n)%(n+1)+2*n]` -/
def P11248378651967576513.Spec : Prop :=
  ∀ n, (P11248378651967576513.a n : ℤ) = A147875 n

end A147875

/-! ## A147875.P18241535452390874443

`a(n-1)+a(n-1)+5-a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A147875.P18241535452390874443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) + (a (n - 1) + 5) - a (n - 2)

end

end A147875.P18241535452390874443

namespace A147875

/-- `a(n-1)+a(n-1)+5-a(n-2)` -/
def P18241535452390874443.Spec : Prop :=
  ∀ n, P18241535452390874443.a n = A147875 n

end A147875

/-! ## A147875.P8037822742566750001

`a(n-1)-(a(n-2)-a(n-1)-5)` with `a(0)=0, a(1)=4`
-/

namespace A147875.P8037822742566750001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - 5)

end

end A147875.P8037822742566750001

namespace A147875

/-- `a(n-1)-(a(n-2)-a(n-1)-5)` -/
def P8037822742566750001.Spec : Prop :=
  ∀ n, P8037822742566750001.a n = A147875 n

end A147875

/-! ## A147875.P2303513643445445184

`A005475(n)+n`
-/

namespace A147875.P2303513643445445184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n + (n : ℤ)

end

end A147875.P2303513643445445184

namespace A147875

/-- `A005475(n)+n` -/
def P2303513643445445184.Spec : Prop :=
  ∀ n, P2303513643445445184.a n = A147875 n

end A147875

/-! ## A147875.P6457430045053539092

`A028895(n)-n`
-/

namespace A147875.P6457430045053539092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n - (n : ℤ)

end

end A147875.P6457430045053539092

namespace A147875

/-- `A028895(n)-n` -/
def P6457430045053539092.Spec : Prop :=
  ∀ n, P6457430045053539092.a n = A147875 n

end A147875

/-!
# A147877: The number of degree sequences with degree sum 2n representable by a non-separable graph (with multiple edges allowed).

The programs for A147877, there is no canonical definition to state claims against.
-/

/-! ## A147877.P3889677188260053405

`A000041(2*(n+1))-A000041(2*(n+1)-1)-A000070(n+1)+A000041(n+1)+A000041(n)`
-/

namespace A147877.P3889677188260053405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * (n + 1)) - A000041 (2 * (n + 1) - 1) - A000070 (n + 1) + A000041 (n + 1) + A000041 n

end

end A147877.P3889677188260053405

/-! ## A147877.P13627426958828530523

`A002865(2*(n+1))-∑[∑[A085811(n+2)]]`
-/

namespace A147877.P13627426958828530523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147877.P13627426958828530523

/-! ## A147877.P12361043175219196493

`A085811(2*n+5)-∑[∑[A085811(n+2)]]`
-/

namespace A147877.P12361043175219196493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (2 * n + 5) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147877.P12361043175219196493

/-! ## A147877.P16803521118014240380

`A147878(n+1)+A000070(n)-A000041(2*n+1)`
-/

namespace A147877.P16803521118014240380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147878 (n + 1) + (A000070 n - A000041 (2 * n + 1))

end

end A147877.P16803521118014240380

/-! ## A147877.P16390121425951043140

`A209816(n+1)+A000041(n)-A000041(2*n+1)`
-/

namespace A147877.P16390121425951043140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209816 (n + 1) + (A000041 n - A000041 (2 * n + 1))

end

end A147877.P16390121425951043140

/-! ## A147877.P10020060068641237267

`A035363(2*n)+A209816(n+1)%A000041(2*n+1)`
-/

namespace A147877.P10020060068641237267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) + Int.tmod (A209816 (n + 1)) (A000041 (2 * n + 1))

end

end A147877.P10020060068641237267

/-! ## A147877.P10847908539282855815

`A147878(n+1)-A110618(2*n+1)`
-/

namespace A147877.P10847908539282855815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147878 (n + 1) - A110618 (2 * n + 1)

end

end A147877.P10847908539282855815

/-!
# A147878: The number of degree sequences with degree sum 2n representable by a connected graph (with multiple edges allowed).

The programs for A147878, there is no canonical definition to state claims against.
-/

/-! ## A147878.P17922257237068848056

`A000041(2*(n+1))-2*A000070(n+1)+2*A000041(n+1)+A000041(n)`
-/

namespace A147878.P17922257237068848056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * (n + 1)) - 2 * A000070 (n + 1) + 2 * A000041 (n + 1) + A000041 n

end

end A147878.P17922257237068848056

/-! ## A147878.P18302511123425292854

`A210249(A005408(n))+A147877(n+1)`
-/

namespace A147878.P18302511123425292854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210249 (A005408 n).toNat + A147877 (n + 1)

end

end A147878.P18302511123425292854

/-! ## A147878.P14786007193220321287

`A209816(n+1)+A000041(n)-A000070(n)`
-/

namespace A147878.P14786007193220321287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209816 (n + 1) + (A000041 n - A000070 n)

end

end A147878.P14786007193220321287

/-! ## A147878.P3756754191307856249

`A209816(n+1)+A000041(n)-A025065(2*n)`
-/

namespace A147878.P3756754191307856249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209816 (n + 1) + (A000041 n - A025065 (2 * n))

end

end A147878.P3756754191307856249

/-! ## A147878.P12774610140681235258

`A035363(2*n)+A209816(n+1)-A000070(n)`
-/

namespace A147878.P12774610140681235258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) + (A209816 (n + 1) - A000070 n)

end

end A147878.P12774610140681235258

/-! ## A147878.P11783205075580682196

`A035363(2*n)+A209816(n+1)-A025065(2*n)`
-/

namespace A147878.P11783205075580682196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) + (A209816 (n + 1) - A025065 (2 * n))

end

end A147878.P11783205075580682196

/-! ## A147878.P14391835222156518957

`A026820(2*(n+1)²+1)-A000070(n)`
-/

namespace A147878.P14391835222156518957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (2 * (n + 1) ^ 2 + 1) - A000070 n

end

end A147878.P14391835222156518957

/-!
# A147879: Expansion of Product_{k>=1} (1 + x^k*A005185(k)).

The programs for A147879, there is no canonical definition to state claims against.
-/

/-! ## A147879.P17964158890033616074

`A147880(n)-A051105(A049614(n))`
-/

namespace A147879.P17964158890033616074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147880 n - A051105 (A049614 n).toNat

end

end A147879.P17964158890033616074

/-! ## A147879.P13835471312668800687

`A147880(n)-A185284(A312014(n))`
-/

namespace A147879.P13835471312668800687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147880 n - A185284 (A312014 n).toNat

end

end A147879.P13835471312668800687

/-! ## A147879.P10785973229846606206

`A379666(A222405(2*n+3))+A025047(n)`
-/

namespace A147879.P10785973229846606206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379666 (A222405 (2 * n + 3)).toNat + A025047 n

end

end A147879.P10785973229846606206

/-! ## A147879.P8363809416931723611

`A262689(A049527(n+3)-A047223(2*n+1))`
-/

namespace A147879.P8363809416931723611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A049527 (n + 3) - A047223 (2 * n + 1)).toNat

end

end A147879.P8363809416931723611

/-!
# A147880: Expansion of Product_{k > 0} (1 + A005229(k)*x^k).

The programs for A147880, there is no canonical definition to state claims against.
-/

/-! ## A147880.P1493560880529434672

`A060312(n+1)-A068426(A000079(n+3))`
-/

namespace A147880.P1493560880529434672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 (n + 1) - A068426 (A000079 (n + 3)).toNat

end

end A147880.P1493560880529434672

/-! ## A147880.P11439995094068203142

`A147879(n)+A037824(A191970(n))`
-/

namespace A147880.P11439995094068203142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147879 n + A037824 (A191970 n).toNat

end

end A147880.P11439995094068203142

/-! ## A147880.P2245704145176527345

`A185284(A312014(n))+A147879(n)`
-/

namespace A147880.P2245704145176527345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A312014 n).toNat + A147879 n

end

end A147880.P2245704145176527345

/-! ## A147880.P3271797425779817222

`A001224(n+1)-A000035(A143816(n))`
-/

namespace A147880.P3271797425779817222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (n + 1) - A000035 (A143816 n).toNat

end

end A147880.P3271797425779817222

/-! ## A147880.P14966409070148809614

`A001224(n+1)-A360125(A001008(n+1)+1)`
-/

namespace A147880.P14966409070148809614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (n + 1) - A360125 (A001008 (n + 1) + 1).toNat

end

end A147880.P14966409070148809614

/-!
# A147884: a(n) is the smallest positive integer k such that the last n digits of 2^k are 1 or 2.

The programs for A147884, there is no canonical definition to state claims against.
-/

/-! ## A147884.P14000762053896920446

`A321598(A238966(5^n))`
-/

namespace A147884.P14000762053896920446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321598 (A238966 (5 ^ n)).toNat

end

end A147884.P14000762053896920446

/-!
# A147885: Number of permutations of floor(i*5/2), i=0..n-1, with all sums of two adjacent terms unique.

The programs for A147885, there is no canonical definition to state claims against.
-/

/-! ## A147885.P7903241225300180399

`A100180(A082279(n+1))`
-/

namespace A147885.P7903241225300180399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100180 (A082279 (n + 1)).toNat

end

end A147885.P7903241225300180399

/-! ## A147885.P6699581678387320558

`A147892(A331561(n+1))`
-/

namespace A147885.P6699581678387320558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147892 (A331561 (n + 1)).toNat

end

end A147885.P6699581678387320558

/-!
# A147886: Number of permutations of floor(i*5/4), i=0..n-1, with all sums of two adjacent terms unique.

The programs for A147886, there is no canonical definition to state claims against.
-/

/-! ## A147886.P5236618707401844054

`A147924((((n+1)/10^val(n+1, 10))%10)^(∑{d}[n+1, (#%3)%2]-char[3*n]))`
-/

namespace A147886.P5236618707401844054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147924 (SequenceMachineLib.roundAway ((Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))) 10 : ℚ) ^ (((∑ d ∈ Nat.divisors (f1 n), d % 3 % 2 : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ))).toNat

end

end A147886.P5236618707401844054

/-! ## A147886.P856738444950051846

`A147924(A024640(n)+1)`
-/

namespace A147886.P856738444950051846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147924 (A024640 n + 1).toNat

end

end A147886.P856738444950051846

/-! ## A147886.P13682050910771032080

`A147924(A138988(n+1))`
-/

namespace A147886.P13682050910771032080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147924 (A138988 (n + 1)).toNat

end

end A147886.P13682050910771032080

/-!
# A147887: Number of permutations of floor(i*7/4), i=0..n-1, with all sums of two adjacent terms unique.

The programs for A147887, there is no canonical definition to state claims against.
-/

/-! ## A147887.P5199751316317965504

`A366611(n!)*A367222(n)`
-/

namespace A147887.P5199751316317965504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366611 (Nat.factorial n) * A367222 n

end

end A147887.P5199751316317965504

/-! ## A147887.P923739945948088827

`A049317(∑[∑[A026527(n+2)]])`
-/

namespace A147887.P923739945948088827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026527 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049317 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147887.P923739945948088827

/-!
# A147889: Number of permutations of floor(i*8/5), i=0..n-1, with all sums of two adjacent terms unique.

The programs for A147889, there is no canonical definition to state claims against.
-/

/-! ## A147889.P12364252508836579024

`A001251(n+1)+A000120(A190339(n))`
-/

namespace A147889.P12364252508836579024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001251 (n + 1) + A000120 (A190339 n).toNat

end

end A147889.P12364252508836579024

/-! ## A147889.P14005248579856154490

`and(A030430(A365360(n+1)), A214762(n))`
-/

namespace A147889.P14005248579856154490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030430 (A365360 (n + 1)).toNat) (A214762 n)

end

end A147889.P14005248579856154490

/-!
# A147890: Number of permutations of floor(i*9/5), i=0..n-1, with all sums of two adjacent terms unique.

The programs for A147890, there is no canonical definition to state claims against.
-/

/-! ## A147890.P7531416310581358292

`A147898(a(n-3))` with `a(0)=1, a(1)=2, a(2)=6, a(3)=24, a(4)=96`
-/

namespace A147890.P7531416310581358292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 24, 96] fun n a =>
  A147898 (a (n - 3)).toNat

end

end A147890.P7531416310581358292

/-! ## A147890.P2576366083145258423

`A147915((n+1)*3^∑{p}[n+1, (#%3)%2])`
-/

namespace A147890.P2576366083145258423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147915 ((n + 1) * 3 ^ (∑ p ∈ Nat.primeFactors (f1 n), p % 3 % 2))

end

end A147890.P2576366083145258423

/-!
# A147891: Number of permutations of floor(i*9/8), i=0..n-1, with all sums of two adjacent terms unique.

The programs for A147891, there is no canonical definition to state claims against.
-/

/-! ## A147891.P4523994348708547489

`A091217(∑[A060361(n)])`
-/

namespace A147891.P4523994348708547489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147891.P4523994348708547489

/-! ## A147891.P1249035211243619218

`A091217(∑[A290852(n)])`
-/

namespace A147891.P1249035211243619218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147891.P1249035211243619218

/-! ## A147891.P17999040393477387576

`Δ[A325402(∑[A091217(n)])]`
-/

namespace A147891.P17999040393477387576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091217 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325402 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147891.P17999040393477387576

/-! ## A147891.P16539336245317609206

`A091217(A146785(n+1)+n)`
-/

namespace A147891.P16539336245317609206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091217 (A146785 (n + 1) + (n : ℤ)).toNat

end

end A147891.P16539336245317609206

/-!
# A147892: Number of permutations of floor(i*3/2), i=0..n-1, with all sums of two and three adjacent terms respectively unique.

The programs for A147892, there is no canonical definition to state claims against.
-/

/-! ## A147892.P7819058906472777825

`A147900(xor(8, n+9))`
-/

namespace A147892.P7819058906472777825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147900 (Nat.xor 8 (n + 9))

end

end A147892.P7819058906472777825

/-! ## A147892.P17990323994356415684

`A147908(C(∑[ceil(n/6)]+1, n))`
-/

namespace A147892.P17990323994356415684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147908 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat n)

end

end A147892.P17990323994356415684

/-! ## A147892.P3865659469571641948

`A147908(n+1)%p?[∑[2^n]]`
-/

namespace A147892.P3865659469571641948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147908 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A147892.P3865659469571641948

/-!
# A147893: Number of permutations of floor(i*5/4), i=0..n-1, with all sums of two and three adjacent terms respectively unique.

The programs for A147893, there is no canonical definition to state claims against.
-/

/-! ## A147893.P12040041666314977455

`A147942(xor(8, n+9))`
-/

namespace A147893.P12040041666314977455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147942 (Nat.xor 8 (n + 9))

end

end A147893.P12040041666314977455

/-! ## A147893.P13629418130494323904

`A147910(lcm(n+1, ∏{e}[n+1, #]))`
-/

namespace A147893.P13629418130494323904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147910 (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A147893.P13629418130494323904

/-! ## A147893.P16227581357162344060

`A147902(C(∑[ceil(n/6)]+1, n))`
-/

namespace A147893.P16227581357162344060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147902 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat n)

end

end A147893.P16227581357162344060

/-!
# A147894: Number of permutations of floor(i*7/2), i=0..n-1, with all sums of two and three adjacent terms respectively unique.

The programs for A147894, there is no canonical definition to state claims against.
-/

/-! ## A147894.P16693824632818980440

`A147911(C(∑[ceil(n/6)]+1, n))`
-/

namespace A147894.P16693824632818980440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147911 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat n)

end

end A147894.P16693824632818980440

/-! ## A147894.P11250746538407455462

`A147911(∑[A173779(n)])`
-/

namespace A147894.P11250746538407455462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147911 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147894.P11250746538407455462

/-! ## A147894.P6753156527106621791

`A147909(A173779(n)+n)`
-/

namespace A147894.P6753156527106621791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147909 (A173779 n + (n : ℤ)).toNat

end

end A147894.P6753156527106621791

/-!
# A147895: Number of permutations of floor(i*7/4), i=0..n-1, with all sums of two and three adjacent terms respectively unique.

The programs for A147895, there is no canonical definition to state claims against.
-/

/-! ## A147895.P4614742483201814003

`A147903(C(∑[ceil(n/6)]+1, n))`
-/

namespace A147895.P4614742483201814003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147903 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat n)

end

end A147895.P4614742483201814003

/-! ## A147895.P6583506883440665541

`A147912(C(∑[ceil(n/6)]+1, n))`
-/

namespace A147895.P6583506883440665541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147912 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat n)

end

end A147895.P6583506883440665541

/-! ## A147895.P13765446054568997204

`A147912(n+1)%p?[2^n-1]`
-/

namespace A147895.P13765446054568997204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147912 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A147895.P13765446054568997204

/-!
# A147896: Number of permutations of floor(i*7/6), i=0..n-1, with all sums of two and three adjacent terms respectively unique.

The programs for A147896, there is no canonical definition to state claims against.
-/

/-! ## A147896.P7046636267039124780

`A147913(C(∑[ceil(n/6)]+1, n))`
-/

namespace A147896.P7046636267039124780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147913 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat n)

end

end A147896.P7046636267039124780

/-! ## A147896.P4996954331898164477

`A147913(n+1)%p?[∑[2^n]]`
-/

namespace A147896.P4996954331898164477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147913 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A147896.P4996954331898164477

/-! ## A147896.P4212749475152088446

`A147913((n+2)*∑[char[7*n]]-1)`
-/

namespace A147896.P4212749475152088446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147913 ((n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j) - 1)

end

end A147896.P4212749475152088446

/-!
# A147897: Number of permutations of floor(i*8/5), i=0..n-1, with all sums of two and three adjacent terms respectively unique.

The programs for A147897, there is no canonical definition to state claims against.
-/

/-! ## A147897.P17064524502321817002

`A028310(A147905(n+1))`
-/

namespace A147897.P17064524502321817002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A147905 (n + 1)).toNat

end

end A147897.P17064524502321817002

/-! ## A147897.P16582554201765186687

`A359099(A147914(n+1))`
-/

namespace A147897.P16582554201765186687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359099 (A147914 (n + 1)).toNat

end

end A147897.P16582554201765186687

/-! ## A147897.P16759277619692575813

`A147914(A173779(n)+n)`
-/

namespace A147897.P16759277619692575813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147914 (A173779 n + (n : ℤ)).toNat

end

end A147897.P16759277619692575813

/-!
# A147898: Number of permutations of floor(i*9/5), i=0..n-1, with all sums of two and three adjacent terms respectively unique.

The programs for A147898, there is no canonical definition to state claims against.
-/

/-! ## A147898.P5467483548962077715

`A147906(n+1)%p?[∑{p}[n+1, ceil(n/#)^4]]`
-/

namespace A147898.P5467483548962077715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌈(n : ℚ) / (p : ℚ)⌉ ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147906 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A147898.P5467483548962077715

/-! ## A147898.P9383630283776061788

`A147906(∑[A143571(n)])`
-/

namespace A147898.P9383630283776061788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147906 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147898.P9383630283776061788

/-! ## A147898.P4626081047329445115

`A147915(∑[A143571(n)])`
-/

namespace A147898.P4626081047329445115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147915 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147898.P4626081047329445115

/-! ## A147898.P6122329390819415373

`A147906(A000005(5^n))`
-/

namespace A147898.P6122329390819415373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147906 (A000005 (5 ^ n)).toNat

end

end A147898.P6122329390819415373

