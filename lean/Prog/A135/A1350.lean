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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A135002: Decimal expansion of 2/e.

The programs for A135002, there is no canonical definition to state claims against.
-/

/-! ## A135002.P2252869683667008299

`9-A334397(n)`
-/

namespace A135002.P2252869683667008299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A334397 n

end

end A135002.P2252869683667008299

/-!
# A135010: Triangle read by rows in which row n lists A000041(n-1) 1's followed by the list of juxtaposed lexicographically ordered partitions of n that do not contain 1 as a part.

The programs for A135010, there is no canonical definition to state claims against.
-/

/-! ## A135010.P9258809571200219865

`sqrt(A206438(n+1))`
-/

namespace A135010.P9258809571200219865
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206438 (n + 1) : ℝ)

end

end A135010.P9258809571200219865

/-! ## A135010.P2496113310176531633

`A000194(A206438(n+1)+1)`
-/

namespace A135010.P2496113310176531633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A206438 (n + 1) + 1).toNat

end

end A135010.P2496113310176531633

/-! ## A135010.P5126104058940494454

`A000196(A206438(n+1)+1)`
-/

namespace A135010.P5126104058940494454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A206438 (n + 1) + 1).toNat

end

end A135010.P5126104058940494454

/-! ## A135010.P7332612597187987531

`A247645(A206438(n+1)+1)`
-/

namespace A135010.P7332612597187987531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247645 (A206438 (n + 1) + 1).toNat

end

end A135010.P7332612597187987531

/-! ## A135010.P13715574073669559860

`A262689(A206438(n+1)+1)`
-/

namespace A135010.P13715574073669559860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A206438 (n + 1) + 1).toNat

end

end A135010.P13715574073669559860

/-! ## A135010.P9417257831883139795

`A091453(A206438(n+1)+2)`
-/

namespace A135010.P9417257831883139795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (A206438 (n + 1) + 2).toNat

end

end A135010.P9417257831883139795

/-! ## A135010.P1883954055492274013

`A002260(2*A206438(n+1))`
-/

namespace A135010.P1883954055492274013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A206438 (n + 1)).toNat

end

end A135010.P1883954055492274013

/-! ## A135010.P2476152135004842565

`A002262(2*A206438(n+1))`
-/

namespace A135010.P2476152135004842565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A206438 (n + 1)).toNat

end

end A135010.P2476152135004842565

/-! ## A135010.P10679850245891998672

`A050873(2*A206438(n+1))`
-/

namespace A135010.P10679850245891998672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (2 * A206438 (n + 1)).toNat

end

end A135010.P10679850245891998672

/-! ## A135010.P4470782220779561873

`A156348(2*A206438(n+1))`
-/

namespace A135010.P4470782220779561873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156348 (2 * A206438 (n + 1)).toNat

end

end A135010.P4470782220779561873

/-! ## A135010.P11889502492733183762

`A015052(A206438(n+1)²)`
-/

namespace A135010.P11889502492733183762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A206438 (n + 1) ^ 2).toNat

end

end A135010.P11889502492733183762

/-!
# A135013: Partial sums of A000265.

The programs for A135013, the canonical program `A135013.P10871851765425093599` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135013 has offset 1).

The definition of A135013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135013.P4335154577109002837

`∑[(n+1)/2^val(n+1, 2)]`
-/

namespace A135013.P4335154577109002837
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P4335154577109002837

namespace A135013

/-- `∑[(n+1)/2^val(n+1, 2)]` -/
def P4335154577109002837.Spec : Prop :=
  ∀ n, P4335154577109002837.a n = (A135013 (n + 1) : ℚ)

end A135013

/-! ## A135013.P15435739363767173275

`∑[(n+1)/(or(n, n+1)-n)]`
-/

namespace A135013.P15435739363767173275
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P15435739363767173275

namespace A135013

/-- `∑[(n+1)/(or(n, n+1)-n)]` -/
def P15435739363767173275.Spec : Prop :=
  ∀ n, P15435739363767173275.a n = (A135013 (n + 1) : ℚ)

end A135013

/-! ## A135013.P16813920109810888664

`∑[(n+1)/xor(n, or(n, n+1))]`
-/

namespace A135013.P16813920109810888664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P16813920109810888664

namespace A135013

/-- `∑[(n+1)/xor(n, or(n, n+1))]` -/
def P16813920109810888664.Spec : Prop :=
  ∀ n, P16813920109810888664.a n = (A135013 (n + 1) : ℚ)

end A135013

/-! ## A135013.P6530823997682563412

`∑[(n+1)*2^-val(n+1, 2)]`
-/

namespace A135013.P6530823997682563412
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P6530823997682563412

namespace A135013

/-- `∑[(n+1)*2^-val(n+1, 2)]` -/
def P6530823997682563412.Spec : Prop :=
  ∀ n, P6530823997682563412.a n = (A135013 (n + 1) : ℚ)

end A135013

/-! ## A135013.P18077526342105830695

`∑[2^(log2(n+1)-val(n+1, 2))]`
-/

namespace A135013.P18077526342105830695
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P18077526342105830695

namespace A135013

/-- `∑[2^(log2(n+1)-val(n+1, 2))]` -/
def P18077526342105830695.Spec : Prop :=
  ∀ n, P18077526342105830695.a n = (A135013 (n + 1) : ℝ)

end A135013

/-! ## A135013.P12838740767223691500

`∑[(n+1)/and(n+1, -(n+1))]`
-/

namespace A135013.P12838740767223691500
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P12838740767223691500

namespace A135013

/-- `∑[(n+1)/and(n+1, -(n+1))]` -/
def P12838740767223691500.Spec : Prop :=
  ∀ n, P12838740767223691500.a n = (A135013 (n + 1) : ℚ)

end A135013

/-! ## A135013.P18216738292080631285

`∑[(n+1)/ceil(xor(n, n+1)/2)]`
-/

namespace A135013.P18216738292080631285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P18216738292080631285

namespace A135013

/-- `∑[(n+1)/ceil(xor(n, n+1)/2)]` -/
def P18216738292080631285.Spec : Prop :=
  ∀ n, P18216738292080631285.a n = (A135013 (n + 1) : ℚ)

end A135013

/-! ## A135013.P15787017737469758802

`∑[(n+1)/(n+1-and(n, n+1))]`
-/

namespace A135013.P15787017737469758802
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P15787017737469758802

namespace A135013

/-- `∑[(n+1)/(n+1-and(n, n+1))]` -/
def P15787017737469758802.Spec : Prop :=
  ∀ n, P15787017737469758802.a n = (A135013 (n + 1) : ℚ)

end A135013

/-! ## A135013.P11733639802779849687

`∑[-(n+1)/or(n+1, -(n+1))]`
-/

namespace A135013.P11733639802779849687
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P11733639802779849687

namespace A135013

/-- `∑[-(n+1)/or(n+1, -(n+1))]` -/
def P11733639802779849687.Spec : Prop :=
  ∀ n, P11733639802779849687.a n = (A135013 (n + 1) : ℚ)

end A135013

/-! ## A135013.P5841651551671265597

`∑[(n+1)/xor(n+1, and(n, n+1))]`
-/

namespace A135013.P5841651551671265597
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.xor (n + 1) (Nat.land n (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P5841651551671265597

namespace A135013

/-- `∑[(n+1)/xor(n+1, and(n, n+1))]` -/
def P5841651551671265597.Spec : Prop :=
  ∀ n, P5841651551671265597.a n = (A135013 (n + 1) : ℚ)

end A135013

/-! ## A135013.P14519242522965624372

`∑[A000265(n+1)]`
-/

namespace A135013.P14519242522965624372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P14519242522965624372

namespace A135013

/-- `∑[A000265(n+1)]` -/
def P14519242522965624372.Spec : Prop :=
  ∀ n, P14519242522965624372.a n = A135013 (n + 1)

end A135013

/-! ## A135013.P3067427313565953329

`∑[A153733(n)+1]`
-/

namespace A135013.P3067427313565953329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P3067427313565953329

namespace A135013

/-- `∑[A153733(n)+1]` -/
def P3067427313565953329.Spec : Prop :=
  ∀ n, P3067427313565953329.a n = A135013 (n + 1)

end A135013

/-! ## A135013.P10871851765425093599

`∑[2*A025480(n)+1]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A135013

/-- `∑[2*A025480(n)+1]` -/
def P10871851765425093599.Spec : Prop :=
  ∀ n, P10871851765425093599.a n = A135013 (n + 1)

theorem P10871851765425093599.correct : P10871851765425093599.Spec := by
  intro n
  simp only [A135013, Nat.add_sub_cancel]

end A135013

/-! ## A135013.P313579911068262742

`∑[A171435(2*(n+1))]`
-/

namespace A135013.P313579911068262742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P313579911068262742

namespace A135013

/-- `∑[A171435(2*(n+1))]` -/
def P313579911068262742.Spec : Prop :=
  ∀ n, P313579911068262742.a n = A135013 (n + 1)

end A135013

/-! ## A135013.P14516043401268642607

`∑[A302034(2*(n+1))]`
-/

namespace A135013.P14516043401268642607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P14516043401268642607

namespace A135013

/-- `∑[A302034(2*(n+1))]` -/
def P14516043401268642607.Spec : Prop :=
  ∀ n, P14516043401268642607.a n = A135013 (n + 1)

end A135013

/-! ## A135013.P16342687667593251292

`∑[A302044(2*(n+1))]`
-/

namespace A135013.P16342687667593251292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P16342687667593251292

namespace A135013

/-- `∑[A302044(2*(n+1))]` -/
def P16342687667593251292.Spec : Prop :=
  ∀ n, P16342687667593251292.a n = A135013 (n + 1)

end A135013

/-! ## A135013.P9866445749461591563

`∑[A166466(n+1)/3]`
-/

namespace A135013.P9866445749461591563
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166466 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P9866445749461591563

namespace A135013

/-- `∑[A166466(n+1)/3]` -/
def P9866445749461591563.Spec : Prop :=
  ∀ n, P9866445749461591563.a n = (A135013 (n + 1) : ℚ)

end A135013

/-! ## A135013.P1519809940102230415

`∑[2*A003602(n+1)-1]`
-/

namespace A135013.P1519809940102230415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003602 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P1519809940102230415

namespace A135013

/-- `∑[2*A003602(n+1)-1]` -/
def P1519809940102230415.Spec : Prop :=
  ∀ n, P1519809940102230415.a n = A135013 (n + 1)

end A135013

/-! ## A135013.P6508213326708846253

`∑[1-A331739(n+1)+n]`
-/

namespace A135013.P6508213326708846253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A331739 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P6508213326708846253

namespace A135013

/-- `∑[1-A331739(n+1)+n]` -/
def P6508213326708846253.Spec : Prop :=
  ∀ n, P6508213326708846253.a n = A135013 (n + 1)

end A135013

/-! ## A135013.P6838422876387243462

`∑[(n+1)/A006519(n+1)]`
-/

namespace A135013.P6838422876387243462
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006519 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P6838422876387243462

namespace A135013

/-- `∑[(n+1)/A006519(n+1)]` -/
def P6838422876387243462.Spec : Prop :=
  ∀ n, P6838422876387243462.a n = (A135013 (n + 1) : ℚ)

end A135013

/-!
# A135014: Intersection of A002378 and A135013.

The programs for A135014, there is no canonical definition to state claims against.
-/

/-! ## A135014.P6311486755020461689

`∩[A135013(n+1), n²+n]`
-/

namespace A135014.P6311486755020461689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135013 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A135014.P6311486755020461689

/-! ## A135014.P16218693962832557273

`∩[2*C(n+1, 2), A135013(n+2)]`
-/

namespace A135014.P16218693962832557273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135013 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135014.P16218693962832557273

/-! ## A135014.P12268628451243255617

`∩[2*C(n+1, 2), 2*A174989(n+1)-(n+1)]`
-/

namespace A135014.P12268628451243255617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174989 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135014.P12268628451243255617

/-! ## A135014.P2172648542479269533

`∩[A002378(n), A135013(n+1)]`
-/

namespace A135014.P2172648542479269533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135014.P2172648542479269533

/-! ## A135014.P5712178768875322896

`∩[2*A174989(n+1)-(n+1), A002378(n)]`
-/

namespace A135014.P5712178768875322896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174989 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135014.P5712178768875322896

/-!
# A135019: a(n) = -a(n-1) + 2*a(n-2) - a(n-3), with a(0) = 0, a(1) = 1, a(2) = -3.

The programs for A135019, the canonical program `A135019.P3349662854402200536` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135019 has offset 0).

The definition of A135019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135019.P2681867710040372904

`ogf((x-2x^2)/(1+x-2x^2+x^3))`
-/

namespace A135019.P2681867710040372904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2] [1, 1, -2, 1] n

end

end A135019.P2681867710040372904

namespace A135019

/-- `ogf((x-2x^2)/(1+x-2x^2+x^3))` -/
def P2681867710040372904.Spec : Prop :=
  ∀ n, P2681867710040372904.a n = A135019 n

end A135019

/-! ## A135019.P3349662854402200536

`A062157(n)*A141685(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135019

/-- `A062157(n)*A141685(n+1)` -/
def P3349662854402200536.Spec : Prop :=
  ∀ n, P3349662854402200536.a n = A135019 n

theorem P3349662854402200536.correct : P3349662854402200536.Spec := by
  intro n
  simp only [A135019]

end A135019

/-! ## A135019.P1589986069786267100

`(A014681(n)-n)*A141685(n+1)`
-/

namespace A135019.P1589986069786267100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014681 n - (n : ℤ)) * A141685 (n + 1)

end

end A135019.P1589986069786267100

namespace A135019

/-- `(A014681(n)-n)*A141685(n+1)` -/
def P1589986069786267100.Spec : Prop :=
  ∀ n, P1589986069786267100.a n = A135019 n

end A135019

/-! ## A135019.P10257478628888352399

`(A065190(n+1)-(n+1))*A141685(n+1)`
-/

namespace A135019.P10257478628888352399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065190 (n + 1) - (n + 1 : ℤ)) * A141685 (n + 1)

end

end A135019.P10257478628888352399

namespace A135019

/-- `(A065190(n+1)-(n+1))*A141685(n+1)` -/
def P10257478628888352399.Spec : Prop :=
  ∀ n, P10257478628888352399.a n = A135019 n

end A135019

/-! ## A135019.P11293276274688889203

`Δ[Δ[A142474(n+2)]]*A033999(n+1)`
-/

namespace A135019.P11293276274688889203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142474 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 (n + 1)

end

end A135019.P11293276274688889203

namespace A135019

/-- `Δ[Δ[A142474(n+2)]]*A033999(n+1)` -/
def P11293276274688889203.Spec : Prop :=
  ∀ n, P11293276274688889203.a n = A135019 n

end A135019

/-!
# A135020: Each natural number is followed by its reversal.

The programs for A135020, there is no canonical definition to state claims against.
-/

/-! ## A135020.P14437334769253359107

`A142150(n)+A004086(A152271(n))`
-/

namespace A135020.P14437334769253359107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A004086 (A152271 n).toNat

end

end A135020.P14437334769253359107

/-! ## A135020.P2024572001574476922

`A008619(n)-A056965(A152271(n))`
-/

namespace A135020.P2024572001574476922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A056965 (A152271 n).toNat

end

end A135020.P2024572001574476922

/-! ## A135020.P10056064741357404362

`A008619(n)-A056965(∑[A001057(n)])`
-/

namespace A135020.P10056064741357404362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A056965 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A135020.P10056064741357404362

/-! ## A135020.P12023186435188450223

`A004526(n)+1-A056965(A057979(n)+1)`
-/

namespace A135020.P12023186435188450223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + 1 - A056965 (A057979 n + 1).toNat

end

end A135020.P12023186435188450223

/-! ## A135020.P13938084681771124537

`A004086(A152271(n))*A152271(A004442(n))`
-/

namespace A135020.P13938084681771124537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A152271 n).toNat * A152271 (A004442 n).toNat

end

end A135020.P13938084681771124537

/-! ## A135020.P2793876457280713227

`A004086(A152271(n))*A152271(n+1)`
-/

namespace A135020.P2793876457280713227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A152271 n).toNat * A152271 (n + 1)

end

end A135020.P2793876457280713227

/-! ## A135020.P14951972349162735448

`A004086(A057979(n+2))*A057979(n+3)`
-/

namespace A135020.P14951972349162735448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A057979 (n + 2)).toNat * A057979 (n + 3)

end

end A135020.P14951972349162735448

/-! ## A135020.P6147286307075246213

`A004086(A174571(2*(n+1)))*A174571(2*(n+2))`
-/

namespace A135020.P6147286307075246213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A174571 (2 * (n + 1))).toNat * A174571 (2 * (n + 2))

end

end A135020.P6147286307075246213

/-!
# A135021: Triangle read by rows: T(n,r) = number of maximum r-uniform acyclic hypergraphs of order n and size n-r+1, 1 <= r <= n+1.

The programs for A135021, there is no canonical definition to state claims against.
-/

/-! ## A135021.P18281046227287643562

`A007318(n)^A368843(A051885(n))`
-/

namespace A135021.P18281046227287643562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A368843 (A051885 n).toNat : ℤ)

end

end A135021.P18281046227287643562

/-! ## A135021.P6225408631286430405

`A124800(n+1)^A124763(A263159(n))`
-/

namespace A135021.P6225408631286430405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124800 (n + 1) : ℚ) ^ (A124763 (A263159 n).toNat : ℤ)

end

end A135021.P6225408631286430405

/-! ## A135021.P10628641327801083279

`A370072(A292895(3*(n+1)))^A065658(n+2)`
-/

namespace A135021.P10628641327801083279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370072 (A292895 (3 * (n + 1))).toNat : ℚ) ^ (A065658 (n + 2) : ℤ)

end

end A135021.P10628641327801083279

/-!
# A135022: Define a sequence of binary words by w(1)=10 and w(n+1)=w(n)w(n)Reverse[w(n)]. Sequence gives the limiting word w(infinity).

The programs for A135022, the canonical program `A135022.P16509518047199090749` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135022 has offset 1).

The definition of A135022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135022.P488583193726451301

`1-char[Δ[lcm(2, n)]-((n+1)/3^val(n+1, 3))%3]`
-/

namespace A135022.P488583193726451301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A135022.P488583193726451301

namespace A135022

/-- `1-char[Δ[lcm(2, n)]-((n+1)/3^val(n+1, 3))%3]` -/
def P488583193726451301.Spec : Prop :=
  ∀ n, P488583193726451301.a n = A135022 (n + 1)

end A135022

/-! ## A135022.P16509518047199090749

`1-A118006(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A135022

/-- `1-A118006(n+1)` -/
def P16509518047199090749.Spec : Prop :=
  ∀ n, P16509518047199090749.a n = A135022 (n + 1)

theorem P16509518047199090749.correct : P16509518047199090749.Spec := by
  intro n
  simp only [A135022, Nat.add_sub_cancel]

end A135022

/-! ## A135022.P6735660147719385652

`Δ[A026202(n+1)]%2`
-/

namespace A135022.P6735660147719385652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A135022.P6735660147719385652

namespace A135022

/-- `Δ[A026202(n+1)]%2` -/
def P6735660147719385652.Spec : Prop :=
  ∀ n, P6735660147719385652.a n = A135022 (n + 1)

end A135022

/-! ## A135022.P11216759668845334166

`char[A116178(n)+2*n]`
-/

namespace A135022.P11216759668845334166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 n + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A135022.P11216759668845334166

namespace A135022

/-- `char[A116178(n)+2*n]` -/
def P11216759668845334166.Spec : Prop :=
  ∀ n, (P11216759668845334166.a n : ℤ) = A135022 (n + 1)

end A135022

/-! ## A135022.P5543597057742255639

`char[char[A138671(n)]+2*n]`
-/

namespace A135022.P5543597057742255639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138671 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A135022.P5543597057742255639

namespace A135022

/-- `char[char[A138671(n)]+2*n]` -/
def P5543597057742255639.Spec : Prop :=
  ∀ n, (P5543597057742255639.a n : ℤ) = A135022 (n + 1)

end A135022

/-! ## A135022.P6052267115439156498

`char[2*n+1-A136442(n)]`
-/

namespace A135022.P6052267115439156498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A136442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A135022.P6052267115439156498

namespace A135022

/-- `char[2*n+1-A136442(n)]` -/
def P6052267115439156498.Spec : Prop :=
  ∀ n, (P6052267115439156498.a n : ℤ) = A135022 (n + 1)

end A135022

/-! ## A135022.P13959029968985087530

`char[or(2*n, A080846(Δ[n²]))]`
-/

namespace A135022.P13959029968985087530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (A080846 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A135022.P13959029968985087530

namespace A135022

/-- `char[or(2*n, A080846(Δ[n²]))]` -/
def P13959029968985087530.Spec : Prop :=
  ∀ n, (P13959029968985087530.a n : ℤ) = A135022 (n + 1)

end A135022

/-! ## A135022.P8298114483710517405

`xor((n+1)%2, A080846(or(1, n)))`
-/

namespace A135022.P8298114483710517405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((n + 1) % 2 : ℕ) : ℤ) (A080846 (Nat.lor 1 n))

end

end A135022.P8298114483710517405

namespace A135022

/-- `xor((n+1)%2, A080846(or(1, n)))` -/
def P8298114483710517405.Spec : Prop :=
  ∀ n, P8298114483710517405.a n = A135022 (n + 1)

end A135022

/-! ## A135022.P16925378627960539263

`xor(and(1, n+1), A118006(or(1, n)))`
-/

namespace A135022.P16925378627960539263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.land 1 (n + 1) : ℤ) (A118006 (Nat.lor 1 n))

end

end A135022.P16925378627960539263

namespace A135022

/-- `xor(and(1, n+1), A118006(or(1, n)))` -/
def P16925378627960539263.Spec : Prop :=
  ∀ n, P16925378627960539263.a n = A135022 (n + 1)

end A135022

/-! ## A135022.P4408479685683037599

`char[A080846(2*n+1)+2*n]`
-/

namespace A135022.P4408479685683037599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (2 * n + 1) + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A135022.P4408479685683037599

namespace A135022

/-- `char[A080846(2*n+1)+2*n]` -/
def P4408479685683037599.Spec : Prop :=
  ∀ n, (P4408479685683037599.a n : ℤ) = A135022 (n + 1)

end A135022

/-! ## A135022.P5005317615184343379

`A137893(A272708(n))`
-/

namespace A135022.P5005317615184343379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (A272708 n).toNat

end

end A135022.P5005317615184343379

namespace A135022

/-- `A137893(A272708(n))` -/
def P5005317615184343379.Spec : Prop :=
  ∀ n, P5005317615184343379.a n = A135022 (n + 1)

end A135022

/-! ## A135022.P13417659434175021643

`A189673(A321220(n))`
-/

namespace A135022.P13417659434175021643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (A321220 n).toNat

end

end A135022.P13417659434175021643

namespace A135022

/-- `A189673(A321220(n))` -/
def P13417659434175021643.Spec : Prop :=
  ∀ n, P13417659434175021643.a n = A135022 (n + 1)

end A135022

/-! ## A135022.P3308270819111383888

`A137893(A043547(n+1))`
-/

namespace A135022.P3308270819111383888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (A043547 (n + 1)).toNat

end

end A135022.P3308270819111383888

namespace A135022

/-- `A137893(A043547(n+1))` -/
def P3308270819111383888.Spec : Prop :=
  ∀ n, P3308270819111383888.a n = A135022 (n + 1)

end A135022

/-! ## A135022.P8108883464357288850

`A189640(A059029(n+1))`
-/

namespace A135022.P8108883464357288850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (A059029 (n + 1)).toNat

end

end A135022.P8108883464357288850

namespace A135022

/-- `A189640(A059029(n+1))` -/
def P8108883464357288850.Spec : Prop :=
  ∀ n, P8108883464357288850.a n = A135022 (n + 1)

end A135022

/-! ## A135022.P8662949534963468001

`A137893(A140265(n+1))`
-/

namespace A135022.P8662949534963468001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (A140265 (n + 1)).toNat

end

end A135022.P8662949534963468001

namespace A135022

/-- `A137893(A140265(n+1))` -/
def P8662949534963468001.Spec : Prop :=
  ∀ n, P8662949534963468001.a n = A135022 (n + 1)

end A135022

/-! ## A135022.P2787930709566742262

`xor(A118006(n+1), A361338(n))`
-/

namespace A135022.P2787930709566742262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A118006 (n + 1)) (A361338 n)

end

end A135022.P2787930709566742262

namespace A135022

/-- `xor(A118006(n+1), A361338(n))` -/
def P2787930709566742262.Spec : Prop :=
  ∀ n, P2787930709566742262.a n = A135022 (n + 1)

end A135022

/-! ## A135022.P5300584071924095286

`A000045(and(1, Δ[A026202(n+1)]))`
-/

namespace A135022.P5300584071924095286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 (f1 (n + 1) - f1 n)).toNat

end

end A135022.P5300584071924095286

namespace A135022

/-- `A000045(and(1, Δ[A026202(n+1)]))` -/
def P5300584071924095286.Spec : Prop :=
  ∀ n, P5300584071924095286.a n = A135022 (n + 1)

end A135022

/-! ## A135022.P3558315211443413859

`and(1, Δ[A026202(n+1)])^A000010(n+1)`
-/

namespace A135022.P3558315211443413859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026202 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 1 (f1 (n + 1) - f1 n) : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A135022.P3558315211443413859

namespace A135022

/-- `and(1, Δ[A026202(n+1)])^A000010(n+1)` -/
def P3558315211443413859.Spec : Prop :=
  ∀ n, P3558315211443413859.a n = (A135022 (n + 1) : ℚ)

end A135022

/-! ## A135022.P9460502111885948033

`A116178(A305496(n+1)+A118006(n+1))`
-/

namespace A135022.P9460502111885948033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 (A305496 (n + 1) + A118006 (n + 1)).toNat

end

end A135022.P9460502111885948033

namespace A135022

/-- `A116178(A305496(n+1)+A118006(n+1))` -/
def P9460502111885948033.Spec : Prop :=
  ∀ n, P9460502111885948033.a n = A135022 (n + 1)

end A135022

/-!
# A135023: (NextPrime[6*n] - PreviousPrime[6*n])/2.

The programs for A135023, the canonical program `A135023.P1620752606866019315` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135023 has offset 1).

The definition of A135023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135023.P4848896836249750912

`A033559(6*(n+1))`
-/

namespace A135023.P4848896836249750912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033559 (6 * (n + 1))

end

end A135023.P4848896836249750912

namespace A135023

/-- `A033559(6*(n+1))` -/
def P4848896836249750912.Spec : Prop :=
  ∀ n, P4848896836249750912.a n = A135023 (n + 1)

end A135023

/-! ## A135023.P13747656529832927403

`A060267(3*(n+1))/2`
-/

namespace A135023.P13747656529832927403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060267 (3 * (n + 1)) : ℚ) / 2

end

end A135023.P13747656529832927403

namespace A135023

/-- `A060267(3*(n+1))/2` -/
def P13747656529832927403.Spec : Prop :=
  ∀ n, P13747656529832927403.a n = (A135023 (n + 1) : ℚ)

end A135023

/-! ## A135023.P3399499555279076326

`A013633(6*(n+1))/2`
-/

namespace A135023.P3399499555279076326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013633 (6 * (n + 1)) : ℚ) / 2

end

end A135023.P3399499555279076326

namespace A135023

/-- `A013633(6*(n+1))/2` -/
def P3399499555279076326.Spec : Prop :=
  ∀ n, P3399499555279076326.a n = (A135023 (n + 1) : ℚ)

end A135023

/-! ## A135023.P5120966632133632047

`A166597(6*(n+1))/2`
-/

namespace A135023.P5120966632133632047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166597 (6 * (n + 1)) : ℚ) / 2

end

end A135023.P5120966632133632047

namespace A135023

/-- `A166597(6*(n+1))/2` -/
def P5120966632133632047.Spec : Prop :=
  ∀ n, P5120966632133632047.a n = (A135023 (n + 1) : ℚ)

end A135023

/-! ## A135023.P1620752606866019315

`A028334(A100637(2*n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A135023

/-- `A028334(A100637(2*n+1))` -/
def P1620752606866019315.Spec : Prop :=
  ∀ n, P1620752606866019315.a n = A135023 (n + 1)

theorem P1620752606866019315.correct : P1620752606866019315.Spec := by
  intro n
  simp only [A135023, Nat.add_sub_cancel]

end A135023

/-! ## A135023.P4051712876730511163

`A004525(A060267(3*(n+1)))`
-/

namespace A135023.P4051712876730511163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A060267 (3 * (n + 1))).toNat

end

end A135023.P4051712876730511163

namespace A135023

/-- `A004525(A060267(3*(n+1)))` -/
def P4051712876730511163.Spec : Prop :=
  ∀ n, P4051712876730511163.a n = A135023 (n + 1)

end A135023

/-! ## A135023.P3297774127783881515

`A072680(A008458(n+1))/2`
-/

namespace A135023.P3297774127783881515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072680 (A008458 (n + 1)).toNat : ℚ) / 2

