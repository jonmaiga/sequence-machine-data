import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
# A197900: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,4,2,0,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A197900, there is no canonical definition to state claims against.
-/

/-! ## A197900.P9202423308556473980

`A123882(∑[A349505(n)])`
-/

namespace A197900.P9202423308556473980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123882 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A197900.P9202423308556473980

/-!
# A197901: Number of n X n X n 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,0,2,1,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A197901, there is no canonical definition to state claims against.
-/

/-! ## A197901.P13614298786441749057

`A286107(A018252(∏[2*n+1])+1)`
-/

namespace A197901.P13614298786441749057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286107 (A018252 (∏ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A197901.P13614298786441749057

/-!
# A197902: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,0,1,4,1,0,1 for x=0,1,2,3,4,5,6.

The programs for A197902, there is no canonical definition to state claims against.
-/

/-! ## A197902.P7563853690757608888

`A174631(A112393(n+2))`
-/

namespace A197902.P7563853690757608888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174631 (A112393 (n + 2)).toNat

end

end A197902.P7563853690757608888

/-!
# A197903: a(n) = ceiling((n+1/n)^4).

The programs for A197903, the canonical program `A197903.P13864165144726449901` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197903 has offset 1).

The definition of A197903 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1+1/(n+1))^4)` (program `A197903.P13864165144726449901`, by `A197903.P13864165144726449901.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197903.P13864165144726449901

`ceil((n+1+1/(n+1))^4)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197903

/-- `ceil((n+1+1/(n+1))^4)` -/
def P13864165144726449901.Spec : Prop :=
  ∀ n, P13864165144726449901.a n = A197903 (n + 1)

theorem P13864165144726449901.correct : P13864165144726449901.Spec := by
  intro n
  simp only [A197903, Nat.add_sub_cancel]

end A197903

/-! ## A197903.P16728375226875123128

`A197603(n+1)+ceil(tanh(sqrt(n)))`
-/

namespace A197903.P16728375226875123128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197603 (n + 1) + ⌈Real.tanh (Real.sqrt (n : ℝ))⌉

end

end A197903.P16728375226875123128

namespace A197903

/-- `A197603(n+1)+ceil(tanh(sqrt(n)))` -/
def P16728375226875123128.Spec : Prop :=
  ∀ n, P16728375226875123128.a n = A197903 (n + 1)

end A197903

/-! ## A197903.P11468664128810363699

`A197603(n+1)+A057427(n)`
-/

namespace A197903.P11468664128810363699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197603 (n + 1) + A057427 n

end

end A197903.P11468664128810363699

namespace A197903

/-- `A197603(n+1)+A057427(n)` -/
def P11468664128810363699.Spec : Prop :=
  ∀ n, P11468664128810363699.a n = A197903 (n + 1)

end A197903

/-! ## A197903.P9322156325998349975

`A197603(n+1)-A057428(n)`
-/

namespace A197903.P9322156325998349975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197603 (n + 1) - A057428 n

end

end A197903.P9322156325998349975

namespace A197903

/-- `A197603(n+1)-A057428(n)` -/
def P9322156325998349975.Spec : Prop :=
  ∀ n, P9322156325998349975.a n = A197903 (n + 1)

end A197903

/-! ## A197903.P15591378763093679863

`A197603(n+1)+and(1, A031368(n+1))`
-/

namespace A197903.P15591378763093679863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197603 (n + 1) + Int.land 1 (A031368 (n + 1))

end

end A197903.P15591378763093679863

namespace A197903

/-- `A197603(n+1)+and(1, A031368(n+1))` -/
def P15591378763093679863.Spec : Prop :=
  ∀ n, P15591378763093679863.a n = A197903 (n + 1)

end A197903

/-! ## A197903.P16127689719930167346

`A197603(n+1)+A197904(n+1)-A197604(n+1)`
-/

namespace A197903.P16127689719930167346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197603 (n + 1) + (A197904 (n + 1) - A197604 (n + 1))

end

end A197903.P16127689719930167346

namespace A197903

/-- `A197603(n+1)+A197904(n+1)-A197604(n+1)` -/
def P16127689719930167346.Spec : Prop :=
  ∀ n, P16127689719930167346.a n = A197903 (n + 1)

end A197903

/-! ## A197903.P909427423113244399

`A197603(n+1)+A001222(A008578(n+1))`
-/

namespace A197903.P909427423113244399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197603 (n + 1) + A001222 (A008578 (n + 1)).toNat

end

end A197903.P909427423113244399

namespace A197903

/-- `A197603(n+1)+A001222(A008578(n+1))` -/
def P909427423113244399.Spec : Prop :=
  ∀ n, P909427423113244399.a n = A197903 (n + 1)

end A197903

/-! ## A197903.P3437083834389163721

`A197603(n+1)+A073424(A000217(n))`
-/

namespace A197903.P3437083834389163721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197603 (n + 1) + A073424 (A000217 n).toNat

end

end A197903.P3437083834389163721

namespace A197903

/-- `A197603(n+1)+A073424(A000217(n))` -/
def P3437083834389163721.Spec : Prop :=
  ∀ n, P3437083834389163721.a n = A197903 (n + 1)

end A197903

/-! ## A197903.P15164597129939252991

`A014058(n+1)+A197603(n+1)-A014052(n+1)`
-/

namespace A197903.P15164597129939252991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014058 (n + 1) + (A197603 (n + 1) - A014052 (n + 1))

end

end A197903.P15164597129939252991

namespace A197903

/-- `A014058(n+1)+A197603(n+1)-A014052(n+1)` -/
def P15164597129939252991.Spec : Prop :=
  ∀ n, P15164597129939252991.a n = A197903 (n + 1)

end A197903

/-!
# A197904: a(n) = ceiling((n+1/n)^5).

The programs for A197904, the canonical program `A197904.P13721199395232625828` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197904 has offset 1).

The definition of A197904 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1+1/(n+1))^5)` (program `A197904.P13721199395232625828`, by `A197904.P13721199395232625828.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197904.P13721199395232625828

`ceil((n+1+1/(n+1))^5)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197904

/-- `ceil((n+1+1/(n+1))^5)` -/
def P13721199395232625828.Spec : Prop :=
  ∀ n, P13721199395232625828.a n = A197904 (n + 1)

theorem P13721199395232625828.correct : P13721199395232625828.Spec := by
  intro n
  simp only [A197904, Nat.add_sub_cancel]

end A197904

/-! ## A197904.P10096548730307571797

`A197604(n+1)+ceil(tanh(sqrt(n)))`
-/

namespace A197904.P10096548730307571797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197604 (n + 1) + ⌈Real.tanh (Real.sqrt (n : ℝ))⌉

end

end A197904.P10096548730307571797

namespace A197904

/-- `A197604(n+1)+ceil(tanh(sqrt(n)))` -/
def P10096548730307571797.Spec : Prop :=
  ∀ n, P10096548730307571797.a n = A197904 (n + 1)

end A197904

/-! ## A197904.P17762261526529313117

`A197604(n+1)+A057427(n)`
-/

namespace A197904.P17762261526529313117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197604 (n + 1) + A057427 n

end

end A197904.P17762261526529313117

namespace A197904

/-- `A197604(n+1)+A057427(n)` -/
def P17762261526529313117.Spec : Prop :=
  ∀ n, P17762261526529313117.a n = A197904 (n + 1)

end A197904

/-! ## A197904.P9760306192354128489

`A197604(n+1)-A057428(n)`
-/

namespace A197904.P9760306192354128489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197604 (n + 1) - A057428 n

end

end A197904.P9760306192354128489

namespace A197904

/-- `A197604(n+1)-A057428(n)` -/
def P9760306192354128489.Spec : Prop :=
  ∀ n, P9760306192354128489.a n = A197904 (n + 1)

end A197904

/-! ## A197904.P18334351019362484188

`A197604(n+1)+1-A000007(n)`
-/

namespace A197904.P18334351019362484188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197604 (n + 1) + (1 - A000007 n)

end

end A197904.P18334351019362484188

namespace A197904

/-- `A197604(n+1)+1-A000007(n)` -/
def P18334351019362484188.Spec : Prop :=
  ∀ n, P18334351019362484188.a n = A197904 (n + 1)

end A197904

/-! ## A197904.P8499552495669358973

`A197604(n+1)+A070750(n+1)²`
-/

namespace A197904.P8499552495669358973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197604 (n + 1) + A070750 (n + 1) ^ 2

end

end A197904.P8499552495669358973

namespace A197904

/-- `A197604(n+1)+A070750(n+1)²` -/
def P8499552495669358973.Spec : Prop :=
  ∀ n, P8499552495669358973.a n = A197904 (n + 1)

end A197904

/-! ## A197904.P10567425958961144686

`A197604(n+1)+char[A038722(n+1)]`
-/

namespace A197904.P10567425958961144686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197604 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197904.P10567425958961144686

namespace A197904

/-- `A197604(n+1)+char[A038722(n+1)]` -/
def P10567425958961144686.Spec : Prop :=
  ∀ n, P10567425958961144686.a n = A197904 (n + 1)

end A197904

/-! ## A197904.P1114482065177051559

`A197604(n+1)+A046675(floor(1/(n+1)))`
-/

namespace A197904.P1114482065177051559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197604 (n + 1) + A046675 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A197904.P1114482065177051559

namespace A197904

/-- `A197604(n+1)+A046675(floor(1/(n+1)))` -/
def P1114482065177051559.Spec : Prop :=
  ∀ n, P1114482065177051559.a n = A197904 (n + 1)

end A197904

/-! ## A197904.P16910417360290035519

`A197604(n+1)+A001221(A062383(n))`
-/

namespace A197904.P16910417360290035519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197604 (n + 1) + A001221 (A062383 n).toNat

end

end A197904.P16910417360290035519

namespace A197904

/-- `A197604(n+1)+A001221(A062383(n))` -/
def P16910417360290035519.Spec : Prop :=
  ∀ n, P16910417360290035519.a n = A197904 (n + 1)

end A197904

/-! ## A197904.P4455603321544079807

`A197604(n+1)+A003415(A020639(n+1))`
-/

namespace A197904.P4455603321544079807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197604 (n + 1) + A003415 (A020639 (n + 1)).toNat

end

end A197904.P4455603321544079807

namespace A197904

/-- `A197604(n+1)+A003415(A020639(n+1))` -/
def P4455603321544079807.Spec : Prop :=
  ∀ n, P4455603321544079807.a n = A197904 (n + 1)

end A197904

/-! ## A197904.P15566534684734184771

`A197604(n+1)+A001222(A027746(n+1))`
-/

namespace A197904.P15566534684734184771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197604 (n + 1) + A001222 (A027746 (n + 1)).toNat

end

end A197904.P15566534684734184771

namespace A197904

/-- `A197604(n+1)+A001222(A027746(n+1))` -/
def P15566534684734184771.Spec : Prop :=
  ∀ n, P15566534684734184771.a n = A197904 (n + 1)

end A197904

/-! ## A197904.P11429761960485481106

`A197604(n+1)+A000007(A000007(n)*A197604(n+1))`
-/

namespace A197904.P11429761960485481106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197604 (n + 1) + A000007 (A000007 n * A197604 (n + 1)).toNat

end

end A197904.P11429761960485481106

namespace A197904

/-- `A197604(n+1)+A000007(A000007(n)*A197604(n+1))` -/
def P11429761960485481106.Spec : Prop :=
  ∀ n, P11429761960485481106.a n = A197904 (n + 1)

end A197904

/-! ## A197904.P5242356380856894598

`A197604(n+1)+A000035(A004280(n+2))`
-/

namespace A197904.P5242356380856894598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197604 (n + 1) + A000035 (A004280 (n + 2)).toNat

end

end A197904.P5242356380856894598

namespace A197904

/-- `A197604(n+1)+A000035(A004280(n+2))` -/
def P5242356380856894598.Spec : Prop :=
  ∀ n, P5242356380856894598.a n = A197904 (n + 1)

end A197904

/-! ## A197904.P15969967068337860128

`A197604(n+1)+A001222(record[A166333(n)])`
-/

namespace A197904.P15969967068337860128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197604 (n + 1) + A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A197904.P15969967068337860128

namespace A197904

/-- `A197604(n+1)+A001222(record[A166333(n)])` -/
def P15969967068337860128.Spec : Prop :=
  ∀ n, P15969967068337860128.a n = A197904 (n + 1)

end A197904

/-! ## A197904.P15830416055122470957

`A197604(n+1)+A008683(A077065(n+1))`
-/

namespace A197904.P15830416055122470957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197604 (n + 1) + A008683 (A077065 (n + 1)).toNat

end

end A197904.P15830416055122470957

namespace A197904

/-- `A197604(n+1)+A008683(A077065(n+1))` -/
def P15830416055122470957.Spec : Prop :=
  ∀ n, P15830416055122470957.a n = A197904 (n + 1)

end A197904

/-! ## A197904.P10122195751144335409

`A197604(n+1)+A073424(A000217(n))`
-/

namespace A197904.P10122195751144335409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197604 (n + 1) + A073424 (A000217 n).toNat

end

end A197904.P10122195751144335409

namespace A197904

/-- `A197604(n+1)+A073424(A000217(n))` -/
def P10122195751144335409.Spec : Prop :=
  ∀ n, P10122195751144335409.a n = A197904 (n + 1)

end A197904

/-!
# A197905: Ceiling((n+1/n)^6).

The programs for A197905, the canonical program `A197905.P8111524794849746723` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197905 has offset 1).

The definition of A197905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197905.P8111524794849746723

`ceil(((ratio[n+1]+n)^3)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197905

/-- `ceil(((ratio[n+1]+n)^3)²)` -/
def P8111524794849746723.Spec : Prop :=
  ∀ n, P8111524794849746723.a n = A197905 (n + 1)

theorem P8111524794849746723.correct : P8111524794849746723.Spec := by
  intro n
  simp only [A197905, Nat.add_sub_cancel]

end A197905

/-! ## A197905.P15705316218344360658

`A197605(n+1)+A057427(n)`
-/

namespace A197905.P15705316218344360658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197605 (n + 1) + A057427 n

end

end A197905.P15705316218344360658

namespace A197905

/-- `A197605(n+1)+A057427(n)` -/
def P15705316218344360658.Spec : Prop :=
  ∀ n, P15705316218344360658.a n = A197905 (n + 1)

end A197905

/-! ## A197905.P4324821380596232493

`A197605(n+1)-A057428(n)`
-/

namespace A197905.P4324821380596232493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197605 (n + 1) - A057428 n

end

end A197905.P4324821380596232493

namespace A197905

/-- `A197605(n+1)-A057428(n)` -/
def P4324821380596232493.Spec : Prop :=
  ∀ n, P4324821380596232493.a n = A197905 (n + 1)

end A197905

/-! ## A197905.P7797785445001125239

`A197605(n+1)+A197904(n+1)-A197604(n+1)`
-/

namespace A197905.P7797785445001125239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197605 (n + 1) + (A197904 (n + 1) - A197604 (n + 1))

end

end A197905.P7797785445001125239

namespace A197905

/-- `A197605(n+1)+A197904(n+1)-A197604(n+1)` -/
def P7797785445001125239.Spec : Prop :=
  ∀ n, P7797785445001125239.a n = A197905 (n + 1)

end A197905

/-! ## A197905.P17248120593765058584

`A197605(n+1)+ceil(n/A308286(n))`
-/

namespace A197905.P17248120593765058584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197605 (n + 1) + ⌈(n : ℚ) / (A308286 n : ℚ)⌉

end

end A197905.P17248120593765058584

namespace A197905

/-- `A197605(n+1)+ceil(n/A308286(n))` -/
def P17248120593765058584.Spec : Prop :=
  ∀ n, P17248120593765058584.a n = A197905 (n + 1)

end A197905

/-! ## A197905.P7883704576775806780

`A197605(n+1)+p?[A119257(n+1)]%2`
-/

namespace A197905.P7883704576775806780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197605 (n + 1) + Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 2

end

end A197905.P7883704576775806780

namespace A197905

/-- `A197605(n+1)+p?[A119257(n+1)]%2` -/
def P7883704576775806780.Spec : Prop :=
  ∀ n, P7883704576775806780.a n = A197905 (n + 1)

end A197905

/-! ## A197905.P14121838225141016616

`A197605(n+1)+ceil(n/A080872(n))`
-/

namespace A197905.P14121838225141016616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197605 (n + 1) + ⌈(n : ℚ) / (A080872 n : ℚ)⌉

end

end A197905.P14121838225141016616

namespace A197905

/-- `A197605(n+1)+ceil(n/A080872(n))` -/
def P14121838225141016616.Spec : Prop :=
  ∀ n, P14121838225141016616.a n = A197905 (n + 1)

end A197905

/-!
# A197906: a(n) = ceiling((n+1/n)^7).

The programs for A197906, the canonical program `A197906.P9154313895046588899` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197906 has offset 1).

The definition of A197906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197906.P9154313895046588899

`ceil((ratio[n+1]+n)^7)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197906

