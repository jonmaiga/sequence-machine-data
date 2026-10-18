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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A329801: Expansion of Sum_{k>=1} x^(k*(k + 1)/2) / (1 + x^(k*(k + 1)/2)).

The programs for A329801, the canonical program `A329801.P8827060005850318479` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329801 has offset 1).

The definition of A329801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329801.P16500965326920901370

`Δ[A069470(n)]-2*A129308(n+1)`
-/

namespace A329801.P16500965326920901370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A129308 (n + 1)

end

end A329801.P16500965326920901370

namespace A329801

/-- `Δ[A069470(n)]-2*A129308(n+1)` -/
def P16500965326920901370.Spec : Prop :=
  ∀ n, P16500965326920901370.a n = A329801 (n + 1)

end A329801

/-! ## A329801.P9029519311000392871

`A007862(n+1)-2*A129308(n+1)`
-/

namespace A329801.P9029519311000392871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (n + 1) - 2 * A129308 (n + 1)

end

end A329801.P9029519311000392871

namespace A329801

/-- `A007862(n+1)-2*A129308(n+1)` -/
def P9029519311000392871.Spec : Prop :=
  ∀ n, P9029519311000392871.a n = A329801 (n + 1)

end A329801

/-! ## A329801.P8827060005850318479

`∑{d}[n+1, A117212(#)*A327629((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A329801

/-- `∑{d}[n+1, A117212(#)*A327629((n+1)/#)]` -/
def P8827060005850318479.Spec : Prop :=
  ∀ n, P8827060005850318479.a n = A329801 (n + 1)

theorem P8827060005850318479.correct : P8827060005850318479.Spec := by
  intro n
  simp only [A329801, Nat.add_sub_cancel]

end A329801

/-! ## A329801.P17246436560045940331

`∑{d}[n+1, A023531(#-1)*A033999((n+1)/#-1)]`
-/

namespace A329801.P17246436560045940331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023531 (d - 1) * A033999 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A329801.P17246436560045940331

namespace A329801

/-- `∑{d}[n+1, A023531(#-1)*A033999((n+1)/#-1)]` -/
def P17246436560045940331.Spec : Prop :=
  ∀ n, P17246436560045940331.a n = A329801 (n + 1)

end A329801

/-! ## A329801.P34216427485350208

`A007862(n+1)-A005843(∑{d}[n+1, val(#², n+1+#)])`
-/

namespace A329801.P34216427485350208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (n + 1) - A005843 (∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (d ^ 2) (n + 1 + d))

end

end A329801.P34216427485350208

namespace A329801

/-- `A007862(n+1)-A005843(∑{d}[n+1, val(#², n+1+#)])` -/
def P34216427485350208.Spec : Prop :=
  ∀ n, P34216427485350208.a n = A329801 (n + 1)

end A329801

/-! ## A329801.P6849930596124537123

`Δ[A069470(n)]-A005843(A129308(n+1))`
-/

namespace A329801.P6849930596124537123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005843 (A129308 (n + 1)).toNat

end

end A329801.P6849930596124537123

namespace A329801

/-- `Δ[A069470(n)]-A005843(A129308(n+1))` -/
def P6849930596124537123.Spec : Prop :=
  ∀ n, P6849930596124537123.a n = A329801 (n + 1)

end A329801

/-! ## A329801.P10862584910567009637

`A007862(n+1)-A005843(A129308(n+1))`
-/

namespace A329801.P10862584910567009637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (n + 1) - A005843 (A129308 (n + 1)).toNat

end

end A329801.P10862584910567009637

namespace A329801

/-- `A007862(n+1)-A005843(A129308(n+1))` -/
def P10862584910567009637.Spec : Prop :=
  ∀ n, P10862584910567009637.a n = A329801 (n + 1)

end A329801

/-! ## A329801.P14335088561991563760

`A325334(n+1)+1-A005843(A129308(n+1))`
-/

namespace A329801.P14335088561991563760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 (n + 1) + 1 - A005843 (A129308 (n + 1)).toNat

end

end A329801.P14335088561991563760

namespace A329801

/-- `A325334(n+1)+1-A005843(A129308(n+1))` -/
def P14335088561991563760.Spec : Prop :=
  ∀ n, P14335088561991563760.a n = A329801 (n + 1)

end A329801

/-! ## A329801.P6607087550405230238

`A129308(2*(n+1))-2*A129308(n+1)`
-/

namespace A329801.P6607087550405230238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (2 * (n + 1)) - 2 * A129308 (n + 1)

end

end A329801.P6607087550405230238

namespace A329801

/-- `A129308(2*(n+1))-2*A129308(n+1)` -/
def P6607087550405230238.Spec : Prop :=
  ∀ n, P6607087550405230238.a n = A329801 (n + 1)

end A329801

/-! ## A329801.P5951430003045834013

`A129308(2*(n+1))-A005843(A129308(n+1))`
-/

namespace A329801.P5951430003045834013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (2 * (n + 1)) - A005843 (A129308 (n + 1)).toNat

end

end A329801.P5951430003045834013

namespace A329801

/-- `A129308(2*(n+1))-A005843(A129308(n+1))` -/
def P5951430003045834013.Spec : Prop :=
  ∀ n, P5951430003045834013.a n = A329801 (n + 1)

end A329801

/-!
# A329802: G.f. A(x) satisfies: A(x) = 1 / (1 - x * Product_{k>=1} A(x^k)).

The programs for A329802, there is no canonical definition to state claims against.
-/

/-! ## A329802.P17705971040010640825

`A076885(A325213(n+1))`
-/

namespace A329802.P17705971040010640825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A325213 (n + 1)).toNat

end

end A329802.P17705971040010640825

/-! ## A329802.P11883343359976099963

`A076222(A149453(n))`
-/

namespace A329802.P11883343359976099963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076222 (A149453 n).toNat

end

end A329802.P11883343359976099963

/-! ## A329802.P7787660158169122572

`A165190(A191636(n+2))`
-/

namespace A329802.P7787660158169122572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A191636 (n + 2)).toNat

end

end A329802.P7787660158169122572

/-!
# A329804: Lexicographically earliest sequence of distinct positive integers such that the product a(n)*a(n+1) is "doubly true" (see the Comments section).

The programs for A329804, there is no canonical definition to state claims against.
-/

/-! ## A329804.P10021125456379346029

`A330326(n+1)/a(n-1)` with `a(0)=1`
-/

namespace A329804.P10021125456379346029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A330326 (n + 1) : ℚ) / a (n - 1)

end

end A329804.P10021125456379346029

/-!
# A329805: Expansion of Product_{i>=1, j>=1} (1 + x^(i*j) + x^(2*i*j)).

The programs for A329805, there is no canonical definition to state claims against.
-/

/-! ## A329805.P16091798959709482132

`A000196((n+1)*A026788(n))`
-/

namespace A329805.P16091798959709482132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n + 1 : ℤ) * A026788 n).toNat

end

end A329805.P16091798959709482132

/-! ## A329805.P3412482340858014331

`A328594(floor(∑[2^n]/(n+1)))+A000010(n+1)`
-/

namespace A329805.P3412482340858014331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328594 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋.toNat + A000010 (n + 1)

end

end A329805.P3412482340858014331

/-!
# A329806: Expansion of Product_{k>=1} 1 / (1 - 6*x^k + x^(2*k))^(1/2).

The programs for A329806, there is no canonical definition to state claims against.
-/

/-! ## A329806.P566926489847279542

`A004525(A060926(n)+(n+1)/∏{p}[n+1, (n+1)/#])`
-/

namespace A329806.P566926489847279542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A060926 n : ℚ) + (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)))).toNat

end

end A329806.P566926489847279542

/-! ## A329806.P9533192329635137455

`A004525(A175919(n)+A060926(n))`
-/

namespace A329806.P9533192329635137455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A175919 n + A060926 n).toNat

end

end A329806.P9533192329635137455

/-!
# A329807: Numbers k such that k, k+1, k+2 and k+3 are all sums of a positive square and a positive cube.

The programs for A329807, there is no canonical definition to state claims against.
-/

/-! ## A329807.P1581479038828649579

`∩[A295787(n+1)-1, A295787(n+1)]`
-/

namespace A329807.P1581479038828649579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295787 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329807.P1581479038828649579

/-! ## A329807.P8467082644021074521

`∩[A329808(n+1)-2, A329808(n+1)]`
-/

namespace A329807.P8467082644021074521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329808 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329807.P8467082644021074521

/-!
# A329808: Numbers k such that both k and k+1 are sums of a positive square and a positive cube.

The programs for A329808, there is no canonical definition to state claims against.
-/

/-! ## A329808.P4609491719706411108

`∩[A055394(n+1)-1, A055394(n+1)]`
-/

namespace A329808.P4609491719706411108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329808.P4609491719706411108

/-! ## A329808.P3100287000305726215

`A055394(eq[1, A055394(n+2)-A055394(n+1)]+1)`
-/

namespace A329808.P3100287000305726215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 2) - A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A329808.P3100287000305726215

/-! ## A329808.P16942520642972633504

`∩[A055394(n+1), A023443(A055394(n+1))]`
-/

namespace A329808.P16942520642972633504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A055394 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329808.P16942520642972633504

/-! ## A329808.P8652605847244107527

`∩[A055394(n+2), A233583(A055394(n+2))]`
-/

namespace A329808.P8652605847244107527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A055394 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329808.P8652605847244107527

/-!
# A329812: Number of permutation polynomials (mod n).

The programs for A329812, there is no canonical definition to state claims against.
-/

/-! ## A329812.P6095563279901672302

`lcm(A002322(n+1)!, A173557(∑[2^n]²))`
-/

namespace A329812.P6095563279901672302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A002322 (n + 1)).toNat : ℤ) (A173557 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2))

end

end A329812.P6095563279901672302

/-! ## A329812.P7546543622961756753

`lcm(A056188(n+1), A137735(A022071(n)))`
-/

namespace A329812.P7546543622961756753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056188 (n + 1)) (A137735 (A022071 n).toNat)

end

end A329812.P7546543622961756753

/-! ## A329812.P7896586261983040983

`and(A028310(A250269(n+1)), A124675(n+1))`
-/

namespace A329812.P7896586261983040983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028310 (A250269 (n + 1)).toNat) (A124675 (n + 1))

end

end A329812.P7896586261983040983

/-! ## A329812.P10709410701763647668

`lcm(A109883(n+1)!, A173557(A126646(n)²))`
-/

namespace A329812.P10709410701763647668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A109883 (n + 1)).toNat : ℤ) (A173557 (A126646 n ^ 2).toNat)

end

end A329812.P10709410701763647668

/-!
# A329815: Number of distinct terms in the first difference sequence of the reduced residue system of the n-th primorial.

The programs for A329815, there is no canonical definition to state claims against.
-/

/-! ## A329815.P5808786589744417479

`A003035(n+1)+comp[A193799(2*(n+2))]`
-/

namespace A329815.P5808786589744417479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193799 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003035 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A329815.P5808786589744417479

/-! ## A329815.P16934645576544224686

`A157795(n)-A137734(A117144(n))`
-/

namespace A329815.P16934645576544224686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157795 n - A137734 (A117144 n).toNat

end

end A329815.P16934645576544224686

/-! ## A329815.P3076623035220490763

`A157795(n)-A115263(A115263(2*n))`
-/

namespace A329815.P3076623035220490763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157795 n - A115263 (A115263 (2 * n)).toNat

end

end A329815.P3076623035220490763

/-! ## A329815.P3587017132829050119

`A387030(A208062(n))+A194229(n+1)`
-/

namespace A329815.P3587017132829050119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387030 (A208062 n).toNat + A194229 (n + 1)

end

end A329815.P3587017132829050119

/-!
# A329817: a(n) is the maximum number of digits that must be checked to obtain all Armstrong numbers in base n.

The programs for A329817, there is no canonical definition to state claims against.
-/

/-! ## A329817.P11233131152466356820

`A045716(A187829(n+1))+A008574(n)`
-/

namespace A329817.P11233131152466356820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045716 (A187829 (n + 1)).toNat + A008574 n

end

end A329817.P11233131152466356820

/-! ## A329817.P5598209682680470200

`A322328(A000079(n))+A045716(n+1)`
-/

namespace A329817.P5598209682680470200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322328 (A000079 n).toNat + A045716 (n + 1)

end

end A329817.P5598209682680470200

/-! ## A329817.P6118225231994421471

`A118759(A045716(n+1)+A008574(n))`
-/

namespace A329817.P6118225231994421471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A045716 (n + 1) + A008574 n).toNat

end

end A329817.P6118225231994421471

/-! ## A329817.P6284589493491114015

`A118759(A054850(n+1)+A016813(n))`
-/

namespace A329817.P6284589493491114015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A054850 (n + 1) + A016813 n).toNat

end

end A329817.P6284589493491114015

/-! ## A329817.P129851775825272794

`A094228(2*(n+1))-A094247(A094236(2*n))`
-/

namespace A329817.P129851775825272794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094228 (2 * (n + 1)) - A094247 (A094236 (2 * n)).toNat

end

end A329817.P129851775825272794

/-!
# A329821: Largest k for which sigma(k) = A002191(n), where A002191 = range of sigma, the sum-of-divisors function A000203.

The programs for A329821, there is no canonical definition to state claims against.
-/

/-! ## A329821.P16009754671801114908

`A085790(∑[A185147(n+1)])`
-/

namespace A329821.P16009754671801114908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085790 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329821.P16009754671801114908

/-! ## A329821.P15479402615770520198

`A325651(A002192(n+1))`
-/

namespace A329821.P15479402615770520198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325651 (A002192 (n + 1)).toNat

end

end A329821.P15479402615770520198

/-! ## A329821.P12367827401735483879

`A057637(A002191(n+1))`
-/

namespace A329821.P12367827401735483879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (A002191 (n + 1)).toNat

end

end A329821.P12367827401735483879

/-! ## A329821.P12785889381462195556

`A057637(∑{d}[A002192(n+1), #])`
-/

namespace A329821.P12785889381462195556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A329821.P12785889381462195556

/-! ## A329821.P5111887257766181565

`A057637(record[∑{d}[A057637(n+1), #]])`
-/

namespace A329821.P5111887257766181565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A329821.P5111887257766181565

/-! ## A329821.P9324054677304463470

`A057637(eq[0, A175253(n+1)]+1)`
-/

namespace A329821.P9324054677304463470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A329821.P9324054677304463470

/-! ## A329821.P10166742102004833933

`A057637(lt[0, A054973(n+1)]+1)`
-/

namespace A329821.P10166742102004833933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A329821.P10166742102004833933

/-! ## A329821.P10043869617189550345

`A057637(eq[1, A175192(n+1)]+1)`
-/

namespace A329821.P10043869617189550345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A329821.P10043869617189550345

/-! ## A329821.P13890914013194045766

`A057637(lt[0, A286011(n+1)]+1)`
-/

namespace A329821.P13890914013194045766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A329821.P13890914013194045766

/-! ## A329821.P23319966835589651

`A057637(eq[1, char[A000203(n+1)]])`
-/

namespace A329821.P23319966835589651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A329821.P23319966835589651

/-!
# A329822: The minimum weight of a Boolean function of algebraic degree at most n-3 whose support contains n linearly independent elements.

The programs for A329822, the canonical program `A329822.P13494927820257659381` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329822 has offset 3).

The definition of A329822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329822.P13494927820257659381

`2*a(n-1)-a(n-2)` with `a(0)=8, a(1)=8, a(2)=12, a(3)=12, a(4)=14`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A329822

/-- `2*a(n-1)-a(n-2)` -/
def P13494927820257659381.Spec : Prop :=
  ∀ n, P13494927820257659381.a n = A329822 (n + 3)

theorem P13494927820257659381.correct : P13494927820257659381.Spec := by
  intro n
  simp only [A329822, Nat.add_sub_cancel]

end A329822

/-!
# A329823: Indices n of Riemann zeta zeros where the Riemann-Siegel Z function sets successive records of maximum absolute values abs(Z(t)) in the interval between the n-th and (n+1)-th zeros.

The programs for A329823, there is no canonical definition to state claims against.
-/

/-! ## A329823.P2649243793912022008

`A327543(n+1)+A268340(4^n)`
-/

namespace A329823.P2649243793912022008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327543 (n + 1) + A268340 (4 ^ n)

end

end A329823.P2649243793912022008

/-! ## A329823.P13499221819566984346

`A327543(n+1)+A319988(4^n)`
-/

namespace A329823.P13499221819566984346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327543 (n + 1) + A319988 (4 ^ n)

end

end A329823.P13499221819566984346

/-! ## A329823.P18027568680486520160

`A327543(n+1)%A231157(n)+1`
-/

namespace A329823.P18027568680486520160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327543 (n + 1)) (A231157 n) + 1

end

end A329823.P18027568680486520160

/-! ## A329823.P6836597429004349553

`A327543(A078213(n+1))-(C(2, n+2)-1)`
-/

namespace A329823.P6836597429004349553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327543 (A078213 (n + 1)).toNat - ((Nat.choose 2 (n + 2) : ℤ) - 1)

end

end A329823.P6836597429004349553

/-! ## A329823.P6428794222276448425

`A327543(n+1)+A001221(A000302(n))`
-/

namespace A329823.P6428794222276448425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327543 (n + 1) + A001221 (A000302 n).toNat

end

end A329823.P6428794222276448425

/-!
# A329824: Number of length-n binary words having no palindromes of length > 5 as contiguous subwords.

The programs for A329824, there is no canonical definition to state claims against.
-/

/-! ## A329824.P5979304297545367377

`A330012(A043318(n+1))`
-/

namespace A329824.P5979304297545367377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330012 (A043318 (n + 1)).toNat

end

end A329824.P5979304297545367377

/-! ## A329824.P16008494180433554260

`A330012(A044915(n+1))`
-/

namespace A329824.P16008494180433554260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330012 (A044915 (n + 1)).toNat

end

end A329824.P16008494180433554260

/-! ## A329824.P1299215918496861952

`A330012(A055647(n+1))`
-/

namespace A329824.P1299215918496861952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330012 (A055647 (n + 1)).toNat

end

end A329824.P1299215918496861952

/-! ## A329824.P10682226652549153961

`A330012(A055648(n)+1)`
-/

namespace A329824.P10682226652549153961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330012 (A055648 n + 1).toNat

end

end A329824.P10682226652549153961

/-! ## A329824.P10423865926434654297

`A330012(A161951(n+1))`
-/

namespace A329824.P10423865926434654297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330012 (A161951 (n + 1)).toNat

end

end A329824.P10423865926434654297

/-!
# A329825: Beatty sequence for (3+sqrt(17))/4.

The programs for A329825, the canonical program `A329825.P3850344957510260985` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329825 has offset 1).

The definition of A329825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329825.P3850344957510260985

