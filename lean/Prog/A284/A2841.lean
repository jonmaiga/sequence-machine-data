import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
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

/-!
# A284100: a(n) = Sum_{d|n, d == 1 (mod 8)} d.

The programs for A284100, the canonical program `A284100.P16838605729315589615` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284100 has offset 1).

The definition of A284100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284100.P16838605729315589615

`∑{d}[n+1, #*A253513(#-1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284100

/-- `∑{d}[n+1, #*A253513(#-1)]` -/
def P16838605729315589615.Spec : Prop :=
  ∀ n, P16838605729315589615.a n = A284100 (n + 1)

theorem P16838605729315589615.correct : P16838605729315589615.Spec := by
  intro n
  simp only [A284100, Nat.add_sub_cancel]

end A284100

/-!
# A284103: a(n) = Sum_{d|n, d == 4 (mod 5)} d.

The programs for A284103, the canonical program `A284103.P11048966256680687602` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284103 has offset 1).

The definition of A284103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284103.P13465768758318280408

`A284150(n+1)-A284097(n+1)`
-/

namespace A284103.P13465768758318280408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284150 (n + 1) - A284097 (n + 1)

end

end A284103.P13465768758318280408

namespace A284103

/-- `A284150(n+1)-A284097(n+1)` -/
def P13465768758318280408.Spec : Prop :=
  ∀ n, P13465768758318280408.a n = A284103 (n + 1)

end A284103

/-! ## A284103.P17767591664796408734

`A284361(A132739(n+1))-A284097(n+1)`
-/

namespace A284103.P17767591664796408734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284361 (A132739 (n + 1)).toNat - A284097 (n + 1)

end

end A284103.P17767591664796408734

namespace A284103

/-- `A284361(A132739(n+1))-A284097(n+1)` -/
def P17767591664796408734.Spec : Prop :=
  ∀ n, P17767591664796408734.a n = A284103 (n + 1)

end A284103

/-! ## A284103.P3159742362034234202

`A109091(n+1)+A284152(n+1)-A284097(n+1)`
-/

namespace A284103.P3159742362034234202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (n + 1) + (A284152 (n + 1) - A284097 (n + 1))

end

end A284103.P3159742362034234202

namespace A284103

/-- `A109091(n+1)+A284152(n+1)-A284097(n+1)` -/
def P3159742362034234202.Spec : Prop :=
  ∀ n, P3159742362034234202.a n = A284103 (n + 1)

end A284103

/-! ## A284103.P14225833810912736483

`A116073(n+1)-(A284152(n+1)+A284097(n+1))`
-/

namespace A284103.P14225833810912736483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116073 (n + 1) - (A284152 (n + 1) + A284097 (n + 1))

end

end A284103.P14225833810912736483

namespace A284103

/-- `A116073(n+1)-(A284152(n+1)+A284097(n+1))` -/
def P14225833810912736483.Spec : Prop :=
  ∀ n, P14225833810912736483.a n = A284103 (n + 1)

end A284103

/-! ## A284103.P11048966256680687602

`(A284361(n+1)-A284097(n+1))%A116073(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284103

/-- `(A284361(n+1)-A284097(n+1))%A116073(n+1)` -/
def P11048966256680687602.Spec : Prop :=
  ∀ n, P11048966256680687602.a n = A284103 (n + 1)

theorem P11048966256680687602.correct : P11048966256680687602.Spec := by
  intro n
  simp only [A284103, Nat.add_sub_cancel]

end A284103

/-! ## A284103.P8887163094260658866

`∑{d}[n+1, #*and(1, A011925(#))]`
-/

namespace A284103.P8887163094260658866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.land 1 (A011925 d)

end

end A284103.P8887163094260658866

namespace A284103

/-- `∑{d}[n+1, #*and(1, A011925(#))]` -/
def P8887163094260658866.Spec : Prop :=
  ∀ n, P8887163094260658866.a n = A284103 (n + 1)

end A284103

/-!
# A284104: a(n) = Sum_{d|n, d == 5 (mod 6)} d.

The programs for A284104, the canonical program `A284104.P13760200148477607299` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284104 has offset 1).

The definition of A284104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284104.P13760200148477607299

`A078182((n+1)/(n+1-and(n, n+1)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A284104

/-- `A078182((n+1)/(n+1-and(n, n+1)))` -/
def P13760200148477607299.Spec : Prop :=
  ∀ n, P13760200148477607299.a n = A284104 (n + 1)

theorem P13760200148477607299.correct : P13760200148477607299.Spec := by
  intro n
  simp only [A284104, Nat.add_sub_cancel]

end A284104

/-! ## A284104.P3958691957852285746

`A082050(floor((n+1)/2^val(n+1, 2))/3^val(n+1, 3))`
-/

namespace A284104.P3958691957852285746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082050 (SequenceMachineLib.roundAway ((⌊(n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A284104.P3958691957852285746

namespace A284104

/-- `A082050(floor((n+1)/2^val(n+1, 2))/3^val(n+1, 3))` -/
def P3958691957852285746.Spec : Prop :=
  ∀ n, P3958691957852285746.a n = A284104 (n + 1)

end A284104

/-! ## A284104.P7056439873861440860

`A082050(gcd((n+1)/2^val(n+1, 2), (n+1)/3^val(n+1, 3)))`
-/

namespace A284104.P7056439873861440860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082050 (Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))))

end

end A284104.P7056439873861440860

namespace A284104

/-- `A082050(gcd((n+1)/2^val(n+1, 2), (n+1)/3^val(n+1, 3)))` -/
def P7056439873861440860.Spec : Prop :=
  ∀ n, P7056439873861440860.a n = A284104 (n + 1)

end A284104

/-! ## A284104.P6153242867285602855

`A078182(A000265(n+1))`
-/

namespace A284104.P6153242867285602855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (A000265 (n + 1)).toNat

end

end A284104.P6153242867285602855

namespace A284104

/-- `A078182(A000265(n+1))` -/
def P6153242867285602855.Spec : Prop :=
  ∀ n, P6153242867285602855.a n = A284104 (n + 1)

end A284104

/-! ## A284104.P2021473374374820906

`A078182(A065330(n+1))`
-/

namespace A284104.P2021473374374820906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (A065330 (n + 1)).toNat

end

end A284104.P2021473374374820906

namespace A284104

/-- `A078182(A065330(n+1))` -/
def P2021473374374820906.Spec : Prop :=
  ∀ n, P2021473374374820906.a n = A284104 (n + 1)

end A284104

/-! ## A284104.P17446138832705897220

`A078182(A153733(n)+1)`
-/

namespace A284104.P17446138832705897220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (A153733 n + 1).toNat

end

end A284104.P17446138832705897220

namespace A284104

/-- `A078182(A153733(n)+1)` -/
def P17446138832705897220.Spec : Prop :=
  ∀ n, P17446138832705897220.a n = A284104 (n + 1)

end A284104

/-! ## A284104.P4549048009268046682

`A186099(n+1)-A284098(n+1)`
-/

namespace A284104.P4549048009268046682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186099 (n + 1) - A284098 (n + 1)

end

end A284104.P4549048009268046682

namespace A284104

/-- `A186099(n+1)-A284098(n+1)` -/
def P4549048009268046682.Spec : Prop :=
  ∀ n, P4549048009268046682.a n = A284104 (n + 1)

end A284104

/-! ## A284104.P18372840850724664841

`A326135(A166466(n+1))-A284098(n+1)`
-/

namespace A284104.P18372840850724664841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326135 (A166466 (n + 1)).toNat - A284098 (n + 1)

end

end A284104.P18372840850724664841

namespace A284104

/-- `A326135(A166466(n+1))-A284098(n+1)` -/
def P18372840850724664841.Spec : Prop :=
  ∀ n, P18372840850724664841.a n = A284104 (n + 1)

end A284104

/-! ## A284104.P2839123354653963416

`A078182(A166466(n+1))`
-/

namespace A284104.P2839123354653963416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (A166466 (n + 1)).toNat

end

end A284104.P2839123354653963416

namespace A284104

/-- `A078182(A166466(n+1))` -/
def P2839123354653963416.Spec : Prop :=
  ∀ n, P2839123354653963416.a n = A284104 (n + 1)

end A284104

/-! ## A284104.P15469080385279772026

`A078182(A394497(n+1))`
-/

namespace A284104.P15469080385279772026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (A394497 (n + 1)).toNat

end

end A284104.P15469080385279772026

namespace A284104

/-- `A078182(A394497(n+1))` -/
def P15469080385279772026.Spec : Prop :=
  ∀ n, P15469080385279772026.a n = A284104 (n + 1)

end A284104

/-! ## A284104.P4016488384700836587

`A078182(A140214(n+1))`
-/

namespace A284104.P4016488384700836587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (A140214 (n + 1)).toNat

end

end A284104.P4016488384700836587

namespace A284104

/-- `A078182(A140214(n+1))` -/
def P4016488384700836587.Spec : Prop :=
  ∀ n, P4016488384700836587.a n = A284104 (n + 1)

end A284104

/-! ## A284104.P4881632018434899791

`A078182(A204455((n+1)²))`
-/

namespace A284104.P4881632018434899791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (A204455 ((n + 1) ^ 2)).toNat

end

end A284104.P4881632018434899791

namespace A284104

/-- `A078182(A204455((n+1)²))` -/
def P4881632018434899791.Spec : Prop :=
  ∀ n, P4881632018434899791.a n = A284104 (n + 1)

end A284104

/-!
# A284105: a(n) = Sum_{d|n, d == 6 (mod 7)} d.

The programs for A284105, the canonical program `A284105.P4018641519786266915` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284105 has offset 1).

The definition of A284105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284105.P4831831233503197642

`A284151(n+1)-A284099(n+1)`
-/

namespace A284105.P4831831233503197642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284151 (n + 1) - A284099 (n + 1)

end

end A284105.P4831831233503197642

namespace A284105

/-- `A284151(n+1)-A284099(n+1)` -/
def P4831831233503197642.Spec : Prop :=
  ∀ n, P4831831233503197642.a n = A284105 (n + 1)

end A284105

/-! ## A284105.P10067213602411276942

`A284363(A242603(n+1))-A284099(n+1)`
-/

namespace A284105.P10067213602411276942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284363 (A242603 (n + 1)).toNat - A284099 (n + 1)

end

end A284105.P10067213602411276942

namespace A284105

/-- `A284363(A242603(n+1))-A284099(n+1)` -/
def P10067213602411276942.Spec : Prop :=
  ∀ n, P10067213602411276942.a n = A284105 (n + 1)

end A284105

/-! ## A284105.P4018641519786266915

`∑{d}[n+1, #*A082784(#+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284105

/-- `∑{d}[n+1, #*A082784(#+1)]` -/
def P4018641519786266915.Spec : Prop :=
  ∀ n, P4018641519786266915.a n = A284105 (n + 1)

theorem P4018641519786266915.correct : P4018641519786266915.Spec := by
  intro n
  simp only [A284105, Nat.add_sub_cancel]

end A284105

/-! ## A284105.P2312607502159157596

`A284151(n+1)+A008683(A004139(n+1))*A284099(n+1)`
-/

namespace A284105.P2312607502159157596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284151 (n + 1) + A008683 (A004139 (n + 1)).toNat * A284099 (n + 1)

end

end A284105.P2312607502159157596

namespace A284105

/-- `A284151(n+1)+A008683(A004139(n+1))*A284099(n+1)` -/
def P2312607502159157596.Spec : Prop :=
  ∀ n, P2312607502159157596.a n = A284105 (n + 1)

end A284105

/-! ## A284105.P17388992286669021987

`∑{d}[n+1, #*A301678(#)%2]-A284099(n+1)`
-/

namespace A284105.P17388992286669021987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A301678 d) 2 - A284099 (n + 1)

end

end A284105.P17388992286669021987

namespace A284105

/-- `∑{d}[n+1, #*A301678(#)%2]-A284099(n+1)` -/
def P17388992286669021987.Spec : Prop :=
  ∀ n, P17388992286669021987.a n = A284105 (n + 1)

end A284105

/-!
# A284106: Number of n X n 0..1 arrays with the number of 1's king-move adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284106, there is no canonical definition to state claims against.
-/

/-! ## A284106.P6209342937816689321

`A284113(∑[4*n]+1)`
-/

namespace A284106.P6209342937816689321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A284106.P6209342937816689321

/-! ## A284106.P15366679629901671887

`record[A003982(n)*A284113(n+1)]`
-/

namespace A284106.P15366679629901671887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A284113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284106.P15366679629901671887

/-! ## A284106.P15246868357871068827

`record[gcd(A049581(n), A284113(n+1))]`
-/

namespace A284106.P15246868357871068827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A284113 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284106.P15246868357871068827

/-! ## A284106.P12679552371748818678

`A284113(A001844(n))+A257850(n)`
-/

namespace A284106.P12679552371748818678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (A001844 n).toNat + A257850 n

end

end A284106.P12679552371748818678

/-! ## A284106.P2483009489686971818

`A008835(n+1)*A284113(A001844(n))`
-/

namespace A284106.P2483009489686971818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1) * A284113 (A001844 n).toNat

end

end A284106.P2483009489686971818

/-!
# A284107: Number of n X 2 0..1 arrays with the number of 1's king-move adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284107, there is no canonical definition to state claims against.
-/

/-! ## A284107.P14616076128242434967

`A284113(∑[n+1]+2)`
-/

namespace A284107.P14616076128242434967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A284107.P14616076128242434967

/-! ## A284107.P11058132938386726458

`record[root(A284113(n+3), A004736(n+1))]`
-/

namespace A284107.P11058132938386726458
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A284113 (n + 3) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284107.P11058132938386726458

/-! ## A284107.P2990286999935288226

`A284113(A133263(n+1))+A184945(n)`
-/

namespace A284107.P2990286999935288226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (A133263 (n + 1)).toNat + A184945 n

end

end A284107.P2990286999935288226

/-! ## A284107.P12968061185569896395

`A284113(A133263(n+1))%A284108(n+1)`
-/

namespace A284107.P12968061185569896395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284113 (A133263 (n + 1)).toNat) (A284108 (n + 1))

end

end A284107.P12968061185569896395

/-! ## A284107.P10916926905500423973

`record[A284113(Δ[A003453(n+5)])]`
-/

namespace A284107.P10916926905500423973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284107.P10916926905500423973

/-!
# A284108: Number of n X 3 0..1 arrays with the number of 1's king-move adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284108, there is no canonical definition to state claims against.
-/

/-! ## A284108.P4655562158987490140

`A284113(∑[n+2]+4)`
-/

namespace A284108.P4655562158987490140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A284108.P4655562158987490140

/-! ## A284108.P13017290698816054363

`A284113(A167614(n+1))+A185284(n)`
-/

namespace A284108.P13017290698816054363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (A167614 (n + 1)).toNat + A185284 n

end

end A284108.P13017290698816054363

/-! ## A284108.P1031271629532500168

`A254730(n)*A284113(A167614(n+1))`
-/

namespace A284108.P1031271629532500168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 n * A284113 (A167614 (n + 1)).toNat

end

end A284108.P1031271629532500168

/-! ## A284108.P4114630352530106146

`lcm(A033999(n), A284113(A167614(n+1)))`
-/

namespace A284108.P4114630352530106146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A284113 (A167614 (n + 1)).toNat)

end

end A284108.P4114630352530106146

/-! ## A284108.P6396261655264830140

`or(A000007(n), A284113(A167614(n+1)))`
-/

namespace A284108.P6396261655264830140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A284113 (A167614 (n + 1)).toNat)

end

end A284108.P6396261655264830140

/-!
# A284109: Number of n X 4 0..1 arrays with the number of 1's king-move adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284109, there is no canonical definition to state claims against.
-/

/-! ## A284109.P16351993128149425779

`A284113(A141214(n)+7)`
-/

namespace A284109.P16351993128149425779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (A141214 n + 7).toNat

end

end A284109.P16351993128149425779

/-! ## A284109.P11727311281900843279

`A284113(A052905(n)+9)`
-/

namespace A284109.P11727311281900843279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (A052905 n + 9).toNat

end

end A284109.P11727311281900843279

/-! ## A284109.P16960150509767432726

`A284113(A055999(n)+10)`
-/

namespace A284109.P16960150509767432726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (A055999 n + 10).toNat

end

end A284109.P16960150509767432726

/-! ## A284109.P16523156851157154601

`A284113(A167614(n+2)+1)`
-/

namespace A284109.P16523156851157154601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (A167614 (n + 2) + 1).toNat

end

end A284109.P16523156851157154601

/-! ## A284109.P8363459988697589690

`A284113(A000124(n+3)+3)`
-/

namespace A284109.P8363459988697589690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (A000124 (n + 3) + 3).toNat

end

end A284109.P8363459988697589690

/-!
# A284110: Number of n X 5 0..1 arrays with the number of 1's king-move adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284110, there is no canonical definition to state claims against.
-/