end

end A135023.P3297774127783881515

namespace A135023

/-- `A072680(A008458(n+1))/2` -/
def P3297774127783881515.Spec : Prop :=
  ∀ n, P3297774127783881515.a n = (A135023 (n + 1) : ℚ)

end A135023

/-! ## A135023.P5025728371975194846

`A001223(A000720(6*(n+1)))/2`
-/

namespace A135023.P5025728371975194846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (A000720 (6 * (n + 1))).toNat : ℚ) / 2

end

end A135023.P5025728371975194846

namespace A135023

/-- `A001223(A000720(6*(n+1)))/2` -/
def P5025728371975194846.Spec : Prop :=
  ∀ n, P5025728371975194846.a n = (A135023 (n + 1) : ℚ)

end A135023

/-! ## A135023.P10110089233962813809

`A028334(A099801(2*n+n+2))`
-/

namespace A135023.P10110089233962813809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (A099801 (2 * n + (n + 2))).toNat

end

end A135023.P10110089233962813809

namespace A135023

/-- `A028334(A099801(2*n+n+2))` -/
def P10110089233962813809.Spec : Prop :=
  ∀ n, P10110089233962813809.a n = A135023 (n + 1)

end A135023

/-!
# A135025: Let b(1) = 2; and for n>= 2, if b(n-1) < prime(n) then b(n) = b(n-1) + prime(n) otherwise b(n) = b(n-1) - prime(n). The sequence gives the indices n where b(n-1) < b(n) < b(n+1).

The programs for A135025, there is no canonical definition to state claims against.
-/

/-! ## A135025.P14947989891135529419

`∑[A324783(n)]+1`
-/

namespace A135025.P14947989891135529419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135025.P14947989891135529419

/-! ## A135025.P4423264949112960885

`A309226(n+1)+1`
-/

namespace A135025.P4423264949112960885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309226 (n + 1) + 1

end

end A135025.P4423264949112960885

/-! ## A135025.P9763344248812331839

`1-∑[-Δ[A309226(n)]]`
-/

namespace A135025.P9763344248812331839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309226 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135025.P9763344248812331839

/-! ## A135025.P7861803102995989269

`A324783(n)+a(A023443(n))` with `a(0)=4`
-/

namespace A135025.P7861803102995989269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A324783 n + a (A023443 n).toNat

end

end A135025.P7861803102995989269

/-! ## A135025.P10962992246301251691

`Δ[∑[A309226(n)]-A001489(n)]`
-/

namespace A135025.P10962992246301251691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309226 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135025.P10962992246301251691

/-!
# A135026: Values B(n) associated with the stationary terms listed in A135025.

The programs for A135026, there is no canonical definition to state claims against.
-/

/-! ## A135026.P18065050147154508102

`A324782(n+1)+A145842(n+1)`
-/

namespace A135026.P18065050147154508102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324782 (n + 1) + A145842 (n + 1)

end

end A135026.P18065050147154508102

/-! ## A135026.P7408500961929144582

`A008348(A135025(n+1))`
-/

namespace A135026.P7408500961929144582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 (A135025 (n + 1)).toNat

end

end A135026.P7408500961929144582

/-! ## A135026.P8508061927137941333

`A008348(∑[A324783(n)]+1)`
-/

namespace A135026.P8508061927137941333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A135026.P8508061927137941333

/-! ## A135026.P10033231285767587279

`A008348(A309226(n+1)+1)`
-/

namespace A135026.P10033231285767587279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 (A309226 (n + 1) + 1).toNat

end

end A135026.P10033231285767587279

/-! ## A135026.P10708066803342589727

`A022836(A309226(n+1)+1)-1`
-/

namespace A135026.P10708066803342589727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022836 (A309226 (n + 1) + 1).toNat - 1

end

end A135026.P10708066803342589727

/-!
# A135027: Numbers k such that the sum of the digits of k^2 is 10. Multiples of 10 are omitted.

The programs for A135027, there is no canonical definition to state claims against.
-/

/-! ## A135027.P11835322718948341331

`record[A004151(A262713(n+1))]`
-/

namespace A135027.P11835322718948341331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A262713 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135027.P11835322718948341331

/-! ## A135027.P13791977925756314928

`filter[A262713(n+1), A168046(#)]`
-/

namespace A135027.P13791977925756314928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A135027.P13791977925756314928

/-! ## A135027.P14124742311427409828

`filter[A262713(n+1), A168184(#)]`
-/

namespace A135027.P14124742311427409828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A135027.P14124742311427409828

/-! ## A135027.P7110545892546158576

`eq[A040790(n)+9, A004159(n)]`
-/

namespace A135027.P7110545892546158576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 n + 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135027.P7110545892546158576

/-! ## A135027.P2982800000078740255

`filter[A262713(n+1), A209929(#)]`
-/

namespace A135027.P2982800000078740255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A135027.P2982800000078740255

/-!
# A135029: Numbers k such that k and k^2 both have digit sum 10. Multiples of 10 are omitted.

The programs for A135029, there is no canonical definition to state claims against.
-/

/-! ## A135029.P17674303993429885154

`∩[A135027(n+1), A325451(n+1)]`
-/

namespace A135029.P17674303993429885154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135029.P17674303993429885154

/-! ## A135029.P751796121376467231

`∩[A052223(n+2)+1, A058369(n+2)]`
-/

namespace A135029.P751796121376467231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052223 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135029.P751796121376467231

/-! ## A135029.P16230174744090172774

`A135027(A248180(n)+A135114(n+1))`
-/

namespace A135029.P16230174744090172774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135027 (A248180 n + A135114 (n + 1)).toNat

end

end A135029.P16230174744090172774

/-!
# A135030: Generalized Fibonacci numbers: a(n) = 6*a(n-1) + 2*a(n-2).

The programs for A135030, the canonical program `A135030.P265761760394196871` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135030 has offset 0).

The definition of A135030 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+2*a(n-2)` (program `A135030.P265761760394196871`, by `A135030.P265761760394196871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135030.P16924484826635091671

`2*(3*a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A135030.P16924484826635091671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (3 * a (n - 1) + a (n - 2))

end

end A135030.P16924484826635091671

namespace A135030

/-- `2*(3*a(n-1)+a(n-2))` -/
def P16924484826635091671.Spec : Prop :=
  ∀ n, (P16924484826635091671.a n : ℤ) = A135030 n

theorem P16924484826635091671.correct : P16924484826635091671.Spec := by
  intro n
  simp only [A135030, Nat.add_sub_cancel, A135030.P16924484826635091671.a, A135030.P265761760394196871.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135030

/-! ## A135030.P265761760394196871

`6*a(n-1)+2*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135030

/-- `6*a(n-1)+2*a(n-2)` -/
def P265761760394196871.Spec : Prop :=
  ∀ n, (P265761760394196871.a n : ℤ) = A135030 n

theorem P265761760394196871.correct : P265761760394196871.Spec := by
  intro n
  simp only [A135030]

end A135030

/-! ## A135030.P12680273022917871700

`ogf(x/(1-6x-2x^2))`
-/

namespace A135030.P12680273022917871700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -6, -2] n

end

end A135030.P12680273022917871700

namespace A135030

/-- `ogf(x/(1-6x-2x^2))` -/
def P12680273022917871700.Spec : Prop :=
  ∀ n, P12680273022917871700.a n = A135030 n

end A135030

/-! ## A135030.P14370936512529272933

`2*(3-(3*(1-a(n-1))-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A135030.P14370936512529272933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (3 - (3 * (1 - a (n - 1)) - a (n - 2)))

end

end A135030.P14370936512529272933

namespace A135030

/-- `2*(3-(3*(1-a(n-1))-a(n-2)))` -/
def P14370936512529272933.Spec : Prop :=
  ∀ n, P14370936512529272933.a n = A135030 n

end A135030

/-! ## A135030.P2309796998926271800

`A180029(n)-A254660(n)`
-/

namespace A135030.P2309796998926271800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180029 n - A254660 n

end

end A135030.P2309796998926271800

namespace A135030

/-- `A180029(n)-A254660(n)` -/
def P2309796998926271800.Spec : Prop :=
  ∀ n, P2309796998926271800.a n = A135030 n

end A135030

/-! ## A135030.P6524167307656500296

`A180029(A028310(n))%A254660(n)`
-/

namespace A135030.P6524167307656500296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180029 (A028310 n).toNat) (A254660 n)

end

end A135030.P6524167307656500296

namespace A135030

/-- `A180029(A028310(n))%A254660(n)` -/
def P6524167307656500296.Spec : Prop :=
  ∀ n, P6524167307656500296.a n = A135030 n

end A135030

/-! ## A135030.P8967940762281526349

`sqrt(A099276(n))*sqrt(A131577(n))`
-/

namespace A135030.P8967940762281526349
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A099276 n : ℝ) * Real.sqrt (A131577 n : ℝ)

end

end A135030.P8967940762281526349

namespace A135030

/-- `sqrt(A099276(n))*sqrt(A131577(n))` -/
def P8967940762281526349.Spec : Prop :=
  ∀ n, P8967940762281526349.a n = (A135030 n : ℝ)

end A135030

/-! ## A135030.P7859551642535162279

`sqrt(A099276(n)*A131577(n))`
-/

namespace A135030.P7859551642535162279
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A099276 n * A131577 n : ℝ)

end

end A135030.P7859551642535162279

namespace A135030

/-- `sqrt(A099276(n)*A131577(n))` -/
def P7859551642535162279.Spec : Prop :=
  ∀ n, P7859551642535162279.a n = (A135030 n : ℝ)

end A135030

/-!
# A135032: a(n) = 6*a(n-1) + 4*a(n-2).

The programs for A135032, the canonical program `A135032.P12529490272452503687` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135032 has offset 0).

The definition of A135032 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+4*a(n-2)` (program `A135032.P12529490272452503687`, by `A135032.P12529490272452503687.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135032.P12529490272452503687

`6*a(n-1)+4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135032

/-- `6*a(n-1)+4*a(n-2)` -/
def P12529490272452503687.Spec : Prop :=
  ∀ n, (P12529490272452503687.a n : ℤ) = A135032 n

theorem P12529490272452503687.correct : P12529490272452503687.Spec := by
  intro n
  simp only [A135032]

end A135032

/-! ## A135032.P14042278032469162353

`ogf(x/(1-6x-4x^2))`
-/

namespace A135032.P14042278032469162353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -6, -4] n

end

end A135032.P14042278032469162353

namespace A135032

/-- `ogf(x/(1-6x-4x^2))` -/
def P14042278032469162353.Spec : Prop :=
  ∀ n, P14042278032469162353.a n = A135032 n

end A135032

/-! ## A135032.P9226943239066937274

`2^(n-1)*A006190(n)`
-/

namespace A135032.P9226943239066937274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A006190 n : ℚ)

end

end A135032.P9226943239066937274

namespace A135032

/-- `2^(n-1)*A006190(n)` -/
def P9226943239066937274.Spec : Prop :=
  ∀ n, P9226943239066937274.a n = (A135032 n : ℚ)

end A135032

/-! ## A135032.P13283574834606402533

`2^(n-1)*A249579(4*n)`
-/

namespace A135032.P13283574834606402533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A249579 (4 * n) : ℚ)

end

end A135032.P13283574834606402533

namespace A135032

/-- `2^(n-1)*A249579(4*n)` -/
def P13283574834606402533.Spec : Prop :=
  ∀ n, P13283574834606402533.a n = (A135032 n : ℚ)

end A135032

/-! ## A135032.P17252583646749679941

`A006190(n)*A011782(n)`
-/

namespace A135032.P17252583646749679941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 n * A011782 n

end

end A135032.P17252583646749679941

namespace A135032

/-- `A006190(n)*A011782(n)` -/
def P17252583646749679941.Spec : Prop :=
  ∀ n, P17252583646749679941.a n = A135032 n

end A135032

/-! ## A135032.P1710407287625933974

`A006190(n)*A131577(n)`
-/

namespace A135032.P1710407287625933974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 n * A131577 n

end

end A135032.P1710407287625933974

namespace A135032

/-- `A006190(n)*A131577(n)` -/
def P1710407287625933974.Spec : Prop :=
  ∀ n, P1710407287625933974.a n = A135032 n

end A135032

/-! ## A135032.P2570247279007737770

`A011782(n)*A305889(2*n)`
-/

namespace A135032.P2570247279007737770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A305889 (2 * n)

end

end A135032.P2570247279007737770

namespace A135032

/-- `A011782(n)*A305889(2*n)` -/
def P2570247279007737770.Spec : Prop :=
  ∀ n, P2570247279007737770.a n = A135032 n

end A135032

/-! ## A135032.P10773223438018973597

`A131577(n)*A305889(2*n)`
-/

namespace A135032.P10773223438018973597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A305889 (2 * n)

end

end A135032.P10773223438018973597

namespace A135032

/-- `A131577(n)*A305889(2*n)` -/
def P10773223438018973597.Spec : Prop :=
  ∀ n, P10773223438018973597.a n = A135032 n

end A135032

/-! ## A135032.P6101528504335641015

`A249579(4*n)/2*A000079(n)`
-/

namespace A135032.P6101528504335641015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249579 (4 * n) : ℚ) / 2 * (A000079 n : ℚ)

end

end A135032.P6101528504335641015

namespace A135032

/-- `A249579(4*n)/2*A000079(n)` -/
def P6101528504335641015.Spec : Prop :=
  ∀ n, P6101528504335641015.a n = (A135032 n : ℚ)

end A135032

/-! ## A135032.P3596699934990656192

`A006190(n)*A016116(A004273(n))`
-/

namespace A135032.P3596699934990656192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 n * A016116 (A004273 n).toNat

end

end A135032.P3596699934990656192

namespace A135032

/-- `A006190(n)*A016116(A004273(n))` -/
def P3596699934990656192.Spec : Prop :=
  ∀ n, P3596699934990656192.a n = A135032 n

end A135032

/-!
# A135033: Period 5: repeat [2, 4, 6, 8, 0].

The programs for A135033, the canonical program `A135033.P10123583613989861320` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135033 has offset 0).

The definition of A135033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135033.P10123583613989861320

`2*A010874(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135033

/-- `2*A010874(n+1)` -/
def P10123583613989861320.Spec : Prop :=
  ∀ n, P10123583613989861320.a n = A135033 n

theorem P10123583613989861320.correct : P10123583613989861320.Spec := by
  intro n
  simp only [A135033]

end A135033

/-!
# A135034: Positive integers n repeated 2n-1 times, with a leading a(0) = 0. Also: ceiling of square root of n.

The programs for A135034, the canonical program `A135034.P11734383480113232451` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135034 has offset 0).

The definition of A135034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135034.P11734383480113232451

`ceil(sqrt(n))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135034

/-- `ceil(sqrt(n))` -/
def P11734383480113232451.Spec : Prop :=
  ∀ n, P11734383480113232451.a n = A135034 n

theorem P11734383480113232451.correct : P11734383480113232451.Spec := by
  intro n
  simp only [A135034]

end A135034

/-! ## A135034.P6383798123220633216

`∑[and(1, char[n²+1])]`
-/

namespace A135034.P6383798123220633216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135034.P6383798123220633216

namespace A135034

/-- `∑[and(1, char[n²+1])]` -/
def P6383798123220633216.Spec : Prop :=
  ∀ n, (P6383798123220633216.a n : ℤ) = A135034 n

end A135034

/-! ## A135034.P942863406162891811

`∑[char[xor(1, n)²+1]]`
-/

namespace A135034.P942863406162891811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2 + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135034.P942863406162891811

namespace A135034

/-- `∑[char[xor(1, n)²+1]]` -/
def P942863406162891811.Spec : Prop :=
  ∀ n, (P942863406162891811.a n : ℤ) = A135034 n

end A135034

/-! ## A135034.P8053838461272768334

`∑[char[or(2, n²)-1]]`
-/

namespace A135034.P8053838461272768334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (n ^ 2) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135034.P8053838461272768334

namespace A135034

/-- `∑[char[or(2, n²)-1]]` -/
def P8053838461272768334.Spec : Prop :=
  ∀ n, (P8053838461272768334.a n : ℤ) = A135034 n

end A135034

/-! ## A135034.P12631012198439627574

`∑[char[xor(2, n²)-1]]`
-/

namespace A135034.P12631012198439627574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (n ^ 2) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135034.P12631012198439627574

namespace A135034

/-- `∑[char[xor(2, n²)-1]]` -/
def P12631012198439627574.Spec : Prop :=
  ∀ n, (P12631012198439627574.a n : ℤ) = A135034 n

end A135034

/-! ## A135034.P15938175614816253212

`round(sqrt(comp[record[(n-1)²]]))`
-/

namespace A135034.P15938175614816253212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℝ))

end

end A135034.P15938175614816253212

namespace A135034

/-- `round(sqrt(comp[record[(n-1)²]]))` -/
def P15938175614816253212.Spec : Prop :=
  ∀ n, P15938175614816253212.a n = A135034 n

end A135034

/-! ## A135034.P1798758159583571811

`round(sqrt(a(n-1)+n))` with `a(0)=0`
-/

namespace A135034.P1798758159583571811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (a (n - 1) + (n : ℤ) : ℝ))

end

end A135034.P1798758159583571811

namespace A135034

/-- `round(sqrt(a(n-1)+n))` -/
def P1798758159583571811.Spec : Prop :=
  ∀ n, P1798758159583571811.a n = A135034 n

end A135034

/-! ## A135034.P9325277084514289817

`comp[or(1, n²+n)]-n`
-/

namespace A135034.P9325277084514289817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2 + n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A135034.P9325277084514289817

namespace A135034

/-- `comp[or(1, n²+n)]-n` -/
def P9325277084514289817.Spec : Prop :=
  ∀ n, P9325277084514289817.a n = A135034 n

end A135034

/-! ## A135034.P11245278240908400365

`comp[xor(1, n²+n)]-n`
-/

namespace A135034.P11245278240908400365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2 + n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A135034.P11245278240908400365

namespace A135034

/-- `comp[xor(1, n²+n)]-n` -/
def P11245278240908400365.Spec : Prop :=
  ∀ n, P11245278240908400365.a n = A135034 n

end A135034

/-! ## A135034.P2250337347470006041

`comp[∑[floor(2/acot(n))]]-n`
-/

namespace A135034.P2250337347470006041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A135034.P2250337347470006041

namespace A135034

/-- `comp[∑[floor(2/acot(n))]]-n` -/
def P2250337347470006041.Spec : Prop :=
  ∀ n, P2250337347470006041.a n = A135034 n

end A135034

/-! ## A135034.P3248154657698119802

`ceil(n^(1/2))%(n+1)`
-/

namespace A135034.P3248154657698119802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌉ (n + 1 : ℤ)

end

end A135034.P3248154657698119802

namespace A135034

/-- `ceil(n^(1/2))%(n+1)` -/
def P3248154657698119802.Spec : Prop :=
  ∀ n, P3248154657698119802.a n = A135034 n

end A135034

/-! ## A135034.P4137918892704517367

`a(floor(sqrt(n-1))²)+1` with `a(0)=0`
-/

namespace A135034.P4137918892704517367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.sqrt ((n : ℤ) - 1) ^ 2).toNat + 1

end

end A135034.P4137918892704517367

namespace A135034

/-- `a(floor(sqrt(n-1))²)+1` -/
def P4137918892704517367.Spec : Prop :=
  ∀ n, (P4137918892704517367.a n : ℤ) = A135034 n

end A135034

/-! ## A135034.P2657850045364995525

`comp[lcm(n, n+1)+1]-n`
-/

namespace A135034.P2657850045364995525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A135034.P2657850045364995525

namespace A135034

/-- `comp[lcm(n, n+1)+1]-n` -/
def P2657850045364995525.Spec : Prop :=
  ∀ n, P2657850045364995525.a n = A135034 n

end A135034

/-! ## A135034.P8902462358287718036

`∑[char[(n%(n+1))²+1]]`
-/

namespace A135034.P8902462358287718036
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % (n + 1)) ^ 2 + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135034.P8902462358287718036

namespace A135034

/-- `∑[char[(n%(n+1))²+1]]` -/
def P8902462358287718036.Spec : Prop :=
  ∀ n, (P8902462358287718036.a n : ℤ) = A135034 n

end A135034

/-! ## A135034.P7099693628188083641

`round(sqrt(comp[or(1, n*(n+2))]))`
-/

namespace A135034.P7099693628188083641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ))

end

end A135034.P7099693628188083641

namespace A135034

/-- `round(sqrt(comp[or(1, n*(n+2))]))` -/
def P7099693628188083641.Spec : Prop :=
  ∀ n, P7099693628188083641.a n = A135034 n

end A135034

/-! ## A135034.P12863777460394193260

`∑[ceil(sin(char[(1-n)²+1]))]`
-/

namespace A135034.P12863777460394193260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135034.P12863777460394193260

namespace A135034

/-- `∑[ceil(sin(char[(1-n)²+1]))]` -/
def P12863777460394193260.Spec : Prop :=
  ∀ n, P12863777460394193260.a n = A135034 n

end A135034

/-! ## A135034.P17629130803432872303

`comp[xor(n, -1)²-n]-n`
-/

namespace A135034.P17629130803432872303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) ^ 2 - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A135034.P17629130803432872303

namespace A135034

/-- `comp[xor(n, -1)²-n]-n` -/
def P17629130803432872303.Spec : Prop :=
  ∀ n, P17629130803432872303.a n = A135034 n