`ceil((A171984(n+1)+A008585(n))/4)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A329825

/-- `ceil((A171984(n+1)+A008585(n))/4)` -/
def P3850344957510260985.Spec : Prop :=
  ∀ n, P3850344957510260985.a n = A329825 (n + 1)

theorem P3850344957510260985.correct : P3850344957510260985.Spec := by
  intro n
  simp only [A329825, Nat.add_sub_cancel]

end A329825

/-! ## A329825.P6356634723430498525

`A110655(A171984(n+1)-n)+n`
-/

namespace A329825.P6356634723430498525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A171984 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A329825.P6356634723430498525

namespace A329825

/-- `A110655(A171984(n+1)-n)+n` -/
def P6356634723430498525.Spec : Prop :=
  ∀ n, P6356634723430498525.a n = A329825 (n + 1)

end A329825

/-! ## A329825.P346182616643962366

`A110654(A028250(n+1)+n)`
-/

namespace A329825.P346182616643962366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A028250 (n + 1) + (n : ℤ)).toNat

end

end A329825.P346182616643962366

namespace A329825

/-- `A110654(A028250(n+1)+n)` -/
def P346182616643962366.Spec : Prop :=
  ∀ n, P346182616643962366.a n = A329825 (n + 1)

end A329825

/-! ## A329825.P13905696814528281814

`A008619(A028250(n+1)-1+n)`
-/

namespace A329825.P13905696814528281814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A028250 (n + 1) - 1 + (n : ℤ)).toNat

end

end A329825.P13905696814528281814

namespace A329825

/-- `A008619(A028250(n+1)-1+n)` -/
def P13905696814528281814.Spec : Prop :=
  ∀ n, P13905696814528281814.a n = A329825 (n + 1)

end A329825

/-! ## A329825.P9152628733087958705

`A004526(A028250(n+1)+1+n)`
-/

namespace A329825.P9152628733087958705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028250 (n + 1) + 1 + (n : ℤ)).toNat

end

end A329825.P9152628733087958705

namespace A329825

/-- `A004526(A028250(n+1)+1+n)` -/
def P9152628733087958705.Spec : Prop :=
  ∀ n, P9152628733087958705.a n = A329825 (n + 1)

end A329825

/-! ## A329825.P1041030816527843912

`A110655(A171984(n+1)+3*n)`
-/

namespace A329825.P1041030816527843912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A171984 (n + 1) + (3 * n : ℤ)).toNat

end

end A329825.P1041030816527843912

namespace A329825

/-- `A110655(A171984(n+1)+3*n)` -/
def P1041030816527843912.Spec : Prop :=
  ∀ n, P1041030816527843912.a n = A329825 (n + 1)

end A329825

/-! ## A329825.P11147221015196203813

`A002265(A171984(n+1)+3*(n+1))`
-/

namespace A329825.P11147221015196203813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A171984 (n + 1) + (3 * (n + 1) : ℤ)).toNat

end

end A329825.P11147221015196203813

namespace A329825

/-- `A002265(A171984(n+1)+3*(n+1))` -/
def P11147221015196203813.Spec : Prop :=
  ∀ n, P11147221015196203813.a n = A329825 (n + 1)

end A329825

/-! ## A329825.P10456881558078955368

`A172471(A020914(A131738(n)²))`
-/

namespace A329825.P10456881558078955368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A020914 (A131738 n ^ 2).toNat).toNat

end

end A329825.P10456881558078955368

namespace A329825

/-- `A172471(A020914(A131738(n)²))` -/
def P10456881558078955368.Spec : Prop :=
  ∀ n, P10456881558078955368.a n = A329825 (n + 1)

end A329825

/-! ## A329825.P16409157050000550878

`A137735(A002378(n))+A004526(A249117(n+1))`
-/

namespace A329825.P16409157050000550878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A002378 n).toNat + A004526 (A249117 (n + 1)).toNat

end

end A329825.P16409157050000550878

namespace A329825

/-- `A137735(A002378(n))+A004526(A249117(n+1))` -/
def P16409157050000550878.Spec : Prop :=
  ∀ n, P16409157050000550878.a n = A329825 (n + 1)

end A329825

/-! ## A329825.P2036054295734209010

`A059565(A000142(n+1)/A000142(n))`
-/

namespace A329825.P2036054295734209010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059565 (SequenceMachineLib.roundAway ((A000142 (n + 1) : ℚ) / (A000142 n : ℚ))).toNat

end

end A329825.P2036054295734209010

namespace A329825

/-- `A059565(A000142(n+1)/A000142(n))` -/
def P2036054295734209010.Spec : Prop :=
  ∀ n, P2036054295734209010.a n = A329825 (n + 1)

end A329825

/-!
# A329826: Beatty sequence for (5+sqrt(17))/4.

The programs for A329826, the canonical program `A329826.P16304562123109989385` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329826 has offset 1).

The definition of A329826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3904 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329826.P16304562123109989385

`A008619(A028250(n+1))+n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A329826

/-- `A008619(A028250(n+1))+n` -/
def P16304562123109989385.Spec : Prop :=
  ∀ n, P16304562123109989385.a n = A329826 (n + 1)

theorem P16304562123109989385.correct : P16304562123109989385.Spec := by
  intro n
  simp only [A329826, Nat.add_sub_cancel]

end A329826

/-! ## A329826.P16292400130512417890

`A004526(2*(n+1))+A004526(A028250(n+1))`
-/

namespace A329826.P16292400130512417890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * (n + 1)) + A004526 (A028250 (n + 1)).toNat

end

end A329826.P16292400130512417890

namespace A329826

/-- `A004526(2*(n+1))+A004526(A028250(n+1))` -/
def P16292400130512417890.Spec : Prop :=
  ∀ n, P16292400130512417890.a n = A329826 (n + 1)

end A329826

/-! ## A329826.P17174779792707436943

`A110654(A329825(2*(n+1))+n)`
-/

namespace A329826.P17174779792707436943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A329825 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A329826.P17174779792707436943

namespace A329826

/-- `A110654(A329825(2*(n+1))+n)` -/
def P17174779792707436943.Spec : Prop :=
  ∀ n, P17174779792707436943.a n = A329826 (n + 1)

end A329826

/-! ## A329826.P14429138420795821222

`A004526(A329825(2*(n+1))+A004526(2*n+3))`
-/

namespace A329826.P14429138420795821222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A329825 (2 * (n + 1)) + A004526 (2 * n + 3)).toNat

end

end A329826.P14429138420795821222

namespace A329826

/-- `A004526(A329825(2*(n+1))+A004526(2*n+3))` -/
def P14429138420795821222.Spec : Prop :=
  ∀ n, P14429138420795821222.a n = A329826 (n + 1)

end A329826

/-! ## A329826.P16354198589974017077

`floor(log(A125400(n+1)))`
-/

namespace A329826.P16354198589974017077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A125400 (n + 1) : ℝ)⌋

end

end A329826.P16354198589974017077

namespace A329826

/-- `floor(log(A125400(n+1)))` -/
def P16354198589974017077.Spec : Prop :=
  ∀ n, P16354198589974017077.a n = A329826 (n + 1)

end A329826

/-!
# A329827: Beatty sequence for (5+sqrt(37))/6.

The programs for A329827, there is no canonical definition to state claims against.
-/

/-! ## A329827.P17761078052051500434

`comp[A329828(n+1)-1]+1`
-/

namespace A329827.P17761078052051500434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329828 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329827.P17761078052051500434

/-! ## A329827.P10899516088900246318

`∪[A329828(n+1)-1, A329828(n+5)+1]`
-/

namespace A329827.P10899516088900246318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329828 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329828 (n + 5) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329827.P10899516088900246318

/-! ## A329827.P4029211764414060677

`A057363(3*n+3)+A000007(A215800(n+1))`
-/

namespace A329827.P4029211764414060677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (3 * n + 3) + A000007 (A215800 (n + 1)).toNat

end

end A329827.P4029211764414060677

/-! ## A329827.P5593284271727919633

`A204843(A024847(n+2))+A057363(3*n+3)`
-/

namespace A329827.P5593284271727919633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (A024847 (n + 2)).toNat + A057363 (3 * n + 3)

end

end A329827.P5593284271727919633

/-! ## A329827.P3424580998546553713

`A057363(3*(n+1))%A073500(A144396(n+1))`
-/

namespace A329827.P3424580998546553713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057363 (3 * (n + 1))) (A073500 (A144396 (n + 1)).toNat)

end

end A329827.P3424580998546553713

/-! ## A329827.P18204637955563488400

`A057363(3*n+3)%A260053(A034253(n+1))`
-/

namespace A329827.P18204637955563488400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057363 (3 * n + 3)) (A260053 (A034253 (n + 1)).toNat)

end

end A329827.P18204637955563488400

/-! ## A329827.P1479539157754626620

`A057363(3*(n+1))%A074665(A000009(n))`
-/

namespace A329827.P1479539157754626620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057363 (3 * (n + 1))) (A074665 (A000009 n).toNat)

end

end A329827.P1479539157754626620

/-! ## A329827.P2842027623894692185

`A057363(3*n+3)%A289509(A003215(n))`
-/

namespace A329827.P2842027623894692185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057363 (3 * n + 3)) (A289509 (A003215 n).toNat)

end

end A329827.P2842027623894692185

/-!
# A329828: Beatty sequence for (7+sqrt(37))/6.

The programs for A329828, there is no canonical definition to state claims against.
-/

/-! ## A329828.P18104341164621001441

`A000267(A108120((n+1)²))`
-/

namespace A329828.P18104341164621001441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A108120 ((n + 1) ^ 2)).toNat

end

end A329828.P18104341164621001441

/-! ## A329828.P1666434914705407419

`A168186(A002024(∑[4*n]+1)+1)`
-/

namespace A329828.P1666434914705407419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (A002024 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1).toNat

end

end A329828.P1666434914705407419

/-! ## A329828.P9034180530376040860

`A168186(2*(n+1))%∑[A113004(n+2)]`
-/

namespace A329828.P9034180530376040860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113004 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168186 (2 * (n + 1))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329828.P9034180530376040860

/-! ## A329828.P10038209305380603155

`A168186(2*n+2)%(A155902(n+1)+comp[12*n])²`
-/

namespace A329828.P10038209305380603155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168186 (2 * n + 2)) ((A155902 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2)

end

end A329828.P10038209305380603155

/-! ## A329828.P13877322863442414505

`lcm(A033999(A330101(n)), A168186(2*(n+1)))`
-/

namespace A329828.P13877322863442414505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (A330101 n).toNat) (A168186 (2 * (n + 1)))

end

end A329828.P13877322863442414505

/-! ## A329828.P14882347700627155092

`A168186(2*n+2)+A000007(A000124(2*n))`
-/

namespace A329828.P14882347700627155092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (2 * n + 2) + A000007 (A000124 (2 * n)).toNat

end

end A329828.P14882347700627155092

/-! ## A329828.P17648250547874969289

`A168186(Δ[A004525(∑[4*n])])`
-/

namespace A329828.P17648250547874969289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (f1 (n + 1) - f1 n).toNat

end

end A329828.P17648250547874969289

/-! ## A329828.P16066517019836324319

`A168186(2*(n+1))%A300564(n+1)`
-/

namespace A329828.P16066517019836324319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168186 (2 * (n + 1))) (A300564 (n + 1))

end

end A329828.P16066517019836324319

/-! ## A329828.P16776276665289509845

`A168186(A031885(n+1)-A031884(n+1))`
-/

namespace A329828.P16776276665289509845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (A031885 (n + 1) - A031884 (n + 1)).toNat

end

end A329828.P16776276665289509845

/-!
# A329829: Beatty sequence for (2+sqrt(10))/3.

The programs for A329829, the canonical program `A329829.P3969999251013473238` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329829 has offset 1).

The definition of A329829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329829.P3969999251013473238

`comp[A329830(n+1)-1]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A329829

/-- `comp[A329830(n+1)-1]+1` -/
def P3969999251013473238.Spec : Prop :=
  ∀ n, (P3969999251013473238.a n : ℤ) = A329829 (n + 1)

theorem P3969999251013473238.correct : P3969999251013473238.Spec := by
  intro n
  simp only [A329829, Nat.add_sub_cancel]

end A329829

/-! ## A329829.P18436787814771183967

`A002264(∑[A081168(n)+2])`
-/

namespace A329829.P18436787814771183967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081168 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329829.P18436787814771183967

namespace A329829

/-- `A002264(∑[A081168(n)+2])` -/
def P18436787814771183967.Spec : Prop :=
  ∀ n, P18436787814771183967.a n = A329829 (n + 1)

end A329829

/-! ## A329829.P12901846071241996243

`A000196(A356057((n+1)²))`
-/

namespace A329829.P12901846071241996243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A356057 ((n + 1) ^ 2)).toNat

end

end A329829.P12901846071241996243

namespace A329829

/-- `A000196(A356057((n+1)²))` -/
def P12901846071241996243.Spec : Prop :=
  ∀ n, P12901846071241996243.a n = A329829 (n + 1)

end A329829

/-! ## A329829.P8110705071691902120

`A083026(n+1)+A000679(A230686(n+1))`
-/

namespace A329829.P8110705071691902120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083026 (n + 1) + A000679 (A230686 (n + 1)).toNat

end

end A329829.P8110705071691902120

namespace A329829

/-- `A083026(n+1)+A000679(A230686(n+1))` -/
def P8110705071691902120.Spec : Prop :=
  ∀ n, P8110705071691902120.a n = A329829 (n + 1)

end A329829

/-!
# A329830: Beatty sequence for (4+sqrt(10))/3.

The programs for A329830, the canonical program `A329830.P15395617891048045894` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329830 has offset 1).

The definition of A329830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329830.P15395617891048045894

`floor(2*(n+1)/(4-sqrt(10)))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A329830

/-- `floor(2*(n+1)/(4-sqrt(10)))` -/
def P15395617891048045894.Spec : Prop :=
  ∀ n, P15395617891048045894.a n = A329830 (n + 1)

theorem P15395617891048045894.correct : P15395617891048045894.Spec := by
  intro n
  simp only [A329830, Nat.add_sub_cancel]

end A329830

/-! ## A329830.P10520717900368039966

`A008620(A187396(n+1))+A005408(n)`
-/

namespace A329830.P10520717900368039966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A187396 (n + 1)).toNat + A005408 n

end

end A329830.P10520717900368039966

namespace A329830

/-- `A008620(A187396(n+1))+A005408(n)` -/
def P10520717900368039966.Spec : Prop :=
  ∀ n, P10520717900368039966.a n = A329830 (n + 1)

end A329830

/-! ## A329830.P13270676875828327006

`A002264(A187395(n+1))`
-/

namespace A329830.P13270676875828327006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A187395 (n + 1)).toNat

end

end A329830.P13270676875828327006

namespace A329830

/-- `A002264(A187395(n+1))` -/
def P13270676875828327006.Spec : Prop :=
  ∀ n, P13270676875828327006.a n = A329830 (n + 1)

end A329830

/-! ## A329830.P5061423838712158080

`A002264(∑[A081168(n)+4])`
-/

namespace A329830.P5061423838712158080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081168 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329830.P5061423838712158080

namespace A329830

/-- `A002264(∑[A081168(n)+4])` -/
def P5061423838712158080.Spec : Prop :=
  ∀ n, P5061423838712158080.a n = A329830 (n + 1)

end A329830

/-! ## A329830.P1413276271538573865

`A008620(A187395(n+1)-3)`
-/

namespace A329830.P1413276271538573865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A187395 (n + 1) - 3).toNat

end

end A329830.P1413276271538573865

namespace A329830

/-- `A008620(A187395(n+1)-3)` -/
def P1413276271538573865.Spec : Prop :=
  ∀ n, P1413276271538573865.a n = A329830 (n + 1)

end A329830

/-! ## A329830.P4146309557903212723

`A152467(2*A187395(n+1))`
-/

namespace A329830.P4146309557903212723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (2 * A187395 (n + 1)).toNat

end

end A329830.P4146309557903212723

namespace A329830

/-- `A152467(2*A187395(n+1))` -/
def P4146309557903212723.Spec : Prop :=
  ∀ n, P4146309557903212723.a n = A329830 (n + 1)

end A329830

/-! ## A329830.P15171060849917384039

`A152467(A187395(n+1)+A187395(n+1)+1)`
-/

namespace A329830.P15171060849917384039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A187395 (n + 1) + (A187395 (n + 1) + 1)).toNat

end

end A329830.P15171060849917384039

namespace A329830

/-- `A152467(A187395(n+1)+A187395(n+1)+1)` -/
def P15171060849917384039.Spec : Prop :=
  ∀ n, P15171060849917384039.a n = A329830 (n + 1)

end A329830

/-!
# A329831: Beatty sequence for (7+sqrt(65))/8.

The programs for A329831, the canonical program `A329831.P12461096776249407754` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329831 has offset 1).

The definition of A329831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329831.P12461096776249407754

`comp[A329832(n+1)-1]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A329831

/-- `comp[A329832(n+1)-1]+1` -/
def P12461096776249407754.Spec : Prop :=
  ∀ n, (P12461096776249407754.a n : ℤ) = A329831 (n + 1)

theorem P12461096776249407754.correct : P12461096776249407754.Spec := by
  intro n
  simp only [A329831, Nat.add_sub_cancel]

end A329831

/-! ## A329831.P5668428186770923188

`∑[2-A014026(2*n+1)²]*A064547(A068209(2*n+1))`
-/

namespace A329831.P5668428186770923188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014026 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A064547 (A068209 (2 * n + 1)).toNat

end

end A329831.P5668428186770923188

namespace A329831

/-- `∑[2-A014026(2*n+1)²]*A064547(A068209(2*n+1))` -/
def P5668428186770923188.Spec : Prop :=
  ∀ n, P5668428186770923188.a n = A329831 (n + 1)

end A329831

/-! ## A329831.P11042970777375225625

`A063377(A002378(n+2))+record[and(17, n+1)%3+n]`
-/

namespace A329831.P11042970777375225625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 17 (n + 1) % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (A002378 (n + 2)).toNat + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A329831.P11042970777375225625

namespace A329831

/-- `A063377(A002378(n+2))+record[and(17, n+1)%3+n]` -/
def P11042970777375225625.Spec : Prop :=
  ∀ n, P11042970777375225625.a n = A329831 (n + 1)

end A329831

/-! ## A329831.P12835480337108485667

`∑[2-A014026(2*n+1)²]-A000038(A056000(n+4))`
-/

namespace A329831.P12835480337108485667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014026 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000038 (A056000 (n + 4)).toNat

end

end A329831.P12835480337108485667

namespace A329831

/-- `∑[2-A014026(2*n+1)²]-A000038(A056000(n+4))` -/
def P12835480337108485667.Spec : Prop :=
  ∀ n, P12835480337108485667.a n = A329831 (n + 1)

end A329831

/-! ## A329831.P2776956789727941594

`∑[2-A014026(2*n+1)²]-A000038(A294875(n+1))`
-/

namespace A329831.P2776956789727941594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014026 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000038 (A294875 (n + 1)).toNat

end

end A329831.P2776956789727941594

namespace A329831

/-- `∑[2-A014026(2*n+1)²]-A000038(A294875(n+1))` -/
def P2776956789727941594.Spec : Prop :=
  ∀ n, P2776956789727941594.a n = A329831 (n + 1)

end A329831

/-! ## A329831.P6990005580256589381

`∑[2-A014026(2*n+1)²]%A056926((A247160(2*n+1)+1)²)`
-/

namespace A329831.P6990005580256589381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014026 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A056926 ((A247160 (2 * n + 1) + 1) ^ 2).toNat)

end

end A329831.P6990005580256589381

namespace A329831

/-- `∑[2-A014026(2*n+1)²]%A056926((A247160(2*n+1)+1)²)` -/
def P6990005580256589381.Spec : Prop :=
  ∀ n, P6990005580256589381.a n = A329831 (n + 1)

end A329831

/-! ## A329831.P517298366102189688

`∑[2-A014026(2*n+1)²]-A000038(A059268(n))`
-/

namespace A329831.P517298366102189688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014026 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000038 (A059268 n).toNat

end

end A329831.P517298366102189688

namespace A329831

/-- `∑[2-A014026(2*n+1)²]-A000038(A059268(n))` -/
def P517298366102189688.Spec : Prop :=
  ∀ n, P517298366102189688.a n = A329831 (n + 1)

end A329831

/-! ## A329831.P9330097408534958795

`record[(2*n+1)%A001650(8*n+10)]`
-/

namespace A329831.P9330097408534958795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 1 : ℤ) (A001650 (8 * n + 10))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329831.P9330097408534958795

namespace A329831

/-- `record[(2*n+1)%A001650(8*n+10)]` -/
def P9330097408534958795.Spec : Prop :=
  ∀ n, P9330097408534958795.a n = A329831 (n + 1)

end A329831

/-! ## A329831.P12390518228206630884

`floor(49*(n+1)/17)-A137735(A002378(n))`
-/

namespace A329831.P12390518228206630884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊49 * ((n + 1 : ℚ) / 17)⌋ - A137735 (A002378 n).toNat

end

end A329831.P12390518228206630884

namespace A329831

/-- `floor(49*(n+1)/17)-A137735(A002378(n))` -/
def P12390518228206630884.Spec : Prop :=
  ∀ n, P12390518228206630884.a n = A329831 (n + 1)

end A329831

/-!
# A329832: Beatty sequence for (9+sqrt(65))/8.

The programs for A329832, the canonical program `A329832.P13015511692577924859` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329832 has offset 1).

The definition of A329832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329832.P12963245312318489966

`A247160(2*n+1)+A009194(A065508(n+1))`
-/

namespace A329832.P12963245312318489966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247160 (2 * n + 1) + A009194 (A065508 (n + 1)).toNat

end

end A329832.P12963245312318489966

namespace A329832

/-- `A247160(2*n+1)+A009194(A065508(n+1))` -/
def P12963245312318489966.Spec : Prop :=
  ∀ n, P12963245312318489966.a n = A329832 (n + 1)

end A329832

/-! ## A329832.P16004877046690796647

`A247160(2*n+1)+A204162(A294875(2*(n+1)))`
-/

namespace A329832.P16004877046690796647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247160 (2 * n + 1) + A204162 (A294875 (2 * (n + 1))).toNat

end

end A329832.P16004877046690796647

namespace A329832

/-- `A247160(2*n+1)+A204162(A294875(2*(n+1)))` -/
def P16004877046690796647.Spec : Prop :=
  ∀ n, P16004877046690796647.a n = A329832 (n + 1)

end A329832

/-! ## A329832.P18102887395417364618

`A247160(n+1+n)+A054977(A338340(n+1))`
-/

namespace A329832.P18102887395417364618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247160 (n + 1 + n) + A054977 (A338340 (n + 1)).toNat

end

end A329832.P18102887395417364618

namespace A329832

/-- `A247160(n+1+n)+A054977(A338340(n+1))` -/
def P18102887395417364618.Spec : Prop :=
  ∀ n, P18102887395417364618.a n = A329832 (n + 1)

end A329832

/-! ## A329832.P14014053052683253316

`A247160(2*n+1)+A247049(A161884(2*n+3))`
-/

namespace A329832.P14014053052683253316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247160 (2 * n + 1) + A247049 (A161884 (2 * n + 3)).toNat

end

end A329832.P14014053052683253316

namespace A329832

/-- `A247160(2*n+1)+A247049(A161884(2*n+3))` -/
def P14014053052683253316.Spec : Prop :=
  ∀ n, P14014053052683253316.a n = A329832 (n + 1)

end A329832

/-! ## A329832.P12972500977736579995

`A247160(2*n+1)+A023532(A151874(n))`
-/

namespace A329832.P12972500977736579995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247160 (2 * n + 1) + A023532 (A151874 n).toNat

end

end A329832.P12972500977736579995

namespace A329832

/-- `A247160(2*n+1)+A023532(A151874(n))` -/
def P12972500977736579995.Spec : Prop :=
  ∀ n, P12972500977736579995.a n = A329832 (n + 1)

end A329832

/-! ## A329832.P13015511692577924859

`A056926((A247160(2*n+1)+1)²)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A329832