/-! ## A284110.P1911949469189340374

`A284113(A155212(n)+13)`
-/

namespace A284110.P1911949469189340374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (A155212 n + 13).toNat

end

end A284110.P1911949469189340374

/-! ## A284110.P1119658745133500430

`A284113(A056000(n)+15)`
-/

namespace A284110.P1119658745133500430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (A056000 n + 15).toNat

end

end A284110.P1119658745133500430

/-! ## A284110.P5192497105247746938

`A284113(eq[6, A131818(n+1)])`
-/

namespace A284110.P5192497105247746938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284110.P5192497105247746938

/-! ## A284110.P1199102178963681034

`A284113(Δ[A264443(n)])`
-/

namespace A284110.P1199102178963681034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (f1 (n + 1) - f1 n).toNat

end

end A284110.P1199102178963681034

/-! ## A284110.P59996298621795069

`A284113(A374005(n+1))`
-/

namespace A284110.P59996298621795069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (A374005 (n + 1)).toNat

end

end A284110.P59996298621795069

/-!
# A284111: Number of n X 6 0..1 arrays with the number of 1's king-move adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284111, there is no canonical definition to state claims against.
-/

/-! ## A284111.P13073483033762800422

`A284113(A167614(n+4)+3)`
-/

namespace A284111.P13073483033762800422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (A167614 (n + 4) + 3).toNat

end

end A284111.P13073483033762800422

/-! ## A284111.P1897761466094774244

`A284113(eq[7, A131818(n+1)])`
-/

namespace A284111.P1897761466094774244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284111.P1897761466094774244

/-! ## A284111.P13916731145816121549

`A284113(A374007(n+1))`
-/

namespace A284111.P13916731145816121549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (A374007 (n + 1)).toNat

end

end A284111.P13916731145816121549

/-! ## A284111.P4667663898372475088

`A284113(eq[3, A219347(n)])`
-/

namespace A284111.P4667663898372475088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284111.P4667663898372475088

/-! ## A284111.P6541796527364347672

`A284113(eq[5, A193592(n)])`
-/

namespace A284111.P6541796527364347672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284111.P6541796527364347672

/-!
# A284112: Number of n X 7 0..1 arrays with the number of 1's king-move adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284112, there is no canonical definition to state claims against.
-/

/-! ## A284112.P14395784088224817982

`A284113(eq[8, A131818(n+1)])`
-/

namespace A284112.P14395784088224817982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284112.P14395784088224817982

/-! ## A284112.P15196523270560172999

`A284113(A374008(n+1))`
-/

namespace A284112.P15196523270560172999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (A374008 (n + 1)).toNat

end

end A284112.P15196523270560172999

/-! ## A284112.P7470343786543790611

`A284113(eq[4, A219347(n)])`
-/

namespace A284112.P7470343786543790611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284112.P7470343786543790611

/-! ## A284112.P6064574295398679413

`A284113(eq[6, A193592(n)])`
-/

namespace A284112.P6064574295398679413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284112.P6064574295398679413

/-! ## A284112.P9607391579555517018

`A284113(eq[7, A200370(n+1)])`
-/

namespace A284112.P9607391579555517018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284112.P9607391579555517018

/-!
# A284113: T(n,k) = Number of n X k 0..1 arrays with the number of 1's king-move adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284113, there is no canonical definition to state claims against.
-/

/-! ## A284113.P4778752830291861504

`A175427(A284165(n+1)+1)`
-/

namespace A284113.P4778752830291861504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A284165 (n + 1) + 1).toNat

end

end A284113.P4778752830291861504

/-! ## A284113.P7651584798546166038

`A284165(n+1)+A184955(A001971(n))`
-/

namespace A284113.P7651584798546166038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (n + 1) + A184955 (A001971 n).toNat

end

end A284113.P7651584798546166038

/-!
# A284115: Hosoya triangle of Lucas type.

The programs for A284115, the canonical program `A284115.P16117482239181993886` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284115 has offset 1).

The definition of A284115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284115.P16117482239181993886

`A104764(n+1)*A104765(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284115

/-- `A104764(n+1)*A104765(n+1)` -/
def P16117482239181993886.Spec : Prop :=
  ∀ n, P16117482239181993886.a n = A284115 (n + 1)

theorem P16117482239181993886.correct : P16117482239181993886.Spec := by
  intro n
  simp only [A284115, Nat.add_sub_cancel]

end A284115

/-! ## A284115.P2948311973021135796

`A000032(A004736(n+1))*A104765(n+1)`
-/

namespace A284115.P2948311973021135796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A004736 (n + 1)).toNat * A104765 (n + 1)

end

end A284115.P2948311973021135796

namespace A284115

/-- `A000032(A004736(n+1))*A104765(n+1)` -/
def P2948311973021135796.Spec : Prop :=
  ∀ n, P2948311973021135796.a n = A284115 (n + 1)

end A284115

/-! ## A284115.P1583831243635279833

`A000032(A002260(n+1))*A000032(A004736(n+1))`
-/

namespace A284115.P1583831243635279833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A002260 (n + 1)).toNat * A000032 (A004736 (n + 1)).toNat

end

end A284115.P1583831243635279833

namespace A284115

/-- `A000032(A002260(n+1))*A000032(A004736(n+1))` -/
def P1583831243635279833.Spec : Prop :=
  ∀ n, P1583831243635279833.a n = A284115 (n + 1)

end A284115

/-! ## A284115.P14427203979167261797

`A000204(A002262(n)+1)*A000204(A025581(n)+1)`
-/

namespace A284115.P14427203979167261797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (A002262 n + 1).toNat * A000204 (A025581 n + 1).toNat

end

end A284115.P14427203979167261797

namespace A284115

/-- `A000204(A002262(n)+1)*A000204(A025581(n)+1)` -/
def P14427203979167261797.Spec : Prop :=
  ∀ n, P14427203979167261797.a n = A284115 (n + 1)

end A284115

/-! ## A284115.P13076370713733344253

`A104764(A038722(n+1))*A104764(n+1)`
-/

namespace A284115.P13076370713733344253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104764 (A038722 (n + 1)).toNat * A104764 (n + 1)

end

end A284115.P13076370713733344253

namespace A284115

/-- `A104764(A038722(n+1))*A104764(n+1)` -/
def P13076370713733344253.Spec : Prop :=
  ∀ n, P13076370713733344253.a n = A284115 (n + 1)

end A284115

/-! ## A284115.P8685440767926834391

`A104765(A038722(n+1))*A104765(n+1)`
-/

namespace A284115.P8685440767926834391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104765 (A038722 (n + 1)).toNat * A104765 (n + 1)

end

end A284115.P8685440767926834391

namespace A284115

/-- `A104765(A038722(n+1))*A104765(n+1)` -/
def P8685440767926834391.Spec : Prop :=
  ∀ n, P8685440767926834391.a n = A284115 (n + 1)

end A284115

/-! ## A284115.P12831406703948837780

`A104765(n+1)*A104765(A278818(n))`
-/

namespace A284115.P12831406703948837780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104765 (n + 1) * A104765 (A278818 n).toNat

end

end A284115.P12831406703948837780

namespace A284115

/-- `A104765(n+1)*A104765(A278818(n))` -/
def P12831406703948837780.Spec : Prop :=
  ∀ n, P12831406703948837780.a n = A284115 (n + 1)

end A284115

/-! ## A284115.P2815477563152637659

`A141678(n+1)/A058071(n)`
-/

namespace A284115.P2815477563152637659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141678 (n + 1) : ℚ) / (A058071 n : ℚ)

end

end A284115.P2815477563152637659

namespace A284115

/-- `A141678(n+1)/A058071(n)` -/
def P2815477563152637659.Spec : Prop :=
  ∀ n, P2815477563152637659.a n = (A284115 (n + 1) : ℚ)

end A284115

/-! ## A284115.P3569962058335818162

`A000032(A057555(2*n+1))*A000032(A057555(2*(n+1)))`
-/

namespace A284115.P3569962058335818162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A057555 (2 * n + 1)).toNat * A000032 (A057555 (2 * (n + 1))).toNat

end

end A284115.P3569962058335818162

namespace A284115

/-- `A000032(A057555(2*n+1))*A000032(A057555(2*(n+1)))` -/
def P3569962058335818162.Spec : Prop :=
  ∀ n, P3569962058335818162.a n = A284115 (n + 1)

end A284115

/-! ## A284115.P5512598347965921583

`A058071(A185871(n+1)-1)/A058071(n)`
-/

namespace A284115.P5512598347965921583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058071 (A185871 (n + 1) - 1).toNat : ℚ) / (A058071 n : ℚ)

end

end A284115.P5512598347965921583

namespace A284115

/-- `A058071(A185871(n+1)-1)/A058071(n)` -/
def P5512598347965921583.Spec : Prop :=
  ∀ n, P5512598347965921583.a n = (A284115 (n + 1) : ℚ)

end A284115

/-!
# A284117: Sum of proper prime power divisors of n.

The programs for A284117, the canonical program `A284117.P13830945115724323163` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284117 has offset 1).

The definition of A284117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284117.P13830945115724323163

`∑{d}[n+1, #*A268340(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284117

/-- `∑{d}[n+1, #*A268340(#)]` -/
def P13830945115724323163.Spec : Prop :=
  ∀ n, P13830945115724323163.a n = A284117 (n + 1)

theorem P13830945115724323163.correct : P13830945115724323163.Spec := by
  intro n
  simp only [A284117, Nat.add_sub_cancel]

end A284117

/-! ## A284117.P11487728591431750351

`A023889(n+1)-∑{p}[n+1, #]`
-/

namespace A284117.P11487728591431750351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A284117.P11487728591431750351

namespace A284117

/-- `A023889(n+1)-∑{p}[n+1, #]` -/
def P11487728591431750351.Spec : Prop :=
  ∀ n, P11487728591431750351.a n = A284117 (n + 1)

end A284117

/-! ## A284117.P2248758179624097233

`A023889(n+1)-Δ[A024924(n)]`
-/

namespace A284117.P2248758179624097233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (n + 1) - (f1 (n + 1) - f1 n)

end

end A284117.P2248758179624097233

namespace A284117

/-- `A023889(n+1)-Δ[A024924(n)]` -/
def P2248758179624097233.Spec : Prop :=
  ∀ n, P2248758179624097233.a n = A284117 (n + 1)

end A284117

/-! ## A284117.P5874429430409826529

`A023889(n+1)-A008472(n+1)`
-/

namespace A284117.P5874429430409826529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (n + 1) - A008472 (n + 1)

end

end A284117.P5874429430409826529

namespace A284117

/-- `A023889(n+1)-A008472(n+1)` -/
def P5874429430409826529.Spec : Prop :=
  ∀ n, P5874429430409826529.a n = A284117 (n + 1)

end A284117

/-! ## A284117.P10004394107643155730

`A023891(n+1)-A035321(n+1)`
-/

namespace A284117.P10004394107643155730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023891 (n + 1) - A035321 (n + 1)

end

end A284117.P10004394107643155730

namespace A284117

/-- `A023891(n+1)-A035321(n+1)` -/
def P10004394107643155730.Spec : Prop :=
  ∀ n, P10004394107643155730.a n = A284117 (n + 1)

end A284117

/-! ## A284117.P13838226216445222274

`A023888(n+1)-A074372(n+1)`
-/

namespace A284117.P13838226216445222274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (n + 1) - A074372 (n + 1)

end

end A284117.P13838226216445222274

namespace A284117

/-- `A023888(n+1)-A074372(n+1)` -/
def P13838226216445222274.Spec : Prop :=
  ∀ n, P13838226216445222274.a n = A284117 (n + 1)

end A284117

/-! ## A284117.P17639478272375757927

`A023890(n+1)-A178637(n+1)`
-/

namespace A284117.P17639478272375757927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) - A178637 (n + 1)

end

end A284117.P17639478272375757927

namespace A284117

/-- `A023890(n+1)-A178637(n+1)` -/
def P17639478272375757927.Spec : Prop :=
  ∀ n, P17639478272375757927.a n = A284117 (n + 1)

end A284117

/-! ## A284117.P4078268919611803564

`A351395(n+1)-A048250(n+1)`
-/

namespace A284117.P4078268919611803564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351395 (n + 1) - A048250 (n + 1)

end

end A284117.P4078268919611803564

namespace A284117

/-- `A351395(n+1)-A048250(n+1)` -/
def P4078268919611803564.Spec : Prop :=
  ∀ n, P4078268919611803564.a n = A284117 (n + 1)

end A284117

/-! ## A284117.P5629630172602145956

`A023890(n+1)-(A035321(n+1)+1)`
-/

namespace A284117.P5629630172602145956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) - (A035321 (n + 1) + 1)

end

end A284117.P5629630172602145956

namespace A284117

/-- `A023890(n+1)-(A035321(n+1)+1)` -/
def P5629630172602145956.Spec : Prop :=
  ∀ n, P5629630172602145956.a n = A284117 (n + 1)

end A284117

/-! ## A284117.P6284889908695410302

`A023889(n+1)-∑{d}[n+1, A061397(#)]`
-/

namespace A284117.P6284889908695410302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A061397 d

end

end A284117.P6284889908695410302

namespace A284117

/-- `A023889(n+1)-∑{d}[n+1, A061397(#)]` -/
def P6284889908695410302.Spec : Prop :=
  ∀ n, P6284889908695410302.a n = A284117 (n + 1)

end A284117

/-! ## A284117.P1736159010449302262

`A023889(n+1)-A001414(∏{p}[n+1, #])`
-/

namespace A284117.P1736159010449302262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (n + 1) - A001414 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A284117.P1736159010449302262

namespace A284117

/-- `A023889(n+1)-A001414(∏{p}[n+1, #])` -/
def P1736159010449302262.Spec : Prop :=
  ∀ n, P1736159010449302262.a n = A284117 (n + 1)

end A284117

/-! ## A284117.P10644233207491795793

`A023889(n+1)-A008475(∏{p}[n+1, #])`
-/

namespace A284117.P10644233207491795793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (n + 1) - A008475 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A284117.P10644233207491795793

namespace A284117

/-- `A023889(n+1)-A008475(∏{p}[n+1, #])` -/
def P10644233207491795793.Spec : Prop :=
  ∀ n, P10644233207491795793.a n = A284117 (n + 1)

end A284117

/-! ## A284117.P1811970125976316341

`A023889(n+1)-A001414(A007947(n+1))`
-/

namespace A284117.P1811970125976316341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (n + 1) - A001414 (A007947 (n + 1)).toNat

end

end A284117.P1811970125976316341

namespace A284117

/-- `A023889(n+1)-A001414(A007947(n+1))` -/
def P1811970125976316341.Spec : Prop :=
  ∀ n, P1811970125976316341.a n = A284117 (n + 1)

end A284117

/-! ## A284117.P796317332234755124

`A023888(n+1)-A023888(A007947(n+1))`
-/

namespace A284117.P796317332234755124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (n + 1) - A023888 (A007947 (n + 1)).toNat

end

end A284117.P796317332234755124

namespace A284117

/-- `A023888(n+1)-A023888(A007947(n+1))` -/
def P796317332234755124.Spec : Prop :=
  ∀ n, P796317332234755124.a n = A284117 (n + 1)

end A284117

/-! ## A284117.P2224429604292767715

`A351395(n+1)-A000203(A007947(n+1))`
-/

namespace A284117.P2224429604292767715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351395 (n + 1) - A000203 (A007947 (n + 1)).toNat

end

end A284117.P2224429604292767715

namespace A284117

/-- `A351395(n+1)-A000203(A007947(n+1))` -/
def P2224429604292767715.Spec : Prop :=
  ∀ n, P2224429604292767715.a n = A284117 (n + 1)

end A284117

/-! ## A284117.P4197987119575470937

`A023888(n+1)+A023891(n+1)-A000203(n+1)`
-/

namespace A284117.P4197987119575470937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (n + 1) + (A023891 (n + 1) - A000203 (n + 1))

end

end A284117.P4197987119575470937

namespace A284117

/-- `A023888(n+1)+A023891(n+1)-A000203(n+1)` -/
def P4197987119575470937.Spec : Prop :=
  ∀ n, P4197987119575470937.a n = A284117 (n + 1)

end A284117

/-! ## A284117.P17497857637532479472

`A023889(n+1)-(A344931(n+1)+A344908(n+1))`
-/

namespace A284117.P17497857637532479472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (n + 1) - (A344931 (n + 1) + A344908 (n + 1))

end

end A284117.P17497857637532479472

namespace A284117

/-- `A023889(n+1)-(A344931(n+1)+A344908(n+1))` -/
def P17497857637532479472.Spec : Prop :=
  ∀ n, P17497857637532479472.a n = A284117 (n + 1)

end A284117

/-! ## A284117.P15297369493115120806

`abs(A181894(n%A007947(n+1)+1)-A023889(n+1))`
-/