end A135034

/-! ## A135034.P6951879910483823410

`∑[char[gcd(n, n+1)+n²]]`
-/

namespace A135034.P6951879910483823410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) + n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135034.P6951879910483823410

namespace A135034

/-- `∑[char[gcd(n, n+1)+n²]]` -/
def P6951879910483823410.Spec : Prop :=
  ∀ n, (P6951879910483823410.a n : ℤ) = A135034 n

end A135034

/-! ## A135034.P4025602543774674125

`∑[char[record[(n+1)*char[n²]]]]`
-/

namespace A135034.P4025602543774674125
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f4 j = n then 1 else 0)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135034.P4025602543774674125

namespace A135034

/-- `∑[char[record[(n+1)*char[n²]]]]` -/
def P4025602543774674125.Spec : Prop :=
  ∀ n, (P4025602543774674125.a n : ℤ) = A135034 n

end A135034

/-! ## A135034.P1776650894959408432

`∑[char[∑[a(n-1)+2]]]` with `a(0)=1, a(1)=1`
-/

namespace A135034.P1776650894959408432
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135034.P1776650894959408432

namespace A135034

/-- `∑[char[∑[a(n-1)+2]]]` -/
def P1776650894959408432.Spec : Prop :=
  ∀ n, (P1776650894959408432.a n : ℤ) = A135034 n

end A135034

/-!
# A135035: Binomial transform of abs(A134967).

The programs for A135035, the canonical program `A135035.P17855894899510383413` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135035 has offset 0).

The definition of A135035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135035.P17855894899510383413

`A132402(n)-A038505(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135035

/-- `A132402(n)-A038505(n)` -/
def P17855894899510383413.Spec : Prop :=
  ∀ n, P17855894899510383413.a n = A135035 n

theorem P17855894899510383413.correct : P17855894899510383413.Spec := by
  intro n
  simp only [A135035]

end A135035

/-! ## A135035.P8204124603083203348

`∑[A109975(n)-A038505(n)]`
-/

namespace A135035.P8204124603083203348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 n - A038505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135035.P8204124603083203348

namespace A135035

/-- `∑[A109975(n)-A038505(n)]` -/
def P8204124603083203348.Spec : Prop :=
  ∀ n, P8204124603083203348.a n = A135035 n

end A135035

/-! ## A135035.P4312236537583211610

`∑[A217988(n)-A139756(n)]`
-/

namespace A135035.P4312236537583211610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217988 n - A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135035.P4312236537583211610

namespace A135035

/-- `∑[A217988(n)-A139756(n)]` -/
def P4312236537583211610.Spec : Prop :=
  ∀ n, P4312236537583211610.a n = A135035 n

end A135035

/-! ## A135035.P6961344702511149271

`A323225(n)+Δ[A135360(n)]`
-/

namespace A135035.P6961344702511149271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323225 n + (f1 (n + 1) - f1 n)

end

end A135035.P6961344702511149271

namespace A135035

/-- `A323225(n)+Δ[A135360(n)]` -/
def P6961344702511149271.Spec : Prop :=
  ∀ n, P6961344702511149271.a n = A135035 n

end A135035

/-! ## A135035.P12677405086395848641

`A132402(n)-Δ[A000749(n)]`
-/

namespace A135035.P12677405086395848641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132402 n - (f1 (n + 1) - f1 n)

end

end A135035.P12677405086395848641

namespace A135035

/-- `A132402(n)-Δ[A000749(n)]` -/
def P12677405086395848641.Spec : Prop :=
  ∀ n, P12677405086395848641.a n = A135035 n

end A135035

/-! ## A135035.P16459866168618792070

`A045891(n+1)-A000749(n+1)`
-/

namespace A135035.P16459866168618792070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 1) - A000749 (n + 1)

end

end A135035.P16459866168618792070

namespace A135035

/-- `A045891(n+1)-A000749(n+1)` -/
def P16459866168618792070.Spec : Prop :=
  ∀ n, P16459866168618792070.a n = A135035 n

end A135035

/-! ## A135035.P990524203652036668

`A038503(n+1)+A323225(n)+A038504(n)`
-/

namespace A135035.P990524203652036668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (n + 1) + (A323225 n + A038504 n)

end

end A135035.P990524203652036668

namespace A135035

/-- `A038503(n+1)+A323225(n)+A038504(n)` -/
def P990524203652036668.Spec : Prop :=
  ∀ n, P990524203652036668.a n = A135035 n

end A135035

/-! ## A135035.P5228458333804262694

`A339252(n)-A321959(n)`
-/

namespace A135035.P5228458333804262694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339252 n - A321959 n

end

end A135035.P5228458333804262694

namespace A135035

/-- `A339252(n)-A321959(n)` -/
def P5228458333804262694.Spec : Prop :=
  ∀ n, P5228458333804262694.a n = A135035 n

end A135035

/-! ## A135035.P17210502717740645637

`A038504(n)+Δ[A323225(n)]`
-/

namespace A135035.P17210502717740645637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n + (f1 (n + 1) - f1 n)

end

end A135035.P17210502717740645637

namespace A135035

/-- `A038504(n)+Δ[A323225(n)]` -/
def P17210502717740645637.Spec : Prop :=
  ∀ n, P17210502717740645637.a n = A135035 n

end A135035

/-! ## A135035.P3659647663227805111

`Δ[A323225(n)+A038505(n)]`
-/

namespace A135035.P3659647663227805111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323225 n + A038505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135035.P3659647663227805111

namespace A135035

/-- `Δ[A323225(n)+A038505(n)]` -/
def P3659647663227805111.Spec : Prop :=
  ∀ n, P3659647663227805111.a n = A135035 n

end A135035

/-! ## A135035.P8484215613100318165

`A323225(n+1)-A139756(n)`
-/

namespace A135035.P8484215613100318165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323225 (n + 1) - A139756 n

end

end A135035.P8484215613100318165

namespace A135035

/-- `A323225(n+1)-A139756(n)` -/
def P8484215613100318165.Spec : Prop :=
  ∀ n, P8484215613100318165.a n = A135035 n

end A135035

/-! ## A135035.P6742228266439916909

`Δ[A045623(n)]-A000749(n+1)`
-/

namespace A135035.P6742228266439916909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000749 (n + 1)

end

end A135035.P6742228266439916909

namespace A135035

/-- `Δ[A045623(n)]-A000749(n+1)` -/
def P6742228266439916909.Spec : Prop :=
  ∀ n, P6742228266439916909.a n = A135035 n

end A135035

/-! ## A135035.P3675292317530493512

`Δ[A045623(n)-A000749(n)]-A000749(n)`
-/

namespace A135035.P3675292317530493512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A000749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000749 n

end

end A135035.P3675292317530493512

namespace A135035

/-- `Δ[A045623(n)-A000749(n)]-A000749(n)` -/
def P3675292317530493512.Spec : Prop :=
  ∀ n, P3675292317530493512.a n = A135035 n

end A135035

/-! ## A135035.P16921731020093947209

`A323225(n+1)+A038504(n)-A323225(n)`
-/

namespace A135035.P16921731020093947209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323225 (n + 1) + (A038504 n - A323225 n)

end

end A135035.P16921731020093947209

namespace A135035

/-- `A323225(n+1)+A038504(n)-A323225(n)` -/
def P16921731020093947209.Spec : Prop :=
  ∀ n, P16921731020093947209.a n = A135035 n

end A135035

/-! ## A135035.P15938855788051860863

`A045623(n+1)-(A045623(n)+A000749(n+1))`
-/

namespace A135035.P15938855788051860863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (n + 1) - (A045623 n + A000749 (n + 1))

end

end A135035.P15938855788051860863

namespace A135035

/-- `A045623(n+1)-(A045623(n)+A000749(n+1))` -/
def P15938855788051860863.Spec : Prop :=
  ∀ n, P15938855788051860863.a n = A135035 n

end A135035

/-!
# A135036: Sums of the products of n consecutive pairs of numbers.

The programs for A135036, the canonical program `A135036.P12580897130464135907` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135036 has offset 1).

The definition of A135036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135036.P9908753051680567104

`(n+1)*n*(4*(n+1)+1)/3`
-/

namespace A135036.P9908753051680567104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n : ℚ) * ((4 * (n + 1) + 1 : ℚ) / 3))

end

end A135036.P9908753051680567104

namespace A135036

/-- `(n+1)*n*(4*(n+1)+1)/3` -/
def P9908753051680567104.Spec : Prop :=
  ∀ n, P9908753051680567104.a n = (A135036 (n + 1) : ℚ)

theorem P9908753051680567104.correct : P9908753051680567104.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A135036, Nat.add_sub_cancel, A135036.P9908753051680567104.a, A135036.P12580897130464135907.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A135036, Nat.add_sub_cancel, A135036.P9908753051680567104.a, A135036.P12580897130464135907.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A135036

/-! ## A135036.P12580897130464135907

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=6, a(2)=26, a(3)=68`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135036

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P12580897130464135907.Spec : Prop :=
  ∀ n, P12580897130464135907.a n = A135036 (n + 1)

theorem P12580897130464135907.correct : P12580897130464135907.Spec := by
  intro n
  simp only [A135036, Nat.add_sub_cancel]

end A135036

/-! ## A135036.P14119432646002430923

`ogf((6x+2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A135036.P14119432646002430923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 2] [1, -4, 6, -4, 1] n

end

end A135036.P14119432646002430923

namespace A135036

/-- `ogf((6x+2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P14119432646002430923.Spec : Prop :=
  ∀ n, P14119432646002430923.a n = A135036 (n + 1)

end A135036

/-! ## A135036.P13621029248628124360

`floor(∑[∑[a(n-1)+8]])` with `a(0)=0, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A135036.P13621029248628124360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135036.P13621029248628124360

namespace A135036

/-- `floor(∑[∑[a(n-1)+8]])` -/
def P13621029248628124360.Spec : Prop :=
  ∀ n, (P13621029248628124360.a n : ℤ) = A135036 (n + 1)

end A135036

/-! ## A135036.P15506012747384094411

`lcm(2, ∑[n*Δ[n*2*n]])`
-/

namespace A135036.P15506012747384094411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135036.P15506012747384094411

namespace A135036

/-- `lcm(2, ∑[n*Δ[n*2*n]])` -/
def P15506012747384094411.Spec : Prop :=
  ∀ n, (P15506012747384094411.a n : ℤ) = A135036 (n + 1)

end A135036

/-! ## A135036.P5545009200524319392

`∑[record[or(1, -n)²-n]]-1`
-/

namespace A135036.P5545009200524319392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n : ℤ)) ^ 2 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A135036.P5545009200524319392

namespace A135036

/-- `∑[record[or(1, -n)²-n]]-1` -/
def P5545009200524319392.Spec : Prop :=
  ∀ n, P5545009200524319392.a n = A135036 (n + 1)

end A135036

/-! ## A135036.P13422641825390586083

`C(2*n+3, 3)-(n+1)²`
-/

namespace A135036.P13422641825390586083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 3) 3 : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A135036.P13422641825390586083

namespace A135036

/-- `C(2*n+3, 3)-(n+1)²` -/
def P13422641825390586083.Spec : Prop :=
  ∀ n, P13422641825390586083.a n = A135036 (n + 1)

end A135036

/-! ## A135036.P7090941561096874091

`Δ[2*(n+1)*C(n+1, 3)]`
-/

namespace A135036.P7090941561096874091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1) * Nat.choose (n + 1) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A135036.P7090941561096874091

namespace A135036

/-- `Δ[2*(n+1)*C(n+1, 3)]` -/
def P7090941561096874091.Spec : Prop :=
  ∀ n, P7090941561096874091.a n = A135036 (n + 1)

end A135036

/-! ## A135036.P12760401958188752345

`floor(∑[2-∑[a(n-1)-8]])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A135036.P12760401958188752345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135036.P12760401958188752345

namespace A135036

/-- `floor(∑[2-∑[a(n-1)-8]])` -/
def P12760401958188752345.Spec : Prop :=
  ∀ n, P12760401958188752345.a n = A135036 (n + 1)

end A135036

/-! ## A135036.P7500304720519486989

`n²+C(2*(n+1), 3)+n`
-/

namespace A135036.P7500304720519486989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (Nat.choose (2 * (n + 1)) 3 + n)

end

end A135036.P7500304720519486989

namespace A135036

/-- `n²+C(2*(n+1), 3)+n` -/
def P7500304720519486989.Spec : Prop :=
  ∀ n, (P7500304720519486989.a n : ℤ) = A135036 (n + 1)

end A135036

/-! ## A135036.P5507568397859862158

`∑[record[or(1, n)²-n]]-1-n`
-/

namespace A135036.P5507568397859862158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n ^ 2 : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - (n : ℤ)

end

end A135036.P5507568397859862158

namespace A135036

/-- `∑[record[or(1, n)²-n]]-1-n` -/
def P5507568397859862158.Spec : Prop :=
  ∀ n, P5507568397859862158.a n = A135036 (n + 1)

end A135036

/-! ## A135036.P8124973575152988692

`∑[∑[a(n-1)+8]]-1` with `a(0)=1, a(1)=5, a(2)=14`
-/

namespace A135036.P8124973575152988692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 14] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A135036.P8124973575152988692

namespace A135036

/-- `∑[∑[a(n-1)+8]]-1` -/
def P8124973575152988692.Spec : Prop :=
  ∀ n, P8124973575152988692.a n = A135036 (n + 1)

end A135036

/-! ## A135036.P18339831046143063049

`a(n-1)+n*(4*n+2)` with `a(0)=0`
-/

namespace A135036.P18339831046143063049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * (4 * n + 2)

end

end A135036.P18339831046143063049

namespace A135036

/-- `a(n-1)+n*(4*n+2)` -/
def P18339831046143063049.Spec : Prop :=
  ∀ n, (P18339831046143063049.a n : ℤ) = A135036 (n + 1)

end A135036

/-!
# A135037: Sums of the products of n consecutive triples of numbers.

The programs for A135037, the canonical program `A135037.P7205680047775488174` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135037 has offset 1).

The definition of A135037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135037.P7205680047775488174