/-- `A056926((A247160(2*n+1)+1)²)` -/
def P13015511692577924859.Spec : Prop :=
  ∀ n, P13015511692577924859.a n = A329832 (n + 1)

theorem P13015511692577924859.correct : P13015511692577924859.Spec := by
  intro n
  simp only [A329832, Nat.add_sub_cancel]

end A329832

/-! ## A329832.P5318346696379748152

`A247160(2*n+1)+A054977(A059268(n))`
-/

namespace A329832.P5318346696379748152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247160 (2 * n + 1) + A054977 (A059268 n).toNat

end

end A329832.P5318346696379748152

namespace A329832

/-- `A247160(2*n+1)+A054977(A059268(n))` -/
def P5318346696379748152.Spec : Prop :=
  ∀ n, P5318346696379748152.a n = A329832 (n + 1)

end A329832

/-! ## A329832.P10253745919025984455

`A247160(n+1+n)+A054977(A059268(n))²`
-/

namespace A329832.P10253745919025984455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247160 (n + 1 + n) + A054977 (A059268 n).toNat ^ 2

end

end A329832.P10253745919025984455

namespace A329832

/-- `A247160(n+1+n)+A054977(A059268(n))²` -/
def P10253745919025984455.Spec : Prop :=
  ∀ n, P10253745919025984455.a n = A329832 (n + 1)

end A329832

/-! ## A329832.P9212703756981145589

`A247160(2*n+1)+A053164(A059268(n)+1)`
-/

namespace A329832.P9212703756981145589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247160 (2 * n + 1) + A053164 (A059268 n + 1).toNat

end

end A329832.P9212703756981145589

namespace A329832

/-- `A247160(2*n+1)+A053164(A059268(n)+1)` -/
def P9212703756981145589.Spec : Prop :=
  ∀ n, P9212703756981145589.a n = A329832 (n + 1)

end A329832

/-! ## A329832.P10615041866019011101

`A267635(A053650(n+1))+A247160(2*n+1)`
-/

namespace A329832.P10615041866019011101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (A053650 (n + 1)).toNat + A247160 (2 * n + 1)

end

end A329832.P10615041866019011101

namespace A329832

/-- `A267635(A053650(n+1))+A247160(2*n+1)` -/
def P10615041866019011101.Spec : Prop :=
  ∀ n, P10615041866019011101.a n = A329832 (n + 1)

end A329832

/-! ## A329832.P3599358544604017409

`A247160(A005843(n)+1)+A000007(A059268(n))+1`
-/

namespace A329832.P3599358544604017409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247160 (A005843 n + 1).toNat + A000007 (A059268 n).toNat + 1

end

end A329832.P3599358544604017409

namespace A329832

/-- `A247160(A005843(n)+1)+A000007(A059268(n))+1` -/
def P3599358544604017409.Spec : Prop :=
  ∀ n, P3599358544604017409.a n = A329832 (n + 1)

end A329832

/-! ## A329832.P210087091181183930

`A247160(2*n+1)+A064547(A022005(n+1))`
-/

namespace A329832.P210087091181183930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247160 (2 * n + 1) + A064547 (A022005 (n + 1)).toNat

end

end A329832.P210087091181183930

namespace A329832

/-- `A247160(2*n+1)+A064547(A022005(n+1))` -/
def P210087091181183930.Spec : Prop :=
  ∀ n, P210087091181183930.a n = A329832 (n + 1)

end A329832

/-! ## A329832.P4228261603616136632

`A247160(2*n+1)+A057427(A117501(2*(n+1)))`
-/

namespace A329832.P4228261603616136632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247160 (2 * n + 1) + A057427 (A117501 (2 * (n + 1))).toNat

end

end A329832.P4228261603616136632

namespace A329832

/-- `A247160(2*n+1)+A057427(A117501(2*(n+1)))` -/
def P4228261603616136632.Spec : Prop :=
  ∀ n, P4228261603616136632.a n = A329832 (n + 1)

end A329832

/-! ## A329832.P12441990282774048531

`A247160(2*n+1)+A056926(A261538(n+1))`
-/

namespace A329832.P12441990282774048531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247160 (2 * n + 1) + A056926 (A261538 (n + 1)).toNat

end

end A329832.P12441990282774048531

namespace A329832

/-- `A247160(2*n+1)+A056926(A261538(n+1))` -/
def P12441990282774048531.Spec : Prop :=
  ∀ n, P12441990282774048531.a n = A329832 (n + 1)

end A329832

/-! ## A329832.P8965329305851549246

`A247160(2*n+1)+A057427(∑[∑{d}[n, #]]+1)`
-/

namespace A329832.P8965329305851549246
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247160 (2 * n + 1) + A057427 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A329832.P8965329305851549246

namespace A329832

/-- `A247160(2*n+1)+A057427(∑[∑{d}[n, #]]+1)` -/
def P8965329305851549246.Spec : Prop :=
  ∀ n, P8965329305851549246.a n = A329832 (n + 1)

end A329832

/-! ## A329832.P4374652787443440868

`A023809(A144396(n+1))%(2*(2*n+3)+A127325(n)+n)`
-/

namespace A329832.P4374652787443440868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023809 (A144396 (n + 1)).toNat) ((2 * (2 * n + 3) : ℤ) + (A127325 n + (n : ℤ)))

end

end A329832.P4374652787443440868

namespace A329832

/-- `A023809(A144396(n+1))%(2*(2*n+3)+A127325(n)+n)` -/
def P4374652787443440868.Spec : Prop :=
  ∀ n, P4374652787443440868.a n = A329832 (n + 1)

end A329832

/-! ## A329832.P6263109721624854784

`A023809(A144396(n+1))+(A127325(n)+n)*A000038(n)`
-/

namespace A329832.P6263109721624854784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023809 (A144396 (n + 1)).toNat + (A127325 n + (n : ℤ)) * A000038 n

end

end A329832.P6263109721624854784

namespace A329832

/-- `A023809(A144396(n+1))+(A127325(n)+n)*A000038(n)` -/
def P6263109721624854784.Spec : Prop :=
  ∀ n, P6263109721624854784.a n = A329832 (n + 1)

end A329832

/-! ## A329832.P10921607882480572031

`A023809(A144396(n+1))%(A127325(n)+n+A056000(n)+7)`
-/

namespace A329832.P10921607882480572031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023809 (A144396 (n + 1)).toNat) (A127325 n + (n : ℤ) + (A056000 n + 7))

end

end A329832.P10921607882480572031

namespace A329832

/-- `A023809(A144396(n+1))%(A127325(n)+n+A056000(n)+7)` -/
def P10921607882480572031.Spec : Prop :=
  ∀ n, P10921607882480572031.a n = A329832 (n + 1)

end A329832

/-! ## A329832.P14345523905715972927

`A023809(A144396(n+1))*A054977(A130827(n+1))`
-/

namespace A329832.P14345523905715972927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023809 (A144396 (n + 1)).toNat * A054977 (A130827 (n + 1)).toNat

end

end A329832.P14345523905715972927

namespace A329832

/-- `A023809(A144396(n+1))*A054977(A130827(n+1))` -/
def P14345523905715972927.Spec : Prop :=
  ∀ n, P14345523905715972927.a n = A329832 (n + 1)

end A329832

/-!
# A329833: Beatty sequence for (5+sqrt(73))/8.

The programs for A329833, there is no canonical definition to state claims against.
-/

/-! ## A329833.P438156684761916384

`comp[A329834(n+1)-1]+1`
-/

namespace A329833.P438156684761916384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329834 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329833.P438156684761916384

/-! ## A329833.P5710962253522740719

`A257639(floor(sqrt(A162673(2*(n+1)))))`
-/

namespace A329833.P5710962253522740719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (Int.sqrt (A162673 (2 * (n + 1)))).toNat

end

end A329833.P5710962253522740719

/-! ## A329833.P9609880924851975456

`A257639(ceil(sqrt(A162673(2*(n+1)))))`
-/

namespace A329833.P9609880924851975456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 ⌈Real.sqrt (A162673 (2 * (n + 1)) : ℝ)⌉.toNat

end

end A329833.P9609880924851975456

/-!
# A329834: Beatty sequence for (11+sqrt(73))/8.

The programs for A329834, there is no canonical definition to state claims against.
-/

/-! ## A329834.P12992018760186467950

`A121854(A001105(n+1))-2*(n+1)`
-/

namespace A329834.P12992018760186467950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 (A001105 (n + 1)).toNat - (2 * (n + 1) : ℤ)

end

end A329834.P12992018760186467950

/-! ## A329834.P6383823930625999857

`A059542(n+1)-A063524(A087900(n+1))`
-/

namespace A329834.P6383823930625999857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059542 (n + 1) - A063524 (A087900 (n + 1)).toNat

end

end A329834.P6383823930625999857

/-! ## A329834.P13513630916152606735

`A059542(n+1)+A000007(A299274(n+2))`
-/

namespace A329834.P13513630916152606735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059542 (n + 1) + A000007 (A299274 (n + 2)).toNat

end

end A329834.P13513630916152606735

/-! ## A329834.P8104533765226767539

`A059542(n+1)%A020449(A057561(n+1))`
-/

namespace A329834.P8104533765226767539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059542 (n + 1)) (A020449 (A057561 (n + 1)).toNat)

end

end A329834.P8104533765226767539

/-! ## A329834.P10011345678808847655

`A185906(A000217(2*(n+2)))+A059542(n+1)`
-/

namespace A329834.P10011345678808847655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185906 (A000217 (2 * (n + 2))).toNat + A059542 (n + 1)

end

end A329834.P10011345678808847655

/-! ## A329834.P12794908500501142136

`A307513(n+1)+1+n-A063524(A087900(n+1))`
-/

namespace A329834.P12794908500501142136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307513 (n + 1) + 1 + (n : ℤ) - A063524 (A087900 (n + 1)).toNat

end

end A329834.P12794908500501142136

/-! ## A329834.P1016034559274697878

`A065033(A342831(n+1))+n-A063524(A087900(n+1))`
-/

namespace A329834.P1016034559274697878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A342831 (n + 1)).toNat + (n : ℤ) - A063524 (A087900 (n + 1)).toNat

end

end A329834.P1016034559274697878

/-! ## A329834.P15844065364738297919

`A004526(A342831(n+1)+1)+n-A063524(A087900(n+1))`
-/

namespace A329834.P15844065364738297919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A342831 (n + 1) + 1).toNat + (n : ℤ) - A063524 (A087900 (n + 1)).toNat

end

end A329834.P15844065364738297919

/-! ## A329834.P1682052503091668019

`A059542(n+1)+A000038(A160014(n)²)`
-/

namespace A329834.P1682052503091668019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059542 (n + 1) + A000038 (A160014 n ^ 2).toNat

end

end A329834.P1682052503091668019

/-! ## A329834.P10847742389186132547

`A059542(n+1)*A379733(ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A329834.P10847742389186132547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059542 (n + 1) * A379733 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat

end

end A329834.P10847742389186132547

/-!
# A329835: Beatty sequence for (9+sqrt(101))/10.

The programs for A329835, the canonical program `A329835.P4757636539096207399` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329835 has offset 1).

The definition of A329835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329835.P4757636539096207399

`comp[A329836(n+1)-1]+1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A329835

/-- `comp[A329836(n+1)-1]+1` -/
def P4757636539096207399.Spec : Prop :=
  ∀ n, (P4757636539096207399.a n : ℤ) = A329835 (n + 1)

theorem P4757636539096207399.correct : P4757636539096207399.Spec := by
  intro n
  simp only [A329835, Nat.add_sub_cancel]

end A329835

/-! ## A329835.P3431429378939287009

`A057364(5*(n+1))%p?[A046691(n)]`
-/

namespace A329835.P3431429378939287009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057364 (5 * (n + 1))) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A329835.P3431429378939287009

namespace A329835

/-- `A057364(5*(n+1))%p?[A046691(n)]` -/
def P3431429378939287009.Spec : Prop :=
  ∀ n, P3431429378939287009.a n = A329835 (n + 1)

end A329835

/-! ## A329835.P17335702759438351963

`A057364((p?[ceil((n/2)²)]%2+4)*(n+1))`
-/

namespace A329835.P17335702759438351963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 ((Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 2 + 4) * (n + 1 : ℤ)).toNat

end

end A329835.P17335702759438351963

namespace A329835

/-- `A057364((p?[ceil((n/2)²)]%2+4)*(n+1))` -/
def P17335702759438351963.Spec : Prop :=
  ∀ n, P17335702759438351963.a n = A329835 (n + 1)

end A329835

/-! ## A329835.P6740251724498283627

`A354350(A091180(n+1))+A057364(5*(n+1))`
-/

namespace A329835.P6740251724498283627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354350 (A091180 (n + 1)).toNat + A057364 (5 * (n + 1))

end

end A329835.P6740251724498283627

namespace A329835

/-- `A354350(A091180(n+1))+A057364(5*(n+1))` -/
def P6740251724498283627.Spec : Prop :=
  ∀ n, P6740251724498283627.a n = A329835 (n + 1)

end A329835

/-! ## A329835.P17520990584554542225

`lcm(A057364(5*(n+1)), A158388(A238130(n)))`
-/

namespace A329835.P17520990584554542225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057364 (5 * (n + 1))) (A158388 (A238130 n).toNat)

end

end A329835.P17520990584554542225

namespace A329835

/-- `lcm(A057364(5*(n+1)), A158388(A238130(n)))` -/
def P17520990584554542225.Spec : Prop :=
  ∀ n, (P17520990584554542225.a n : ℤ) = A329835 (n + 1)

end A329835

/-! ## A329835.P12205427240163349029

`A032742(A045366(2*(n+1)))*A057364(5*(n+1))`
-/

namespace A329835.P12205427240163349029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A045366 (2 * (n + 1))).toNat * A057364 (5 * (n + 1))

end

end A329835.P12205427240163349029

namespace A329835

/-- `A032742(A045366(2*(n+1)))*A057364(5*(n+1))` -/
def P12205427240163349029.Spec : Prop :=
  ∀ n, P12205427240163349029.a n = A329835 (n + 1)

end A329835

/-! ## A329835.P8015315692470296766

`A007318(∑[n]-n)*A057364(5*(n+1))`
-/

namespace A329835.P8015315692470296766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j - n) * A057364 (5 * (n + 1))

end

end A329835.P8015315692470296766

namespace A329835

/-- `A007318(∑[n]-n)*A057364(5*(n+1))` -/
def P8015315692470296766.Spec : Prop :=
  ∀ n, P8015315692470296766.a n = A329835 (n + 1)

end A329835

/-! ## A329835.P3385218269746457281

`A057364(5*(n+1))+and(8, A290107(A007318(n)))`
-/

namespace A329835.P3385218269746457281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 (5 * (n + 1)) + Int.land 8 (A290107 (A007318 n).toNat)

end

end A329835.P3385218269746457281

namespace A329835

/-- `A057364(5*(n+1))+and(8, A290107(A007318(n)))` -/
def P3385218269746457281.Spec : Prop :=
  ∀ n, P3385218269746457281.a n = A329835 (n + 1)

end A329835

/-! ## A329835.P9151251231203082907

`A057364(5*(n+1))/A007318(∑[n])`
-/

namespace A329835.P9151251231203082907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057364 (5 * (n + 1)) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A329835.P9151251231203082907

namespace A329835

/-- `A057364(5*(n+1))/A007318(∑[n])` -/
def P9151251231203082907.Spec : Prop :=
  ∀ n, P9151251231203082907.a n = (A329835 (n + 1) : ℚ)

end A329835

/-! ## A329835.P18306714693090877849

`floor(A019442(10*n+12)/21)`
-/

namespace A329835.P18306714693090877849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019442 (10 * n + 12) : ℚ) / 21⌋

end

end A329835.P18306714693090877849

namespace A329835

/-- `floor(A019442(10*n+12)/21)` -/
def P18306714693090877849.Spec : Prop :=
  ∀ n, P18306714693090877849.a n = A329835 (n + 1)

end A329835

/-! ## A329835.P17635539274353208708

`ceil(log2(A291729(2*n))-n)`
-/

namespace A329835.P17635539274353208708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A291729 (2 * n) : ℝ) - (n : ℝ)⌉

end

end A329835.P17635539274353208708

namespace A329835

/-- `ceil(log2(A291729(2*n))-n)` -/
def P17635539274353208708.Spec : Prop :=
  ∀ n, P17635539274353208708.a n = A329835 (n + 1)

end A329835

/-!
# A329836: Beatty sequence for (11+sqrt(101))/10.

The programs for A329836, the canonical program `A329836.P12686953867278850669` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329836 has offset 1).

The definition of A329836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329836.P2189414945518561293

`A110303(2*(n+1))%A267495(A066888(2*(n+2)))`
-/

namespace A329836.P2189414945518561293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110303 (2 * (n + 1))) (A267495 (A066888 (2 * (n + 2))).toNat)

end

end A329836.P2189414945518561293

namespace A329836

/-- `A110303(2*(n+1))%A267495(A066888(2*(n+2)))` -/
def P2189414945518561293.Spec : Prop :=
  ∀ n, P2189414945518561293.a n = A329836 (n + 1)

end A329836

/-! ## A329836.P4829959211463403090

`A110303(2*(n+1))%A224651(n+1)`
-/

namespace A329836.P4829959211463403090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110303 (2 * (n + 1))) (A224651 (n + 1))

end

end A329836.P4829959211463403090

namespace A329836

/-- `A110303(2*(n+1))%A224651(n+1)` -/
def P4829959211463403090.Spec : Prop :=
  ∀ n, P4829959211463403090.a n = A329836 (n + 1)

end A329836

/-! ## A329836.P14478896826286672748

`A110303(2*n+2)*A339876(A230223(n+1))`
-/

namespace A329836.P14478896826286672748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110303 (2 * n + 2) * A339876 (A230223 (n + 1)).toNat

end

end A329836.P14478896826286672748

namespace A329836

/-- `A110303(2*n+2)*A339876(A230223(n+1))` -/
def P14478896826286672748.Spec : Prop :=
  ∀ n, P14478896826286672748.a n = A329836 (n + 1)

end A329836

/-! ## A329836.P12686953867278850669