namespace A284117.P15297369493115120806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A181894 (Int.tmod (n : ℤ) (A007947 (n + 1)) + 1).toNat - A023889 (n + 1)|

end

end A284117.P15297369493115120806

namespace A284117

/-- `abs(A181894(n%A007947(n+1)+1)-A023889(n+1))` -/
def P15297369493115120806.Spec : Prop :=
  ∀ n, P15297369493115120806.a n = A284117 (n + 1)

end A284117

/-!
# A284118: Sum of nonprime squarefree divisors of n.

The programs for A284118, the canonical program `A284118.P3814757859129945566` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284118 has offset 1).

The definition of A284118 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A284118.P3814757859129945566

`A048250(n+1)-A008472(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A284118

/-- `A048250(n+1)-A008472(n+1)` -/
def P3814757859129945566.Spec : Prop :=
  ∀ n, P3814757859129945566.a n = A284118 (n + 1)

theorem P3814757859129945566.correct : P3814757859129945566.Spec := by
  intro n
  simp only [A284118, Nat.add_sub_cancel]

end A284118

/-! ## A284118.P17916840864402554545

`A023890(∏{p}[n+1, #])`
-/

namespace A284118.P17916840864402554545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A284118.P17916840864402554545

namespace A284118

/-- `A023890(∏{p}[n+1, #])` -/
def P17916840864402554545.Spec : Prop :=
  ∀ n, P17916840864402554545.a n = A284118 (n + 1)

end A284118

/-! ## A284118.P6113822607980112052

`A086665(∏{p}[n+1, #])`
-/

namespace A284118.P6113822607980112052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086665 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A284118.P6113822607980112052

namespace A284118

/-- `A086665(∏{p}[n+1, #])` -/
def P6113822607980112052.Spec : Prop :=
  ∀ n, P6113822607980112052.a n = A284118 (n + 1)

end A284118

/-! ## A284118.P10790520433668803410

`A167515(∏{p}[n+1, #])`
-/

namespace A284118.P10790520433668803410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167515 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A284118.P10790520433668803410

namespace A284118

/-- `A167515(∏{p}[n+1, #])` -/
def P10790520433668803410.Spec : Prop :=
  ∀ n, P10790520433668803410.a n = A284118 (n + 1)

end A284118

/-! ## A284118.P15686971039380170635

`A178637(∏{p}[n+1, #])`
-/

namespace A284118.P15686971039380170635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178637 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A284118.P15686971039380170635

namespace A284118

/-- `A178637(∏{p}[n+1, #])` -/
def P15686971039380170635.Spec : Prop :=
  ∀ n, P15686971039380170635.a n = A284118 (n + 1)

end A284118

/-! ## A284118.P3883284812412529655

`A358077(∏{p}[n+1, #])`
-/

namespace A284118.P3883284812412529655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358077 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A284118.P3883284812412529655

namespace A284118

/-- `A358077(∏{p}[n+1, #])` -/
def P3883284812412529655.Spec : Prop :=
  ∀ n, P3883284812412529655.a n = A284118 (n + 1)

end A284118

/-! ## A284118.P5748334820982091301

`∑{d}[n+1, #*A354819(#)]`
-/

namespace A284118.P5748334820982091301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A354819 d

end

end A284118.P5748334820982091301

namespace A284118

/-- `∑{d}[n+1, #*A354819(#)]` -/
def P5748334820982091301.Spec : Prop :=
  ∀ n, P5748334820982091301.a n = A284118 (n + 1)

end A284118

/-! ## A284118.P10014026458252907940

`A000203(∏{p}[n+1, #])-∑{p}[n+1, #]`
-/

namespace A284118.P10014026458252907940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n), p) - ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A284118.P10014026458252907940

namespace A284118

/-- `A000203(∏{p}[n+1, #])-∑{p}[n+1, #]` -/
def P10014026458252907940.Spec : Prop :=
  ∀ n, P10014026458252907940.a n = A284118 (n + 1)

end A284118

/-! ## A284118.P12004936512876743167

`A023890(A007947(n+1))`
-/

namespace A284118.P12004936512876743167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (A007947 (n + 1)).toNat

end

end A284118.P12004936512876743167

namespace A284118

/-- `A023890(A007947(n+1))` -/
def P12004936512876743167.Spec : Prop :=
  ∀ n, P12004936512876743167.a n = A284118 (n + 1)

end A284118

/-! ## A284118.P2367302182520383522

`A023890(A334085(n+1))`
-/

namespace A284118.P2367302182520383522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (A334085 (n + 1)).toNat

end

end A284118.P2367302182520383522

namespace A284118

/-- `A023890(A334085(n+1))` -/
def P2367302182520383522.Spec : Prop :=
  ∀ n, P2367302182520383522.a n = A284118 (n + 1)

end A284118

/-! ## A284118.P2277687778831400666

`A023890(A340679(n+1))`
-/

namespace A284118.P2277687778831400666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (A340679 (n + 1)).toNat

end

end A284118.P2277687778831400666

namespace A284118

/-- `A023890(A340679(n+1))` -/
def P2277687778831400666.Spec : Prop :=
  ∀ n, P2277687778831400666.a n = A284118 (n + 1)

end A284118

/-! ## A284118.P13000096550977219661

`A325313(n+1)+A076694(n+1)`
-/

namespace A284118.P13000096550977219661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325313 (n + 1) + A076694 (n + 1)

end

end A284118.P13000096550977219661

namespace A284118

/-- `A325313(n+1)+A076694(n+1)` -/
def P13000096550977219661.Spec : Prop :=
  ∀ n, P13000096550977219661.a n = A284118 (n + 1)

end A284118

/-! ## A284118.P7741349754628885479

`A023890(n+1)-A162296(n+1)`
-/

namespace A284118.P7741349754628885479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) - A162296 (n + 1)

end

end A284118.P7741349754628885479

namespace A284118

/-- `A023890(n+1)-A162296(n+1)` -/
def P7741349754628885479.Spec : Prop :=
  ∀ n, P7741349754628885479.a n = A284118 (n + 1)

end A284118

/-! ## A284118.P4642305222751790957

`A351395(n+1)-A023889(n+1)`
-/

namespace A284118.P4642305222751790957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351395 (n + 1) - A023889 (n + 1)

end

end A284118.P4642305222751790957

namespace A284118

/-- `A351395(n+1)-A023889(n+1)` -/
def P4642305222751790957.Spec : Prop :=
  ∀ n, P4642305222751790957.a n = A284118 (n + 1)

end A284118

/-! ## A284118.P17462501170439621834

`A178637((n+1)/A003557(n+1))`
-/

namespace A284118.P17462501170439621834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178637 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A284118.P17462501170439621834

namespace A284118

/-- `A178637((n+1)/A003557(n+1))` -/
def P17462501170439621834.Spec : Prop :=
  ∀ n, P17462501170439621834.a n = A284118 (n + 1)

end A284118

/-! ## A284118.P5858876427584530067

`∑{d}[A007947(n+1), #-A061397(#)]`
-/

namespace A284118.P5858876427584530067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A061397 d)

end

end A284118.P5858876427584530067

namespace A284118

/-- `∑{d}[A007947(n+1), #-A061397(#)]` -/
def P5858876427584530067.Spec : Prop :=
  ∀ n, P5858876427584530067.a n = A284118 (n + 1)

end A284118

/-! ## A284118.P9441956806880345614

`A000203(∏{p}[n+1, #])-A008472(n+1)`
-/

namespace A284118.P9441956806880345614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n), p) - A008472 (n + 1)

end

end A284118.P9441956806880345614

namespace A284118

/-- `A000203(∏{p}[n+1, #])-A008472(n+1)` -/
def P9441956806880345614.Spec : Prop :=
  ∀ n, P9441956806880345614.a n = A284118 (n + 1)

end A284118

/-! ## A284118.P2899653517550080649

`A178637(A053166(A053166(n+1)))`
-/

namespace A284118.P2899653517550080649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178637 (A053166 (A053166 (n + 1)).toNat).toNat

end

end A284118.P2899653517550080649

namespace A284118

/-- `A178637(A053166(A053166(n+1)))` -/
def P2899653517550080649.Spec : Prop :=
  ∀ n, P2899653517550080649.a n = A284118 (n + 1)

end A284118

/-! ## A284118.P12782291920301021915

`A000203(A007947(n+1))-A008472(n+1)`
-/

namespace A284118.P12782291920301021915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1)).toNat - A008472 (n + 1)

end

end A284118.P12782291920301021915

namespace A284118

/-- `A000203(A007947(n+1))-A008472(n+1)` -/
def P12782291920301021915.Spec : Prop :=
  ∀ n, P12782291920301021915.a n = A284118 (n + 1)

end A284118

/-! ## A284118.P3712208666668236467

`A048250(n+1)+A024924(n)-A024924(n+1)`
-/

namespace A284118.P3712208666668236467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) + (A024924 n - A024924 (n + 1))

end

end A284118.P3712208666668236467

namespace A284118

/-- `A048250(n+1)+A024924(n)-A024924(n+1)` -/
def P3712208666668236467.Spec : Prop :=
  ∀ n, P3712208666668236467.a n = A284118 (n + 1)

end A284118

/-!
# A284119: Preperiod (or threshold) of orbit of Post's {00, 1101} tag system applied to the word (100)^n, or -1 if this word has an unbounded trajectory.

The programs for A284119, there is no canonical definition to state claims against.
-/

/-! ## A284119.P8461008367890052802

`A302202(n+1)-A284121(n+1)`
-/

namespace A284119.P8461008367890052802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302202 (n + 1) - A284121 (n + 1)

end

end A284119.P8461008367890052802

/-! ## A284119.P6810183736667824704

`A302202(n+1)-A028310(A291793(n+1))%A014284(61*n+37)`
-/

namespace A284119.P6810183736667824704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302202 (n + 1) - Int.tmod (A028310 (A291793 (n + 1)).toNat) (A014284 (61 * n + 37))

end

end A284119.P6810183736667824704

/-! ## A284119.P16014081861629450101

`A302202(n+1)-A028310(A291793(n+1)%A333277(n+1))`
-/

namespace A284119.P16014081861629450101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302202 (n + 1) - A028310 (Int.tmod (A291793 (n + 1)) (A333277 (n + 1))).toNat

end

end A284119.P16014081861629450101

/-! ## A284119.P8977761976321172118

`A302202(n+1)-A028310(A291793(n+1))%A007824(n)`
-/

namespace A284119.P8977761976321172118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302202 (n + 1) - Int.tmod (A028310 (A291793 (n + 1)).toNat) (A007824 n)

end

end A284119.P8977761976321172118

/-! ## A284119.P15629612645249790583

`A302202(n+1)-A028310(A291793(n+1)%A271991(n))`
-/

namespace A284119.P15629612645249790583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302202 (n + 1) - A028310 (Int.tmod (A291793 (n + 1)) (A271991 n)).toNat

end

end A284119.P15629612645249790583

/-!
# A284120: Permutation of the positive integers: a(n) = A258746(A117120(n)) = A117120(A258746(n)).

The programs for A284120, the canonical program `A284120.P6392286246842557568` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284120 has offset 1).

The definition of A284120 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117120, A258746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A284120.P6392286246842557568

`A258746(A117120(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A284120

/-- `A258746(A117120(n+1))` -/
def P6392286246842557568.Spec : Prop :=
  ∀ n, P6392286246842557568.a n = A284120 (n + 1)

theorem P6392286246842557568.correct : P6392286246842557568.Spec := by
  intro n
  simp only [A284120, Nat.add_sub_cancel]

end A284120

/-! ## A284120.P17557734909173086424

`A117120(A258746(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284120.P17557734909173086424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117120 (A258746 (n + 1)).toNat

end

end A284120.P17557734909173086424

namespace A284120

/-- `A117120(A258746(n+1))` -/
def P17557734909173086424.Spec : Prop :=
  ∀ n, P17557734909173086424.a n = A284120 (n + 1)

end A284120

/-! ## A284120.P4333609896647159759

`A258746(A063946(A054429(n+1)))`
-/

namespace A284120.P4333609896647159759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258746 (A063946 (A054429 (n + 1)).toNat).toNat

end

end A284120.P4333609896647159759

namespace A284120

/-- `A258746(A063946(A054429(n+1)))` -/
def P4333609896647159759.Spec : Prop :=
  ∀ n, P4333609896647159759.a n = A284120 (n + 1)

end A284120

/-! ## A284120.P895891708181031234

`A258746(A180201(A258746(A180200(n+1))))`
-/

namespace A284120.P895891708181031234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258746 (A180201 (A258746 (A180200 (n + 1)).toNat).toNat).toNat

end

end A284120.P895891708181031234

namespace A284120

/-- `A258746(A180201(A258746(A180200(n+1))))` -/
def P895891708181031234.Spec : Prop :=
  ∀ n, P895891708181031234.a n = A284120 (n + 1)

end A284120

/-! ## A284120.P17629977004829430161

`A063946(A180200(A003188(n+1)))`
-/

namespace A284120.P17629977004829430161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A180200 (A003188 (n + 1)).toNat).toNat

end

end A284120.P17629977004829430161

namespace A284120

/-- `A063946(A180200(A003188(n+1)))` -/
def P17629977004829430161.Spec : Prop :=
  ∀ n, P17629977004829430161.a n = A284120 (n + 1)

end A284120

/-! ## A284120.P13515976751715066225

`A180200(A064706(A233279(n+1)))`
-/

namespace A284120.P13515976751715066225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A064706 (A233279 (n + 1)).toNat).toNat

end

end A284120.P13515976751715066225

namespace A284120

/-- `A180200(A064706(A233279(n+1)))` -/
def P13515976751715066225.Spec : Prop :=
  ∀ n, P13515976751715066225.a n = A284120 (n + 1)

end A284120

/-! ## A284120.P1535232206703587413

`A117120(A180200(A233280(n+1)))`
-/

namespace A284120.P1535232206703587413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117120 (A180200 (A233280 (n + 1)).toNat).toNat

end

end A284120.P1535232206703587413

namespace A284120

/-- `A117120(A180200(A233280(n+1)))` -/
def P1535232206703587413.Spec : Prop :=
  ∀ n, P1535232206703587413.a n = A284120 (n + 1)

end A284120

/-! ## A284120.P8579003713749919987

`A258746(A233280(A180200(n+1)))`
-/

namespace A284120.P8579003713749919987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258746 (A233280 (A180200 (n + 1)).toNat).toNat

end

end A284120.P8579003713749919987

namespace A284120

/-- `A258746(A233280(A180200(n+1)))` -/
def P8579003713749919987.Spec : Prop :=
  ∀ n, P8579003713749919987.a n = A284120 (n + 1)

end A284120

/-! ## A284120.P17273568921521298231

`A375184(A375183(A063946(n+1)))`
-/

namespace A284120.P17273568921521298231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375184 (A375183 (A063946 (n + 1)).toNat).toNat

end

end A284120.P17273568921521298231

namespace A284120

/-- `A375184(A375183(A063946(n+1)))` -/
def P17273568921521298231.Spec : Prop :=
  ∀ n, P17273568921521298231.a n = A284120 (n + 1)

end A284120

/-! ## A284120.P10691736249737400821

`A180200(A064706(A054429(A006068(n+1))))`
-/

namespace A284120.P10691736249737400821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A064706 (A054429 (A006068 (n + 1)).toNat).toNat).toNat

end

end A284120.P10691736249737400821

namespace A284120

/-- `A180200(A064706(A054429(A006068(n+1))))` -/
def P10691736249737400821.Spec : Prop :=
  ∀ n, P10691736249737400821.a n = A284120 (n + 1)

end A284120

/-! ## A284120.P7400318460834285990

`A059893(A258996(A092569(A059893(n+1))))`
-/

namespace A284120.P7400318460834285990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A258996 (A092569 (A059893 (n + 1)).toNat).toNat).toNat

end

end A284120.P7400318460834285990

namespace A284120

/-- `A059893(A258996(A092569(A059893(n+1))))` -/
def P7400318460834285990.Spec : Prop :=
  ∀ n, P7400318460834285990.a n = A284120 (n + 1)

end A284120

/-! ## A284120.P13942151527214576901

`A258746(A065190(A063946(A092569(n+1))))`
-/

namespace A284120.P13942151527214576901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258746 (A065190 (A063946 (A092569 (n + 1)).toNat).toNat).toNat

end

end A284120.P13942151527214576901

namespace A284120

/-- `A258746(A065190(A063946(A092569(n+1))))` -/
def P13942151527214576901.Spec : Prop :=
  ∀ n, P13942151527214576901.a n = A284120 (n + 1)

end A284120

/-! ## A284120.P10315165764136603134

`A063946(A054429(A233279(A180201(n+1))))`
-/

namespace A284120.P10315165764136603134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A054429 (A233279 (A180201 (n + 1)).toNat).toNat).toNat

end

end A284120.P10315165764136603134

namespace A284120