`(27*(n+1)^4-18*(n+1)^3-15*(n+1)²+6*(n+1))/4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135037

/-- `(27*(n+1)^4-18*(n+1)^3-15*(n+1)²+6*(n+1))/4` -/
def P7205680047775488174.Spec : Prop :=
  ∀ n, P7205680047775488174.a n = (A135037 (n + 1) : ℚ)

end A135037

/-! ## A135037.P17371742655522517280

`6*C(∑[3*n+1], 2)`
-/

namespace A135037.P17371742655522517280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A135037.P17371742655522517280

namespace A135037

/-- `6*C(∑[3*n+1], 2)` -/
def P17371742655522517280.Spec : Prop :=
  ∀ n, (P17371742655522517280.a n : ℤ) = A135037 (n + 1)

end A135037

/-! ## A135037.P4248845970410049311

`A045943(n)*A178977(n)`
-/

namespace A135037.P4248845970410049311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n * A178977 n

end

end A135037.P4248845970410049311

namespace A135037

/-- `A045943(n)*A178977(n)` -/
def P4248845970410049311.Spec : Prop :=
  ∀ n, P4248845970410049311.a n = A135037 (n + 1)

end A135037

/-! ## A135037.P6349037918833180659

`6*∑[n*A000217(A016777(n))]`
-/

namespace A135037.P6349037918833180659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000217 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135037.P6349037918833180659

namespace A135037

/-- `6*∑[n*A000217(A016777(n))]` -/
def P6349037918833180659.Spec : Prop :=
  ∀ n, P6349037918833180659.a n = A135037 (n + 1)

end A135037

/-! ## A135037.P16502774375687345213

`A062741(n+1)*A115067(n+1)`
-/

namespace A135037.P16502774375687345213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 (n + 1) * A115067 (n + 1)

end

end A135037.P16502774375687345213

namespace A135037

/-- `A062741(n+1)*A115067(n+1)` -/
def P16502774375687345213.Spec : Prop :=
  ∀ n, P16502774375687345213.a n = A135037 (n + 1)

end A135037

/-! ## A135037.P5199732358364849755

`∑[A228889(n+1)]-A228889(n+1)`
-/

namespace A135037.P5199732358364849755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A228889 (n + 1)

end

end A135037.P5199732358364849755

namespace A135037

/-- `∑[A228889(n+1)]-A228889(n+1)` -/
def P5199732358364849755.Spec : Prop :=
  ∀ n, P5199732358364849755.a n = A135037 (n + 1)

end A135037

/-! ## A135037.P14790284970449796132

`(A000326(n+1)-1)*A062741(n+1)`
-/

namespace A135037.P14790284970449796132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000326 (n + 1) - 1) * A062741 (n + 1)

end

end A135037.P14790284970449796132

namespace A135037

/-- `(A000326(n+1)-1)*A062741(n+1)` -/
def P14790284970449796132.Spec : Prop :=
  ∀ n, P14790284970449796132.a n = A135037 (n + 1)

end A135037

/-! ## A135037.P14997633646114082265

`(A008585(n)+A000326(n))*A062741(n+1)`
-/

namespace A135037.P14997633646114082265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008585 n + A000326 n) * A062741 (n + 1)

end

end A135037.P14997633646114082265

namespace A135037

/-- `(A008585(n)+A000326(n))*A062741(n+1)` -/
def P14997633646114082265.Spec : Prop :=
  ∀ n, P14997633646114082265.a n = A135037 (n + 1)

end A135037

/-! ## A135037.P7794345287628687703

`A000326(n+1)*A081271(n)-A000326(n+1)`
-/

namespace A135037.P7794345287628687703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1) * A081271 n - A000326 (n + 1)

end

end A135037.P7794345287628687703

namespace A135037

/-- `A000326(n+1)*A081271(n)-A000326(n+1)` -/
def P7794345287628687703.Spec : Prop :=
  ∀ n, P7794345287628687703.a n = A135037 (n + 1)

end A135037

/-! ## A135037.P9655800210645362975

`(A022288(n+1)-A000384(n))*A000217(n)`
-/

namespace A135037.P9655800210645362975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022288 (n + 1) - A000384 n) * A000217 n

end

end A135037.P9655800210645362975

namespace A135037

/-- `(A022288(n+1)-A000384(n))*A000217(n)` -/
def P9655800210645362975.Spec : Prop :=
  ∀ n, P9655800210645362975.a n = A135037 (n + 1)

end A135037

/-! ## A135037.P2037220980118566063

`(A080663(n+1)+A045943(n+1))*A045943(n)`
-/

namespace A135037.P2037220980118566063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080663 (n + 1) + A045943 (n + 1)) * A045943 n

end

end A135037.P2037220980118566063

namespace A135037

/-- `(A080663(n+1)+A045943(n+1))*A045943(n)` -/
def P2037220980118566063.Spec : Prop :=
  ∀ n, P2037220980118566063.a n = A135037 (n + 1)

end A135037

/-! ## A135037.P7487572852274177893

`A115067(n+1)+A005449(n)*A060544(n+2)`
-/

namespace A135037.P7487572852274177893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115067 (n + 1) + A005449 n * A060544 (n + 2)

end

end A135037.P7487572852274177893

namespace A135037

/-- `A115067(n+1)+A005449(n)*A060544(n+2)` -/
def P7487572852274177893.Spec : Prop :=
  ∀ n, P7487572852274177893.a n = A135037 (n + 1)

end A135037

/-! ## A135037.P15820505922279693098

`A000326(n+1)*A165367(n+1)*A165351(n)`
-/

namespace A135037.P15820505922279693098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1) * A165367 (n + 1) * A165351 n

end

end A135037.P15820505922279693098

namespace A135037

/-- `A000326(n+1)*A165367(n+1)*A165351(n)` -/
def P15820505922279693098.Spec : Prop :=
  ∀ n, P15820505922279693098.a n = A135037 (n + 1)

end A135037

/-! ## A135037.P17401348138714620183

`A005449(n+1)*A060544(n+1)-A049450(n+1)`
-/

namespace A135037.P17401348138714620183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (n + 1) * A060544 (n + 1) - A049450 (n + 1)

end

end A135037.P17401348138714620183

namespace A135037

/-- `A005449(n+1)*A060544(n+1)-A049450(n+1)` -/
def P17401348138714620183.Spec : Prop :=
  ∀ n, P17401348138714620183.a n = A135037 (n + 1)

end A135037

/-! ## A135037.P5744382841396097788

`(A001318(2*n+1)-1)*A117748(2*(n+1))`
-/

namespace A135037.P5744382841396097788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001318 (2 * n + 1) - 1) * A117748 (2 * (n + 1))

end

end A135037.P5744382841396097788

namespace A135037

/-- `(A001318(2*n+1)-1)*A117748(2*(n+1))` -/
def P5744382841396097788.Spec : Prop :=
  ∀ n, P5744382841396097788.a n = A135037 (n + 1)

end A135037

/-! ## A135037.P9379572144345865616

`(6*n+A000217(3*n))*A001318(2*n+1)`
-/

namespace A135037.P9379572144345865616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n : ℤ) + A000217 (3 * n)) * A001318 (2 * n + 1)

end

end A135037.P9379572144345865616

namespace A135037

/-- `(6*n+A000217(3*n))*A001318(2*n+1)` -/
def P9379572144345865616.Spec : Prop :=
  ∀ n, P9379572144345865616.a n = A135037 (n + 1)

end A135037

/-! ## A135037.P2753696283549499639

`(A140091(2*n+1)-A140091(n+1))*A000326(n+1)`
-/

namespace A135037.P2753696283549499639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140091 (2 * n + 1) - A140091 (n + 1)) * A000326 (n + 1)

end

end A135037.P2753696283549499639

namespace A135037

/-- `(A140091(2*n+1)-A140091(n+1))*A000326(n+1)` -/
def P2753696283549499639.Spec : Prop :=
  ∀ n, P2753696283549499639.a n = A135037 (n + 1)

end A135037

/-! ## A135037.P12714802160276248761

`(A134869(2*(n+1))-A134869(n+2))*A062741(n+1)`
-/

namespace A135037.P12714802160276248761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134869 (2 * (n + 1)) - A134869 (n + 2)) * A062741 (n + 1)

end

end A135037.P12714802160276248761

namespace A135037

/-- `(A134869(2*(n+1))-A134869(n+2))*A062741(n+1)` -/
def P12714802160276248761.Spec : Prop :=
  ∀ n, P12714802160276248761.a n = A135037 (n + 1)

end A135037

/-! ## A135037.P15321484426290517246

`A142590(2*(n+1))*A142883(2*n)`
-/

namespace A135037.P15321484426290517246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142590 (2 * (n + 1)) * A142883 (2 * n)

end

end A135037.P15321484426290517246

namespace A135037

/-- `A142590(2*(n+1))*A142883(2*n)` -/
def P15321484426290517246.Spec : Prop :=
  ∀ n, P15321484426290517246.a n = A135037 (n + 1)

end A135037

/-! ## A135037.P3367766984013599838

`6*∑[A000292(3*n)]`
-/

namespace A135037.P3367766984013599838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135037.P3367766984013599838

namespace A135037

/-- `6*∑[A000292(3*n)]` -/
def P3367766984013599838.Spec : Prop :=
  ∀ n, P3367766984013599838.a n = A135037 (n + 1)

end A135037

/-!
# A135038: Sums of the products of n consecutive quadruples of numbers.

The programs for A135038, the canonical program `A135038.P9469269575299568111` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135038 has offset 1).

The definition of A135038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135038.P9469269575299568111

`∑[4*n*A001505(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135038

/-- `∑[4*n*A001505(n)]` -/
def P9469269575299568111.Spec : Prop :=
  ∀ n, P9469269575299568111.a n = A135038 (n + 1)

theorem P9469269575299568111.correct : P9469269575299568111.Spec := by
  intro n
  simp only [A135038, Nat.add_sub_cancel]

end A135038

/-! ## A135038.P8548645410164573746

`∑[(1-A157870(n))²-1]`
-/

namespace A135038.P8548645410164573746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A157870 n) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135038.P8548645410164573746

namespace A135038

/-- `∑[(1-A157870(n))²-1]` -/
def P8548645410164573746.Spec : Prop :=
  ∀ n, P8548645410164573746.a n = A135038 (n + 1)

end A135038

/-! ## A135038.P1009012639879338094

`∑[(A322745(n)-n)/(n+1)]`
-/

namespace A135038.P1009012639879338094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322745 n - (n : ℤ) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135038.P1009012639879338094

namespace A135038

/-- `∑[(A322745(n)-n)/(n+1)]` -/
def P1009012639879338094.Spec : Prop :=
  ∀ n, P1009012639879338094.a n = (A135038 (n + 1) : ℚ)

end A135038

/-! ## A135038.P12421461916879977923

`∑[A054777(n+1)-A054777(n+1)/(n+1)]`
-/

namespace A135038.P12421461916879977923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054777 (n + 1) : ℚ) - (A054777 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135038.P12421461916879977923

namespace A135038

/-- `∑[A054777(n+1)-A054777(n+1)/(n+1)]` -/
def P12421461916879977923.Spec : Prop :=
  ∀ n, P12421461916879977923.a n = (A135038 (n + 1) : ℚ)

end A135038

/-! ## A135038.P8495046991329417801

`∑[A082108(2*n)²-1]`
-/

namespace A135038.P8495046991329417801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082108 (2 * n) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135038.P8495046991329417801

namespace A135038

/-- `∑[A082108(2*n)²-1]` -/
def P8495046991329417801.Spec : Prop :=
  ∀ n, P8495046991329417801.a n = A135038 (n + 1)

end A135038

/-! ## A135038.P3550916893995358384

`∑[A002943(2*n+1)*A002943(2*n)]`
-/

namespace A135038.P3550916893995358384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002943 (2 * n + 1) * A002943 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135038.P3550916893995358384

namespace A135038

/-- `∑[A002943(2*n+1)*A002943(2*n)]` -/
def P3550916893995358384.Spec : Prop :=
  ∀ n, P3550916893995358384.a n = A135038 (n + 1)

end A135038

/-! ## A135038.P14606463158701913850

`∑[A081352(4*n)²-1]`
-/

namespace A135038.P14606463158701913850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081352 (4 * n) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135038.P14606463158701913850

namespace A135038

/-- `∑[A081352(4*n)²-1]` -/
def P14606463158701913850.Spec : Prop :=
  ∀ n, P14606463158701913850.a n = A135038 (n + 1)

end A135038

/-! ## A135038.P16748909814541610782

`∑[A062938(4*n)-1]`
-/

namespace A135038.P16748909814541610782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062938 (4 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135038.P16748909814541610782

namespace A135038

/-- `∑[A062938(4*n)-1]` -/
def P16748909814541610782.Spec : Prop :=
  ∀ n, P16748909814541610782.a n = A135038 (n + 1)

end A135038

/-! ## A135038.P7123980526915218747

`∑[A052762(4*n+3)]`
-/

namespace A135038.P7123980526915218747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135038.P7123980526915218747

namespace A135038

/-- `∑[A052762(4*n+3)]` -/
def P7123980526915218747.Spec : Prop :=
  ∀ n, P7123980526915218747.a n = A135038 (n + 1)

end A135038

/-! ## A135038.P15484698175734358552

`∑[2*A033486(4*n)]`
-/

namespace A135038.P15484698175734358552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033486 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135038.P15484698175734358552

namespace A135038

/-- `∑[2*A033486(4*n)]` -/
def P15484698175734358552.Spec : Prop :=
  ∀ n, P15484698175734358552.a n = A135038 (n + 1)

end A135038

/-! ## A135038.P14065983914011064939

`∑[A028387(4*n)²-1]`
-/

namespace A135038.P14065983914011064939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (4 * n) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135038.P14065983914011064939

namespace A135038

/-- `∑[A028387(4*n)²-1]` -/
def P14065983914011064939.Spec : Prop :=
  ∀ n, P14065983914011064939.a n = A135038 (n + 1)

end A135038

/-! ## A135038.P8561717985097449218

`∑[A117465(8*n+4)]`
-/

namespace A135038.P8561717985097449218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117465 (8 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135038.P8561717985097449218

namespace A135038

/-- `∑[A117465(8*n+4)]` -/
def P8561717985097449218.Spec : Prop :=
  ∀ n, P8561717985097449218.a n = A135038 (n + 1)

end A135038

/-!
# A135039: Ceiling(Pi*n^2).

The programs for A135039, the canonical program `A135039.P8596457845763681578` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135039 has offset 0).

The definition of A135039 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(π*n²)` (program `A135039.P8596457845763681578`, by `A135039.P8596457845763681578.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135039.P8596457845763681578

`ceil(π*n²)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135039

/-- `ceil(π*n²)` -/
def P8596457845763681578.Spec : Prop :=
  ∀ n, P8596457845763681578.a n = A135039 n

theorem P8596457845763681578.correct : P8596457845763681578.Spec := by
  intro n
  simp only [A135039]

end A135039

/-! ## A135039.P7662090515109062599

`(2*n)²-A235532(n)`
-/

namespace A135039.P7662090515109062599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - A235532 n

end

end A135039.P7662090515109062599

namespace A135039

/-- `(2*n)²-A235532(n)` -/
def P7662090515109062599.Spec : Prop :=
  ∀ n, P7662090515109062599.a n = A135039 n

end A135039

/-! ## A135039.P774803397104085103

`A057427(n)+floor(π*n²)`
-/

namespace A135039.P774803397104085103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ⌊Real.pi * (n ^ 2 : ℝ)⌋

end

end A135039.P774803397104085103

namespace A135039

/-- `A057427(n)+floor(π*n²)` -/
def P774803397104085103.Spec : Prop :=
  ∀ n, P774803397104085103.a n = A135039 n

end A135039

/-! ## A135039.P1397060077591949010

`floor(π*n²)-A057428(n)`
-/

namespace A135039.P1397060077591949010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n ^ 2 : ℝ)⌋ - A057428 n

end

end A135039.P1397060077591949010

namespace A135039

/-- `floor(π*n²)-A057428(n)` -/
def P1397060077591949010.Spec : Prop :=
  ∀ n, P1397060077591949010.a n = A135039 n

end A135039

/-! ## A135039.P8421053757705323833

`floor(((2*n)²+n-A028310(n))*atan(1))+1`
-/

namespace A135039.P8421053757705323833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((2 * n) ^ 2 + n : ℤ) - A028310 n : ℝ) * Real.arctan (1 : ℝ)⌋ + 1

end

end A135039.P8421053757705323833

namespace A135039

/-- `floor(((2*n)²+n-A028310(n))*atan(1))+1` -/
def P8421053757705323833.Spec : Prop :=
  ∀ n, P8421053757705323833.a n = A135039 n

end A135039

/-! ## A135039.P7674146089013617169

`A066643(n)+A057427(n)`
-/

namespace A135039.P7674146089013617169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 n + A057427 n

end

end A135039.P7674146089013617169

namespace A135039

/-- `A066643(n)+A057427(n)` -/
def P7674146089013617169.Spec : Prop :=
  ∀ n, P7674146089013617169.a n = A135039 n

end A135039

/-! ## A135039.P17607067148700442528

`A066643(n)+1-A000007(n)`
-/

namespace A135039.P17607067148700442528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 n + (1 - A000007 n)

end

end A135039.P17607067148700442528

namespace A135039

/-- `A066643(n)+1-A000007(n)` -/
def P17607067148700442528.Spec : Prop :=
  ∀ n, P17607067148700442528.a n = A135039 n

end A135039

/-! ## A135039.P10001876450301585692

`A066643(n)+n/A028310(n)`
-/

namespace A135039.P10001876450301585692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066643 n : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A135039.P10001876450301585692

namespace A135039

/-- `A066643(n)+n/A028310(n)` -/
def P10001876450301585692.Spec : Prop :=
  ∀ n, P10001876450301585692.a n = (A135039 n : ℚ)

end A135039

/-! ## A135039.P8792262312322885087

`A066643(n)+(n-A014681(n))²`
-/

namespace A135039.P8792262312322885087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 n + ((n : ℤ) - A014681 n) ^ 2

end

end A135039.P8792262312322885087

namespace A135039

/-- `A066643(n)+(n-A014681(n))²` -/
def P8792262312322885087.Spec : Prop :=
  ∀ n, P8792262312322885087.a n = A135039 n

end A135039

/-! ## A135039.P17831931618190749020

`A066643(n)--1%A000201(n+1)`
-/

namespace A135039.P17831931618190749020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 n - Int.tmod (-1) (A000201 (n + 1))

end

end A135039.P17831931618190749020

namespace A135039

/-- `A066643(n)--1%A000201(n+1)` -/
def P17831931618190749020.Spec : Prop :=
  ∀ n, P17831931618190749020.a n = A135039 n

end A135039

/-! ## A135039.P417252774594310288

`(A066643(n)+1)%A185868(n+1)²`
-/

namespace A135039.P417252774594310288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066643 n + 1) (A185868 (n + 1) ^ 2)

end

end A135039.P417252774594310288

namespace A135039

/-- `(A066643(n)+1)%A185868(n+1)²` -/
def P417252774594310288.Spec : Prop :=
  ∀ n, P417252774594310288.a n = A135039 n

end A135039

/-! ## A135039.P2437716275898158481

`A066643(n)+A135973(n)-A066645(n)`
-/

namespace A135039.P2437716275898158481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 n + (A135973 n - A066645 n)

end

end A135039.P2437716275898158481

namespace A135039

/-- `A066643(n)+A135973(n)-A066645(n)` -/
def P2437716275898158481.Spec : Prop :=
  ∀ n, P2437716275898158481.a n = A135039 n

end A135039

/-! ## A135039.P16564329012941830111

`A066643(n)+A248758(n)-A240977(n)`
-/

namespace A135039.P16564329012941830111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 n + (A248758 n - A240977 n)

end

end A135039.P16564329012941830111

namespace A135039

/-- `A066643(n)+A248758(n)-A240977(n)` -/
def P16564329012941830111.Spec : Prop :=
  ∀ n, P16564329012941830111.a n = A135039 n

end A135039

/-! ## A135039.P4826406297628652515

`A066643(n)+A121381(n)/A004084(n+1)`
-/

namespace A135039.P4826406297628652515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066643 n : ℚ) + (A121381 n : ℚ) / (A004084 (n + 1) : ℚ)

end

end A135039.P4826406297628652515

namespace A135039

/-- `A066643(n)+A121381(n)/A004084(n+1)` -/
def P4826406297628652515.Spec : Prop :=
  ∀ n, P4826406297628652515.a n = (A135039 n : ℚ)

end A135039

/-! ## A135039.P12070102358826970685

`A001673(n)+A066643(n)-A001672(n)`
-/

namespace A135039.P12070102358826970685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001673 n + (A066643 n - A001672 n)

end

end A135039.P12070102358826970685

namespace A135039

/-- `A001673(n)+A066643(n)-A001672(n)` -/
def P12070102358826970685.Spec : Prop :=
  ∀ n, P12070102358826970685.a n = A135039 n

end A135039

/-! ## A135039.P12497382061618451634

`A066643(n)+n/A003056(A000124(n))`
-/

namespace A135039.P12497382061618451634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066643 n : ℚ) + (n : ℚ) / (A003056 (A000124 n).toNat : ℚ)

end

end A135039.P12497382061618451634

namespace A135039

/-- `A066643(n)+n/A003056(A000124(n))` -/
def P12497382061618451634.Spec : Prop :=
  ∀ n, P12497382061618451634.a n = (A135039 n : ℚ)

end A135039

/-! ## A135039.P4798122105121631400

`A022844(n²)+ceil(abs(sin(n)))`
-/

namespace A135039.P4798122105121631400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n ^ 2) + ⌈|Real.sin (n : ℝ)|⌉

end

end A135039.P4798122105121631400

namespace A135039

/-- `A022844(n²)+ceil(abs(sin(n)))` -/
def P4798122105121631400.Spec : Prop :=
  ∀ n, P4798122105121631400.a n = A135039 n

end A135039

/-! ## A135039.P8618459898607800017

`A178334(n)+A022844(n²)`
-/

namespace A135039.P8618459898607800017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A022844 (n ^ 2)

end

end A135039.P8618459898607800017

namespace A135039

/-- `A178334(n)+A022844(n²)` -/
def P8618459898607800017.Spec : Prop :=
  ∀ n, P8618459898607800017.a n = A135039 n

end A135039

/-! ## A135039.P10406371623939264460

`A157928(n+1)+A022844(n²)`
-/

namespace A135039.P10406371623939264460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (n + 1) + A022844 (n ^ 2)

end

end A135039.P10406371623939264460

namespace A135039

/-- `A157928(n+1)+A022844(n²)` -/
def P10406371623939264460.Spec : Prop :=
  ∀ n, P10406371623939264460.a n = A135039 n

end A135039

/-! ## A135039.P16734754421264908432

`A121381(n²)`
-/

namespace A135039.P16734754421264908432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 (n ^ 2)

end

end A135039.P16734754421264908432

namespace A135039

/-- `A121381(n²)` -/
def P16734754421264908432.Spec : Prop :=
  ∀ n, P16734754421264908432.a n = A135039 n

end A135039

/-!
# A135042: a(n) = 5*(n - 1) for n >= 2; a(0) = 1, a(1) = 2.

The programs for A135042, the canonical program `A135042.P10591555607932612336` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135042 has offset 0).

The definition of A135042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135042.P10591555607932612336

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135042

/-- `2*a(n-1)-a(n-2)` -/
def P10591555607932612336.Spec : Prop :=
  ∀ n, P10591555607932612336.a n = A135042 n

theorem P10591555607932612336.correct : P10591555607932612336.Spec := by
  intro n
  simp only [A135042]

end A135042

/-!
# A135048: Indices of primes with digit product = 3.

The programs for A135048, there is no canonical definition to state claims against.
-/

/-! ## A135048.P12573676255038772174

`A082058(A034050(n+1))`
-/

namespace A135048.P12573676255038772174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (A034050 (n + 1)).toNat

end

end A135048.P12573676255038772174

/-! ## A135048.P4598263471014984039

`A082058(eq[3, A007954(n)])`
-/

namespace A135048.P4598263471014984039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135048.P4598263471014984039

/-! ## A135048.P36685790762677087

`A000720(A107689(n+1))`
-/

namespace A135048.P36685790762677087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A107689 (n + 1)).toNat

end

end A135048.P36685790762677087

/-! ## A135048.P12450737971596286214

`eq[3, A053666(A028310(n))]`
-/

namespace A135048.P12450737971596286214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053666 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A135048.P12450737971596286214

/-! ## A135048.P13983187012089547920

`A000720(p?[A034050(n+1)])`
-/

namespace A135048.P13983187012089547920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135048.P13983187012089547920

/-!
# A135050: Numbers k such that sum of digits of k^3 is 8. Multiples of 10 are omitted.

The programs for A135050, there is no canonical definition to state claims against.
-/

/-! ## A135050.P14497199356463318444

`10*a(n-1)-9` with `a(0)=2, a(1)=5, a(2)=8, a(3)=11`
-/

namespace A135050.P14497199356463318444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 8, 11] fun n a =>
  10 * a (n - 1) - 9

end

end A135050.P14497199356463318444

/-! ## A135050.P8366003840185238664

`∩[A018846(n+1), A279773(n+1)]`
-/

namespace A135050.P8366003840185238664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135050.P8366003840185238664

/-! ## A135050.P14488887953050567695

`∩[A030294(n+1), A088405(n+1)+1]`
-/

namespace A135050.P14488887953050567695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088405 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135050.P14488887953050567695

/-! ## A135050.P302441139304271153

`A083458(n+1)+A072736(A027379(n))`
-/

namespace A135050.P302441139304271153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083458 (n + 1) + A072736 (A027379 n).toNat

end

end A135050.P302441139304271153

/-! ## A135050.P13019211777459544933

`A083458(n+1)+A014963(A007068(n+1))`
-/

namespace A135050.P13019211777459544933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083458 (n + 1) + A014963 (A007068 (n + 1)).toNat

end

end A135050.P13019211777459544933

/-!
# A135051: Pyramid game person numbers that have integer solutions.

The programs for A135051, the canonical program `A135051.P7821119163887232741` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135051 has offset 1).

The definition of A135051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135051.P3554143547460330313

`C(char[2*n+1]+8*n+4, 2)+1`
-/

namespace A135051.P3554143547460330313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + (8 * n + 4)) 2 + 1

end

end A135051.P3554143547460330313

namespace A135051

/-- `C(char[2*n+1]+8*n+4, 2)+1` -/
def P3554143547460330313.Spec : Prop :=
  ∀ n, (P3554143547460330313.a n : ℤ) = A135051 (n + 1)

end A135051

/-! ## A135051.P7821119163887232741

`(6*n+3)²-A060626(A052928(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135051

/-- `(6*n+3)²-A060626(A052928(n))` -/
def P7821119163887232741.Spec : Prop :=
  ∀ n, P7821119163887232741.a n = A135051 (n + 1)

theorem P7821119163887232741.correct : P7821119163887232741.Spec := by
  intro n
  simp only [A135051, Nat.add_sub_cancel]

end A135051

/-! ## A135051.P2979782267857422921

`A047471(n+2)+A017089(n)*A047524(n+1)`
-/

namespace A135051.P2979782267857422921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 2) + A017089 n * A047524 (n + 1)

end

end A135051.P2979782267857422921

namespace A135051

/-- `A047471(n+2)+A017089(n)*A047524(n+1)` -/
def P2979782267857422921.Spec : Prop :=
  ∀ n, P2979782267857422921.a n = A135051 (n + 1)

end A135051

/-! ## A135051.P14621112554228354271

`A047461(n+2)*(8*n+2)-A047471(3*n+1)`
-/

namespace A135051.P14621112554228354271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (n + 2) * (8 * n + 2 : ℤ) - A047471 (3 * n + 1)

end

end A135051.P14621112554228354271

namespace A135051

/-- `A047461(n+2)*(8*n+2)-A047471(3*n+1)` -/
def P14621112554228354271.Spec : Prop :=
  ∀ n, P14621112554228354271.a n = A135051 (n + 1)

end A135051

/-! ## A135051.P4219354219267499459

`A193867(A047524(n+1))`
-/

namespace A135051.P4219354219267499459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193867 (A047524 (n + 1)).toNat

end

end A135051.P4219354219267499459

namespace A135051

/-- `A193867(A047524(n+1))` -/
def P4219354219267499459.Spec : Prop :=
  ∀ n, P4219354219267499459.a n = A135051 (n + 1)

end A135051

/-! ## A135051.P13803737472758420187

`A193867(A042963(n+2)+2*n)`
-/

namespace A135051.P13803737472758420187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193867 (A042963 (n + 2) + (2 * n : ℤ)).toNat

end

end A135051.P13803737472758420187

namespace A135051

/-- `A193867(A042963(n+2)+2*n)` -/
def P13803737472758420187.Spec : Prop :=
  ∀ n, P13803737472758420187.a n = A135051 (n + 1)

end A135051

/-! ## A135051.P5362830578926970164

`A193867(A042948(n+1)+2*n+1)`
-/

namespace A135051.P5362830578926970164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193867 (A042948 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A135051.P5362830578926970164

namespace A135051

/-- `A193867(A042948(n+1)+2*n+1)` -/
def P5362830578926970164.Spec : Prop :=
  ∀ n, P5362830578926970164.a n = A135051 (n + 1)

end A135051

/-! ## A135051.P3324366655575515945

`A193867(A056699(2*n+1)+2*n+1)`
-/

namespace A135051.P3324366655575515945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193867 (A056699 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A135051.P3324366655575515945

namespace A135051

/-- `A193867(A056699(2*n+1)+2*n+1)` -/
def P3324366655575515945.Spec : Prop :=
  ∀ n, P3324366655575515945.a n = A135051 (n + 1)

end A135051

/-! ## A135051.P17339823248106612543

`A193867(A317298(n+1)-A084849(n))`
-/

namespace A135051.P17339823248106612543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193867 (A317298 (n + 1) - A084849 n).toNat

end

end A135051.P17339823248106612543

namespace A135051

/-- `A193867(A317298(n+1)-A084849(n))` -/
def P17339823248106612543.Spec : Prop :=
  ∀ n, P17339823248106612543.a n = A135051 (n + 1)

end A135051

/-! ## A135051.P4190525323032148365

`A004771(n)*A047524(n+1)-A047524(A047524(n+1))`
-/

namespace A135051.P4190525323032148365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n * A047524 (n + 1) - A047524 (A047524 (n + 1)).toNat

end

end A135051.P4190525323032148365

namespace A135051

/-- `A004771(n)*A047524(n+1)-A047524(A047524(n+1))` -/
def P4190525323032148365.Spec : Prop :=
  ∀ n, P4190525323032148365.a n = A135051 (n + 1)

end A135051

/-! ## A135051.P14193523403718930624

`A000124(7*n+n%2+3+n)`
-/

namespace A135051.P14193523403718930624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (7 * n + (n % 2 + 3) + n)

end

end A135051.P14193523403718930624

namespace A135051

/-- `A000124(7*n+n%2+3+n)` -/
def P14193523403718930624.Spec : Prop :=
  ∀ n, P14193523403718930624.a n = A135051 (n + 1)

end A135051

/-! ## A135051.P2703406540330881453

`A000124(7*n-gcd(2, n)+5+n)`
-/

namespace A135051.P2703406540330881453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 ((7 * n : ℤ) - (Nat.gcd 2 n : ℤ) + 5 + (n : ℤ)).toNat

end

end A135051.P2703406540330881453

namespace A135051

/-- `A000124(7*n-gcd(2, n)+5+n)` -/
def P2703406540330881453.Spec : Prop :=
  ∀ n, P2703406540330881453.a n = A135051 (n + 1)

end A135051

/-! ## A135051.P4631862148173823386

`A089781(A173512(n))`
-/

namespace A135051.P4631862148173823386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089781 (A173512 n).toNat

end

end A135051.P4631862148173823386

namespace A135051

/-- `A089781(A173512(n))` -/
def P4631862148173823386.Spec : Prop :=
  ∀ n, P4631862148173823386.a n = A135051 (n + 1)

end A135051

/-! ## A135051.P13518052447783406056

`A000124(A134965(n+1))`
-/

namespace A135051.P13518052447783406056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A134965 (n + 1)).toNat

end

end A135051.P13518052447783406056

namespace A135051

/-- `A000124(A134965(n+1))` -/
def P13518052447783406056.Spec : Prop :=
  ∀ n, P13518052447783406056.a n = A135051 (n + 1)

end A135051

/-! ## A135051.P6463982200551096995

`A134869(A017089(n)+char[2*n+1]+1)`
-/

namespace A135051.P6463982200551096995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (A017089 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1).toNat

end

end A135051.P6463982200551096995

namespace A135051

/-- `A134869(A017089(n)+char[2*n+1]+1)` -/
def P6463982200551096995.Spec : Prop :=
  ∀ n, P6463982200551096995.a n = A135051 (n + 1)

end A135051

/-! ## A135051.P8848215074981597163

`A008815(2*A134965(n+1))`
-/

namespace A135051.P8848215074981597163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008815 (2 * A134965 (n + 1)).toNat

end

end A135051.P8848215074981597163

namespace A135051

/-- `A008815(2*A134965(n+1))` -/
def P8848215074981597163.Spec : Prop :=
  ∀ n, P8848215074981597163.a n = A135051 (n + 1)

end A135051

/-!
# A135052: Expansion of g.f.: (1-2*x-sqrt(1-4*x+8*x^3-4*x^4))/(2*x^2*(1-x)).

The programs for A135052, there is no canonical definition to state claims against.
-/

/-! ## A135052.P4751820497618212776

`A075864(n)+A004526(A087432(n))`
-/

namespace A135052.P4751820497618212776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075864 n + A004526 (A087432 n).toNat

end

end A135052.P4751820497618212776

/-! ## A135052.P17087438909095159026

`A063195(A105633(n+1))`
-/

namespace A135052.P17087438909095159026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (A105633 (n + 1)).toNat

end

end A135052.P17087438909095159026

/-! ## A135052.P16736308763504826641

`or(A087432(n)%A180514(3*n+5), ceil(n/2))`
-/

namespace A135052.P16736308763504826641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A087432 n) (A180514 (3 * n + 5))) ⌈(n : ℚ) / 2⌉

end

end A135052.P16736308763504826641

/-! ## A135052.P10048689261961855134

`A351834(A309861(n))+A087432(n)`
-/

namespace A135052.P10048689261961855134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351834 (A309861 n).toNat + A087432 n

end

end A135052.P10048689261961855134

/-! ## A135052.P3766580605198831245

`or(A001221(A000142(n)), A087432(n))`
-/

namespace A135052.P3766580605198831245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A000142 n).toNat) (A087432 n)

end

end A135052.P3766580605198831245

/-!
# A135054: Greatest integer K(i)=A085427(n) such that A085427(n)=A085427(n-1)/2 and K(i+1)>K(i) with A085427(n)=least k such that k*2^n-1 is prime ( Mersenne prime when k=1).

The programs for A135054, there is no canonical definition to state claims against.
-/

/-! ## A135054.P2887257602530685741

`A085427(A135053(n+1))`
-/

namespace A135054.P2887257602530685741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085427 (A135053 (n + 1)).toNat

end

end A135054.P2887257602530685741

/-! ## A135054.P10876237598482074564

`A127587(A135053(n+1))+A053164(n+1)`
-/

namespace A135054.P10876237598482074564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 (A135053 (n + 1)).toNat + A053164 (n + 1)

end

end A135054.P10876237598482074564

/-! ## A135054.P7597547184475935139

`A127587(A135053(n+1))+A117358(n+1)`
-/

namespace A135054.P7597547184475935139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 (A135053 (n + 1)).toNat + A117358 (n + 1)

end

end A135054.P7597547184475935139

/-! ## A135054.P6819688060646474753

`A178688(n+1)+A127587(A135053(n+1))`
-/

namespace A135054.P6819688060646474753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178688 (n + 1) + A127587 (A135053 (n + 1)).toNat

end

end A135054.P6819688060646474753

/-! ## A135054.P16138801688135803739

`A300826(2*n+1)+A127587(A135053(n+1))`
-/

namespace A135054.P16138801688135803739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300826 (2 * n + 1) + A127587 (A135053 (n + 1)).toNat

end

end A135054.P16138801688135803739