`A110303(2*n+2)%A074822(A000463(n+4))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A329836

/-- `A110303(2*n+2)%A074822(A000463(n+4))` -/
def P12686953867278850669.Spec : Prop :=
  ∀ n, P12686953867278850669.a n = A329836 (n + 1)

theorem P12686953867278850669.correct : P12686953867278850669.Spec := by
  intro n
  simp only [A329836, Nat.add_sub_cancel]

end A329836

/-! ## A329836.P793112684087550216

`A110303(2*(n+1))^A010127(A007521(3*n+5))`
-/

namespace A329836.P793112684087550216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110303 (2 * (n + 1)) : ℚ) ^ (A010127 (A007521 (3 * n + 5)).toNat : ℤ)

end

end A329836.P793112684087550216

namespace A329836

/-- `A110303(2*(n+1))^A010127(A007521(3*n+5))` -/
def P793112684087550216.Spec : Prop :=
  ∀ n, P793112684087550216.a n = (A329836 (n + 1) : ℚ)

end A329836

/-! ## A329836.P4221187894826058071

`A110303(2*(n+1))+A000007(A330513(n+1))`
-/

namespace A329836.P4221187894826058071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110303 (2 * (n + 1)) + A000007 (A330513 (n + 1)).toNat

end

end A329836.P4221187894826058071

namespace A329836

/-- `A110303(2*(n+1))+A000007(A330513(n+1))` -/
def P4221187894826058071.Spec : Prop :=
  ∀ n, P4221187894826058071.a n = A329836 (n + 1)

end A329836

/-! ## A329836.P4870767587423861370

`A110303(2*(n+1))%A297644(A017497(n))`
-/

namespace A329836.P4870767587423861370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110303 (2 * (n + 1))) (A297644 (A017497 n).toNat)

end

end A329836.P4870767587423861370

namespace A329836

/-- `A110303(2*(n+1))%A297644(A017497(n))` -/
def P4870767587423861370.Spec : Prop :=
  ∀ n, P4870767587423861370.a n = A329836 (n + 1)

end A329836

/-! ## A329836.P7981066104959167966

`round(log2(A010903(n)))`
-/

namespace A329836.P7981066104959167966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A010903 n : ℝ))

end

end A329836.P7981066104959167966

namespace A329836

/-- `round(log2(A010903(n)))` -/
def P7981066104959167966.Spec : Prop :=
  ∀ n, P7981066104959167966.a n = A329836 (n + 1)

end A329836

/-! ## A329836.P8138820381261164848

`round(log2(A095934(n+1)))`
-/

namespace A329836.P8138820381261164848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A095934 (n + 1) : ℝ))

end

end A329836.P8138820381261164848

namespace A329836

/-- `round(log2(A095934(n+1)))` -/
def P8138820381261164848.Spec : Prop :=
  ∀ n, P8138820381261164848.a n = A329836 (n + 1)

end A329836

/-! ## A329836.P15545857544159498757

`floor(log2(A208309(n+1)))`
-/

namespace A329836.P15545857544159498757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A208309 (n + 1)).toNat

end

end A329836.P15545857544159498757

namespace A329836

/-- `floor(log2(A208309(n+1)))` -/
def P15545857544159498757.Spec : Prop :=
  ∀ n, (P15545857544159498757.a n : ℤ) = A329836 (n + 1)

end A329836

/-! ## A329836.P10344551189727655842

`A110303(2*A331886(∑[n]))`
-/

namespace A329836.P10344551189727655842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110303 (2 * A331886 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A329836.P10344551189727655842

namespace A329836

/-- `A110303(2*A331886(∑[n]))` -/
def P10344551189727655842.Spec : Prop :=
  ∀ n, P10344551189727655842.a n = A329836 (n + 1)

end A329836

/-! ## A329836.P7566407214844545697

`A110303(A331886(∑[n])+n+1)`
-/

namespace A329836.P7566407214844545697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110303 (A331886 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)).toNat

end

end A329836.P7566407214844545697

namespace A329836

/-- `A110303(A331886(∑[n])+n+1)` -/
def P7566407214844545697.Spec : Prop :=
  ∀ n, P7566407214844545697.a n = A329836 (n + 1)

end A329836

/-! ## A329836.P7203444826299213362

`A110303(Δ[A005843(∑[n])])`
-/

namespace A329836.P7203444826299213362
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110303 (f1 (n + 1) - f1 n).toNat

end

end A329836.P7203444826299213362

namespace A329836

/-- `A110303(Δ[A005843(∑[n])])` -/
def P7203444826299213362.Spec : Prop :=
  ∀ n, P7203444826299213362.a n = A329836 (n + 1)

end A329836

/-!
# A329837: Beatty sequence for (4+sqrt(26))/5.

The programs for A329837, there is no canonical definition to state claims against.
-/

/-! ## A329837.P3886043307166106286

`comp[A329838(n+1)-1]+1`
-/

namespace A329837.P3886043307166106286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329838 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329837.P3886043307166106286

/-! ## A329837.P10939838581698506505

`-(A023115(A022776(n+1))+floor((n+1)/log(γ)))`
-/

namespace A329837.P10939838581698506505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A023115 (A022776 (n + 1)).toNat + ⌊(n + 1 : ℝ) / Real.log Real.eulerMascheroniConstant⌋)

end

end A329837.P10939838581698506505

/-! ## A329837.P16231926534142601254

`floor(abs((n+1)/log(γ)))%A114874(n+1)`
-/

namespace A329837.P16231926534142601254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊|(n + 1 : ℝ) / Real.log Real.eulerMascheroniConstant|⌋ (A114874 (n + 1))

end

end A329837.P16231926534142601254

/-! ## A329837.P16943228125831681499

`A059560(n+1)-A074909(A000124(n))`
-/

namespace A329837.P16943228125831681499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059560 (n + 1) - A074909 (A000124 n).toNat

end

end A329837.P16943228125831681499

/-! ## A329837.P7195789187315122854

`A059560(n+1)-A002260(∑[n+1])`
-/

namespace A329837.P7195789187315122854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059560 (n + 1) - A002260 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329837.P7195789187315122854

/-! ## A329837.P15986171786243569259

`A059560(A004736(∑[n]+1))-(n+1)`
-/

namespace A329837.P15986171786243569259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059560 (A004736 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat - (n + 1 : ℤ)

end

end A329837.P15986171786243569259

/-! ## A329837.P15048724930166687554

`A059560(n+1)-A115262(A000217(n))`
-/

namespace A329837.P15048724930166687554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059560 (n + 1) - A115262 (A000217 n).toNat

end

end A329837.P15048724930166687554

/-! ## A329837.P15904392862506368599

`A059560(n+1)-A002024(∑[n+1])`
-/

namespace A329837.P15904392862506368599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059560 (n + 1) - A002024 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329837.P15904392862506368599

/-! ## A329837.P14310612477409397018

`A059560(n+1)-A204143(∑[n+1])`
-/

namespace A329837.P14310612477409397018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059560 (n + 1) - A204143 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329837.P14310612477409397018

/-! ## A329837.P6932924481102863867

`A057428(A057228(n+1))-floor((n+1)/log(γ))`
-/

namespace A329837.P6932924481102863867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A057228 (n + 1)).toNat - ⌊(n + 1 : ℝ) / Real.log Real.eulerMascheroniConstant⌋

end

end A329837.P6932924481102863867

/-! ## A329837.P6338571690560017634

`A057428(A131238(n))-floor((n+1)/log(γ))`
-/

namespace A329837.P6338571690560017634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A131238 n).toNat - ⌊(n + 1 : ℝ) / Real.log Real.eulerMascheroniConstant⌋

end

end A329837.P6338571690560017634

/-! ## A329837.P8264227702615063342

`A228826(A131061(n))-floor((n+1)/log(γ))`
-/

namespace A329837.P8264227702615063342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 (A131061 n).toNat - ⌊(n + 1 : ℝ) / Real.log Real.eulerMascheroniConstant⌋

end

end A329837.P8264227702615063342

/-! ## A329837.P8680014380961336772

`A057428(A130321(n))-floor((n+1)/log(γ))`
-/

namespace A329837.P8680014380961336772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A130321 n).toNat - ⌊(n + 1 : ℝ) / Real.log Real.eulerMascheroniConstant⌋

end

end A329837.P8680014380961336772

/-! ## A329837.P6643351755291105933

`A233583(A059560(n+1))-(A259361(n²)+1)`
-/

namespace A329837.P6643351755291105933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A059560 (n + 1)).toNat - (A259361 (n ^ 2) + 1)

end

end A329837.P6643351755291105933

/-! ## A329837.P5286106665730964639

`A059560(n+1)-A159253(A159253(n+1))`
-/

namespace A329837.P5286106665730964639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059560 (n + 1) - A159253 (A159253 (n + 1)).toNat

end

end A329837.P5286106665730964639

/-!
# A329838: Beatty sequence for (6+sqrt(26))/5.

The programs for A329838, there is no canonical definition to state claims against.
-/

/-! ## A329838.P6486639068786029229

`A119661(A245207(n))-1`
-/

namespace A329838.P6486639068786029229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119661 (A245207 n).toNat - 1

end

end A329838.P6486639068786029229

/-! ## A329838.P13770127733006423964

`A248106(n+1)-A241578(A190906(n))`
-/

namespace A329838.P13770127733006423964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248106 (n + 1) - A241578 (A190906 n).toNat

end

end A329838.P13770127733006423964

/-! ## A329838.P2015301759959974513

`A248106(n+1)-A001222(A020621(n+1))`
-/

namespace A329838.P2015301759959974513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248106 (n + 1) - A001222 (A020621 (n + 1)).toNat

end

end A329838.P2015301759959974513

/-! ## A329838.P18392261320967953959

`A248106(n+1)-A010687(A062717(n+1))`
-/

namespace A329838.P18392261320967953959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248106 (n + 1) - A010687 (A062717 (n + 1)).toNat

end

end A329838.P18392261320967953959

/-! ## A329838.P14928868569993191174

`A248106(n+1)-A000035(A132253(n+1))`
-/

namespace A329838.P14928868569993191174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248106 (n + 1) - A000035 (A132253 (n + 1)).toNat

end

end A329838.P14928868569993191174

/-! ## A329838.P8130296115854221202

`A248106(n+1)-A153284(A079314(n)²)`
-/

namespace A329838.P8130296115854221202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248106 (n + 1) - A153284 (A079314 n ^ 2).toNat

end

end A329838.P8130296115854221202

/-!
# A329839: Beatty sequence for (-1+sqrt(41))/4.

The programs for A329839, there is no canonical definition to state claims against.
-/

/-! ## A329839.P16553363928662292126

`comp[A329840(n+1)-1]+1`
-/

namespace A329839.P16553363928662292126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329840 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329839.P16553363928662292126

/-! ## A329839.P7231001431262911700

`A000196(A187224((n+1)²))`
-/

namespace A329839.P7231001431262911700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A187224 ((n + 1) ^ 2)).toNat

end

end A329839.P7231001431262911700

/-! ## A329839.P4605107986903435546

`A000196(Δ[A060903(n²+n)])`
-/

namespace A329839.P4605107986903435546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060903 (n ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (n + 1) - f1 n).toNat

end

end A329839.P4605107986903435546

/-! ## A329839.P2720450634505816087

`A000194(A022781(n+1)+A000124(n))`
-/

namespace A329839.P2720450634505816087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A022781 (n + 1) + A000124 n).toNat

end

end A329839.P2720450634505816087

/-! ## A329839.P6957445102763963983

`A000194(A022781(n+1)+A000217(n))`
-/

namespace A329839.P6957445102763963983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A022781 (n + 1) + A000217 n).toNat

end

end A329839.P6957445102763963983

/-! ## A329839.P10502729679053860046

`A000196(A134869(2*(n+1))-∑[A194990(n+2)])`
-/

namespace A329839.P10502729679053860046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A134869 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329839.P10502729679053860046

/-!
# A329840: Beatty sequence for (9+sqrt(41))/4.

The programs for A329840, there is no canonical definition to state claims against.
-/

/-! ## A329840.P791089410185711800

`A292657(n+1)-A108611(n)`
-/

namespace A329840.P791089410185711800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292657 (n + 1) - A108611 n

end

end A329840.P791089410185711800

/-! ## A329840.P1420071138483214317

`A292657(n+1)+A001478(A108611(n)+1)+1`
-/

namespace A329840.P1420071138483214317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292657 (n + 1) + (A001478 (A108611 n + 1).toNat + 1)

end

end A329840.P1420071138483214317

/-! ## A329840.P7551444773079154543

`A292657(n+1)+A108611(n)/A057428(n+1)`
-/

namespace A329840.P7551444773079154543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292657 (n + 1) : ℚ) + (A108611 n : ℚ) / (A057428 (n + 1) : ℚ)

end

end A329840.P7551444773079154543

/-! ## A329840.P9473131835033122687

`ceil(log(A001603(2*n+1)))`
-/

namespace A329840.P9473131835033122687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A001603 (2 * n + 1) : ℝ)⌉

end

end A329840.P9473131835033122687

/-! ## A329840.P16789318516067621450

`ceil(log(A081067(2*n+1)))`
-/

namespace A329840.P16789318516067621450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A081067 (2 * n + 1) : ℝ)⌉

end

end A329840.P16789318516067621450

/-! ## A329840.P9413633871139346959

`ceil(log(A081071(2*n+1)))`
-/

namespace A329840.P9413633871139346959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A081071 (2 * n + 1) : ℝ)⌉

end

end A329840.P9413633871139346959

/-! ## A329840.P14132556734060805445

`ceil(log(A081079(2*n+1)))`
-/

namespace A329840.P14132556734060805445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A081079 (2 * n + 1) : ℝ)⌉

end

end A329840.P14132556734060805445

/-! ## A329840.P7281470710930221801

`floor(log(47^(n+1)))`
-/

namespace A329840.P7281470710930221801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (47 ^ (n + 1) : ℝ)⌋

end

end A329840.P7281470710930221801

/-!
# A329841: Beatty sequence for (7+sqrt(109))/10.

The programs for A329841, there is no canonical definition to state claims against.
-/

/-! ## A329841.P1545985632092173419

`comp[A329842(n+1)-1]+1`
-/

namespace A329841.P1545985632092173419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329842 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329841.P1545985632092173419

/-! ## A329841.P14190106502218927608

`A054404(A182778(n+1))%A184416(n+1)`
-/

namespace A329841.P14190106502218927608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054404 (A182778 (n + 1)).toNat) (A184416 (n + 1))

end

end A329841.P14190106502218927608

/-! ## A329841.P16995591543584938475

`A054404(A182778(n+1))*A297845(∑[n]+n+1)`
-/

namespace A329841.P16995591543584938475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A182778 (n + 1)).toNat * A297845 (∑ j ∈ Finset.range (n + 1), f1 j + n + 1)

end

end A329841.P16995591543584938475

/-! ## A329841.P2336547194715703170

`A054404(A182778(n+1))%A277915(A001844(n))`
-/

namespace A329841.P2336547194715703170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054404 (A182778 (n + 1)).toNat) (A277915 (A001844 n).toNat)

end

end A329841.P2336547194715703170

/-! ## A329841.P15632887514793146781

`A020513(A173032(n+1))*A054404(A182778(n+1))`
-/

namespace A329841.P15632887514793146781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (A173032 (n + 1)).toNat * A054404 (A182778 (n + 1)).toNat

end

end A329841.P15632887514793146781

/-! ## A329841.P6366660985318699956

`A054404(A182778(n+1))+A036987(A138658(2*n+3))`
-/

namespace A329841.P6366660985318699956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A182778 (n + 1)).toNat + A036987 (A138658 (2 * n + 3)).toNat

end

end A329841.P6366660985318699956

/-! ## A329841.P5827139865492314833

`A276516(A276517(2*n+1))+A054404(A182778(n+1))`
-/

namespace A329841.P5827139865492314833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276516 (A276517 (2 * n + 1)).toNat + A054404 (A182778 (n + 1)).toNat

end

end A329841.P5827139865492314833

/-!
# A329842: Beatty sequence for (13+sqrt(109))/10.

The programs for A329842, there is no canonical definition to state claims against.
-/

/-! ## A329842.P10915174423822635588

`ceil(log(A233021(n+1)/2))`
-/

namespace A329842.P10915174423822635588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log ((A233021 (n + 1) : ℚ) / 2 : ℝ)⌉

end

end A329842.P10915174423822635588

/-! ## A329842.P2761513119958099365

`record[xor(3, n)]-A330066(n+1)`
-/

namespace A329842.P2761513119958099365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A330066 (n + 1)

end

end A329842.P2761513119958099365

/-! ## A329842.P16996420196932287276

`A004767(n)-A330066(n+1)`
-/

namespace A329842.P16996420196932287276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A330066 (n + 1)

end

end A329842.P16996420196932287276

/-! ## A329842.P15491999907545554372

`Δ[A014105(n)]-A330066(n+1)`
-/

namespace A329842.P15491999907545554372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A330066 (n + 1)

end

end A329842.P15491999907545554372

/-! ## A329842.P10477367117626223795

`A016825(n)+1-A330066(n+1)`
-/

namespace A329842.P10477367117626223795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + (1 - A330066 (n + 1))

end

end A329842.P10477367117626223795

/-! ## A329842.P13876577406419304162

`Δ[A014107(n+1)]-A330066(n+1)`
-/

namespace A329842.P13876577406419304162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A330066 (n + 1)

end

end A329842.P13876577406419304162

/-! ## A329842.P9445172111114977970

`A005408(A005408(n))-A330066(n+1)`
-/

namespace A329842.P9445172111114977970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005408 n).toNat - A330066 (n + 1)

end

end A329842.P9445172111114977970

/-! ## A329842.P3046602519647933701

`∑[3-abs(A011646(n))]`
-/

namespace A329842.P3046602519647933701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - |A011646 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329842.P3046602519647933701

/-!
# A329843: Beatty sequence for (1+sqrt(61))/6.

The programs for A329843, there is no canonical definition to state claims against.
-/

/-! ## A329843.P15271802438929670091

`comp[A329844(n+1)-1]+1`
-/

namespace A329843.P15271802438929670091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329844 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329843.P15271802438929670091

/-! ## A329843.P14768576547376168479

`A002024(∑[A004773(ceil(ϕ*n))]+1)`
-/

namespace A329843.P14768576547376168479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 ⌈Real.goldenRatio * (n : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A329843.P14768576547376168479

/-! ## A329843.P11834334897023285148

`A003056(∑[A004773(ceil(ϕ*n))])+1`
-/

namespace A329843.P11834334897023285148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 ⌈Real.goldenRatio * (n : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A329843.P11834334897023285148

/-! ## A329843.P5493875238993054449

`A002024(∑[A004773(A026351(n))])`
-/

namespace A329843.P5493875238993054449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A026351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329843.P5493875238993054449

/-! ## A329843.P4891892849241049834

`eq[A004923(2*(n+1)), A051176(A004923(2*(n+1)))]`
-/

namespace A329843.P4891892849241049834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004923 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A004923 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329843.P4891892849241049834

/-! ## A329843.P5390831941222983700

`A000196(∑[A116966(A297836(n))])`
-/

namespace A329843.P5390831941222983700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (A297836 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329843.P5390831941222983700

/-! ## A329843.P11618534336072703626

`2*(n+1)-A008620(A330095(n+1))`
-/

namespace A329843.P11618534336072703626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A008620 (A330095 (n + 1)).toNat

end

end A329843.P11618534336072703626

/-!
# A329844: Beatty sequence for (11+sqrt(61))/6.

The programs for A329844, there is no canonical definition to state claims against.
-/

/-! ## A329844.P14103892157462746730

`A187342(2*(n+1))%A187313(n+1)`
-/

namespace A329844.P14103892157462746730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187342 (2 * (n + 1))) (A187313 (n + 1))

end

end A329844.P14103892157462746730

/-! ## A329844.P12286340985143143099

`A187342(2*(n+1))+A186685(A115424(n+4))`
-/

namespace A329844.P12286340985143143099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187342 (2 * (n + 1)) + A186685 (A115424 (n + 4)).toNat

end

end A329844.P12286340985143143099

/-! ## A329844.P4069322557303712555

`A187342(2*n+2)%A232501(A106430(n+3))`
-/

namespace A329844.P4069322557303712555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187342 (2 * n + 2)) (A232501 (A106430 (n + 3)).toNat)

end

end A329844.P4069322557303712555

/-! ## A329844.P506142087084021545

`A187342(2*(n+1))+A008683(A135784(2*n+5))`
-/

namespace A329844.P506142087084021545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187342 (2 * (n + 1)) + A008683 (A135784 (2 * n + 5)).toNat

end

end A329844.P506142087084021545

/-! ## A329844.P10347395541697266964

`A187342(A000196((2*(n+1))²))`
-/

namespace A329844.P10347395541697266964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187342 (A000196 ((2 * (n + 1)) ^ 2)).toNat

end

end A329844.P10347395541697266964

/-! ## A329844.P14630681861556135423

`A187342(A033676((2*(n+1))²))`
-/

namespace A329844.P14630681861556135423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187342 (A033676 ((2 * (n + 1)) ^ 2)).toNat

end

end A329844.P14630681861556135423

/-! ## A329844.P4284101730958139280

`A187342(2*(n+1))+A000038(A082109(n))`
-/

namespace A329844.P4284101730958139280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187342 (2 * (n + 1)) + A000038 (A082109 n).toNat

end

end A329844.P4284101730958139280

/-! ## A329844.P7584368131785413444

`or(A000007(A007742(n)), A187342(2*(n+1)))`
-/

namespace A329844.P7584368131785413444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A007742 n).toNat) (A187342 (2 * (n + 1)))

end

end A329844.P7584368131785413444

/-!
# A329845: Beatty sequence for (3+sqrt(29))/5.

The programs for A329845, the canonical program `A329845.P11380483740008412877` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329845 has offset 1).

The definition of A329845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329845.P11380483740008412877

`comp[A329846(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A329845

/-- `comp[A329846(n+1)-1]+1` -/
def P11380483740008412877.Spec : Prop :=
  ∀ n, (P11380483740008412877.a n : ℤ) = A329845 (n + 1)

theorem P11380483740008412877.correct : P11380483740008412877.Spec := by
  intro n
  simp only [A329845, Nat.add_sub_cancel]

end A329845

/-! ## A329845.P1138647910571932437

`A048050(A106906(2*n+3))+A002265(A109235(n+1))`
-/

namespace A329845.P1138647910571932437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A106906 (2 * n + 3)).toNat + A002265 (A109235 (n + 1)).toNat

end

end A329845.P1138647910571932437

namespace A329845

/-- `A048050(A106906(2*n+3))+A002265(A109235(n+1))` -/
def P1138647910571932437.Spec : Prop :=
  ∀ n, P1138647910571932437.a n = A329845 (n + 1)

end A329845

/-! ## A329845.P2429492405861142281

`A048050(A106915(2*n+3))+A002265(A109235(n+1))`
-/

namespace A329845.P2429492405861142281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A106915 (2 * n + 3)).toNat + A002265 (A109235 (n + 1)).toNat