/-- `A063946(A054429(A233279(A180201(n+1))))` -/
def P10315165764136603134.Spec : Prop :=
  ∀ n, P10315165764136603134.a n = A284120 (n + 1)

end A284120

/-! ## A284120.P10560750052326527720

`A054429(A375184(A054429(A375184(n+1))))`
-/

namespace A284120.P10560750052326527720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A375184 (A054429 (A375184 (n + 1)).toNat).toNat).toNat

end

end A284120.P10560750052326527720

namespace A284120

/-- `A054429(A375184(A054429(A375184(n+1))))` -/
def P10560750052326527720.Spec : Prop :=
  ∀ n, P10560750052326527720.a n = A284120 (n + 1)

end A284120

/-! ## A284120.P10232784934626387908

`A332769(A258746(A063946(A258996(n+1))))`
-/

namespace A284120.P10232784934626387908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (A258746 (A063946 (A258996 (n + 1)).toNat).toNat).toNat

end

end A284120.P10232784934626387908

namespace A284120

/-- `A332769(A258746(A063946(A258996(n+1))))` -/
def P10232784934626387908.Spec : Prop :=
  ∀ n, P10232784934626387908.a n = A284120 (n + 1)

end A284120

/-! ## A284120.P13950914134822963890

`A154436(A006068(A006068(A154436(n+1))))`
-/

namespace A284120.P13950914134822963890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 (A006068 (A006068 (A154436 (n + 1)).toNat).toNat).toNat

end

end A284120.P13950914134822963890

namespace A284120

/-- `A154436(A006068(A006068(A154436(n+1))))` -/
def P13950914134822963890.Spec : Prop :=
  ∀ n, P13950914134822963890.a n = A284120 (n + 1)

end A284120

/-! ## A284120.P17146400103367665076

`A165199(A063946(n+1))`
-/

namespace A284120.P17146400103367665076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A063946 (n + 1)).toNat

end

end A284120.P17146400103367665076

namespace A284120

/-- `A165199(A063946(n+1))` -/
def P17146400103367665076.Spec : Prop :=
  ∀ n, P17146400103367665076.a n = A284120 (n + 1)

end A284120

/-! ## A284120.P4823063027190174421

`A063946(A245443(A193231(n+1)))`
-/

namespace A284120.P4823063027190174421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A245443 (A193231 (n + 1)).toNat).toNat

end

end A284120.P4823063027190174421

namespace A284120

/-- `A063946(A245443(A193231(n+1)))` -/
def P4823063027190174421.Spec : Prop :=
  ∀ n, P4823063027190174421.a n = A284120 (n + 1)

end A284120

/-! ## A284120.P3948436583515531126

`A063946(A193231(A245444(n+1)))`
-/

namespace A284120.P3948436583515531126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A193231 (A245444 (n + 1)).toNat).toNat

end

end A284120.P3948436583515531126

namespace A284120

/-- `A063946(A193231(A245444(n+1)))` -/
def P3948436583515531126.Spec : Prop :=
  ∀ n, P3948436583515531126.a n = A284120 (n + 1)

end A284120

/-! ## A284120.P13413529801224408279

`A165199(A117120(A092569(A065190(n+1))))`
-/

namespace A284120.P13413529801224408279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A117120 (A092569 (A065190 (n + 1)).toNat).toNat).toNat

end

end A284120.P13413529801224408279

namespace A284120

/-- `A165199(A117120(A092569(A065190(n+1))))` -/
def P13413529801224408279.Spec : Prop :=
  ∀ n, P13413529801224408279.a n = A284120 (n + 1)

end A284120

/-!
# A284121: Period of orbit of Post's tag system applied to the word (100)^n (version 1), or -1 if the orbit increases without limit.

The programs for A284121, there is no canonical definition to state claims against.
-/

/-! ## A284121.P15750640488975827918

`A302202(n+1)-A284119(n+1)`
-/

namespace A284121.P15750640488975827918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302202 (n + 1) - A284119 (n + 1)

end

end A284121.P15750640488975827918

/-! ## A284121.P13448183286254594089

`A302202(C(n+1, n))%A284119(n+1)`
-/

namespace A284121.P13448183286254594089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302202 (Nat.choose (n + 1) n)) (A284119 (n + 1))

end

end A284121.P13448183286254594089

/-! ## A284121.P15177892895717770590

`A302202(A000027(n+1))%A284119(n+1)`
-/

namespace A284121.P15177892895717770590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302202 (A000027 (n + 1)).toNat) (A284119 (n + 1))

end

end A284121.P15177892895717770590

/-! ## A284121.P12288804004925835127

`A028310(A302202(n+1)%A284119(n+1))`
-/

namespace A284121.P12288804004925835127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A302202 (n + 1)) (A284119 (n + 1))).toNat

end

end A284121.P12288804004925835127

/-! ## A284121.P7510037398413745876

`A302202(A060576(n)+n)%A284119(n+1)`
-/

namespace A284121.P7510037398413745876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302202 (A060576 n + (n : ℤ)).toNat) (A284119 (n + 1))

end

end A284121.P7510037398413745876

/-! ## A284121.P4565826353333263891

`A028310(A291793(n+1))%A014284(61*n+37)`
-/

namespace A284121.P4565826353333263891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A291793 (n + 1)).toNat) (A014284 (61 * n + 37))

end

end A284121.P4565826353333263891

/-! ## A284121.P3001077283786018242

`A028310(A291793(n+1))%A350184(A008621(n))`
-/

namespace A284121.P3001077283786018242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A291793 (n + 1)).toNat) (A350184 (A008621 n).toNat)

end

end A284121.P3001077283786018242

/-! ## A284121.P5643501435964901028

`A274922(A291793(n+1))%A271991(A174571(n))`
-/

namespace A284121.P5643501435964901028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274922 (A291793 (n + 1)).toNat) (A271991 (A174571 n).toNat)

end

end A284121.P5643501435964901028

/-! ## A284121.P14673436330391786498

`A274922(A077028(∑[n])*A291793(n+1))`
-/

namespace A284121.P14673436330391786498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 (A077028 (∑ j ∈ Finset.range (n + 1), f1 j) * A291793 (n + 1)).toNat

end

end A284121.P14673436330391786498

/-! ## A284121.P19004695832674539

`A274922(A291793(n+1)/A077028(∑[n]))`
-/

namespace A284121.P19004695832674539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 (SequenceMachineLib.roundAway ((A291793 (n + 1) : ℚ) / (A077028 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))).toNat

end

end A284121.P19004695832674539

/-! ## A284121.P16325256651287439312

`A007318(A000217(n))*A274922(A291793(n+1))`
-/

namespace A284121.P16325256651287439312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A274922 (A291793 (n + 1)).toNat

end

end A284121.P16325256651287439312

/-! ## A284121.P12307725523765927238

`A028310(A291793(n+1)%p?[A291792(n+1)])`
-/

namespace A284121.P12307725523765927238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A291793 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A284121.P12307725523765927238

/-! ## A284121.P8968244898185485486

`A028310(A291793(n+1)%A333277(n+1))`
-/

namespace A284121.P8968244898185485486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A291793 (n + 1)) (A333277 (n + 1))).toNat

end

end A284121.P8968244898185485486

/-!
# A284122: Number of binary words w of length n for which s, the longest proper suffix of w that appears at least twice in w, is of length 1 (i.e., either s = 0 or s = 1).

The programs for A284122, the canonical program `A284122.P8934534942553924285` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284122 has offset 1).

The definition of A284122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284122.P8934534942553924285

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=8, a(4)=12`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A284122

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P8934534942553924285.Spec : Prop :=
  ∀ n, P8934534942553924285.a n = A284122 (n + 1)

theorem P8934534942553924285.correct : P8934534942553924285.Spec := by
  intro n
  simp only [A284122, Nat.add_sub_cancel]

end A284122

/-! ## A284122.P9922406292489947868

`∑[a(n-1)+a(n-2)-2]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A284122.P9922406292489947868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284122.P9922406292489947868

namespace A284122

/-- `∑[a(n-1)+a(n-2)-2]` -/
def P9922406292489947868.Spec : Prop :=
  ∀ n, P9922406292489947868.a n = A284122 (n + 1)

end A284122

/-! ## A284122.P17792177226945849499

`∑[a(n-1)-(2-a(n-2))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A284122.P17792177226945849499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2, 4] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284122.P17792177226945849499

namespace A284122

/-- `∑[a(n-1)-(2-a(n-2))]` -/
def P17792177226945849499.Spec : Prop :=
  ∀ n, P17792177226945849499.a n = A284122 (n + 1)

end A284122

/-! ## A284122.P14951869419274665213

`lcm(2, 1-A290140(n+1))`
-/

namespace A284122.P14951869419274665213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - A290140 (n + 1))

end

end A284122.P14951869419274665213

namespace A284122

/-- `lcm(2, 1-A290140(n+1))` -/
def P14951869419274665213.Spec : Prop :=
  ∀ n, (P14951869419274665213.a n : ℤ) = A284122 (n + 1)

end A284122

/-! ## A284122.P4595719455241195746

`2*(A324969(n+1)+n-1)`
-/

namespace A284122.P4595719455241195746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A324969 (n + 1) + ((n : ℤ) - 1))

end

end A284122.P4595719455241195746

namespace A284122

/-- `2*(A324969(n+1)+n-1)` -/
def P4595719455241195746.Spec : Prop :=
  ∀ n, P4595719455241195746.a n = A284122 (n + 1)

end A284122

/-! ## A284122.P13250460862483282867

`a(n-1)+A198834(n)+2` with `a(0)=0`
-/

namespace A284122.P13250460862483282867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A198834 n + 2)

end

end A284122.P13250460862483282867

namespace A284122

/-- `a(n-1)+A198834(n)+2` -/
def P13250460862483282867.Spec : Prop :=
  ∀ n, P13250460862483282867.a n = A284122 (n + 1)

end A284122

/-! ## A284122.P15220060889872842657

`2*(A000045(abs(1-n)+1)-1+n)`
-/

namespace A284122.P15220060889872842657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000045 (|1 - (n : ℤ)| + 1).toNat - 1 + (n : ℤ))

end

end A284122.P15220060889872842657

namespace A284122

/-- `2*(A000045(abs(1-n)+1)-1+n)` -/
def P15220060889872842657.Spec : Prop :=
  ∀ n, P15220060889872842657.a n = A284122 (n + 1)

end A284122

/-! ## A284122.P16320086734560269622

`abs(abs(2*(A001611(n)-1)-1)+n-1)+n`
-/

namespace A284122.P16320086734560269622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|2 * (A001611 n - 1) - 1| + (n : ℤ) - 1)| + (n : ℤ)

end

end A284122.P16320086734560269622

namespace A284122

/-- `abs(abs(2*(A001611(n)-1)-1)+n-1)+n` -/
def P16320086734560269622.Spec : Prop :=
  ∀ n, P16320086734560269622.a n = A284122 (n + 1)

end A284122

/-! ## A284122.P10829793098284447437

`A004273(n)+A055389(n)-1`
-/

namespace A284122.P10829793098284447437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (A055389 n - 1)

end

end A284122.P10829793098284447437

namespace A284122

/-- `A004273(n)+A055389(n)-1` -/
def P10829793098284447437.Spec : Prop :=
  ∀ n, P10829793098284447437.a n = A284122 (n + 1)

end A284122

/-! ## A284122.P331965749523551943

`A290140(n+1)-A060576(n)`
-/

namespace A284122.P331965749523551943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290140 (n + 1) - A060576 n

end

end A284122.P331965749523551943

namespace A284122

/-- `A290140(n+1)-A060576(n)` -/
def P331965749523551943.Spec : Prop :=
  ∀ n, P331965749523551943.a n = A284122 (n + 1)

end A284122

/-! ## A284122.P15872461763450167019

`2*(A000071(A028310(n))+n)`
-/

namespace A284122.P15872461763450167019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000071 (A028310 n).toNat + (n : ℤ))

end

end A284122.P15872461763450167019

namespace A284122

/-- `2*(A000071(A028310(n))+n)` -/
def P15872461763450167019.Spec : Prop :=
  ∀ n, P15872461763450167019.a n = A284122 (n + 1)

end A284122

/-! ## A284122.P347864132957097821

`A233583(2*n+1)+A006355(n+1)-2`
-/

namespace A284122.P347864132957097821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (2 * n + 1) + (A006355 (n + 1) - 2)

end

end A284122.P347864132957097821

namespace A284122

/-- `A233583(2*n+1)+A006355(n+1)-2` -/
def P347864132957097821.Spec : Prop :=
  ∀ n, P347864132957097821.a n = A284122 (n + 1)

end A284122

/-! ## A284122.P14364833299962619598

`A002062(n)+A002062(A028310(n))-2`
-/

namespace A284122.P14364833299962619598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n + (A002062 (A028310 n).toNat - 2)

end

end A284122.P14364833299962619598

namespace A284122

/-- `A002062(n)+A002062(A028310(n))-2` -/
def P14364833299962619598.Spec : Prop :=
  ∀ n, P14364833299962619598.a n = A284122 (n + 1)

end A284122

/-! ## A284122.P189506266265136137

`A118658(n+1)+A005843(A005843(n)%(n+1))`
-/

namespace A284122.P189506266265136137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 1) + A005843 (Int.tmod (A005843 n) (n + 1 : ℤ)).toNat

end

end A284122.P189506266265136137

namespace A284122

/-- `A118658(n+1)+A005843(A005843(n)%(n+1))` -/
def P189506266265136137.Spec : Prop :=
  ∀ n, P189506266265136137.a n = A284122 (n + 1)

end A284122

/-! ## A284122.P10751199637258286808

`A214927(2*(n+1))+A267872(2*n)-A267872(n+1)`
-/

namespace A284122.P10751199637258286808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214927 (2 * (n + 1)) + (A267872 (2 * n) - A267872 (n + 1))

end

end A284122.P10751199637258286808

namespace A284122

/-- `A214927(2*(n+1))+A267872(2*n)-A267872(n+1)` -/
def P10751199637258286808.Spec : Prop :=
  ∀ n, P10751199637258286808.a n = A284122 (n + 1)

end A284122

/-! ## A284122.P16843568200750016233

`A214927(2*(n+1))+A267873(2*n)-A267873(n+1)`
-/

namespace A284122.P16843568200750016233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214927 (2 * (n + 1)) + (A267873 (2 * n) - A267873 (n + 1))

end

end A284122.P16843568200750016233

namespace A284122

/-- `A214927(2*(n+1))+A267873(2*n)-A267873(n+1)` -/
def P16843568200750016233.Spec : Prop :=
  ∀ n, P16843568200750016233.a n = A284122 (n + 1)

end A284122

/-! ## A284122.P3045523832221535793

`A364685(n+5)%A288219(n)`
-/

namespace A284122.P3045523832221535793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364685 (n + 5)) (A288219 n)

end

end A284122.P3045523832221535793

namespace A284122

/-- `A364685(n+5)%A288219(n)` -/
def P3045523832221535793.Spec : Prop :=
  ∀ n, P3045523832221535793.a n = A284122 (n + 1)

end A284122

/-! ## A284122.P14620327833511316643

`2*(A000045(n)+log2(A011782(n)))`
-/

namespace A284122.P14620327833511316643
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * ((A000045 n : ℝ) + Real.logb 2 (A011782 n : ℝ))

end

end A284122.P14620327833511316643

namespace A284122

/-- `2*(A000045(n)+log2(A011782(n)))` -/
def P14620327833511316643.Spec : Prop :=
  ∀ n, P14620327833511316643.a n = (A284122 (n + 1) : ℝ)

end A284122

/-! ## A284122.P14343897014542868441

`2*(A000045(n)-1+n)%A000079(n)`
-/

namespace A284122.P14343897014542868441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A000045 n - 1 + (n : ℤ)) (A000079 n)

end

end A284122.P14343897014542868441

namespace A284122

/-- `2*(A000045(n)-1+n)%A000079(n)` -/
def P14343897014542868441.Spec : Prop :=
  ∀ n, P14343897014542868441.a n = A284122 (n + 1)

end A284122

/-! ## A284122.P15214653493271628308

`2*(Δ[A000071(n+1)]+n-1)%A000079(n)`
-/

namespace A284122.P15214653493271628308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (f1 (n + 1) - f1 n + (n : ℤ) - 1) (A000079 n)

end

end A284122.P15214653493271628308

namespace A284122

/-- `2*(Δ[A000071(n+1)]+n-1)%A000079(n)` -/
def P15214653493271628308.Spec : Prop :=
  ∀ n, P15214653493271628308.a n = A284122 (n + 1)

end A284122

/-!
# A284124: Remainder when 4*n is divided by A005185(n).

The programs for A284124, the canonical program `A284124.P6247716302523195513` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284124 has offset 1).

The definition of A284124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284124.P6247716302523195513

`(4*(n+1))%A005185(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284124

/-- `(4*(n+1))%A005185(n+1)` -/
def P6247716302523195513.Spec : Prop :=
  ∀ n, P6247716302523195513.a n = A284124 (n + 1)

theorem P6247716302523195513.correct : P6247716302523195513.Spec := by
  intro n
  simp only [A284124, Nat.add_sub_cancel]

end A284124

/-! ## A284124.P4675964939115583837

`A008574(n+1)%-A005185(n+1)`
-/

namespace A284124.P4675964939115583837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (n + 1)) (-A005185 (n + 1))