/-!
# A135055: Pentanacci numbers: a(n) = a(n-1) + a(n-2) + a(n-3) + a(n-4) + a(n-5) for n>4 and with a(0)=-2, a(1)=-1, a(2)=0, a(3)=1, a(4)=2.

The programs for A135055, the canonical program `A135055.P14920395580388249474` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135055 has offset 0).

The definition of A135055 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` (program `A135055.P14920395580388249474`, by `A135055.P14920395580388249474.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135055.P14920395580388249474

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=-2, a(1)=-1, a(2)=0, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135055

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P14920395580388249474.Spec : Prop :=
  ∀ n, P14920395580388249474.a n = A135055 n

theorem P14920395580388249474.correct : P14920395580388249474.Spec := by
  intro n
  simp only [A135055]

end A135055

/-! ## A135055.P4901202442116620240

`A135056(n)-2*A000322(n)`
-/

namespace A135055.P4901202442116620240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135056 n - 2 * A000322 n

end

end A135055.P4901202442116620240

namespace A135055

/-- `A135056(n)-2*A000322(n)` -/
def P4901202442116620240.Spec : Prop :=
  ∀ n, P4901202442116620240.a n = A135055 n

end A135055

/-! ## A135055.P9212857702987285388

`A145029(n+1)-3*A000322(n)`
-/

namespace A135055.P9212857702987285388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145029 (n + 1) - 3 * A000322 n

end

end A135055.P9212857702987285388

namespace A135055

/-- `A145029(n+1)-3*A000322(n)` -/
def P9212857702987285388.Spec : Prop :=
  ∀ n, P9212857702987285388.a n = A135055 n

end A135055

/-! ## A135055.P1631563307157421623

`A135056(n)+A135056(n)-(A145029(n+1)+A000322(n))`
-/

namespace A135055.P1631563307157421623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135056 n + (A135056 n - (A145029 (n + 1) + A000322 n))

end

end A135055.P1631563307157421623

namespace A135055

/-- `A135056(n)+A135056(n)-(A145029(n+1)+A000322(n))` -/
def P1631563307157421623.Spec : Prop :=
  ∀ n, P1631563307157421623.a n = A135055 n

end A135055

/-! ## A135055.P2417757726094956037

`A145029(n+1)-A017557(A001949(n))`
-/

namespace A135055.P2417757726094956037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145029 (n + 1) - A017557 (A001949 n).toNat

end

end A135055.P2417757726094956037

namespace A135055

/-- `A145029(n+1)-A017557(A001949(n))` -/
def P2417757726094956037.Spec : Prop :=
  ∀ n, P2417757726094956037.a n = A135055 n

end A135055

/-!
# A135056: Pentanacci numbers: a(n) = a(n-1) + a(n-2) + a(n-3) + a(n-4) + a(n-5) if n>=5, and a(n) = n otherwise.

The programs for A135056, the canonical program `A135056.P186587444853908980` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135056 has offset 0).

The definition of A135056 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` (program `A135056.P186587444853908980`, by `A135056.P186587444853908980.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135056.P186587444853908980

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135056

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P186587444853908980.Spec : Prop :=
  ∀ n, (P186587444853908980.a n : ℤ) = A135056 n

theorem P186587444853908980.correct : P186587444853908980.Spec := by
  intro n
  simp only [A135056]

end A135056

/-! ## A135056.P16053752143731462322

`A135055(n)+2*A000322(n)`
-/

namespace A135056.P16053752143731462322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135055 n + 2 * A000322 n

end

end A135056.P16053752143731462322

namespace A135056

/-- `A135055(n)+2*A000322(n)` -/
def P16053752143731462322.Spec : Prop :=
  ∀ n, P16053752143731462322.a n = A135056 n

end A135056

/-! ## A135056.P1798189499968443001

`∑[A000322(n)]+A001949(n)-1`
-/

namespace A135056.P1798189499968443001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A001949 n - 1)

end

end A135056.P1798189499968443001

namespace A135056

/-- `∑[A000322(n)]+A001949(n)-1` -/
def P1798189499968443001.Spec : Prop :=
  ∀ n, P1798189499968443001.a n = A135056 n

end A135056

/-! ## A135056.P17213744423432675273

`A190912(n+1)+A001949(n)-1`
-/

namespace A135056.P17213744423432675273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190912 (n + 1) + (A001949 n - 1)

end

end A135056.P17213744423432675273

namespace A135056

/-- `A190912(n+1)+A001949(n)-1` -/
def P17213744423432675273.Spec : Prop :=
  ∀ n, P17213744423432675273.a n = A135056 n

end A135056

/-! ## A135056.P16943380611526725477

`A000322(n+1)+A135055(n+1)-A001591(n)`
-/

namespace A135056.P16943380611526725477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000322 (n + 1) + (A135055 (n + 1) - A001591 n)

end

end A135056.P16943380611526725477

namespace A135056

/-- `A000322(n+1)+A135055(n+1)-A001591(n)` -/
def P16943380611526725477.Spec : Prop :=
  ∀ n, P16943380611526725477.a n = A135056 n

end A135056

/-! ## A135056.P4194215088766040172

`A145029(n+1)-A000322(n)`
-/

namespace A135056.P4194215088766040172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145029 (n + 1) - A000322 n

end

end A135056.P4194215088766040172

namespace A135056

/-- `A145029(n+1)-A000322(n)` -/
def P4194215088766040172.Spec : Prop :=
  ∀ n, P4194215088766040172.a n = A135056 n

end A135056

/-! ## A135056.P5333502671339965993

`A135055(n+6)%A001591(n+5)`
-/

namespace A135056.P5333502671339965993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135055 (n + 6)) (A001591 (n + 5))

end

end A135056.P5333502671339965993

namespace A135056

/-- `A135055(n+6)%A001591(n+5)` -/
def P5333502671339965993.Spec : Prop :=
  ∀ n, P5333502671339965993.a n = A135056 n

end A135056

/-!
# A135057: Largest semiprime whose prime factors add up to 10^n.

The programs for A135057, there is no canonical definition to state claims against.
-/

/-! ## A135057.P1163663935448777072

`A124450(n+1)*(10^(n+1)-A124450(n+1))`
-/

namespace A135057.P1163663935448777072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124450 (n + 1) * ((10 ^ (n + 1) : ℤ) - A124450 (n + 1))

end

end A135057.P1163663935448777072

/-!
# A135058: Least m such that both m and m+n have exactly n distinct prime divisors, ignoring multiplicity.

The programs for A135058, there is no canonical definition to state claims against.
-/

/-! ## A135058.P7970953324909126546

`A019446(A329557(n))`
-/

namespace A135058.P7970953324909126546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A329557 n).toNat

end

end A135058.P7970953324909126546

/-!
# A135060: a(n) is the smallest number m for which none of the first n multiples of m has twice as many divisors as m.

The programs for A135060, there is no canonical definition to state claims against.
-/

/-! ## A135060.P15577046415476645674

`A328479(lcm(n+1, a(n-1)))*A330749(n+1)` with `a(0)=1`
-/

namespace A135060.P15577046415476645674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A328479 (Int.lcm (n + 1 : ℤ) (a (n - 1))) * A330749 (n + 1)

end

end A135060.P15577046415476645674

/-! ## A135060.P8424066524917064589

`A058312(n+1)*A144790(A000081(n+2))`
-/

namespace A135060.P8424066524917064589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (n + 1) * A144790 (A000081 (n + 2)).toNat

end

end A135060.P8424066524917064589

/-! ## A135060.P6543796848231357201

`A054350(A317297(n+3))*A058312(n+1)`
-/

namespace A135060.P6543796848231357201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054350 (A317297 (n + 3)).toNat * A058312 (n + 1)

end

end A135060.P6543796848231357201

/-! ## A135060.P17697007279472376089

`∏[A014963(A361581(n+1)²)]`
-/

namespace A135060.P17697007279472376089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A361581 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135060.P17697007279472376089

/-!
# A135061: a(n) = minimum (floor(n^3/m) + m) for any integer m >= 1.

The programs for A135061, the canonical program `A135061.P562521363477723589` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135061 has offset 1).

The definition of A135061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135061.P562521363477723589

`floor(2*(n+1)^(3/2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135061

/-- `floor(2*(n+1)^(3/2))` -/
def P562521363477723589.Spec : Prop :=
  ∀ n, P562521363477723589.a n = A135061 (n + 1)

theorem P562521363477723589.correct : P562521363477723589.Spec := by
  intro n
  simp only [A135061, Nat.add_sub_cancel]

end A135061

/-! ## A135061.P5864661799888703168

`ceil(sqrt(Δ[A002378(n)²]+2))-1`
-/

namespace A135061.P5864661799888703168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (n + 1) - f1 n + 2 : ℝ)⌉ - 1

end

end A135061.P5864661799888703168

namespace A135061

/-- `ceil(sqrt(Δ[A002378(n)²]+2))-1` -/
def P5864661799888703168.Spec : Prop :=
  ∀ n, P5864661799888703168.a n = A135061 (n + 1)

end A135061

/-! ## A135061.P8607692191083530097

`A002821(n+1)+∑[A035936(n)]`
-/

namespace A135061.P8607692191083530097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135061.P8607692191083530097

namespace A135061

/-- `A002821(n+1)+∑[A035936(n)]` -/
def P8607692191083530097.Spec : Prop :=
  ∀ n, P8607692191083530097.a n = A135061 (n + 1)

end A135061

/-! ## A135061.P5913838117470635105

`A002821(n+1)+A000093(n+1)`
-/

namespace A135061.P5913838117470635105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (n + 1) + A000093 (n + 1)

end

end A135061.P5913838117470635105

namespace A135061

/-- `A002821(n+1)+A000093(n+1)` -/
def P5913838117470635105.Spec : Prop :=
  ∀ n, P5913838117470635105.a n = A135061 (n + 1)

end A135061

/-! ## A135061.P14517364915965133985

`A002821(n+1)+sqrt(A065733(n+1))`
-/

namespace A135061.P14517364915965133985
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002821 (n + 1) : ℝ) + Real.sqrt (A065733 (n + 1) : ℝ)

end

end A135061.P14517364915965133985

namespace A135061

/-- `A002821(n+1)+sqrt(A065733(n+1))` -/
def P14517364915965133985.Spec : Prop :=
  ∀ n, P14517364915965133985.a n = (A135061 (n + 1) : ℝ)

end A135061

/-! ## A135061.P8345415366929318926

`A002821(n+1)+A077121(n+1)-1`
-/

namespace A135061.P8345415366929318926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (n + 1) + (A077121 (n + 1) - 1)

end

end A135061.P8345415366929318926

namespace A135061

/-- `A002821(n+1)+A077121(n+1)-1` -/
def P8345415366929318926.Spec : Prop :=
  ∀ n, P8345415366929318926.a n = A135061 (n + 1)

end A135061

/-! ## A135061.P3267484857788495466

`A000035(2*n)+floor(sqrt(A184536(n+1)))`
-/

namespace A135061.P3267484857788495466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + Int.sqrt (A184536 (n + 1))

end

end A135061.P3267484857788495466

namespace A135061

/-- `A000035(2*n)+floor(sqrt(A184536(n+1)))` -/
def P3267484857788495466.Spec : Prop :=
  ∀ n, P3267484857788495466.a n = A135061 (n + 1)

end A135061

/-! ## A135061.P8500191442788089569

`A000027(floor(2*(n+1)*sqrt(n+1)))`
-/

namespace A135061.P8500191442788089569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(2 * (n + 1) : ℝ) * Real.sqrt (n + 1 : ℝ)⌋.toNat

end

end A135061.P8500191442788089569

namespace A135061

/-- `A000027(floor(2*(n+1)*sqrt(n+1)))` -/
def P8500191442788089569.Spec : Prop :=
  ∀ n, P8500191442788089569.a n = A135061 (n + 1)

end A135061

/-! ## A135061.P4356216802745814838

`A077121(n+1)+eq[0, A054848(n+1)]`
-/

namespace A135061.P4356216802745814838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A135061.P4356216802745814838

namespace A135061

/-- `A077121(n+1)+eq[0, A054848(n+1)]` -/
def P4356216802745814838.Spec : Prop :=
  ∀ n, P4356216802745814838.a n = A135061 (n + 1)

end A135061

/-! ## A135061.P3995311368837757219

`A004526(A172472(2*(n+1)))`
-/

namespace A135061.P3995311368837757219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A172472 (2 * (n + 1))).toNat

end

end A135061.P3995311368837757219

namespace A135061

/-- `A004526(A172472(2*(n+1)))` -/
def P3995311368837757219.Spec : Prop :=
  ∀ n, P3995311368837757219.a n = A135061 (n + 1)

end A135061

/-! ## A135061.P4370498212595393110

`A004526(A185546(4*n+3))`
-/

namespace A135061.P4370498212595393110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A185546 (4 * n + 3)).toNat

end

end A135061.P4370498212595393110

namespace A135061

/-- `A004526(A185546(4*n+3))` -/
def P4370498212595393110.Spec : Prop :=
  ∀ n, P4370498212595393110.a n = A135061 (n + 1)

end A135061

/-! ## A135061.P13906254961562180988

`A110654(2*floor(sqrt(A184536(n+1))))`
-/

namespace A135061.P13906254961562180988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * Int.sqrt (A184536 (n + 1))).toNat

end

end A135061.P13906254961562180988

namespace A135061

/-- `A110654(2*floor(sqrt(A184536(n+1))))` -/
def P13906254961562180988.Spec : Prop :=
  ∀ n, P13906254961562180988.a n = A135061 (n + 1)

end A135061

/-!
# A135062: Define the sequence {b_n(m)} by b_n(0)=1; b_n(m) = A000005(b_n(m-1) + n), for all m >= 1. Then a(n) is the smallest positive integer such that b_n(m) = b_n(m + a(n)) for all m > some positive integer.

The programs for A135062, there is no canonical definition to state claims against.
-/

/-! ## A135062.P8237552899253634188

`A265754(A323099(n)+A040399(n))`
-/

namespace A135062.P8237552899253634188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265754 (A323099 n + A040399 n).toNat

end

end A135062.P8237552899253634188

/-! ## A135062.P13347809819355810527

`gcd(A002260(A037279(n+1)), A188298(n+1))`
-/

namespace A135062.P13347809819355810527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (A037279 (n + 1)).toNat) (A188298 (n + 1))

end

end A135062.P13347809819355810527

/-! ## A135062.P13590299776051584155

`A260449(gcd(A156043(n+1), A317491(3*n)))`
-/

namespace A135062.P13590299776051584155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260449 (Int.gcd (A156043 (n + 1)) (A317491 (3 * n)))

end

end A135062.P13590299776051584155

/-! ## A135062.P5518425920825859664

`A351014(A090025(3*n+2)%A250120(n+3))`
-/

namespace A135062.P5518425920825859664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (Int.tmod (A090025 (3 * n + 2)) (A250120 (n + 3))).toNat

end

end A135062.P5518425920825859664

/-! ## A135062.P4652763587907035570

`A053797(A112500(2*(n+1))+A000028(3*n+1))`
-/

namespace A135062.P4652763587907035570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053797 (A112500 (2 * (n + 1)) + A000028 (3 * n + 1)).toNat

end

end A135062.P4652763587907035570

/-!
# A135063: Define the sequence {b_n(m)} by b_n(0)=0; b_n(m) = A000005(b_n(m-1)+n), for all m >= 1. Then a(n) is the smallest positive integer such that b_n(m) = b_n(m + a(n)) for all m > some positive integer.

The programs for A135063, there is no canonical definition to state claims against.
-/

/-! ## A135063.P5972778357457053613

`gcd(∑[A135059(n+2)], A135062(n+1))`
-/

namespace A135063.P5972778357457053613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135059 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A135062 (n + 1))

end

end A135063.P5972778357457053613

/-! ## A135063.P17453964488966726497

`A049076(A003872(n+1)+A000217(3*n))`
-/

namespace A135063.P17453964488966726497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (A003872 (n + 1) + A000217 (3 * n)).toNat

end

end A135063.P17453964488966726497

/-! ## A135063.P5232172480121033319

`A053735(gcd(A137151(n+1), A283117(n+1)))`
-/

namespace A135063.P5232172480121033319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (Int.gcd (A137151 (n + 1)) (A283117 (n + 1)))

end

end A135063.P5232172480121033319

/-! ## A135063.P16109725955038738984

`gcd(∑[A353057(2*n+1)], A025478(n+1))`
-/

namespace A135063.P16109725955038738984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353057 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A025478 (n + 1))

end

end A135063.P16109725955038738984

/-! ## A135063.P14380813480269523151

`gcd(A250473(A089609(2*n+1)), A306353(n+1))`
-/

namespace A135063.P14380813480269523151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A250473 (A089609 (2 * n + 1)).toNat) (A306353 (n + 1))

end

end A135063.P14380813480269523151

/-!
# A135064: Numbers n such that the quintic polynomial x^5 - 10*n*x^2 - 24*n has Galois group A_5 over rationals.

The programs for A135064, there is no canonical definition to state claims against.
-/

/-! ## A135064.P6947044761145690536

`ogf((1+8x-3x^2)/(1-3x+x^2))`
-/

namespace A135064.P6947044761145690536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -3] [1, -3, 1] n

end

end A135064.P6947044761145690536

/-! ## A135064.P8759594536411601270

`ceil(ϕ²*a(n-1))` with `a(0)=1, a(1)=11`
-/

namespace A135064.P8759594536411601270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A135064.P8759594536411601270

/-! ## A135064.P15796521800760408187

`round(ϕ²*a(n-1))` with `a(0)=1, a(1)=11`
-/

namespace A135064.P15796521800760408187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))

end

end A135064.P15796521800760408187

/-! ## A135064.P14474885806695547489

`round(a(n-1)/(2-ϕ))` with `a(0)=1, a(1)=11`
-/

namespace A135064.P14474885806695547489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (2 - Real.goldenRatio))

end

end A135064.P14474885806695547489

/-! ## A135064.P13817928676360717727

`ceil(ϕ*ϕ*a(n-1))` with `a(0)=1, a(1)=11`
-/

namespace A135064.P13817928676360717727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  ⌈Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌉

end

end A135064.P13817928676360717727

/-!
# A135065: A127733 * A007318 as infinite lower triangular matrices.

The programs for A135065, the canonical program `A135065.P17350075566062413981` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135065 has offset 0).

The definition of A135065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135065.P130636782776668497

`∑[char[∑[n]]]²*A007318(n)`
-/

namespace A135065.P130636782776668497
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * A007318 n

end

end A135065.P130636782776668497

namespace A135065

/-- `∑[char[∑[n]]]²*A007318(n)` -/
def P130636782776668497.Spec : Prop :=
  ∀ n, P130636782776668497.a n = A135065 n

end A135065

/-! ## A135065.P17350075566062413981

`A140880(n)-A003506(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A135065

/-- `A140880(n)-A003506(n+1)` -/
def P17350075566062413981.Spec : Prop :=
  ∀ n, P17350075566062413981.a n = A135065 n

theorem P17350075566062413981.correct : P17350075566062413981.Spec := by
  intro n
  simp only [A135065]

end A135065

/-! ## A135065.P14082553131742044524

`A007318(n)*A093995(n+1)`
-/

namespace A135065.P14082553131742044524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A093995 (n + 1)

end

end A135065.P14082553131742044524

namespace A135065

/-- `A007318(n)*A093995(n+1)` -/
def P14082553131742044524.Spec : Prop :=
  ∀ n, P14082553131742044524.a n = A135065 n

end A135065

/-! ## A135065.P14079322560584755425

`A074909(n)*A095833(n+1)`
-/

namespace A135065.P14079322560584755425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A095833 (n + 1)

end

end A135065.P14079322560584755425

namespace A135065

/-- `A074909(n)*A095833(n+1)` -/
def P14079322560584755425.Spec : Prop :=
  ∀ n, P14079322560584755425.a n = A135065 n

end A135065

/-! ## A135065.P17250820069428456745

`A075362(n+1)*A135278(n)`
-/

namespace A135065.P17250820069428456745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) * A135278 n

end

end A135065.P17250820069428456745

namespace A135065

/-- `A075362(n+1)*A135278(n)` -/
def P17250820069428456745.Spec : Prop :=
  ∀ n, P17250820069428456745.a n = A135065 n

end A135065

/-! ## A135065.P5542725753807152389

`A007318(n)*(A003056(n)+1)²`
-/

namespace A135065.P5542725753807152389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * (A003056 n + 1) ^ 2

end

end A135065.P5542725753807152389

namespace A135065

/-- `A007318(n)*(A003056(n)+1)²` -/
def P5542725753807152389.Spec : Prop :=
  ∀ n, P5542725753807152389.a n = A135065 n

end A135065

/-! ## A135065.P15539664891352866792

`A003506(n+1)²/A007318(n)`
-/

namespace A135065.P15539664891352866792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003506 (n + 1) ^ 2 : ℚ) / (A007318 n : ℚ)

end

end A135065.P15539664891352866792

namespace A135065

/-- `A003506(n+1)²/A007318(n)` -/
def P15539664891352866792.Spec : Prop :=
  ∀ n, P15539664891352866792.a n = (A135065 n : ℚ)

end A135065

/-! ## A135065.P11525057328608141273

`∑[A010054(n)]*A003506(n+1)`
-/

namespace A135065.P11525057328608141273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A003506 (n + 1)

end

end A135065.P11525057328608141273

namespace A135065

/-- `∑[A010054(n)]*A003506(n+1)` -/
def P11525057328608141273.Spec : Prop :=
  ∀ n, P11525057328608141273.a n = A135065 n

end A135065

/-! ## A135065.P17884841494187588409

`A002024(n+1)*A003506(n+1)`
-/

namespace A135065.P17884841494187588409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A003506 (n + 1)

end

end A135065.P17884841494187588409

namespace A135065

/-- `A002024(n+1)*A003506(n+1)` -/
def P17884841494187588409.Spec : Prop :=
  ∀ n, P17884841494187588409.a n = A135065 n

end A135065

/-! ## A135065.P15921220520579906944

`(A003056(n)+1)*A003506(n+1)`
-/

namespace A135065.P15921220520579906944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * A003506 (n + 1)

end

end A135065.P15921220520579906944

namespace A135065

/-- `(A003056(n)+1)*A003506(n+1)` -/
def P15921220520579906944.Spec : Prop :=
  ∀ n, P15921220520579906944.a n = A135065 n

end A135065

/-! ## A135065.P8452084887816840504

`2*A094305(n)-A003506(n+1)`
-/

namespace A135065.P8452084887816840504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094305 n - A003506 (n + 1)

end

end A135065.P8452084887816840504

namespace A135065

/-- `2*A094305(n)-A003506(n+1)` -/
def P8452084887816840504.Spec : Prop :=
  ∀ n, P8452084887816840504.a n = A135065 n

end A135065

/-! ## A135065.P2480492056531676036

`abs(A002024(n+1)²*A108086(n))`
-/

namespace A135065.P2480492056531676036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002024 (n + 1) ^ 2 * A108086 n|

end

end A135065.P2480492056531676036

namespace A135065

/-- `abs(A002024(n+1)²*A108086(n))` -/
def P2480492056531676036.Spec : Prop :=
  ∀ n, P2480492056531676036.a n = A135065 n

end A135065

/-! ## A135065.P9715531145720056496

`abs(A002024(n+1)²*A130595(n))`
-/

namespace A135065.P9715531145720056496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002024 (n + 1) ^ 2 * A130595 n|

end

end A135065.P9715531145720056496

namespace A135065

/-- `abs(A002024(n+1)²*A130595(n))` -/
def P9715531145720056496.Spec : Prop :=
  ∀ n, P9715531145720056496.a n = A135065 n

end A135065

/-! ## A135065.P7919242079117962652

`A002024(n+1)²*sqrt(A008459(n))`
-/

namespace A135065.P7919242079117962652
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) ^ 2 : ℝ) * Real.sqrt (A008459 n : ℝ)

end

end A135065.P7919242079117962652

namespace A135065

/-- `A002024(n+1)²*sqrt(A008459(n))` -/
def P7919242079117962652.Spec : Prop :=
  ∀ n, P7919242079117962652.a n = (A135065 n : ℝ)

end A135065

/-! ## A135065.P18149072176801870676

`A002024(n+1)²*Δ[A102363(n)]`
-/

namespace A135065.P18149072176801870676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 * (f1 (n + 1) - f1 n)

end

end A135065.P18149072176801870676

namespace A135065

/-- `A002024(n+1)²*Δ[A102363(n)]` -/
def P18149072176801870676.Spec : Prop :=
  ∀ n, P18149072176801870676.a n = A135065 n

end A135065

/-! ## A135065.P14624184719658316807

`(A014473(n)+1)*A002024(n+1)²`
-/

namespace A135065.P14624184719658316807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A002024 (n + 1) ^ 2

end

end A135065.P14624184719658316807

namespace A135065

/-- `(A014473(n)+1)*A002024(n+1)²` -/
def P14624184719658316807.Spec : Prop :=
  ∀ n, P14624184719658316807.a n = A135065 n

end A135065

/-! ## A135065.P374645863590575018

`A002024(n+1)²/2*A028326(n)`
-/

namespace A135065.P374645863590575018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) ^ 2 : ℚ) / 2 * (A028326 n : ℚ)