/-- `ceil((ratio[n+1]+n)^7)` -/
def P9154313895046588899.Spec : Prop :=
  ∀ n, P9154313895046588899.a n = A197906 (n + 1)

theorem P9154313895046588899.correct : P9154313895046588899.Spec := by
  intro n
  simp only [A197906, Nat.add_sub_cancel]

end A197906

/-! ## A197906.P16707400083784066612

`A197708(n+1)+A057427(n)`
-/

namespace A197906.P16707400083784066612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197708 (n + 1) + A057427 n

end

end A197906.P16707400083784066612

namespace A197906

/-- `A197708(n+1)+A057427(n)` -/
def P16707400083784066612.Spec : Prop :=
  ∀ n, P16707400083784066612.a n = A197906 (n + 1)

end A197906

/-! ## A197906.P11155101615192704668

`A197708(n+1)-A057428(n)`
-/

namespace A197906.P11155101615192704668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197708 (n + 1) - A057428 n

end

end A197906.P11155101615192704668

namespace A197906

/-- `A197708(n+1)-A057428(n)` -/
def P11155101615192704668.Spec : Prop :=
  ∀ n, P11155101615192704668.a n = A197906 (n + 1)

end A197906

/-! ## A197906.P8794370852884382511

`A197708(n+1)+A142585(∏{p}[A062383(n), #])`
-/

namespace A197906.P8794370852884382511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197708 (n + 1) + A142585 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A197906.P8794370852884382511

namespace A197906

/-- `A197708(n+1)+A142585(∏{p}[A062383(n), #])` -/
def P8794370852884382511.Spec : Prop :=
  ∀ n, P8794370852884382511.a n = A197906 (n + 1)

end A197906

/-! ## A197906.P2235867745843989352

`A197708(n+1)+A197904(n+1)-A197604(n+1)`
-/

namespace A197906.P2235867745843989352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197708 (n + 1) + (A197904 (n + 1) - A197604 (n + 1))

end

end A197906.P2235867745843989352

namespace A197906

/-- `A197708(n+1)+A197904(n+1)-A197604(n+1)` -/
def P2235867745843989352.Spec : Prop :=
  ∀ n, P2235867745843989352.a n = A197906 (n + 1)

end A197906

/-!
# A197907: Ceiling((n+1/n)^8).

The programs for A197907, the canonical program `A197907.P9488707597142984717` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197907 has offset 1).

The definition of A197907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197907.P9488707597142984717

`ceil((ratio[n+1]+n)^8)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197907

/-- `ceil((ratio[n+1]+n)^8)` -/
def P9488707597142984717.Spec : Prop :=
  ∀ n, P9488707597142984717.a n = A197907 (n + 1)

theorem P9488707597142984717.correct : P9488707597142984717.Spec := by
  intro n
  simp only [A197907, Nat.add_sub_cancel]

end A197907

/-! ## A197907.P14654303654892666830

`A197709(n+1)+A057427(n)`
-/

namespace A197907.P14654303654892666830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197709 (n + 1) + A057427 n

end

end A197907.P14654303654892666830

namespace A197907

/-- `A197709(n+1)+A057427(n)` -/
def P14654303654892666830.Spec : Prop :=
  ∀ n, P14654303654892666830.a n = A197907 (n + 1)

end A197907

/-! ## A197907.P3087922229633089852

`A197709(n+1)-A057428(n)`
-/

namespace A197907.P3087922229633089852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197709 (n + 1) - A057428 n

end

end A197907.P3087922229633089852

namespace A197907

/-- `A197709(n+1)-A057428(n)` -/
def P3087922229633089852.Spec : Prop :=
  ∀ n, P3087922229633089852.a n = A197907 (n + 1)

end A197907

/-! ## A197907.P18116561615978450644

`A197709(n+1)+1-A000007(n)`
-/

namespace A197907.P18116561615978450644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197709 (n + 1) + (1 - A000007 n)

end

end A197907.P18116561615978450644

namespace A197907

/-- `A197709(n+1)+1-A000007(n)` -/
def P18116561615978450644.Spec : Prop :=
  ∀ n, P18116561615978450644.a n = A197907 (n + 1)

end A197907

/-! ## A197907.P15561132675423625073

`A197709(n+1)+A019426(2*n)`
-/

namespace A197907.P15561132675423625073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197709 (n + 1) + A019426 (2 * n)

end

end A197907.P15561132675423625073

namespace A197907

/-- `A197709(n+1)+A019426(2*n)` -/
def P15561132675423625073.Spec : Prop :=
  ∀ n, P15561132675423625073.a n = A197907 (n + 1)

end A197907

/-! ## A197907.P11371574164363290678

`A197709(n+1)+A197904(n+1)-A197604(n+1)`
-/

namespace A197907.P11371574164363290678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197709 (n + 1) + (A197904 (n + 1) - A197604 (n + 1))

end

end A197907.P11371574164363290678

namespace A197907

/-- `A197709(n+1)+A197904(n+1)-A197604(n+1)` -/
def P11371574164363290678.Spec : Prop :=
  ∀ n, P11371574164363290678.a n = A197907 (n + 1)

end A197907

/-! ## A197907.P15861210941438508538

`A197709(n+1)+A000007(A000007(n)*A197709(n+1))`
-/

namespace A197907.P15861210941438508538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197709 (n + 1) + A000007 (A000007 n * A197709 (n + 1)).toNat

end

end A197907.P15861210941438508538

namespace A197907

/-- `A197709(n+1)+A000007(A000007(n)*A197709(n+1))` -/
def P15861210941438508538.Spec : Prop :=
  ∀ n, P15861210941438508538.a n = A197907 (n + 1)

end A197907

/-! ## A197907.P3400868740870997142

`A014058(n+1)+A197709(n+1)-A014052(n+1)`
-/

namespace A197907.P3400868740870997142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014058 (n + 1) + (A197709 (n + 1) - A014052 (n + 1))

end

end A197907.P3400868740870997142

namespace A197907

/-- `A014058(n+1)+A197709(n+1)-A014052(n+1)` -/
def P3400868740870997142.Spec : Prop :=
  ∀ n, P3400868740870997142.a n = A197907 (n + 1)

end A197907

/-!
# A197908: Ceiling((n+1/n)^9).

The programs for A197908, the canonical program `A197908.P15021370725904098420` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197908 has offset 1).

The definition of A197908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197908.P15021370725904098420

`ceil((ratio[n+1]+n)^9)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197908

/-- `ceil((ratio[n+1]+n)^9)` -/
def P15021370725904098420.Spec : Prop :=
  ∀ n, P15021370725904098420.a n = A197908 (n + 1)

theorem P15021370725904098420.correct : P15021370725904098420.Spec := by
  intro n
  simp only [A197908, Nat.add_sub_cancel]

end A197908

/-! ## A197908.P13856839577889911448

`A197710(n+1)+A057427(n)`
-/

namespace A197908.P13856839577889911448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197710 (n + 1) + A057427 n

end

end A197908.P13856839577889911448

namespace A197908

/-- `A197710(n+1)+A057427(n)` -/
def P13856839577889911448.Spec : Prop :=
  ∀ n, P13856839577889911448.a n = A197908 (n + 1)

end A197908

/-! ## A197908.P14210773119669972765

`A197710(n+1)-A057428(n)`
-/

namespace A197908.P14210773119669972765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197710 (n + 1) - A057428 n

end

end A197908.P14210773119669972765

namespace A197908

/-- `A197710(n+1)-A057428(n)` -/
def P14210773119669972765.Spec : Prop :=
  ∀ n, P14210773119669972765.a n = A197908 (n + 1)

end A197908

/-! ## A197908.P11123907356941384903

`A197710(n+1)+A197904(n+1)-A197604(n+1)`
-/

namespace A197908.P11123907356941384903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197710 (n + 1) + (A197904 (n + 1) - A197604 (n + 1))

end

end A197908.P11123907356941384903

namespace A197908

/-- `A197710(n+1)+A197904(n+1)-A197604(n+1)` -/
def P11123907356941384903.Spec : Prop :=
  ∀ n, P11123907356941384903.a n = A197908 (n + 1)

end A197908

/-! ## A197908.P11274110071556815620

`A197710(n+1)+and(1, Δ[A010000(n)])`
-/

namespace A197908.P11274110071556815620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197710 (n + 1) + Int.land 1 (f1 (n + 1) - f1 n)

end

end A197908.P11274110071556815620

namespace A197908

/-- `A197710(n+1)+and(1, Δ[A010000(n)])` -/
def P11274110071556815620.Spec : Prop :=
  ∀ n, P11274110071556815620.a n = A197908 (n + 1)

end A197908

/-! ## A197908.P15097291698094860916

`A014058(n+1)+A197710(n+1)-A014052(n+1)`
-/

namespace A197908.P15097291698094860916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014058 (n + 1) + (A197710 (n + 1) - A014052 (n + 1))

end

end A197908.P15097291698094860916

namespace A197908

/-- `A014058(n+1)+A197710(n+1)-A014052(n+1)` -/
def P15097291698094860916.Spec : Prop :=
  ∀ n, P15097291698094860916.a n = A197908 (n + 1)

end A197908

/-!
# A197909: Ceiling((n+1/n)^10).

The programs for A197909, the canonical program `A197909.P14068262830089138740` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197909 has offset 1).

The definition of A197909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197909.P14068262830089138740

`ceil((1/(n+1)+n+1)^10)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197909

/-- `ceil((1/(n+1)+n+1)^10)` -/
def P14068262830089138740.Spec : Prop :=
  ∀ n, P14068262830089138740.a n = A197909 (n + 1)

theorem P14068262830089138740.correct : P14068262830089138740.Spec := by
  intro n
  simp only [A197909, Nat.add_sub_cancel]

end A197909

/-! ## A197909.P10544307627072815373

`A197711(n+1)+A057427(n)`
-/

namespace A197909.P10544307627072815373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197711 (n + 1) + A057427 n

end

end A197909.P10544307627072815373

namespace A197909

/-- `A197711(n+1)+A057427(n)` -/
def P10544307627072815373.Spec : Prop :=
  ∀ n, P10544307627072815373.a n = A197909 (n + 1)

end A197909

/-! ## A197909.P9980355056773817693

`A197711(n+1)-A057428(n)`
-/

namespace A197909.P9980355056773817693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197711 (n + 1) - A057428 n

end

end A197909.P9980355056773817693

namespace A197909

/-- `A197711(n+1)-A057428(n)` -/
def P9980355056773817693.Spec : Prop :=
  ∀ n, P9980355056773817693.a n = A197909 (n + 1)

end A197909

/-! ## A197909.P3864879424968271510

`A197711(n+1)+A078685(n+1)%2`
-/

namespace A197909.P3864879424968271510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197711 (n + 1) + Int.tmod (A078685 (n + 1)) 2

end

end A197909.P3864879424968271510

namespace A197909

/-- `A197711(n+1)+A078685(n+1)%2` -/
def P3864879424968271510.Spec : Prop :=
  ∀ n, P3864879424968271510.a n = A197909 (n + 1)

end A197909

/-! ## A197909.P15011756236295130020

`A197711(n+1)+ceil(n/A197904(n+1))`
-/

namespace A197909.P15011756236295130020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197711 (n + 1) + ⌈(n : ℚ) / (A197904 (n + 1) : ℚ)⌉

end

end A197909.P15011756236295130020

namespace A197909

/-- `A197711(n+1)+ceil(n/A197904(n+1))` -/
def P15011756236295130020.Spec : Prop :=
  ∀ n, P15011756236295130020.a n = A197909 (n + 1)

end A197909

/-! ## A197909.P3683815139799553055

`A197711(n+1)+A197904(n+1)-A197604(n+1)`
-/

namespace A197909.P3683815139799553055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197711 (n + 1) + (A197904 (n + 1) - A197604 (n + 1))

end

end A197909.P3683815139799553055

namespace A197909

/-- `A197711(n+1)+A197904(n+1)-A197604(n+1)` -/
def P3683815139799553055.Spec : Prop :=
  ∀ n, P3683815139799553055.a n = A197909 (n + 1)

end A197909

/-! ## A197909.P14652576591237942798

`A197711(n+1)+A297382(∑[n+1])%2`
-/

namespace A197909.P14652576591237942798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197711 (n + 1) + Int.tmod (A297382 (∑ j ∈ Finset.range (n + 1), f1 j)) 2

end

end A197909.P14652576591237942798

namespace A197909

/-- `A197711(n+1)+A297382(∑[n+1])%2` -/
def P14652576591237942798.Spec : Prop :=
  ∀ n, P14652576591237942798.a n = A197909 (n + 1)

end A197909

/-! ## A197909.P9404663599201656865

`A197711(n+1)+1-A008966((n+1)²)`
-/

namespace A197909.P9404663599201656865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197711 (n + 1) + (1 - A008966 ((n + 1) ^ 2))

end

end A197909.P9404663599201656865

namespace A197909

/-- `A197711(n+1)+1-A008966((n+1)²)` -/
def P9404663599201656865.Spec : Prop :=
  ∀ n, P9404663599201656865.a n = A197909 (n + 1)

end A197909

/-! ## A197909.P13873939132675269441

`A197711(n+1)+A158740(∑[n])%(n+1)`
-/

namespace A197909.P13873939132675269441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197711 (n + 1) + Int.tmod (A158740 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A197909.P13873939132675269441

namespace A197909

/-- `A197711(n+1)+A158740(∑[n])%(n+1)` -/
def P13873939132675269441.Spec : Prop :=
  ∀ n, P13873939132675269441.a n = A197909 (n + 1)

end A197909

/-! ## A197909.P10904061753436195445

`A014058(n+1)+A197711(n+1)-A014052(n+1)`
-/

namespace A197909.P10904061753436195445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014058 (n + 1) + (A197711 (n + 1) - A014052 (n + 1))

end

end A197909.P10904061753436195445

namespace A197909

/-- `A014058(n+1)+A197711(n+1)-A014052(n+1)` -/
def P10904061753436195445.Spec : Prop :=
  ∀ n, P10904061753436195445.a n = A197909 (n + 1)

end A197909

/-!
# A197910: Ceiling((n+1/2)^n).

The programs for A197910, the canonical program `A197910.P6964274024963126933` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197910 has offset 1).

The definition of A197910 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1+1/2)^(n+1))` (program `A197910.P6964274024963126933`, by `A197910.P6964274024963126933.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197910.P6964274024963126933

`ceil((n+1+1/2)^(n+1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197910

/-- `ceil((n+1+1/2)^(n+1))` -/
def P6964274024963126933.Spec : Prop :=
  ∀ n, P6964274024963126933.a n = A197910 (n + 1)

theorem P6964274024963126933.correct : P6964274024963126933.Spec := by
  intro n
  simp only [A197910, Nat.add_sub_cancel]

end A197910

/-! ## A197910.P4098582857349940975

`floor((3/2+n)^(n+1))+C(2, n+2)!`
-/

namespace A197910.P4098582857349940975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 : ℚ) / 2 + (n : ℚ)) ^ (n + 1)⌋ + (Nat.factorial (Nat.choose 2 (n + 2)) : ℤ)

end

end A197910.P4098582857349940975

namespace A197910

/-- `floor((3/2+n)^(n+1))+C(2, n+2)!` -/
def P4098582857349940975.Spec : Prop :=
  ∀ n, P4098582857349940975.a n = A197910 (n + 1)

end A197910

/-! ## A197910.P7496381002436531033

`floor((3/2+n)^(n+1))+floor(atan(n+1))!`
-/

namespace A197910.P7496381002436531033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 : ℚ) / 2 + (n : ℚ)) ^ (n + 1)⌋ + (Nat.factorial ⌊Real.arctan (n + 1 : ℝ)⌋.toNat : ℤ)

end

end A197910.P7496381002436531033

namespace A197910

/-- `floor((3/2+n)^(n+1))+floor(atan(n+1))!` -/
def P7496381002436531033.Spec : Prop :=
  ∀ n, P7496381002436531033.a n = A197910 (n + 1)

end A197910

/-! ## A197910.P11806660298224135080

`char[xor(n, floor(n/2))]+floor((3/2+n)^(n+1))`
-/

namespace A197910.P11806660298224135080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊((3 : ℚ) / 2 + (n : ℚ)) ^ (n + 1)⌋

end

end A197910.P11806660298224135080

namespace A197910

/-- `char[xor(n, floor(n/2))]+floor((3/2+n)^(n+1))` -/
def P11806660298224135080.Spec : Prop :=
  ∀ n, P11806660298224135080.a n = A197910 (n + 1)