end

end A284124.P4675964939115583837

namespace A284124

/-- `A008574(n+1)%-A005185(n+1)` -/
def P4675964939115583837.Spec : Prop :=
  ∀ n, P4675964939115583837.a n = A284124 (n + 1)

end A284124

/-! ## A284124.P14444990142834747320

`A008586(n+1)%-A005185(n+1)`
-/

namespace A284124.P14444990142834747320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008586 (n + 1)) (-A005185 (n + 1))

end

end A284124.P14444990142834747320

namespace A284124

/-- `A008586(n+1)%-A005185(n+1)` -/
def P14444990142834747320.Spec : Prop :=
  ∀ n, P14444990142834747320.a n = A284124 (n + 1)

end A284124

/-! ## A284124.P14894059277879498190

`A008586(A000027(n+1))%A000027(A005185(n+1))`
-/

namespace A284124.P14894059277879498190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008586 (A000027 (n + 1)).toNat) (A000027 (A005185 (n + 1)).toNat)

end

end A284124.P14894059277879498190

namespace A284124

/-- `A008586(A000027(n+1))%A000027(A005185(n+1))` -/
def P14894059277879498190.Spec : Prop :=
  ∀ n, P14894059277879498190.a n = A284124 (n + 1)

end A284124

/-! ## A284124.P11273961998898946064

`record[A283879(n+1)]%-A005185(n+1)`
-/

namespace A284124.P11273961998898946064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (-A005185 (n + 1))

end

end A284124.P11273961998898946064

namespace A284124

/-- `record[A283879(n+1)]%-A005185(n+1)` -/
def P11273961998898946064.Spec : Prop :=
  ∀ n, P11273961998898946064.a n = A284124 (n + 1)

end A284124

/-!
# A284125: Number of binary strings w of length n for which s, the longest proper suffix of w that appears at least twice in w, is of length 2.

The programs for A284125, there is no canonical definition to state claims against.
-/

/-! ## A284125.P14269398274120108449

`A001650(A053156(n+1))-(2*n+1)`
-/

namespace A284125.P14269398274120108449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A053156 (n + 1)).toNat - (2 * n + 1 : ℤ)

end

end A284125.P14269398274120108449

/-! ## A284125.P13637754177776741097

`A301594(n)-A029519(A305531(n+2))`
-/

namespace A284125.P13637754177776741097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301594 n - A029519 (A305531 (n + 2)).toNat

end

end A284125.P13637754177776741097

/-!
# A284126: Hosoya triangle of Pell-Lucas type.

The programs for A284126, the canonical program `A284126.P15441816278525593705` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284126 has offset 1).

The definition of A284126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284126.P15441816278525593705