end

end A135065.P374645863590575018

namespace A135065

/-- `A002024(n+1)²/2*A028326(n)` -/
def P374645863590575018.Spec : Prop :=
  ∀ n, P374645863590575018.a n = (A135065 n : ℚ)

end A135065

/-! ## A135065.P12815748361593150808

`(A003057(n+2)-1)*A003506(n+1)`
-/

namespace A135065.P12815748361593150808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) - 1) * A003506 (n + 1)

end

end A135065.P12815748361593150808

namespace A135065

/-- `(A003057(n+2)-1)*A003506(n+1)` -/
def P12815748361593150808.Spec : Prop :=
  ∀ n, P12815748361593150808.a n = A135065 n

end A135065

/-! ## A135065.P7294757364001881035

`A002024(n+1)²*ceil(A134059(n)/3)`
-/

namespace A135065.P7294757364001881035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 * ⌈(A134059 n : ℚ) / 3⌉

end

end A135065.P7294757364001881035

namespace A135065

/-- `A002024(n+1)²*ceil(A134059(n)/3)` -/
def P7294757364001881035.Spec : Prop :=
  ∀ n, P7294757364001881035.a n = A135065 n

end A135065

/-! ## A135065.P17683611479702095578

`A007318(n)*A000290(A003056(n)+1)`
-/

namespace A135065.P17683611479702095578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000290 (A003056 n + 1).toNat

end

end A135065.P17683611479702095578

namespace A135065

/-- `A007318(n)*A000290(A003056(n)+1)` -/
def P17683611479702095578.Spec : Prop :=
  ∀ n, P17683611479702095578.a n = A135065 n

end A135065

/-!
# A135068: a(n) = [x^(2^n+n-1)] (x + x^2 + x^4 + x^8 + ... + x^2^n)^n for n>=1.

The programs for A135068, there is no canonical definition to state claims against.
-/

/-! ## A135068.P1041309259747844408

`A135069(n+1)*(n+1)`
-/

namespace A135068.P1041309259747844408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135069 (n + 1) * (n + 1 : ℤ)

end

end A135068.P1041309259747844408

/-! ## A135068.P3213960364211917817

`record[A135069(A193592(n))*A193592(n)]`
-/

namespace A135068.P3213960364211917817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135069 (A193592 n).toNat * A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135068.P3213960364211917817

/-! ## A135068.P3537256817482914426

`(A144691(n)-A064834(A202582(n)))*A348553(n)`
-/

namespace A135068.P3537256817482914426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144691 n - A064834 (A202582 n).toNat) * A348553 n

end

end A135068.P3537256817482914426

/-!
# A135069: a(n) = [x^(2^n+n-1)] (x + x^2 + x^4 + x^8 + ... + x^(2^n))^n / n for n>=1.

The programs for A135069, there is no canonical definition to state claims against.
-/

/-! ## A135069.P7811982434816205178

`A135068(n+1)/(n+1)`
-/

namespace A135069.P7811982434816205178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135068 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A135069.P7811982434816205178

/-! ## A135069.P11166634748240863563

`A144691(n)-A064834(A202582(n))`
-/

namespace A135069.P11166634748240863563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144691 n - A064834 (A202582 n).toNat

end

end A135069.P11166634748240863563

/-! ## A135069.P14980832567366083870

`A144691(n)-A004018(A062384(3*(n+1)))`
-/

namespace A135069.P14980832567366083870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144691 n - A004018 (A062384 (3 * (n + 1))).toNat

end

end A135069.P14980832567366083870

/-!
# A135070: a(n) = [x^(2^n+n-2)] (x + x^2 + x^4 + x^8 + ... + x^(2^n))^n for n>=1.

The programs for A135070, there is no canonical definition to state claims against.
-/

/-! ## A135070.P16206280237669890145

`A141419(A305307(n)+A101836(n))`
-/

namespace A135070.P16206280237669890145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (A305307 n + A101836 n).toNat

end

end A135070.P16206280237669890145

/-! ## A135070.P9501993610869211145

`A006906(n)*A254107(A003266(n))`
-/

namespace A135070.P9501993610869211145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006906 n * A254107 (A003266 n).toNat

end

end A135070.P9501993610869211145

/-!
# A135071: a(n) = [x^(2^n+n-2)] (x + x^2 + x^4 + x^8 + ... + x^(2^n))^n /(n*(n-1)/2) for n>=2.

The programs for A135071, there is no canonical definition to state claims against.
-/

/-! ## A135071.P9883558667895385060

`A135070(n+2)/((n+2)*(n+1)/2)`
-/

namespace A135071.P9883558667895385060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135070 (n + 2) : ℚ) / ((n + 2 : ℚ) * ((n + 1 : ℚ) / 2))

end

end A135071.P9883558667895385060

/-! ## A135071.P6987743538993000704

`floor(A135070(n+2)/A000217(n+1))`
-/

namespace A135071.P6987743538993000704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135070 (n + 2) : ℚ) / (A000217 (n + 1) : ℚ)⌋

end

end A135071.P6987743538993000704

/-! ## A135071.P10793644160931826318

`ceil(A135070(n+2)/A161680(n+2))`
-/

namespace A135071.P10793644160931826318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135070 (n + 2) : ℚ) / (A161680 (n + 2) : ℚ)⌉

end

end A135071.P10793644160931826318

/-! ## A135071.P12564783141675353971

`A000027(A135070(n+2)/C(n+2, 2))`
-/

namespace A135071.P12564783141675353971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A135070 (n + 2) : ℚ) / (Nat.choose (n + 2) 2 : ℚ))).toNat

end

end A135071.P12564783141675353971

/-!
# A135072: Minimal values of m associated with A135061.

The programs for A135072, there is no canonical definition to state claims against.
-/

/-! ## A135072.P13688994777674935392

`∑[A355792(A276086(n))]+and(1, n)`
-/

namespace A135072.P13688994777674935392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355792 (A276086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.land 1 n : ℤ)

end

end A135072.P13688994777674935392

/-!
# A135074: A binomial recursion: a(n) is the coefficient of x in z(n), where z(1) = x and z(n) = 1 + Sum_{k=1..n-1} (binomial(n,k) + 1)*z(k) for n > 1.

The programs for A135074, there is no canonical definition to state claims against.
-/

/-! ## A135074.P16631370946327964563

`A247784(Δ[A088501(n)])`
-/

namespace A135074.P16631370946327964563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247784 (f1 (n + 1) - f1 n).toNat

end

end A135074.P16631370946327964563

/-!
# A135075: A binomial recursion : a(n) = q(n) (see formula).

The programs for A135075, there is no canonical definition to state claims against.
-/

/-! ## A135075.P3564652509852640163

`A277565(n+1)-A099383(∑[n])`
-/

namespace A135075.P3564652509852640163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277565 (n + 1) - A099383 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135075.P3564652509852640163

/-! ## A135075.P6286669721114944509

`and(A000040(A002110(n)), A318002(n))`
-/

namespace A135075.P6286669721114944509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (A002110 n).toNat) (A318002 n)

end

end A135075.P6286669721114944509

/-!
# A135076: Primes appearing in A001370.

The programs for A135076, the canonical program `A135076.P11264756244026486480` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135076 has offset 1).

The definition of A135076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1788 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135076.P11264756244026486480

`p?[A001370(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135076

/-- `p?[A001370(n)]` -/
def P11264756244026486480.Spec : Prop :=
  ∀ n, P11264756244026486480.a n = A135076 (n + 1)

theorem P11264756244026486480.correct : P11264756244026486480.Spec := by
  intro n
  simp only [A135076, Nat.add_sub_cancel]

end A135076

/-! ## A135076.P10236269594651598830

`A001370(A076203(n+1))`
-/

namespace A135076.P10236269594651598830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (A076203 (n + 1)).toNat

end

end A135076.P10236269594651598830

namespace A135076

/-- `A001370(A076203(n+1))` -/
def P10236269594651598830.Spec : Prop :=
  ∀ n, P10236269594651598830.a n = A135076 (n + 1)

end A135076

/-! ## A135076.P17468851699147149985

`filter[A001370(n), A010051(#)]`
-/

namespace A135076.P17468851699147149985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A135076.P17468851699147149985

namespace A135076

/-- `filter[A001370(n), A010051(#)]` -/
def P17468851699147149985.Spec : Prop :=
  ∀ n, P17468851699147149985.a n = A135076 (n + 1)

end A135076

/-! ## A135076.P3188308804093722687

`A001370(eq[1, A001222(A001370(n))])`
-/

namespace A135076.P3188308804093722687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001370 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135076.P3188308804093722687

namespace A135076

/-- `A001370(eq[1, A001222(A001370(n))])` -/
def P3188308804093722687.Spec : Prop :=
  ∀ n, P3188308804093722687.a n = A135076 (n + 1)

end A135076

/-! ## A135076.P10393986654527751611

`A001370(eq[2, A000005(A001370(n))])`
-/

namespace A135076.P10393986654527751611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001370 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135076.P10393986654527751611

namespace A135076

/-- `A001370(eq[2, A000005(A001370(n))])` -/
def P10393986654527751611.Spec : Prop :=
  ∀ n, P10393986654527751611.a n = A135076 (n + 1)

end A135076

/-! ## A135076.P2886060305637331581

`A001370(eq[2, A061142(A001370(n))])`
-/

namespace A135076.P2886060305637331581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A001370 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135076.P2886060305637331581

namespace A135076

/-- `A001370(eq[2, A061142(A001370(n))])` -/
def P2886060305637331581.Spec : Prop :=
  ∀ n, P2886060305637331581.a n = A135076 (n + 1)

end A135076

/-! ## A135076.P17589280335993391835

`filter[A001370(n+1), A080339(#)]`
-/

namespace A135076.P17589280335993391835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A135076.P17589280335993391835

namespace A135076

/-- `filter[A001370(n+1), A080339(#)]` -/
def P17589280335993391835.Spec : Prop :=
  ∀ n, P17589280335993391835.a n = A135076 (n + 1)

end A135076

/-! ## A135076.P3586952974339602049

`A001370(eq[2, A046523(A001370(n))])`
-/

namespace A135076.P3586952974339602049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A001370 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135076.P3586952974339602049

namespace A135076

/-- `A001370(eq[2, A046523(A001370(n))])` -/
def P3586952974339602049.Spec : Prop :=
  ∀ n, P3586952974339602049.a n = A135076 (n + 1)

end A135076

/-! ## A135076.P14972123969605954285

`p?[∑{digits}[2^n, #]]`
-/

namespace A135076.P14972123969605954285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A135076.P14972123969605954285

namespace A135076

/-- `p?[∑{digits}[2^n, #]]` -/
def P14972123969605954285.Spec : Prop :=
  ∀ n, (P14972123969605954285.a n : ℤ) = A135076 (n + 1)

end A135076

/-! ## A135076.P15756261106675263698

`p?[∑{digits}[A000225(n), #]+1]`
-/

namespace A135076.P15756261106675263698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A135076.P15756261106675263698

namespace A135076

/-- `p?[∑{digits}[A000225(n), #]+1]` -/
def P15756261106675263698.Spec : Prop :=
  ∀ n, (P15756261106675263698.a n : ℤ) = A135076 (n + 1)

end A135076

/-! ## A135076.P11248000550682855242

`p?[∑{digits}[1-A000079(n), #]+1]`
-/

namespace A135076.P11248000550682855242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000079 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A135076.P11248000550682855242

namespace A135076

/-- `p?[∑{digits}[1-A000079(n), #]+1]` -/
def P11248000550682855242.Spec : Prop :=
  ∀ n, (P11248000550682855242.a n : ℤ) = A135076 (n + 1)

end A135076

/-!
# A135077: E.g.f. A(x) = 1 + Sum_{n>=1} (1/n!)*Product_{k=0..n-1} [exp(2^k*x) - 1].

The programs for A135077, there is no canonical definition to state claims against.
-/

/-! ## A135077.P7835204941614003550

`A195185(C(∑[n], n))`
-/

namespace A135077.P7835204941614003550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195185 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A135077.P7835204941614003550

/-!
# A135078: E.g.f. A(x) = 1 + Sum_{n>=1} (1/n!)*Product_{k=0..n-1} [exp(3^k*x) - 1].

The programs for A135078, there is no canonical definition to state claims against.
-/

/-! ## A135078.P12743970820290599644

`A320503(A002869(n)²)`
-/

namespace A135078.P12743970820290599644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320503 (A002869 n ^ 2).toNat

end

end A135078.P12743970820290599644

/-!
# A135079: E.g.f. A(x) = Sum_{n>=0} exp(3^n*x)*x^n/n!.

The programs for A135079, there is no canonical definition to state claims against.
-/

/-! ## A135079.P10745805305601025132

`2^n*A172389(n)`
-/

namespace A135079.P10745805305601025132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A172389 n

end

end A135079.P10745805305601025132

/-! ## A135079.P7828238001379497711

`gcd(2, A004277(n))*A193198(n)`
-/

namespace A135079.P7828238001379497711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A004277 n) : ℤ) * A193198 n

end

end A135079.P7828238001379497711

/-! ## A135079.P6441098407675432026

`A000079(n)/A172389(n)^-1`
-/

namespace A135079.P6441098407675432026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A172389 n : ℚ) ^ (-1 : ℤ)

end

end A135079.P6441098407675432026

/-! ## A135079.P339771743764983366

`A014963(A000079(n))*A193198(n)`
-/

namespace A135079.P339771743764983366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000079 n).toNat * A193198 n

end

end A135079.P339771743764983366

/-!
# A135080: Triangle, read by rows, that transforms diagonals in the table of coefficients in the successive iterations of x+x^2 (cf. A122888).

The programs for A135080, there is no canonical definition to state claims against.
-/

/-! ## A135080.P4893368356700833528

`A321621(A178655(n)+A130534(n))`
-/

namespace A135080.P4893368356700833528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321621 (A178655 n + A130534 n).toNat

end

end A135080.P4893368356700833528

/-! ## A135080.P12034526739596530619

`A200370(A005286(n+3)%A283857(n+2))`
-/

namespace A135080.P12034526739596530619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (Int.tmod (A005286 (n + 3)) (A283857 (n + 2))).toNat

end

end A135080.P12034526739596530619

/-!
# A135081: Column 0 of triangle A135080.

The programs for A135081, there is no canonical definition to state claims against.
-/

/-! ## A135081.P15751018043217513590

`A135080(∑[n])`
-/

namespace A135081.P15751018043217513590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135080 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135081.P15751018043217513590

/-! ## A135081.P3671052079119379445

`A135080(A000217(n))+char[49]`
-/

namespace A135081.P3671052079119379445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135080 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A135081.P3671052079119379445

/-! ## A135081.P8874636782304796590

`gcd(A000038(n), A135080(A000217(n)))`
-/

namespace A135081.P8874636782304796590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A135080 (A000217 n).toNat)

end

end A135081.P8874636782304796590

/-! ## A135081.P15535102165881089898

`lcm(A130782(n), A135080(A000217(n)))`
-/

namespace A135081.P15535102165881089898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130782 n) (A135080 (A000217 n).toNat)

end

end A135081.P15535102165881089898

/-! ## A135081.P16122237810775143509

`or(A000007(n), A135080(A000217(n)))`
-/

namespace A135081.P16122237810775143509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A135080 (A000217 n).toNat)

end

end A135081.P16122237810775143509

/-!
# A135082: Column 1 of triangle A135080.

The programs for A135082, there is no canonical definition to state claims against.
-/

/-! ## A135082.P13238313560122800209

`A135080(∑[n+1]+1)`
-/

namespace A135082.P13238313560122800209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135080 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A135082.P13238313560122800209

/-! ## A135082.P13925895233662537802

`record[A135080(∑[A035214(n)])]`
-/

namespace A135082.P13925895233662537802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135080 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135082.P13925895233662537802

/-! ## A135082.P18438232349672366043

`record[A135080(A056536(n+1))]`
-/

namespace A135082.P18438232349672366043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135080 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135082.P18438232349672366043

/-! ## A135082.P16823760639778618161

`record[A135080(eq[1, A035214(n)])]`
-/

namespace A135082.P16823760639778618161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135080 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135082.P16823760639778618161

/-! ## A135082.P5965359497184142199

`record[A133607(n)*A135080(n)]`
-/

namespace A135082.P5965359497184142199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133607 n * A135080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135082.P5965359497184142199

/-!
# A135083: Column 2 of triangle A135080.

The programs for A135083, there is no canonical definition to state claims against.
-/

/-! ## A135083.P14736989911356340646

`A135080(∑[n+2]+3)`
-/

namespace A135083.P14736989911356340646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135080 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A135083.P14736989911356340646

/-! ## A135083.P11533079153571180750

`record[and(A133607(n), A135080(n))]`
-/

namespace A135083.P11533079153571180750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133607 n) (A135080 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135083.P11533079153571180750

/-! ## A135083.P12856925708789958219

`record[gcd(A008290(n), A135080(n+4))]`
-/

namespace A135083.P12856925708789958219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A135080 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135083.P12856925708789958219

/-! ## A135083.P3134899548645910060

`A135080(A340266(n+1))^A055253(A055253(n))`
-/

namespace A135083.P3134899548645910060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135080 (A340266 (n + 1)).toNat : ℚ) ^ (A055253 (A055253 n).toNat : ℤ)

end

end A135083.P3134899548645910060

/-! ## A135083.P16856822791367404560

`A135080(A340266(n+1))+A008683(A055079(2*n+5))`
-/

namespace A135083.P16856822791367404560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135080 (A340266 (n + 1)).toNat + A008683 (A055079 (2 * n + 5)).toNat

end

end A135083.P16856822791367404560

/-!
# A135084: 

The programs for A135084, there is no canonical definition to state claims against.
-/

/-! ## A135084.P1814449179907930322

`A343254(4^n)`
-/

namespace A135084.P1814449179907930322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343254 (4 ^ n)

end

end A135084.P1814449179907930322

/-!
# A135085: a(n) = A000110(2^n).

The programs for A135085, there is no canonical definition to state claims against.
-/

/-! ## A135085.P12997960903675418304

`A000110(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135085.P12997960903675418304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (2 ^ n)

end

end A135085.P12997960903675418304

/-! ## A135085.P13421870770127783059

`abs(A292935(2^n))`
-/

namespace A135085.P13421870770127783059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 (2 ^ n)|

end

end A135085.P13421870770127783059

/-! ## A135085.P8558210906240789077

`A188164(∑[2^n])`
-/

namespace A135085.P8558210906240789077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188164 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135085.P8558210906240789077

/-!
# A135086: Triangle, antidiagonals of an array formed by A000012 * A130321(transform).

The programs for A135086, there is no canonical definition to state claims against.
-/

/-! ## A135086.P413420994074436609

`abs(A115450(A061579(n)))`
-/

namespace A135086.P413420994074436609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115450 (A061579 n).toNat|

end

end A135086.P413420994074436609

/-! ## A135086.P9231414353454635623

`A332011(A204985(n+1))`
-/

namespace A135086.P9231414353454635623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332011 (A204985 (n + 1)).toNat

end

end A135086.P9231414353454635623

/-! ## A135086.P3179161658530638347

`A332011(2*A130328(n))`
-/

namespace A135086.P3179161658530638347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332011 (2 * A130328 n).toNat

end

end A135086.P3179161658530638347

/-! ## A135086.P9771942150402745440

`floor(A130328(n)/A130321(n))`
-/

namespace A135086.P9771942150402745440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130328 n : ℚ) / (A130321 n : ℚ)⌋

end

end A135086.P9771942150402745440

/-! ## A135086.P11352009982527782198

`floor(A130328(n)/sqrt(A262616(n)))`
-/

namespace A135086.P11352009982527782198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130328 n : ℝ) / Real.sqrt (A262616 n : ℝ)⌋

end

end A135086.P11352009982527782198

/-! ## A135086.P1228094121116595660

`∑{d}[A144464(n), A059268(n)/#]`
-/

namespace A135086.P1228094121116595660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A059268 n : ℚ) / (d : ℚ)

end

end A135086.P1228094121116595660

/-! ## A135086.P10647196231979343835

`floor(A204985(n+1)/A090988(n+1))`
-/

namespace A135086.P10647196231979343835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A204985 (n + 1) : ℚ) / (A090988 (n + 1) : ℚ)⌋

end

end A135086.P10647196231979343835

/-! ## A135086.P18320713860504860166

`gcd(A000038(n), A115450(A061579(n)))`
-/

namespace A135086.P18320713860504860166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A115450 (A061579 n).toNat)

end

end A135086.P18320713860504860166

/-! ## A135086.P5167493006988507206

`∑{d}[A115450(A061579(n)), A000010(#)]`
-/

namespace A135086.P5167493006988507206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115450 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A135086.P5167493006988507206

/-!
# A135087: Triangle T(n, k) = 2*A134058(n, k) - 1, read by rows.

The programs for A135087, the canonical program `A135087.P6451622044258782504` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135087 has offset 0).

The definition of A135087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135087.P6451622044258782504