end

end A329845.P2429492405861142281

namespace A329845

/-- `A048050(A106915(2*n+3))+A002265(A109235(n+1))` -/
def P2429492405861142281.Spec : Prop :=
  ∀ n, P2429492405861142281.a n = A329845 (n + 1)

end A329845

/-! ## A329845.P12745153191060836885

`A048050(A106908(n+1))+A002265(A109235(n+1))`
-/

namespace A329845.P12745153191060836885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A106908 (n + 1)).toNat + A002265 (A109235 (n + 1)).toNat

end

end A329845.P12745153191060836885

namespace A329845

/-- `A048050(A106908(n+1))+A002265(A109235(n+1))` -/
def P12745153191060836885.Spec : Prop :=
  ∀ n, P12745153191060836885.a n = A329845 (n + 1)

end A329845

/-! ## A329845.P1406335660848325771

`A048050(A106902(2*n+3))+A002265(A109235(n+1))`
-/

namespace A329845.P1406335660848325771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A106902 (2 * n + 3)).toNat + A002265 (A109235 (n + 1)).toNat

end

end A329845.P1406335660848325771

namespace A329845

/-- `A048050(A106902(2*n+3))+A002265(A109235(n+1))` -/
def P1406335660848325771.Spec : Prop :=
  ∀ n, P1406335660848325771.a n = A329845 (n + 1)

end A329845

/-! ## A329845.P4118010317030039458

`A002265(A109235(n+1))%p?[A133263(n)]`
-/

namespace A329845.P4118010317030039458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002265 (A109235 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A329845.P4118010317030039458

namespace A329845

/-- `A002265(A109235(n+1))%p?[A133263(n)]` -/
def P4118010317030039458.Spec : Prop :=
  ∀ n, P4118010317030039458.a n = A329845 (n + 1)

end A329845

/-! ## A329845.P28857447146971402

`A048050(A106911(2*n+3))+A002265(A109235(n+1))`
-/

namespace A329845.P28857447146971402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A106911 (2 * n + 3)).toNat + A002265 (A109235 (n + 1)).toNat

end

end A329845.P28857447146971402

namespace A329845

/-- `A048050(A106911(2*n+3))+A002265(A109235(n+1))` -/
def P28857447146971402.Spec : Prop :=
  ∀ n, P28857447146971402.a n = A329845 (n + 1)

end A329845

/-! ## A329845.P14172900038630694104

`A002265(A109235(n+1))^A002828(n²)`
-/

namespace A329845.P14172900038630694104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002265 (A109235 (n + 1)).toNat : ℚ) ^ (A002828 (n ^ 2) : ℤ)

end

end A329845.P14172900038630694104

namespace A329845

/-- `A002265(A109235(n+1))^A002828(n²)` -/
def P14172900038630694104.Spec : Prop :=
  ∀ n, P14172900038630694104.a n = (A329845 (n + 1) : ℚ)

end A329845

/-! ## A329845.P16926072257462004673

`A002265(A109235(n+1))*A007318(A000217(n))`
-/

namespace A329845.P16926072257462004673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A109235 (n + 1)).toNat * A007318 (A000217 n).toNat

end

end A329845.P16926072257462004673

namespace A329845

/-- `A002265(A109235(n+1))*A007318(A000217(n))` -/
def P16926072257462004673.Spec : Prop :=
  ∀ n, P16926072257462004673.a n = A329845 (n + 1)

end A329845

/-! ## A329845.P4801025890089047425

`A008621(A109235(n+1))-A109223(∑[n])`
-/

namespace A329845.P4801025890089047425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A109235 (n + 1)).toNat - A109223 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329845.P4801025890089047425

namespace A329845

/-- `A008621(A109235(n+1))-A109223(∑[n])` -/
def P4801025890089047425.Spec : Prop :=
  ∀ n, P4801025890089047425.a n = A329845 (n + 1)

end A329845

/-! ## A329845.P12424786867571972223

`A002265(A109235(n+1)/A109223(∑[n]))`
-/

namespace A329845.P12424786867571972223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway ((A109235 (n + 1) : ℚ) / (A109223 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))).toNat

end

end A329845.P12424786867571972223

namespace A329845

/-- `A002265(A109235(n+1)/A109223(∑[n]))` -/
def P12424786867571972223.Spec : Prop :=
  ∀ n, P12424786867571972223.a n = A329845 (n + 1)

end A329845

/-! ## A329845.P11289118790751784680

`A002265(A109235(n+1))*A109223(∑[n+3]+1)`
-/

namespace A329845.P11289118790751784680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A109235 (n + 1)).toNat * A109223 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A329845.P11289118790751784680

namespace A329845

/-- `A002265(A109235(n+1))*A109223(∑[n+3]+1)` -/
def P11289118790751784680.Spec : Prop :=
  ∀ n, P11289118790751784680.a n = A329845 (n + 1)

end A329845

/-! ## A329845.P5396627618352973428

`A002265(A109235(n+1))+A000005(A108928(n+1)+1)%2`
-/

namespace A329845.P5396627618352973428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A109235 (n + 1)).toNat + Int.tmod (A000005 (A108928 (n + 1) + 1).toNat) 2

end

end A329845.P5396627618352973428

namespace A329845

/-- `A002265(A109235(n+1))+A000005(A108928(n+1)+1)%2` -/
def P5396627618352973428.Spec : Prop :=
  ∀ n, P5396627618352973428.a n = A329845 (n + 1)

end A329845

/-!
# A329846: Beatty sequence for (7+sqrt(29))/5.

The programs for A329846, the canonical program `A329846.P13504014016805088935` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329846 has offset 1).

The definition of A329846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329846.P13504014016805088935