`A002203(A002260(n+1))*A002203(A004736(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284126

/-- `A002203(A002260(n+1))*A002203(A004736(n+1))` -/
def P15441816278525593705.Spec : Prop :=
  ∀ n, P15441816278525593705.a n = A284126 (n + 1)

theorem P15441816278525593705.correct : P15441816278525593705.Spec := by
  intro n
  simp only [A284126, Nat.add_sub_cancel]

end A284126

/-! ## A284126.P5777400813007941470

`A284127(A185871(n+1))/A284127(n+1)`
-/

namespace A284126.P5777400813007941470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284127 (A185871 (n + 1)).toNat : ℚ) / (A284127 (n + 1) : ℚ)

end

end A284126.P5777400813007941470

namespace A284126

/-- `A284127(A185871(n+1))/A284127(n+1)` -/
def P5777400813007941470.Spec : Prop :=
  ∀ n, P5777400813007941470.a n = (A284126 (n + 1) : ℚ)

end A284126

/-!
# A284127: Hosoya triangle of Pell type, read by rows.

The programs for A284127, the canonical program `A284127.P6552234279612137804` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284127 has offset 1).

The definition of A284127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284127.P6552234279612137804

`A215928(A002260(n+1))*A215928(A004736(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284127

/-- `A215928(A002260(n+1))*A215928(A004736(n+1))` -/
def P6552234279612137804.Spec : Prop :=
  ∀ n, P6552234279612137804.a n = A284127 (n + 1)

theorem P6552234279612137804.correct : P6552234279612137804.Spec := by
  intro n
  simp only [A284127, Nat.add_sub_cancel]

end A284127

/-! ## A284127.P3517515743178854340

`A152719(n)*A215928(A051125(n+1))`
-/

namespace A284127.P3517515743178854340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152719 n * A215928 (A051125 (n + 1)).toNat

end

end A284127.P3517515743178854340

namespace A284127

/-- `A152719(n)*A215928(A051125(n+1))` -/
def P3517515743178854340.Spec : Prop :=
  ∀ n, P3517515743178854340.a n = A284127 (n + 1)

end A284127

/-! ## A284127.P10429358397787562273

`∏{e}[A036561(n), A000129(#+1)]`
-/

namespace A284127.P10429358397787562273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000129 (Nat.factorization (f1 n).natAbs p + 1)

end

end A284127.P10429358397787562273

namespace A284127

/-- `∏{e}[A036561(n), A000129(#+1)]` -/
def P10429358397787562273.Spec : Prop :=
  ∀ n, P10429358397787562273.a n = A284127 (n + 1)

end A284127

/-! ## A284127.P10034232712396039258

`∏{e}[A036561(n), A245565(A000225(#))]`
-/

namespace A284127.P10034232712396039258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A245565 (A000225 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A284127.P10034232712396039258

namespace A284127

/-- `∏{e}[A036561(n), A245565(A000225(#))]` -/
def P10034232712396039258.Spec : Prop :=
  ∀ n, P10034232712396039258.a n = A284127 (n + 1)

end A284127

/-! ## A284127.P8472235457359388949

`A245565(A089633(n))`
-/

namespace A284127.P8472235457359388949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245565 (A089633 n).toNat

end

end A284127.P8472235457359388949

namespace A284127

/-- `A245565(A089633(n))` -/
def P8472235457359388949.Spec : Prop :=
  ∀ n, P8472235457359388949.a n = A284127 (n + 1)

end A284127

/-! ## A284127.P3331766546253118511

`A245565(eq[n, A142151(n)])`
-/

namespace A284127.P3331766546253118511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284127.P3331766546253118511

namespace A284127

/-- `A245565(eq[n, A142151(n)])` -/
def P3331766546253118511.Spec : Prop :=
  ∀ n, P3331766546253118511.a n = A284127 (n + 1)

end A284127

/-! ## A284127.P15569768542957396666

`A245565(A043569(n+1)/2-1)`
-/

namespace A284127.P15569768542957396666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245565 (SequenceMachineLib.roundAway ((A043569 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A284127.P15569768542957396666

namespace A284127

/-- `A245565(A043569(n+1)/2-1)` -/
def P15569768542957396666.Spec : Prop :=
  ∀ n, P15569768542957396666.a n = A284127 (n + 1)

end A284127

/-! ## A284127.P7360479449097196456

`A245565(eq[n+1, A246593(n+1)])`
-/

namespace A284127.P7360479449097196456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284127.P7360479449097196456

namespace A284127

/-- `A245565(eq[n+1, A246593(n+1)])` -/
def P7360479449097196456.Spec : Prop :=
  ∀ n, P7360479449097196456.a n = A284127 (n + 1)

end A284127

/-! ## A284127.P9542765630963453645

`A245565(eq[A023416(n)², A023416(n)])`
-/

namespace A284127.P9542765630963453645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245565 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A284127.P9542765630963453645

namespace A284127

/-- `A245565(eq[A023416(n)², A023416(n)])` -/
def P9542765630963453645.Spec : Prop :=
  ∀ n, P9542765630963453645.a n = A284127 (n + 1)

end A284127

/-! ## A284127.P4503669911851332517

`A245565(A043569(n+1)-2)`
-/

namespace A284127.P4503669911851332517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245565 (A043569 (n + 1) - 2).toNat

end

end A284127.P4503669911851332517

namespace A284127

/-- `A245565(A043569(n+1)-2)` -/
def P4503669911851332517.Spec : Prop :=
  ∀ n, P4503669911851332517.a n = A284127 (n + 1)

end A284127

/-!
# A284128: Hosoya triangle of Fermat Lucas type, read by rows.

The programs for A284128, the canonical program `A284128.P5800027111026948998` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284128 has offset 9).

The definition of A284128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284128.P2860550095878828310

`A084468(n+1)+2^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A284128.P2860550095878828310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084468 (n + 1) : ℚ) + (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A284128.P2860550095878828310

namespace A284128

/-- `A084468(n+1)+2^(C(comp[∑[n]]-n, 2)-n)` -/
def P2860550095878828310.Spec : Prop :=
  ∀ n, P2860550095878828310.a n = (A284128 (n + 9) : ℚ)

end A284128

/-! ## A284128.P6072016734992615984

`2^(C(comp[∑[n]]-n, 2)-n)+2*A018900(n+1)+1`
-/

namespace A284128.P6072016734992615984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) + (2 * A018900 (n + 1) + 1 : ℚ)

end

end A284128.P6072016734992615984

namespace A284128

/-- `2^(C(comp[∑[n]]-n, 2)-n)+2*A018900(n+1)+1` -/
def P6072016734992615984.Spec : Prop :=
  ∀ n, P6072016734992615984.a n = (A284128 (n + 9) : ℚ)

end A284128

/-! ## A284128.P5800027111026948998

`A090988(n+1)+A084468(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A284128

/-- `A090988(n+1)+A084468(n+1)` -/
def P5800027111026948998.Spec : Prop :=
  ∀ n, P5800027111026948998.a n = A284128 (n + 9)

theorem P5800027111026948998.correct : P5800027111026948998.Spec := by
  intro n
  simp only [A284128, Nat.add_sub_cancel]

end A284128

/-! ## A284128.P4714457209980577663

`A084468(n+1)+A130330(n)+1`
-/

namespace A284128.P4714457209980577663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084468 (n + 1) + (A130330 n + 1)

end

end A284128.P4714457209980577663

namespace A284128

/-- `A084468(n+1)+A130330(n)+1` -/
def P4714457209980577663.Spec : Prop :=
  ∀ n, P4714457209980577663.a n = A284128 (n + 9)

end A284128

/-! ## A284128.P2150543550624093259

`A084468(n+1)+2*A130321(n)`
-/

namespace A284128.P2150543550624093259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084468 (n + 1) + 2 * A130321 n

end

end A284128.P2150543550624093259

namespace A284128

/-- `A084468(n+1)+2*A130321(n)` -/
def P2150543550624093259.Spec : Prop :=
  ∀ n, P2150543550624093259.a n = A284128 (n + 9)

end A284128

/-! ## A284128.P5965121769563058925

`∏{e}[6*A036561(n), A000051(#)]`
-/

namespace A284128.P5965121769563058925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000051 (Nat.factorization (f1 n).natAbs p)

end

end A284128.P5965121769563058925

namespace A284128

/-- `∏{e}[6*A036561(n), A000051(#)]` -/
def P5965121769563058925.Spec : Prop :=
  ∀ n, P5965121769563058925.a n = A284128 (n + 9)

end A284128

/-! ## A284128.P4661378475711298191

`A109535(A084468(n+1))`
-/

namespace A284128.P4661378475711298191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109535 (A084468 (n + 1)).toNat

end

end A284128.P4661378475711298191

namespace A284128

/-- `A109535(A084468(n+1))` -/
def P4661378475711298191.Spec : Prop :=
  ∀ n, P4661378475711298191.a n = A284128 (n + 9)

end A284128

/-! ## A284128.P12301157672347241275

`A055944(A084468(n+1)-1)`
-/

namespace A284128.P12301157672347241275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (A084468 (n + 1) - 1).toNat

end

end A284128.P12301157672347241275

namespace A284128

/-- `A055944(A084468(n+1)-1)` -/
def P12301157672347241275.Spec : Prop :=
  ∀ n, P12301157672347241275.a n = A284128 (n + 9)

end A284128

/-! ## A284128.P4768673439152369005

`A055944(2*A018900(n+1))`
-/

namespace A284128.P4768673439152369005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (2 * A018900 (n + 1)).toNat

end

end A284128.P4768673439152369005

namespace A284128

/-- `A055944(2*A018900(n+1))` -/
def P4768673439152369005.Spec : Prop :=
  ∀ n, P4768673439152369005.a n = A284128 (n + 9)

end A284128

/-! ## A284128.P7532223842549693371

`A055944(xor(1, A084468(n+1)))`
-/

namespace A284128.P7532223842549693371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (Int.xor 1 (A084468 (n + 1))).toNat

end

end A284128.P7532223842549693371

namespace A284128

/-- `A055944(xor(1, A084468(n+1)))` -/
def P7532223842549693371.Spec : Prop :=
  ∀ n, P7532223842549693371.a n = A284128 (n + 9)

end A284128

/-!
# A284129: Hosoya triangle Jacobsthal Lucas type.

The programs for A284129, the canonical program `A284129.P6236670605657251769` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284129 has offset 1).

The definition of A284129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284129.P6236670605657251769

`A014551(A002260(n+1))*A014551(A004736(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284129

/-- `A014551(A002260(n+1))*A014551(A004736(n+1))` -/
def P6236670605657251769.Spec : Prop :=
  ∀ n, P6236670605657251769.a n = A284129 (n + 1)

theorem P6236670605657251769.correct : P6236670605657251769.Spec := by
  intro n
  simp only [A284129, Nat.add_sub_cancel]

end A284129

/-!
# A284130: Hosoya triangle of Jacobsthal type, read by rows.

The programs for A284130, the canonical program `A284130.P7406166648093918569` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284130 has offset 1).

The definition of A284130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284130.P7406166648093918569

`A001045(A002260(n+1))*A001045(A004736(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284130

/-- `A001045(A002260(n+1))*A001045(A004736(n+1))` -/
def P7406166648093918569.Spec : Prop :=
  ∀ n, P7406166648093918569.a n = A284130 (n + 1)

theorem P7406166648093918569.correct : P7406166648093918569.Spec := by
  intro n
  simp only [A284130, Nat.add_sub_cancel]

end A284130

/-! ## A284130.P18128592219092277372

`A001045(A004736(n+1))*A001045(A002262(n)+1)`
-/

namespace A284130.P18128592219092277372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A004736 (n + 1)).toNat * A001045 (A002262 n + 1).toNat

end

end A284130.P18128592219092277372

namespace A284130

/-- `A001045(A004736(n+1))*A001045(A002262(n)+1)` -/
def P18128592219092277372.Spec : Prop :=
  ∀ n, P18128592219092277372.a n = A284130 (n + 1)

end A284130

/-! ## A284130.P10012211803270622452

`A001045(A025581(n)+1)*A001045(A002262(n)+1)`
-/

namespace A284130.P10012211803270622452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A025581 n + 1).toNat * A001045 (A002262 n + 1).toNat

end

end A284130.P10012211803270622452

namespace A284130

/-- `A001045(A025581(n)+1)*A001045(A002262(n)+1)` -/
def P10012211803270622452.Spec : Prop :=
  ∀ n, P10012211803270622452.a n = A284130 (n + 1)

end A284130

/-! ## A284130.P10223475385050599924

`A145394(A059268(n))*A145394(A130321(n))`
-/

namespace A284130.P10223475385050599924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145394 (A059268 n).toNat * A145394 (A130321 n).toNat

end

end A284130.P10223475385050599924

namespace A284130

/-- `A145394(A059268(n))*A145394(A130321(n))` -/
def P10223475385050599924.Spec : Prop :=
  ∀ n, P10223475385050599924.a n = A284130 (n + 1)

end A284130

/-! ## A284130.P16527384191419034851

`A001045(A004736(n+1))*A004396(A059268(n))`
-/

namespace A284130.P16527384191419034851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A004736 (n + 1)).toNat * A004396 (A059268 n).toNat

end

end A284130.P16527384191419034851

namespace A284130

/-- `A001045(A004736(n+1))*A004396(A059268(n))` -/
def P16527384191419034851.Spec : Prop :=
  ∀ n, P16527384191419034851.a n = A284130 (n + 1)

end A284130

/-! ## A284130.P7908324822552845196

`∏{e}[A036561(n), A001045(#+1)]`
-/

namespace A284130.P7908324822552845196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001045 (Nat.factorization (f1 n).natAbs p + 1)

end

end A284130.P7908324822552845196

namespace A284130

/-- `∏{e}[A036561(n), A001045(#+1)]` -/
def P7908324822552845196.Spec : Prop :=
  ∀ n, P7908324822552845196.a n = A284130 (n + 1)

end A284130

/-! ## A284130.P15405513554400088461

`∏{e}[A036561(n), A004396(A000079(#))]`
-/

namespace A284130.P15405513554400088461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004396 (A000079 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A284130.P15405513554400088461

namespace A284130

/-- `∏{e}[A036561(n), A004396(A000079(#))]` -/
def P15405513554400088461.Spec : Prop :=
  ∀ n, P15405513554400088461.a n = A284130 (n + 1)

end A284130

/-! ## A284130.P11403152077811654499

`∏{e}[A036561(n), A004273(A005578(#))]`
-/

namespace A284130.P11403152077811654499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004273 (A005578 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A284130.P11403152077811654499

namespace A284130

/-- `∏{e}[A036561(n), A004273(A005578(#))]` -/
def P11403152077811654499.Spec : Prop :=
  ∀ n, P11403152077811654499.a n = A284130 (n + 1)

end A284130

/-! ## A284130.P17334988997643680530

`A071053(A279645(record[A279645(n)]))`
-/

namespace A284130.P17334988997643680530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 (A279645 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A284130.P17334988997643680530

namespace A284130

/-- `A071053(A279645(record[A279645(n)]))` -/
def P17334988997643680530.Spec : Prop :=
  ∀ n, P17334988997643680530.a n = A284130 (n + 1)

end A284130

/-! ## A284130.P2671090574344012529

`A351347(A036561(n))`
-/

namespace A284130.P2671090574344012529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351347 (A036561 n).toNat

end

end A284130.P2671090574344012529

namespace A284130

/-- `A351347(A036561(n))` -/
def P2671090574344012529.Spec : Prop :=
  ∀ n, P2671090574344012529.a n = A284130 (n + 1)

end A284130

/-!
# A284131: Hosoya triangle of Morgan Voyce type, read by rows.

The programs for A284131, the canonical program `A284131.P15303166683764381892` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284131 has offset 1).

The definition of A284131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284131.P15303166683764381892

`A284115(A185871(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A284131

/-- `A284115(A185871(n+1))` -/
def P15303166683764381892.Spec : Prop :=
  ∀ n, P15303166683764381892.a n = A284131 (n + 1)

theorem P15303166683764381892.correct : P15303166683764381892.Spec := by
  intro n
  simp only [A284131, Nat.add_sub_cancel]

end A284131

/-!
# A284137: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 805", based on the 5-celled von Neumann neighborhood.

The programs for A284137, there is no canonical definition to state claims against.
-/

/-! ## A284137.P10703819080670071542

`A007088(A284139(n))`
-/

namespace A284137.P10703819080670071542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284139 n).toNat

end

end A284137.P10703819080670071542

/-! ## A284137.P6659088636350245578

`A185544(2*A284139(n))`
-/

namespace A284137.P6659088636350245578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284139 n).toNat

end

end A284137.P6659088636350245578

/-!
# A284138: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 805", based on the 5-celled von Neumann neighborhood.

The programs for A284138, there is no canonical definition to state claims against.
-/

/-! ## A284138.P14371868988763306948

`A007088(A284140(n))`
-/

namespace A284138.P14371868988763306948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284140 n).toNat

end

end A284138.P14371868988763306948

/-! ## A284138.P16234319655911789217

`A305989(A284139(n))`
-/

namespace A284138.P16234319655911789217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284139 n).toNat

end

end A284138.P16234319655911789217

/-! ## A284138.P6725066803137995870

`A185544(2*A284140(n))`
-/

namespace A284138.P6725066803137995870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284140 n).toNat

end

end A284138.P6725066803137995870

/-! ## A284138.P8472130106385819829

`A185544(lcm(2, A284140(n)))`
-/

namespace A284138.P8472130106385819829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A284140 n))

end

end A284138.P8472130106385819829

/-!
# A284139: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 805", based on the 5-celled von Neumann neighborhood.

The programs for A284139, there is no canonical definition to state claims against.
-/

/-! ## A284139.P9588719188752389225

`∑[A354581(A279784(n))]`
-/

namespace A284139.P9588719188752389225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354581 (A279784 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284139.P9588719188752389225

/-! ## A284139.P8231179486997871142

`A360921(A000041(n))+A091202(n)`
-/

namespace A284139.P8231179486997871142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360921 (A000041 n).toNat + A091202 n

end

end A284139.P8231179486997871142

/-! ## A284139.P2178006028505970408

`A130446(A301981(n))+A039900(n)`
-/

namespace A284139.P2178006028505970408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A301981 n).toNat + A039900 n

end

end A284139.P2178006028505970408

/-! ## A284139.P6686963469840060282

`A156303(n)+A000120(A357598(n))`
-/

namespace A284139.P6686963469840060282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156303 n + A000120 (A357598 n).toNat

end

end A284139.P6686963469840060282

/-!
# A284140: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 805", based on the 5-celled von Neumann neighborhood.

The programs for A284140, there is no canonical definition to state claims against.
-/

/-! ## A284140.P8733591594722786253

`and(A126646(n), A264618(A284139(n)))`
-/

namespace A284140.P8733591594722786253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A284139 n).toNat)

end

end A284140.P8733591594722786253

/-! ## A284140.P12455930823788031987

`and(A264618(A284139(n)), A284482(n))`
-/

namespace A284140.P12455930823788031987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A264618 (A284139 n).toNat) (A284482 n)

end

end A284140.P12455930823788031987

/-! ## A284140.P8656885964099537402

`A281589(lcm(2, A284139(n)))`
-/

namespace A284140.P8656885964099537402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A284139 n))

end

end A284140.P8656885964099537402

/-! ## A284140.P14900237957422589521

`A030101(A284139(n))`
-/

namespace A284140.P14900237957422589521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A284139 n).toNat

end

end A284140.P14900237957422589521

/-! ## A284140.P14203701433802188207

`A281589(2*A284139(n))`
-/

namespace A284140.P14203701433802188207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A284139 n).toNat

end

end A284140.P14203701433802188207

/-!
# A284150: Sum_{d|n, d==1 or 4 mod 5} d.

The programs for A284150, the canonical program `A284150.P13402515358706383174` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284150 has offset 1).

The definition of A284150 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, A284103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A284150.P13402515358706383174

`A284097(n+1)+A284103(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A284150

/-- `A284097(n+1)+A284103(n+1)` -/
def P13402515358706383174.Spec : Prop :=
  ∀ n, P13402515358706383174.a n = A284150 (n + 1)

theorem P13402515358706383174.correct : P13402515358706383174.Spec := by
  intro n
  simp only [A284150, Nat.add_sub_cancel]

end A284150

/-! ## A284150.P602147092182099098

`∑{d}[n+1, #*A232990(#-1)]`
-/

namespace A284150.P602147092182099098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A232990 (d - 1)

end

end A284150.P602147092182099098

namespace A284150

/-- `∑{d}[n+1, #*A232990(#-1)]` -/
def P602147092182099098.Spec : Prop :=
  ∀ n, P602147092182099098.a n = A284150 (n + 1)

end A284150

/-! ## A284150.P3363801329302581929

`A284361(A132739(n+1))`
-/

namespace A284150.P3363801329302581929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284361 (A132739 (n + 1)).toNat

end

end A284150.P3363801329302581929

namespace A284150

/-- `A284361(A132739(n+1))` -/
def P3363801329302581929.Spec : Prop :=
  ∀ n, P3363801329302581929.a n = A284150 (n + 1)

end A284150

/-! ## A284150.P17429164374778221125

`A284152(n+1)+A109091(n+1)`
-/

namespace A284150.P17429164374778221125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284152 (n + 1) + A109091 (n + 1)

end

end A284150.P17429164374778221125

namespace A284150

/-- `A284152(n+1)+A109091(n+1)` -/
def P17429164374778221125.Spec : Prop :=
  ∀ n, P17429164374778221125.a n = A284150 (n + 1)

end A284150

/-! ## A284150.P10911370671698454923

`A116073(n+1)-A284152(n+1)`
-/

namespace A284150.P10911370671698454923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116073 (n + 1) - A284152 (n + 1)

end

end A284150.P10911370671698454923

namespace A284150

/-- `A116073(n+1)-A284152(n+1)` -/
def P10911370671698454923.Spec : Prop :=
  ∀ n, P10911370671698454923.a n = A284150 (n + 1)

end A284150

/-! ## A284150.P11267357779357890461

`(A116073(n+1)+A109091(n+1))/2`
-/

namespace A284150.P11267357779357890461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116073 (n + 1) + A109091 (n + 1) : ℚ) / 2

end

end A284150.P11267357779357890461

namespace A284150

/-- `(A116073(n+1)+A109091(n+1))/2` -/
def P11267357779357890461.Spec : Prop :=
  ∀ n, P11267357779357890461.a n = (A284150 (n + 1) : ℚ)

end A284150

/-! ## A284150.P14406545881356696395

`A109091(n+1)+A284281(n+1)+A284280(n+1)`
-/

namespace A284150.P14406545881356696395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (n + 1) + (A284281 (n + 1) + A284280 (n + 1))

end

end A284150.P14406545881356696395

namespace A284150

/-- `A109091(n+1)+A284281(n+1)+A284280(n+1)` -/
def P14406545881356696395.Spec : Prop :=
  ∀ n, P14406545881356696395.a n = A284150 (n + 1)

end A284150

/-!
# A284151: Sum_{d|n, d=1 or 6 mod 7} d.

The programs for A284151, the canonical program `A284151.P14768707365356727264` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284151 has offset 1).

The definition of A284151 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284099, A284105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A284151.P14768707365356727264

`A284099(n+1)+A284105(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284151

/-- `A284099(n+1)+A284105(n+1)` -/
def P14768707365356727264.Spec : Prop :=
  ∀ n, P14768707365356727264.a n = A284151 (n + 1)

theorem P14768707365356727264.correct : P14768707365356727264.Spec := by
  intro n
  simp only [A284151, Nat.add_sub_cancel]

end A284151

/-! ## A284151.P17359711001459188642

`A284363(A242603(n+1))`
-/

namespace A284151.P17359711001459188642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284363 (A242603 (n + 1)).toNat

end

end A284151.P17359711001459188642

namespace A284151

/-- `A284363(A242603(n+1))` -/
def P17359711001459188642.Spec : Prop :=
  ∀ n, P17359711001459188642.a n = A284151 (n + 1)

end A284151

/-! ## A284151.P13185170388658582577

`A284099(n+1)+∑{d}[n+1, #*A082784(#+1)]`
-/

namespace A284151.P13185170388658582577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284099 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A082784 (d + 1)

end

end A284151.P13185170388658582577

namespace A284151

/-- `A284099(n+1)+∑{d}[n+1, #*A082784(#+1)]` -/
def P13185170388658582577.Spec : Prop :=
  ∀ n, P13185170388658582577.a n = A284151 (n + 1)

end A284151

/-! ## A284151.P8991182805659024916

`∑{d}[n+1, #*A301678(#)%2]`
-/

namespace A284151.P8991182805659024916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A301678 d) 2

end

end A284151.P8991182805659024916

namespace A284151

/-- `∑{d}[n+1, #*A301678(#)%2]` -/
def P8991182805659024916.Spec : Prop :=
  ∀ n, P8991182805659024916.a n = A284151 (n + 1)

end A284151

/-! ## A284151.P1919791722729261130

`gcd(A055641(A268064(n+1)), A284363(n+1))`
-/

namespace A284151.P1919791722729261130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055641 (A268064 (n + 1)).toNat) (A284363 (n + 1))

end

end A284151.P1919791722729261130

namespace A284151

/-- `gcd(A055641(A268064(n+1)), A284363(n+1))` -/
def P1919791722729261130.Spec : Prop :=
  ∀ n, (P1919791722729261130.a n : ℤ) = A284151 (n + 1)

end A284151

/-!
# A284152: a(n) = Sum_{d|n, d == 2 or 3 mod 5} d.

The programs for A284152, the canonical program `A284152.P5316867727396450920` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284152 has offset 1).

The definition of A284152 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A284152.P5316867727396450920

`A284280(n+1)+A284281(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A284152

/-- `A284280(n+1)+A284281(n+1)` -/
def P5316867727396450920.Spec : Prop :=
  ∀ n, P5316867727396450920.a n = A284152 (n + 1)

theorem P5316867727396450920.correct : P5316867727396450920.Spec := by
  intro n
  simp only [A284152, Nat.add_sub_cancel]

end A284152

/-! ## A284152.P881331626921650048

`A000203(n+1)-A284361(n+1)`
-/

namespace A284152.P881331626921650048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A284361 (n + 1)

end

end A284152.P881331626921650048

namespace A284152

/-- `A000203(n+1)-A284361(n+1)` -/
def P881331626921650048.Spec : Prop :=
  ∀ n, P881331626921650048.a n = A284152 (n + 1)

end A284152

/-! ## A284152.P1156400674195577072

`A284150(n+1)-A109091(n+1)`
-/

namespace A284152.P1156400674195577072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284150 (n + 1) - A109091 (n + 1)

end

end A284152.P1156400674195577072

namespace A284152

/-- `A284150(n+1)-A109091(n+1)` -/
def P1156400674195577072.Spec : Prop :=
  ∀ n, P1156400674195577072.a n = A284152 (n + 1)

end A284152

/-! ## A284152.P13524213318626278192

`A116073(n+1)-A284150(n+1)`
-/

namespace A284152.P13524213318626278192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116073 (n + 1) - A284150 (n + 1)

end

end A284152.P13524213318626278192

namespace A284152

/-- `A116073(n+1)-A284150(n+1)` -/
def P13524213318626278192.Spec : Prop :=
  ∀ n, P13524213318626278192.a n = A284152 (n + 1)

end A284152

/-! ## A284152.P14853140035024839093

`(A116073(n+1)-A109091(n+1))/2`
-/

namespace A284152.P14853140035024839093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116073 (n + 1) - A109091 (n + 1) : ℚ) / 2

end

end A284152.P14853140035024839093

namespace A284152

/-- `(A116073(n+1)-A109091(n+1))/2` -/
def P14853140035024839093.Spec : Prop :=
  ∀ n, P14853140035024839093.a n = (A284152 (n + 1) : ℚ)

end A284152

/-! ## A284152.P12593638516490556978

`A284097(n+1)+A284103(n+1)-A109091(n+1)`
-/

namespace A284152.P12593638516490556978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (n + 1) + (A284103 (n + 1) - A109091 (n + 1))

end

end A284152.P12593638516490556978

namespace A284152

/-- `A284097(n+1)+A284103(n+1)-A109091(n+1)` -/
def P12593638516490556978.Spec : Prop :=
  ∀ n, P12593638516490556978.a n = A284152 (n + 1)

end A284152

/-!
# A284154: Number of zeros in the left half-plane of the polynomial whose coefficients are the ordered divisors of n.

The programs for A284154, there is no canonical definition to state claims against.
-/

/-! ## A284154.P6097496508537391874

`A317441(A000005(n+1))%A166103(n+1)`
-/

namespace A284154.P6097496508537391874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317441 (A000005 (n + 1)).toNat) (A166103 (n + 1))

end

end A284154.P6097496508537391874

/-! ## A284154.P14904261291014961593

`∑{e}[A280041(∏{e}[n+1, #+1]), #]`
-/

namespace A284154.P14904261291014961593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280041 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A284154.P14904261291014961593

/-! ## A284154.P431356522858467980

`∑{e}[A302343(∏{e}[n+1, #+1]), #]`
-/

namespace A284154.P431356522858467980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302343 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A284154.P431356522858467980

/-! ## A284154.P17385712495991159047

`∑{e}[A302344(∏{e}[n+1, #+1]), #]`
-/

namespace A284154.P17385712495991159047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302344 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A284154.P17385712495991159047

/-! ## A284154.P16511827283431193981

`∑{e}[A079801(A000005(n+1)), #]`
-/

namespace A284154.P16511827283431193981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079801 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A284154.P16511827283431193981

/-!
# A284155: Continued fraction expansion of A104691: ePi, digits of e and Pi interleaved.

The programs for A284155, there is no canonical definition to state claims against.
-/

/-! ## A284155.P17165198523375533044

`dr(A008713(A323837(n)))`
-/

namespace A284155.P17165198523375533044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A008713 (A323837 n).toNat)

end

end A284155.P17165198523375533044

/-! ## A284155.P14386226172630153834

`A175399(A323837(n)+1)`
-/

namespace A284155.P14386226172630153834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175399 (A323837 n + 1).toNat

end

end A284155.P14386226172630153834

/-! ## A284155.P10022094063052843961

`A370969(A252387(n+1))`
-/

namespace A284155.P10022094063052843961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370969 (A252387 (n + 1)).toNat

end

end A284155.P10022094063052843961

/-! ## A284155.P4469403729276595433

`A280315(A317931(n+4)^A246935(n))`
-/

namespace A284155.P4469403729276595433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280315 (SequenceMachineLib.roundAway ((A317931 (n + 4) : ℚ) ^ (A246935 n : ℤ))).toNat

end

end A284155.P4469403729276595433

/-! ## A284155.P8835343631251267508

`A096753(A059299(n))%A130789(n+1)`
-/

namespace A284155.P8835343631251267508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096753 (A059299 n).toNat) (A130789 (n + 1))

end

end A284155.P8835343631251267508

/-!
# A284157: Least index k such that (Sum_{i=1..k} prime(i)) mod prime(k) = n.

The programs for A284157, there is no canonical definition to state claims against.
-/

/-! ## A284157.P3140876340647896064

`A061395(A274995(n)%A024011(n+2))`
-/

namespace A284157.P3140876340647896064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A274995 n) (A024011 (n + 2))).toNat

end

end A284157.P3140876340647896064

/-!
# A284158: Number of n X n 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284158, there is no canonical definition to state claims against.
-/

/-! ## A284158.P16735416677453394662

`A284165(∑[4*n]+1)`
-/

namespace A284158.P16735416677453394662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A284158.P16735416677453394662

/-! ## A284158.P10667627650969872755

`record[A284165(Δ[A235355(n)])]`
-/

namespace A284158.P10667627650969872755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284158.P10667627650969872755

/-! ## A284158.P8430024823765129622

`record[A003982(n)*A284165(n+1)]`
-/

namespace A284158.P8430024823765129622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A284165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284158.P8430024823765129622

/-! ## A284158.P6372961508426990452

`record[gcd(A037012(n), A284165(n+1))]`
-/

namespace A284158.P6372961508426990452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A284165 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284158.P6372961508426990452

/-!
# A284159: Number of n X 2 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284159, there is no canonical definition to state claims against.
-/

/-! ## A284159.P13766477235956823908

`A284165(∑[n+1]+2)`
-/

namespace A284159.P13766477235956823908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A284159.P13766477235956823908

/-! ## A284159.P12209587367021387589

`record[root(A284165(n+3), A004736(n+1))]`
-/

namespace A284159.P12209587367021387589
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A284165 (n + 3) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284159.P12209587367021387589

/-! ## A284159.P7678850911622673509

`A284334(∑[n+2])`
-/

namespace A284159.P7678850911622673509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A284159.P7678850911622673509

/-! ## A284159.P17946342169080721101

`record[A284334(Δ[A003453(n+5)])]`
-/

namespace A284159.P17946342169080721101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284159.P17946342169080721101

/-! ## A284159.P1296568254160644602

`record[A284334(n+2)/A199656(n+4)]`
-/

namespace A284159.P1296568254160644602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284334 (n + 2) : ℚ) / (A199656 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284159.P1296568254160644602

/-!
# A284160: Number of n X 3 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284160, there is no canonical definition to state claims against.
-/

/-! ## A284160.P12642392857750926608

`A284165(∑[n+2]+4)`
-/

namespace A284160.P12642392857750926608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A284160.P12642392857750926608

/-! ## A284160.P16898547114198511386

`A284165(A167614(n+1))+A185284(n)`
-/

namespace A284160.P16898547114198511386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (A167614 (n + 1)).toNat + A185284 n

end

end A284160.P16898547114198511386

/-! ## A284160.P8725484980206002172

`or(A000038(n), A284165(A167614(n+1)))`
-/

namespace A284160.P8725484980206002172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A284165 (A167614 (n + 1)).toNat)

end

end A284160.P8725484980206002172

/-! ## A284160.P11707899322872470048

`A284165(A034856(n+2))+A010894(n+1)`
-/

namespace A284160.P11707899322872470048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (A034856 (n + 2)).toNat + A010894 (n + 1 + 21)

end

end A284160.P11707899322872470048

/-! ## A284160.P3370725718374949760

`A057427(n+1)*A284165(A034856(n+2))`
-/

namespace A284160.P3370725718374949760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A284165 (A034856 (n + 2)).toNat

end

end A284160.P3370725718374949760

/-!
# A284161: Number of n X 4 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284161, there is no canonical definition to state claims against.
-/

/-! ## A284161.P2751644004389934310

`A284165(A374004(n+1))`
-/

namespace A284161.P2751644004389934310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (A374004 (n + 1)).toNat

end

end A284161.P2751644004389934310

/-! ## A284161.P15830632185034055663

`A284165(A141214(n)+7)`
-/

namespace A284161.P15830632185034055663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (A141214 n + 7).toNat

end

end A284161.P15830632185034055663

/-! ## A284161.P2424594585118613098

`A284165(A052905(n)+9)`
-/

namespace A284161.P2424594585118613098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (A052905 n + 9).toNat

end

end A284161.P2424594585118613098

/-! ## A284161.P10980130116067437841

`A284165(eq[5, A066657(n)])`
-/

namespace A284161.P10980130116067437841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284161.P10980130116067437841

/-! ## A284161.P1709944634742306697

`A284165(A167614(n+2)+1)`
-/

namespace A284161.P1709944634742306697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (A167614 (n + 2) + 1).toNat

end

end A284161.P1709944634742306697

/-!
# A284162: Number of n X 5 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284162, there is no canonical definition to state claims against.
-/

/-! ## A284162.P8223572881051323423

`A284165(A374005(n+1))`
-/

namespace A284162.P8223572881051323423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (A374005 (n + 1)).toNat

end

end A284162.P8223572881051323423

/-! ## A284162.P9134747739962983995

`A284165(A167499(n+3))`
-/

namespace A284162.P9134747739962983995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (A167499 (n + 3)).toNat

end

end A284162.P9134747739962983995

/-! ## A284162.P15198098567464386007

`A284165(A056000(n)+15)`
-/

namespace A284162.P15198098567464386007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (A056000 n + 15).toNat

end

end A284162.P15198098567464386007

/-! ## A284162.P7413934575235465006

`A284165(eq[6, A131818(n+1)])`
-/

namespace A284162.P7413934575235465006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284162.P7413934575235465006

/-! ## A284162.P5675808546469125507

`A284165(Δ[A264443(n)])`
-/

namespace A284162.P5675808546469125507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (f1 (n + 1) - f1 n).toNat

end

end A284162.P5675808546469125507

/-!
# A284163: Number of n X 6 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284163, there is no canonical definition to state claims against.
-/

/-! ## A284163.P966624854327693210

`A284165(A374007(n+1))`
-/

namespace A284163.P966624854327693210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (A374007 (n + 1)).toNat

end

end A284163.P966624854327693210

/-! ## A284163.P6156831036873120845

`A284165(A056115(n)+21)`
-/

namespace A284163.P6156831036873120845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (A056115 n + 21).toNat

end

end A284163.P6156831036873120845

/-! ## A284163.P4969561036896383074

`A284165(eq[7, A131818(n+1)])`
-/

namespace A284163.P4969561036896383074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284163.P4969561036896383074

/-! ## A284163.P14316545209641947244

`A284165(A052905(n+3))`
-/

namespace A284163.P14316545209641947244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (A052905 (n + 3)).toNat

end

end A284163.P14316545209641947244

/-! ## A284163.P7323744371653430548

`A284165(eq[3, A219347(n)])`
-/

namespace A284163.P7323744371653430548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284163.P7323744371653430548

/-!
# A284164: Number of n X 7 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284164, there is no canonical definition to state claims against.
-/

/-! ## A284164.P8359811395588491685

`A284165(A374008(n+1))`
-/

namespace A284164.P8359811395588491685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (A374008 (n + 1)).toNat

end

end A284164.P8359811395588491685

/-! ## A284164.P9589926786221437820

`A284165(eq[8, A131818(n+1)])`
-/

namespace A284164.P9589926786221437820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284164.P9589926786221437820

/-! ## A284164.P13414981299228969673

`A284165(eq[4, A219347(n)])`
-/

namespace A284164.P13414981299228969673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284164.P13414981299228969673

/-! ## A284164.P11298209707795290858

`A284165(eq[6, A193592(n)])`
-/

namespace A284164.P11298209707795290858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284164.P11298209707795290858

/-! ## A284164.P130665928645587695

`A284165(eq[7, A200370(n+1)])`
-/

namespace A284164.P130665928645587695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284164.P130665928645587695

/-!
# A284165: T(n,k) = Number of n X k 0..1 arrays with the number of 1's horizontally or vertically adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284165, there is no canonical definition to state claims against.
-/

/-! ## A284165.P17058079927706914341

`A284199(n+1)+A184945(A018793(n))`
-/

namespace A284165.P17058079927706914341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (n + 1) + A184945 (A018793 n).toNat

end

end A284165.P17058079927706914341

/-! ## A284165.P791097437272284282

`A284199(n+1)+A010894(A193724(n))`
-/

namespace A284165.P791097437272284282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (n + 1) + A010894 ((A193724 n).toNat + 21)

end

end A284165.P791097437272284282

/-! ## A284165.P12537357937266175051

`A284199(n+1)+A184945(A135089(n))`
-/

namespace A284165.P12537357937266175051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (n + 1) + A184945 (A135089 n).toNat

end

end A284165.P12537357937266175051

/-! ## A284165.P2551309730377880353

`A284199(n+1)+A063725(A147186(n+1))`
-/

namespace A284165.P2551309730377880353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (n + 1) + A063725 (A147186 (n + 1)).toNat

end

end A284165.P2551309730377880353

/-! ## A284165.P10107947194304214836

`A284199(n+1)+A184945(A238662(n+1))`
-/

namespace A284165.P10107947194304214836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (n + 1) + A184945 (A238662 (n + 1)).toNat

end

end A284165.P10107947194304214836

/-!
# A284167: a(n) = Sum_{i=1..A000005(n)} d(n+k(i)), where d(t) is the number of divisors of t and k(i) is the i-th divisor of n.

The programs for A284167, the canonical program `A284167.P732557117571730859` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284167 has offset 1).