`2*A134058(n)-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A135087

/-- `2*A134058(n)-1` -/
def P6451622044258782504.Spec : Prop :=
  ∀ n, P6451622044258782504.a n = A135087 n

theorem P6451622044258782504.correct : P6451622044258782504.Spec := by
  intro n
  simp only [A135087]

end A135087

/-! ## A135087.P14625995897430308777

`or(1, A132200(n)-1)`
-/

namespace A135087.P14625995897430308777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A132200 n - 1)

end

end A135087.P14625995897430308777

namespace A135087

/-- `or(1, A132200(n)-1)` -/
def P14625995897430308777.Spec : Prop :=
  ∀ n, P14625995897430308777.a n = A135087 n

end A135087

/-! ## A135087.P17382274299125718015

`n-(abs(1-n)-2*A109128(n))`
-/

namespace A135087.P17382274299125718015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (|1 - (n : ℤ)| - 2 * A109128 n)

end

end A135087.P17382274299125718015

namespace A135087

/-- `n-(abs(1-n)-2*A109128(n))` -/
def P17382274299125718015.Spec : Prop :=
  ∀ n, P17382274299125718015.a n = A135087 n

end A135087

/-! ## A135087.P8875139771855355035

`(ceil(abs(sin(n)))+1)*A028326(n)-1`
-/

namespace A135087.P8875139771855355035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈|Real.sin (n : ℝ)|⌉ + 1) * A028326 n - 1

end

end A135087.P8875139771855355035

namespace A135087

/-- `(ceil(abs(sin(n)))+1)*A028326(n)-1` -/
def P8875139771855355035.Spec : Prop :=
  ∀ n, P8875139771855355035.a n = A135087 n

end A135087

/-! ## A135087.P6072492377542055103

`A134059(n)+A014473(n)`
-/

namespace A135087.P6072492377542055103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 n + A014473 n

end

end A135087.P6072492377542055103

namespace A135087

/-- `A134059(n)+A014473(n)` -/
def P6072492377542055103.Spec : Prop :=
  ∀ n, P6072492377542055103.a n = A135087 n

end A135087

/-! ## A135087.P2144910880328723052

`A132200(n)+A057428(n)`
-/

namespace A135087.P2144910880328723052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132200 n + A057428 n

end

end A135087.P2144910880328723052

namespace A135087

/-- `A132200(n)+A057428(n)` -/
def P2144910880328723052.Spec : Prop :=
  ∀ n, P2144910880328723052.a n = A135087 n

end A135087

/-! ## A135087.P13698281267342122761

`A132200(n)-A057427(n)`
-/

namespace A135087.P13698281267342122761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132200 n - A057427 n

end

end A135087.P13698281267342122761

namespace A135087

/-- `A132200(n)-A057427(n)` -/
def P13698281267342122761.Spec : Prop :=
  ∀ n, P13698281267342122761.a n = A135087 n

end A135087

/-! ## A135087.P17167686851101641556

`A029600(n)+A029653(n)-1`
-/

namespace A135087.P17167686851101641556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 n + (A029653 n - 1)

end

end A135087.P17167686851101641556

namespace A135087

/-- `A029600(n)+A029653(n)-1` -/
def P17167686851101641556.Spec : Prop :=
  ∀ n, P17167686851101641556.a n = A135087 n

end A135087

/-! ## A135087.P11353826979070377300

`A000007(n)+A132200(n)-1`
-/

namespace A135087.P11353826979070377300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A132200 n - 1)

end

end A135087.P11353826979070377300

namespace A135087

/-- `A000007(n)+A132200(n)-1` -/
def P11353826979070377300.Spec : Prop :=
  ∀ n, P11353826979070377300.a n = A135087 n

end A135087

/-! ## A135087.P10411161448793514036

`A007318(n)+A134059(n)-1`
-/

namespace A135087.P10411161448793514036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A134059 n - 1)

end

end A135087.P10411161448793514036

namespace A135087

/-- `A007318(n)+A134059(n)-1` -/
def P10411161448793514036.Spec : Prop :=
  ∀ n, P10411161448793514036.a n = A135087 n

end A135087

/-! ## A135087.P1466192948315539259

`A131061(n)-2*A057428(n)`
-/

namespace A135087.P1466192948315539259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131061 n - 2 * A057428 n

end

end A135087.P1466192948315539259

namespace A135087

/-- `A131061(n)-2*A057428(n)` -/
def P1466192948315539259.Spec : Prop :=
  ∀ n, P1466192948315539259.a n = A135087 n

end A135087

/-! ## A135087.P4636342620042273795

`(2-A000007(n))*A028326(n)-1`
-/

namespace A135087.P4636342620042273795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A028326 n - 1

end

end A135087.P4636342620042273795

namespace A135087

/-- `(2-A000007(n))*A028326(n)-1` -/
def P4636342620042273795.Spec : Prop :=
  ∀ n, P4636342620042273795.a n = A135087 n

end A135087

/-! ## A135087.P14152251468396219979

`2*lcm(A020903(n+1), A124927(n))-1`
-/

namespace A135087.P14152251468396219979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Int.lcm (A020903 (n + 1)) (A124927 n) : ℤ) - 1

end

end A135087.P14152251468396219979

namespace A135087

/-- `2*lcm(A020903(n+1), A124927(n))-1` -/
def P14152251468396219979.Spec : Prop :=
  ∀ n, P14152251468396219979.a n = A135087 n

end A135087

/-! ## A135087.P430736731138137891

`A132200(n)-A097805(A132200(n)/A134058(n))`
-/

namespace A135087.P430736731138137891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132200 n - A097805 (SequenceMachineLib.roundAway ((A132200 n : ℚ) / (A134058 n : ℚ))).toNat

end

end A135087.P430736731138137891

namespace A135087

/-- `A132200(n)-A097805(A132200(n)/A134058(n))` -/
def P430736731138137891.Spec : Prop :=
  ∀ n, P430736731138137891.a n = A135087 n

end A135087

/-! ## A135087.P1575337126399851550

`A093560(A061579(n))+A093560(n)-1`
-/

namespace A135087.P1575337126399851550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (A061579 n).toNat + (A093560 n - 1)

end

end A135087.P1575337126399851550

namespace A135087

/-- `A093560(A061579(n))+A093560(n)-1` -/
def P1575337126399851550.Spec : Prop :=
  ∀ n, P1575337126399851550.a n = A135087 n

end A135087

/-! ## A135087.P3656242139870876339

`A134059(n)+A176348(n)/A176346(n)-1`
-/

namespace A135087.P3656242139870876339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 n : ℚ) + ((A176348 n : ℚ) / (A176346 n : ℚ) - 1)

end

end A135087.P3656242139870876339

namespace A135087

/-- `A134059(n)+A176348(n)/A176346(n)-1` -/
def P3656242139870876339.Spec : Prop :=
  ∀ n, P3656242139870876339.a n = (A135087 n : ℚ)

end A135087

/-! ## A135087.P6547670936835643600

`2*A007318(n)*A246063(A210067(2*n))-1`
-/

namespace A135087.P6547670936835643600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007318 n * A246063 (A210067 (2 * n)).toNat) - 1

end

end A135087.P6547670936835643600

namespace A135087

/-- `2*A007318(n)*A246063(A210067(2*n))-1` -/
def P6547670936835643600.Spec : Prop :=
  ∀ n, P6547670936835643600.a n = A135087 n

end A135087

/-! ## A135087.P7207159884775046003

`2*gcd(A002182(n+1), A028326(n))-1`
-/

namespace A135087.P7207159884775046003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Int.gcd (A002182 (n + 1)) (A028326 n) : ℤ) - 1

end

end A135087.P7207159884775046003

namespace A135087

/-- `2*gcd(A002182(n+1), A028326(n))-1` -/
def P7207159884775046003.Spec : Prop :=
  ∀ n, P7207159884775046003.a n = A135087 n

end A135087

/-!
# A135088: Number of digits between successive occurrences of digit 1 in decimal representation of Pi.

The programs for A135088, there is no canonical definition to state claims against.
-/

/-! ## A135088.P5431709170600210692

`Δ[A037000(n+1)]-1`
-/

namespace A135088.P5431709170600210692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A135088.P5431709170600210692

/-! ## A135088.P5493691985947010306

`A037000(n+2)-(A037000(n+1)+1)`
-/

namespace A135088.P5493691985947010306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 2) - (A037000 (n + 1) + 1)

end

end A135088.P5493691985947010306

/-! ## A135088.P1616326292018299388

`A037000(n+2)-A053745(n+1)`
-/

namespace A135088.P1616326292018299388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037000 (n + 2) - A053745 (n + 1)

end

end A135088.P1616326292018299388

/-! ## A135088.P14126416093575126618

`Δ[A053745(n+1)]-1`
-/

namespace A135088.P14126416093575126618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A135088.P14126416093575126618

/-! ## A135088.P9637700065318595222

`Δ[eq[1, A000796(n)]]-1`
-/

namespace A135088.P9637700065318595222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A135088.P9637700065318595222

/-! ## A135088.P14300467113816942156

`Δ[A065254(A017281(n))]-1`
-/

namespace A135088.P14300467113816942156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A135088.P14300467113816942156

/-!
# A135089: Triangle T(n,k) = 5*binomial(n,k) with T(0,0) = 1, read by rows.

The programs for A135089, the canonical program `A135089.P9007722127279209499` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135089 has offset 0).

The definition of A135089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135089.P9007722127279209499

`floor(5*A134059(n)/3)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A135089

/-- `floor(5*A134059(n)/3)` -/
def P9007722127279209499.Spec : Prop :=
  ∀ n, P9007722127279209499.a n = A135089 n

theorem P9007722127279209499.correct : P9007722127279209499.Spec := by
  intro n
  simp only [A135089]

end A135089

/-! ## A135089.P12983103114783005793

`5%(6*n+2)*A007318(n)`
-/

namespace A135089.P12983103114783005793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((5 % (6 * n + 2) : ℕ) : ℤ) * A007318 n

end

end A135089.P12983103114783005793

namespace A135089

/-- `5%(6*n+2)*A007318(n)` -/
def P12983103114783005793.Spec : Prop :=
  ∀ n, P12983103114783005793.a n = A135089 n

end A135089

/-! ## A135089.P2850448911389298731

`2*A134059(n)-A007318(n)`
-/

namespace A135089.P2850448911389298731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134059 n - A007318 n

end

end A135089.P2850448911389298731

namespace A135089

/-- `2*A134059(n)-A007318(n)` -/
def P2850448911389298731.Spec : Prop :=
  ∀ n, P2850448911389298731.a n = A135089 n

end A135089

/-! ## A135089.P2653277244963471232

`2*A132200(n)-A134059(n)`
-/

namespace A135089.P2653277244963471232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132200 n - A134059 n

end

end A135089.P2653277244963471232

namespace A135089

/-- `2*A132200(n)-A134059(n)` -/
def P2653277244963471232.Spec : Prop :=
  ∀ n, P2653277244963471232.a n = A135089 n

end A135089

/-! ## A135089.P11875379628545233240

`A131063(n)+4*A057427(n)`
-/

namespace A135089.P11875379628545233240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131063 n + 4 * A057427 n

end

end A135089.P11875379628545233240

namespace A135089

/-- `A131063(n)+4*A057427(n)` -/
def P11875379628545233240.Spec : Prop :=
  ∀ n, P11875379628545233240.a n = A135089 n

end A135089

/-! ## A135089.P11801037524207014040

`gcd(5, A064974(n+1))*A007318(n)`
-/

namespace A135089.P11801037524207014040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (A064974 (n + 1)) : ℤ) * A007318 n

end

end A135089.P11801037524207014040

namespace A135089

/-- `gcd(5, A064974(n+1))*A007318(n)` -/
def P11801037524207014040.Spec : Prop :=
  ∀ n, P11801037524207014040.a n = A135089 n

end A135089

/-! ## A135089.P16112547751973334788

`A007318(n)*A228357(round(n/(n+1))+1)`
-/

namespace A135089.P16112547751973334788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A228357 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) + 1).toNat

end

end A135089.P16112547751973334788

namespace A135089

/-- `A007318(n)*A228357(round(n/(n+1))+1)` -/
def P16112547751973334788.Spec : Prop :=
  ∀ n, P16112547751973334788.a n = A135089 n

end A135089

/-! ## A135089.P14197497252106728780

`A028326(n)/2*A072996(A145154(n))`
-/

namespace A135089.P14197497252106728780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A072996 (A145154 n).toNat : ℚ)

end

end A135089.P14197497252106728780

namespace A135089

/-- `A028326(n)/2*A072996(A145154(n))` -/
def P14197497252106728780.Spec : Prop :=
  ∀ n, P14197497252106728780.a n = (A135089 n : ℚ)

end A135089

/-! ## A135089.P4825303614922727270

`A029618(n)+A134059(n)-A071919(n)`
-/

namespace A135089.P4825303614922727270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 n + (A134059 n - A071919 n)

end

end A135089.P4825303614922727270

namespace A135089

/-- `A029618(n)+A134059(n)-A071919(n)` -/
def P4825303614922727270.Spec : Prop :=
  ∀ n, P4825303614922727270.a n = A135089 n

end A135089

/-! ## A135089.P17810639658280994058

`A132200(n)+A134058(n)-A007318(n)`
-/

namespace A135089.P17810639658280994058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132200 n + (A134058 n - A007318 n)

end

end A135089.P17810639658280994058

namespace A135089

/-- `A132200(n)+A134058(n)-A007318(n)` -/
def P17810639658280994058.Spec : Prop :=
  ∀ n, P17810639658280994058.a n = A135089 n

end A135089

/-! ## A135089.P13268410905400716797

`A134059(n)+A134061(n)-A124928(n)`
-/

namespace A135089.P13268410905400716797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 n + (A134061 n - A124928 n)

end

end A135089.P13268410905400716797

namespace A135089

/-- `A134059(n)+A134061(n)-A124928(n)` -/
def P13268410905400716797.Spec : Prop :=
  ∀ n, P13268410905400716797.a n = A135089 n

end A135089

/-! ## A135089.P13106885929946611247

`A134059(n)+A134065(n)-A124927(n)`
-/

namespace A135089.P13106885929946611247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 n + (A134065 n - A124927 n)

end

end A135089.P13106885929946611247

namespace A135089

/-- `A134059(n)+A134065(n)-A124927(n)` -/
def P13106885929946611247.Spec : Prop :=
  ∀ n, P13106885929946611247.a n = A135089 n

end A135089

/-! ## A135089.P14464601118521581618

`A132200(n)+A134059(n)-A134058(n)`
-/

namespace A135089.P14464601118521581618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132200 n + (A134059 n - A134058 n)

end

end A135089.P14464601118521581618

namespace A135089

/-- `A132200(n)+A134059(n)-A134058(n)` -/
def P14464601118521581618.Spec : Prop :=
  ∀ n, P14464601118521581618.a n = A135089 n

end A135089

/-! ## A135089.P12675402036053401481

`A007318(n)*A171463(A171463(n+1)-n)`
-/

namespace A135089.P12675402036053401481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A171463 (A171463 (n + 1) - (n : ℤ)).toNat

end

end A135089.P12675402036053401481

namespace A135089

/-- `A007318(n)*A171463(A171463(n+1)-n)` -/
def P12675402036053401481.Spec : Prop :=
  ∀ n, P12675402036053401481.a n = A135089 n

end A135089

/-! ## A135089.P1306353111210910827

`A007318(n)*A071187(A071187(n+1)²²)`
-/

namespace A135089.P1306353111210910827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A071187 ((A071187 (n + 1) ^ 2) ^ 2).toNat

end

end A135089.P1306353111210910827

namespace A135089

/-- `A007318(n)*A071187(A071187(n+1)²²)` -/
def P1306353111210910827.Spec : Prop :=
  ∀ n, P1306353111210910827.a n = A135089 n

end A135089

/-! ## A135089.P14139867256107643778

`(A093644(A061579(n))+A093644(n))/2`
-/

namespace A135089.P14139867256107643778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093644 (A061579 n).toNat + A093644 n : ℚ) / 2

end

end A135089.P14139867256107643778

namespace A135089

/-- `(A093644(A061579(n))+A093644(n))/2` -/
def P14139867256107643778.Spec : Prop :=
  ∀ n, P14139867256107643778.a n = (A135089 n : ℚ)

end A135089

/-! ## A135089.P6407683847834708951

`A007318(n)*A102221(A266256(2*n))`
-/

namespace A135089.P6407683847834708951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A102221 (A266256 (2 * n)).toNat

end

end A135089.P6407683847834708951

namespace A135089

/-- `A007318(n)*A102221(A266256(2*n))` -/
def P6407683847834708951.Spec : Prop :=
  ∀ n, P6407683847834708951.a n = A135089 n

end A135089

/-! ## A135089.P8157492584555626622

`A007318(n)*A071188(A071188(n+1)²²)`
-/

namespace A135089.P8157492584555626622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A071188 ((A071188 (n + 1) ^ 2) ^ 2).toNat

end

end A135089.P8157492584555626622

namespace A135089

/-- `A007318(n)*A071188(A071188(n+1)²²)` -/
def P8157492584555626622.Spec : Prop :=
  ∀ n, P8157492584555626622.a n = A135089 n

end A135089

/-! ## A135089.P16659657754634767312

`A007318(n)*A100549(A100549(n+1)²²)`
-/

namespace A135089.P16659657754634767312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A100549 ((A100549 (n + 1) ^ 2) ^ 2).toNat

end

end A135089.P16659657754634767312

namespace A135089

/-- `A007318(n)*A100549(A100549(n+1)²²)` -/
def P16659657754634767312.Spec : Prop :=
  ∀ n, P16659657754634767312.a n = A135089 n

end A135089

/-!
# A135090: Array read by antidiagonals: T(n, k) = Knuth's Fibonacci (or circle) product of n and k ("n o k"), n >= 0, k >= 0.

The programs for A135090, there is no canonical definition to state claims against.
-/

/-! ## A135090.P15177586753169513985

`A022413(A340429(n+1))-A101866(n+1)`
-/

namespace A135090.P15177586753169513985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 (A340429 (n + 1)).toNat - A101866 (n + 1)

end

end A135090.P15177586753169513985

/-! ## A135090.P17865119588545210104

`(A022413(A340429(n+1))%A101866(n+1))%A018213(n)`
-/

namespace A135090.P17865119588545210104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A022413 (A340429 (n + 1)).toNat) (A101866 (n + 1))) (A018213 n)

end

end A135090.P17865119588545210104

/-! ## A135090.P14099905321994630779

`A004956(A101858(n+1))+1-A101866(n+1)`
-/

namespace A135090.P14099905321994630779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A101858 (n + 1)).toNat + (1 - A101866 (n + 1))

end

end A135090.P14099905321994630779

/-! ## A135090.P1601386091680043753

`A119387(A230926(n+1))`
-/

namespace A135090.P1601386091680043753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 (A230926 (n + 1)).toNat

end

end A135090.P1601386091680043753

/-! ## A135090.P11195963680414413559

`A104413(A146967(n)+5)`
-/

namespace A135090.P11195963680414413559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104413 (A146967 n + 5).toNat

end

end A135090.P11195963680414413559

/-!
# A135091: A007318 * triangle M, where M = A002426 * 0^(n-k), 0<=k<=n.

The programs for A135091, the canonical program `A135091.P12373944751708945877` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135091 has offset 0).

The definition of A135091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135091.P12373944751708945877

`A002426(A002262(n))*A007318(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A135091

/-- `A002426(A002262(n))*A007318(n)` -/
def P12373944751708945877.Spec : Prop :=
  ∀ n, P12373944751708945877.a n = A135091 n

theorem P12373944751708945877.correct : P12373944751708945877.Spec := by
  intro n
  simp only [A135091]

end A135091

/-! ## A135091.P11971898390001489781

`A007318(n)*A114422(A112367(n))`
-/

namespace A135091.P11971898390001489781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A114422 (A112367 n).toNat

end

end A135091.P11971898390001489781

namespace A135091

/-- `A007318(n)*A114422(A112367(n))` -/
def P11971898390001489781.Spec : Prop :=
  ∀ n, P11971898390001489781.a n = A135091 n

end A135091

/-! ## A135091.P12688718485440530864

`abs(A002426(A002262(n))*A108086(n))`
-/

namespace A135091.P12688718485440530864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002426 (A002262 n).toNat * A108086 n|

end

end A135091.P12688718485440530864

namespace A135091

/-- `abs(A002426(A002262(n))*A108086(n))` -/
def P12688718485440530864.Spec : Prop :=
  ∀ n, P12688718485440530864.a n = A135091 n

end A135091

/-! ## A135091.P7773044233821310026

`Δ[A102363(n)]*A002426(A002262(n))`
-/

namespace A135091.P7773044233821310026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002426 (A002262 n).toNat

end

end A135091.P7773044233821310026

namespace A135091

/-- `Δ[A102363(n)]*A002426(A002262(n))` -/
def P7773044233821310026.Spec : Prop :=
  ∀ n, P7773044233821310026.a n = A135091 n

end A135091

/-! ## A135091.P5919490553488408747

`A171128(∑[2*n]%comp[∑[n]])`
-/

namespace A135091.P5919490553488408747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171128 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A135091.P5919490553488408747

namespace A135091

/-- `A171128(∑[2*n]%comp[∑[n]])` -/
def P5919490553488408747.Spec : Prop :=
  ∀ n, P5919490553488408747.a n = A135091 n

end A135091

/-! ## A135091.P10619994684839485460

`A171128(∑[char[∑[n]]]²-(n+1))`
-/

namespace A135091.P10619994684839485460
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171128 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A135091.P10619994684839485460

namespace A135091

/-- `A171128(∑[char[∑[n]]]²-(n+1))` -/
def P10619994684839485460.Spec : Prop :=
  ∀ n, P10619994684839485460.a n = A135091 n

end A135091

/-! ## A135091.P1493441661550966500

`A132885(A082156(n+1)-1)`
-/

namespace A135091.P1493441661550966500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132885 (A082156 (n + 1) - 1).toNat

end

end A135091.P1493441661550966500

namespace A135091

/-- `A132885(A082156(n+1)-1)` -/
def P1493441661550966500.Spec : Prop :=
  ∀ n, P1493441661550966500.a n = A135091 n

end A135091

/-!
# A135092: Binomial transform of [1, 6, 1, 6, 1, 6, ...].

The programs for A135092, the canonical program `A135092.P4034932475243760880` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135092 has offset 0).

The definition of A135092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135092.P17755858082793932819

`ogf((1+5x)/(1-2x))`
-/

namespace A135092.P17755858082793932819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, -2] n

end

end A135092.P17755858082793932819

namespace A135092

/-- `ogf((1+5x)/(1-2x))` -/
def P17755858082793932819.Spec : Prop :=
  ∀ n, P17755858082793932819.a n = A135092 n

end A135092

/-! ## A135092.P4034932475243760880

`2*a(n-1)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135092

/-- `2*a(n-1)` -/
def P4034932475243760880.Spec : Prop :=
  ∀ n, (P4034932475243760880.a n : ℤ) = A135092 n

theorem P4034932475243760880.correct : P4034932475243760880.Spec := by
  intro n
  simp only [A135092]

end A135092

/-! ## A135092.P4097273343812442498

`a(n-1)+a(n-1)` with `a(0)=1, a(1)=7`
-/

namespace A135092.P4097273343812442498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 1) + a (n - 1)

end

end A135092.P4097273343812442498

namespace A135092

/-- `a(n-1)+a(n-1)` -/
def P4097273343812442498.Spec : Prop :=
  ∀ n, (P4097273343812442498.a n : ℤ) = A135092 n

theorem P4097273343812442498.correct : P4097273343812442498.Spec := by
  intro n
  simp only [A135092, Nat.add_sub_cancel, A135092.P4097273343812442498.a, A135092.P4034932475243760880.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135092

/-! ## A135092.P14162387314841991962

`a(n-1)/(1-1/2)` with `a(0)=1, a(1)=7`
-/

namespace A135092.P14162387314841991962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 1) / (1 - (1 : ℚ) / 2)

end

end A135092.P14162387314841991962

namespace A135092

/-- `a(n-1)/(1-1/2)` -/
def P14162387314841991962.Spec : Prop :=
  ∀ n, P14162387314841991962.a n = (A135092 n : ℚ)

end A135092

/-! ## A135092.P10664539058590479102

`lcm(2^(n-1), a(n-1))` with `a(0)=1, a(1)=7`
-/

namespace A135092.P10664539058590479102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A135092.P10664539058590479102

namespace A135092

/-- `lcm(2^(n-1), a(n-1))` -/
def P10664539058590479102.Spec : Prop :=
  ∀ n, (P10664539058590479102.a n : ℤ) = A135092 n

end A135092

/-! ## A135092.P6048328602343095013

`A246074(6*n+1)`
-/

namespace A135092.P6048328602343095013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (6 * n + 1)

end

end A135092.P6048328602343095013

namespace A135092

/-- `A246074(6*n+1)` -/
def P6048328602343095013.Spec : Prop :=
  ∀ n, P6048328602343095013.a n = A135092 n

end A135092

/-! ## A135092.P16483869630106963101

`record[xor(floor(2^(n-1)), A098011(n+1))]`
-/

namespace A135092.P16483869630106963101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A098011 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135092.P16483869630106963101

namespace A135092

/-- `record[xor(floor(2^(n-1)), A098011(n+1))]` -/
def P16483869630106963101.Spec : Prop :=
  ∀ n, P16483869630106963101.a n = A135092 n

end A135092

/-! ## A135092.P16936552701506167799

`A100693(A047615(n+1))`
-/

namespace A135092.P16936552701506167799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100693 (A047615 (n + 1)).toNat

end

end A135092.P16936552701506167799

namespace A135092

/-- `A100693(A047615(n+1))` -/
def P16936552701506167799.Spec : Prop :=
  ∀ n, P16936552701506167799.a n = A135092 n

end A135092

/-! ## A135092.P6830043523996051661

`A125176(A065475(n+1))`
-/

namespace A135092.P6830043523996051661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125176 (A065475 (n + 1)).toNat

end

end A135092.P6830043523996051661

namespace A135092

/-- `A125176(A065475(n+1))` -/
def P6830043523996051661.Spec : Prop :=
  ∀ n, P6830043523996051661.a n = A135092 n

end A135092

/-! ## A135092.P13462117542142478181

`A365062(A171463(n+1))`
-/

namespace A135092.P13462117542142478181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365062 (A171463 (n + 1)).toNat

end

end A135092.P13462117542142478181

namespace A135092

/-- `A365062(A171463(n+1))` -/
def P13462117542142478181.Spec : Prop :=
  ∀ n, P13462117542142478181.a n = A135092 n

end A135092

/-! ## A135092.P14630848296697483262

`A125176(A181440(n+2))`
-/

namespace A135092.P14630848296697483262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125176 (A181440 (n + 2)).toNat

end

end A135092.P14630848296697483262

namespace A135092

/-- `A125176(A181440(n+2))` -/
def P14630848296697483262.Spec : Prop :=
  ∀ n, P14630848296697483262.a n = A135092 n

end A135092

/-! ## A135092.P7548327938798710547

`A125176(A184985(n+2))`
-/

namespace A135092.P7548327938798710547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125176 (A184985 (n + 2)).toNat

end

end A135092.P7548327938798710547

namespace A135092

/-- `A125176(A184985(n+2))` -/
def P7548327938798710547.Spec : Prop :=
  ∀ n, P7548327938798710547.a n = A135092 n

end A135092

/-! ## A135092.P9607305960585600595

`A123932(n)+A053208(n)`
-/

namespace A135092.P9607305960585600595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n + A053208 n

end

end A135092.P9607305960585600595

namespace A135092

/-- `A123932(n)+A053208(n)` -/
def P9607305960585600595.Spec : Prop :=
  ∀ n, P9607305960585600595.a n = A135092 n

end A135092

/-! ## A135092.P9426972924496728461

`A155559(n)+A146523(n)`
-/

namespace A135092.P9426972924496728461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A146523 n

end

end A135092.P9426972924496728461

namespace A135092

/-- `A155559(n)+A146523(n)` -/
def P9426972924496728461.Spec : Prop :=
  ∀ n, P9426972924496728461.a n = A135092 n

end A135092

/-! ## A135092.P15805806432956802938

`A296953(n)+A134351(n)`
-/

namespace A135092.P15805806432956802938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296953 n + A134351 n

end

end A135092.P15805806432956802938

namespace A135092

/-- `A296953(n)+A134351(n)` -/
def P15805806432956802938.Spec : Prop :=
  ∀ n, P15805806432956802938.a n = A135092 n

end A135092

/-! ## A135092.P14306503593293667414

`A146541(n)-A131577(n)`
-/

namespace A135092.P14306503593293667414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146541 n - A131577 n

end

end A135092.P14306503593293667414

namespace A135092

/-- `A146541(n)-A131577(n)` -/
def P14306503593293667414.Spec : Prop :=
  ∀ n, P14306503593293667414.a n = A135092 n

end A135092

/-! ## A135092.P12478120166567363978

`or(A000079(n), A146523(n))`
-/

namespace A135092.P12478120166567363978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n) (A146523 n)

end

end A135092.P12478120166567363978

namespace A135092

/-- `or(A000079(n), A146523(n))` -/
def P12478120166567363978.Spec : Prop :=
  ∀ n, P12478120166567363978.a n = A135092 n

end A135092

/-! ## A135092.P14358403188978169804

`xor(A052940(n), A055010(n))`
-/