`floor(A184523(2*(n+1))/5)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A329846

/-- `floor(A184523(2*(n+1))/5)` -/
def P13504014016805088935.Spec : Prop :=
  ∀ n, P13504014016805088935.a n = A329846 (n + 1)

theorem P13504014016805088935.correct : P13504014016805088935.Spec := by
  intro n
  simp only [A329846, Nat.add_sub_cancel]

end A329846

/-! ## A329846.P7720798462986145003

`A002024(∑[A184416(n+1)])+n`
-/

namespace A329846.P7720798462986145003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A329846.P7720798462986145003

namespace A329846

/-- `A002024(∑[A184416(n+1)])+n` -/
def P7720798462986145003.Spec : Prop :=
  ∀ n, P7720798462986145003.a n = A329846 (n + 1)

end A329846

/-! ## A329846.P17116105003047850795

`A123578(∑[A184416(n+1)])+n`
-/

namespace A329846.P17116105003047850795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A329846.P17116105003047850795

namespace A329846

/-- `A123578(∑[A184416(n+1)])+n` -/
def P17116105003047850795.Spec : Prop :=
  ∀ n, P17116105003047850795.a n = A329846 (n + 1)

end A329846

/-! ## A329846.P16886584346143300023

`A123578(A001844(n))+A034888(n+1)`
-/

namespace A329846.P16886584346143300023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A001844 n).toNat + A034888 (n + 1)

end

end A329846.P16886584346143300023

namespace A329846

/-- `A123578(A001844(n))+A034888(n+1)` -/
def P16886584346143300023.Spec : Prop :=
  ∀ n, P16886584346143300023.a n = A329846 (n + 1)

end A329846

/-! ## A329846.P565163337598304225

`A034888(A131209(n))+A005408(n)`
-/

namespace A329846.P565163337598304225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A131209 n).toNat + A005408 n

end

end A329846.P565163337598304225

namespace A329846

/-- `A034888(A131209(n))+A005408(n)` -/
def P565163337598304225.Spec : Prop :=
  ∀ n, P565163337598304225.a n = A329846 (n + 1)

end A329846

/-! ## A329846.P16873329579292022252

`A034888(n+1)+A011262(A011262(2*n+1))`
-/

namespace A329846.P16873329579292022252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (n + 1) + A011262 (A011262 (2 * n + 1)).toNat

end

end A329846.P16873329579292022252

namespace A329846

/-- `A034888(n+1)+A011262(A011262(2*n+1))` -/
def P16873329579292022252.Spec : Prop :=
  ∀ n, P16873329579292022252.a n = A329846 (n + 1)

end A329846

/-!
# A329847: Beatty sequence for (3+sqrt(89))/8.

The programs for A329847, there is no canonical definition to state claims against.
-/

/-! ## A329847.P2971066888059395221

`comp[A329848(n+1)-1]+1`
-/

namespace A329847.P2971066888059395221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329848 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329847.P2971066888059395221

/-! ## A329847.P3601539862834274199

`round(log(A164310(n)))`
-/

namespace A329847.P3601539862834274199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A164310 n : ℝ))

end

end A329847.P3601539862834274199

/-! ## A329847.P8814837883453809175

`∑[A000034(A342851(n+1)²)]`
-/

namespace A329847.P8814837883453809175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A342851 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329847.P8814837883453809175

/-! ## A329847.P6043070482929436053

`∑[A014695(A342851(n+1)²)]`
-/

namespace A329847.P6043070482929436053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A342851 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329847.P6043070482929436053

/-! ## A329847.P12263410874890099545

`∑[A001511(∏{p}[A134808(n+1)+1, #])]`
-/

namespace A329847.P12263410874890099545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329847.P12263410874890099545

/-! ## A329847.P1910125309437205447

`∑[A000034(A134808(n+1))]`
-/

namespace A329847.P1910125309437205447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A134808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329847.P1910125309437205447

/-! ## A329847.P1526260775342489762

`∑[A000035(A113220(n))+1]`
-/

namespace A329847.P1526260775342489762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A113220 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329847.P1526260775342489762

/-! ## A329847.P17987803453155910038

`∑[gcd(A117230(n+1), A130433(3*n+2))]`
-/

namespace A329847.P17987803453155910038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117230 (n + 1)) (A130433 (3 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329847.P17987803453155910038

/-! ## A329847.P7068468546184187379

`∑[A000034(A046092(n)+A010888(n))]`
-/

namespace A329847.P7068468546184187379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A046092 n + A010888 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329847.P7068468546184187379

/-! ## A329847.P16189969925597001373

`floor(ratio[A185323(n)])`
-/

namespace A329847.P16189969925597001373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A329847.P16189969925597001373

/-!
# A329848: Beatty sequence for (13+sqrt(89))/8.

The programs for A329848, there is no canonical definition to state claims against.
-/

/-! ## A329848.P410491735701930898

`floor(log(A162804(n+1)))`
-/

namespace A329848.P410491735701930898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A162804 (n + 1) : ℝ)⌋

end

end A329848.P410491735701930898

/-! ## A329848.P16201241385148435723

`round(log(2*A022021(2*n)))`
-/

namespace A329848.P16201241385148435723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (2 * A022021 (2 * n) : ℝ))

end

end A329848.P16201241385148435723

/-! ## A329848.P8628154665878875966

`A257639(A056021(∑[A284678(n+1)]))`
-/

namespace A329848.P8628154665878875966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A056021 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A329848.P8628154665878875966

/-! ## A329848.P10270606358692255270

`∑[A102683(A306100(n))+A011558(n)+2]`
-/

namespace A329848.P10270606358692255270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A306100 n).toNat + (A011558 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329848.P10270606358692255270

/-! ## A329848.P13092408372277444745

`∑[A256888((2*n)²)]`
-/

namespace A329848.P13092408372277444745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256888 ((2 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329848.P13092408372277444745

/-! ## A329848.P14849002855383048615

`∑[A080891((2*n)²)+2]`
-/

namespace A329848.P14849002855383048615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 ((2 * n) ^ 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329848.P14849002855383048615

/-! ## A329848.P14384669193792817999

`∑[3-A014029((2*n)²)]`
-/

namespace A329848.P14384669193792817999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A014029 ((2 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329848.P14384669193792817999

/-!
# A329851: Sum of absolute values of n-th differences over all permutations of {0, 1, ..., n}.

The programs for A329851, there is no canonical definition to state claims against.
-/

/-! ## A329851.P14222966428783517304

`lcm(2*n, A319789(comp[2*(n+1)]))`
-/

namespace A329851.P14222966428783517304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n : ℤ) (A319789 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A329851.P14222966428783517304

/-!
# A329852: Numbers having twice as many 1's in their binary expansion as terms in their Zeckendorf expansion.

The programs for A329852, there is no canonical definition to state claims against.
-/

/-! ## A329852.P4896451054602146695

`eq[A007895(n+1), A220115(n+1)]+1`
-/

namespace A329852.P4896451054602146695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220115 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A329852.P4896451054602146695

/-! ## A329852.P4589388426271365223

`eq[A034888(A104324(n)), A220115(n)]`
-/

namespace A329852.P4589388426271365223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A104324 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220115 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329852.P4589388426271365223

/-! ## A329852.P8665393501303816840

`eq[A007895(A233583(n+1)), A220115(n)]`
-/

namespace A329852.P8665393501303816840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220115 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329852.P8665393501303816840

/-! ## A329852.P9869366676076968730

`eq[A007895(A000007(n)+n), A220115(n)]`
-/

namespace A329852.P9869366676076968730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220115 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329852.P9869366676076968730

/-! ## A329852.P7102634833547180496

`eq[A000120(n), A063008(n-A219641(n))]`
-/

namespace A329852.P7102634833547180496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 ((n : ℤ) - A219641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329852.P7102634833547180496

/-! ## A329852.P14208485551747950318

`eq[A220115(n), A347655(n-A219641(n))]`
-/

namespace A329852.P14208485551747950318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220115 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 ((n : ℤ) - A219641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329852.P14208485551747950318

/-! ## A329852.P7411796712062236580

`eq[A288625(n+1)+A220115(n), A103517(n)]`
-/

namespace A329852.P7411796712062236580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288625 (n + 1) + A220115 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329852.P7411796712062236580

/-! ## A329852.P7126439126360707621

`eq[A220115(n)+A219641(n), A233583(n+1)]`
-/

namespace A329852.P7126439126360707621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220115 n + A219641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329852.P7126439126360707621

/-!
# A329853: Numbers having twice as many terms in their Zeckendorf expansion as 1's in their binary expansion.

The programs for A329853, there is no canonical definition to state claims against.
-/

/-! ## A329853.P5595742432161861827

`eq[A000123(A000120(n)), A007895(n)]`
-/

namespace A329853.P5595742432161861827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329853.P5595742432161861827

/-! ## A329853.P11449581494981309625

`eq[A007895(n), A028326(A001316(n))]`
-/

namespace A329853.P11449581494981309625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329853.P11449581494981309625

/-! ## A329853.P14713246784319207053

`eq[n, A219641(n)+A063008(A000120(n))]`
-/

namespace A329853.P14713246784319207053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n + A063008 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329853.P14713246784319207053

/-! ## A329853.P2529994767741004473

`eq[A000120(n), A079977(n-A219641(n))]`
-/

namespace A329853.P2529994767741004473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 ((n : ℤ) - A219641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329853.P2529994767741004473

/-! ## A329853.P16527221607402257565

`eq[A103517(A220115(n)+n), A288625(n+1)]`
-/

namespace A329853.P16527221607402257565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A220115 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288625 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329853.P16527221607402257565

/-! ## A329853.P7698740230828112457

`eq[A000123(2*n-A005187(n)), A007895(n)]`
-/

namespace A329853.P7698740230828112457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 ((2 * n : ℤ) - A005187 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329853.P7698740230828112457

/-! ## A329853.P10860021234115384972

`eq[A000123(3*n-A004134(n)), A007895(n)]`
-/

namespace A329853.P10860021234115384972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 ((3 * n : ℤ) - A004134 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329853.P10860021234115384972

/-! ## A329853.P7152478279194078137

`eq[2*(n+1)-A288625(n+1), A000123(A000120(n))]`
-/

namespace A329853.P7152478279194078137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A288625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329853.P7152478279194078137

/-! ## A329853.P14233107282870054562

`eq[A000120(n), A079977(2*(n+1)-A288625(n+1))]`
-/

namespace A329853.P14233107282870054562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 ((2 * (n + 1) : ℤ) - A288625 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329853.P14233107282870054562

/-! ## A329853.P17034649771466481633

`eq[2*(n+1)-A288625(n+1), A000123(2*n-A005187(n))]`
-/

namespace A329853.P17034649771466481633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A288625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 ((2 * n : ℤ) - A005187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329853.P17034649771466481633

/-!
# A329854: Triangle read by rows: T(n,k) = ((n - k)*(n + k - 1) + 2)/2, 0 <= k <= n.

The programs for A329854, the canonical program `A329854.P9235265463401662256` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329854 has offset 0).

The definition of A329854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329854.P9235265463401662256

`2*(n+1)-A131422(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A329854

/-- `2*(n+1)-A131422(n+1)` -/
def P9235265463401662256.Spec : Prop :=
  ∀ n, P9235265463401662256.a n = A329854 n

theorem P9235265463401662256.correct : P9235265463401662256.Spec := by
  intro n
  simp only [A329854]

end A329854

/-! ## A329854.P15361521264109210786

`A271668(n)-A279891(n)`
-/

namespace A329854.P15361521264109210786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271668 n - A279891 n

end

end A329854.P15361521264109210786

namespace A329854

/-- `A271668(n)-A279891(n)` -/
def P15361521264109210786.Spec : Prop :=
  ∀ n, P15361521264109210786.a n = A329854 n

end A329854

/-! ## A329854.P9194958870324310812

`A049780(n)+1-A025581(n)`
-/

namespace A329854.P9194958870324310812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 n + (1 - A025581 n)

end

end A329854.P9194958870324310812

namespace A329854

/-- `A049780(n)+1-A025581(n)` -/
def P9194958870324310812.Spec : Prop :=
  ∀ n, P9194958870324310812.a n = A329854 n

end A329854

/-! ## A329854.P3243708468957591292

`A083920(n)+1-A112367(n)`
-/

namespace A329854.P3243708468957591292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n + (1 - A112367 n)

end

end A329854.P3243708468957591292

namespace A329854

/-- `A083920(n)+1-A112367(n)` -/
def P3243708468957591292.Spec : Prop :=
  ∀ n, P3243708468957591292.a n = A329854 n

end A329854

/-! ## A329854.P13117570649146363875

`A122797(n+1)-A112367(n)`
-/

namespace A329854.P13117570649146363875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (n + 1) - A112367 n

end

end A329854.P13117570649146363875

namespace A329854

/-- `A122797(n+1)-A112367(n)` -/
def P13117570649146363875.Spec : Prop :=
  ∀ n, P13117570649146363875.a n = A329854 n

end A329854

/-! ## A329854.P9095193629295412863

`A193974(n)-A131914(n+1)`
-/

namespace A329854.P9095193629295412863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 n - A131914 (n + 1)

end

end A329854.P9095193629295412863

namespace A329854

/-- `A193974(n)-A131914(n+1)` -/
def P9095193629295412863.Spec : Prop :=
  ∀ n, P9095193629295412863.a n = A329854 n

end A329854

/-! ## A329854.P1382106108254141432

`A049777(n+1)-A294317(n)`
-/

namespace A329854.P1382106108254141432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) - A294317 n

end

end A329854.P1382106108254141432

namespace A329854

/-- `A049777(n+1)-A294317(n)` -/
def P1382106108254141432.Spec : Prop :=
  ∀ n, P1382106108254141432.a n = A329854 n

end A329854

/-! ## A329854.P4161141252670663193

`A049780(n)+1-log2(A130321(n))`
-/

namespace A329854.P4161141252670663193
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A049780 n : ℝ) + (1 - Real.logb 2 (A130321 n : ℝ))

end

end A329854.P4161141252670663193

namespace A329854

/-- `A049780(n)+1-log2(A130321(n))` -/
def P4161141252670663193.Spec : Prop :=
  ∀ n, P4161141252670663193.a n = (A329854 n : ℝ)

end A329854

/-! ## A329854.P4542562818179786341

`A049780(n)+2-A004736(n+1)`
-/

namespace A329854.P4542562818179786341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 n + (2 - A004736 (n + 1))

end

end A329854.P4542562818179786341

namespace A329854

/-- `A049780(n)+2-A004736(n+1)` -/
def P4542562818179786341.Spec : Prop :=
  ∀ n, P4542562818179786341.a n = A329854 n

end A329854

/-! ## A329854.P7840836298768469280

`2*(n+1)-(A000217(A002262(n))+comp[∑[n-1]])`
-/

namespace A329854.P7840836298768469280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (A000217 (A002262 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ))

end

end A329854.P7840836298768469280

namespace A329854

/-- `2*(n+1)-(A000217(A002262(n))+comp[∑[n-1]])` -/
def P7840836298768469280.Spec : Prop :=
  ∀ n, P7840836298768469280.a n = A329854 n

end A329854

/-! ## A329854.P7611064543187237304

`A049780(n)-A023443(A025581(n))`
-/

namespace A329854.P7611064543187237304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 n - A023443 (A025581 n).toNat

end

end A329854.P7611064543187237304

namespace A329854

/-- `A049780(n)-A023443(A025581(n))` -/
def P7611064543187237304.Spec : Prop :=
  ∀ n, P7611064543187237304.a n = A329854 n

end A329854

/-! ## A329854.P2920848864202927565

`A130154(n+1)+Δ[A062707(n)]`
-/

namespace A329854.P2920848864202927565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130154 (n + 1) + (f1 (n + 1) - f1 n)

end

end A329854.P2920848864202927565

namespace A329854

/-- `A130154(n+1)+Δ[A062707(n)]` -/
def P2920848864202927565.Spec : Prop :=
  ∀ n, P2920848864202927565.a n = A329854 n

end A329854

/-! ## A329854.P13411114571297659219

`A303273(A061579(n))`
-/

namespace A329854.P13411114571297659219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303273 (A061579 n).toNat

end

end A329854.P13411114571297659219

namespace A329854

/-- `A303273(A061579(n))` -/
def P13411114571297659219.Spec : Prop :=
  ∀ n, P13411114571297659219.a n = A329854 n

end A329854

/-! ## A329854.P2111773296256884492

`A303273(A038722(n+1)-1)`
-/

namespace A329854.P2111773296256884492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303273 (A038722 (n + 1) - 1).toNat

end

end A329854.P2111773296256884492

namespace A329854

/-- `A303273(A038722(n+1)-1)` -/
def P2111773296256884492.Spec : Prop :=
  ∀ n, P2111773296256884492.a n = A329854 n

end A329854

/-! ## A329854.P15928775510959113303

`A049780(n)+1-A002262(A061579(n))`
-/

namespace A329854.P15928775510959113303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 n + (1 - A002262 (A061579 n).toNat)

end

end A329854.P15928775510959113303

namespace A329854

/-- `A049780(n)+1-A002262(A061579(n))` -/
def P15928775510959113303.Spec : Prop :=
  ∀ n, P15928775510959113303.a n = A329854 n

end A329854

/-! ## A329854.P15877844303846067334

`A303273(A038722(n+2))`
-/

namespace A329854.P15877844303846067334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303273 (A038722 (n + 2)).toNat

end

end A329854.P15877844303846067334

namespace A329854

/-- `A303273(A038722(n+2))` -/
def P15877844303846067334.Spec : Prop :=
  ∀ n, P15877844303846067334.a n = A329854 n

end A329854

/-! ## A329854.P15789928076359247300

`A008619(2*A087401(A061579(n)))`
-/

namespace A329854.P15789928076359247300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A087401 (A061579 n).toNat).toNat

end

end A329854.P15789928076359247300

namespace A329854

/-- `A008619(2*A087401(A061579(n)))` -/
def P15789928076359247300.Spec : Prop :=
  ∀ n, P15789928076359247300.a n = A329854 n

end A329854

/-! ## A329854.P11813412690271663065

`A008619((A051162(n)-1)*A025581(n))`
-/

namespace A329854.P11813412690271663065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((A051162 n - 1) * A025581 n).toNat

end

end A329854.P11813412690271663065

namespace A329854

/-- `A008619((A051162(n)-1)*A025581(n))` -/
def P11813412690271663065.Spec : Prop :=
  ∀ n, P11813412690271663065.a n = A329854 n

end A329854

/-! ## A329854.P16740158431106007612

`A028242(2*(A049780(n)-A025581(n)))`
-/

namespace A329854.P16740158431106007612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * (A049780 n - A025581 n)).toNat

end

end A329854.P16740158431106007612

namespace A329854

/-- `A028242(2*(A049780(n)-A025581(n)))` -/
def P16740158431106007612.Spec : Prop :=
  ∀ n, P16740158431106007612.a n = A329854 n

end A329854

/-! ## A329854.P9458224629155708323

`A220466(A185877(n+1)-2*A025581(n))`
-/

namespace A329854.P9458224629155708323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (A185877 (n + 1) - 2 * A025581 n).toNat

end

end A329854.P9458224629155708323

namespace A329854

/-- `A220466(A185877(n+1)-2*A025581(n))` -/
def P9458224629155708323.Spec : Prop :=
  ∀ n, P9458224629155708323.a n = A329854 n

end A329854

/-!
# A329855: Numbers k such that uphi(usigma(k)) = k where usigma is the sum of unitary divisors of k (A034448) and uphi is the unitary totient function (A047994).

The programs for A329855, there is no canonical definition to state claims against.
-/

/-! ## A329855.P10568593033762208613

`record[gcd(n+1, A047994(A034448(n+1)))]`
-/

namespace A329855.P10568593033762208613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A047994 (A034448 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329855.P10568593033762208613

/-! ## A329855.P17049381502942709891

`eq[A341882(n), A343879(A071053(n))]`
-/

namespace A329855.P17049381502942709891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341882 (n + 64)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343879 (A071053 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329855.P17049381502942709891

/-! ## A329855.P1794104377126927205

`eq[A010894(A329351(n+1)), A331748(n)]`
-/

namespace A329855.P1794104377126927205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 ((A329351 (n + 1)).toNat + 21)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331748 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329855.P1794104377126927205

/-! ## A329855.P6912104525592650867

`eq[A010894(A329351(n+1)), A331749(n)]`
-/

namespace A329855.P6912104525592650867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 ((A329351 (n + 1)).toNat + 21)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331749 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329855.P6912104525592650867

/-! ## A329855.P7157897470184140562

`eq[A331410(n+1), A355453(A056987(n+2)+1)]+1`
-/

namespace A329855.P7157897470184140562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355453 (A056987 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A329855.P7157897470184140562

/-!
# A329856: Numbers k such that usigma(uphi(k)) = k where usigma is the sum of unitary divisors of k (A034448) and uphi is the unitary totient function (A047994).

The programs for A329856, there is no canonical definition to state claims against.
-/

/-! ## A329856.P10728530008231763787

`eq[1, char[A034448(A329855(n+1))]]`
-/

namespace A329856.P10728530008231763787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A329855 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329856.P10728530008231763787

/-! ## A329856.P3076406327244900847

`eq[A059268(A316695(2*(n+2))), A102396(n)]`
-/

namespace A329856.P3076406327244900847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A316695 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329856.P3076406327244900847

/-! ## A329856.P278256457861618761

`lt[A250306(A116528(n)), A055231(2*(n+2))]`
-/

namespace A329856.P278256457861618761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250306 (A116528 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329856.P278256457861618761

/-! ## A329856.P4539340093562537896

`eq[A005765(n+2), A097637(n)]`
-/

namespace A329856.P4539340093562537896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005765 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097637 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329856.P4539340093562537896

/-!
# A329857: Positive integers which can be represented as p*q - p - q where p and q are distinct odd primes.

The programs for A329857, there is no canonical definition to state claims against.
-/

/-! ## A329857.P15020045676736055250

`2*record[A171462(A325797(n+1))]-1`
-/

namespace A329857.P15020045676736055250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171462 (A325797 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A329857.P15020045676736055250

/-! ## A329857.P15323368175178289434

`A004273(record[A171462(A325797(n+1))])`
-/

namespace A329857.P15323368175178289434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171462 (A325797 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A329857.P15323368175178289434

/-! ## A329857.P15556297578414880193

`A004273(lt[A125006(n+1), A027642(n)])`
-/

namespace A329857.P15556297578414880193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A329857.P15556297578414880193

/-! ## A329857.P1496474104423050522

`A004273(lt[A004273(n+1), A318142(n)])`
-/

namespace A329857.P1496474104423050522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A329857.P1496474104423050522

/-! ## A329857.P10470994675522911691

`A004273(lt[A358043(n+1), A027642(n)])`
-/

namespace A329857.P10470994675522911691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A329857.P10470994675522911691

/-!
# A329858: Numbers k such that k and usigma(k) have the same set of prime divisors, where usigma(k) is the sum of unitary divisors of k (A034448).

The programs for A329858, there is no canonical definition to state claims against.
-/

/-! ## A329858.P9380105918456019101

`A123258(A211007(n+1)-n)`
-/

namespace A329858.P9380105918456019101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (A211007 (n + 1) - (n : ℤ)).toNat

end

end A329858.P9380105918456019101

/-! ## A329858.P5391803380775864186

`(A118224(2*n+1)/2)%A139071(3*n+5)`
-/

namespace A329858.P5391803380775864186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A118224 (2 * n + 1) : ℚ) / 2)) (A139071 (3 * n + 5))

end

end A329858.P5391803380775864186

/-! ## A329858.P11171146240271602469

`A123258(A154287(n+1)+A004868(n+1))`
-/

namespace A329858.P11171146240271602469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (A154287 (n + 1) + A004868 (n + 1)).toNat

end

end A329858.P11171146240271602469

/-!
# A329859: Numbers k such that k and uphi(k) have the same set of prime divisors, where uphi is the unitary totient function (A047994).

The programs for A329859, there is no canonical definition to state claims against.
-/

/-! ## A329859.P12115472418941083157

`A346123(n+1)*A346123(A032308(n))`
-/

namespace A329859.P12115472418941083157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346123 (n + 1) * A346123 (A032308 n).toNat

end

end A329859.P12115472418941083157

/-! ## A329859.P10114676687850233823

`A007953(A317351(n))*A048764(Δ[n^3])`
-/

namespace A329859.P10114676687850233823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A317351 n).toNat * A048764 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A329859.P10114676687850233823

/-!
# A329860: Triangle read by rows where T(n,k) is the number of binary words of length n with cuts-resistance k.

The programs for A329860, there is no canonical definition to state claims against.
-/

/-! ## A329860.P9684037089579632468

`A040001(A072576(n))*A290428(A061579(n))`
-/

namespace A329860.P9684037089579632468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A072576 n).toNat * A290428 (A061579 n).toNat

end

end A329860.P9684037089579632468

/-! ## A329860.P9399381992231567952

`A040001(A212133(n)-n)*A290428(A061579(n))`
-/

namespace A329860.P9399381992231567952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A212133 n - (n : ℤ)).toNat * A290428 (A061579 n).toNat

end

end A329860.P9399381992231567952

/-! ## A329860.P10486868161995192237

`A020639(A288808(n))*A290428(A061579(n))`
-/

namespace A329860.P10486868161995192237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A288808 n).toNat * A290428 (A061579 n).toNat

end

end A329860.P10486868161995192237

/-! ## A329860.P1329748292297327201

`A006530(A011782(n))*A290428(A061579(n))`
-/

namespace A329860.P1329748292297327201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A011782 n).toNat * A290428 (A061579 n).toNat

end

end A329860.P1329748292297327201

/-! ## A329860.P9382812159977008460

`A020639(A189393(n+1))*A290428(A061579(n))`
-/

namespace A329860.P9382812159977008460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A189393 (n + 1)).toNat * A290428 (A061579 n).toNat

end

end A329860.P9382812159977008460

/-!
# A329861: Triangle read by rows where T(n,k) is the number of compositions of n with cuts-resistance k.

The programs for A329861, there is no canonical definition to state claims against.
-/

/-! ## A329861.P6846935332074929634

`A242447(n)+Δ[A316717(A316576(n+1))]`
-/

namespace A329861.P6846935332074929634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316717 (A316576 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 n + (f1 (n + 1) - f1 n)

end

end A329861.P6846935332074929634

/-! ## A329861.P12714461141333404850

`A331332(n)-A044941(2^n)`
-/

namespace A329861.P12714461141333404850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331332 n - A044941 (2 ^ n)

end

end A329861.P12714461141333404850

/-! ## A329861.P16117144995115139855

`A331332(n)-A010051(A022171(n))`
-/

namespace A329861.P16117144995115139855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331332 n - A010051 (A022171 n).toNat

end

end A329861.P16117144995115139855

/-! ## A329861.P16682690792605196875

`A331332(n)-A102683(A058696(n))`
-/

namespace A329861.P16682690792605196875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331332 n - A102683 (A058696 n).toNat

end

end A329861.P16682690792605196875

/-! ## A329861.P976530596143022712

`A331332(n)-A185284(A000009(n))`
-/

namespace A329861.P976530596143022712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331332 n - A185284 (A000009 n).toNat

end

end A329861.P976530596143022712

/-!
# A329862: Positive integers whose binary expansion has cuts-resistance 2.

The programs for A329862, there is no canonical definition to state claims against.
-/

/-! ## A329862.P2207914873538825531

`eq[2, A319416(n)]`
-/

namespace A329862.P2207914873538825531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329862.P2207914873538825531

/-! ## A329862.P8465154347205059395

`lt[0, A346100(A319416(n)²)]`
-/

namespace A329862.P8465154347205059395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346100 (A319416 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A329862.P8465154347205059395

/-! ## A329862.P70816063103998383

`lt[1, A324198(A319416(n)+1)]`
-/

namespace A329862.P70816063103998383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (A319416 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A329862.P70816063103998383

/-! ## A329862.P7656995350602092406

`lt[1, A346100(A319416(n)+2)]`
-/

namespace A329862.P7656995350602092406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346100 (A319416 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A329862.P7656995350602092406

/-! ## A329862.P2597804646738519093

`lt[1, A346100(2*A319416(n))]`
-/

namespace A329862.P2597804646738519093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346100 (2 * A319416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A329862.P2597804646738519093

/-! ## A329862.P11977993813967729771

`eq[A216195(n+1), A277329(n)]`
-/

namespace A329862.P11977993813967729771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329862.P11977993813967729771

/-! ## A329862.P15333796922171354083

`lt[0, val(A006530(A319416(n)+6), 2)]`
-/

namespace A329862.P15333796922171354083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (A319416 n + 6).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329862.P15333796922171354083

/-! ## A329862.P4031428231166378281

`eq[A007302(n+1)+1, A057526(4*n+1)]`
-/

namespace A329862.P4031428231166378281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329862.P4031428231166378281

/-! ## A329862.P13385365341357440519

`lt[A000007(n), A260192(A319416(n))]`
-/

namespace A329862.P13385365341357440519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260192 (A319416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329862.P13385365341357440519

/-! ## A329862.P5701696649412685602

`lt[A063524(n), A260192(A319416(n))]`
-/

namespace A329862.P5701696649412685602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260192 (A319416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329862.P5701696649412685602

/-!
# A329863: Number of compositions of n with cuts-resistance 2.

The programs for A329863, there is no canonical definition to state claims against.
-/

/-! ## A329863.P4568341591059998648

`A330028(n)-A003242(n)`
-/

namespace A329863.P4568341591059998648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330028 n - A003242 n

end

end A329863.P4568341591059998648

/-! ## A329863.P10373640272171085186

`A330028(n)-A214249(2*n²)`
-/

namespace A329863.P10373640272171085186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330028 n - A214249 (2 * n ^ 2)

end

end A329863.P10373640272171085186

/-! ## A329863.P13903618632545082575

`A330028(n)-A214268(2*n²)`
-/

namespace A329863.P13903618632545082575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330028 n - A214268 (2 * n ^ 2)

end

end A329863.P13903618632545082575

/-! ## A329863.P6994645682305542046

`A330028(n)-A106356(C(n, 2)+1)`
-/

namespace A329863.P6994645682305542046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330028 n - A106356 (Nat.choose n 2 + 1)

end

end A329863.P6994645682305542046

/-! ## A329863.P16912948075699485340

`A330028(n)-A091613(∑[abs(1-n)])`
-/

namespace A329863.P16912948075699485340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330028 n - A091613 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329863.P16912948075699485340

/-!
# A329865: Numbers whose binary expansion has the same runs-resistance as cuts-resistance.

The programs for A329865, there is no canonical definition to state claims against.
-/

/-! ## A329865.P13108077951596979637

`eq[0, A329867(n)]`
-/

namespace A329865.P13108077951596979637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329865.P13108077951596979637

/-! ## A329865.P4323854045585075480

`lt[abs(A329867(n)), A057427(n+1)]`
-/

namespace A329865.P4323854045585075480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A329867 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329865.P4323854045585075480

/-! ## A329865.P3450177030381611767

`lt[A057427(n), 2-A329867(n)²]`
-/

namespace A329865.P3450177030381611767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A329867 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329865.P3450177030381611767

/-! ## A329865.P1006348542704887795

`lt[A329867(n)², A057427(n+3)]`
-/

namespace A329865.P1006348542704887795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329867 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329865.P1006348542704887795

/-! ## A329865.P11495779900006063059

`lt[A329867(n)², A033999(2*(n+2))]`
-/

namespace A329865.P11495779900006063059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329867 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329865.P11495779900006063059

/-!
# A329866: Numbers whose binary expansion has its runs-resistance equal to its cuts-resistance minus 1.

The programs for A329866, there is no canonical definition to state claims against.
-/

/-! ## A329866.P6626469337316035369

`eq[-1, A329867(n)]`
-/

namespace A329866.P6626469337316035369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329866.P6626469337316035369

/-! ## A329866.P13599324311682471953

`lt[abs(A329867(n)+1), A057427(n)]`
-/

namespace A329866.P13599324311682471953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A329867 n + 1|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329866.P13599324311682471953

/-!
# A329867: Runs-resistance minus cuts-resistance of the binary expansion of n.

The programs for A329867, there is no canonical definition to state claims against.
-/

/-! ## A329867.P16317180054873566902

`A008683(A300682(n+1)+A288486(n))-A359154(n+1)`
-/

namespace A329867.P16317180054873566902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A300682 (n + 1) + A288486 n).toNat - A359154 (n + 1)

end

end A329867.P16317180054873566902

/-!
# A329868: Sorted positions of first appearances in A329867 (difference between the runs-resistance and the cuts-resistance of binary expansion) of each element in the image.

The programs for A329868, there is no canonical definition to state claims against.
-/

/-! ## A329868.P17936084456846742870

`eq[A001227(A040004(n+1)), A188318(n+1)]`
-/

namespace A329868.P17936084456846742870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A040004 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188318 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329868.P17936084456846742870

/-! ## A329868.P14977737455159304225

`lt[A325177(A325810(n+1)), A129498(n+1)]`
-/

namespace A329868.P14977737455159304225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325177 (A325810 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329868.P14977737455159304225

/-!
# A329870: Runs-resistance of the binary expansion of n without the first digit.

The programs for A329870, there is no canonical definition to state claims against.
-/

/-! ## A329870.P12930726057494127184

`A196563(A217065(3*n+1)-A002848(n))`
-/

namespace A329870.P12930726057494127184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A217065 (3 * n + 1) - A002848 n).toNat

end

end A329870.P12930726057494127184

/-! ## A329870.P17788131735345588841

`A057431(n+4)%A057424(n+6)`
-/

namespace A329870.P17788131735345588841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057431 (n + 4)) (A057424 (n + 6))

end

end A329870.P17788131735345588841

/-! ## A329870.P5203739966134640068

`A057431(n+4)%A002061(A011782(n))`
-/

namespace A329870.P5203739966134640068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057431 (n + 4)) (A002061 (A011782 n).toNat)

end

end A329870.P5203739966134640068

/-! ## A329870.P10739817956729563907

`and(A057429(A057449(n+1)), A057431(n+4))`
-/

namespace A329870.P10739817956729563907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057429 (A057449 (n + 1)).toNat) (A057431 (n + 4))

end

end A329870.P10739817956729563907

/-! ## A329870.P456525970526507267

`A000120(A256992(2*n+5)%A134305(n+1))`
-/

namespace A329870.P456525970526507267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A256992 (2 * n + 5)) (A134305 (n + 1))).toNat

end

end A329870.P456525970526507267

/-!
# A329871: Number of static n X n placements of water source-blocks in Minecraft.

The programs for A329871, there is no canonical definition to state claims against.
-/

/-! ## A329871.P12177318549492705277

`A140401(A294871(n))`
-/

namespace A329871.P12177318549492705277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140401 (A294871 n).toNat

end

end A329871.P12177318549492705277

/-!
# A329873: a(n) is the number of distinct prime numbers whose binary digits appear in order but not necessarily as consecutive digits in the binary representation of n.

The programs for A329873, there is no canonical definition to state claims against.
-/

/-! ## A329873.P3851111578721192649

`A001221(A332030(n)+A101637(n+1))`
-/

namespace A329873.P3851111578721192649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A332030 n + A101637 (n + 1)).toNat

end

end A329873.P3851111578721192649

/-! ## A329873.P2235095457134658248

`A001221(A332030(n)%A052508(n))`
-/

namespace A329873.P2235095457134658248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A332030 n) (A052508 n)).toNat

end

end A329873.P2235095457134658248

/-! ## A329873.P14505227992642117228

`A001221(gcd(A332030(n), A332041(2*n+1)))`
-/

namespace A329873.P14505227992642117228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A332030 n) (A332041 (2 * n + 1)))

end

end A329873.P14505227992642117228

/-!
# A329875: a(1) = 1, for n > 0, a(n+1) is the least prime number > a(n) whose binary expansion ends with the binary expansion of a(n).

The programs for A329875, there is no canonical definition to state claims against.
-/

/-! ## A329875.P7278605541657435500

`∑[A329382(A047653(n)²)]`
-/

namespace A329875.P7278605541657435500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A047653 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329875.P7278605541657435500

/-! ## A329875.P8729186817708202409

`∑[∑[A290731(A111531(n))]]`
-/

namespace A329875.P8729186817708202409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290731 (A111531 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329875.P8729186817708202409

/-!
# A329878: Numbers k such that k and psi(k) have the same set of prime divisors, where psi is the Dedekind psi function (A001615).

The programs for A329878, there is no canonical definition to state claims against.
-/

/-! ## A329878.P15830690233320355826

`A008458(A083854(n))+A000007(A119311(n+1))`
-/

namespace A329878.P15830690233320355826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A083854 n).toNat + A000007 (A119311 (n + 1)).toNat

end

end A329878.P15830690233320355826

/-! ## A329878.P437556101111221396

`A073424(A142563(n+1))+A008458(A083854(n))`
-/

namespace A329878.P437556101111221396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A142563 (n + 1)).toNat + A008458 (A083854 n).toNat

end

end A329878.P437556101111221396

/-! ## A329878.P12010431039344103741

`A008458(n*A008458(A083854(n)))/A008458(n)`
-/

namespace A329878.P12010431039344103741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 ((n : ℤ) * A008458 (A083854 n).toNat).toNat : ℚ) / (A008458 n : ℚ)

end

end A329878.P12010431039344103741

/-!
# A329879: Numbers k such that k and nusigma(k) have the same set of prime divisors, where nusigma(k) is the sum of nonunitary divisors of k (A048146).

The programs for A329879, there is no canonical definition to state claims against.
-/

/-! ## A329879.P16131671217050328102

`A335448(or(A056971(n), A155752(n+1)))`
-/

namespace A329879.P16131671217050328102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335448 (Int.lor (A056971 n) (A155752 (n + 1))).toNat

end

end A329879.P16131671217050328102

/-! ## A329879.P1121764635375381659

`A335448(or(A002620(n+2), A056971(n)))`
-/

namespace A329879.P1121764635375381659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335448 (Int.lor (A002620 (n + 2)) (A056971 n)).toNat

end

end A329879.P1121764635375381659

/-!
# A329880: Numbers k such that the sums of unitary and nonunitary divisors of k have the same set of prime divisors.

The programs for A329880, there is no canonical definition to state claims against.
-/

/-! ## A329880.P17245300738910082745

`∩[A274397(n+1), A328930(n+1)]`
-/

namespace A329880.P17245300738910082745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329880.P17245300738910082745

/-! ## A329880.P8097268845824385607

`∩[A297575(n+1), A328930(n+1)]`
-/

namespace A329880.P8097268845824385607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329880.P8097268845824385607

/-!
# A329882: Nonunitary superabundant numbers: numbers m such that nusigma(m)/m > nusigma(k)/k for all k < m, where nusigma(m) is the sum of nonunitary divisors of m (A048146).

The programs for A329882, there is no canonical definition to state claims against.
-/

/-! ## A329882.P11034516334011914596

`A033833(lt[A033886(n), A015133(n)])`
-/

namespace A329882.P11034516334011914596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033833 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A329882.P11034516334011914596

/-! ## A329882.P5447705181442874642

`A309141(lt[0, ∏{digits}[n², #]]^A374325(n+1))`
-/

namespace A329882.P5447705181442874642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309141 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) ^ (A374325 (n + 1) : ℤ))).toNat

end

end A329882.P5447705181442874642

/-! ## A329882.P2703316556126305327

`A309141(A351870(n)+A029310(n)!)`
-/

namespace A329882.P2703316556126305327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309141 (A351870 n + (Nat.factorial (A029310 n).toNat : ℤ)).toNat

end

end A329882.P2703316556126305327

/-! ## A329882.P2334649263476126592

`A309141(A067251(n+1)%A128027(n+1))`
-/

namespace A329882.P2334649263476126592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309141 (Int.tmod (A067251 (n + 1)) (A128027 (n + 1))).toNat

end

end A329882.P2334649263476126592

/-! ## A329882.P17767972990721941616

`A309141(gcd(A029970(n+2), A333966(n+4)))`
-/

namespace A329882.P17767972990721941616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309141 (Int.gcd (A029970 (n + 2)) (A333966 (n + 4)))

end

end A329882.P17767972990721941616

/-!
# A329883: Nonunitary highly abundant numbers: numbers m such that nusigma(m) > nusigma(k) for all k < m, where s(n) is the sum of nonunitary divisors of n (A048146).

The programs for A329883, there is no canonical definition to state claims against.
-/

/-! ## A329883.P3957652672185593542

`record[A022998(A174273(A025487(n+1)))]`
-/

namespace A329883.P3957652672185593542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A174273 (A025487 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329883.P3957652672185593542

/-! ## A329883.P13903926709455107507

`A034444(A000079(n))*A145853(n+1)`
-/

namespace A329883.P13903926709455107507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A000079 n).toNat * A145853 (n + 1)

end

end A329883.P13903926709455107507

/-! ## A329883.P5482763080459399523

`A181823(n+1)/A171977(A000051(n))`
-/

namespace A329883.P5482763080459399523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181823 (n + 1) : ℚ) / (A171977 (A000051 n).toNat : ℚ)

end

end A329883.P5482763080459399523

/-! ## A329883.P5350636573116908122

`A020639(A211365(n+1))*A145853(n+1)`
-/

namespace A329883.P5350636573116908122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A211365 (n + 1)).toNat * A145853 (n + 1)

end

end A329883.P5350636573116908122

/-!
# A329884: Nonunitary superperfect numbers: numbers k such that nusigma(nusigma(k)) = k, where nusigma(k) = sigma(k) - usigma(k) is the sum of nonunitary divisors of k (A048146).

The programs for A329884, there is no canonical definition to state claims against.
-/

/-! ## A329884.P5477533425215514573

`A193336(∩[A113791(n+1), A004277(n)])`
-/

namespace A329884.P5477533425215514573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A329884.P5477533425215514573

/-! ## A329884.P11793187827439780960

`A113791(n+1)*A255176(A355799(n+5))`
-/

namespace A329884.P11793187827439780960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113791 (n + 1) * A255176 (A355799 (n + 5)).toNat

end

end A329884.P11793187827439780960

/-!
# A329885: a(n) = A051903(n) mod A002322(n), where A051903 gives the maximal prime exponent of n, and A002322 is Carmichael's lambda (also known as psi).

The programs for A329885, there is no canonical definition to state claims against.
-/

/-! ## A329885.P4170421991404998209

`A051903(n+1)%A002322(n+1)`
-/

namespace A329885.P4170421991404998209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051903 (n + 1)) (A002322 (n + 1))

end

end A329885.P4170421991404998209

/-! ## A329885.P6912104968912590338

`A134198(n+1)%A002322(n+1)`
-/

namespace A329885.P6912104968912590338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134198 (n + 1)) (A002322 (n + 1))

end

end A329885.P6912104968912590338

/-! ## A329885.P12024797374977464105

`A007814(A046523(n+1))%A002322(n+1)`
-/

namespace A329885.P12024797374977464105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (A046523 (n + 1)).toNat) (A002322 (n + 1))

end

end A329885.P12024797374977464105

/-! ## A329885.P12302931433870664296

`A001222(A238745(n+1))%A002322(n+1)`
-/

namespace A329885.P12302931433870664296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A238745 (n + 1)).toNat) (A002322 (n + 1))

end

end A329885.P12302931433870664296

/-! ## A329885.P12048439400119034941

`A061395(A181819(n+1))%A002322(n+1)`
-/

namespace A329885.P12048439400119034941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A181819 (n + 1)).toNat) (A002322 (n + 1))

end

end A329885.P12048439400119034941

/-!
# A329886: Primorial inflation of Doudna-tree: a(0) = 1, a(1) = 2; for n > 1, if n is even, a(n) = A283980(a(n/2)), and if n is odd, then a(n) = 2*a((n-1)/2).

The programs for A329886, the canonical program `A329886.P9463154013970528046` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329886 has offset 0).

The definition of A329886 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A108951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329886.P9463154013970528046

`A108951(A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A329886

/-- `A108951(A005940(1+n))` -/
def P9463154013970528046.Spec : Prop :=
  ∀ n, P9463154013970528046.a n = A329886 n

theorem P9463154013970528046.correct : P9463154013970528046.Spec := by
  intro n
  simp only [A329886]

end A329886

/-! ## A329886.P5199277837250869235

`a(A025480(n))*A005940(n+1)` with `a(0)=1`
-/

namespace A329886.P5199277837250869235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A025480 n).toNat * A005940 (n + 1)

end

end A329886.P5199277837250869235

namespace A329886

/-- `a(A025480(n))*A005940(n+1)` -/
def P5199277837250869235.Spec : Prop :=
  ∀ n, P5199277837250869235.a n = A329886 n

end A329886

/-! ## A329886.P7931234594380348951

`a(A003602(n+1)-1)*A005940(n+1)` with `a(0)=1`
-/

namespace A329886.P7931234594380348951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A003602 (n + 1) - 1).toNat * A005940 (n + 1)

end

end A329886.P7931234594380348951

namespace A329886

/-- `a(A003602(n+1)-1)*A005940(n+1)` -/
def P7931234594380348951.Spec : Prop :=
  ∀ n, P7931234594380348951.a n = A329886 n

end A329886

/-! ## A329886.P13862500282936752733

`A324394(n)*A324395(n)*a(A025480(n))` with `a(0)=1`
-/

namespace A329886.P13862500282936752733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A324394 n * A324395 n * a (A025480 n).toNat

end

end A329886.P13862500282936752733

namespace A329886

/-- `A324394(n)*A324395(n)*a(A025480(n))` -/
def P13862500282936752733.Spec : Prop :=
  ∀ n, P13862500282936752733.a n = A329886 n

end A329886

/-! ## A329886.P744273113359149185

`A329887(A054429(2*n+1))/2`
-/

namespace A329886.P744273113359149185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329887 (A054429 (2 * n + 1)).toNat : ℚ) / 2

end

end A329886.P744273113359149185

namespace A329886

/-- `A329887(A054429(2*n+1))/2` -/
def P744273113359149185.Spec : Prop :=
  ∀ n, P744273113359149185.a n = (A329886 n : ℚ)

end A329886

/-! ## A329886.P17844266514772587384

`A322827(A335858(2*n+1))/2`
-/

namespace A329886.P17844266514772587384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322827 (A335858 (2 * n + 1)).toNat : ℚ) / 2

end

end A329886.P17844266514772587384

namespace A329886

/-- `A322827(A335858(2*n+1))/2` -/
def P17844266514772587384.Spec : Prop :=
  ∀ n, P17844266514772587384.a n = (A329886 n : ℚ)

end A329886

/-! ## A329886.P4551577412217980706

`∏{d}[A005940(n+1), A034386(A014963(#))]`
-/

namespace A329886.P4551577412217980706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A034386 (A014963 d).toNat

end

end A329886.P4551577412217980706

namespace A329886

/-- `∏{d}[A005940(n+1), A034386(A014963(#))]` -/
def P4551577412217980706.Spec : Prop :=
  ∀ n, P4551577412217980706.a n = A329886 n

end A329886

/-! ## A329886.P17746557139004402081

`A181821(A253563(n))`
-/

namespace A329886.P17746557139004402081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A253563 n).toNat

end

end A329886.P17746557139004402081

namespace A329886

/-- `A181821(A253563(n))` -/
def P17746557139004402081.Spec : Prop :=
  ∀ n, P17746557139004402081.a n = A329886 n

end A329886

/-!
# A329887: a(0) = 1, a(1) = 2; for n > 1, if n is even, then a(n) = 2*a(n/2), and if n is odd, a(n) = A283980(a((n-1)/2)).

The programs for A329887, the canonical program `A329887.P5028341398088360431` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329887 has offset 0).

The definition of A329887 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329887.P5028341398088360431

`A108951(A163511(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A329887

/-- `A108951(A163511(n))` -/
def P5028341398088360431.Spec : Prop :=
  ∀ n, P5028341398088360431.a n = A329887 n

theorem P5028341398088360431.correct : P5028341398088360431.Spec := by
  intro n
  simp only [A329887]

end A329887

/-! ## A329887.P14894194781147794479

`A322827(A341916(n))`
-/

namespace A329887.P14894194781147794479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322827 (A341916 n).toNat

end

end A329887.P14894194781147794479

namespace A329887

/-- `A322827(A341916(n))` -/
def P14894194781147794479.Spec : Prop :=
  ∀ n, P14894194781147794479.a n = A329887 n

end A329887

/-! ## A329887.P3845590592573835790

`a(A025480(n-1))*A163511(n)` with `a(0)=1`
-/

namespace A329887.P3845590592573835790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A025480 (n - 1)).toNat * A163511 n

end

end A329887.P3845590592573835790

namespace A329887

/-- `a(A025480(n-1))*A163511(n)` -/
def P3845590592573835790.Spec : Prop :=
  ∀ n, P3845590592573835790.a n = A329887 n

end A329887

/-! ## A329887.P4253283983879563082

`A329886(A286548(n)+A180201(n))`
-/

namespace A329887.P4253283983879563082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329886 (A286548 n + A180201 n).toNat

end

end A329887.P4253283983879563082

namespace A329887

/-- `A329886(A286548(n)+A180201(n))` -/
def P4253283983879563082.Spec : Prop :=
  ∀ n, P4253283983879563082.a n = A329887 n

end A329887

/-! ## A329887.P13570538178330316912

`A329886(A286546(n)+A233279(n))`
-/

namespace A329887.P13570538178330316912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329886 (A286546 n + A233279 n).toNat

end

end A329887.P13570538178330316912

namespace A329887

/-- `A329886(A286546(n)+A233279(n))` -/
def P13570538178330316912.Spec : Prop :=
  ∀ n, P13570538178330316912.a n = A329887 n

end A329887

/-! ## A329887.P13695954898428623201

`A329886(xor(A233279(n), A292600(n)))`
-/

namespace A329887.P13695954898428623201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329886 (Int.xor (A233279 n) (A292600 n)).toNat

end

end A329887.P13695954898428623201

namespace A329887

/-- `A329886(xor(A233279(n), A292600(n)))` -/
def P13695954898428623201.Spec : Prop :=
  ∀ n, P13695954898428623201.a n = A329887 n

end A329887

/-! ## A329887.P12739990644014084043

`A025487(A329906(n))`
-/

namespace A329887.P12739990644014084043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A329906 n).toNat

end

end A329887.P12739990644014084043

namespace A329887

/-- `A025487(A329906(n))` -/
def P12739990644014084043.Spec : Prop :=
  ∀ n, P12739990644014084043.a n = A329887 n

end A329887

/-! ## A329887.P10465400519385553474

`A181821(A253565(n))`
-/

namespace A329887.P10465400519385553474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A253565 n).toNat

end

end A329887.P10465400519385553474

namespace A329887

/-- `A181821(A253565(n))` -/
def P10465400519385553474.Spec : Prop :=
  ∀ n, P10465400519385553474.a n = A329887 n

end A329887

/-!
# A329888: a(n) = A329900(A329602(n)); Heinz number of the even bisection (even-indexed parts) of the integer partition with Heinz number n.

The programs for A329888, the canonical program `A329888.P17015609551114416596` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329888 has offset 1).

The definition of A329888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329888.P2619444246677391689

`A329900(A329602(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329888.P2619444246677391689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A329602 (n + 1)).toNat

end

end A329888.P2619444246677391689

namespace A329888

/-- `A329900(A329602(n+1))` -/
def P2619444246677391689.Spec : Prop :=
  ∀ n, P2619444246677391689.a n = A329888 (n + 1)

end A329888

/-! ## A329888.P17015609551114416596

`A052126((n+1)/a(A052126(n+1)-1))` with `a(0)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A329888

/-- `A052126((n+1)/a(A052126(n+1)-1))` -/
def P17015609551114416596.Spec : Prop :=
  ∀ n, P17015609551114416596.a n = A329888 (n + 1)

theorem P17015609551114416596.correct : P17015609551114416596.Spec := by
  intro n
  simp only [A329888, Nat.add_sub_cancel]

end A329888

/-! ## A329888.P6317469816967842594

`A329602(n+1)/A329602(A064989(n+1))`
-/

namespace A329888.P6317469816967842594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329602 (n + 1) : ℚ) / (A329602 (A064989 (n + 1)).toNat : ℚ)

end

end A329888.P6317469816967842594

namespace A329888

/-- `A329602(n+1)/A329602(A064989(n+1))` -/
def P6317469816967842594.Spec : Prop :=
  ∀ n, P6317469816967842594.a n = (A329888 (n + 1) : ℚ)

end A329888

/-! ## A329888.P7670346216845775152

`A329602(n+1)/A329602(∑{d}[n+1, A349127(#)])`
-/

namespace A329888.P7670346216845775152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329602 (n + 1) : ℚ) / (A329602 (∑ d ∈ Nat.divisors (f1 n), A349127 d).toNat : ℚ)

end

end A329888.P7670346216845775152

namespace A329888

/-- `A329602(n+1)/A329602(∑{d}[n+1, A349127(#)])` -/
def P7670346216845775152.Spec : Prop :=
  ∀ n, P7670346216845775152.a n = (A329888 (n + 1) : ℚ)

end A329888

/-! ## A329888.P9591574741551024799

`A329602(n+1)/A329602(A349126(n+1)-A349125(n+1))`
-/

namespace A329888.P9591574741551024799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329602 (n + 1) : ℚ) / (A329602 (A349126 (n + 1) - A349125 (n + 1)).toNat : ℚ)

end

end A329888.P9591574741551024799

namespace A329888

/-- `A329602(n+1)/A329602(A349126(n+1)-A349125(n+1))` -/
def P9591574741551024799.Spec : Prop :=
  ∀ n, P9591574741551024799.a n = (A329888 (n + 1) : ℚ)

end A329888

/-! ## A329888.P14690877625815085379

`A329602(n+1)/A329602(A353791(n+1)/A003958(n+1))`
-/

namespace A329888.P14690877625815085379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329602 (n + 1) : ℚ) / (A329602 (SequenceMachineLib.roundAway ((A353791 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ))).toNat : ℚ)

end

end A329888.P14690877625815085379

namespace A329888

/-- `A329602(n+1)/A329602(A353791(n+1)/A003958(n+1))` -/
def P14690877625815085379.Spec : Prop :=
  ∀ n, P14690877625815085379.a n = (A329888 (n + 1) : ℚ)

end A329888

/-! ## A329888.P12914477578022182258

`A052126(n+1)/A346701(A052126(A052126(n+1)))`
-/

namespace A329888.P12914477578022182258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052126 (n + 1) : ℚ) / (A346701 (A052126 (A052126 (n + 1)).toNat).toNat : ℚ)

end

end A329888.P12914477578022182258

namespace A329888

/-- `A052126(n+1)/A346701(A052126(A052126(n+1)))` -/
def P12914477578022182258.Spec : Prop :=
  ∀ n, P12914477578022182258.a n = (A329888 (n + 1) : ℚ)

end A329888

/-! ## A329888.P13293416629540323980

`A346701(A052126(n+1))`
-/

namespace A329888.P13293416629540323980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346701 (A052126 (n + 1)).toNat

end

end A329888.P13293416629540323980

namespace A329888

/-- `A346701(A052126(n+1))` -/
def P13293416629540323980.Spec : Prop :=
  ∀ n, P13293416629540323980.a n = A329888 (n + 1)

end A329888

/-! ## A329888.P17869523344393906145

`A346701((n+1)/A006530(n+1))`
-/

namespace A329888.P17869523344393906145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346701 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A329888.P17869523344393906145

namespace A329888

/-- `A346701((n+1)/A006530(n+1))` -/
def P17869523344393906145.Spec : Prop :=
  ∀ n, P17869523344393906145.a n = A329888 (n + 1)

end A329888

/-! ## A329888.P10617739987164804252

`A346701(A342768(n+1)/(n+1))`
-/

namespace A329888.P10617739987164804252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346701 (SequenceMachineLib.roundAway ((A342768 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A329888.P10617739987164804252

namespace A329888

/-- `A346701(A342768(n+1)/(n+1))` -/
def P10617739987164804252.Spec : Prop :=
  ∀ n, P10617739987164804252.a n = A329888 (n + 1)

end A329888

/-! ## A329888.P6696574466549217724

`A346701(A346704(A342768(n+1)))`
-/

namespace A329888.P6696574466549217724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346701 (A346704 (A342768 (n + 1)).toNat).toNat

end

end A329888.P6696574466549217724

namespace A329888

/-- `A346701(A346704(A342768(n+1)))` -/
def P6696574466549217724.Spec : Prop :=
  ∀ n, P6696574466549217724.a n = A329888 (n + 1)

end A329888

/-! ## A329888.P17411929647604124683

`A152271(A001223(n+1))*A319626(A329602(n+1))`
-/

namespace A329888.P17411929647604124683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A001223 (n + 1)).toNat * A319626 (A329602 (n + 1)).toNat

end

end A329888.P17411929647604124683

namespace A329888

/-- `A152271(A001223(n+1))*A319626(A329602(n+1))` -/
def P17411929647604124683.Spec : Prop :=
  ∀ n, P17411929647604124683.a n = A329888 (n + 1)

end A329888

/-!
# A329889: a(n) is the unique integer k such that A108951(k) = A260633(n).

The programs for A329889, there is no canonical definition to state claims against.
-/

/-! ## A329889.P657774347087303274

`A329900(A260633(n+1))`
-/

namespace A329889.P657774347087303274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A260633 (n + 1)).toNat

end

end A329889.P657774347087303274

/-! ## A329889.P12501762551066404965

`A238745(A260633(n+1)%A017223(n))`
-/

namespace A329889.P12501762551066404965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (Int.tmod (A260633 (n + 1)) (A017223 n)).toNat

end

end A329889.P12501762551066404965

/-! ## A329889.P15134080072311354169

`A319626(A260633(n+1))%A182467(n)`
-/

namespace A329889.P15134080072311354169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319626 (A260633 (n + 1)).toNat) (A182467 n)

end

end A329889.P15134080072311354169

/-! ## A329889.P12638576780798097633

`A238745(or(A000007(n), A260633(n+1)))`
-/

namespace A329889.P12638576780798097633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (Int.lor (A000007 n) (A260633 (n + 1))).toNat

end

end A329889.P12638576780798097633

/-! ## A329889.P9167675229117399483

`∑{d}[A238745(A260633(n+1)), A000010(#)]`
-/

namespace A329889.P9167675229117399483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (A260633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A329889.P9167675229117399483

/-!
# A329890: a(1) = 1; for n > 1, a(n) = sigma((2^n)-1) - sigma((2^(n-1))-1), where sigma is A000203, the sum of divisors.

The programs for A329890, there is no canonical definition to state claims against.
-/

/-! ## A329890.P10114215912764232

`2^(n+1)-A329891(n+1)`
-/

namespace A329890.P10114215912764232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A329891 (n + 1)

end

end A329890.P10114215912764232

/-! ## A329890.P2651097075198099976

`Δ[A048578(n)-∑[A329891(n)]]`
-/

namespace A329890.P2651097075198099976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329890.P2651097075198099976

/-! ## A329890.P2388788708367460319

`Δ[A000079(n+1)-∑[A329891(n)]]`
-/

namespace A329890.P2388788708367460319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329890.P2388788708367460319

/-! ## A329890.P15158883792897762831

`Δ[A000918(n+1)-∑[A329891(n)]]`
-/

namespace A329890.P15158883792897762831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329890.P15158883792897762831

/-! ## A329890.P16299983828341490459

`A000225(n+1)+1-A329891(n+1)`
-/

namespace A329890.P16299983828341490459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (1 - A329891 (n + 1))

end

end A329890.P16299983828341490459

/-! ## A329890.P2027914760249301586

`A329891(n+1)+A329891(n+1)-A329892(n+1)`
-/

namespace A329890.P2027914760249301586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329891 (n + 1) + (A329891 (n + 1) - A329892 (n + 1))

end

end A329890.P2027914760249301586

/-! ## A329890.P10130293305765344448

`A000079(n+1)-A329637(A152947(n+2))`
-/

namespace A329890.P10130293305765344448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A329637 (A152947 (n + 2)).toNat

end

end A329890.P10130293305765344448

/-!
# A329891: a(0) = 0, a(1) = 1, for n > 1, a(n) = 2^n - (sigma((2^n)-1) - sigma((2^(n-1))-1)).

The programs for A329891, there is no canonical definition to state claims against.
-/

/-! ## A329891.P6090899933619811433

`A329644(2^n)`
-/

namespace A329891.P6090899933619811433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329644 (2 ^ n)

end

end A329891.P6090899933619811433

/-! ## A329891.P9589429925597389631

`A329637(A152947(n+1))%(3^n)`
-/

namespace A329891.P9589429925597389631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329637 (A152947 (n + 1)).toNat) (3 ^ n : ℤ)

end

end A329891.P9589429925597389631

/-! ## A329891.P18059226743706331729

`A329637(A152947(n+1))-A000007(n)`
-/

namespace A329891.P18059226743706331729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329637 (A152947 (n + 1)).toNat - A000007 n

end

end A329891.P18059226743706331729

/-! ## A329891.P7471313731730031683

`A329637(A152947(n+1))-A000079(n)%2`
-/

namespace A329891.P7471313731730031683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329637 (A152947 (n + 1)).toNat - Int.tmod (A000079 n) 2

end

end A329891.P7471313731730031683

/-! ## A329891.P290517180183900539

`A329637(A152947(n+1))-A000302(n)%2`
-/

namespace A329891.P290517180183900539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329637 (A152947 (n + 1)).toNat - Int.tmod (A000302 n) 2

end

end A329891.P290517180183900539

/-! ## A329891.P12237967384222140005

`A087451(n)%2*A329637(A152947(n+1))`
-/

namespace A329891.P12237967384222140005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087451 n) 2 * A329637 (A152947 (n + 1)).toNat

end

end A329891.P12237967384222140005

/-! ## A329891.P18314446307924129441

`A329637(A152947(n+1))+(n-1)*A008683((n+1)²)`
-/

namespace A329891.P18314446307924129441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329637 (A152947 (n + 1)).toNat + ((n : ℤ) - 1) * A008683 ((n + 1) ^ 2)

end

end A329891.P18314446307924129441

/-! ## A329891.P10519494978493429795

`A001222(A196941(n+2))*A329637(A152947(n+1))`
-/

namespace A329891.P10519494978493429795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A196941 (n + 2)).toNat * A329637 (A152947 (n + 1)).toNat

end

end A329891.P10519494978493429795

/-! ## A329891.P11747289736433289937

`A329637(A152947(n+1))-A028928(n²)`
-/

namespace A329891.P11747289736433289937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329637 (A152947 (n + 1)).toNat - A028928 (n ^ 2)

end

end A329891.P11747289736433289937

/-!
# A329892: a(0) = 0, a(1) = 1, for n > 1, a(n) = 2^(n+1) - 3*(sigma((2^n)-1) - sigma((2^(n-1))-1)).

The programs for A329892, there is no canonical definition to state claims against.
-/

/-! ## A329892.P811315143794878418

`A329637(A133263(n))-A000007(n)`
-/

namespace A329892.P811315143794878418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329637 (A133263 n).toNat - A000007 n

end

end A329892.P811315143794878418

/-! ## A329892.P12072992921344921299

`A329637(A133263(n))%A052961(n)`
-/

namespace A329892.P12072992921344921299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329637 (A133263 n).toNat) (A052961 n)

end

end A329892.P12072992921344921299

/-! ## A329892.P3175486585507188138

`and(-A003984(n), A329637(A133263(n)))`
-/

namespace A329892.P3175486585507188138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A003984 n) (A329637 (A133263 n).toNat)