The definition of A284167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284167.P986510863457371736

`∑{d}[n+1, A000005(n+1+#)]`
-/

namespace A284167.P986510863457371736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (n + 1 + d)

end

end A284167.P986510863457371736

namespace A284167

/-- `∑{d}[n+1, A000005(n+1+#)]` -/
def P986510863457371736.Spec : Prop :=
  ∀ n, P986510863457371736.a n = A284167 (n + 1)

end A284167

/-! ## A284167.P732557117571730859

`∑{d}[n+1, sqrt(A035116(n+1+#))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284167

/-- `∑{d}[n+1, sqrt(A035116(n+1+#))]` -/
def P732557117571730859.Spec : Prop :=
  ∀ n, P732557117571730859.a n = (A284167 (n + 1) : ℝ)

end A284167

/-! ## A284167.P17990029163892722264

`∑{d}[n+1, A001227(A003961(n+1+#))]`
-/

namespace A284167.P17990029163892722264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 (A003961 (n + 1 + d)).toNat

end

end A284167.P17990029163892722264

namespace A284167

/-- `∑{d}[n+1, A001227(A003961(n+1+#))]` -/
def P17990029163892722264.Spec : Prop :=
  ∀ n, P17990029163892722264.a n = A284167 (n + 1)

end A284167

/-! ## A284167.P619032359977478726

`∑{d}[n+1, A005361(A064549(n+1+#))]`
-/

namespace A284167.P619032359977478726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005361 (A064549 (n + 1 + d)).toNat

end

end A284167.P619032359977478726

namespace A284167

/-- `∑{d}[n+1, A005361(A064549(n+1+#))]` -/
def P619032359977478726.Spec : Prop :=
  ∀ n, P619032359977478726.a n = A284167 (n + 1)

end A284167

/-!
# A284171: Number of partitions of n into distinct perfect powers (including 1).

The programs for A284171, there is no canonical definition to state claims against.
-/

/-! ## A284171.P5319540103569354766

`A112345(abs(1-n))+A112345(n)`
-/

namespace A284171.P5319540103569354766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112345 |1 - (n : ℤ)|.toNat + A112345 n

end

end A284171.P5319540103569354766

/-! ## A284171.P6133224690810401500

`A286320(n)%A359168(n+1)`
-/

namespace A284171.P6133224690810401500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286320 n) (A359168 (n + 1))

end

end A284171.P6133224690810401500

/-! ## A284171.P7204088275821515356

`A019425(A013609(n))*A286320(n)`
-/

namespace A284171.P7204088275821515356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A013609 n).toNat * A286320 n

end

end A284171.P7204088275821515356

/-! ## A284171.P6857020905506543787

`A286320(n)%A118047(A115728(n))`
-/

namespace A284171.P6857020905506543787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286320 n) (A118047 (A115728 n).toNat)

end

end A284171.P6857020905506543787

/-! ## A284171.P10790960676052250462

`A251717(A005384(n+1))*A286320(n)`
-/

namespace A284171.P10790960676052250462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251717 (A005384 (n + 1)).toNat * A286320 n

end

end A284171.P10790960676052250462

/-! ## A284171.P13846907931605306552

`A286320(n)^C(A286305(n), A078635(n))`
-/

namespace A284171.P13846907931605306552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286320 n ^ Nat.choose (A286305 n).toNat (A078635 n).toNat

end

end A284171.P13846907931605306552

/-! ## A284171.P9312492180319154431

`gcd(A000449(n+3)*A286320(n), A286320(n))`
-/

namespace A284171.P9312492180319154431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000449 (n + 3) * A286320 n) (A286320 n)

end

end A284171.P9312492180319154431

/-! ## A284171.P10645409172510553516

`A286320(gcd(n, A000449(n+4)))`
-/

namespace A284171.P10645409172510553516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286320 (Int.gcd (n : ℤ) (A000449 (n + 4)))

end

end A284171.P10645409172510553516

/-! ## A284171.P11225011624274290088

`and(A001348(n+1), A286320(n))`
-/

namespace A284171.P11225011624274290088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001348 (n + 1)) (A286320 n)

end

end A284171.P11225011624274290088

/-! ## A284171.P10870031222082391598

`and(A045535(A286320(n)²), A286320(n))`
-/

namespace A284171.P10870031222082391598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 (A286320 n ^ 2).toNat) (A286320 n)

end

end A284171.P10870031222082391598

/-!
# A284173: a(n) = (Sum_{k=1..n} q(k+1-q(k))) mod n where q(k) = A005185(k).

The programs for A284173, the canonical program `A284173.P17227999024753311474` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284173 has offset 1).

The definition of A284173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284173.P17227999024753311474