namespace A135092.P14358403188978169804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052940 n) (A055010 n)

end

end A135092.P14358403188978169804

namespace A135092

/-- `xor(A052940(n), A055010(n))` -/
def P14358403188978169804.Spec : Prop :=
  ∀ n, P14358403188978169804.a n = A135092 n

end A135092

/-! ## A135092.P5819133386309445931

`xor(A042950(n), A198633(n))`
-/

namespace A135092.P5819133386309445931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A042950 n) (A198633 n)

end

end A135092.P5819133386309445931

namespace A135092

/-- `xor(A042950(n), A198633(n))` -/
def P5819133386309445931.Spec : Prop :=
  ∀ n, P5819133386309445931.a n = A135092 n

end A135092

/-! ## A135092.P3558263223206898884

`A029749(A114119(2*n)-1)`
-/

namespace A135092.P3558263223206898884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 (A114119 (2 * n) - 1).toNat

end

end A135092.P3558263223206898884

namespace A135092

/-- `A029749(A114119(2*n)-1)` -/
def P3558263223206898884.Spec : Prop :=
  ∀ n, P3558263223206898884.a n = A135092 n

end A135092

/-!
# A135094: a(n) = 2*a(n-1) + 2*a(n-2) - 4*a(n-3) with n>2, a(0)=0, a(1)=1, a(2)=3.

The programs for A135094, the canonical program `A135094.P1605669083351685691` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135094 has offset 0).

The definition of A135094 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)-4*a(n-3)` (program `A135094.P1605669083351685691`, by `A135094.P1605669083351685691.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135094.P1605669083351685691

`2*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135094

/-- `2*a(n-1)+2*a(n-2)-4*a(n-3)` -/
def P1605669083351685691.Spec : Prop :=
  ∀ n, P1605669083351685691.a n = A135094 n

theorem P1605669083351685691.correct : P1605669083351685691.Spec := by
  intro n
  simp only [A135094]

end A135094

/-! ## A135094.P2912144748253090330

`ogf((x+x^2)/(1-2x-2x^2+4x^3))`
-/

namespace A135094.P2912144748253090330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -2, -2, 4] n

end

end A135094.P2912144748253090330

namespace A135094

/-- `ogf((x+x^2)/(1-2x-2x^2+4x^3))` -/
def P2912144748253090330.Spec : Prop :=
  ∀ n, P2912144748253090330.a n = A135094 n

end A135094

/-! ## A135094.P10319466299871450749

`2*(a(n-1)+gcd(a(n-1), a(n-2)))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A135094.P10319466299871450749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  2 * (a (n - 1) + Nat.gcd (a (n - 1)) (a (n - 2)))

end

end A135094.P10319466299871450749

namespace A135094

/-- `2*(a(n-1)+gcd(a(n-1), a(n-2)))` -/
def P10319466299871450749.Spec : Prop :=
  ∀ n, (P10319466299871450749.a n : ℤ) = A135094 n

end A135094

/-! ## A135094.P6037373136478745534

`2^(n+1)-A290075(n+3)`
-/

namespace A135094.P6037373136478745534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A290075 (n + 3)

end

end A135094.P6037373136478745534

namespace A135094

/-- `2^(n+1)-A290075(n+3)` -/
def P6037373136478745534.Spec : Prop :=
  ∀ n, P6037373136478745534.a n = A135094 n

end A135094

/-! ## A135094.P18172082717358055048

`A233411(n)+A007179(n)`
-/

namespace A135094.P18172082717358055048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233411 n + A007179 n

end

end A135094.P18172082717358055048

namespace A135094

/-- `A233411(n)+A007179(n)` -/
def P18172082717358055048.Spec : Prop :=
  ∀ n, P18172082717358055048.a n = A135094 n

end A135094

/-! ## A135094.P12327001988286260232

`A135098(n)-A016116(n)`
-/

namespace A135094.P12327001988286260232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135098 n - A016116 n

end

end A135094.P12327001988286260232

namespace A135094

/-- `A135098(n)-A016116(n)` -/
def P12327001988286260232.Spec : Prop :=
  ∀ n, P12327001988286260232.a n = A135094 n

end A135094

/-! ## A135094.P6880542393785718745

`∑[A014236(n)]-A007179(n)`
-/

namespace A135094.P6880542393785718745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007179 n

end

end A135094.P6880542393785718745

namespace A135094

/-- `∑[A014236(n)]-A007179(n)` -/
def P6880542393785718745.Spec : Prop :=
  ∀ n, P6880542393785718745.a n = A135094 n

end A135094

/-! ## A135094.P12913395540625416619

`A007179(n)+Δ[A027556(n)]`
-/

namespace A135094.P12913395540625416619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 n + (f1 (n + 1) - f1 n)

end

end A135094.P12913395540625416619

namespace A135094

/-- `A007179(n)+Δ[A027556(n)]` -/
def P12913395540625416619.Spec : Prop :=
  ∀ n, P12913395540625416619.a n = A135094 n

end A135094

/-! ## A135094.P13618278249272200737

`A274230(n)+A056326(n+1)`
-/

namespace A135094.P13618278249272200737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 n + A056326 (n + 1)

end

end A135094.P13618278249272200737

namespace A135094

/-- `A274230(n)+A056326(n+1)` -/
def P13618278249272200737.Spec : Prop :=
  ∀ n, P13618278249272200737.a n = A135094 n

end A135094

/-! ## A135094.P14052140063605333731

`A003945(n)-A029744(n+1)`
-/

namespace A135094.P14052140063605333731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A029744 (n + 1)

end

end A135094.P14052140063605333731

namespace A135094

/-- `A003945(n)-A029744(n+1)` -/
def P14052140063605333731.Spec : Prop :=
  ∀ n, P14052140063605333731.a n = A135094 n

end A135094

/-! ## A135094.P7243033669460131886

`A000225(n)+A027556(n)/2`
-/

namespace A135094.P7243033669460131886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 n : ℚ) + (A027556 n : ℚ) / 2

end

end A135094.P7243033669460131886

namespace A135094

/-- `A000225(n)+A027556(n)/2` -/
def P7243033669460131886.Spec : Prop :=
  ∀ n, P7243033669460131886.a n = (A135094 n : ℚ)

end A135094

/-! ## A135094.P5017975699465284632

`A122746(n)-Δ[A005418(n+1)]`
-/

namespace A135094.P5017975699465284632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 n - (f1 (n + 1) - f1 n)

end

end A135094.P5017975699465284632

namespace A135094

/-- `A122746(n)-Δ[A005418(n+1)]` -/
def P5017975699465284632.Spec : Prop :=
  ∀ n, P5017975699465284632.a n = A135094 n

end A135094

/-! ## A135094.P5282335037644425592

`A074323(2*n)-A029744(n+1)`
-/

namespace A135094.P5282335037644425592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (2 * n) - A029744 (n + 1)

end

end A135094.P5282335037644425592

namespace A135094

/-- `A074323(2*n)-A029744(n+1)` -/
def P5282335037644425592.Spec : Prop :=
  ∀ n, P5282335037644425592.a n = A135094 n

end A135094

/-! ## A135094.P5066278158147118150

`A029744(Δ[n²])-A029744(n+1)`
-/

namespace A135094.P5066278158147118150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A029744 (n + 1)

end

end A135094.P5066278158147118150

namespace A135094

/-- `A029744(Δ[n²])-A029744(n+1)` -/
def P5066278158147118150.Spec : Prop :=
  ∀ n, P5066278158147118150.a n = A135094 n

end A135094

/-! ## A135094.P8995930396974644277

`A007179(n)+Δ[2*A274230(abs(1-n))]`
-/

namespace A135094.P8995930396974644277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274230 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 n + (f1 (n + 1) - f1 n)

end

end A135094.P8995930396974644277

namespace A135094

/-- `A007179(n)+Δ[2*A274230(abs(1-n))]` -/
def P8995930396974644277.Spec : Prop :=
  ∀ n, P8995930396974644277.a n = A135094 n

end A135094

/-! ## A135094.P1797747292849639628

`abs(A029744(2*n+1)-A029744(n+1))`
-/

namespace A135094.P1797747292849639628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A029744 (2 * n + 1) - A029744 (n + 1)|

end

end A135094.P1797747292849639628

namespace A135094

/-- `abs(A029744(2*n+1)-A029744(n+1))` -/
def P1797747292849639628.Spec : Prop :=
  ∀ n, P1797747292849639628.a n = A135094 n

end A135094

/-! ## A135094.P1008402769052953485

`A029744(2*n+1)-A029750(2*(n+1))/2`
-/

namespace A135094.P1008402769052953485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029744 (2 * n + 1) : ℚ) - (A029750 (2 * (n + 1)) : ℚ) / 2

end

end A135094.P1008402769052953485

namespace A135094

/-- `A029744(2*n+1)-A029750(2*(n+1))/2` -/
def P1008402769052953485.Spec : Prop :=
  ∀ n, P1008402769052953485.a n = (A135094 n : ℚ)

end A135094

/-! ## A135094.P6063811017528334474

`A074323(2*n)-A074323(A004442(n+1))`
-/

namespace A135094.P6063811017528334474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (2 * n) - A074323 (A004442 (n + 1)).toNat

end

end A135094.P6063811017528334474

namespace A135094

/-- `A074323(2*n)-A074323(A004442(n+1))` -/
def P6063811017528334474.Spec : Prop :=
  ∀ n, P6063811017528334474.a n = A135094 n

end A135094

/-! ## A135094.P2901961008809186172

`A000079(n)+A007179(n)-A016116(n+1)`
-/

namespace A135094.P2901961008809186172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A007179 n - A016116 (n + 1))

end

end A135094.P2901961008809186172

namespace A135094

/-- `A000079(n)+A007179(n)-A016116(n+1)` -/
def P2901961008809186172.Spec : Prop :=
  ∀ n, P2901961008809186172.a n = A135094 n

end A135094

/-! ## A135094.P10783925851217152621

`A007179(n+1)+A007179(n)-A016116(n)`
-/

namespace A135094.P10783925851217152621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (n + 1) + (A007179 n - A016116 n)

end

end A135094.P10783925851217152621

namespace A135094

/-- `A007179(n+1)+A007179(n)-A016116(n)` -/
def P10783925851217152621.Spec : Prop :=
  ∀ n, P10783925851217152621.a n = A135094 n

end A135094

/-!
# A135095: a(1)=1, a(n) = a(n-1) + n^5 if n odd, a(n) = a(n-1) + n^2 if n is even.

The programs for A135095, the canonical program `A135095.P10057371440882505783` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135095 has offset 1).

The definition of A135095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135095.P10057371440882505783

`∑[(n+1)^(gcd(2, n)²+1)]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135095

/-- `∑[(n+1)^(gcd(2, n)²+1)]` -/
def P10057371440882505783.Spec : Prop :=
  ∀ n, (P10057371440882505783.a n : ℤ) = A135095 (n + 1)

theorem P10057371440882505783.correct : P10057371440882505783.Spec := by
  intro n
  simp only [A135095, Nat.add_sub_cancel]

end A135095

/-! ## A135095.P2564205583958442175

`∑[(n+1)^(5-3*n%2)]`
-/

namespace A135095.P2564205583958442175
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (5 - ((3 * (n % 2) : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135095.P2564205583958442175

namespace A135095

/-- `∑[(n+1)^(5-3*n%2)]` -/
def P2564205583958442175.Spec : Prop :=
  ∀ n, P2564205583958442175.a n = (A135095 (n + 1) : ℚ)

end A135095

/-! ## A135095.P15419207700628240367

`∑[(n+1)^(∑[3*(-1)^n]+2)]`
-/

namespace A135095.P15419207700628240367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (-1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j + 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135095.P15419207700628240367

namespace A135095

/-- `∑[(n+1)^(∑[3*(-1)^n]+2)]` -/
def P15419207700628240367.Spec : Prop :=
  ∀ n, P15419207700628240367.a n = (A135095 (n + 1) : ℚ)

end A135095

/-! ## A135095.P15625547674010029210

`A000330(n+1)+A140163(n+1)-A136047(n+1)`
-/

namespace A135095.P15625547674010029210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A140163 (n + 1) - A136047 (n + 1))

end

end A135095.P15625547674010029210

namespace A135095

/-- `A000330(n+1)+A140163(n+1)-A136047(n+1)` -/
def P15625547674010029210.Spec : Prop :=
  ∀ n, P15625547674010029210.a n = A135095 (n + 1)

end A135095

/-! ## A135095.P15712988374979847291

`A135099(n+1)+A135301(n+1)-A135332(n+1)`
-/

namespace A135095.P15712988374979847291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135099 (n + 1) + (A135301 (n + 1) - A135332 (n + 1))

end

end A135095.P15712988374979847291

namespace A135095

/-- `A135099(n+1)+A135301(n+1)-A135332(n+1)` -/
def P15712988374979847291.Spec : Prop :=
  ∀ n, P15712988374979847291.a n = A135095 (n + 1)

end A135095

/-! ## A135095.P15278203989872248369

`A135214(n+1)+A140154(n+1)-A140155(n+1)`
-/

namespace A135095.P15278203989872248369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135214 (n + 1) + (A140154 (n + 1) - A140155 (n + 1))

end

end A135095.P15278203989872248369

namespace A135095

/-- `A135214(n+1)+A140154(n+1)-A140155(n+1)` -/
def P15278203989872248369.Spec : Prop :=
  ∀ n, P15278203989872248369.a n = A135095 (n + 1)

end A135095

/-! ## A135095.P10688440149997373042

`A000330(n+1)+A000539(n+1)-A140151(n+1)`
-/

namespace A135095.P10688440149997373042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A000539 (n + 1) - A140151 (n + 1))

end

end A135095.P10688440149997373042

namespace A135095

/-- `A000330(n+1)+A000539(n+1)-A140151(n+1)` -/
def P10688440149997373042.Spec : Prop :=
  ∀ n, P10688440149997373042.a n = A135095 (n + 1)

end A135095

/-!
# A135098: First differences of A135094.

The programs for A135098, the canonical program `A135098.P6419698297875407201` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135098 has offset 0).

The definition of A135098 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135098.P6419698297875407201

`2*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135098

/-- `2*a(n-1)+2*a(n-2)-4*a(n-3)` -/
def P6419698297875407201.Spec : Prop :=
  ∀ n, P6419698297875407201.a n = A135098 n

theorem P6419698297875407201.correct : P6419698297875407201.Spec := by
  intro n
  simp only [A135098]

end A135098

/-! ## A135098.P8446588501093868291

`ogf((1-x^2)/(1-2x-2x^2+4x^3))`
-/

namespace A135098.P8446588501093868291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -2, -2, 4] n

end

end A135098.P8446588501093868291

namespace A135098

/-- `ogf((1-x^2)/(1-2x-2x^2+4x^3))` -/
def P8446588501093868291.Spec : Prop :=
  ∀ n, P8446588501093868291.a n = A135098 n

end A135098

/-! ## A135098.P3647568297201141508

`2*(a(n-1)+a(n-2)%a(n-3))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A135098.P3647568297201141508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * (a (n - 1) + a (n - 2) % a (n - 3))

end

end A135098.P3647568297201141508

namespace A135098

/-- `2*(a(n-1)+a(n-2)%a(n-3))` -/
def P3647568297201141508.Spec : Prop :=
  ∀ n, (P3647568297201141508.a n : ℤ) = A135098 n

end A135098

/-! ## A135098.P4047854770364272988

`∑[2^n]-A056326(n+1)`
-/

namespace A135098.P4047854770364272988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A056326 (n + 1)

end

end A135098.P4047854770364272988

namespace A135098

/-- `∑[2^n]-A056326(n+1)` -/
def P4047854770364272988.Spec : Prop :=
  ∀ n, P4047854770364272988.a n = A135098 n

end A135098

/-! ## A135098.P11682664836483764161

`2^(n+1)-A005418(n+1)`
-/

namespace A135098.P11682664836483764161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A005418 (n + 1)

end

end A135098.P11682664836483764161

namespace A135098

/-- `2^(n+1)-A005418(n+1)` -/
def P11682664836483764161.Spec : Prop :=
  ∀ n, P11682664836483764161.a n = A135098 n

end A135098

/-! ## A135098.P12781811390474899479

`A135094(n)+A016116(n)`
-/

namespace A135098.P12781811390474899479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135094 n + A016116 n

end

end A135098.P12781811390474899479

namespace A135098

/-- `A135094(n)+A016116(n)` -/
def P12781811390474899479.Spec : Prop :=
  ∀ n, P12781811390474899479.a n = A135098 n

end A135098

/-! ## A135098.P12157628089939426814

`A354294(n)+A131577(n)`
-/

namespace A135098.P12157628089939426814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354294 n + A131577 n

end

end A135098.P12157628089939426814

namespace A135098

/-- `A354294(n)+A131577(n)` -/
def P12157628089939426814.Spec : Prop :=
  ∀ n, P12157628089939426814.a n = A135098 n

end A135098

/-! ## A135098.P3584678580461608953

`A007179(n+1)+A007179(n)`
-/

namespace A135098.P3584678580461608953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (n + 1) + A007179 n

end

end A135098.P3584678580461608953

namespace A135098

/-- `A007179(n+1)+A007179(n)` -/
def P3584678580461608953.Spec : Prop :=
  ∀ n, P3584678580461608953.a n = A135098 n

end A135098

/-! ## A135098.P11287290605986996053

`A113980(n+1)+A014236(n)`
-/

namespace A135098.P11287290605986996053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113980 (n + 1) + A014236 n

end

end A135098.P11287290605986996053

namespace A135098

/-- `A113980(n+1)+A014236(n)` -/
def P11287290605986996053.Spec : Prop :=
  ∀ n, P11287290605986996053.a n = A135098 n

end A135098

/-! ## A135098.P2237567309842187415

`A000079(n)+A233411(n)/2`
-/

namespace A135098.P2237567309842187415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) + (A233411 n : ℚ) / 2

end

end A135098.P2237567309842187415

namespace A135098

/-- `A000079(n)+A233411(n)/2` -/
def P2237567309842187415.Spec : Prop :=
  ∀ n, P2237567309842187415.a n = (A135098 n : ℚ)

end A135098

/-! ## A135098.P8804222927640840365

`A122746(n)-A233411(n)/2`
-/

namespace A135098.P8804222927640840365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122746 n : ℚ) - (A233411 n : ℚ) / 2

end

end A135098.P8804222927640840365

namespace A135098

/-- `A122746(n)-A233411(n)/2` -/
def P8804222927640840365.Spec : Prop :=
  ∀ n, P8804222927640840365.a n = (A135098 n : ℚ)

end A135098

/-! ## A135098.P12219684157077438680

`xor(A056326(n+1), A126646(n))`
-/

namespace A135098.P12219684157077438680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056326 (n + 1)) (A126646 n)

end

end A135098.P12219684157077438680

namespace A135098

/-- `xor(A056326(n+1), A126646(n))` -/
def P12219684157077438680.Spec : Prop :=
  ∀ n, P12219684157077438680.a n = A135098 n

end A135098

/-! ## A135098.P12600021812589977877

`xor(∑[A000079(n)], A056326(n+1))`
-/

namespace A135098.P12600021812589977877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A056326 (n + 1))

end

end A135098.P12600021812589977877

namespace A135098

/-- `xor(∑[A000079(n)], A056326(n+1))` -/
def P12600021812589977877.Spec : Prop :=
  ∀ n, P12600021812589977877.a n = A135098 n

end A135098

/-! ## A135098.P338764230291731446

`and(-A005418(n+1), A000225(n+1))`
-/

namespace A135098.P338764230291731446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A005418 (n + 1)) (A000225 (n + 1))

end

end A135098.P338764230291731446

namespace A135098

/-- `and(-A005418(n+1), A000225(n+1))` -/
def P338764230291731446.Spec : Prop :=
  ∀ n, P338764230291731446.a n = A135098 n

end A135098

/-! ## A135098.P5674148177512481263

`A000079(n+1)-(A056326(n+1)+1)`
-/

namespace A135098.P5674148177512481263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (A056326 (n + 1) + 1)

end

end A135098.P5674148177512481263

namespace A135098

/-- `A000079(n+1)-(A056326(n+1)+1)` -/
def P5674148177512481263.Spec : Prop :=
  ∀ n, P5674148177512481263.a n = A135098 n

end A135098

/-! ## A135098.P187301993846929627

`A056503(2*(n+1))-A056503(n+1)`
-/

namespace A135098.P187301993846929627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056503 (2 * (n + 1)) - A056503 (n + 1)

end

end A135098.P187301993846929627

namespace A135098

/-- `A056503(2*(n+1))-A056503(n+1)` -/
def P187301993846929627.Spec : Prop :=
  ∀ n, P187301993846929627.a n = A135098 n

end A135098

/-! ## A135098.P11311826044546132011

`A056508(2*(n+1))-A056508(n+1)`
-/

namespace A135098.P11311826044546132011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056508 (2 * (n + 1)) - A056508 (n + 1)

end

end A135098.P11311826044546132011

namespace A135098

/-- `A056508(2*(n+1))-A056508(n+1)` -/
def P11311826044546132011.Spec : Prop :=
  ∀ n, P11311826044546132011.a n = A135098 n

end A135098

/-! ## A135098.P10286325211186826366

`A256217(2*(n+1))-A000011(n+1)`
-/

namespace A135098.P10286325211186826366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256217 (2 * (n + 1)) - A000011 (n + 1)

end

end A135098.P10286325211186826366

namespace A135098

/-- `A256217(2*(n+1))-A000011(n+1)` -/
def P10286325211186826366.Spec : Prop :=
  ∀ n, P10286325211186826366.a n = A135098 n

end A135098

/-! ## A135098.P1291496230133863295

`A016116(2*(n+1))-(A056326(n+1)+1)`
-/

namespace A135098.P1291496230133863295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * (n + 1)) - (A056326 (n + 1) + 1)

end

end A135098.P1291496230133863295

namespace A135098

/-- `A016116(2*(n+1))-(A056326(n+1)+1)` -/
def P1291496230133863295.Spec : Prop :=
  ∀ n, P1291496230133863295.a n = A135098 n

end A135098

/-! ## A135098.P17193510542571494891

`A029744(2*(n+1))-(A056326(n+1)+1)`
-/

namespace A135098.P17193510542571494891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (2 * (n + 1)) - (A056326 (n + 1) + 1)

end

end A135098.P17193510542571494891

namespace A135098

/-- `A029744(2*(n+1))-(A056326(n+1)+1)` -/
def P17193510542571494891.Spec : Prop :=
  ∀ n, P17193510542571494891.a n = A135098 n

end A135098

/-!
# A135099: a(1)=1, a(n) = a(n-1) + n^5 if n odd, a(n) = a(n-1) + n^3 if n is even.

The programs for A135099, the canonical program `A135099.P2545427094916164131` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135099 has offset 1).

The definition of A135099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135099.P6644862060610163162

`∑[(n+1)^((-1)^n+4)]`
-/

namespace A135099.P6644862060610163162
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((-1) ^ n + 4 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135099.P6644862060610163162

namespace A135099

/-- `∑[(n+1)^((-1)^n+4)]` -/
def P6644862060610163162.Spec : Prop :=
  ∀ n, P6644862060610163162.a n = (A135099 (n + 1) : ℚ)

end A135099

/-! ## A135099.P13842416885655817998

`A140145(n+1)+A140163(n+1)-A000217(n+1)`
-/

namespace A135099.P13842416885655817998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140145 (n + 1) + (A140163 (n + 1) - A000217 (n + 1))

end

end A135099.P13842416885655817998

namespace A135099

/-- `A140145(n+1)+A140163(n+1)-A000217(n+1)` -/
def P13842416885655817998.Spec : Prop :=
  ∀ n, P13842416885655817998.a n = A135099 (n + 1)

end A135099

/-! ## A135099.P2545427094916164131

`A135095(n+1)+A135332(n+1)-A135301(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135099

/-- `A135095(n+1)+A135332(n+1)-A135301(n+1)` -/
def P2545427094916164131.Spec : Prop :=
  ∀ n, P2545427094916164131.a n = A135099 (n + 1)

theorem P2545427094916164131.correct : P2545427094916164131.Spec := by
  intro n
  simp only [A135099, Nat.add_sub_cancel]

end A135099

/-! ## A135099.P8651342642457240936

`A135214(n+1)+A135332(n+1)-A140142(n+1)`
-/

namespace A135099.P8651342642457240936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135214 (n + 1) + (A135332 (n + 1) - A140142 (n + 1))

end

end A135099.P8651342642457240936

namespace A135099

/-- `A135214(n+1)+A135332(n+1)-A140142(n+1)` -/
def P8651342642457240936.Spec : Prop :=
  ∀ n, P8651342642457240936.a n = A135099 (n + 1)

end A135099

/-! ## A135099.P12156423135144872202

`A000537(n+1)+A000539(n+1)-A140156(n+1)`
-/

namespace A135099.P12156423135144872202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) + (A000539 (n + 1) - A140156 (n + 1))

end

end A135099.P12156423135144872202

namespace A135099

/-- `A000537(n+1)+A000539(n+1)-A140156(n+1)` -/
def P12156423135144872202.Spec : Prop :=
  ∀ n, P12156423135144872202.a n = A135099 (n + 1)

end A135099