end A197910

/-! ## A197910.P5663590456137778595

`char[n-gcd(n, ∑[n])]+floor((3/2+n)^(n+1))`
-/

namespace A197910.P5663590456137778595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊((3 : ℚ) / 2 + (n : ℚ)) ^ (n + 1)⌋

end

end A197910.P5663590456137778595

namespace A197910

/-- `char[n-gcd(n, ∑[n])]+floor((3/2+n)^(n+1))` -/
def P5663590456137778595.Spec : Prop :=
  ∀ n, P5663590456137778595.a n = A197910 (n + 1)

end A197910

/-! ## A197910.P4207500969348670100

`floor((3/2+n)^(n+1))+((-1)^val(n+1, 2))²`
-/

namespace A197910.P4207500969348670100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 : ℚ) / 2 + (n : ℚ)) ^ (n + 1)⌋ + ((-1) ^ SequenceMachineLib.valuation (n + 1) 2) ^ 2

end

end A197910.P4207500969348670100

namespace A197910

/-- `floor((3/2+n)^(n+1))+((-1)^val(n+1, 2))²` -/
def P4207500969348670100.Spec : Prop :=
  ∀ n, P4207500969348670100.a n = A197910 (n + 1)

end A197910

/-! ## A197910.P7400408537791051842

`A197712(n+1)+1`
-/

namespace A197910.P7400408537791051842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197712 (n + 1) + 1

end

end A197910.P7400408537791051842

namespace A197910

/-- `A197712(n+1)+1` -/
def P7400408537791051842.Spec : Prop :=
  ∀ n, P7400408537791051842.a n = A197910 (n + 1)

end A197910

/-! ## A197910.P16222691833393994259

`floor((3/2+n)^(n+1))+A000041(C(2, n+2))`
-/

namespace A197910.P16222691833393994259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 : ℚ) / 2 + (n : ℚ)) ^ (n + 1)⌋ + A000041 (Nat.choose 2 (n + 2))

end

end A197910.P16222691833393994259

namespace A197910

/-- `floor((3/2+n)^(n+1))+A000041(C(2, n+2))` -/
def P16222691833393994259.Spec : Prop :=
  ∀ n, P16222691833393994259.a n = A197910 (n + 1)

end A197910

/-! ## A197910.P12832851556307039832

`floor((3/2+n)^(n+1))+A007318(C(2, n+2))`
-/

namespace A197910.P12832851556307039832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 : ℚ) / 2 + (n : ℚ)) ^ (n + 1)⌋ + A007318 (Nat.choose 2 (n + 2))

end

end A197910.P12832851556307039832

namespace A197910

/-- `floor((3/2+n)^(n+1))+A007318(C(2, n+2))` -/
def P12832851556307039832.Spec : Prop :=
  ∀ n, P12832851556307039832.a n = A197910 (n + 1)

end A197910

/-!
# A197911: Representable by A001045 (Jacobsthal sequence). Complement of A003158.

The programs for A197911, the canonical program `A197911.P7011659187681247258` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197911 has offset 0).

The definition of A197911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197911.P7011659187681247258

`∑[and(n, -n)%3]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197911

/-- `∑[and(n, -n)%3]` -/
def P7011659187681247258.Spec : Prop :=
  ∀ n, P7011659187681247258.a n = A197911 n

theorem P7011659187681247258.correct : P7011659187681247258.Spec := by
  intro n
  simp only [A197911]

end A197911

/-! ## A197911.P14952736734600774517

`∑[val(xor(n, n-1)+3, 6)]+n`
-/

namespace A197911.P14952736734600774517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.xor (n : ℤ) ((n : ℤ) - 1) + 3).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A197911.P14952736734600774517

namespace A197911

/-- `∑[val(xor(n, n-1)+3, 6)]+n` -/
def P14952736734600774517.Spec : Prop :=
  ∀ n, (P14952736734600774517.a n : ℤ) = A197911 n

end A197911

/-! ## A197911.P8169190761236725241

`∑[4%gcd(3, xor(n, n-1))]+n`
-/

namespace A197911.P8169190761236725241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 % Int.gcd 3 (Int.xor (n : ℤ) ((n : ℤ) - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A197911.P8169190761236725241

namespace A197911

/-- `∑[4%gcd(3, xor(n, n-1))]+n` -/
def P8169190761236725241.Spec : Prop :=
  ∀ n, (P8169190761236725241.a n : ℤ) = A197911 n

end A197911

/-! ## A197911.P5378499568465022586

`comp[eq[0, xor(n, n-1)%3]+n]`
-/

namespace A197911.P5378499568465022586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A197911.P5378499568465022586

namespace A197911

/-- `comp[eq[0, xor(n, n-1)%3]+n]` -/
def P5378499568465022586.Spec : Prop :=
  ∀ n, (P5378499568465022586.a n : ℤ) = A197911 n

end A197911

/-! ## A197911.P15247926046501468832

`a(n-1)+gcd(2, val(2*n, 2))` with `a(0)=0`
-/

namespace A197911.P15247926046501468832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.gcd 2 (SequenceMachineLib.valuation (2 * n) 2)

end

end A197911.P15247926046501468832

namespace A197911

/-- `a(n-1)+gcd(2, val(2*n, 2))` -/
def P15247926046501468832.Spec : Prop :=
  ∀ n, (P15247926046501468832.a n : ℤ) = A197911 n

end A197911

/-! ## A197911.P14537611450859143537

`a(n-1)+gcd(n, a(n-1)+a(floor(n/2)))` with `a(0)=0`
-/

namespace A197911.P14537611450859143537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.gcd n (a (n - 1) + a ⌊(n : ℚ) / 2⌋.toNat)

end

end A197911.P14537611450859143537

namespace A197911

/-- `a(n-1)+gcd(n, a(n-1)+a(floor(n/2)))` -/
def P14537611450859143537.Spec : Prop :=
  ∀ n, (P14537611450859143537.a n : ℤ) = A197911 n

end A197911

/-! ## A197911.P7558848247361401867

`A123087(n)+n`
-/

namespace A197911.P7558848247361401867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 n + (n : ℤ)

end

end A197911.P7558848247361401867

namespace A197911

/-- `A123087(n)+n` -/
def P7558848247361401867.Spec : Prop :=
  ∀ n, P7558848247361401867.a n = A197911 n

end A197911

/-! ## A197911.P10766596677757940521

`comp[A003158(n+1)]`
-/

namespace A197911.P10766596677757940521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A197911.P10766596677757940521

namespace A197911

/-- `comp[A003158(n+1)]` -/
def P10766596677757940521.Spec : Prop :=
  ∀ n, (P10766596677757940521.a n : ℤ) = A197911 n

end A197911

/-! ## A197911.P14907181140585717821

`∑[val(A000123(n), 2)]`
-/

namespace A197911.P14907181140585717821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000123 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197911.P14907181140585717821

namespace A197911

/-- `∑[val(A000123(n), 2)]` -/
def P14907181140585717821.Spec : Prop :=
  ∀ n, (P14907181140585717821.a n : ℤ) = A197911 n

end A197911

/-! ## A197911.P11489495226740298896

`∑[C(2, A316826(n))]`
-/

namespace A197911.P11489495226740298896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A316826 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197911.P11489495226740298896

namespace A197911

/-- `∑[C(2, A316826(n))]` -/
def P11489495226740298896.Spec : Prop :=
  ∀ n, (P11489495226740298896.a n : ℤ) = A197911 n

end A197911

/-! ## A197911.P14830292424950965741

`A286045(n+1)-1`
-/

namespace A197911.P14830292424950965741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286045 (n + 1) - 1

end

end A197911.P14830292424950965741

namespace A197911

/-- `A286045(n+1)-1` -/
def P14830292424950965741.Spec : Prop :=
  ∀ n, P14830292424950965741.a n = A197911 n

end A197911

/-! ## A197911.P1464166437486319296

`2*n-A050292(n)`
-/

namespace A197911.P1464166437486319296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A050292 n

end

end A197911.P1464166437486319296

namespace A197911

/-- `2*n-A050292(n)` -/
def P1464166437486319296.Spec : Prop :=
  ∀ n, P1464166437486319296.a n = A197911 n

end A197911

/-! ## A197911.P9243967184235175171

`comp[A003157(n+1)-1]`
-/

namespace A197911.P9243967184235175171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003157 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A197911.P9243967184235175171

namespace A197911

/-- `comp[A003157(n+1)-1]` -/
def P9243967184235175171.Spec : Prop :=
  ∀ n, (P9243967184235175171.a n : ℤ) = A197911 n

end A197911

/-! ## A197911.P13982745769671193637

`∑[A328979(n+1)]+n`
-/

namespace A197911.P13982745769671193637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A197911.P13982745769671193637

namespace A197911

/-- `∑[A328979(n+1)]+n` -/
def P13982745769671193637.Spec : Prop :=
  ∀ n, P13982745769671193637.a n = A197911 n

end A197911

/-! ## A197911.P14505813962871360165

`comp[A036554(n+1)+n]`
-/

namespace A197911.P14505813962871360165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A197911.P14505813962871360165

namespace A197911

/-- `comp[A036554(n+1)+n]` -/
def P14505813962871360165.Spec : Prop :=
  ∀ n, (P14505813962871360165.a n : ℤ) = A197911 n

end A197911

/-! ## A197911.P2028699951140511434

`∑[A284948(n+1)+1]-2`
-/

namespace A197911.P2028699951140511434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A197911.P2028699951140511434

namespace A197911

/-- `∑[A284948(n+1)+1]-2` -/
def P2028699951140511434.Spec : Prop :=
  ∀ n, P2028699951140511434.a n = A197911 n

end A197911

/-! ## A197911.P1729602380041026010

`∑[2-A285384(n+1)]-1`
-/

namespace A197911.P1729602380041026010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A285384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A197911.P1729602380041026010

namespace A197911

/-- `∑[2-A285384(n+1)]-1` -/
def P1729602380041026010.Spec : Prop :=
  ∀ n, P1729602380041026010.a n = A197911 n

end A197911

/-!
# A197912: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,0,2,1,0,2,2 for x=0,1,2,3,4,5,6.

The programs for A197912, there is no canonical definition to state claims against.
-/

/-! ## A197912.P16580333031560250149

`or(A000009(n), A047845(A153526(n)))`
-/

namespace A197912.P16580333031560250149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000009 n) (A047845 (A153526 n).toNat)

end

end A197912.P16580333031560250149

/-!
# A197914: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,4,2,0,1,2,0 for x=0,1,2,3,4,5,6.

The programs for A197914, there is no canonical definition to state claims against.
-/

/-! ## A197914.P3756177771907722309

`A101546(∑[∑[char[4*n]]]^n)`
-/

namespace A197914.P3756177771907722309
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101546 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n)

end

end A197914.P3756177771907722309

/-!
# A197915: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,0,3,1,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A197915, there is no canonical definition to state claims against.
-/

/-! ## A197915.P9455409341182107427

`A022163(a(n-1))` with `a(0)=1, a(1)=4, a(2)=1`
-/

namespace A197915.P9455409341182107427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 1] fun n a =>
  A022163 (a (n - 1)).toNat

end

end A197915.P9455409341182107427

/-!
# A197916: Related to the periodic sequence A171654.

The programs for A197916, the canonical program `A197916.P18373414362809393663` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197916 has offset 0).

The definition of A197916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197916.P18373414362809393663

`a(n-4)+2` with `a(0)=0, a(1)=1, a(2)=6, a(3)=7`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197916

/-- `a(n-4)+2` -/
def P18373414362809393663.Spec : Prop :=
  ∀ n, (P18373414362809393663.a n : ℤ) = A197916 n

theorem P18373414362809393663.correct : P18373414362809393663.Spec := by
  intro n
  simp only [A197916]

end A197916

/-! ## A197916.P12291118411337005634

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=1, a(4)=-5`

`floor` is left out, it is the identity on integers.
-/

namespace A197916.P12291118411337005634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 1, -5] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197916.P12291118411337005634

namespace A197916

/-- `∑[floor(a(n-4))]` -/
def P12291118411337005634.Spec : Prop :=
  ∀ n, P12291118411337005634.a n = A197916 n

end A197916

/-! ## A197916.P13499744505862478085

`5-(or(1, a(n-2))-n)` with `a(0)=0, a(1)=1`
-/

namespace A197916.P13499744505862478085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  5 - (Int.lor 1 (a (n - 2)) - (n : ℤ))

end

end A197916.P13499744505862478085

namespace A197916

/-- `5-(or(1, a(n-2))-n)` -/
def P13499744505862478085.Spec : Prop :=
  ∀ n, P13499744505862478085.a n = A197916 n

end A197916

/-! ## A197916.P17070426606778425525

`xor(2, n+2)-2*floor(n/4)`
-/

namespace A197916.P17070426606778425525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (n + 2) : ℤ) - 2 * ⌊(n : ℚ) / 4⌋

end

end A197916.P17070426606778425525

namespace A197916

/-- `xor(2, n+2)-2*floor(n/4)` -/
def P17070426606778425525.Spec : Prop :=
  ∀ n, P17070426606778425525.a n = A197916 n

end A197916

/-! ## A197916.P6329892452368893712

`4-(a(n-2)-n%2-n)` with `a(0)=0, a(1)=1`
-/

namespace A197916.P6329892452368893712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 - (a (n - 2) - ((n % 2 : ℕ) : ℤ) - (n : ℤ))

end

end A197916.P6329892452368893712

namespace A197916

/-- `4-(a(n-2)-n%2-n)` -/
def P6329892452368893712.Spec : Prop :=
  ∀ n, P6329892452368893712.a n = A197916 n

end A197916

/-! ## A197916.P16978484889041716446

`and(1, n)-(a(n-2)-4-n)` with `a(0)=0, a(1)=1`
-/

namespace A197916.P16978484889041716446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Nat.land 1 n : ℤ) - (a (n - 2) - 4 - (n : ℤ))

end

end A197916.P16978484889041716446

namespace A197916

/-- `and(1, n)-(a(n-2)-4-n)` -/
def P16978484889041716446.Spec : Prop :=
  ∀ n, P16978484889041716446.a n = A197916 n

end A197916

/-! ## A197916.P6591542043274965721

`∑[1-2%gcd(4, n)]+and(5, 2*n+1)`
-/

namespace A197916.P6591542043274965721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 % Nat.gcd 4 n : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.land 5 (2 * n + 1) : ℤ)

end

end A197916.P6591542043274965721

namespace A197916

/-- `∑[1-2%gcd(4, n)]+and(5, 2*n+1)` -/
def P6591542043274965721.Spec : Prop :=
  ∀ n, P6591542043274965721.a n = A197916 n

end A197916

/-! ## A197916.P9026237869891689258

`gcd(2, a(n-1))-(a(n-2)-3-n)` with `a(0)=0, a(1)=1`
-/

namespace A197916.P9026237869891689258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Int.gcd 2 (a (n - 1)) : ℤ) - (a (n - 2) - 3 - (n : ℤ))

end

end A197916.P9026237869891689258

namespace A197916

/-- `gcd(2, a(n-1))-(a(n-2)-3-n)` -/
def P9026237869891689258.Spec : Prop :=
  ∀ n, P9026237869891689258.a n = A197916 n

end A197916

/-! ## A197916.P13330423017679380627

`A083219(n)+and(2, n)²`
-/

namespace A197916.P13330423017679380627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 n + (Nat.land 2 n ^ 2 : ℤ)

end

end A197916.P13330423017679380627

namespace A197916

/-- `A083219(n)+and(2, n)²` -/
def P13330423017679380627.Spec : Prop :=
  ∀ n, P13330423017679380627.a n = A197916 n

end A197916

/-! ## A197916.P9005066743141394166

`A083219(n)+4*A021913(n)`
-/

namespace A197916.P9005066743141394166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 n + 4 * A021913 n

end

end A197916.P9005066743141394166

namespace A197916

/-- `A083219(n)+4*A021913(n)` -/
def P9005066743141394166.Spec : Prop :=
  ∀ n, P9005066743141394166.a n = A197916 n

end A197916

/-! ## A197916.P3053633783449587660

`A007494(n)+A010676(A007494(n))-n`
-/

namespace A197916.P3053633783449587660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n + (A010676 (A007494 n).toNat - (n : ℤ))

end

end A197916.P3053633783449587660

namespace A197916

/-- `A007494(n)+A010676(A007494(n))-n` -/
def P3053633783449587660.Spec : Prop :=
  ∀ n, P3053633783449587660.a n = A197916 n

end A197916

/-! ## A197916.P15772287051179775195

`A092486(A092486(n+1))-A004525(A004525(2*n+1))`
-/