`A280706(n+1)%(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A284173

/-- `A280706(n+1)%(n+1)` -/
def P17227999024753311474.Spec : Prop :=
  ∀ n, P17227999024753311474.a n = A284173 (n + 1)

theorem P17227999024753311474.correct : P17227999024753311474.Spec := by
  intro n
  simp only [A284173, Nat.add_sub_cancel]

end A284173

/-! ## A284173.P13888438395586234023

`∑[A283467(n+1)]%(n+1)`
-/

namespace A284173.P13888438395586234023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A284173.P13888438395586234023

namespace A284173

/-- `∑[A283467(n+1)]%(n+1)` -/
def P13888438395586234023.Spec : Prop :=
  ∀ n, P13888438395586234023.a n = A284173 (n + 1)

end A284173

/-! ## A284173.P9965181409464371466

`∑[A005185(A239913(n+1)+1)]%(n+1)`
-/

namespace A284173.P9965181409464371466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A239913 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A284173.P9965181409464371466

namespace A284173

/-- `∑[A005185(A239913(n+1)+1)]%(n+1)` -/
def P9965181409464371466.Spec : Prop :=
  ∀ n, P9965181409464371466.a n = A284173 (n + 1)

end A284173

/-! ## A284173.P4358164387589514625

`∑[A005185(2-A005185(n+1)+n)]%(n+1)`
-/

namespace A284173.P4358164387589514625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (2 - A005185 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A284173.P4358164387589514625

namespace A284173

/-- `∑[A005185(2-A005185(n+1)+n)]%(n+1)` -/
def P4358164387589514625.Spec : Prop :=
  ∀ n, P4358164387589514625.a n = A284173 (n + 1)

end A284173

/-! ## A284173.P16247928093748916143

`∑[A005185((n*A005185(n+1))%(n+1)+1)]%(n+1)`
-/

namespace A284173.P16247928093748916143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (Int.tmod ((n : ℤ) * A005185 (n + 1)) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A284173.P16247928093748916143

namespace A284173

/-- `∑[A005185((n*A005185(n+1))%(n+1)+1)]%(n+1)` -/
def P16247928093748916143.Spec : Prop :=
  ∀ n, P16247928093748916143.a n = A284173 (n + 1)

end A284173

/-! ## A284173.P14413620394947471262

`∑[A005185(A284019(n+1)+A080677(n+1))]%(n+1)`
-/

namespace A284173.P14413620394947471262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A284019 (n + 1) + A080677 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A284173.P14413620394947471262

namespace A284173

/-- `∑[A005185(A284019(n+1)+A080677(n+1))]%(n+1)` -/
def P14413620394947471262.Spec : Prop :=
  ∀ n, P14413620394947471262.a n = A284173 (n + 1)

end A284173

/-! ## A284173.P1653788277247742812

`∑[A144328(A286559(n+2)+1)]%(n+1)`
-/

namespace A284173.P1653788277247742812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A286559 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A284173.P1653788277247742812

namespace A284173

/-- `∑[A144328(A286559(n+2)+1)]%(n+1)` -/
def P1653788277247742812.Spec : Prop :=
  ∀ n, P1653788277247742812.a n = A284173 (n + 1)

end A284173

/-!
# A284175: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 809", based on the 5-celled von Neumann neighborhood.

The programs for A284175, there is no canonical definition to state claims against.
-/

/-! ## A284175.P1426182746796077726

`A007088(A284177(n))`
-/

namespace A284175.P1426182746796077726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284177 n).toNat

end

end A284175.P1426182746796077726

/-! ## A284175.P9896541585100360559

`A185544(2*A284177(n))`
-/

namespace A284175.P9896541585100360559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284177 n).toNat

end

end A284175.P9896541585100360559

/-! ## A284175.P16511601016233200087

`A256078(A000225(n+2)-A284177(n))`
-/

namespace A284175.P16511601016233200087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (A000225 (n + 2) - A284177 n).toNat

end

end A284175.P16511601016233200087

/-! ## A284175.P15689127429985600100

`A327937(A283044(n))-a(n-1)` with `a(0)=1`
-/

namespace A284175.P15689127429985600100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A327937 (A283044 n).toNat - a (n - 1)

end

end A284175.P15689127429985600100

/-!
# A284176: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 809", based on the 5-celled von Neumann neighborhood.

The programs for A284176, there is no canonical definition to state claims against.
-/

/-! ## A284176.P7715046032067152358

`A007088(A284178(n))`
-/

namespace A284176.P7715046032067152358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284178 n).toNat

end

end A284176.P7715046032067152358

/-! ## A284176.P6138297256297129153

`A185544(2*A284178(n))`
-/

namespace A284176.P6138297256297129153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284178 n).toNat

end

end A284176.P6138297256297129153

/-! ## A284176.P17407937250576833558

`A256078(A000225(n+2)-A284178(n))`
-/

namespace A284176.P17407937250576833558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (A000225 (n + 2) - A284178 n).toNat

end

end A284176.P17407937250576833558

/-! ## A284176.P13117361795601038613

`A281740(n)-A010051(A053983(n))`
-/

namespace A284176.P13117361795601038613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281740 n - A010051 (A053983 n).toNat

end

end A284176.P13117361795601038613

/-!
# A284177: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 809", based on the 5-celled von Neumann neighborhood.

The programs for A284177, there is no canonical definition to state claims against.
-/

/-! ## A284177.P895717023769494958

`and(A233560(A233584(n+1)), A288268(n))`
-/

namespace A284177.P895717023769494958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A233560 (A233584 (n + 1)).toNat) (A288268 n)

end

end A284177.P895717023769494958

/-!
# A284179: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 813", based on the 5-celled von Neumann neighborhood.

The programs for A284179, there is no canonical definition to state claims against.
-/

/-! ## A284179.P8704328222499368902

`A007088(A284181(n))`
-/

namespace A284179.P8704328222499368902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284181 n).toNat

end

end A284179.P8704328222499368902

/-! ## A284179.P17832696471225182851

`A185544(2*A284181(n))`
-/

namespace A284179.P17832696471225182851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284181 n).toNat

end

end A284179.P17832696471225182851

/-!
# A284180: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 813", based on the 5-celled von Neumann neighborhood.

The programs for A284180, there is no canonical definition to state claims against.
-/

/-! ## A284180.P13915006272085738034

`A007088(A284182(n))`
-/

namespace A284180.P13915006272085738034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284182 n).toNat

end

end A284180.P13915006272085738034

/-! ## A284180.P13926264845439584718

`A305989(A284181(n))`
-/

namespace A284180.P13926264845439584718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284181 n).toNat

end

end A284180.P13926264845439584718

/-! ## A284180.P7485406529664685738

`A185544(2*A284182(n))`
-/

namespace A284180.P7485406529664685738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284182 n).toNat

end

end A284180.P7485406529664685738

/-! ## A284180.P14546013114248465633

`A185544(lcm(2, A284182(n)))`
-/

namespace A284180.P14546013114248465633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A284182 n))

end

end A284180.P14546013114248465633

/-!
# A284181: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 813", based on the 5-celled von Neumann neighborhood.

The programs for A284181, there is no canonical definition to state claims against.
-/

/-! ## A284181.P5792355255457260658

`xor(record[A284245(n)], A000975(n))`
-/

namespace A284181.P5792355255457260658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000975 n)

end

end A284181.P5792355255457260658

/-! ## A284181.P12583041357747980796

`A165199(record[A284245(n)])`
-/

namespace A284181.P12583041357747980796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A284181.P12583041357747980796

/-! ## A284181.P13998520158819802590

`or(A165199(A284245(n+1)), A279751(n))`
-/

namespace A284181.P13998520158819802590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165199 (A284245 (n + 1)).toNat) (A279751 n)

end

end A284181.P13998520158819802590

/-! ## A284181.P1452395906734403045

`or(A165199(A284245(n+1)), A280148(n))`
-/

namespace A284181.P1452395906734403045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165199 (A284245 (n + 1)).toNat) (A280148 n)

end

end A284181.P1452395906734403045

/-!
# A284182: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 813", based on the 5-celled von Neumann neighborhood.

The programs for A284182, there is no canonical definition to state claims against.
-/

/-! ## A284182.P11509682971799937692

`and(A126646(n), A264618(A284181(n)))`
-/

namespace A284182.P11509682971799937692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A284181 n).toNat)

end

end A284182.P11509682971799937692

/-! ## A284182.P17613875482959504823

`and(A264618(A284181(n)), A284482(n))`
-/

namespace A284182.P17613875482959504823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A264618 (A284181 n).toNat) (A284482 n)

end

end A284182.P17613875482959504823

/-! ## A284182.P8102247817641140446

`A030101(A284181(n))`
-/

namespace A284182.P8102247817641140446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A284181 n).toNat

end

end A284182.P8102247817641140446

/-! ## A284182.P7276988704318212265

`A281589(2*A284181(n))`
-/

namespace A284182.P7276988704318212265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A284181 n).toNat

end

end A284182.P7276988704318212265

/-! ## A284182.P2116890364090330055

`A325401(2*A284181(n))`
-/

namespace A284182.P2116890364090330055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A284181 n).toNat

end

end A284182.P2116890364090330055

/-!
# A284183: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 825", based on the 5-celled von Neumann neighborhood.

The programs for A284183, there is no canonical definition to state claims against.
-/

/-! ## A284183.P15376769074632044773

`A007088(A284185(n))`
-/

namespace A284183.P15376769074632044773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284185 n).toNat

end

end A284183.P15376769074632044773

/-!
# A284184: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 825", based on the 5-celled von Neumann neighborhood.

The programs for A284184, there is no canonical definition to state claims against.
-/

/-! ## A284184.P13791158660619584790

`A007088(A284186(n))`
-/

namespace A284184.P13791158660619584790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284186 n).toNat

end

end A284184.P13791158660619584790

/-!
# A284190: Numbers k such that k![14]-2 is prime, where k![14] is the fourteen-fold multifactorial.

The programs for A284190, there is no canonical definition to state claims against.
-/

/-! ## A284190.P5469247238009323995

`∑[A376680(A262443(n+1))]`
-/

namespace A284190.P5469247238009323995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376680 (A262443 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284190.P5469247238009323995

/-! ## A284190.P11105637520702490956

`record[A066272(A307159(n+4))]`
-/

namespace A284190.P11105637520702490956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A307159 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284190.P11105637520702490956

/-! ## A284190.P6829648654003511497

`record[or(A030101(n), A329202(3*n+4))]`
-/

namespace A284190.P6829648654003511497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030101 n) (A329202 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284190.P6829648654003511497

/-! ## A284190.P3443422207158944824

`∑[gcd(A000285(3*n+1), A080778(n+1))]`
-/

namespace A284190.P3443422207158944824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000285 (3 * n + 1)) (A080778 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284190.P3443422207158944824

/-!
# A284191: Numbers k such that 4*10^k - 87 is prime.

The programs for A284191, there is no canonical definition to state claims against.
-/

/-! ## A284191.P16561511466144343578

`A291284(n+1)+A291197(A291173(n+1))`
-/

namespace A284191.P16561511466144343578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291284 (n + 1) + A291197 (A291173 (n + 1)).toNat

end

end A284191.P16561511466144343578

/-!
# A284192: Number of n X n 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284192, there is no canonical definition to state claims against.
-/

/-! ## A284192.P18197232672178977275

`A284199(∑[4*n]+1)`
-/

namespace A284192.P18197232672178977275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A284192.P18197232672178977275

/-! ## A284192.P6314624336960333098

`record[A003982(n)*A284199(n+1)]`
-/

namespace A284192.P6314624336960333098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A284199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284192.P6314624336960333098

/-! ## A284192.P9699137731722626070

`record[gcd(A003987(n), A284199(n+1))]`
-/

namespace A284192.P9699137731722626070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A284199 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284192.P9699137731722626070

/-! ## A284192.P18435543684361430336

`A014963(6*(n+1))*A284199(A001844(n))`
-/

namespace A284192.P18435543684361430336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A284199 (A001844 n).toNat

end

end A284192.P18435543684361430336

/-! ## A284192.P17117383361072217059

`A284199(A001844(n))^A001221(A000005(n+1))`
-/

namespace A284192.P17117383361072217059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284199 (A001844 n).toNat : ℚ) ^ (A001221 (A000005 (n + 1)).toNat : ℤ)

end

end A284192.P17117383361072217059

/-!
# A284193: Number of n X 2 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284193, there is no canonical definition to state claims against.
-/

/-! ## A284193.P15969992853286219215

`A284199(∑[n+1]+2)`
-/

namespace A284193.P15969992853286219215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A284193.P15969992853286219215

/-! ## A284193.P4055739854864578352

`A284199(A133263(n+1))+A184945(n)`
-/

namespace A284193.P4055739854864578352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (A133263 (n + 1)).toNat + A184945 n

end

end A284193.P4055739854864578352

/-! ## A284193.P15861783354568459150

`A284199(A133263(n+1))%A284108(n+1)`
-/

namespace A284193.P15861783354568459150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284199 (A133263 (n + 1)).toNat) (A284108 (n + 1))

end

end A284193.P15861783354568459150

/-! ## A284193.P17837431658265158407

`A284199(A133263(n+1))+A035363(2*n+1)`
-/

namespace A284193.P17837431658265158407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (A133263 (n + 1)).toNat + A035363 (2 * n + 1)

end

end A284193.P17837431658265158407

/-! ## A284193.P10860283233672288436

`record[A284199(Δ[A003453(n+5)])]`
-/

namespace A284193.P10860283233672288436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284193.P10860283233672288436

/-!
# A284194: Number of n X 3 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284194, there is no canonical definition to state claims against.
-/

/-! ## A284194.P12367608753814776004

`A284199(∑[n+2]+4)`
-/

namespace A284194.P12367608753814776004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A284194.P12367608753814776004

/-! ## A284194.P7070074340414595940

`lcm((-1)^n, A284199(A167614(n+1)))`
-/

namespace A284194.P7070074340414595940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A284199 (A167614 (n + 1)).toNat)

end

end A284194.P7070074340414595940

/-! ## A284194.P608255498557176870

`A284199(A167614(n+1))+A025439(n)`
-/

namespace A284194.P608255498557176870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (A167614 (n + 1)).toNat + A025439 n

end

end A284194.P608255498557176870

/-! ## A284194.P13018845316844169865

`A284199(A167614(n+1))+A178798(n)`
-/

namespace A284194.P13018845316844169865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (A167614 (n + 1)).toNat + A178798 n

end

end A284194.P13018845316844169865

/-! ## A284194.P13146719433905353377

`or(A000007(n), A284199(A167614(n+1)))`
-/

namespace A284194.P13146719433905353377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A284199 (A167614 (n + 1)).toNat)

end

end A284194.P13146719433905353377

/-!
# A284195: Number of n X 4 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284195, there is no canonical definition to state claims against.
-/

/-! ## A284195.P10267316136746926566

`A284199(A374004(n+1))`
-/

namespace A284195.P10267316136746926566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (A374004 (n + 1)).toNat

end

end A284195.P10267316136746926566

/-! ## A284195.P4449396626350563347

`A284199(A141214(n)+7)`
-/

namespace A284195.P4449396626350563347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (A141214 n + 7).toNat

end

end A284195.P4449396626350563347

/-! ## A284195.P3262043924718240061

`A284199(A167614(n+2)+1)`
-/

namespace A284195.P3262043924718240061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (A167614 (n + 2) + 1).toNat

end

end A284195.P3262043924718240061

/-! ## A284195.P7748262075794985380

`A284199(eq[5, A131818(n+1)])`
-/

namespace A284195.P7748262075794985380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284195.P7748262075794985380

/-! ## A284195.P17877388394889474961

`A284199(Δ[A264443(n)-n²])`
-/

namespace A284195.P17877388394889474961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (f1 (n + 1) - f1 n).toNat

end

end A284195.P17877388394889474961

/-!
# A284196: Number of n X 5 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284196, there is no canonical definition to state claims against.
-/

/-! ## A284196.P8002167805791153321

`A284199(A374005(n+1))`
-/

namespace A284196.P8002167805791153321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (A374005 (n + 1)).toNat

end

end A284196.P8002167805791153321

/-! ## A284196.P12594987808687537493

`A284199(A167499(n+3))`
-/

namespace A284196.P12594987808687537493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (A167499 (n + 3)).toNat

end

end A284196.P12594987808687537493

/-! ## A284196.P7599948327442849030

`A284199(A056000(n)+15)`
-/

namespace A284196.P7599948327442849030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (A056000 n + 15).toNat

end

end A284196.P7599948327442849030

/-! ## A284196.P4278810958372927913

`A284199(eq[6, A131818(n+1)])`
-/

namespace A284196.P4278810958372927913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284196.P4278810958372927913

/-! ## A284196.P11903826747582622241

`A284199(A000124(n+5)-(n+1))`
-/

namespace A284196.P11903826747582622241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A284196.P11903826747582622241

/-!
# A284197: Number of n X 6 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284197, there is no canonical definition to state claims against.
-/

/-! ## A284197.P3150111274040086620

`A284199(A374007(n+1))`
-/

namespace A284197.P3150111274040086620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (A374007 (n + 1)).toNat

end

end A284197.P3150111274040086620

/-! ## A284197.P17373666558089127365

`A284199(A056115(n)+21)`
-/

namespace A284197.P17373666558089127365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (A056115 n + 21).toNat

end

end A284197.P17373666558089127365

/-! ## A284197.P14876714130404623304

`A284199(eq[7, A131818(n+1)])`
-/

namespace A284197.P14876714130404623304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284197.P14876714130404623304

/-! ## A284197.P15498347260014255908

`A284199(A052905(n+3))`
-/

namespace A284197.P15498347260014255908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (A052905 (n + 3)).toNat

end

end A284197.P15498347260014255908

/-! ## A284197.P791976967917747536

`A284199(eq[3, A219347(n)])`
-/

namespace A284197.P791976967917747536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284197.P791976967917747536

/-!
# A284198: Number of n X 7 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284198, there is no canonical definition to state claims against.
-/

/-! ## A284198.P11888962187404331747

`A284199(A374008(n+1))`
-/

namespace A284198.P11888962187404331747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (A374008 (n + 1)).toNat

end

end A284198.P11888962187404331747

/-! ## A284198.P6249553332999260030

`A284199(A167499(n+5)+2)`
-/

namespace A284198.P6249553332999260030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (A167499 (n + 5) + 2).toNat

end

end A284198.P6249553332999260030

/-! ## A284198.P16805300686415864156

`A284199(eq[8, A131818(n+1)])`
-/

namespace A284198.P16805300686415864156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284198.P16805300686415864156

/-! ## A284198.P7114251853999736996

`A284199(eq[4, A219347(n)])`
-/

namespace A284198.P7114251853999736996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284198.P7114251853999736996

/-! ## A284198.P8688990888946352728

`A284199(eq[6, A193592(n)])`
-/

namespace A284198.P8688990888946352728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284199 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284198.P8688990888946352728

/-!
# A284199: T(n,k) = Number of n X k 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284199, there is no canonical definition to state claims against.
-/

/-! ## A284199.P10050011192317405607

`A284165(n+1)-A184945(A018793(n))`
-/

namespace A284199.P10050011192317405607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (n + 1) - A184945 (A018793 n).toNat

end

end A284199.P10050011192317405607

/-! ## A284199.P10555889264987295016

`A284165(n+1)-A010894(A193724(n))`
-/

namespace A284199.P10555889264987295016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284165 (n + 1) - A010894 ((A193724 n).toNat + 21)

end

end A284199.P10555889264987295016