end

end A329892.P3175486585507188138

/-! ## A329892.P14563014615757557050

`char[A262519(n)]*A329637(A133263(n))`
-/

namespace A329892.P14563014615757557050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262519 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A329637 (A133263 n).toNat

end

end A329892.P14563014615757557050

/-! ## A329892.P5344856243912589623

`A164292(A099609(n+1))*A329637(A133263(n))`
-/

namespace A329892.P5344856243912589623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (A099609 (n + 1)).toNat * A329637 (A133263 n).toNat

end

end A329892.P5344856243912589623

/-! ## A329892.P10633251836217443155

`A329637(A133263(n))-A303709(A275917(n))`
-/

namespace A329892.P10633251836217443155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329637 (A133263 n).toNat - A303709 (A275917 n).toNat

end

end A329892.P10633251836217443155

/-!
# A329893: a(n) = Product_{k=0..floor(log_2(n))} (1 + A004718(floor(n/(2^k)))), where A004718 is Per Nørgård's "infinity sequence".

The programs for A329893, the canonical program `A329893.P1727503878148110322` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329893 has offset 0).

The definition of A329893 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004718, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329893.P1727503878148110322

`(1+A004718(n))*a(floor(n/2))` with `a(0)=1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A329893

/-- `(1+A004718(n))*a(floor(n/2))` -/
def P1727503878148110322.Spec : Prop :=
  ∀ n, P1727503878148110322.a n = A329893 n

theorem P1727503878148110322.correct : P1727503878148110322.Spec := by
  intro n
  simp only [A329893]

end A329893

/-! ## A329893.P8786313916977033983

`(A004718(n)+1)*a(A004526(n))` with `a(0)=1`
-/

namespace A329893.P8786313916977033983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A004718 n + 1) * a (A004526 n).toNat

end

end A329893.P8786313916977033983

namespace A329893

/-- `(A004718(n)+1)*a(A004526(n))` -/
def P8786313916977033983.Spec : Prop :=
  ∀ n, P8786313916977033983.a n = A329893 n

end A329893

/-! ## A329893.P5979551061597640060

`(A004718(n)+1)*a(A008619(n)-1)` with `a(0)=1`
-/

namespace A329893.P5979551061597640060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A004718 n + 1) * a (A008619 n - 1).toNat

end

end A329893.P5979551061597640060

namespace A329893

/-- `(A004718(n)+1)*a(A008619(n)-1)` -/
def P5979551061597640060.Spec : Prop :=
  ∀ n, P5979551061597640060.a n = A329893 n

end A329893

/-! ## A329893.P9913043112050799655

`(A117966(A323909(n))+1)*a(floor(n/2))` with `a(0)=1`
-/

namespace A329893.P9913043112050799655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A117966 (A323909 n).toNat + 1) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A329893.P9913043112050799655

namespace A329893

/-- `(A117966(A323909(n))+1)*a(floor(n/2))` -/
def P9913043112050799655.Spec : Prop :=
  ∀ n, P9913043112050799655.a n = A329893 n

end A329893

/-! ## A329893.P11295943217233725917

`(A004718(n)+1)*a(∑[A059841(n)]-1)` with `a(0)=1, a(1)=2`
-/

namespace A329893.P11295943217233725917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A004718 n + 1) * a (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A329893.P11295943217233725917

namespace A329893

/-- `(A004718(n)+1)*a(∑[A059841(n)]-1)` -/
def P11295943217233725917.Spec : Prop :=
  ∀ n, P11295943217233725917.a n = A329893 n

end A329893

/-!
# A329896: Lexicographically earliest infinite sequence such that a(i) = a(j) => A219175(i) = A219175(j) and A322592(i) = A322592(j) for all i, j.

The programs for A329896, there is no canonical definition to state claims against.
-/

/-! ## A329896.P10442453656580946287

`A322592(A275962(n+1)+A077168(n))`
-/

namespace A329896.P10442453656580946287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322592 (A275962 (n + 1) + A077168 n).toNat

end

end A329896.P10442453656580946287

/-! ## A329896.P11489325093865013708

`A324197(n+1)-A000035(A000051(n))`
-/

namespace A329896.P11489325093865013708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324197 (n + 1) - A000035 (A000051 n).toNat

end

end A329896.P11489325093865013708

/-! ## A329896.P2539691800338809277

`A324197(n+1)-A005171(A004733(n))`
-/

namespace A329896.P2539691800338809277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324197 (n + 1) - A005171 (A004733 n).toNat

end

end A329896.P2539691800338809277

/-! ## A329896.P14534458828461620522

`A324197(n+1)-A055396(A000079(n))`
-/

namespace A329896.P14534458828461620522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324197 (n + 1) - A055396 (A000079 n).toNat

end

end A329896.P14534458828461620522

/-! ## A329896.P6079114406257034878

`A324197(n+1)-A257696(A000975(n))`
-/

namespace A329896.P6079114406257034878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324197 (n + 1) - A257696 (A000975 n).toNat

end

end A329896.P6079114406257034878

/-!
# A329897: Numbers k for which the 2-adic and 3-adic valuations of A025487(k) are equal, where A025487(k) is the k-th number which is a product of primorial numbers.

The programs for A329897, there is no canonical definition to state claims against.
-/

/-! ## A329897.P9833532365001385744

`eq[1, A330682(n+1)]+1`
-/

namespace A329897.P9833532365001385744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A329897.P9833532365001385744

/-! ## A329897.P746327537917805029

`record[A000027(n+1)*A330682(n+1)]`
-/

namespace A329897.P746327537917805029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A330682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329897.P746327537917805029

/-! ## A329897.P14765180197828567239

`filter[A059921(n+1), A330682(#)]`
-/

namespace A329897.P14765180197828567239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A330682 (f1 j).toNat = 1) n)