namespace A197916.P15772287051179775195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A092486 (n + 1)).toNat - A004525 (A004525 (2 * n + 1)).toNat

end

end A197916.P15772287051179775195

namespace A197916

/-- `A092486(A092486(n+1))-A004525(A004525(2*n+1))` -/
def P15772287051179775195.Spec : Prop :=
  ∀ n, P15772287051179775195.a n = A197916 n

end A197916

/-!
# A197917: Suppose n has prime factorization n=p1^a1*p2^a2*...*pk^ak and that D(n) is A006218, then n has all D(ai) even.

The programs for A197917, there is no canonical definition to state claims against.
-/

/-! ## A197917.P9568412167158473961

`A036967(lt[A276024(n+1), A072360(n+1)])`
-/

namespace A197917.P9568412167158473961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A197917.P9568412167158473961

/-! ## A197917.P13384072430004683321

`A076468(lt[A291717(n+5), A113003(3*n+4)])`
-/

namespace A197917.P13384072430004683321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291717 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113003 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A197917.P13384072430004683321

/-! ## A197917.P14515276944592647521

`A036967(lt[A164317(n), A353804(n+1)])`
-/

namespace A197917.P14515276944592647521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164317 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A197917.P14515276944592647521

/-! ## A197917.P4334451222012790187

`A036967(lt[A143438(n), A033932(n+2)])`
-/

namespace A197917.P4334451222012790187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143438 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A197917.P4334451222012790187

/-! ## A197917.P3716507707399348131

`A036967(lt[A060547(n+1), A300273(n+1)])`
-/

namespace A197917.P3716507707399348131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A197917.P3716507707399348131

/-!
# A197918: Pythagorean primes p such that for all primes q < p, p XOR q is not equal to p - q.

The programs for A197918, there is no canonical definition to state claims against.
-/

/-! ## A197918.P12036371082233977985

`p?[A102212(n+1)]`
-/

namespace A197918.P12036371082233977985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197918.P12036371082233977985

/-! ## A197918.P9126282829624495789

`filter[A102212(n+1), A010051(#)]`
-/

namespace A197918.P9126282829624495789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A197918.P9126282829624495789

/-! ## A197918.P16802354720555336813

`filter[A102212(n+1), A353817(#)]`
-/

namespace A197918.P16802354720555336813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A197918.P16802354720555336813

/-! ## A197918.P9138240059510507398

`∩[A000040(n+1), A102212(n+1)]`
-/

namespace A197918.P9138240059510507398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197918.P9138240059510507398

/-! ## A197918.P4021429445602699124

`∩[A002313(n+1), A102212(n+1)]`
-/

namespace A197918.P4021429445602699124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197918.P4021429445602699124

/-!
# A197919: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,5,0,0,3,1,0 for x=0,1,2,3,4,5,6.

The programs for A197919, there is no canonical definition to state claims against.
-/

/-! ## A197919.P9597950387390133990

`Δ[A130664(∏[A130707(n)])]`
-/

namespace A197919.P9597950387390133990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130707 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130664 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A197919.P9597950387390133990

/-!
# A197920: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 1,3,3,2,0,0,0 for x=0,1,2,3,4,5,6.

The programs for A197920, there is no canonical definition to state claims against.
-/

/-! ## A197920.P1828044923180555614

`A297708(n)+A061579(A101334(n))`
-/

namespace A197920.P1828044923180555614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297708 n + A061579 (A101334 n).toNat

end

end A197920.P1828044923180555614

/-! ## A197920.P59060508248603625

`A028242(A135744(n)-A157306(n))`
-/

namespace A197920.P59060508248603625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A135744 n - A157306 n).toNat

end

end A197920.P59060508248603625

/-!
# A197921: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,5,3,0,1,1,0 for x=0,1,2,3,4,5,6.

The programs for A197921, there is no canonical definition to state claims against.
-/

/-! ## A197921.P4677798195380271577

`A326841((n+1)!)-∑[n]`
-/

namespace A197921.P4677798195380271577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326841 (Nat.factorial (n + 1)) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A197921.P4677798195380271577

/-!
# A197922: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,0,2,0,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A197922, there is no canonical definition to state claims against.
-/

/-! ## A197922.P5233089296934313797

`A355225(A212740(n))+A172061(n)`
-/

namespace A197922.P5233089296934313797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355225 (A212740 n).toNat + A172061 n

end

end A197922.P5233089296934313797

/-!
# A197923: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,2,1,1,1,1,0 for x=0,1,2,3,4,5,6.

The programs for A197923, there is no canonical definition to state claims against.
-/

/-! ## A197923.P3965608580228006544

`A329925(C(∑[A063455(n+1)], n))`
-/

namespace A197923.P3965608580228006544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329925 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat n)

end

end A197923.P3965608580228006544

/-!
# A197924: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,4,0,2,1,2,0 for x=0,1,2,3,4,5,6.

The programs for A197924, there is no canonical definition to state claims against.
-/

/-! ## A197924.P3371403222442020711

`A333126(A181899(n+4))`
-/

namespace A197924.P3371403222442020711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333126 (A181899 (n + 4)).toNat

end

end A197924.P3371403222442020711

/-!
# A197925: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,2,1,1,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A197925, there is no canonical definition to state claims against.
-/

/-! ## A197925.P11570479511561123967

`A056077(A018804(n+1)*A317794(n))`
-/

namespace A197925.P11570479511561123967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056077 (A018804 (n + 1) * A317794 n).toNat

end

end A197925.P11570479511561123967

/-!
# A197926: Numbers n such that A055265(1..n) is a solution of prime circle problem.

The programs for A197926, there is no canonical definition to state claims against.
-/

/-! ## A197926.P3482582231275435740

`A170905(A149042(n+1))`
-/

namespace A197926.P3482582231275435740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170905 (A149042 (n + 1)).toNat

end

end A197926.P3482582231275435740

/-! ## A197926.P7992273393332253805

`A323587(A117913(n+1))`
-/

namespace A197926.P7992273393332253805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323587 (A117913 (n + 1)).toNat

end

end A197926.P7992273393332253805

/-!
# A197927: The number of isolated nodes in all labeled directed graphs (with self loops allowed) on n nodes.

The programs for A197927, the canonical program `A197927.P13533482639261144743` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197927 has offset 0).

The definition of A197927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A197927.P13533482639261144743

`n*2^(n-1)²`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197927

/-- `n*2^(n-1)²` -/
def P13533482639261144743.Spec : Prop :=
  ∀ n, P13533482639261144743.a n = (A197927 n : ℚ)

end A197927

/-! ## A197927.P6268961754070535595

`2^(n*(n-2))*xor(1, 2*n)-2^(n*(n-2))`
-/

namespace A197927.P6268961754070535595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) * ((n : ℤ) - 2) : ℤ) * (Nat.xor 1 (2 * n) : ℚ) - (2 : ℚ) ^ ((n : ℤ) * ((n : ℤ) - 2) : ℤ)

end

end A197927.P6268961754070535595

namespace A197927

/-- `2^(n*(n-2))*xor(1, 2*n)-2^(n*(n-2))` -/
def P6268961754070535595.Spec : Prop :=
  ∀ n, P6268961754070535595.a n = (A197927 n : ℚ)

end A197927

/-! ## A197927.P5209801100654956181

`floor(n*A011782(n)^(n-1))`
-/

namespace A197927.P5209801100654956181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (A011782 n : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A197927.P5209801100654956181

namespace A197927

/-- `floor(n*A011782(n)^(n-1))` -/
def P5209801100654956181.Spec : Prop :=
  ∀ n, P5209801100654956181.a n = A197927 n

end A197927

/-! ## A197927.P16882246878488293455

`ceil(2*n*A000079(n)^(n-2))`
-/

namespace A197927.P16882246878488293455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℚ) * (A000079 n : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

end

end A197927.P16882246878488293455

namespace A197927

/-- `ceil(2*n*A000079(n)^(n-2))` -/
def P16882246878488293455.Spec : Prop :=
  ∀ n, P16882246878488293455.a n = A197927 n

end A197927

/-! ## A197927.P9510985385864970985

`n*A053763(n)/A011782(n)`
-/

namespace A197927.P9510985385864970985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A053763 n : ℚ) / (A011782 n : ℚ)

end

end A197927.P9510985385864970985

namespace A197927

/-- `n*A053763(n)/A011782(n)` -/
def P9510985385864970985.Spec : Prop :=
  ∀ n, P9510985385864970985.a n = (A197927 n : ℚ)

end A197927

/-!
# A197928: Number of pairs of integers i,j with 1<=i<=n, 1<=j<=i, such that i^2-j^2 = i*j (mod n).

The programs for A197928, there is no canonical definition to state claims against.
-/

/-! ## A197928.P11014011901839199324

`A001511(A037235(floor((n/3)²)+1))`
-/

namespace A197928.P11014011901839199324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A037235 (⌊((n : ℚ) / 3) ^ 2⌋ + 1).toNat).toNat

end

end A197928.P11014011901839199324

/-!
# A197929: Number of distinct residues of x^(n-1) (mod n), x=0..n-1.

The programs for A197929, there is no canonical definition to state claims against.
-/

/-! ## A197929.P17347616459300446096

`A075656(n+1)/A020639(A077168(n))`
-/

namespace A197929.P17347616459300446096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075656 (n + 1) : ℚ) / (A020639 (A077168 n).toNat : ℚ)

end

end A197929.P17347616459300446096

/-! ## A197929.P14674716279343072898

`A075656(n+1)/A020639(A220416(n+1))`
-/

namespace A197929.P14674716279343072898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075656 (n + 1) : ℚ) / (A020639 (A220416 (n + 1)).toNat : ℚ)

end

end A197929.P14674716279343072898

/-! ## A197929.P6863216188786292069

`A075656(A077168(n))/A014963(A028233(n+1))`
-/

namespace A197929.P6863216188786292069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075656 (A077168 n).toNat : ℚ) / (A014963 (A028233 (n + 1)).toNat : ℚ)

end

end A197929.P6863216188786292069

/-! ## A197929.P15253056641954319667

`A075656(A077168(n))/A014963(A068794(n+1))`
-/

namespace A197929.P15253056641954319667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075656 (A077168 n).toNat : ℚ) / (A014963 (A068794 (n + 1)).toNat : ℚ)

end

end A197929.P15253056641954319667

/-! ## A197929.P16793208273727112340

`A075656(n+1)/(A006530(n+1)-A046665(A077168(n)))`
-/

namespace A197929.P16793208273727112340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075656 (n + 1) : ℚ) / (A006530 (n + 1) - A046665 (A077168 n).toNat : ℚ)

end

end A197929.P16793208273727112340

/-!
# A197930: Numbers n such that the number of distinct residues in x^(n-1) (mod n), x=0..n-1, equals n.

The programs for A197930, the canonical program `A197930.P3354598324668352109` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197930 has offset 1).

The definition of A197930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197930.P17235524807379017139

`record[A007913(A209211(n+1))]`
-/

namespace A197930.P17235524807379017139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A209211 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197930.P17235524807379017139

namespace A197930

/-- `record[A007913(A209211(n+1))]` -/
def P17235524807379017139.Spec : Prop :=
  ∀ n, P17235524807379017139.a n = A197930 (n + 1)

end A197930

/-! ## A197930.P17293264882477030293

`filter[A209211(n+1), A008966(#)]`
-/

namespace A197930.P17293264882477030293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A197930.P17293264882477030293

namespace A197930

/-- `filter[A209211(n+1), A008966(#)]` -/
def P17293264882477030293.Spec : Prop :=
  ∀ n, P17293264882477030293.a n = A197930 (n + 1)

end A197930

/-! ## A197930.P2027125403742530478

`record[A340086(A005117(n+1))+1]`
-/