end

end A329897.P14765180197828567239

/-! ## A329897.P10388614211029589482

`filter[n+1, A330682(#)]`
-/

namespace A329897.P10388614211029589482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A330682 (f1 j) = 1) n)

end

end A329897.P10388614211029589482

/-! ## A329897.P13613157003141822219

`lt[0, char[A330683(n+1)]]`
-/

namespace A329897.P13613157003141822219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330683 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329897.P13613157003141822219

/-! ## A329897.P8397315831566223882

`eq[1, and(1, A181815(n+1))]+1`
-/

namespace A329897.P8397315831566223882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A181815 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A329897.P8397315831566223882

/-! ## A329897.P516174233348978702

`eq[A051282(n+1), A060826(n+1)]+1`
-/

namespace A329897.P516174233348978702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A329897.P516174233348978702

/-! ## A329897.P6080771201387527979

`A061395(p?[A000040(n+1)*A330682(n+1)])`
-/

namespace A329897.P6080771201387527979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A330682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A329897.P6080771201387527979

/-! ## A329897.P1905496661117122515

`A252464(p?[A000040(n+1)*A330682(n+1)])`
-/

namespace A329897.P1905496661117122515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A330682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A329897.P1905496661117122515

/-!
# A329898: a(n) is the position of 2*A025487(n) in A025487.

The programs for A329898, there is no canonical definition to state claims against.
-/

/-! ## A329898.P6933089512878716151

`eq[0, A330682(n+1)]+1`
-/

namespace A329898.P6933089512878716151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A329898.P6933089512878716151

/-! ## A329898.P2147277827944496382

`comp[A329897(n+1)-1]+1`
-/

namespace A329898.P2147277827944496382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329897 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329898.P2147277827944496382

/-! ## A329898.P2710669048829473861

`eq[0, and(1, A181815(n+1))]+1`
-/

namespace A329898.P2710669048829473861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A181815 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A329898.P2710669048829473861

/-! ## A329898.P15295162674379223963

`eq[2, gcd(2, A181815(n+2))]+2`
-/

namespace A329898.P15295162674379223963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A181815 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A329898.P15295162674379223963

/-! ## A329898.P9816867920085262646

`lt[n*char[A330683(n+1)], n]`
-/

namespace A329898.P9816867920085262646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330683 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A329898.P9816867920085262646

/-! ## A329898.P5630876496064878629

`A061395(p?[A000040(n+1)-A330682(n+1)])`
-/

namespace A329898.P5630876496064878629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A330682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A329898.P5630876496064878629

/-! ## A329898.P16598653032043484362

`A061395(p?[A330682(n+2)+A000040(n+2)])`
-/

namespace A329898.P16598653032043484362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330682 (n + 2) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A329898.P16598653032043484362

/-! ## A329898.P5358768603445859442

`A252464(p?[A000040(n+1)-A330682(n+1)])`
-/

namespace A329898.P5358768603445859442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A330682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A329898.P5358768603445859442

/-! ## A329898.P13533600352517133149

`A252464(p?[A330682(n+2)+A000040(n+2)])`
-/

namespace A329898.P13533600352517133149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330682 (n + 2) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A329898.P13533600352517133149

/-! ## A329898.P8823484404648364314

`A101296(2*A025487(n+1))`
-/

namespace A329898.P8823484404648364314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (2 * A025487 (n + 1)).toNat

end

end A329898.P8823484404648364314

/-! ## A329898.P5585936812400359359

`A101296(record[2*A329899(n+1)])`
-/

namespace A329898.P5585936812400359359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A329898.P5585936812400359359

/-! ## A329898.P10048454696114214105

`A101296(A025487(n+1)+A025487(n+1))`
-/

namespace A329898.P10048454696114214105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A025487 (n + 1) + A025487 (n + 1)).toNat

end

end A329898.P10048454696114214105

/-! ## A329898.P5389533174297715180

`A085089(2*A025487(n+1))`
-/

namespace A329898.P5389533174297715180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (2 * A025487 (n + 1)).toNat

end

end A329898.P5389533174297715180

/-! ## A329898.P1081903597547557045

`A330752(2*A025487(n+1))`
-/

namespace A329898.P1081903597547557045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330752 (2 * A025487 (n + 1)).toNat

end

end A329898.P1081903597547557045

/-! ## A329898.P11212588784350205886

`A085089(A025487(n+1)+A025487(n+1))`
-/

namespace A329898.P11212588784350205886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A025487 (n + 1) + A025487 (n + 1)).toNat

end

end A329898.P11212588784350205886

/-! ## A329898.P7452172545685155172

`A330752(A025487(n+1)+A025487(n+1))`
-/

namespace A329898.P7452172545685155172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330752 (A025487 (n + 1) + A025487 (n + 1)).toNat

end

end A329898.P7452172545685155172

/-!
# A329899: If A181815(n) is odd, a(n) = A064989(A025487(n)), otherwise a(n) = A025487(n)/2.

The programs for A329899, there is no canonical definition to state claims against.
-/

/-! ## A329899.P13296832610919102792

`A025487(A329904(n+1))`
-/

namespace A329899.P13296832610919102792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A329904 (n + 1)).toNat

end

end A329899.P13296832610919102792

/-! ## A329899.P17231064832597959092

`A333964(A329904(n+1))%A282764(A080513(n))`
-/

namespace A329899.P17231064832597959092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333964 (A329904 (n + 1)).toNat) (A282764 (A080513 n).toNat)

end

end A329899.P17231064832597959092

/-! ## A329899.P9119366264855676773

`A333964(A329904(n+1))+A000007(A119023(n))`
-/

namespace A329899.P9119366264855676773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333964 (A329904 (n + 1)).toNat + A000007 (A119023 n).toNat

end

end A329899.P9119366264855676773

/-! ## A329899.P17577909580958158749

`A333964(A329904(n+1))+A000122(A190620(n+4))`
-/

namespace A329899.P17577909580958158749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333964 (A329904 (n + 1)).toNat + A000122 (A190620 (n + 4)).toNat

end

end A329899.P17577909580958158749

/-! ## A329899.P18148391081106781837

`A000035(A005384(3*(n+1)))*A333964(A329904(n+1))`
-/

namespace A329899.P18148391081106781837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A005384 (3 * (n + 1))).toNat * A333964 (A329904 (n + 1)).toNat

end

end A329899.P18148391081106781837

/-! ## A329899.P15594928681438943776

`A000120(A059867(n+1))*A333964(A329904(n+1))`
-/

namespace A329899.P15594928681438943776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A059867 (n + 1)).toNat * A333964 (A329904 (n + 1)).toNat

end

end A329899.P15594928681438943776

/-! ## A329899.P12788530347746105415

`A001222(A236255(n+1))*A333964(A329904(n+1))`
-/

namespace A329899.P12788530347746105415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A236255 (n + 1)).toNat * A333964 (A329904 (n + 1)).toNat

end

end A329899.P12788530347746105415

/-! ## A329899.P9956470556856388391

`A333964(A329904(n+1))^A000034(A140283(n+1))`
-/

namespace A329899.P9956470556856388391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333964 (A329904 (n + 1)).toNat : ℚ) ^ (A000034 (A140283 (n + 1)).toNat : ℤ)

end

end A329899.P9956470556856388391