namespace A197930.P2027125403742530478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340086 (A005117 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197930.P2027125403742530478

namespace A197930

/-- `record[A340086(A005117(n+1))+1]` -/
def P2027125403742530478.Spec : Prop :=
  ∀ n, P2027125403742530478.a n = A197930 (n + 1)

end A197930

/-! ## A197930.P3171190767740222334

`∩[A005117(n+1), A209211(n+1)]`
-/

namespace A197930.P3171190767740222334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197930.P3171190767740222334

namespace A197930

/-- `∩[A005117(n+1), A209211(n+1)]` -/
def P3171190767740222334.Spec : Prop :=
  ∀ n, (P3171190767740222334.a n : ℤ) = A197930 (n + 1)

end A197930

/-! ## A197930.P12862161015683283911

`∩[A034044(n+1), A209211(n+1)]`
-/

namespace A197930.P12862161015683283911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197930.P12862161015683283911

namespace A197930

/-- `∩[A034044(n+1), A209211(n+1)]` -/
def P12862161015683283911.Spec : Prop :=
  ∀ n, (P12862161015683283911.a n : ℤ) = A197930 (n + 1)

end A197930

/-! ## A197930.P16275696656983379683

`∩[A080324(n+1), A209211(n+1)]`
-/

namespace A197930.P16275696656983379683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197930.P16275696656983379683

namespace A197930

/-- `∩[A080324(n+1), A209211(n+1)]` -/
def P16275696656983379683.Spec : Prop :=
  ∀ n, (P16275696656983379683.a n : ℤ) = A197930 (n + 1)

end A197930

/-! ## A197930.P6635037238263031544

`∩[A089269(n+1), A209211(n+1)]`
-/

namespace A197930.P6635037238263031544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197930.P6635037238263031544

namespace A197930

/-- `∩[A089269(n+1), A209211(n+1)]` -/
def P6635037238263031544.Spec : Prop :=
  ∀ n, (P6635037238263031544.a n : ℤ) = A197930 (n + 1)

end A197930

/-! ## A197930.P14370765822243359754

`∩[A080324(n+1), A280196(n+1)]`
-/

namespace A197930.P14370765822243359754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197930.P14370765822243359754

namespace A197930

/-- `∩[A080324(n+1), A280196(n+1)]` -/
def P14370765822243359754.Spec : Prop :=
  ∀ n, (P14370765822243359754.a n : ℤ) = A197930 (n + 1)

end A197930

/-! ## A197930.P5022101417426366974

`∩[A089269(n+1), A280196(n+1)]`
-/

namespace A197930.P5022101417426366974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197930.P5022101417426366974

namespace A197930

/-- `∩[A089269(n+1), A280196(n+1)]` -/
def P5022101417426366974.Spec : Prop :=
  ∀ n, (P5022101417426366974.a n : ℤ) = A197930 (n + 1)

end A197930

/-! ## A197930.P14600343339137936327

`∩[A209211(n+1), A380692(n+1)]`
-/

namespace A197930.P14600343339137936327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197930.P14600343339137936327

namespace A197930

/-- `∩[A209211(n+1), A380692(n+1)]` -/
def P14600343339137936327.Spec : Prop :=
  ∀ n, (P14600343339137936327.a n : ℤ) = A197930 (n + 1)

end A197930

/-! ## A197930.P12130392420192391236

`record[gcd(A007913(n+1), A348259(n+1))]`
-/

namespace A197930.P12130392420192391236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007913 (n + 1)) (A348259 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197930.P12130392420192391236

namespace A197930

/-- `record[gcd(A007913(n+1), A348259(n+1))]` -/
def P12130392420192391236.Spec : Prop :=
  ∀ n, (P12130392420192391236.a n : ℤ) = A197930 (n + 1)

end A197930

/-! ## A197930.P3354598324668352109

`eq[A003557(n+1), A063994(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A197930

/-- `eq[A003557(n+1), A063994(n+1)]+1` -/
def P3354598324668352109.Spec : Prop :=
  ∀ n, (P3354598324668352109.a n : ℤ) = A197930 (n + 1)

theorem P3354598324668352109.correct : P3354598324668352109.Spec := by
  intro n
  simp only [A197930, Nat.add_sub_cancel]

end A197930

/-! ## A197930.P9018999795450696628

`eq[A000010(n+1), A340082(n+1)]+1`
-/

namespace A197930.P9018999795450696628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340082 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A197930.P9018999795450696628

namespace A197930

/-- `eq[A000010(n+1), A340082(n+1)]+1` -/
def P9018999795450696628.Spec : Prop :=
  ∀ n, (P9018999795450696628.a n : ℤ) = A197930 (n + 1)

end A197930

/-! ## A197930.P17725717429097267419

`eq[A000010(n+1), A003958(A340083(n+1)+1)]+1`
-/

namespace A197930.P17725717429097267419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A340083 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A197930.P17725717429097267419

namespace A197930

/-- `eq[A000010(n+1), A003958(A340083(n+1)+1)]+1` -/
def P17725717429097267419.Spec : Prop :=
  ∀ n, (P17725717429097267419.a n : ℤ) = A197930 (n + 1)

end A197930

/-!
# A197931: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,4,2,2,0,0,0 for x=0,1,2,3,4,5,6.

The programs for A197931, there is no canonical definition to state claims against.
-/

/-! ## A197931.P15072252254116823837

`∑[A222312(A355124(n))+1]`
-/

namespace A197931.P15072252254116823837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222312 (A355124 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197931.P15072252254116823837

/-!
# A197932: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,4,2,2,1,0,2 for x=0,1,2,3,4,5,6.

The programs for A197932, there is no canonical definition to state claims against.
-/

/-! ## A197932.P9711235719982990648

`∑[A194029(3^n*n!)]`
-/

namespace A197932.P9711235719982990648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194029 (3 ^ n * Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197932.P9711235719982990648

/-!
# A197933: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 0,0,2,1,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A197933, there is no canonical definition to state claims against.
-/

/-! ## A197933.P16333669932810055398

`A075464(∑[A079129(n)])`
-/

namespace A197933.P16333669932810055398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075464 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A197933.P16333669932810055398

/-!
# A197934: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,4,0,2,0,0,0 for x=0,1,2,3,4,5,6.

The programs for A197934, there is no canonical definition to state claims against.
-/

/-! ## A197934.P9561558287988885433

`A301289(8^∑[n]^(1/3)-A000110(n))`
-/

namespace A197934.P9561558287988885433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301289 (SequenceMachineLib.roundAway ((8 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) ^ ((1 : ℚ) / 3 : ℝ) - (A000110 n : ℝ))).toNat

end

end A197934.P9561558287988885433

/-!
# A197935: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,4,2,2,1,0,2 for x=0,1,2,3,4,5,6.

The programs for A197935, there is no canonical definition to state claims against.
-/

/-! ## A197935.P1406473974310972208

`A048683(A150471(n))`
-/

namespace A197935.P1406473974310972208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048683 (A150471 n).toNat

end

end A197935.P1406473974310972208

/-!
# A197937: Number of n X n X n 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,4,2,0,2,0,2 for x=0,1,2,3,4,5,6.

The programs for A197937, there is no canonical definition to state claims against.
-/

/-! ## A197937.P135344206632458749

`A247914(a(n-1)*∑[n])+1` with `a(0)=1`
-/

namespace A197937.P135344206632458749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247914 (a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat + 1

end

end A197937.P135344206632458749

/-!
# A197939: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,0,1,2,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A197939, there is no canonical definition to state claims against.
-/

/-! ## A197939.P1418201585653327715

`record[Δ[A004525(A061894(n))]]`
-/

namespace A197939.P1418201585653327715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A061894 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197939.P1418201585653327715

/-!
# A197940: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,0,0,2,2,1,0 for x=0,1,2,3,4,5,6.

The programs for A197940, there is no canonical definition to state claims against.
-/

/-! ## A197940.P2826264068543681312

`A262356(A183122(2*n)+A022425(n))`
-/

namespace A197940.P2826264068543681312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262356 (A183122 (2 * n) + A022425 n).toNat

end

end A197940.P2826264068543681312

/-!
# A197941: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,5,2,0,1,1,0 for x=0,1,2,3,4,5,6.

The programs for A197941, there is no canonical definition to state claims against.
-/

/-! ## A197941.P3755305514361829416

`A052404(A006118(n))+1`
-/

namespace A197941.P3755305514361829416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052404 (A006118 n).toNat + 1

end

end A197941.P3755305514361829416

/-!
# A197942: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,0,1,1,0,0,0 for x=0,1,2,3,4,5,6.

The programs for A197942, there is no canonical definition to state claims against.
-/

/-! ## A197942.P4466101910541647589

`A304246(n!*∑[1/n!])+3^n`
-/

namespace A197942.P4466101910541647589
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304246 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))).toNat + (3 ^ n : ℤ)

end

end A197942.P4466101910541647589

/-!
# A197945: Length of longest prefix of A096095(n) that is also a prefix of A096095(n+1).

The programs for A197945, there is no canonical definition to state claims against.
-/

/-! ## A197945.P16673978075179248368

`A029376(A029381(3*n+4)^A029418(n))`
-/

namespace A197945.P16673978075179248368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029376 (SequenceMachineLib.roundAway ((A029381 (3 * n + 4) : ℚ) ^ (A029418 n : ℤ))).toNat

end

end A197945.P16673978075179248368

/-! ## A197945.P2255393066306811570

`A008622(n)*A285421(A005898(n))`
-/

namespace A197945.P2255393066306811570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 n * A285421 (A005898 n).toNat

end

end A197945.P2255393066306811570

/-! ## A197945.P17679024209480181611

`and(A008622(n), A035327(A001629(n)))`
-/

namespace A197945.P17679024209480181611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008622 n) (A035327 (A001629 n).toNat)

end

end A197945.P17679024209480181611

/-! ## A197945.P6210444412453147080

`and(A029349(n), A035327(A001629(n)))`
-/

namespace A197945.P6210444412453147080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029349 n) (A035327 (A001629 n).toNat)

end

end A197945.P6210444412453147080

/-! ## A197945.P11475516987794603078

`A133075(A029040(n))%A038605(n+1)`
-/

namespace A197945.P11475516987794603078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133075 (A029040 n).toNat) (A038605 (n + 1))

end

end A197945.P11475516987794603078

/-!
# A197946: Record values in A197944.

The programs for A197946, there is no canonical definition to state claims against.
-/

/-! ## A197946.P17120703670621375632

`record[A197944(n+1)]`
-/

namespace A197946.P17120703670621375632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197946.P17120703670621375632

/-!
# A197947: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,5,1,1,0,1,1 for x=0,1,2,3,4,5,6.

The programs for A197947, there is no canonical definition to state claims against.
-/

/-! ## A197947.P4054502474335935550

`A113095(A001372(n))`
-/

namespace A197947.P4054502474335935550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113095 (A001372 n).toNat

end

end A197947.P4054502474335935550

/-!
# A197949: Number of n X n X n 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,3,2,1,0,0,2 for x=0,1,2,3,4,5,6.

The programs for A197949, there is no canonical definition to state claims against.
-/

/-! ## A197949.P16982958883010118429

`A194964((n+2)^n)`
-/

namespace A197949.P16982958883010118429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 ((n + 2) ^ n)

end

end A197949.P16982958883010118429

/-!
# A197950: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,3,2,2,2,0,2 for x=0,1,2,3,4,5,6.

The programs for A197950, there is no canonical definition to state claims against.
-/

/-! ## A197950.P15079193199131556507

`A145141(n!)+∑[∑[n]]`
-/

namespace A197950.P15079193199131556507
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145141 (Nat.factorial n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A197950.P15079193199131556507

/-!
# A197951: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,5,3,0,0,1,0 for x=0,1,2,3,4,5,6.

The programs for A197951, there is no canonical definition to state claims against.
-/

/-! ## A197951.P5806391261739704098

`A022447(∏[∑[gcd(n+1, (9-n)^13)]])`
-/

namespace A197951.P5806391261739704098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ((9 - (n : ℤ)) ^ 13)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022447 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A197951.P5806391261739704098

/-!
# A197953: a(n) = 1 + Sum_{d|n, d>1} d * a(n/d).

The programs for A197953, there is no canonical definition to state claims against.
-/

/-! ## A197953.P9202021528686951978

`∑{d}[n+1, A050369(#)]`
-/

namespace A197953.P9202021528686951978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050369 d

end

end A197953.P9202021528686951978

/-! ## A197953.P14119269621011353425

`∑{d}[n+1, #*A074206(#)]`
-/

namespace A197953.P14119269621011353425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A074206 d

end

end A197953.P14119269621011353425

/-! ## A197953.P5457840959078923310

`∑{d}[n+1, #*A002033(#-1)]`
-/

namespace A197953.P5457840959078923310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A002033 (d - 1)

end

end A197953.P5457840959078923310

/-!
# A197956: Even-index Fibonacci partition triangle read by rows.

The programs for A197956, there is no canonical definition to state claims against.
-/

/-! ## A197956.P7427523822576548780

`A048766(A034868(n)²*A029644(n))`
-/

namespace A197956.P7427523822576548780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A034868 n ^ 2 * A029644 n).toNat

end

end A197956.P7427523822576548780

/-! ## A197956.P8205722784856513474

`A048766(A029644(n)*A034868(n)*A034868(n))`
-/

namespace A197956.P8205722784856513474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A029644 n * A034868 n * A034868 n).toNat

end

end A197956.P8205722784856513474

/-! ## A197956.P2645986042929695036

`A173075(A325101(n)%A275240(3*n+1))`
-/

namespace A197956.P2645986042929695036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173075 (Int.tmod (A325101 n) (A275240 (3 * n + 1))).toNat

end

end A197956.P2645986042929695036

/-! ## A197956.P10741725165562205852

`A292508(lt[A111540(n), A197419(3*n+2)])`
-/

namespace A197956.P10741725165562205852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111540 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197419 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292508 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A197956.P10741725165562205852

/-! ## A197956.P6889972099602989055

`A166293(A325106(n)+A161951(n+1))`
-/

namespace A197956.P6889972099602989055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166293 (A325106 n + A161951 (n + 1)).toNat

end

end A197956.P6889972099602989055

/-!
# A197957: Odd-index Fibonacci partition triangle read by rows.

The programs for A197957, there is no canonical definition to state claims against.
-/

/-! ## A197957.P623266048160218770

`∑{e}[A066119(n+1), A034448(#)]`
-/

namespace A197957.P623266048160218770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A034448 (Nat.factorization (f1 n).natAbs p)

end

end A197957.P623266048160218770

/-! ## A197957.P7781899203358781987

`∑{e}[A066119(n+1), A049417(#)]`
-/

namespace A197957.P7781899203358781987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A049417 (Nat.factorization (f1 n).natAbs p)

end

end A197957.P7781899203358781987

/-! ## A197957.P9569473539918432930

`∑{e}[A066119(n+1), A063953(#)]`
-/

namespace A197957.P9569473539918432930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A063953 (Nat.factorization (f1 n).natAbs p)

end

end A197957.P9569473539918432930

/-! ## A197957.P5907984537158832274

`∑{e}[A066119(n+1), A106263(#)]`
-/

namespace A197957.P5907984537158832274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A106263 (Nat.factorization (f1 n).natAbs p)

end

end A197957.P5907984537158832274

/-! ## A197957.P13602336738480823732

`∑{e}[A066119(n+1), A300841(#)]`
-/

namespace A197957.P13602336738480823732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A300841 (Nat.factorization (f1 n).natAbs p)

end

end A197957.P13602336738480823732

/-!
# A197958: Number of free poly-IH4-tiles (holes allowed) with n cells.

The programs for A197958, there is no canonical definition to state claims against.
-/

/-! ## A197958.P12098597423162412547

`2*A212086(n+1)-A001207(n+1)`
-/

namespace A197958.P12098597423162412547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212086 (n + 1) - A001207 (n + 1)

end

end A197958.P12098597423162412547

/-! ## A197958.P15019745168772793912

`A197959(n+1)-(2*A197553(n+1)-A001207(n+1)-A197959(n+1))`
-/

namespace A197958.P15019745168772793912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197959 (n + 1) - (2 * A197553 (n + 1) - A001207 (n + 1) - A197959 (n + 1))

end

end A197958.P15019745168772793912

/-! ## A197958.P7156449466297499734

`A197959(n+1)-(2*A197551(n+1)-A197549(n+1)-A197959(n+1))`
-/

namespace A197958.P7156449466297499734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197959 (n + 1) - (2 * A197551 (n + 1) - A197549 (n + 1) - A197959 (n + 1))

end

end A197958.P7156449466297499734

/-! ## A197958.P3766057099235526785

`A004277(A197550(n+1))-A123765(n+1)`
-/

namespace A197958.P3766057099235526785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A197550 (n + 1)).toNat - A123765 (n + 1)

end

end A197958.P3766057099235526785

/-!
# A197959: Number of free poly-IH13-tiles (holes allowed) with n cells.

The programs for A197959, there is no canonical definition to state claims against.
-/

/-! ## A197959.P12995692481393108470

`A197550(n+1)-A055641(A002064(n))`
-/

namespace A197959.P12995692481393108470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197550 (n + 1) - A055641 (A002064 n).toNat

end

end A197959.P12995692481393108470

/-! ## A197959.P9817962706586385180

`A197550(n+1)-A085974(A007051(n))`
-/

namespace A197959.P9817962706586385180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197550 (n + 1) - A085974 (A007051 n).toNat

end

end A197959.P9817962706586385180

/-! ## A197959.P96220943567877381

`A197550(n+1)-A055641(A041047(n))`
-/

namespace A197959.P96220943567877381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197550 (n + 1) - A055641 (A041047 n).toNat

end

end A197959.P96220943567877381

/-! ## A197959.P135355815802745440

`A197550(n+1)-A354353(A079319(n))`
-/

namespace A197959.P135355815802745440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197550 (n + 1) - A354353 (A079319 n).toNat

end

end A197959.P135355815802745440

/-! ## A197959.P14170371120080721216

`A000027(A197550(n+1)-A037815(n+1))`
-/

namespace A197959.P14170371120080721216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A197550 (n + 1) - A037815 (n + 1)).toNat

end

end A197959.P14170371120080721216

/-!
# A197960: Number of free poly-IH15-tiles (polydrops) (holes allowed) with n cells.

The programs for A197960, there is no canonical definition to state claims against.
-/

/-! ## A197960.P10257727232575475314

`A030225(n+1)+A197958(n+1)-A197959(n+1)`
-/

namespace A197960.P10257727232575475314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030225 (n + 1) + (A197958 (n + 1) - A197959 (n + 1))

end

end A197960.P10257727232575475314

/-! ## A197960.P17779608782403675952

`A000228(n+1)-A030226(n+1)-(A197959(n+1)-A197958(n+1))`
-/

namespace A197960.P17779608782403675952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) - A030226 (n + 1) - (A197959 (n + 1) - A197958 (n + 1))

end

end A197960.P17779608782403675952

/-! ## A197960.P2304258325333705121

`A030225(n+1)-(2*A197553(n+1)-A001207(n+1)-A197959(n+1))`
-/

namespace A197960.P2304258325333705121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030225 (n + 1) - (2 * A197553 (n + 1) - A001207 (n + 1) - A197959 (n + 1))

end

end A197960.P2304258325333705121

/-! ## A197960.P15689901705563213683

`A030225(n+1)-(2*A197551(n+1)-A197549(n+1)-A197959(n+1))`
-/

namespace A197960.P15689901705563213683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030225 (n + 1) - (2 * A197551 (n + 1) - A197549 (n + 1) - A197959 (n + 1))

end

end A197960.P15689901705563213683

/-!
# A197963: Number of n X n X n 0..6 triangular arrays with each element x equal to the number of its neighbors equal to 6,0,1,0,0,0,1 for x=0,1,2,3,4,5,6.

The programs for A197963, there is no canonical definition to state claims against.
-/

/-! ## A197963.P8879139810749093507

`A043090(A070826(n+1))+comp[2*(n+1)]`
-/

namespace A197963.P8879139810749093507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043090 (A070826 (n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A197963.P8879139810749093507

/-!
# A197964: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,6,1,0,1,0,1 for x=0,1,2,3,4,5,6.

The programs for A197964, there is no canonical definition to state claims against.
-/

/-! ## A197964.P18241812405627236850

`A312053(A113144(n)-A022171(n))`
-/

namespace A197964.P18241812405627236850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312053 (A113144 n - A022171 n).toNat

end

end A197964.P18241812405627236850

/-! ## A197964.P12070062070460495814

`A004396(A059726(n)*A082500(n+1))`
-/

namespace A197964.P12070062070460495814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A059726 n * A082500 (n + 1)).toNat

end

end A197964.P12070062070460495814

/-!
# A197965: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,0,2,0,2,0,2 for x=0,1,2,3,4,5,6.

The programs for A197965, there is no canonical definition to state claims against.
-/

/-! ## A197965.P5669261469749386674

`A301720(A353548(n))-A004467(n)`
-/

namespace A197965.P5669261469749386674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301720 (A353548 n).toNat - A004467 n

end

end A197965.P5669261469749386674

/-!
# A197966: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,5,1,0,1,1,0 for x=0,1,2,3,4,5,6.

The programs for A197966, there is no canonical definition to state claims against.
-/

/-! ## A197966.P8055016112162598969

`A347186(A029759(n))`
-/

namespace A197966.P8055016112162598969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347186 (A029759 n).toNat

end

end A197966.P8055016112162598969

/-!
# A197967: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,3,1,1,0,1,0 for x=0,1,2,3,4,5,6.

The programs for A197967, there is no canonical definition to state claims against.
-/

/-! ## A197967.P15735061537079337877

`A064989(A343832(n))-A000389(n+3)`
-/

namespace A197967.P15735061537079337877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A343832 n).toNat - A000389 (n + 3)

end

end A197967.P15735061537079337877

/-!
# A197968: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,5,0,2,2,1,0 for x=0,1,2,3,4,5,6.

The programs for A197968, there is no canonical definition to state claims against.
-/

/-! ## A197968.P13328649886325338852

`A133030(a(n-1))+2+n` with `a(0)=1`
-/

namespace A197968.P13328649886325338852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A133030 (a (n - 1)).toNat + 2 + (n : ℤ)

end

end A197968.P13328649886325338852

/-!
# A197969: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,0,1,0,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A197969, there is no canonical definition to state claims against.
-/

/-! ## A197969.P18108430346303397704

`A136548((n+1)^n+n+1)+n`
-/

namespace A197969.P18108430346303397704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 ((n + 1) ^ n + (n + 1)) + (n : ℤ)

end

end A197969.P18108430346303397704

/-!
# A197970: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,5,0,2,2,0,0 for x=0,1,2,3,4,5,6.

The programs for A197970, there is no canonical definition to state claims against.
-/

/-! ## A197970.P4662282751118932629

`A297552(A148546(n+1))`
-/

namespace A197970.P4662282751118932629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297552 (A148546 (n + 1)).toNat

end

end A197970.P4662282751118932629

/-!
# A197971: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,5,1,1,1,1,0 for x=0,1,2,3,4,5,6.

The programs for A197971, there is no canonical definition to state claims against.
-/

/-! ## A197971.P16829868149742364269

`A336160(∑[gcd(n, ∑[n])]^n)`
-/

namespace A197971.P16829868149742364269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336160 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n)

end

end A197971.P16829868149742364269

/-!
# A197972: a(n) = ceiling((n+1/3)^n).

The programs for A197972, the canonical program `A197972.P17774624536170715417` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197972 has offset 1).

The definition of A197972 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1+1/3)^(n+1))` (program `A197972.P17774624536170715417`, by `A197972.P17774624536170715417.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197972.P17774624536170715417

`ceil((n+1+1/3)^(n+1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197972

/-- `ceil((n+1+1/3)^(n+1))` -/
def P17774624536170715417.Spec : Prop :=
  ∀ n, P17774624536170715417.a n = A197972 (n + 1)

theorem P17774624536170715417.correct : P17774624536170715417.Spec := by
  intro n
  simp only [A197972, Nat.add_sub_cancel]

end A197972

/-! ## A197972.P16719954773988120153

`floor((4/3+n)^(n+1))+(n%2)!`
-/

namespace A197972.P16719954773988120153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 : ℚ) / 3 + (n : ℚ)) ^ (n + 1)⌋ + (Nat.factorial (n % 2) : ℤ)

end

end A197972.P16719954773988120153

namespace A197972

/-- `floor((4/3+n)^(n+1))+(n%2)!` -/
def P16719954773988120153.Spec : Prop :=
  ∀ n, P16719954773988120153.a n = A197972 (n + 1)

end A197972

/-! ## A197972.P4945370343803072973

`floor((4/3+n)^(n+1))+floor(acot(n))!`
-/

namespace A197972.P4945370343803072973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 : ℚ) / 3 + (n : ℚ)) ^ (n + 1)⌋ + (Nat.factorial ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat : ℤ)

end

end A197972.P4945370343803072973

namespace A197972

/-- `floor((4/3+n)^(n+1))+floor(acot(n))!` -/
def P4945370343803072973.Spec : Prop :=
  ∀ n, P4945370343803072973.a n = A197972 (n + 1)

end A197972

/-! ## A197972.P9403440611557885563

`char[gcd(1-n, floor(n/2))]+floor((4/3+n)^(n+1))`
-/

namespace A197972.P9403440611557885563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌊((4 : ℚ) / 3 + (n : ℚ)) ^ (n + 1)⌋

end

end A197972.P9403440611557885563

namespace A197972

/-- `char[gcd(1-n, floor(n/2))]+floor((4/3+n)^(n+1))` -/
def P9403440611557885563.Spec : Prop :=
  ∀ n, P9403440611557885563.a n = A197972 (n + 1)

end A197972

/-! ## A197972.P8870701164478675696

`A197713(n+1)+1`
-/

namespace A197972.P8870701164478675696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197713 (n + 1) + 1

end

end A197972.P8870701164478675696

namespace A197972

/-- `A197713(n+1)+1` -/
def P8870701164478675696.Spec : Prop :=
  ∀ n, P8870701164478675696.a n = A197972 (n + 1)

end A197972

/-!
# A197973: Ceiling((n+1/4)^n).

The programs for A197973, the canonical program `A197973.P10366141748343539114` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197973 has offset 1).

The definition of A197973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1+1/4)^(n+1))` (program `A197973.P10366141748343539114`, by `A197973.P10366141748343539114.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197973.P10366141748343539114

`ceil((n+1+1/4)^(n+1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197973

/-- `ceil((n+1+1/4)^(n+1))` -/
def P10366141748343539114.Spec : Prop :=
  ∀ n, P10366141748343539114.a n = A197973 (n + 1)

theorem P10366141748343539114.correct : P10366141748343539114.Spec := by
  intro n
  simp only [A197973, Nat.add_sub_cancel]

end A197973

/-! ## A197973.P6627076624828414916

`floor((5/4+n)^(n+1))+(n%2)!`
-/

namespace A197973.P6627076624828414916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((5 : ℚ) / 4 + (n : ℚ)) ^ (n + 1)⌋ + (Nat.factorial (n % 2) : ℤ)

end

end A197973.P6627076624828414916

namespace A197973

/-- `floor((5/4+n)^(n+1))+(n%2)!` -/
def P6627076624828414916.Spec : Prop :=
  ∀ n, P6627076624828414916.a n = A197973 (n + 1)

end A197973

/-! ## A197973.P6709392819144160477

`floor((5/4+n)^(n+1))+floor(acot(n))!`
-/

namespace A197973.P6709392819144160477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((5 : ℚ) / 4 + (n : ℚ)) ^ (n + 1)⌋ + (Nat.factorial ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat : ℤ)

end

end A197973.P6709392819144160477

namespace A197973

/-- `floor((5/4+n)^(n+1))+floor(acot(n))!` -/
def P6709392819144160477.Spec : Prop :=
  ∀ n, P6709392819144160477.a n = A197973 (n + 1)

end A197973

/-! ## A197973.P1004444676363718689

`floor((5/4+n)^(n+1))+(1-and(2, n))²`
-/

namespace A197973.P1004444676363718689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((5 : ℚ) / 4 + (n : ℚ)) ^ (n + 1)⌋ + (1 - (Nat.land 2 n : ℤ)) ^ 2

end

end A197973.P1004444676363718689

namespace A197973

/-- `floor((5/4+n)^(n+1))+(1-and(2, n))²` -/
def P1004444676363718689.Spec : Prop :=
  ∀ n, P1004444676363718689.a n = A197973 (n + 1)

end A197973

/-! ## A197973.P14804564498992564556

`char[gcd(1-n, floor(n/2))]+floor((5/4+n)^(n+1))`
-/

namespace A197973.P14804564498992564556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌊((5 : ℚ) / 4 + (n : ℚ)) ^ (n + 1)⌋

end

end A197973.P14804564498992564556

namespace A197973

/-- `char[gcd(1-n, floor(n/2))]+floor((5/4+n)^(n+1))` -/
def P14804564498992564556.Spec : Prop :=
  ∀ n, P14804564498992564556.a n = A197973 (n + 1)

end A197973

/-! ## A197973.P3044683163245374327

`A197714(n+1)+1`
-/

namespace A197973.P3044683163245374327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197714 (n + 1) + 1

end

end A197973.P3044683163245374327

namespace A197973

/-- `A197714(n+1)+1` -/
def P3044683163245374327.Spec : Prop :=
  ∀ n, P3044683163245374327.a n = A197973 (n + 1)

end A197973

/-! ## A197973.P10886397666792701871

`floor((5/4+n)^(n+1))+A033999(n)²`
-/

namespace A197973.P10886397666792701871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((5 : ℚ) / 4 + (n : ℚ)) ^ (n + 1)⌋ + A033999 n ^ 2

end

end A197973.P10886397666792701871

namespace A197973

/-- `floor((5/4+n)^(n+1))+A033999(n)²` -/
def P10886397666792701871.Spec : Prop :=
  ∀ n, P10886397666792701871.a n = A197973 (n + 1)

end A197973

/-! ## A197973.P10094478009363357661

`floor((5/4+n)^(n+1))+A158387(n+1)²`
-/

namespace A197973.P10094478009363357661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((5 : ℚ) / 4 + (n : ℚ)) ^ (n + 1)⌋ + A158387 (n + 1) ^ 2

end

end A197973.P10094478009363357661

namespace A197973

/-- `floor((5/4+n)^(n+1))+A158387(n+1)²` -/
def P10094478009363357661.Spec : Prop :=
  ∀ n, P10094478009363357661.a n = A197973 (n + 1)

end A197973

/-! ## A197973.P5260751736454561366

`floor((5/4+n)^(n+1))+A343785(n+1)²`
-/

namespace A197973.P5260751736454561366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((5 : ℚ) / 4 + (n : ℚ)) ^ (n + 1)⌋ + A343785 (n + 1) ^ 2

end

end A197973.P5260751736454561366

namespace A197973

/-- `floor((5/4+n)^(n+1))+A343785(n+1)²` -/
def P5260751736454561366.Spec : Prop :=
  ∀ n, P5260751736454561366.a n = A197973 (n + 1)

end A197973

/-!
# A197974: Ceiling((n+1/5)^n).

The programs for A197974, there is no canonical definition to state claims against.
-/

/-! ## A197974.P5192642024634248338

`ceil((6/5+n)^(n+1))`
-/

namespace A197974.P5192642024634248338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((6 : ℚ) / 5 + (n : ℚ)) ^ (n + 1)⌉

end

end A197974.P5192642024634248338

/-! ## A197974.P11062642356947777722

`char[gcd(n, ∑[n])]+floor((6/5+n)^(n+1))`
-/

namespace A197974.P11062642356947777722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌊((6 : ℚ) / 5 + (n : ℚ)) ^ (n + 1)⌋

end

end A197974.P11062642356947777722

/-! ## A197974.P5646723324223541619

`floor((6/5+n)^(n+1))+abs((2*n-1)%2)`
-/

namespace A197974.P5646723324223541619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((6 : ℚ) / 5 + (n : ℚ)) ^ (n + 1)⌋ + |Int.tmod ((2 * n : ℤ) - 1) 2|

end

end A197974.P5646723324223541619

/-! ## A197974.P1725651505769707545

`A197715(n+1)+1`
-/

namespace A197974.P1725651505769707545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197715 (n + 1) + 1

end

end A197974.P1725651505769707545

/-! ## A197974.P479827476574752033

`floor((6/5+n)^(n+1))+A007318(∑[n])`
-/

namespace A197974.P479827476574752033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((6 : ℚ) / 5 + (n : ℚ)) ^ (n + 1)⌋ + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A197974.P479827476574752033

/-! ## A197974.P18012997954253979587

`A088855(val(n+1, 2)+1)+floor((6/5+n)^(n+1))`
-/

namespace A197974.P18012997954253979587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088855 (SequenceMachineLib.valuation (n + 1) 2 + 1) + ⌊((6 : ℚ) / 5 + (n : ℚ)) ^ (n + 1)⌋

end

end A197974.P18012997954253979587

/-! ## A197974.P16393363233941094589

`A001227(2^∑{e}[n+1, val((2*#)!, 2)])+floor((6/5+n)^(n+1))`
-/

namespace A197974.P16393363233941094589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (2 * Nat.factorization (f1 n) p)) 2)) + ⌊((6 : ℚ) / 5 + (n : ℚ)) ^ (n + 1)⌋

end

end A197974.P16393363233941094589

/-! ## A197974.P1473117097402477992

`A001222(A007645(n+1))+floor((6/5+n)^(n+1))`
-/

namespace A197974.P1473117097402477992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007645 (n + 1)).toNat + ⌊((6 : ℚ) / 5 + (n : ℚ)) ^ (n + 1)⌋

end

end A197974.P1473117097402477992

/-! ## A197974.P16718052475651764438

`A001222(A065091(n+1))+floor((6/5+n)^(n+1))`
-/

namespace A197974.P16718052475651764438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065091 (n + 1)).toNat + ⌊((6 : ℚ) / 5 + (n : ℚ)) ^ (n + 1)⌋

end

end A197974.P16718052475651764438

/-!
# A197975: Round((2*n+1/n)^n).

The programs for A197975, the canonical program `A197975.P5818308440204114780` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197975 has offset 1).

The definition of A197975 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((2*(n+1)+1/(n+1))^(n+1))` (program `A197975.P5818308440204114780`, by `A197975.P5818308440204114780.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197975.P5818308440204114780

`round((2*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197975

/-- `round((2*(n+1)+1/(n+1))^(n+1))` -/
def P5818308440204114780.Spec : Prop :=
  ∀ n, P5818308440204114780.a n = A197975 (n + 1)

theorem P5818308440204114780.correct : P5818308440204114780.Spec := by
  intro n
  simp only [A197975, Nat.add_sub_cancel]

end A197975

/-! ## A197975.P1765084359628688631

`A197322(n+1)+A105700(A020076(n))`
-/

namespace A197975.P1765084359628688631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197322 (n + 1) + A105700 (A020076 n).toNat

end

end A197975.P1765084359628688631

namespace A197975

/-- `A197322(n+1)+A105700(A020076(n))` -/
def P1765084359628688631.Spec : Prop :=
  ∀ n, P1765084359628688631.a n = A197975 (n + 1)

end A197975

/-! ## A197975.P15029851409921513939

`A197322(n+1)+A010051(A122835(n))`
-/

namespace A197975.P15029851409921513939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197322 (n + 1) + A010051 (A122835 n).toNat

end

end A197975.P15029851409921513939

namespace A197975

/-- `A197322(n+1)+A010051(A122835(n))` -/
def P15029851409921513939.Spec : Prop :=
  ∀ n, P15029851409921513939.a n = A197975 (n + 1)

end A197975

/-!
# A197976: Round((3*n+1/n)^n).

The programs for A197976, there is no canonical definition to state claims against.
-/

/-! ## A197976.P10106403125862486247

`A197717(n+1)-A348327(A007582(n))`
-/

namespace A197976.P10106403125862486247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197717 (n + 1) - A348327 (A007582 n).toNat

end

end A197976.P10106403125862486247

/-! ## A197976.P13753184628796463618

`A197717(n+1)-A266514(A302518(n+1))`
-/

namespace A197976.P13753184628796463618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197717 (n + 1) - A266514 (A302518 (n + 1)).toNat

end

end A197976.P13753184628796463618

/-! ## A197976.P16412046769216009426

`A267417(A109863(n+1))+A197323(n+1)`
-/

namespace A197976.P16412046769216009426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 (A109863 (n + 1)).toNat + A197323 (n + 1)

end

end A197976.P16412046769216009426

/-! ## A197976.P10368417496950400615

`A197717(n+1)-A054521(A067333(n+4))`
-/

namespace A197976.P10368417496950400615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197717 (n + 1) - A054521 (A067333 (n + 4)).toNat

end

end A197976.P10368417496950400615

/-!
# A197977: Round((4*n+1/n)^n).

The programs for A197977, the canonical program `A197977.P7377913145028205284` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197977 has offset 1).

The definition of A197977 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((4*(n+1)+1/(n+1))^(n+1))` (program `A197977.P7377913145028205284`, by `A197977.P7377913145028205284.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197977.P7377913145028205284

`round((4*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197977

/-- `round((4*(n+1)+1/(n+1))^(n+1))` -/
def P7377913145028205284.Spec : Prop :=
  ∀ n, P7377913145028205284.a n = A197977 (n + 1)

theorem P7377913145028205284.correct : P7377913145028205284.Spec := by
  intro n
  simp only [A197977, Nat.add_sub_cancel]

end A197977

/-! ## A197977.P2649660827946863661

`A197324(n+1)+A064911(A336012(n))`
-/

namespace A197977.P2649660827946863661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197324 (n + 1) + A064911 (A336012 n).toNat

end

end A197977.P2649660827946863661

namespace A197977

/-- `A197324(n+1)+A064911(A336012(n))` -/
def P2649660827946863661.Spec : Prop :=
  ∀ n, P2649660827946863661.a n = A197977 (n + 1)

end A197977

/-! ## A197977.P16296576679457217875

`or(A197324(n+1), A285133(A212232(n+1)))`
-/

namespace A197977.P16296576679457217875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A197324 (n + 1)) (A285133 (A212232 (n + 1)).toNat)

end

end A197977.P16296576679457217875

namespace A197977

/-- `or(A197324(n+1), A285133(A212232(n+1)))` -/
def P16296576679457217875.Spec : Prop :=
  ∀ n, P16296576679457217875.a n = A197977 (n + 1)

end A197977

/-! ## A197977.P15327970746074686281

`A285133(A285133(n+1)+A212232(n+1))+A197324(n+1)`
-/

namespace A197977.P15327970746074686281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285133 (A285133 (n + 1) + A212232 (n + 1)).toNat + A197324 (n + 1)

end

end A197977.P15327970746074686281

namespace A197977

/-- `A285133(A285133(n+1)+A212232(n+1))+A197324(n+1)` -/
def P15327970746074686281.Spec : Prop :=
  ∀ n, P15327970746074686281.a n = A197977 (n + 1)

end A197977

/-! ## A197977.P18167703858194916710

`A064911(A075834(n))+floor((1/(n+1)+4*(n+1))^(n+1))`
-/

namespace A197977.P18167703858194916710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A075834 n).toNat + ⌊(1 / (n + 1 : ℚ) + (4 * (n + 1) : ℚ)) ^ (n + 1)⌋

end

end A197977.P18167703858194916710

namespace A197977

/-- `A064911(A075834(n))+floor((1/(n+1)+4*(n+1))^(n+1))` -/
def P18167703858194916710.Spec : Prop :=
  ∀ n, P18167703858194916710.a n = A197977 (n + 1)

end A197977

/-!
# A197978: a(n) = round((5*n+1/n)^n).

The programs for A197978, there is no canonical definition to state claims against.
-/

/-! ## A197978.P4817251837694814438

`A197325(n+1)-A014033(A014006(n))`
-/

namespace A197978.P4817251837694814438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197325 (n + 1) - A014033 (A014006 n).toNat

end

end A197978.P4817251837694814438

/-! ## A197978.P1354801521684617979

`A197765(n+1)-(A057427(n)+A014033(A014006(n)))`
-/

namespace A197978.P1354801521684617979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197765 (n + 1) - (A057427 n + A014033 (A014006 n).toNat)

end

end A197978.P1354801521684617979

/-! ## A197978.P9440441212389450137

`A295883(A213284(n+1))+floor((1/(n+1)+5*(n+1))^(n+1))`
-/

namespace A197978.P9440441212389450137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (A213284 (n + 1)).toNat + ⌊(1 / (n + 1 : ℚ) + (5 * (n + 1) : ℚ)) ^ (n + 1)⌋

end

end A197978.P9440441212389450137

/-! ## A197978.P16157212687395262073

`A295883(A007052(n))+A197325(n+1)`
-/

namespace A197978.P16157212687395262073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (A007052 n).toNat + A197325 (n + 1)

end

end A197978.P16157212687395262073

/-! ## A197978.P7470843189482505122

`A295883(A007052(n))+A197765(n+1)-n²%(n+1)`
-/

namespace A197978.P7470843189482505122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (A007052 n).toNat + (A197765 (n + 1) - ((n ^ 2 % (n + 1) : ℕ) : ℤ))

end

end A197978.P7470843189482505122

/-!
# A197979: a(n) = round((6*n+1/n)^n).

The programs for A197979, there is no canonical definition to state claims against.
-/

/-! ## A197979.P8258490575527185915

`A197595(n+1)+A122841(A181734(n))`
-/

namespace A197979.P8258490575527185915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197595 (n + 1) + A122841 (A181734 n).toNat

end

end A197979.P8258490575527185915

/-! ## A197979.P10590134496908770735

`A197595(n+1)+A123740(A002026(n+3))`
-/

namespace A197979.P10590134496908770735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197595 (n + 1) + A123740 (A002026 (n + 3)).toNat

end

end A197979.P10590134496908770735

/-!
# A197980: a(n) = round((7*n+1/n)^n).

The programs for A197980, the canonical program `A197980.P16246281670575914632` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197980 has offset 1).

The definition of A197980 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((7*(n+1)+1/(n+1))^(n+1))` (program `A197980.P16246281670575914632`, by `A197980.P16246281670575914632.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197980.P16246281670575914632

`round((7*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197980

/-- `round((7*(n+1)+1/(n+1))^(n+1))` -/
def P16246281670575914632.Spec : Prop :=
  ∀ n, P16246281670575914632.a n = A197980 (n + 1)

theorem P16246281670575914632.correct : P16246281670575914632.Spec := by
  intro n
  simp only [A197980, Nat.add_sub_cancel]

end A197980

/-! ## A197980.P10756844674798107743

`A341591(A001710(n))+A197596(n+1)`
-/

namespace A197980.P10756844674798107743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341591 (A001710 n).toNat + A197596 (n + 1)

end

end A197980.P10756844674798107743

namespace A197980

/-- `A341591(A001710(n))+A197596(n+1)` -/
def P10756844674798107743.Spec : Prop :=
  ∀ n, P10756844674798107743.a n = A197980 (n + 1)

end A197980

/-! ## A197980.P9158987130816471798

`A197596(n+1)+A188300(A197551(n+1))`
-/

namespace A197980.P9158987130816471798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197596 (n + 1) + A188300 (A197551 (n + 1)).toNat

end

end A197980.P9158987130816471798

namespace A197980

/-- `A197596(n+1)+A188300(A197551(n+1))` -/
def P9158987130816471798.Spec : Prop :=
  ∀ n, P9158987130816471798.a n = A197980 (n + 1)

end A197980

/-! ## A197980.P17248108113586685798

`A197596(n+1)+A188436(A197549(n+1))`
-/

namespace A197980.P17248108113586685798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197596 (n + 1) + A188436 (A197549 (n + 1)).toNat

end

end A197980.P17248108113586685798

namespace A197980

/-- `A197596(n+1)+A188436(A197549(n+1))` -/
def P17248108113586685798.Spec : Prop :=
  ∀ n, P17248108113586685798.a n = A197980 (n + 1)

end A197980

/-!
# A197981: Round((8*n+1/n)^n).

The programs for A197981, the canonical program `A197981.P17835569915023426754` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197981 has offset 1).

The definition of A197981 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((8*(n+1)+1/(n+1))^(n+1))` (program `A197981.P17835569915023426754`, by `A197981.P17835569915023426754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197981.P17835569915023426754

`round((8*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197981

/-- `round((8*(n+1)+1/(n+1))^(n+1))` -/
def P17835569915023426754.Spec : Prop :=
  ∀ n, P17835569915023426754.a n = A197981 (n + 1)

theorem P17835569915023426754.correct : P17835569915023426754.Spec := by
  intro n
  simp only [A197981, Nat.add_sub_cancel]

end A197981

/-! ## A197981.P15281866097150028218

`A340370(A197601(n))+A197597(n+1)`
-/

namespace A197981.P15281866097150028218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340370 (A197601 n).toNat + A197597 (n + 1)

end

end A197981.P15281866097150028218

namespace A197981

/-- `A340370(A197601(n))+A197597(n+1)` -/
def P15281866097150028218.Spec : Prop :=
  ∀ n, P15281866097150028218.a n = A197981 (n + 1)

end A197981

/-! ## A197981.P734214485426400232

`A340370(A197601(n))+A197768(n+1)-n²%(n+1)`
-/

namespace A197981.P734214485426400232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340370 (A197601 n).toNat + (A197768 (n + 1) - ((n ^ 2 % (n + 1) : ℕ) : ℤ))

end

end A197981.P734214485426400232

namespace A197981

/-- `A340370(A197601(n))+A197768(n+1)-n²%(n+1)` -/
def P734214485426400232.Spec : Prop :=
  ∀ n, P734214485426400232.a n = A197981 (n + 1)

end A197981

/-! ## A197981.P11455959245416463964

`A340370(A197601(n))+A197768(n+1)-A057427(n)`
-/

namespace A197981.P11455959245416463964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340370 (A197601 n).toNat + (A197768 (n + 1) - A057427 n)

end

end A197981.P11455959245416463964

namespace A197981

/-- `A340370(A197601(n))+A197768(n+1)-A057427(n)` -/
def P11455959245416463964.Spec : Prop :=
  ∀ n, P11455959245416463964.a n = A197981 (n + 1)

end A197981

/-! ## A197981.P8132064965351399572

`A268643(A005540(2*n+3))+A197597(n+1)`
-/

namespace A197981.P8132064965351399572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A005540 (2 * n + 3)).toNat + A197597 (n + 1)

end

end A197981.P8132064965351399572

namespace A197981

/-- `A268643(A005540(2*n+3))+A197597(n+1)` -/
def P8132064965351399572.Spec : Prop :=
  ∀ n, P8132064965351399572.a n = A197981 (n + 1)

end A197981

/-!
# A197982: a(n) = round((9*n+1/n)^n).

The programs for A197982, the canonical program `A197982.P10917424134004965066` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197982 has offset 1).

The definition of A197982 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((9*(n+1)+1/(n+1))^(n+1))` (program `A197982.P10917424134004965066`, by `A197982.P10917424134004965066.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197982.P10917424134004965066

`round((9*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197982

/-- `round((9*(n+1)+1/(n+1))^(n+1))` -/
def P10917424134004965066.Spec : Prop :=
  ∀ n, P10917424134004965066.a n = A197982 (n + 1)

theorem P10917424134004965066.correct : P10917424134004965066.Spec := by
  intro n
  simp only [A197982, Nat.add_sub_cancel]

end A197982

/-! ## A197982.P5935997751525212582

`A340370(A197601(n))+A197598(n+1)`
-/

namespace A197982.P5935997751525212582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340370 (A197601 n).toNat + A197598 (n + 1)

end

end A197982.P5935997751525212582

namespace A197982

/-- `A340370(A197601(n))+A197598(n+1)` -/
def P5935997751525212582.Spec : Prop :=
  ∀ n, P5935997751525212582.a n = A197982 (n + 1)

end A197982

/-! ## A197982.P12319649556837877936

`A197598(n+1)+A014030(A347391(n+1))`
-/

namespace A197982.P12319649556837877936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197598 (n + 1) + A014030 (A347391 (n + 1)).toNat

end

end A197982.P12319649556837877936

namespace A197982

/-- `A197598(n+1)+A014030(A347391(n+1))` -/
def P12319649556837877936.Spec : Prop :=
  ∀ n, P12319649556837877936.a n = A197982 (n + 1)

end A197982

/-! ## A197982.P13949919187428269605

`A340370(A197601(n))+A197769(n+1)-n²%(n+1)`
-/

namespace A197982.P13949919187428269605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340370 (A197601 n).toNat + (A197769 (n + 1) - ((n ^ 2 % (n + 1) : ℕ) : ℤ))

end

end A197982.P13949919187428269605

namespace A197982

/-- `A340370(A197601(n))+A197769(n+1)-n²%(n+1)` -/
def P13949919187428269605.Spec : Prop :=
  ∀ n, P13949919187428269605.a n = A197982 (n + 1)

end A197982

/-!
# A197983: Round((10*n+1/n)^n).

The programs for A197983, the canonical program `A197983.P11857098639274395040` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197983 has offset 1).

The definition of A197983 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((10*(n+1)+1/(n+1))^(n+1))` (program `A197983.P11857098639274395040`, by `A197983.P11857098639274395040.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197983.P11857098639274395040

`round((10*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197983

/-- `round((10*(n+1)+1/(n+1))^(n+1))` -/
def P11857098639274395040.Spec : Prop :=
  ∀ n, P11857098639274395040.a n = A197983 (n + 1)

theorem P11857098639274395040.correct : P11857098639274395040.Spec := by
  intro n
  simp only [A197983, Nat.add_sub_cancel]

end A197983

/-! ## A197983.P15629927320097302681

`A197599(n+1)+A025426(A075834(n))`
-/

namespace A197983.P15629927320097302681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197599 (n + 1) + A025426 (A075834 n).toNat

end

end A197983.P15629927320097302681

namespace A197983

/-- `A197599(n+1)+A025426(A075834(n))` -/
def P15629927320097302681.Spec : Prop :=
  ∀ n, P15629927320097302681.a n = A197983 (n + 1)

end A197983

/-! ## A197983.P171727345553176349

`A197599(n+1)+A059841(A148832(n))`
-/

namespace A197983.P171727345553176349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197599 (n + 1) + A059841 (A148832 n).toNat

end

end A197983.P171727345553176349

namespace A197983

/-- `A197599(n+1)+A059841(A148832(n))` -/
def P171727345553176349.Spec : Prop :=
  ∀ n, P171727345553176349.a n = A197983 (n + 1)

end A197983

/-! ## A197983.P4569070946193191566

`A197770(n+1)-A000035(A197603(n+1))`
-/

namespace A197983.P4569070946193191566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197770 (n + 1) - A000035 (A197603 (n + 1)).toNat

end

end A197983.P4569070946193191566

namespace A197983

/-- `A197770(n+1)-A000035(A197603(n+1))` -/
def P4569070946193191566.Spec : Prop :=
  ∀ n, P4569070946193191566.a n = A197983 (n + 1)

end A197983

/-! ## A197983.P810760280814264847

`A059841(A148832(n))+A197770(n+1)-n²%(n+1)`
-/

namespace A197983.P810760280814264847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A148832 n).toNat + (A197770 (n + 1) - ((n ^ 2 % (n + 1) : ℕ) : ℤ))

end

end A197983.P810760280814264847

namespace A197983

/-- `A059841(A148832(n))+A197770(n+1)-n²%(n+1)` -/
def P810760280814264847.Spec : Prop :=
  ∀ n, P810760280814264847.a n = A197983 (n + 1)

end A197983

/-!
# A197984: Round((11*n+1/n)^n).

The programs for A197984, there is no canonical definition to state claims against.
-/

/-! ## A197984.P17030389440991433825

`or(A197600(n+1), A331902(A018738(n+1)))`
-/

namespace A197984.P17030389440991433825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A197600 (n + 1)) (A331902 (A018738 (n + 1)).toNat)

end

end A197984.P17030389440991433825

/-! ## A197984.P12298268452006568696

`A197600(n+1)+A010051(A262480(n))`
-/

namespace A197984.P12298268452006568696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197600 (n + 1) + A010051 (A262480 n).toNat

end

end A197984.P12298268452006568696

/-! ## A197984.P8534875230132521069

`or(A197600(n+1), A209229(A124325(n)))`
-/

namespace A197984.P8534875230132521069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A197600 (n + 1)) (A209229 (A124325 n).toNat)

end

end A197984.P8534875230132521069

/-! ## A197984.P15249875848986930909

`A197600(n+1)+A010815(A001006(n+3))`
-/

namespace A197984.P15249875848986930909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197600 (n + 1) + A010815 (A001006 (n + 3)).toNat

end

end A197984.P15249875848986930909

/-!
# A197985: a(n) = round((n+1/n)^2).

The programs for A197985, the canonical program `A197985.P2681247154441205675` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197985 has offset 1).

The definition of A197985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((n+1+1/(n+1))²)` (program `A197985.P2681247154441205675`, by `A197985.P2681247154441205675.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197985.P8743242965066051140

`floor((n+1+1/(n+1))²)`
-/

namespace A197985.P8743242965066051140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℚ) + 1 / (n + 1 : ℚ)) ^ 2⌋

end

end A197985.P8743242965066051140

namespace A197985

/-- `floor((n+1+1/(n+1))²)` -/
def P8743242965066051140.Spec : Prop :=
  ∀ n, P8743242965066051140.a n = A197985 (n + 1)

end A197985

/-! ## A197985.P2681247154441205675

`round((n+1+1/(n+1))²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197985

/-- `round((n+1+1/(n+1))²)` -/
def P2681247154441205675.Spec : Prop :=
  ∀ n, P2681247154441205675.a n = A197985 (n + 1)

theorem P2681247154441205675.correct : P2681247154441205675.Spec := by
  intro n
  simp only [A197985, Nat.add_sub_cancel]

end A197985

/-! ## A197985.P1819641697462684937

`a(n-1)+2*(n+1)-1` with `a(0)=4, a(1)=6`
-/

namespace A197985.P1819641697462684937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  a (n - 1) + (2 * (n + 1) : ℤ) - 1

end

end A197985.P1819641697462684937

namespace A197985

/-- `a(n-1)+2*(n+1)-1` -/
def P1819641697462684937.Spec : Prop :=
  ∀ n, P1819641697462684937.a n = A197985 (n + 1)

end A197985

/-! ## A197985.P14033071921586076217

`record[abs(1-n²)+3]`
-/

namespace A197985.P14033071921586076217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n ^ 2 : ℤ)| + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197985.P14033071921586076217

namespace A197985

/-- `record[abs(1-n²)+3]` -/
def P14033071921586076217.Spec : Prop :=
  ∀ n, P14033071921586076217.a n = A197985 (n + 1)

end A197985

/-! ## A197985.P10355435640077048250

`floor((n+2)/acot(n))+3`
-/

namespace A197985.P10355435640077048250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋ + 3

end

end A197985.P10355435640077048250

namespace A197985

/-- `floor((n+2)/acot(n))+3` -/
def P10355435640077048250.Spec : Prop :=
  ∀ n, P10355435640077048250.a n = A197985 (n + 1)

end A197985

/-! ## A197985.P4565026266842086044

`ceil((n+2)/acot(n))+2`
-/

namespace A197985.P4565026266842086044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌉ + 2

end

end A197985.P4565026266842086044

namespace A197985

/-- `ceil((n+2)/acot(n))+2` -/
def P4565026266842086044.Spec : Prop :=
  ∀ n, P4565026266842086044.a n = A197985 (n + 1)

end A197985

/-! ## A197985.P12897914296415122895

`∑[a(n-1)+2]` with `a(0)=4, a(1)=2, a(2)=5`
-/

namespace A197985.P12897914296415122895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 5] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197985.P12897914296415122895

namespace A197985

/-- `∑[a(n-1)+2]` -/
def P12897914296415122895.Spec : Prop :=
  ∀ n, (P12897914296415122895.a n : ℤ) = A197985 (n + 1)

end A197985

/-! ## A197985.P7145148950664823379

`Δ[n²]+a(n-1)` with `a(0)=4, a(1)=6`
-/

namespace A197985.P7145148950664823379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1)

end

end A197985.P7145148950664823379

namespace A197985

/-- `Δ[n²]+a(n-1)` -/
def P7145148950664823379.Spec : Prop :=
  ∀ n, P7145148950664823379.a n = A197985 (n + 1)

end A197985

/-! ## A197985.P4786906831715223075

`∑[xor(1, round(2/acot(n)))]+4`
-/

namespace A197985.P4786906831715223075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A197985.P4786906831715223075

namespace A197985

/-- `∑[xor(1, round(2/acot(n)))]+4` -/
def P4786906831715223075.Spec : Prop :=
  ∀ n, P4786906831715223075.a n = A197985 (n + 1)

end A197985

/-! ## A197985.P10010718567320713242

`ceil((n+1)²+acot(n)+1)`
-/

namespace A197985.P10010718567320713242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℝ) + (SequenceMachineLib.acot (n : ℝ) + 1)⌉

end

end A197985.P10010718567320713242

namespace A197985

/-- `ceil((n+1)²+acot(n)+1)` -/
def P10010718567320713242.Spec : Prop :=
  ∀ n, P10010718567320713242.a n = A197985 (n + 1)

end A197985

/-! ## A197985.P14735817562984876815

`(n+1)²+floor(acot(n))+2`
-/

namespace A197985.P14735817562984876815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 2)

end

end A197985.P14735817562984876815

namespace A197985

/-- `(n+1)²+floor(acot(n))+2` -/
def P14735817562984876815.Spec : Prop :=
  ∀ n, P14735817562984876815.a n = A197985 (n + 1)

end A197985

/-! ## A197985.P3655938761004477444

`∑[ogf((4-6x+5x^2-x^3)/(1-2x+x^2))]`
-/

namespace A197985.P3655938761004477444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6, 5, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197985.P3655938761004477444

namespace A197985

/-- `∑[ogf((4-6x+5x^2-x^3)/(1-2x+x^2))]` -/
def P3655938761004477444.Spec : Prop :=
  ∀ n, P3655938761004477444.a n = A197985 (n + 1)

end A197985

/-! ## A197985.P13564146816244614089

`ogf((4-6x+5x^2-x^3)/(1-3x+3x^2-x^3))`
-/

namespace A197985.P13564146816244614089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6, 5, -1] [1, -3, 3, -1] n

end

end A197985.P13564146816244614089

namespace A197985

/-- `ogf((4-6x+5x^2-x^3)/(1-3x+3x^2-x^3))` -/
def P13564146816244614089.Spec : Prop :=
  ∀ n, P13564146816244614089.a n = A197985 (n + 1)

end A197985

/-! ## A197985.P228149086504230257

`or(1, a(n-1)+n)+n` with `a(0)=4`
-/

namespace A197985.P228149086504230257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.lor 1 (a (n - 1) + n) + n

end

end A197985.P228149086504230257

namespace A197985

/-- `or(1, a(n-1)+n)+n` -/
def P228149086504230257.Spec : Prop :=
  ∀ n, (P228149086504230257.a n : ℤ) = A197985 (n + 1)

end A197985

/-! ## A197985.P3300781024671464316

`record[abs((n+1)*(n-1))]+3`
-/

namespace A197985.P3300781024671464316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * ((n : ℤ) - 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3

end

end A197985.P3300781024671464316

namespace A197985

/-- `record[abs((n+1)*(n-1))]+3` -/
def P3300781024671464316.Spec : Prop :=
  ∀ n, P3300781024671464316.a n = A197985 (n + 1)

end A197985

/-! ## A197985.P12682024592025229225

`(n+2)²-record[xor(1, n+1)]`
-/

namespace A197985.P12682024592025229225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A197985.P12682024592025229225

namespace A197985

/-- `(n+2)²-record[xor(1, n+1)]` -/
def P12682024592025229225.Spec : Prop :=
  ∀ n, P12682024592025229225.a n = A197985 (n + 1)

end A197985

/-! ## A197985.P6405862788394297720

`2*n+a(n-1)+1` with `a(0)=4, a(1)=6`
-/

namespace A197985.P6405862788394297720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 6] fun n a =>
  2 * n + (a (n - 1) + 1)

end

end A197985.P6405862788394297720

namespace A197985

/-- `2*n+a(n-1)+1` -/
def P6405862788394297720.Spec : Prop :=
  ∀ n, (P6405862788394297720.a n : ℤ) = A197985 (n + 1)

end A197985

/-! ## A197985.P730541053944553961

`∑[4*n-a(n-1)]` with `a(0)=4, a(1)=2, a(2)=5`
-/

namespace A197985.P730541053944553961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2, 5] fun n f1 =>
  (4 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197985.P730541053944553961

namespace A197985

/-- `∑[4*n-a(n-1)]` -/
def P730541053944553961.Spec : Prop :=
  ∀ n, P730541053944553961.a n = A197985 (n + 1)

end A197985

/-! ## A197985.P177798566165337253

`C(2, n+2)+2+(n+1)²`
-/

namespace A197985.P177798566165337253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + 2 + (n + 1) ^ 2

end

end A197985.P177798566165337253

namespace A197985

/-- `C(2, n+2)+2+(n+1)²` -/
def P177798566165337253.Spec : Prop :=
  ∀ n, (P177798566165337253.a n : ℤ) = A197985 (n + 1)

end A197985

/-! ## A197985.P10018378507384774649

`a(n-1)+1+n+n` with `a(0)=4, a(1)=6`
-/

namespace A197985.P10018378507384774649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 6] fun n a =>
  a (n - 1) + 1 + n + n

end

end A197985.P10018378507384774649

namespace A197985

/-- `a(n-1)+1+n+n` -/
def P10018378507384774649.Spec : Prop :=
  ∀ n, (P10018378507384774649.a n : ℤ) = A197985 (n + 1)

end A197985

/-!
# A197986: a(n) = round((n+1/n)^3).

The programs for A197986, the canonical program `A197986.P7405489374195420515` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197986 has offset 1).

The definition of A197986 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((n+1+1/(n+1))^3)` (program `A197986.P7405489374195420515`, by `A197986.P7405489374195420515.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197986.P7405489374195420515

`round((n+1+1/(n+1))^3)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A197986

/-- `round((n+1+1/(n+1))^3)` -/
def P7405489374195420515.Spec : Prop :=
  ∀ n, P7405489374195420515.a n = A197986 (n + 1)

theorem P7405489374195420515.correct : P7405489374195420515.Spec := by
  intro n
  simp only [A197986, Nat.add_sub_cancel]

end A197986

/-! ## A197986.P5356406617332872387

`floor(A197605(n+1)/A197602(n+1))`
-/

namespace A197986.P5356406617332872387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A197605 (n + 1) : ℚ) / (A197602 (n + 1) : ℚ)⌋

end

end A197986.P5356406617332872387

namespace A197986

/-- `floor(A197605(n+1)/A197602(n+1))` -/
def P5356406617332872387.Spec : Prop :=
  ∀ n, P5356406617332872387.a n = A197986 (n + 1)

end A197986

/-! ## A197986.P11896862019144245699

`floor(A197905(n+1)/A197602(n+1))`
-/

namespace A197986.P11896862019144245699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A197905 (n + 1) : ℚ) / (A197602 (n + 1) : ℚ)⌋

end

end A197986.P11896862019144245699

namespace A197986

/-- `floor(A197905(n+1)/A197602(n+1))` -/
def P11896862019144245699.Spec : Prop :=
  ∀ n, P11896862019144245699.a n = A197986 (n + 1)

end A197986

/-! ## A197986.P10149582816041758341

`ceil(A197605(n+1)/A197773(n+1))`
-/

namespace A197986.P10149582816041758341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A197605 (n + 1) : ℚ) / (A197773 (n + 1) : ℚ)⌉

end

end A197986.P10149582816041758341

namespace A197986

/-- `ceil(A197605(n+1)/A197773(n+1))` -/
def P10149582816041758341.Spec : Prop :=
  ∀ n, P10149582816041758341.a n = A197986 (n + 1)

end A197986

/-! ## A197986.P477083833851062536

`round(sqrt(A197905(n+1)))%A168304(n+5)`
-/

namespace A197986.P477083833851062536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A197905 (n + 1) : ℝ))) (A168304 (n + 5))

end

end A197986.P477083833851062536

namespace A197986

/-- `round(sqrt(A197905(n+1)))%A168304(n+5)` -/
def P477083833851062536.Spec : Prop :=
  ∀ n, P477083833851062536.a n = A197986 (n + 1)

end A197986

/-! ## A197986.P16475594938488594477

`A000027(round(sqrt(A197905(n+1))))`
-/

namespace A197986.P16475594938488594477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A197905 (n + 1) : ℝ))).toNat

end

end A197986.P16475594938488594477

namespace A197986

/-- `A000027(round(sqrt(A197905(n+1))))` -/
def P16475594938488594477.Spec : Prop :=
  ∀ n, P16475594938488594477.a n = A197986 (n + 1)

end A197986

/-!
# A197987: a(n) = prime(n)^(n+1).

The programs for A197987, the canonical program `A197987.P9703799290314520004` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197987 has offset 1).

The definition of A197987 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A197987.P9703799290314520004

`A000040(n+1)^(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A197987

/-- `A000040(n+1)^(n+2)` -/
def P9703799290314520004.Spec : Prop :=
  ∀ n, P9703799290314520004.a n = A197987 (n + 1)

theorem P9703799290314520004.correct : P9703799290314520004.Spec := by
  intro n
  simp only [A197987, Nat.add_sub_cancel]

end A197987

/-! ## A197987.P474105901780196725

`p?[comp[n²]]^(n+2)`
-/

namespace A197987.P474105901780196725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ (n + 2)

end

end A197987.P474105901780196725

namespace A197987

/-- `p?[comp[n²]]^(n+2)` -/
def P474105901780196725.Spec : Prop :=
  ∀ n, (P474105901780196725.a n : ℤ) = A197987 (n + 1)

end A197987

/-! ## A197987.P8577792062281499166

`eq[1, ∑{e}[n, #]]^(n+2)`
-/

namespace A197987.P8577792062281499166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ (n + 2)

end

end A197987.P8577792062281499166

namespace A197987

/-- `eq[1, ∑{e}[n, #]]^(n+2)` -/
def P8577792062281499166.Spec : Prop :=
  ∀ n, (P8577792062281499166.a n : ℤ) = A197987 (n + 1)

end A197987

/-! ## A197987.P15843707953013041466

`record[∑{p}[n+2, #]]^(n+2)`
-/

namespace A197987.P15843707953013041466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ (n + 2)

end

end A197987.P15843707953013041466

namespace A197987

/-- `record[∑{p}[n+2, #]]^(n+2)` -/
def P15843707953013041466.Spec : Prop :=
  ∀ n, (P15843707953013041466.a n : ℤ) = A197987 (n + 1)

end A197987

/-! ## A197987.P5746336513630191301

`eq[2, ∏{e}[n², #]]^(n+2)`
-/

namespace A197987.P5746336513630191301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ (n + 2)

end

end A197987.P5746336513630191301

namespace A197987

/-- `eq[2, ∏{e}[n², #]]^(n+2)` -/
def P5746336513630191301.Spec : Prop :=
  ∀ n, (P5746336513630191301.a n : ℤ) = A197987 (n + 1)

end A197987

/-!
# A197988: Number of isomorphism classes of nanocones with 3 pentagons and a symmetric boundary of length n.

The programs for A197988, there is no canonical definition to state claims against.
-/

/-! ## A197988.P12862412412515363214

`A065033(A275580(2*n))+A026741(n)`
-/

namespace A197988.P12862412412515363214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A275580 (2 * n)).toNat + A026741 n

end

end A197988.P12862412412515363214

/-! ## A197988.P6225193242249754973

`A065033(A275580(2*n))+gcd(n, A000096(n))`
-/

namespace A197988.P6225193242249754973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A275580 (2 * n)).toNat + (Int.gcd (n : ℤ) (A000096 n) : ℤ)

end

end A197988.P6225193242249754973

/-! ## A197988.P5846785557341335518

`A219901(n+1)+A008620(n)`
-/

namespace A197988.P5846785557341335518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219901 (n + 1) + A008620 n

end

end A197988.P5846785557341335518

/-! ## A197988.P17825212015563818679

`A261916(n+1)+A219901(n+1)`
-/

namespace A197988.P17825212015563818679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261916 (n + 1) + A219901 (n + 1)

end

end A197988.P17825212015563818679

/-! ## A197988.P2934690551550120383

`A296357(n+1)+A219901(n+1)`
-/

namespace A197988.P2934690551550120383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296357 (n + 1) + A219901 (n + 1)

end

end A197988.P2934690551550120383

/-!
# A197990: Number of binary arrangements of total n 1's, without adjacent 1's on n X n torus connected n-s.

The programs for A197990, there is no canonical definition to state claims against.
-/

/-! ## A197990.P9336203906337346982

`A189462(∏[n!])`
-/

namespace A197990.P9336203906337346982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189462 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A197990.P9336203906337346982

/-!
# A197993: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,5,2,0,0,0,2 for x=0,1,2,3,4,5,6.

The programs for A197993, there is no canonical definition to state claims against.
-/

/-! ## A197993.P6755029367488122585

`A329152(A219670(n)+1)+n+1`
-/

namespace A197993.P6755029367488122585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329152 (A219670 n + 1).toNat + (n + 1 : ℤ)

end

end A197993.P6755029367488122585

/-!
# A197994: Number of n X n X n 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,4,2,0,1,0,2 for x=0,1,2,3,4,5,6.

The programs for A197994, there is no canonical definition to state claims against.
-/

/-! ## A197994.P5395944517874568353

`A358405(A005366(n))+A005366(n)`
-/

namespace A197994.P5395944517874568353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358405 (A005366 n).toNat + A005366 n

end

end A197994.P5395944517874568353

/-!
# A197996: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,5,2,2,0,1,2 for x=0,1,2,3,4,5,6.

The programs for A197996, there is no canonical definition to state claims against.
-/

/-! ## A197996.P14886466468346245123

`A171715(∑[∑{d}[n, #]^n])`
-/

namespace A197996.P14886466468346245123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), d) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171715 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A197996.P14886466468346245123

/-!
# A197997: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,3,0,1,2,0,0 for x=0,1,2,3,4,5,6.

The programs for A197997, there is no canonical definition to state claims against.
-/

/-! ## A197997.P13546743510906545793

`A372281(A394307(n+1))`
-/

namespace A197997.P13546743510906545793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372281 (A394307 (n + 1)).toNat

end

end A197997.P13546743510906545793

/-!
# A197998: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,3,1,1,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A197998, there is no canonical definition to state claims against.
-/

/-! ## A197998.P16421753724103918776

`A311801(C(A126930(n)², 2))`
-/

namespace A197998.P16421753724103918776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311801 (Nat.choose (A126930 n ^ 2).toNat 2)

end

end A197998.P16421753724103918776

/-!
# A197999: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,0,1,0,0,1,1 for x=0,1,2,3,4,5,6.

The programs for A197999, there is no canonical definition to state claims against.
-/

/-! ## A197999.P1721983744879053399

`A129304(Δ[∏[A135681(n+1)]])`
-/

namespace A197999.P1721983744879053399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135681 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129304 (f1 (n + 1) - f1 n).toNat

end

end A197999.P1721983744879053399

