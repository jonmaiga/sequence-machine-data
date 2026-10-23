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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B013.C000
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
import Seq.Opaque.C025

/-!
# A204200: INVERT transform of [1, 0, 1, 3, 9, 27, 81, ...].

The programs for A204200, the canonical program `A204200.P4868367341528002322` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204200 has offset 1).

The definition of A204200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204200.P4868367341528002322

`4*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204200

/-- `4*a(n-1)-3*a(n-2)+a(n-3)` -/
def P4868367341528002322.Spec : Prop :=
  ∀ n, P4868367341528002322.a n = A204200 (n + 1)

theorem P4868367341528002322.correct : P4868367341528002322.Spec := by
  intro n
  simp only [A204200, Nat.add_sub_cancel]

end A204200

/-! ## A204200.P8868298664988782261

`ogf((1-3x+x^2)/(1-4x+3x^2-x^3))`
-/

namespace A204200.P8868298664988782261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 1] [1, -4, 3, -1] n

end

end A204200.P8868298664988782261

namespace A204200

/-- `ogf((1-3x+x^2)/(1-4x+3x^2-x^3))` -/
def P8868298664988782261.Spec : Prop :=
  ∀ n, P8868298664988782261.a n = A204200 (n + 1)

end A204200

/-! ## A204200.P17360005371016764248

`A078012(3*n)`
-/

namespace A204200.P17360005371016764248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (3 * n)

end

end A204200.P17360005371016764248

namespace A204200

/-- `A078012(3*n)` -/
def P17360005371016764248.Spec : Prop :=
  ∀ n, P17360005371016764248.a n = A204200 (n + 1)

end A204200

/-! ## A204200.P6617963535304922525

`A135851(3*n+2)`
-/

namespace A204200.P6617963535304922525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (3 * n + 2)

end

end A204200.P6617963535304922525

namespace A204200

/-- `A135851(3*n+2)` -/
def P6617963535304922525.Spec : Prop :=
  ∀ n, P6617963535304922525.a n = A204200 (n + 1)

end A204200

/-! ## A204200.P7932389602920171183

`A052544((n-1)%(n+1))`
-/

namespace A204200.P7932389602920171183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052544 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A204200.P7932389602920171183

namespace A204200

/-- `A052544((n-1)%(n+1))` -/
def P7932389602920171183.Spec : Prop :=
  ∀ n, P7932389602920171183.a n = A204200 (n + 1)

end A204200

/-! ## A204200.P15864419700777171922

`A052544(round(sqrt(n²+1))-1)`
-/

namespace A204200.P15864419700777171922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052544 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

end

end A204200.P15864419700777171922

namespace A204200

/-- `A052544(round(sqrt(n²+1))-1)` -/
def P15864419700777171922.Spec : Prop :=
  ∀ n, P15864419700777171922.a n = A204200 (n + 1)

end A204200

/-! ## A204200.P12234163160341339387

`A052529(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A204200.P12234163160341339387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A052529 (n - 1) + a (n - 1)

end

end A204200.P12234163160341339387

namespace A204200

/-- `A052529(n-1)+a(n-1)` -/
def P12234163160341339387.Spec : Prop :=
  ∀ n, P12234163160341339387.a n = A204200 (n + 1)

end A204200

/-! ## A204200.P3637587919613940412

`A000930(record[A006368(n)])`
-/

namespace A204200.P3637587919613940412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A204200.P3637587919613940412

namespace A204200

/-- `A000930(record[A006368(n)])` -/
def P3637587919613940412.Spec : Prop :=
  ∀ n, P3637587919613940412.a n = A204200 (n + 1)

end A204200

/-! ## A204200.P589276593178941244

`A000930(A296515(n+1))`
-/

namespace A204200.P589276593178941244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A296515 (n + 1)).toNat

end

end A204200.P589276593178941244

namespace A204200

/-- `A000930(A296515(n+1))` -/
def P589276593178941244.Spec : Prop :=
  ∀ n, P589276593178941244.a n = A204200 (n + 1)

end A204200

/-! ## A204200.P17057726000260786501

`A108104(A100764(n+2))`
-/

namespace A204200.P17057726000260786501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (A100764 (n + 2)).toNat

end

end A204200.P17057726000260786501

namespace A204200

/-- `A108104(A100764(n+2))` -/
def P17057726000260786501.Spec : Prop :=
  ∀ n, P17057726000260786501.a n = A204200 (n + 1)

end A204200

/-! ## A204200.P16913920888416197688

`A000930(A033627(n+1)-1)`
-/

namespace A204200.P16913920888416197688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A033627 (n + 1) - 1).toNat

end

end A204200.P16913920888416197688

namespace A204200

/-- `A000930(A033627(n+1)-1)` -/
def P16913920888416197688.Spec : Prop :=
  ∀ n, P16913920888416197688.a n = A204200 (n + 1)

end A204200

/-! ## A204200.P1847435118298343685

`A099560(A008486(n)-1)+1`
-/

namespace A204200.P1847435118298343685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099560 (A008486 n - 1).toNat + 1

end

end A204200.P1847435118298343685

namespace A204200

/-- `A099560(A008486(n)-1)+1` -/
def P1847435118298343685.Spec : Prop :=
  ∀ n, P1847435118298343685.a n = A204200 (n + 1)

end A204200

/-! ## A204200.P13451594704209755357

`A068921(2*A289207(n)+n)`
-/

namespace A204200.P13451594704209755357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (2 * A289207 n + (n : ℤ)).toNat

end

end A204200.P13451594704209755357

namespace A204200

/-- `A068921(2*A289207(n)+n)` -/
def P13451594704209755357.Spec : Prop :=
  ∀ n, P13451594704209755357.a n = A204200 (n + 1)

end A204200

/-! ## A204200.P17880082679077603656

`A000930(A004274(2*n)-n)`
-/

namespace A204200.P17880082679077603656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A004274 (2 * n) - (n : ℤ)).toNat

end

end A204200.P17880082679077603656

namespace A204200

/-- `A000930(A004274(2*n)-n)` -/
def P17880082679077603656.Spec : Prop :=
  ∀ n, P17880082679077603656.a n = A204200 (n + 1)

end A204200

/-! ## A204200.P15947654581258830704

`A068921(2*A004275(n)-n)`
-/

namespace A204200.P15947654581258830704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (2 * A004275 n - (n : ℤ)).toNat

end

end A204200.P15947654581258830704

namespace A204200

/-- `A068921(2*A004275(n)-n)` -/
def P15947654581258830704.Spec : Prop :=
  ∀ n, P15947654581258830704.a n = A204200 (n + 1)

end A204200

/-! ## A204200.P8803977656111292056

`A000930(lt[n, A347633(n+1)])`
-/

namespace A204200.P8803977656111292056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A204200.P8803977656111292056

namespace A204200

/-- `A000930(lt[n, A347633(n+1)])` -/
def P8803977656111292056.Spec : Prop :=
  ∀ n, P8803977656111292056.a n = A204200 (n + 1)

end A204200

/-! ## A204200.P14880159056269101947

`A000930(lt[A283443(n), n+2])`
-/

namespace A204200.P14880159056269101947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A204200.P14880159056269101947

namespace A204200

/-- `A000930(lt[A283443(n), n+2])` -/
def P14880159056269101947.Spec : Prop :=
  ∀ n, P14880159056269101947.a n = A204200 (n + 1)

end A204200

/-! ## A204200.P2415442979684092441

`A000930(lt[A283443(n)-2, n])`
-/

namespace A204200.P2415442979684092441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 n - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A204200.P2415442979684092441

namespace A204200

/-- `A000930(lt[A283443(n)-2, n])` -/
def P2415442979684092441.Spec : Prop :=
  ∀ n, P2415442979684092441.a n = A204200 (n + 1)

end A204200

/-! ## A204200.P16081999773029223287

`A108104(A004275(n)+2*A004275(n))`
-/

namespace A204200.P16081999773029223287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (A004275 n + 2 * A004275 n).toNat

end

end A204200.P16081999773029223287

namespace A204200

/-- `A108104(A004275(n)+2*A004275(n))` -/
def P16081999773029223287.Spec : Prop :=
  ∀ n, P16081999773029223287.a n = A204200 (n + 1)

end A204200

/-! ## A204200.P11754965494751377165

`A000930(lt[A130724(n), A004277(n+1)])`
-/

namespace A204200.P11754965494751377165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A204200.P11754965494751377165

namespace A204200

/-- `A000930(lt[A130724(n), A004277(n+1)])` -/
def P11754965494751377165.Spec : Prop :=
  ∀ n, P11754965494751377165.a n = A204200 (n + 1)

end A204200

/-!
# A204201: Triangle based on (0,1/3,1) averaging array.

The programs for A204201, the canonical program `A204201.P4812556110496593180` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204201 has offset 1).

The definition of A204201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204201.P2417367795590722285

`A204202(n+1)-A007318(n)`
-/

namespace A204201.P2417367795590722285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204202 (n + 1) - A007318 n

end

end A204201.P2417367795590722285

namespace A204201

/-- `A204202(n+1)-A007318(n)` -/
def P2417367795590722285.Spec : Prop :=
  ∀ n, P2417367795590722285.a n = A204201 (n + 1)

end A204201

/-! ## A204201.P4812556110496593180

`2*A054143(n)-A008949(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A204201

/-- `2*A054143(n)-A008949(n)` -/
def P4812556110496593180.Spec : Prop :=
  ∀ n, P4812556110496593180.a n = A204201 (n + 1)

theorem P4812556110496593180.correct : P4812556110496593180.Spec := by
  intro n
  simp only [A204201, Nat.add_sub_cancel]

end A204201

/-! ## A204201.P16162897637336990017

`(A204203(n+1)+A054143(n))/2`
-/

namespace A204201.P16162897637336990017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204203 (n + 1) + A054143 n : ℚ) / 2

end

end A204201.P16162897637336990017

namespace A204201

/-- `(A204203(n+1)+A054143(n))/2` -/
def P16162897637336990017.Spec : Prop :=
  ∀ n, P16162897637336990017.a n = (A204201 (n + 1) : ℚ)

end A204201

/-! ## A204201.P17130365156618537125

`2*A204203(n+1)-A204205(n+1)`
-/

namespace A204201.P17130365156618537125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204203 (n + 1) - A204205 (n + 1)

end

end A204201.P17130365156618537125

namespace A204201

/-- `2*A204203(n+1)-A204205(n+1)` -/
def P17130365156618537125.Spec : Prop :=
  ∀ n, P17130365156618537125.a n = A204201 (n + 1)

end A204201

/-! ## A204201.P3516670275332856022

`2*A102363(n)-A102363(A061579(n))`
-/

namespace A204201.P3516670275332856022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102363 n - A102363 (A061579 n).toNat

end

end A204201.P3516670275332856022

namespace A204201

/-- `2*A102363(n)-A102363(A061579(n))` -/
def P3516670275332856022.Spec : Prop :=
  ∀ n, P3516670275332856022.a n = A204201 (n + 1)

end A204201

/-! ## A204201.P7260924776931578429

`A008949(n)+A054143(n)-A007318(n)`
-/

namespace A204201.P7260924776931578429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n + (A054143 n - A007318 n)

end

end A204201.P7260924776931578429

namespace A204201

/-- `A008949(n)+A054143(n)-A007318(n)` -/
def P7260924776931578429.Spec : Prop :=
  ∀ n, P7260924776931578429.a n = A204201 (n + 1)

end A204201

/-! ## A204201.P16053731307649118049

`A204203(n+1)+A008949(n)-A054143(n)`
-/

namespace A204201.P16053731307649118049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204203 (n + 1) + (A008949 n - A054143 n)

end

end A204201.P16053731307649118049

namespace A204201

/-- `A204203(n+1)+A008949(n)-A054143(n)` -/
def P16053731307649118049.Spec : Prop :=
  ∀ n, P16053731307649118049.a n = A204201 (n + 1)

end A204201

/-! ## A204201.P17303008867171042329

`A204203(n+1)+A137688(n)-A102363(n)`
-/

namespace A204201.P17303008867171042329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204203 (n + 1) + (A137688 n - A102363 n)

end

end A204201.P17303008867171042329

namespace A204201

/-- `A204203(n+1)+A137688(n)-A102363(n)` -/
def P17303008867171042329.Spec : Prop :=
  ∀ n, P17303008867171042329.a n = A204201 (n + 1)

end A204201

/-! ## A204201.P17335850908151181256

`A204205(n+1)+A054143(n)-A204203(n+1)`
-/

namespace A204201.P17335850908151181256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204205 (n + 1) + (A054143 n - A204203 (n + 1))

end

end A204201.P17335850908151181256

namespace A204201

/-- `A204205(n+1)+A054143(n)-A204203(n+1)` -/
def P17335850908151181256.Spec : Prop :=
  ∀ n, P17335850908151181256.a n = A204201 (n + 1)

end A204201

/-! ## A204201.P6939408687228954049

`2*A008949(A007401(n+1))-A008949(n)`
-/

namespace A204201.P6939408687228954049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008949 (A007401 (n + 1)).toNat - A008949 n

end

end A204201.P6939408687228954049

namespace A204201

/-- `2*A008949(A007401(n+1))-A008949(n)` -/
def P6939408687228954049.Spec : Prop :=
  ∀ n, P6939408687228954049.a n = A204201 (n + 1)

end A204201

/-! ## A204201.P1891092812578576004

`A249111(comp[∑[n-1]]+n)`
-/

namespace A204201.P1891092812578576004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249111 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n)

end

end A204201.P1891092812578576004

namespace A204201

/-- `A249111(comp[∑[n-1]]+n)` -/
def P1891092812578576004.Spec : Prop :=
  ∀ n, P1891092812578576004.a n = A204201 (n + 1)

end A204201

/-! ## A204201.P12035435114823513875

`A008585(A008949(n)-A007318(n))+A007318(n)`
-/

namespace A204201.P12035435114823513875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A008949 n - A007318 n).toNat + A007318 n

end

end A204201.P12035435114823513875

namespace A204201

/-- `A008585(A008949(n)-A007318(n))+A007318(n)` -/
def P12035435114823513875.Spec : Prop :=
  ∀ n, P12035435114823513875.a n = A204201 (n + 1)

end A204201

/-! ## A204201.P14507784901072532939

`A008949(n)+A005843(A054143(n)-A008949(n))`
-/

namespace A204201.P14507784901072532939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n + A005843 (A054143 n - A008949 n).toNat

end

end A204201.P14507784901072532939

namespace A204201

/-- `A008949(n)+A005843(A054143(n)-A008949(n))` -/
def P14507784901072532939.Spec : Prop :=
  ∀ n, P14507784901072532939.a n = A204201 (n + 1)

end A204201

/-! ## A204201.P5615547848915790695

`A008486(A008949(n))-A028326(n)`
-/

namespace A204201.P5615547848915790695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A008949 n).toNat - A028326 n

end

end A204201.P5615547848915790695

namespace A204201

/-- `A008486(A008949(n))-A028326(n)` -/
def P5615547848915790695.Spec : Prop :=
  ∀ n, P5615547848915790695.a n = A204201 (n + 1)

end A204201

/-!
# A204202: Triangle based on (0,2/3,1) averaging array.

The programs for A204202, the canonical program `A204202.P1024099258740543106` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204202 has offset 1).

The definition of A204202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204202.P1024099258740543106

`A054143(n)+A008949(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A204202

/-- `A054143(n)+A008949(n)` -/
def P1024099258740543106.Spec : Prop :=
  ∀ n, P1024099258740543106.a n = A204202 (n + 1)

theorem P1024099258740543106.correct : P1024099258740543106.Spec := by
  intro n
  simp only [A204202, Nat.add_sub_cancel]

end A204202

/-! ## A204202.P6760240259773795772

`A204201(n+1)+A007318(n)`
-/

namespace A204202.P6760240259773795772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204201 (n + 1) + A007318 n

end

end A204202.P6760240259773795772

namespace A204202

/-- `A204201(n+1)+A007318(n)` -/
def P6760240259773795772.Spec : Prop :=
  ∀ n, P6760240259773795772.a n = A204202 (n + 1)

end A204202

/-! ## A204202.P5497581520671745045

`A204204(n+1)-A008949(n)`
-/

namespace A204202.P5497581520671745045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204204 (n + 1) - A008949 n

end

end A204202.P5497581520671745045

namespace A204202

/-- `A204204(n+1)-A008949(n)` -/
def P5497581520671745045.Spec : Prop :=
  ∀ n, P5497581520671745045.a n = A204202 (n + 1)

end A204202

/-! ## A204202.P4980704928243571132

`3*A008949(n)-A007318(n)`
-/

namespace A204202.P4980704928243571132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008949 n - A007318 n

end

end A204202.P4980704928243571132

namespace A204202

/-- `3*A008949(n)-A007318(n)` -/
def P4980704928243571132.Spec : Prop :=
  ∀ n, P4980704928243571132.a n = A204202 (n + 1)

end A204202

/-! ## A204202.P16085006291117722498

`A204201(n+1)+abs(A130595(n))`
-/

namespace A204202.P16085006291117722498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204201 (n + 1) + |A130595 n|

end

end A204202.P16085006291117722498

namespace A204202

/-- `A204201(n+1)+abs(A130595(n))` -/
def P16085006291117722498.Spec : Prop :=
  ∀ n, P16085006291117722498.a n = A204202 (n + 1)

end A204202

/-! ## A204202.P4320456443422060304

`A204201(n+1)+A014473(n)+1`
-/

namespace A204202.P4320456443422060304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204201 (n + 1) + (A014473 n + 1)

end

end A204202.P4320456443422060304

namespace A204202

/-- `A204201(n+1)+A014473(n)+1` -/
def P4320456443422060304.Spec : Prop :=
  ∀ n, P4320456443422060304.a n = A204202 (n + 1)

end A204202

/-! ## A204202.P651965346594416549

`A008949(comp[A000096(n)])+A008949(n)`
-/

namespace A204202.P651965346594416549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + A008949 n

end

end A204202.P651965346594416549

namespace A204202

/-- `A008949(comp[A000096(n)])+A008949(n)` -/
def P651965346594416549.Spec : Prop :=
  ∀ n, P651965346594416549.a n = A204202 (n + 1)

end A204202

/-! ## A204202.P4534955961810481586

`A008949(A007401(n+1))+A008949(n)`
-/

namespace A204202.P4534955961810481586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A007401 (n + 1)).toNat + A008949 n

end

end A204202.P4534955961810481586

namespace A204202

/-- `A008949(A007401(n+1))+A008949(n)` -/
def P4534955961810481586.Spec : Prop :=
  ∀ n, P4534955961810481586.a n = A204202 (n + 1)

end A204202

/-! ## A204202.P16523944724776510174

`A008949(A014132(n+1)-1)+A008949(n)`
-/

namespace A204202.P16523944724776510174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A014132 (n + 1) - 1).toNat + A008949 n

end

end A204202.P16523944724776510174

namespace A204202

/-- `A008949(A014132(n+1)-1)+A008949(n)` -/
def P16523944724776510174.Spec : Prop :=
  ∀ n, P16523944724776510174.a n = A204202 (n + 1)

end A204202

/-! ## A204202.P6634616283632113396

`A249111(comp[∑[n]]+n)`
-/

namespace A204202.P6634616283632113396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249111 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A204202.P6634616283632113396

namespace A204202

/-- `A249111(comp[∑[n]]+n)` -/
def P6634616283632113396.Spec : Prop :=
  ∀ n, P6634616283632113396.a n = A204202 (n + 1)

end A204202

/-! ## A204202.P7179971457625917572

`A008486(A008949(n))-A007318(n)`
-/

namespace A204202.P7179971457625917572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A008949 n).toNat - A007318 n

end

end A204202.P7179971457625917572

namespace A204202

/-- `A008486(A008949(n))-A007318(n)` -/
def P7179971457625917572.Spec : Prop :=
  ∀ n, P7179971457625917572.a n = A204202 (n + 1)

end A204202

/-! ## A204202.P17469305935366869043

`A008486(A008949(n))-A028326(n)/2`
-/

namespace A204202.P17469305935366869043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 (A008949 n).toNat : ℚ) - (A028326 n : ℚ) / 2

end

end A204202.P17469305935366869043

namespace A204202

/-- `A008486(A008949(n))-A028326(n)/2` -/
def P17469305935366869043.Spec : Prop :=
  ∀ n, P17469305935366869043.a n = (A204202 (n + 1) : ℚ)

end A204202

/-! ## A204202.P12245857952254658950

`A249111(n²)*A249111(A195437(n))`
-/

namespace A204202.P12245857952254658950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249111 (n ^ 2) * A249111 (A195437 n).toNat

end

end A204202.P12245857952254658950

namespace A204202

/-- `A249111(n²)*A249111(A195437(n))` -/
def P12245857952254658950.Spec : Prop :=
  ∀ n, P12245857952254658950.a n = A204202 (n + 1)

end A204202

/-!
# A204203: Triangle based on (0,1/4,1) averaging array.

The programs for A204203, the canonical program `A204203.P18355877739269611644` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204203 has offset 1).

The definition of A204203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204203.P7088804295716837446

`A204204(n+1)-A028326(n)`
-/

namespace A204203.P7088804295716837446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204204 (n + 1) - A028326 n

end

end A204203.P7088804295716837446

namespace A204203

/-- `A204204(n+1)-A028326(n)` -/
def P7088804295716837446.Spec : Prop :=
  ∀ n, P7088804295716837446.a n = A204203 (n + 1)

end A204203

/-! ## A204203.P18355877739269611644

`2*A054143(n)-A007318(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A204203

/-- `2*A054143(n)-A007318(n)` -/
def P18355877739269611644.Spec : Prop :=
  ∀ n, P18355877739269611644.a n = A204203 (n + 1)

theorem P18355877739269611644.correct : P18355877739269611644.Spec := by
  intro n
  simp only [A204203, Nat.add_sub_cancel]

end A204203

/-! ## A204203.P1399697279588621292

`2*A054143(n)-abs(A117440(n))`
-/

namespace A204203.P1399697279588621292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054143 n - |A117440 n|

end

end A204203.P1399697279588621292

namespace A204203

/-- `2*A054143(n)-abs(A117440(n))` -/
def P1399697279588621292.Spec : Prop :=
  ∀ n, P1399697279588621292.a n = A204203 (n + 1)

end A204203

/-! ## A204203.P8373100391716938514

`2*A054143(n)-Δ[A102363(n)]`
-/

namespace A204203.P8373100391716938514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054143 n - (f1 (n + 1) - f1 n)

end

end A204203.P8373100391716938514

namespace A204203

/-- `2*A054143(n)-Δ[A102363(n)]` -/
def P8373100391716938514.Spec : Prop :=
  ∀ n, P8373100391716938514.a n = A204203 (n + 1)

end A204203

/-! ## A204203.P16282757909151810247

`2*A204201(n+1)-A054143(n)`
-/

namespace A204203.P16282757909151810247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204201 (n + 1) - A054143 n

end

end A204203.P16282757909151810247

namespace A204203

/-- `2*A204201(n+1)-A054143(n)` -/
def P16282757909151810247.Spec : Prop :=
  ∀ n, P16282757909151810247.a n = A204203 (n + 1)

end A204203

/-! ## A204203.P11185723107816791190

`(A204205(n+1)+A204201(n+1))/2`
-/

namespace A204203.P11185723107816791190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204205 (n + 1) + A204201 (n + 1) : ℚ) / 2

end

end A204203.P11185723107816791190

namespace A204203

/-- `(A204205(n+1)+A204201(n+1))/2` -/
def P11185723107816791190.Spec : Prop :=
  ∀ n, P11185723107816791190.a n = (A204203 (n + 1) : ℚ)

end A204203

/-! ## A204203.P14650766039335098731

`A054143(n)+A102363(n)-A055248(n)`
-/

namespace A204203.P14650766039335098731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n + (A102363 n - A055248 n)

end

end A204203.P14650766039335098731

namespace A204203

/-- `A054143(n)+A102363(n)-A055248(n)` -/
def P14650766039335098731.Spec : Prop :=
  ∀ n, P14650766039335098731.a n = A204203 (n + 1)

end A204203

/-! ## A204203.P12119750391338641832

`A008949(n)+A008585(A008949(n)-A007318(n))`
-/

namespace A204203.P12119750391338641832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n + A008585 (A008949 n - A007318 n).toNat

end

end A204203.P12119750391338641832

namespace A204203

/-- `A008949(n)+A008585(A008949(n)-A007318(n))` -/
def P12119750391338641832.Spec : Prop :=
  ∀ n, P12119750391338641832.a n = A204203 (n + 1)

end A204203

/-! ## A204203.P6236468272168974835

`A054143(n)+A005843(A054143(n)-A008949(n))`
-/

namespace A204203.P6236468272168974835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n + A005843 (A054143 n - A008949 n).toNat

end

end A204203.P6236468272168974835

namespace A204203

/-- `A054143(n)+A005843(A054143(n)-A008949(n))` -/
def P6236468272168974835.Spec : Prop :=
  ∀ n, P6236468272168974835.a n = A204203 (n + 1)

end A204203

/-! ## A204203.P11793758267972854428

`A005843(A054143(n))-A007318(n)`
-/

namespace A204203.P11793758267972854428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A054143 n).toNat - A007318 n

end

end A204203.P11793758267972854428

namespace A204203

/-- `A005843(A054143(n))-A007318(n)` -/
def P11793758267972854428.Spec : Prop :=
  ∀ n, P11793758267972854428.a n = A204203 (n + 1)

end A204203

/-!
# A204204: Triangle based on (0,3/4,1) averaging array.

The programs for A204204, the canonical program `A204204.P9788490803614695615` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204204 has offset 1).

The definition of A204204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204204.P9788490803614695615

`A204202(n+1)+A008949(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A204204

/-- `A204202(n+1)+A008949(n)` -/
def P9788490803614695615.Spec : Prop :=
  ∀ n, P9788490803614695615.a n = A204204 (n + 1)

theorem P9788490803614695615.correct : P9788490803614695615.Spec := by
  intro n
  simp only [A204204, Nat.add_sub_cancel]

end A204204

/-! ## A204204.P9325587759960572620

`A204203(n+1)+A028326(n)`
-/

namespace A204204.P9325587759960572620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204203 (n + 1) + A028326 n

end

end A204204.P9325587759960572620

namespace A204204

/-- `A204203(n+1)+A028326(n)` -/
def P9325587759960572620.Spec : Prop :=
  ∀ n, P9325587759960572620.a n = A204204 (n + 1)

end A204204

/-! ## A204204.P2514686660583881384

`A007318(n)+2*A054143(n)`
-/

namespace A204204.P2514686660583881384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 2 * A054143 n

end

end A204204.P2514686660583881384

namespace A204204

/-- `A007318(n)+2*A054143(n)` -/
def P2514686660583881384.Spec : Prop :=
  ∀ n, P2514686660583881384.a n = A204204 (n + 1)

end A204204

/-! ## A204204.P12837469982068250798

`A054143(n)+2*A008949(n)`
-/

namespace A204204.P12837469982068250798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n + 2 * A008949 n

end

end A204204.P12837469982068250798

namespace A204204

/-- `A054143(n)+2*A008949(n)` -/
def P12837469982068250798.Spec : Prop :=
  ∀ n, P12837469982068250798.a n = A204204 (n + 1)

end A204204

/-! ## A204204.P14394124953981637215

`4*A008949(n)-A007318(n)`
-/

namespace A204204.P14394124953981637215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008949 n - A007318 n

end

end A204204.P14394124953981637215

namespace A204204

/-- `4*A008949(n)-A007318(n)` -/
def P14394124953981637215.Spec : Prop :=
  ∀ n, P14394124953981637215.a n = A204204 (n + 1)

end A204204

/-! ## A204204.P12837647686246239470

`abs(A117440(n))+2*A054143(n)`
-/

namespace A204204.P12837647686246239470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n| + 2 * A054143 n

end

end A204204.P12837647686246239470

namespace A204204

/-- `abs(A117440(n))+2*A054143(n)` -/
def P12837647686246239470.Spec : Prop :=
  ∀ n, P12837647686246239470.a n = A204204 (n + 1)

end A204204

/-! ## A204204.P13625547456792967410

`Δ[A102363(n)]+2*A054143(n)`
-/

namespace A204204.P13625547456792967410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A054143 n

end

end A204204.P13625547456792967410

namespace A204204

/-- `Δ[A102363(n)]+2*A054143(n)` -/
def P13625547456792967410.Spec : Prop :=
  ∀ n, P13625547456792967410.a n = A204204 (n + 1)

end A204204

/-! ## A204204.P16060146076015281563

`A204203(n+1)+2*A007318(n)`
-/

namespace A204204.P16060146076015281563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204203 (n + 1) + 2 * A007318 n

end

end A204204.P16060146076015281563

namespace A204204

/-- `A204203(n+1)+2*A007318(n)` -/
def P16060146076015281563.Spec : Prop :=
  ∀ n, P16060146076015281563.a n = A204204 (n + 1)

end A204204

/-! ## A204204.P10096336561832665313

`2*A204202(n+1)-A054143(n)`
-/

namespace A204204.P10096336561832665313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204202 (n + 1) - A054143 n

end

end A204204.P10096336561832665313

namespace A204204

/-- `2*A204202(n+1)-A054143(n)` -/
def P10096336561832665313.Spec : Prop :=
  ∀ n, P10096336561832665313.a n = A204204 (n + 1)

end A204204

/-! ## A204204.P3966121347148479561

`A008949(A007401(n+1))+2*A008949(n)`
-/

namespace A204204.P3966121347148479561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A007401 (n + 1)).toNat + 2 * A008949 n

end

end A204204.P3966121347148479561

namespace A204204

/-- `A008949(A007401(n+1))+2*A008949(n)` -/
def P3966121347148479561.Spec : Prop :=
  ∀ n, P3966121347148479561.a n = A204204 (n + 1)

end A204204

/-! ## A204204.P16114308067938483213

`A054143(n)+A005843(A008949(n))`
-/

namespace A204204.P16114308067938483213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n + A005843 (A008949 n).toNat

end

end A204204.P16114308067938483213

namespace A204204

/-- `A054143(n)+A005843(A008949(n))` -/
def P16114308067938483213.Spec : Prop :=
  ∀ n, P16114308067938483213.a n = A204204 (n + 1)

end A204204

/-! ## A204204.P3315820893914886654

`A008574(A008949(n))-A007318(n)`
-/

namespace A204204.P3315820893914886654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A008949 n).toNat - A007318 n

end

end A204204.P3315820893914886654

namespace A204204

/-- `A008574(A008949(n))-A007318(n)` -/
def P3315820893914886654.Spec : Prop :=
  ∀ n, P3315820893914886654.a n = A204204 (n + 1)

end A204204

/-!
# A204205: Triangle based on (0,1/5,1) averaging array.

The programs for A204205, the canonical program `A204205.P18235704100513698987` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204205 has offset 1).

The definition of A204205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204205.P18235704100513698987

`2*A204201(n+1)-A008949(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A204205

/-- `2*A204201(n+1)-A008949(n)` -/
def P18235704100513698987.Spec : Prop :=
  ∀ n, P18235704100513698987.a n = A204205 (n + 1)

theorem P18235704100513698987.correct : P18235704100513698987.Spec := by
  intro n
  simp only [A204205, Nat.add_sub_cancel]

end A204205

/-! ## A204205.P4712416249036482022

`2*A204203(n+1)-A204201(n+1)`
-/

namespace A204205.P4712416249036482022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204203 (n + 1) - A204201 (n + 1)

end

end A204205.P4712416249036482022

namespace A204205

/-- `2*A204203(n+1)-A204201(n+1)` -/
def P4712416249036482022.Spec : Prop :=
  ∀ n, P4712416249036482022.a n = A204205 (n + 1)

end A204205

/-! ## A204205.P9704214229349723086

`A204203(n+1)+A054143(n)-A008949(n)`
-/

namespace A204205.P9704214229349723086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204203 (n + 1) + (A054143 n - A008949 n)

end

end A204205.P9704214229349723086

namespace A204205

/-- `A204203(n+1)+A054143(n)-A008949(n)` -/
def P9704214229349723086.Spec : Prop :=
  ∀ n, P9704214229349723086.a n = A204205 (n + 1)

end A204205

/-! ## A204205.P10673960719144504460

`A204201(n+1)+A102363(n)-A055248(n)`
-/

namespace A204205.P10673960719144504460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204201 (n + 1) + (A102363 n - A055248 n)

end

end A204205.P10673960719144504460

namespace A204205

/-- `A204201(n+1)+A102363(n)-A055248(n)` -/
def P10673960719144504460.Spec : Prop :=
  ∀ n, P10673960719144504460.a n = A204205 (n + 1)

end A204205

/-! ## A204205.P16114483792785442027

`A204203(n+1)+A102363(n)-A137688(n)`
-/

namespace A204205.P16114483792785442027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204203 (n + 1) + (A102363 n - A137688 n)

end

end A204205.P16114483792785442027

namespace A204205

/-- `A204203(n+1)+A102363(n)-A137688(n)` -/
def P16114483792785442027.Spec : Prop :=
  ∀ n, P16114483792785442027.a n = A204205 (n + 1)

end A204205

/-! ## A204205.P7815170032531966026

`A204201(n+1)+A204203(n+1)-A054143(n)`
-/

namespace A204205.P7815170032531966026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204201 (n + 1) + (A204203 (n + 1) - A054143 n)

end

end A204205.P7815170032531966026

namespace A204205

/-- `A204201(n+1)+A204203(n+1)-A054143(n)` -/
def P7815170032531966026.Spec : Prop :=
  ∀ n, P7815170032531966026.a n = A204205 (n + 1)

end A204205

/-! ## A204205.P420217120641951035

`A204201(n+1)+A005843(A204201(n+1)-A054143(n))`
-/

namespace A204205.P420217120641951035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204201 (n + 1) + A005843 (A204201 (n + 1) - A054143 n).toNat

end

end A204205.P420217120641951035

namespace A204205

/-- `A204201(n+1)+A005843(A204201(n+1)-A054143(n))` -/
def P420217120641951035.Spec : Prop :=
  ∀ n, P420217120641951035.a n = A204205 (n + 1)

end A204205

/-! ## A204205.P13946892661057739310

`A008706(A008949(n))-2*A028326(n)`
-/

namespace A204205.P13946892661057739310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A008949 n).toNat - 2 * A028326 n

end

end A204205.P13946892661057739310

namespace A204205

/-- `A008706(A008949(n))-2*A028326(n)` -/
def P13946892661057739310.Spec : Prop :=
  ∀ n, P13946892661057739310.a n = A204205 (n + 1)

end A204205

/-! ## A204205.P16913306219525849527

`A008706(A008949(n))-A008574(A007318(n))`
-/

namespace A204205.P16913306219525849527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A008949 n).toNat - A008574 (A007318 n).toNat

end

end A204205.P16913306219525849527

namespace A204205

/-- `A008706(A008949(n))-A008574(A007318(n))` -/
def P16913306219525849527.Spec : Prop :=
  ∀ n, P16913306219525849527.a n = A204205 (n + 1)

end A204205

/-! ## A204205.P13327963180291916478

`A008706(A008949(n))-A005843(A028326(n))`
-/

namespace A204205.P13327963180291916478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A008949 n).toNat - A005843 (A028326 n).toNat

end

end A204205.P13327963180291916478

namespace A204205

/-- `A008706(A008949(n))-A005843(A028326(n))` -/
def P13327963180291916478.Spec : Prop :=
  ∀ n, P13327963180291916478.a n = A204205 (n + 1)

end A204205

/-!
# A204206: Triangle based on (1,3/2,2) averaging array.

The programs for A204206, the canonical program `A204206.P854096699827338767` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204206 has offset 1).

The definition of A204206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204206.P5337499093731955658

`∑[A074909(n)]+comp[∑[n]]-n`
-/

namespace A204206.P5337499093731955658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ))

end

end A204206.P5337499093731955658

namespace A204206

/-- `∑[A074909(n)]+comp[∑[n]]-n` -/
def P5337499093731955658.Spec : Prop :=
  ∀ n, P5337499093731955658.a n = A204206 (n + 1)

end A204206

/-! ## A204206.P15763630161361971705

`A140513(n)+A054143(n)`
-/

namespace A204206.P15763630161361971705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n + A054143 n

end

end A204206.P15763630161361971705

namespace A204206

/-- `A140513(n)+A054143(n)` -/
def P15763630161361971705.Spec : Prop :=
  ∀ n, P15763630161361971705.a n = A204206 (n + 1)

end A204206

/-! ## A204206.P5673185603108872439

`A102363(n+1)+A102363(n)`
-/

namespace A204206.P5673185603108872439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (n + 1) + A102363 n

end

end A204206.P5673185603108872439

namespace A204206

/-- `A102363(n+1)+A102363(n)` -/
def P5673185603108872439.Spec : Prop :=
  ∀ n, P5673185603108872439.a n = A204206 (n + 1)

end A204206

/-! ## A204206.P15214004596953905595

`A098354(n+1)-A104709(n)`
-/

namespace A204206.P15214004596953905595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098354 (n + 1) - A104709 n

end

end A204206.P15214004596953905595

namespace A204206

/-- `A098354(n+1)-A104709(n)` -/
def P15214004596953905595.Spec : Prop :=
  ∀ n, P15214004596953905595.a n = A204206 (n + 1)

end A204206

/-! ## A204206.P9763969860743545116

`A104709(n)+2*A054143(n)`
-/

namespace A204206.P9763969860743545116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104709 n + 2 * A054143 n

end

end A204206.P9763969860743545116

namespace A204206

/-- `A104709(n)+2*A054143(n)` -/
def P9763969860743545116.Spec : Prop :=
  ∀ n, P9763969860743545116.a n = A204206 (n + 1)

end A204206

/-! ## A204206.P5769254648101280966

`A054143(n)+2*A137688(n)`
-/

namespace A204206.P5769254648101280966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n + 2 * A137688 n

end

end A204206.P5769254648101280966

namespace A204206

/-- `A054143(n)+2*A137688(n)` -/
def P5769254648101280966.Spec : Prop :=
  ∀ n, P5769254648101280966.a n = A204206 (n + 1)

end A204206

/-! ## A204206.P547070335981546603

`2*A140513(n)-A104709(n)`
-/

namespace A204206.P547070335981546603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140513 n - A104709 n

end

end A204206.P547070335981546603

namespace A204206

/-- `2*A140513(n)-A104709(n)` -/
def P547070335981546603.Spec : Prop :=
  ∀ n, P547070335981546603.a n = A204206 (n + 1)

end A204206

/-! ## A204206.P431053386477571799

`4*A137688(n)-A104709(n)`
-/

namespace A204206.P431053386477571799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A137688 n - A104709 n

end

end A204206.P431053386477571799

namespace A204206

/-- `4*A137688(n)-A104709(n)` -/
def P431053386477571799.Spec : Prop :=
  ∀ n, P431053386477571799.a n = A204206 (n + 1)

end A204206

/-! ## A204206.P854096699827338767

`∑[A074909(n)+A010054(n)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A204206

/-- `∑[A074909(n)+A010054(n)]+1` -/
def P854096699827338767.Spec : Prop :=
  ∀ n, P854096699827338767.a n = A204206 (n + 1)

theorem P854096699827338767.correct : P854096699827338767.Spec := by
  intro n
  simp only [A204206, Nat.add_sub_cancel]

end A204206

/-! ## A204206.P2743839286701985986

`A003057(n+2)+∑[A074909(n)]`
-/

namespace A204206.P2743839286701985986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204206.P2743839286701985986

namespace A204206

/-- `A003057(n+2)+∑[A074909(n)]` -/
def P2743839286701985986.Spec : Prop :=
  ∀ n, P2743839286701985986.a n = A204206 (n + 1)

end A204206

/-! ## A204206.P15065818504525177405

`A003056(n)+∑[A074909(n)]+2`
-/

namespace A204206.P15065818504525177405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204206.P15065818504525177405

namespace A204206

/-- `A003056(n)+∑[A074909(n)]+2` -/
def P15065818504525177405.Spec : Prop :=
  ∀ n, P15065818504525177405.a n = A204206 (n + 1)

end A204206

/-! ## A204206.P17436446233668847747

`∑[A028326(n)]+2-A007318(n)`
-/

namespace A204206.P17436446233668847747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A007318 n)

end

end A204206.P17436446233668847747

namespace A204206

/-- `∑[A028326(n)]+2-A007318(n)` -/
def P17436446233668847747.Spec : Prop :=
  ∀ n, P17436446233668847747.a n = A204206 (n + 1)

end A204206

/-! ## A204206.P15670857511046948335

`∑[A035214(n)*A074909(n)]+1`
-/

namespace A204206.P15670857511046948335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n * A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A204206.P15670857511046948335

namespace A204206

/-- `∑[A035214(n)*A074909(n)]+1` -/
def P15670857511046948335.Spec : Prop :=
  ∀ n, P15670857511046948335.a n = A204206 (n + 1)

end A204206

/-! ## A204206.P1746426989220415938

`∑[A007318(n)+A007318(abs(1-n))]+1`
-/

namespace A204206.P1746426989220415938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A007318 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A204206.P1746426989220415938

namespace A204206

/-- `∑[A007318(n)+A007318(abs(1-n))]+1` -/
def P1746426989220415938.Spec : Prop :=
  ∀ n, P1746426989220415938.a n = A204206 (n + 1)

end A204206

/-! ## A204206.P12060271833026684930

`A007318(n-1)+a(n-1)+A007318(n)` with `a(0)=3`
-/

namespace A204206.P12060271833026684930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A007318 (n - 1) + (a (n - 1) + A007318 n)

end

end A204206.P12060271833026684930

namespace A204206

/-- `A007318(n-1)+a(n-1)+A007318(n)` -/
def P12060271833026684930.Spec : Prop :=
  ∀ n, P12060271833026684930.a n = A204206 (n + 1)

end A204206

/-! ## A204206.P13383278351976281776

`A140513(n)²/A137688(n)-A104709(n)`
-/

namespace A204206.P13383278351976281776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140513 n ^ 2 : ℚ) / (A137688 n : ℚ) - (A104709 n : ℚ)

end

end A204206.P13383278351976281776

namespace A204206

/-- `A140513(n)²/A137688(n)-A104709(n)` -/
def P13383278351976281776.Spec : Prop :=
  ∀ n, P13383278351976281776.a n = (A204206 (n + 1) : ℚ)

end A204206

/-! ## A204206.P12212657922834788211

`A102363(comp[∑[n]])`
-/

namespace A204206.P12212657922834788211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A204206.P12212657922834788211

namespace A204206

/-- `A102363(comp[∑[n]])` -/
def P12212657922834788211.Spec : Prop :=
  ∀ n, P12212657922834788211.a n = A204206 (n + 1)

end A204206

/-! ## A204206.P1402425781716476763

`A054143(A061579(n))+2*A054143(n)`
-/

namespace A204206.P1402425781716476763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A061579 n).toNat + 2 * A054143 n

end

end A204206.P1402425781716476763

namespace A204206

/-- `A054143(A061579(n))+2*A054143(n)` -/
def P1402425781716476763.Spec : Prop :=
  ∀ n, P1402425781716476763.a n = A204206 (n + 1)

end A204206

/-! ## A204206.P16656715126756487537

`A104709(n)+2*A104709(A061579(n))`
-/

namespace A204206.P16656715126756487537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104709 n + 2 * A104709 (A061579 n).toNat

end

end A204206.P16656715126756487537

namespace A204206

/-- `A104709(n)+2*A104709(A061579(n))` -/
def P16656715126756487537.Spec : Prop :=
  ∀ n, P16656715126756487537.a n = A204206 (n + 1)

end A204206

/-! ## A204206.P14009485663922846366

`A308663(lt[0, A004197(n)])`
-/

namespace A204206.P14009485663922846366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A204206.P14009485663922846366

namespace A204206

/-- `A308663(lt[0, A004197(n)])` -/
def P14009485663922846366.Spec : Prop :=
  ∀ n, P14009485663922846366.a n = A204206 (n + 1)

end A204206

/-!
# A204207: Triangle based on (1,2,3) averaging array.

The programs for A204207, there is no canonical definition to state claims against.
-/

/-! ## A204207.P8641379043535820621

`∑[C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))]+comp[∑[n]]-n-∏[char[∑[n+1]]+1]`
-/

namespace A204207.P8641379043535820621
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f5 j) 2 : ℤ)).toNat

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

open Classical in
def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f11 j = n then 1 else 0) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f8 j ≠ x) n : ℤ) - (n : ℤ)) - ((∏ j ∈ Finset.range (n + 1), f10 j : ℕ) : ℤ)

end

end A204207.P8641379043535820621

/-! ## A204207.P378850247125811471

`A054143(n)+∏[char[∑[n+1]]+1]`
-/

namespace A204207.P378850247125811471
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n + ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A204207.P378850247125811471

/-! ## A204207.P8325525026482123789

`A204206(n+1)-∏[char[∑[n+1]]+1]`
-/

namespace A204207.P8325525026482123789
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204206 (n + 1) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A204207.P8325525026482123789

/-! ## A204207.P9639058720442336677

`A008949(comp[∑[n-1]])+∏[char[∑[n+1]]+1]`
-/

namespace A204207.P9639058720442336677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f4 j = n then 1 else 0) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + ((∏ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A204207.P9639058720442336677

/-! ## A204207.P7476716084298687723

`A102363(n)+A008949(n)`
-/

namespace A204207.P7476716084298687723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n + A008949 n

end

end A204207.P7476716084298687723

/-! ## A204207.P8303584448168751120

`A137688(n)+A054143(n)`
-/

namespace A204207.P8303584448168751120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + A054143 n

end

end A204207.P8303584448168751120

/-! ## A204207.P12889024984064605994

`A204201(n+1)+A055248(n)`
-/

namespace A204207.P12889024984064605994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204201 (n + 1) + A055248 n

end

end A204207.P12889024984064605994

/-! ## A204207.P13208960264233243767

`A102363(n+1)+A053645(A102363(n))`
-/

namespace A204207.P13208960264233243767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (n + 1) + A053645 (A102363 n).toNat

end

end A204207.P13208960264233243767

/-! ## A204207.P9138246683580423681

`A137688(n)+A140513(n)-A104709(n)`
-/

namespace A204207.P9138246683580423681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + (A140513 n - A104709 n)

end

end A204207.P9138246683580423681

/-!
# A204208: Number of length n+1 nonnegative integer arrays starting and ending with 0 with adjacent elements differing by no more than 3.

The programs for A204208, there is no canonical definition to state claims against.
-/

/-! ## A204208.P15566711415549539213

`A204213(∑[n+3]+1)`
-/

namespace A204208.P15566711415549539213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204208.P15566711415549539213

/-! ## A204208.P12814583362041373032

`A204213(A034856(n+2))%A074567(n)`
-/

namespace A204208.P12814583362041373032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204213 (A034856 (n + 2)).toNat) (A074567 n)

end

end A204208.P12814583362041373032

/-! ## A204208.P16586690481613317385

`or(A000007(n), A204213(A034856(n+2)))`
-/

namespace A204208.P16586690481613317385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A204213 (A034856 (n + 2)).toNat)

end

end A204208.P16586690481613317385

/-! ## A204208.P1283339589293030221

`A057427(A133263(n))*A204213(A034856(n+2))`
-/

namespace A204208.P1283339589293030221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A133263 n).toNat * A204213 (A034856 (n + 2)).toNat

end

end A204208.P1283339589293030221

/-! ## A204208.P7124508087249104445

`and(A001348(n+1), A204213(A034856(n+2)))`
-/

namespace A204208.P7124508087249104445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001348 (n + 1)) (A204213 (A034856 (n + 2)).toNat)

end

end A204208.P7124508087249104445

/-!
# A204209: Number of length n+1 nonnegative integer arrays starting and ending with 0 with adjacent elements differing by no more than 4.

The programs for A204209, there is no canonical definition to state claims against.
-/

/-! ## A204209.P2187706242397021489

`A204213(A027379(n+2))`
-/

namespace A204209.P2187706242397021489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A027379 (n + 2)).toNat

end

end A204209.P2187706242397021489

/-! ## A204209.P13663550958729403815

`A204213(A055998(n+2))`
-/

namespace A204209.P13663550958729403815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A055998 (n + 2)).toNat

end

end A204209.P13663550958729403815

/-! ## A204209.P6808291286085821448

`A204213(A155212(n)+5)`
-/

namespace A204209.P6808291286085821448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A155212 n + 5).toNat

end

end A204209.P6808291286085821448

/-! ## A204209.P12140610714131769804

`A204213(A056000(n)+7)`
-/

namespace A204209.P12140610714131769804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A056000 n + 7).toNat

end

end A204209.P12140610714131769804

/-! ## A204209.P5648592330907155990

`A204213(A052905(n+1)+2)`
-/

namespace A204209.P5648592330907155990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A052905 (n + 1) + 2).toNat

end

end A204209.P5648592330907155990

/-! ## A204209.P1134842353553859467

`A204213(A167499(n)+A016777(n))`
-/

namespace A204209.P1134842353553859467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A167499 n + A016777 n).toNat

end

end A204209.P1134842353553859467

/-! ## A204209.P372271381233357486

`A204213(A167614(n+1)+A005408(n))`
-/

namespace A204209.P372271381233357486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A167614 (n + 1) + A005408 n).toNat

end

end A204209.P372271381233357486

/-!
# A204210: Number of length n+1 nonnegative integer arrays starting and ending with 0 with adjacent elements differing by no more than 5.

The programs for A204210, there is no canonical definition to state claims against.
-/

/-! ## A204210.P338802846126663854

`A204213(A046691(n+3))`
-/

namespace A204210.P338802846126663854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A046691 (n + 3)).toNat

end

end A204210.P338802846126663854

/-! ## A204210.P10173039693942725739

`A204213(Δ[A023545(n+1)])`
-/

namespace A204210.P10173039693942725739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (f1 (n + 1) - f1 n).toNat

end

end A204210.P10173039693942725739

/-! ## A204210.P9907391056222613554

`A204213(A052905(n+2)+1)`
-/

namespace A204210.P9907391056222613554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A052905 (n + 2) + 1).toNat

end

end A204210.P9907391056222613554

/-! ## A204210.P3450944317343203984

`A204213(A034856(n+4)-2)`
-/

namespace A204210.P3450944317343203984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A034856 (n + 4) - 2).toNat

end

end A204210.P3450944317343203984

/-! ## A204210.P17876936689083015447

`A204213(A005408(n)+A055999(n)+10)`
-/

namespace A204210.P17876936689083015447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A005408 n + (A055999 n + 10)).toNat

end

end A204210.P17876936689083015447

/-!
# A204211: Number of length n+1 nonnegative integer arrays starting and ending with 0 with adjacent elements differing by no more than 6.

The programs for A204211, there is no canonical definition to state claims against.
-/

/-! ## A204211.P11893674261246129461

`A204213(A052905(n+3))`
-/

namespace A204211.P11893674261246129461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A052905 (n + 3)).toNat

end

end A204211.P11893674261246129461

/-! ## A204211.P17619976010591009129

`A204213(A055998(n+4)-2)`
-/

namespace A204211.P17619976010591009129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A055998 (n + 4) - 2).toNat

end

end A204211.P17619976010591009129

/-! ## A204211.P16837146898307860537

`A204213(Δ[A023545(n+2)]-1)`
-/

namespace A204211.P16837146898307860537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (f1 (n + 1) - f1 n - 1).toNat

end

end A204211.P16837146898307860537

/-! ## A204211.P4320317945493985028

`A204213(A000217(n+5)+n+1)`
-/

namespace A204211.P4320317945493985028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A000217 (n + 5) + (n : ℤ) + 1).toNat

end

end A204211.P4320317945493985028

/-! ## A204211.P17717379221870302084

`A204213(A005408(n)+A155212(n)+13)`
-/

namespace A204211.P17717379221870302084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A005408 n + (A155212 n + 13)).toNat

end

end A204211.P17717379221870302084

/-!
# A204212: Number of length n+1 nonnegative integer arrays starting and ending with 0 with adjacent elements differing by no more than 7.

The programs for A204212, there is no canonical definition to state claims against.
-/

/-! ## A204212.P12937800982694448009

`A204213(A055999(n+4))`
-/

namespace A204212.P12937800982694448009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A055999 (n + 4)).toNat

end

end A204212.P12937800982694448009

/-! ## A204212.P10708387890410828240

`A204213(A052905(n+4)-1)`
-/

namespace A204212.P10708387890410828240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A052905 (n + 4) - 1).toNat

end

end A204212.P10708387890410828240

/-! ## A204212.P9320176550799286033

`A204213(A000096(n+6)-5)`
-/

namespace A204212.P9320176550799286033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A000096 (n + 6) - 5).toNat

end

end A204212.P9320176550799286033

/-! ## A204212.P17743993985607591971

`A204213(A000124(n+7)-7)`
-/

namespace A204212.P17743993985607591971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A000124 (n + 7) - 7).toNat

end

end A204212.P17743993985607591971

/-! ## A204212.P15232201721264274786

`A204213(A167614(n+5)+n-2)`
-/

namespace A204212.P15232201721264274786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A167614 (n + 5) + ((n : ℤ) - 2)).toNat

end

end A204212.P15232201721264274786

/-!
# A204213: T(n,k) = Number of length n+1 nonnegative integer arrays starting and ending with 0 with adjacent elements differing by no more than k.

The programs for A204213, there is no canonical definition to state claims against.
-/

/-! ## A204213.P16912310848783383480

`A098447(comp[∑[n-1]]%A193940(n))`
-/

namespace A204213.P16912310848783383480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098447 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A193940 n)).toNat

end

end A204213.P16912310848783383480

/-! ## A204213.P12503668714412244672

`A072649(n^A172236(n+1))`
-/

namespace A204213.P12503668714412244672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A172236 (n + 1) : ℤ))).toNat

end

end A204213.P12503668714412244672

/-! ## A204213.P13339165897415744752

`or(A102683(A000602(n+3)), A247358(n+1))`
-/

namespace A204213.P13339165897415744752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 (A000602 (n + 3)).toNat) (A247358 (n + 1))

end

end A204213.P13339165897415744752

/-! ## A204213.P2956060374074344130

`A063787(A346412(n+1))`
-/

namespace A204213.P2956060374074344130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (A346412 (n + 1)).toNat

end

end A204213.P2956060374074344130

/-! ## A204213.P2133885180259126837

`A325678(A102537(n+1))`
-/

namespace A204213.P2133885180259126837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A102537 (n + 1)).toNat

end

end A204213.P2133885180259126837

/-!
# A204214: Number of length 6 nonnegative integer arrays starting and ending with 0 with adjacent elements differing by no more than n.

The programs for A204214, the canonical program `A204214.P753734922948979263` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204214 has offset 1).

The definition of A204214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204214.P18215912718385643452

`23/12*(n+1)^4+37/6*(n+1)^3+91/12*(n+1)²+13/3*(n+1)+1`
-/

namespace A204214.P18215912718385643452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (23 : ℚ) / 12 * ((n + 1) ^ 4 : ℚ) + (37 : ℚ) / 6 * ((n + 1) ^ 3 : ℚ) + (91 : ℚ) / 12 * ((n + 1) ^ 2 : ℚ) + (13 : ℚ) / 3 * (n + 1 : ℚ) + 1

end

end A204214.P18215912718385643452

namespace A204214

/-- `23/12*(n+1)^4+37/6*(n+1)^3+91/12*(n+1)²+13/3*(n+1)+1` -/
def P18215912718385643452.Spec : Prop :=
  ∀ n, P18215912718385643452.a n = (A204214 (n + 1) : ℚ)

end A204214

/-! ## A204214.P753734922948979263

`Δ[A213556(n+1)+A004282(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A204214

/-- `Δ[A213556(n+1)+A004282(n)]` -/
def P753734922948979263.Spec : Prop :=
  ∀ n, P753734922948979263.a n = A204214 (n + 1)

theorem P753734922948979263.correct : P753734922948979263.Spec := by
  intro n
  simp only [A204214, Nat.add_sub_cancel]

end A204214

/-! ## A204214.P9871222591822211643

`A200984(5*(n+1))`
-/

namespace A204214.P9871222591822211643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200984 (5 * (n + 1))

end

end A204214.P9871222591822211643

namespace A204214

/-- `A200984(5*(n+1))` -/
def P9871222591822211643.Spec : Prop :=
  ∀ n, P9871222591822211643.a n = A204214 (n + 1)

end A204214

/-! ## A204214.P9234103235005495574

`A204213(A167499(n+3))`
-/

namespace A204214.P9234103235005495574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A167499 (n + 3)).toNat

end

end A204214.P9234103235005495574

namespace A204214

/-- `A204213(A167499(n+3))` -/
def P9234103235005495574.Spec : Prop :=
  ∀ n, P9234103235005495574.a n = A204214 (n + 1)

end A204214

/-!
# A204215: Number of length 7 nonnegative integer arrays starting and ending with 0 with adjacent elements differing by no more than n.

The programs for A204215, there is no canonical definition to state claims against.
-/

/-! ## A204215.P6300001525273464331

`A201136(6*(n+1))`
-/

namespace A204215.P6300001525273464331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201136 (6 * (n + 1))

end

end A204215.P6300001525273464331

/-! ## A204215.P14923789308061315018

`A204213(A000124(n+5)+5)`
-/

namespace A204215.P14923789308061315018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A000124 (n + 5) + 5).toNat

end

end A204215.P14923789308061315018

/-! ## A204215.P14427667112545227964

`A204213(A000217(n+5)+6)`
-/

namespace A204215.P14427667112545227964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A000217 (n + 5) + 6).toNat

end

end A204215.P14427667112545227964

/-! ## A204215.P18076030683009271941

`A204213(Δ[A023545(n+1)]+10)`
-/

namespace A204215.P18076030683009271941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (f1 (n + 1) - f1 n + 10).toNat

end

end A204215.P18076030683009271941

/-! ## A204215.P12605076818600347104

`A204213(A055998(n+4)-(n-3))`
-/

namespace A204215.P12605076818600347104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A055998 (n + 4) - ((n : ℤ) - 3)).toNat

end

end A204215.P12605076818600347104

/-! ## A204215.P6359859932426624636

`A204213(A133263(n+6)-(n+2))`
-/

namespace A204215.P6359859932426624636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A133263 (n + 6) - (n + 2 : ℤ)).toNat

end

end A204215.P6359859932426624636

/-! ## A204215.P8374807140127481431

`A204213(A052905(n+4)-2-2*n)`
-/

namespace A204215.P8374807140127481431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A052905 (n + 4) - 2 - (2 * n : ℤ)).toNat

end

end A204215.P8374807140127481431

/-!
# A204216: Number of length 8 nonnegative integer arrays starting and ending with 0 with adjacent elements differing by no more than n.

The programs for A204216, there is no canonical definition to state claims against.
-/

/-! ## A204216.P6115634125700229213

`A201066(7*(n+1))`
-/

namespace A204216.P6115634125700229213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201066 (7 * (n + 1))

end

end A204216.P6115634125700229213

/-! ## A204216.P9756166780807726981

`A204213(A167487(n+5))`
-/

namespace A204216.P9756166780807726981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A167487 (n + 5)).toNat

end

end A204216.P9756166780807726981

/-! ## A204216.P10191218046104338734

`A204213(A167499(n+5)+2)`
-/

namespace A204216.P10191218046104338734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A167499 (n + 5) + 2).toNat

end

end A204216.P10191218046104338734

/-! ## A204216.P12597332180694430864

`A204213(A000217(n+6)+7)`
-/

namespace A204216.P12597332180694430864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A000217 (n + 6) + 7).toNat

end

end A204216.P12597332180694430864

/-! ## A204216.P1302941957171164413

`A204213(A000124(n+7)-(n+1))`
-/

namespace A204216.P1302941957171164413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204213 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A204216.P1302941957171164413

/-!
# A204217: G.f.: Sum_{n>=1} n * x^(n*(n+1)/2) / (1 - x^n).

The programs for A204217, there is no canonical definition to state claims against.
-/

/-! ## A204217.P15104689290754597191

`A338616(n+1)/2`
-/

namespace A204217.P15104689290754597191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338616 (n + 1) : ℚ) / 2

end

end A204217.P15104689290754597191

/-! ## A204217.P15764629156110357787

`A001281(A338616(n+1))`
-/

namespace A204217.P15764629156110357787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A338616 (n + 1)).toNat

end

end A204217.P15764629156110357787

/-! ## A204217.P3884820907600014866

`A004526(A338616(n+1)+1)`
-/

namespace A204217.P3884820907600014866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A338616 (n + 1) + 1).toNat

end

end A204217.P3884820907600014866

/-! ## A204217.P15303170722869015335

`A101279(A338616(n+1)+1)`
-/

namespace A204217.P15303170722869015335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A338616 (n + 1) + 1).toNat

end

end A204217.P15303170722869015335

/-! ## A204217.P14719201889071473519

`A130722(A338616(n+1)+1)`
-/

namespace A204217.P14719201889071473519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130722 (A338616 (n + 1) + 1).toNat

end

end A204217.P14719201889071473519

/-! ## A204217.P13907804676701394574

`A001057(A338616(n+1)-1)`
-/

namespace A204217.P13907804676701394574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A338616 (n + 1) - 1).toNat

end

end A204217.P13907804676701394574

/-! ## A204217.P8186599190728054636

`A003602(A338616(n+1)-1)`
-/

namespace A204217.P8186599190728054636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A338616 (n + 1) - 1).toNat

end

end A204217.P8186599190728054636

/-! ## A204217.P416967108129289043

`A008619(A338616(n+1)-1)`
-/

namespace A204217.P416967108129289043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A338616 (n + 1) - 1).toNat

end

end A204217.P416967108129289043

/-! ## A204217.P10841795045351702199

`A065033(A338616(n+1)-1)`
-/

namespace A204217.P10841795045351702199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A338616 (n + 1) - 1).toNat

end

end A204217.P10841795045351702199

/-! ## A204217.P9508443540691974441

`A097065(A338616(n+1)-2)`
-/

namespace A204217.P9508443540691974441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A338616 (n + 1) - 2).toNat

end

end A204217.P9508443540691974441

/-! ## A204217.P10682919550392920081

`A002265(2*A338616(n+1))`
-/

namespace A204217.P10682919550392920081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A338616 (n + 1)).toNat

end

end A204217.P10682919550392920081

/-! ## A204217.P6604541516641608875

`A097065(A338616(n+1)+1)+1`
-/

namespace A204217.P6604541516641608875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A338616 (n + 1) + 1).toNat + 1

end

end A204217.P6604541516641608875

/-! ## A204217.P2747277657961966776

`A325563(A338616(n+1)+2)-1`
-/

namespace A204217.P2747277657961966776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (A338616 (n + 1) + 2).toNat - 1

end

end A204217.P2747277657961966776

/-! ## A204217.P675770431494336154

`A329322(n+1)+A329321(n+1)`
-/

namespace A204217.P675770431494336154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329322 (n + 1) + A329321 (n + 1)

end

end A204217.P675770431494336154

/-! ## A204217.P9107804755662951856

`A319895(n+1)-A001227(n+1)`
-/

namespace A204217.P9107804755662951856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319895 (n + 1) - A001227 (n + 1)

end

end A204217.P9107804755662951856

/-! ## A204217.P10507896146078675740

`A054785(n+1)-A353149(n+1)`
-/

namespace A204217.P10507896146078675740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - A353149 (n + 1)

end

end A204217.P10507896146078675740

/-! ## A204217.P2192829886091401161

`A319895(n+1)-(A131576(n+1)+A082647(n+1))`
-/

namespace A204217.P2192829886091401161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319895 (n + 1) - (A131576 (n + 1) + A082647 (n + 1))

end

end A204217.P2192829886091401161

/-! ## A204217.P12928597839766545760

`A319895(n+1)+A060831(n)-A060831(n+1)`
-/

namespace A204217.P12928597839766545760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319895 (n + 1) + (A060831 n - A060831 (n + 1))

end

end A204217.P12928597839766545760

/-! ## A204217.P15975844162300767925

`(A348953(2*(n+1))+A070039(2*(n+1)))/2`
-/

namespace A204217.P15975844162300767925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348953 (2 * (n + 1)) + A070039 (2 * (n + 1)) : ℚ) / 2

end

end A204217.P15975844162300767925

/-! ## A204217.P1169761728930965704

`(A066839(2*(n+1))-A348608(2*(n+1)))/2`
-/

namespace A204217.P1169761728930965704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066839 (2 * (n + 1)) - A348608 (2 * (n + 1)) : ℚ) / 2

end

end A204217.P1169761728930965704

/-!
# A204218: G.f. satisfies: A(x) = 1 + Sum_{n>=1} n * (x*A(x))^(n*(n+1)/2) / (1 - x^n*A(x)^n).

The programs for A204218, there is no canonical definition to state claims against.
-/

/-! ## A204218.P8632175884356432476

`A359495(A288415(n))+A279560(n)`
-/

namespace A204218.P8632175884356432476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359495 (A288415 n).toNat + A279560 n

end

end A204218.P8632175884356432476

/-! ## A204218.P13362997837853336720

`floor(A053456((n+1)!)^(1/3))`
-/

namespace A204218.P13362997837853336720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053456 (Nat.factorial (n + 1)) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋

end

end A204218.P13362997837853336720

/-!
# A204219: Primes whose binary reversal is not prime.

The programs for A204219, there is no canonical definition to state claims against.
-/

/-! ## A204219.P2188238763492356113

`A000040(eq[2, A075241(n+1)]+1)`
-/

namespace A204219.P2188238763492356113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A204219.P2188238763492356113

/-! ## A204219.P3041341287119116260

`p?[(A075241(n+1)-1)*A000040(n+1)]`
-/

namespace A204219.P3041341287119116260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075241 (n + 1) - 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A204219.P3041341287119116260

/-! ## A204219.P7539585494148989468

`A008578(eq[2, A075241(n+1)]+2)`
-/

namespace A204219.P7539585494148989468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A204219.P7539585494148989468

/-! ## A204219.P2378823485136920287

`p?[2*n+1-A010051(A145341(n+1))]`
-/

namespace A204219.P2378823485136920287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A010051 (A145341 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A204219.P2378823485136920287

/-! ## A204219.P1913215568381972777

`p?[2*n+1-A085090(A145342(n+1))]`
-/

namespace A204219.P1913215568381972777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A085090 (A145342 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A204219.P1913215568381972777

/-! ## A204219.P6603327396393606403

`p?[n*A292438(A030101(n))]`
-/

namespace A204219.P6603327396393606403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A292438 (A030101 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A204219.P6603327396393606403

/-! ## A204219.P12035870043088232687

`p?[1-A010051(A235027(n+1))+n]`
-/

namespace A204219.P12035870043088232687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010051 (A235027 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A204219.P12035870043088232687

/-!
# A204220: Expansion of f(-x^2, -x^3) * f(-x^2, -x^4) / f(-x, -x^2) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A204220, there is no canonical definition to state claims against.
-/

/-! ## A204220.P9006572401508138248

`A000493(gcd(a(n-1), A211399(n)))` with `a(0)=1, a(1)=1`
-/

namespace A204220.P9006572401508138248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000493 (Int.gcd (a (n - 1)) (A211399 n))

end

end A204220.P9006572401508138248

/-! ## A204220.P14314120744148089574

`A196306(or(A002260(n+1), A235394(n+1)))`
-/

namespace A204220.P14314120744148089574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196306 (Int.lor (A002260 (n + 1)) (A235394 (n + 1))).toNat

end

end A204220.P14314120744148089574

/-! ## A204220.P15085128618134335635

`A016355(A020631(n+1))+char[1]`
-/

namespace A204220.P15085128618134335635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016355 (A020631 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204220.P15085128618134335635

/-! ## A204220.P9014331356445773489

`A016355(lcm(A020631(n+1), A105812(n)))`
-/

namespace A204220.P9014331356445773489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016355 (Int.lcm (A020631 (n + 1)) (A105812 n))

end

end A204220.P9014331356445773489

/-! ## A204220.P1497228477184741701

`A016355(A105812(n)²*A020631(n+1))`
-/

namespace A204220.P1497228477184741701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016355 (A105812 n ^ 2 * A020631 (n + 1)).toNat

end

end A204220.P1497228477184741701

/-!
# A204221: Integers of the form (N^2 - 1) / 15.

The programs for A204221, the canonical program `A204221.P16762614138165113717` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204221 has offset 0).

The definition of A204221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204221.P10210851292372464433

`A220082(n+1)-A047201(n+1)²`
-/

namespace A204221.P10210851292372464433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220082 (n + 1) - A047201 (n + 1) ^ 2

end

end A204221.P10210851292372464433

namespace A204221

/-- `A220082(n+1)-A047201(n+1)²` -/
def P10210851292372464433.Spec : Prop :=
  ∀ n, P10210851292372464433.a n = A204221 n

end A204221

/-! ## A204221.P6691861682627100537

`A220082(n+1)-(A008621(n)+n)²`
-/

namespace A204221.P6691861682627100537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220082 (n + 1) - (A008621 n + (n : ℤ)) ^ 2

end

end A204221.P6691861682627100537

namespace A204221

/-- `A220082(n+1)-(A008621(n)+n)²` -/
def P6691861682627100537.Spec : Prop :=
  ∀ n, P6691861682627100537.a n = A204221 n

end A204221

/-! ## A204221.P16762614138165113717

`A154293(n+1)+A152749(A004526(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A204221

/-- `A154293(n+1)+A152749(A004526(n))` -/
def P16762614138165113717.Spec : Prop :=
  ∀ n, P16762614138165113717.a n = A204221 n

theorem P16762614138165113717.correct : P16762614138165113717.Spec := by
  intro n
  simp only [A204221]

end A204221

/-! ## A204221.P15872233475127481673

`A273365(A047260(n+1))/6`
-/

namespace A204221.P15872233475127481673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273365 (A047260 (n + 1)).toNat : ℚ) / 6

end

end A204221.P15872233475127481673

namespace A204221

/-- `A273365(A047260(n+1))/6` -/
def P15872233475127481673.Spec : Prop :=
  ∀ n, P15872233475127481673.a n = (A204221 n : ℚ)

end A204221

/-! ## A204221.P5252572933119436045

`A001318(A047260(n+1))+A001318(A004526(n))`
-/

namespace A204221.P5252572933119436045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A047260 (n + 1)).toNat + A001318 (A004526 n).toNat

end

end A204221.P5252572933119436045

namespace A204221

/-- `A001318(A047260(n+1))+A001318(A004526(n))` -/
def P5252572933119436045.Spec : Prop :=
  ∀ n, P5252572933119436045.a n = A204221 n

end A204221

/-! ## A204221.P5533507767363526864

`A008738(A204542(n+1))/3`
-/

namespace A204221.P5533507767363526864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008738 (A204542 (n + 1)).toNat : ℚ) / 3

end

end A204221.P5533507767363526864

namespace A204221

/-- `A008738(A204542(n+1))/3` -/
def P5533507767363526864.Spec : Prop :=
  ∀ n, P5533507767363526864.a n = (A204221 n : ℚ)

end A204221

/-! ## A204221.P6619252603235377704

`lt[0, abs(A204220(n))]`
-/

namespace A204221.P6619252603235377704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A204220 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A204221.P6619252603235377704

namespace A204221

/-- `lt[0, abs(A204220(n))]` -/
def P6619252603235377704.Spec : Prop :=
  ∀ n, (P6619252603235377704.a n : ℤ) = A204221 n

end A204221

/-! ## A204221.P10648317875033042731

`lt[A007913(3*5*n+1), 3]`
-/

namespace A204221.P10648317875033042731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (3 * (5 * n) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A204221.P10648317875033042731

namespace A204221

/-- `lt[A007913(3*5*n+1), 3]` -/
def P10648317875033042731.Spec : Prop :=
  ∀ n, (P10648317875033042731.a n : ℤ) = A204221 n

end A204221

/-! ## A204221.P2121377320234429291

`lt[val(A000203(3*5*n+1), 2), 1]`
-/

namespace A204221.P2121377320234429291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (3 * (5 * n) + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A204221.P2121377320234429291

namespace A204221

/-- `lt[val(A000203(3*5*n+1), 2), 1]` -/
def P2121377320234429291.Spec : Prop :=
  ∀ n, (P2121377320234429291.a n : ℤ) = A204221 n

end A204221

/-! ## A204221.P17167964365175916691

`lt[2, A020639(A000005(15*n+1)+64)]`
-/

namespace A204221.P17167964365175916691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000005 (15 * n + 1) + 64).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A204221.P17167964365175916691

namespace A204221

/-- `lt[2, A020639(A000005(15*n+1)+64)]` -/
def P17167964365175916691.Spec : Prop :=
  ∀ n, (P17167964365175916691.a n : ℤ) = A204221 n

end A204221

/-!
# A204222: Number of (n+1)X(n+1) 0..2 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204222, there is no canonical definition to state claims against.
-/

/-! ## A204222.P13205560660559671319

`A204230(∑[4*n]+1)`
-/

namespace A204222.P13205560660559671319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204222.P13205560660559671319

/-! ## A204222.P2146857872924518545

`A204230(A001844(n))+char[7]`
-/

namespace A204222.P2146857872924518545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204222.P2146857872924518545

/-! ## A204222.P2075928692581892611

`record[A204230(n+1)*A303709(2*n+1)]`
-/

namespace A204222.P2075928692581892611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (n + 1) * A303709 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204222.P2075928692581892611

/-!
# A204223: Number of (n+1)X2 0..2 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204223, there is no canonical definition to state claims against.
-/

/-! ## A204223.P6094727723895361137

`A204230(∑[n]+1)`
-/

namespace A204223.P6094727723895361137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204223.P6094727723895361137

/-! ## A204223.P11657511523680293428

`record[A010054(n)*A204230(n+1)]`
-/

namespace A204223.P11657511523680293428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204223.P11657511523680293428

/-! ## A204223.P13531977821775640858

`record[A204230(n+1)/A056588(n)]`
-/

namespace A204223.P13531977821775640858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204230 (n + 1) : ℚ) / (A056588 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204223.P13531977821775640858

/-! ## A204223.P6090011211268747440

`record[gcd(A002262(n), A204230(n+1))]`
-/

namespace A204223.P6090011211268747440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204230 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204223.P6090011211268747440

/-! ## A204223.P12643632323917691398

`record[A204230(n+1)/A059575(n+1)]`
-/

namespace A204223.P12643632323917691398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204230 (n + 1) : ℚ) / (A059575 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204223.P12643632323917691398

/-!
# A204224: Number of (n+1)X3 0..2 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204224, there is no canonical definition to state claims against.
-/

/-! ## A204224.P11034345141603472246

`A204230(∑[n+1]+2)`
-/

namespace A204224.P11034345141603472246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204224.P11034345141603472246

/-! ## A204224.P13593102050202597030

`record[A204230(A114091(n+1)+1)]`
-/

namespace A204224.P13593102050202597030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204224.P13593102050202597030

/-! ## A204224.P9779878732588188278

`record[A010054(n)*A204230(n+2)]`
-/

namespace A204224.P9779878732588188278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204230 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204224.P9779878732588188278

/-! ## A204224.P4221270796875695223

`record[gcd(A002262(n), A204230(n+2))]`
-/

namespace A204224.P4221270796875695223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204230 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204224.P4221270796875695223

/-! ## A204224.P9071097649675265846

`record[gcd(A092921(n), A204230(n+3))]`
-/

namespace A204224.P9071097649675265846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092921 n) (A204230 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204224.P9071097649675265846

/-!
# A204225: Number of (n+1)X4 0..2 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204225, there is no canonical definition to state claims against.
-/

/-! ## A204225.P1917920738065493038

`A204230(∑[n+2]+4)`
-/

namespace A204225.P1917920738065493038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204225.P1917920738065493038

/-! ## A204225.P11607057447978207324

`A204230(A167614(n+1))+A011744(n)`
-/

namespace A204225.P11607057447978207324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (A167614 (n + 1)).toNat + A011744 n

end

end A204225.P11607057447978207324

/-! ## A204225.P10324046314926104737

`A204230(A167614(n+1))+A025469(n)`
-/

namespace A204225.P10324046314926104737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (A167614 (n + 1)).toNat + A025469 n

end

end A204225.P10324046314926104737

/-! ## A204225.P3688286426584271877

`A204230(A167614(n+1))+A055967(n)`
-/

namespace A204225.P3688286426584271877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (A167614 (n + 1)).toNat + A055967 n

end

end A204225.P3688286426584271877

/-! ## A204225.P16570242369587170834

`A204230(A167614(n+1))+A185284(n)`
-/

namespace A204225.P16570242369587170834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (A167614 (n + 1)).toNat + A185284 n

end

end A204225.P16570242369587170834

/-!
# A204226: Number of (n+1)X5 0..2 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204226, there is no canonical definition to state claims against.
-/

/-! ## A204226.P7907204934615258216

`A204230(A374004(n+1))`
-/

namespace A204226.P7907204934615258216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (A374004 (n + 1)).toNat

end

end A204226.P7907204934615258216

/-! ## A204226.P16035549064693814849

`A204230(A141214(n)+7)`
-/

namespace A204226.P16035549064693814849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (A141214 n + 7).toNat

end

end A204226.P16035549064693814849

/-! ## A204226.P6327092780439742672

`A204230(A052905(n)+9)`
-/

namespace A204226.P6327092780439742672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (A052905 n + 9).toNat

end

end A204226.P6327092780439742672

/-! ## A204226.P2522608922325480490

`A204230(A055999(n)+10)`
-/

namespace A204226.P2522608922325480490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (A055999 n + 10).toNat

end

end A204226.P2522608922325480490

/-! ## A204226.P12852886528576217536

`A204230(eq[5, A066657(n)])`
-/

namespace A204226.P12852886528576217536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204226.P12852886528576217536

/-!
# A204227: Number of (n+1) X 6 0..2 arrays with the sums of 2 X 2 subblocks nondecreasing rightwards and downwards.

The programs for A204227, there is no canonical definition to state claims against.
-/

/-! ## A204227.P11374634728278442165

`A204230(A374005(n+1))`
-/

namespace A204227.P11374634728278442165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (A374005 (n + 1)).toNat

end

end A204227.P11374634728278442165

/-! ## A204227.P10696120757545282529

`A204230(A155212(n)+13)`
-/

namespace A204227.P10696120757545282529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (A155212 n + 13).toNat

end

end A204227.P10696120757545282529

/-! ## A204227.P17684075219476165530

`A204230(A056000(n)+15)`
-/

namespace A204227.P17684075219476165530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (A056000 n + 15).toNat

end

end A204227.P17684075219476165530

/-! ## A204227.P3273550479793228312

`A204230(eq[7, A066657(n)])`
-/

namespace A204227.P3273550479793228312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204227.P3273550479793228312

/-! ## A204227.P5130933515043936518

`A204230(eq[6, A131818(n+1)])`
-/

namespace A204227.P5130933515043936518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204227.P5130933515043936518

/-!
# A204228: Number of (n+1)X7 0..2 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204228, there is no canonical definition to state claims against.
-/

/-! ## A204228.P1765715261194981030

`A204230(A374007(n+1))`
-/

namespace A204228.P1765715261194981030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (A374007 (n + 1)).toNat

end

end A204228.P1765715261194981030

/-! ## A204228.P87136757062099388

`A204230(eq[7, A131818(n+1)])`
-/

namespace A204228.P87136757062099388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204228.P87136757062099388

/-! ## A204228.P14570433136359837777

`A204230(A052905(n+3))`
-/

namespace A204228.P14570433136359837777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (A052905 (n + 3)).toNat

end

end A204228.P14570433136359837777

/-! ## A204228.P859190458148992982

`A204230(A056119(n)+16)`
-/

namespace A204228.P859190458148992982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (A056119 n + 16).toNat

end

end A204228.P859190458148992982

/-! ## A204228.P12134903000487913511

`A204230(eq[3, A219347(n)])`
-/

namespace A204228.P12134903000487913511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204228.P12134903000487913511

/-!
# A204229: Number of (n+1)X8 0..2 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204229, there is no canonical definition to state claims against.
-/

/-! ## A204229.P1156743319629467485

`A204230(A374008(n+1))`
-/

namespace A204229.P1156743319629467485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (A374008 (n + 1)).toNat

end

end A204229.P1156743319629467485

/-! ## A204229.P9886732356024928545

`A204230(A055999(n+4))`
-/

namespace A204229.P9886732356024928545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (A055999 (n + 4)).toNat

end

end A204229.P9886732356024928545

/-! ## A204229.P6241117002034155690

`A204230(eq[4, A219347(n)])`
-/

namespace A204229.P6241117002034155690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204229.P6241117002034155690

/-! ## A204229.P10496357733823050829

`A204230(eq[5, A332954(n)])`
-/

namespace A204229.P10496357733823050829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204229.P10496357733823050829

/-!
# A204231: Position of primes in A127345.

The programs for A204231, there is no canonical definition to state claims against.
-/

/-! ## A204231.P12663829744169979517

`A000720(A356475(n+1))`
-/

namespace A204231.P12663829744169979517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A356475 (n + 1)).toNat

end

end A204231.P12663829744169979517

/-! ## A204231.P2513590601934800755

`A061395(2*A356475(n+1))`
-/

namespace A204231.P2513590601934800755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A356475 (n + 1)).toNat

end

end A204231.P2513590601934800755

/-! ## A204231.P17505220979176755151

`A304818(p?[A356475(n+1)])`
-/

namespace A204231.P17505220979176755151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A204231.P17505220979176755151

/-! ## A204231.P3068114366710923720

`A304818(A356475(n+1)%A104677(n))`
-/

namespace A204231.P3068114366710923720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (Int.tmod (A356475 (n + 1)) (A104677 n)).toNat

end

end A204231.P3068114366710923720

/-! ## A204231.P8897608112994814951

`A304818(A356475(n+1)+A000007(n+3))`
-/

namespace A204231.P8897608112994814951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (A356475 (n + 1) + A000007 (n + 3)).toNat

end

end A204231.P8897608112994814951

/-! ## A204231.P767003790495302556

`A304818(A356475(n+1))%A078858(n+1)`
-/

namespace A204231.P767003790495302556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304818 (A356475 (n + 1)).toNat) (A078858 (n + 1))

end

end A204231.P767003790495302556

/-!
# A204232: Numbers whose binary reversal is prime.

The programs for A204232, the canonical program `A204232.P14925845568226415786` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204232 has offset 1).

The definition of A204232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204232.P18040218038479429908

`eq[2, A227864(n)]`
-/

namespace A204232.P18040218038479429908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A204232.P18040218038479429908

namespace A204232

/-- `eq[2, A227864(n)]` -/
def P18040218038479429908.Spec : Prop :=
  ∀ n, (P18040218038479429908.a n : ℤ) = A204232 (n + 1)

end A204232

/-! ## A204232.P14925845568226415786

`eq[1, ∑{e}[A030101(n), #]]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A204232

/-- `eq[1, ∑{e}[A030101(n), #]]` -/
def P14925845568226415786.Spec : Prop :=
  ∀ n, (P14925845568226415786.a n : ℤ) = A204232 (n + 1)

theorem P14925845568226415786.correct : P14925845568226415786.Spec := by
  intro n
  simp only [A204232, Nat.add_sub_cancel]

end A204232

/-! ## A204232.P15431835736980172593

`eq[1, A032741(A030101(n))]`
-/

namespace A204232.P15431835736980172593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A204232.P15431835736980172593

namespace A204232

/-- `eq[1, A032741(A030101(n))]` -/
def P15431835736980172593.Spec : Prop :=
  ∀ n, (P15431835736980172593.a n : ℤ) = A204232 (n + 1)

end A204232

/-! ## A204232.P18286963946935217394

`lt[A007920(A030101(2*n)), 1]`
-/

namespace A204232.P18286963946935217394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A030101 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A204232.P18286963946935217394

namespace A204232

/-- `lt[A007920(A030101(2*n)), 1]` -/
def P18286963946935217394.Spec : Prop :=
  ∀ n, (P18286963946935217394.a n : ℤ) = A204232 (n + 1)

end A204232

/-! ## A204232.P5597031896780779489

`∪[A016041(n+1), A377421(n+1)]`
-/

namespace A204232.P5597031896780779489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A204232.P5597031896780779489

namespace A204232

/-- `∪[A016041(n+1), A377421(n+1)]` -/
def P5597031896780779489.Spec : Prop :=
  ∀ n, (P5597031896780779489.a n : ℤ) = A204232 (n + 1)

end A204232

/-! ## A204232.P15862302047478910496

`∪[A074832(n+1), A377421(n+1)]`
-/

namespace A204232.P15862302047478910496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A204232.P15862302047478910496

namespace A204232

/-- `∪[A074832(n+1), A377421(n+1)]` -/
def P15862302047478910496.Spec : Prop :=
  ∀ n, (P15862302047478910496.a n : ℤ) = A204232 (n + 1)

end A204232

/-! ## A204232.P4251290127756763799

`∪[A155801(n+1), A377421(n+1)]`
-/

namespace A204232.P4251290127756763799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A204232.P4251290127756763799

namespace A204232

/-- `∪[A155801(n+1), A377421(n+1)]` -/
def P4251290127756763799.Spec : Prop :=
  ∀ n, (P4251290127756763799.a n : ℤ) = A204232 (n + 1)

end A204232

/-! ## A204232.P2572148380867828919

`lt[A227864(2*n), A227864(A227864(2*n))]`
-/

namespace A204232.P2572148380867828919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 (A227864 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A204232.P2572148380867828919

namespace A204232

/-- `lt[A227864(2*n), A227864(A227864(2*n))]` -/
def P2572148380867828919.Spec : Prop :=
  ∀ n, (P2572148380867828919.a n : ℤ) = A204232 (n + 1)

end A204232

/-!
# A204233: Permanent of the n-th principal submatrix of A204016.

The programs for A204233, there is no canonical definition to state claims against.
-/

/-! ## A204233.P15121912051416344614

`A211513(abs(2-n^n))+n`
-/

namespace A204233.P15121912051416344614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211513 |2 - (n ^ n : ℤ)|.toNat + (n : ℤ)

end

end A204233.P15121912051416344614

/-!
# A204237: Symmetric matrix given by f(i,j)=max(3i-j,3j-i).

The programs for A204237, the canonical program `A204237.P6099322334008855491` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204237 has offset 1).

The definition of A204237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204237.P6099322334008855491

`A204156(n+1)+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A204237

/-- `A204156(n+1)+1` -/
def P6099322334008855491.Spec : Prop :=
  ∀ n, P6099322334008855491.a n = A204237 (n + 1)

theorem P6099322334008855491.correct : P6099322334008855491.Spec := by
  intro n
  simp only [A204237, Nat.add_sub_cancel]

end A204237

/-! ## A204237.P5662024022335933488

`A020725(A204156(n+1))`
-/

namespace A204237.P5662024022335933488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A204156 (n + 1)).toNat

end

end A204237.P5662024022335933488

namespace A204237

/-- `A020725(A204156(n+1))` -/
def P5662024022335933488.Spec : Prop :=
  ∀ n, P5662024022335933488.a n = A204237 (n + 1)

end A204237

/-! ## A204237.P6284332729613332227

`A204022(n+1)+A143182(n)`
-/

namespace A204237.P6284332729613332227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204022 (n + 1) + A143182 n

end

end A204237.P6284332729613332227

namespace A204237

/-- `A204022(n+1)+A143182(n)` -/
def P6284332729613332227.Spec : Prop :=
  ∀ n, P6284332729613332227.a n = A204237 (n + 1)

end A204237

/-! ## A204237.P763393783419670147

`A003056(n)+2*A143182(n)`
-/

namespace A204237.P763393783419670147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + 2 * A143182 n

end

end A204237.P763393783419670147

namespace A204237

/-- `A003056(n)+2*A143182(n)` -/
def P763393783419670147.Spec : Prop :=
  ∀ n, P763393783419670147.a n = A204237 (n + 1)

end A204237

/-! ## A204237.P16447504903821974211

`A204154(n+1)+A003984(n)+1`
-/

namespace A204237.P16447504903821974211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204154 (n + 1) + (A003984 n + 1)

end

end A204237.P16447504903821974211

namespace A204237

/-- `A204154(n+1)+A003984(n)+1` -/
def P16447504903821974211.Spec : Prop :=
  ∀ n, P16447504903821974211.a n = A204237 (n + 1)

end A204237

/-! ## A204237.P10524891604476537407

`A204158(n+1)+A003983(n+1)`
-/

namespace A204237.P10524891604476537407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204158 (n + 1) + A003983 (n + 1)

end

end A204237.P10524891604476537407

namespace A204237

/-- `A204158(n+1)+A003983(n+1)` -/
def P10524891604476537407.Spec : Prop :=
  ∀ n, P10524891604476537407.a n = A204237 (n + 1)

end A204237

/-! ## A204237.P2751371941045537118

`A204158(n+1)+A004197(n)+1`
-/

namespace A204237.P2751371941045537118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204158 (n + 1) + (A004197 n + 1)

end

end A204237.P2751371941045537118

namespace A204237

/-- `A204158(n+1)+A004197(n)+1` -/
def P2751371941045537118.Spec : Prop :=
  ∀ n, P2751371941045537118.a n = A204237 (n + 1)

end A204237

/-! ## A204237.P5607637778975873764

`A204022(n+1)+A049581(n)+1`
-/

namespace A204237.P5607637778975873764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204022 (n + 1) + (A049581 n + 1)

end

end A204237.P5607637778975873764

namespace A204237

/-- `A204022(n+1)+A049581(n)+1` -/
def P5607637778975873764.Spec : Prop :=
  ∀ n, P5607637778975873764.a n = A204237 (n + 1)

end A204237

/-! ## A204237.P11246442067938496486

`A204154(n+1)+A051125(n+1)`
-/

namespace A204237.P11246442067938496486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204154 (n + 1) + A051125 (n + 1)

end

end A204237.P11246442067938496486

namespace A204237

/-- `A204154(n+1)+A051125(n+1)` -/
def P11246442067938496486.Spec : Prop :=
  ∀ n, P11246442067938496486.a n = A204237 (n + 1)

end A204237

/-! ## A204237.P1279259116150977492

`A003056(n)+2*(A049581(n)+1)`
-/

namespace A204237.P1279259116150977492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + 2 * (A049581 n + 1)

end

end A204237.P1279259116150977492

namespace A204237

/-- `A003056(n)+2*(A049581(n)+1)` -/
def P1279259116150977492.Spec : Prop :=
  ∀ n, P1279259116150977492.a n = A204237 (n + 1)

end A204237

/-! ## A204237.P3352817407496533712

`A049581(n)+2*A051125(n+1)`
-/

namespace A204237.P3352817407496533712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 n + 2 * A051125 (n + 1)

end

end A204237.P3352817407496533712

namespace A204237

/-- `A049581(n)+2*A051125(n+1)` -/
def P3352817407496533712.Spec : Prop :=
  ∀ n, P3352817407496533712.a n = A204237 (n + 1)

end A204237

/-! ## A204237.P6422331385220349587

`A003057(n+2)+2*A049581(n)`
-/

namespace A204237.P6422331385220349587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) + 2 * A049581 n

end

end A204237.P6422331385220349587

namespace A204237

/-- `A003057(n+2)+2*A049581(n)` -/
def P6422331385220349587.Spec : Prop :=
  ∀ n, P6422331385220349587.a n = A204237 (n + 1)

end A204237

/-! ## A204237.P8966463922343422455

`2*A204022(n+1)-A003056(n)`
-/

namespace A204237.P8966463922343422455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204022 (n + 1) - A003056 n

end

end A204237.P8966463922343422455

namespace A204237

/-- `2*A204022(n+1)-A003056(n)` -/
def P8966463922343422455.Spec : Prop :=
  ∀ n, P8966463922343422455.a n = A204237 (n + 1)

end A204237

/-! ## A204237.P436864791574817113

`2*A204154(n+1)-A049581(n)`
-/

namespace A204237.P436864791574817113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204154 (n + 1) - A049581 n

end

end A204237.P436864791574817113

namespace A204237

/-- `2*A204154(n+1)-A049581(n)` -/
def P436864791574817113.Spec : Prop :=
  ∀ n, P436864791574817113.a n = A204237 (n + 1)

end A204237

/-! ## A204237.P11763976647798700380

`A204022(n+1)+abs(A114327(n))+1`
-/

namespace A204237.P11763976647798700380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204022 (n + 1) + (|A114327 n| + 1)

end

end A204237.P11763976647798700380

namespace A204237

/-- `A204022(n+1)+abs(A114327(n))+1` -/
def P11763976647798700380.Spec : Prop :=
  ∀ n, P11763976647798700380.a n = A204237 (n + 1)

end A204237

/-! ## A204237.P7800712017995169259

`2*A204154(n+1)-abs(A114327(n))`
-/

namespace A204237.P7800712017995169259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204154 (n + 1) - |A114327 n|

end

end A204237.P7800712017995169259

namespace A204237

/-- `2*A204154(n+1)-abs(A114327(n))` -/
def P7800712017995169259.Spec : Prop :=
  ∀ n, P7800712017995169259.a n = A204237 (n + 1)

end A204237

/-! ## A204237.P3671861227049023710

`A005408(A003984(n))+A049581(n)+1`
-/

namespace A204237.P3671861227049023710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A003984 n).toNat + (A049581 n + 1)

end

end A204237.P3671861227049023710

namespace A204237

/-- `A005408(A003984(n))+A049581(n)+1` -/
def P3671861227049023710.Spec : Prop :=
  ∀ n, P3671861227049023710.a n = A204237 (n + 1)

end A204237

/-! ## A204237.P6392414249501038632

`A008585(A049581(n))+2*A003983(n+1)`
-/

namespace A204237.P6392414249501038632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A049581 n).toNat + 2 * A003983 (n + 1)

end

end A204237.P6392414249501038632

namespace A204237

/-- `A008585(A049581(n))+2*A003983(n+1)` -/
def P6392414249501038632.Spec : Prop :=
  ∀ n, P6392414249501038632.a n = A204237 (n + 1)

end A204237

/-! ## A204237.P1446317010035613496

`A187760(n+1)+A220073(n+1)+A003056(n)`
-/

namespace A204237.P1446317010035613496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187760 (n + 1) + (A220073 (n + 1) + A003056 n)

end

end A204237.P1446317010035613496

namespace A204237

/-- `A187760(n+1)+A220073(n+1)+A003056(n)` -/
def P1446317010035613496.Spec : Prop :=
  ∀ n, P1446317010035613496.a n = A204237 (n + 1)

end A204237

/-! ## A204237.P17325148857480412431

`A111650(n+1)+A143182(n)-A157454(n+1)`
-/

namespace A204237.P17325148857480412431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) + (A143182 n - A157454 (n + 1))

end

end A204237.P17325148857480412431

namespace A204237

/-- `A111650(n+1)+A143182(n)-A157454(n+1)` -/
def P17325148857480412431.Spec : Prop :=
  ∀ n, P17325148857480412431.a n = A204237 (n + 1)

end A204237

/-!
# A204238: Determinant of the n-th principal submatrix of A204237.

The programs for A204238, the canonical program `A204238.P6692770897565763232` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204238 has offset 1).

The definition of A204238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204238.P5578099428266886317

`ogf((2-x)/(1+8x+16x^2))`
-/

namespace A204238.P5578099428266886317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, 8, 16] n

end

end A204238.P5578099428266886317

namespace A204238

/-- `ogf((2-x)/(1+8x+16x^2))` -/
def P5578099428266886317.Spec : Prop :=
  ∀ n, P5578099428266886317.a n = A204238 (n + 1)

end A204238

/-! ## A204238.P18238159884187487719

`(-4)^(n-1)*(1-9*(n+1))`
-/

namespace A204238.P18238159884187487719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (1 - (9 * (n + 1) : ℤ) : ℚ)

end

end A204238.P18238159884187487719

namespace A204238

/-- `(-4)^(n-1)*(1-9*(n+1))` -/
def P18238159884187487719.Spec : Prop :=
  ∀ n, P18238159884187487719.a n = (A204238 (n + 1) : ℚ)

end A204238

/-! ## A204238.P6692770897565763232

`(A185251(2*(n+1))+n*A011782(n)²)/(-1)^n`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A204238

/-- `(A185251(2*(n+1))+n*A011782(n)²)/(-1)^n` -/
def P6692770897565763232.Spec : Prop :=
  ∀ n, P6692770897565763232.a n = (A204238 (n + 1) : ℚ)

end A204238

/-!
# A204240: Determinant of the n-th principal submatrix of A204158.

The programs for A204240, the canonical program `A204240.P17909361732265231647` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204240 has offset 1).

The definition of A204240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204240.P17909361732265231647

`ogf((1-4x)/(1+10x+25x^2))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204240

/-- `ogf((1-4x)/(1+10x+25x^2))` -/
def P17909361732265231647.Spec : Prop :=
  ∀ n, P17909361732265231647.a n = A204240 (n + 1)

theorem P17909361732265231647.correct : P17909361732265231647.Spec := by
  intro n
  simp only [A204240, Nat.add_sub_cancel]

end A204240

/-! ## A204240.P2824441159049402907

`A204159(∑[n+1])`
-/

namespace A204240.P2824441159049402907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204159 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204240.P2824441159049402907

namespace A204240

/-- `A204159(∑[n+1])` -/
def P2824441159049402907.Spec : Prop :=
  ∀ n, P2824441159049402907.a n = A204240 (n + 1)

end A204240

/-! ## A204240.P9776452300646705996

`A057427(n+4)*A204159(A179865(n+2))`
-/

namespace A204240.P9776452300646705996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 4) * A204159 (A179865 (n + 2)).toNat

end

end A204240.P9776452300646705996

namespace A204240

/-- `A057427(n+4)*A204159(A179865(n+2))` -/
def P9776452300646705996.Spec : Prop :=
  ∀ n, P9776452300646705996.a n = A204240 (n + 1)

end A204240

/-! ## A204240.P9763386218287320834

`A204159(A000217(n+1))%A025994(n+1)`
-/

namespace A204240.P9763386218287320834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204159 (A000217 (n + 1)).toNat) (A025994 (n + 1))

end

end A204240.P9763386218287320834

namespace A204240

/-- `A204159(A000217(n+1))%A025994(n+1)` -/
def P9763386218287320834.Spec : Prop :=
  ∀ n, P9763386218287320834.a n = A204240 (n + 1)

end A204240

/-! ## A204240.P2823314627223840498

`A204159(A179865(n+2))%A000051(3*n+2)`
-/

namespace A204240.P2823314627223840498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204159 (A179865 (n + 2)).toNat) (A000051 (3 * n + 2))

end

end A204240.P2823314627223840498

namespace A204240

/-- `A204159(A179865(n+2))%A000051(3*n+2)` -/
def P2823314627223840498.Spec : Prop :=
  ∀ n, P2823314627223840498.a n = A204240 (n + 1)

end A204240

/-!
# A204242: Infinite symmetric matrix given by f(i,1)=1, f(1,j)=1, f(i,i)=2^i-1 and f(i,j)=0 otherwise, read by antidiagonals.

The programs for A204242, the canonical program `A204242.P6714751862581985513` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204242 has offset 1).

The definition of A204242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204242.P2729202398846117271

`2^A204179(n+1)-1`
-/

namespace A204242.P2729202398846117271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A204179 (n + 1) : ℤ) - 1

end

end A204242.P2729202398846117271

namespace A204242

/-- `2^A204179(n+1)-1` -/
def P2729202398846117271.Spec : Prop :=
  ∀ n, P2729202398846117271.a n = (A204242 (n + 1) : ℚ)

end A204242

/-! ## A204242.P6714751862581985513

`A000225(A204179(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A204242

/-- `A000225(A204179(n+1))` -/
def P6714751862581985513.Spec : Prop :=
  ∀ n, P6714751862581985513.a n = A204242 (n + 1)

theorem P6714751862581985513.correct : P6714751862581985513.Spec := by
  intro n
  simp only [A204242, Nat.add_sub_cancel]

end A204242

/-! ## A204242.P17505983546079200310

`A087100(A204181(n+1))`
-/

namespace A204242.P17505983546079200310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087100 (A204181 (n + 1)).toNat

end

end A204242.P17505983546079200310

namespace A204242

/-- `A087100(A204181(n+1))` -/
def P17505983546079200310.Spec : Prop :=
  ∀ n, P17505983546079200310.a n = A204242 (n + 1)

end A204242

/-! ## A204242.P577529286390973155

`A131247(n)*A204177(n+1)`
-/

namespace A204242.P577529286390973155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131247 n * A204177 (n + 1)

end

end A204242.P577529286390973155

namespace A204242

/-- `A131247(n)*A204177(n+1)` -/
def P577529286390973155.Spec : Prop :=
  ∀ n, P577529286390973155.a n = A204242 (n + 1)

end A204242

/-! ## A204242.P2652970488778437376

`A131248(n)*A204177(n+1)`
-/

namespace A204242.P2652970488778437376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131248 n * A204177 (n + 1)

end

end A204242.P2652970488778437376

namespace A204242

/-- `A131248(n)*A204177(n+1)` -/
def P2652970488778437376.Spec : Prop :=
  ∀ n, P2652970488778437376.a n = A204242 (n + 1)

end A204242

/-! ## A204242.P525340956338988855

`A143086(n)*A204177(n+1)`
-/

namespace A204242.P525340956338988855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143086 n * A204177 (n + 1)

end

end A204242.P525340956338988855

namespace A204242

/-- `A143086(n)*A204177(n+1)` -/
def P525340956338988855.Spec : Prop :=
  ∀ n, P525340956338988855.a n = A204242 (n + 1)

end A204242

/-! ## A204242.P2108628746576171830

`lcm(A131247(n), A185917(n+1))`
-/

namespace A204242.P2108628746576171830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131247 n) (A185917 (n + 1))

end

end A204242.P2108628746576171830

namespace A204242

/-- `lcm(A131247(n), A185917(n+1))` -/
def P2108628746576171830.Spec : Prop :=
  ∀ n, (P2108628746576171830.a n : ℤ) = A204242 (n + 1)

end A204242

/-! ## A204242.P17489559289337849104

`lcm(A131248(n), A204183(n+1))`
-/

namespace A204242.P17489559289337849104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131248 n) (A204183 (n + 1))

end

end A204242.P17489559289337849104

namespace A204242

/-- `lcm(A131248(n), A204183(n+1))` -/
def P17489559289337849104.Spec : Prop :=
  ∀ n, (P17489559289337849104.a n : ℤ) = A204242 (n + 1)

end A204242

/-! ## A204242.P7428009348262160378

`and(A130330(n), A185917(n+1))`
-/

namespace A204242.P7428009348262160378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130330 n) (A185917 (n + 1))

end

end A204242.P7428009348262160378

namespace A204242

/-- `and(A130330(n), A185917(n+1))` -/
def P7428009348262160378.Spec : Prop :=
  ∀ n, P7428009348262160378.a n = A204242 (n + 1)

end A204242

/-! ## A204242.P1255949013678150359

`and(A131248(n), A185917(n+1))`
-/

namespace A204242.P1255949013678150359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131248 n) (A185917 (n + 1))

end

end A204242.P1255949013678150359

namespace A204242

/-- `and(A131248(n), A185917(n+1))` -/
def P1255949013678150359.Spec : Prop :=
  ∀ n, P1255949013678150359.a n = A204242 (n + 1)

end A204242

/-! ## A204242.P18335524850152877206

`and(A143086(n), A185917(n+1))`
-/

namespace A204242.P18335524850152877206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143086 n) (A185917 (n + 1))

end

end A204242.P18335524850152877206

namespace A204242

/-- `and(A143086(n), A185917(n+1))` -/
def P18335524850152877206.Spec : Prop :=
  ∀ n, P18335524850152877206.a n = A204242 (n + 1)

end A204242

/-! ## A204242.P2794542612688467544

`and(A185917(n+1), A228147(n))`
-/

namespace A204242.P2794542612688467544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A228147 n)

end

end A204242.P2794542612688467544

namespace A204242

/-- `and(A185917(n+1), A228147(n))` -/
def P2794542612688467544.Spec : Prop :=
  ∀ n, P2794542612688467544.a n = A204242 (n + 1)

end A204242

/-! ## A204242.P7079133583012045334

`A204116(n+1)*A204177(n+1)`
-/

namespace A204242.P7079133583012045334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204116 (n + 1) * A204177 (n + 1)

end

end A204242.P7079133583012045334

namespace A204242

/-- `A204116(n+1)*A204177(n+1)` -/
def P7079133583012045334.Spec : Prop :=
  ∀ n, P7079133583012045334.a n = A204242 (n + 1)

end A204242

/-! ## A204242.P17535828499826177053

`and(A185917(n+1), A204116(n+1))`
-/

namespace A204242.P17535828499826177053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A204116 (n + 1))

end

end A204242.P17535828499826177053

namespace A204242

/-- `and(A185917(n+1), A204116(n+1))` -/
def P17535828499826177053.Spec : Prop :=
  ∀ n, P17535828499826177053.a n = A204242 (n + 1)

end A204242

/-! ## A204242.P8340819737956645824

`A204183(n+1)²*A204116(n+1)`
-/

namespace A204242.P8340819737956645824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204183 (n + 1) ^ 2 * A204116 (n + 1)

end

end A204242.P8340819737956645824

namespace A204242

/-- `A204183(n+1)²*A204116(n+1)` -/
def P8340819737956645824.Spec : Prop :=
  ∀ n, P8340819737956645824.a n = A204242 (n + 1)

end A204242

/-! ## A204242.P2792495927873447013

`and(A000225(A002260(n+1)), A185917(n+1))`
-/

namespace A204242.P2792495927873447013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A002260 (n + 1)).toNat) (A185917 (n + 1))

end

end A204242.P2792495927873447013

namespace A204242

/-- `and(A000225(A002260(n+1)), A185917(n+1))` -/
def P2792495927873447013.Spec : Prop :=
  ∀ n, P2792495927873447013.a n = A204242 (n + 1)

end A204242

/-! ## A204242.P9596654916531333237

`and(A000225(A004736(n+1)), A185917(n+1))`
-/

namespace A204242.P9596654916531333237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A004736 (n + 1)).toNat) (A185917 (n + 1))

end

end A204242.P9596654916531333237

namespace A204242

/-- `and(A000225(A004736(n+1)), A185917(n+1))` -/
def P9596654916531333237.Spec : Prop :=
  ∀ n, P9596654916531333237.a n = A204242 (n + 1)

end A204242

/-! ## A204242.P13330328181329978894

`A125127(n+1)*A204177(n+1)`
-/

namespace A204242.P13330328181329978894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125127 (n + 1) * A204177 (n + 1)

end

end A204242.P13330328181329978894

namespace A204242

/-- `A125127(n+1)*A204177(n+1)` -/
def P13330328181329978894.Spec : Prop :=
  ∀ n, P13330328181329978894.a n = A204242 (n + 1)

end A204242

/-! ## A204242.P14132596162259174189

`and(A125127(n+1), A185917(n+1))`
-/

namespace A204242.P14132596162259174189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125127 (n + 1)) (A185917 (n + 1))

end

end A204242.P14132596162259174189

namespace A204242

/-- `and(A125127(n+1), A185917(n+1))` -/
def P14132596162259174189.Spec : Prop :=
  ∀ n, P14132596162259174189.a n = A204242 (n + 1)

end A204242

/-! ## A204242.P16441614319309694725

`and(A040026(A131816(n)), A185917(n+1))`
-/

namespace A204242.P16441614319309694725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040026 (A131816 n).toNat) (A185917 (n + 1))

end

end A204242.P16441614319309694725

namespace A204242

/-- `and(A040026(A131816(n)), A185917(n+1))` -/
def P16441614319309694725.Spec : Prop :=
  ∀ n, P16441614319309694725.a n = A204242 (n + 1)

end A204242

/-!
# A204243: Determinant of the n-th principal submatrix of A204242.

The programs for A204243, there is no canonical definition to state claims against.
-/

/-! ## A204243.P16206144452511564199

`2*A005329(n+1)-A203011(n+1)`
-/

namespace A204243.P16206144452511564199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005329 (n + 1) - A203011 (n + 1)

end

end A204243.P16206144452511564199

/-!
# A204244: Symmetric matrix given by f(i,1)=1, f(1,j)=1, f(i,i)=i! and f(i,j)=0 otherwise.

The programs for A204244, the canonical program `A204244.P1349484768882354249` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204244 has offset 1).

The definition of A204244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9660 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204244.P2958701521772198606

`A089688(n)*A204246(n+1)`
-/

namespace A204244.P2958701521772198606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 n * A204246 (n + 1)

end

end A204244.P2958701521772198606

namespace A204244

/-- `A089688(n)*A204246(n+1)` -/
def P2958701521772198606.Spec : Prop :=
  ∀ n, P2958701521772198606.a n = A204244 (n + 1)

end A204244

/-! ## A204244.P18436147788793522321

`A128227(n)*A204246(n+1)`
-/

namespace A204244.P18436147788793522321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n * A204246 (n + 1)

end

end A204244.P18436147788793522321

namespace A204244

/-- `A128227(n)*A204246(n+1)` -/
def P18436147788793522321.Spec : Prop :=
  ∀ n, P18436147788793522321.a n = A204244 (n + 1)

end A204244

/-! ## A204244.P10467450132653383146

`A193592(n)*A204246(n+1)`
-/

namespace A204244.P10467450132653383146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n * A204246 (n + 1)

end

end A204244.P10467450132653383146

namespace A204244

/-- `A193592(n)*A204246(n+1)` -/
def P10467450132653383146.Spec : Prop :=
  ∀ n, P10467450132653383146.a n = A204244 (n + 1)

end A204244

/-! ## A204244.P14764587296668803340

`A204246(n+1)*A307079(n)`
-/

namespace A204244.P14764587296668803340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204246 (n + 1) * A307079 n

end

end A204244.P14764587296668803340

namespace A204244

/-- `A204246(n+1)*A307079(n)` -/
def P14764587296668803340.Spec : Prop :=
  ∀ n, P14764587296668803340.a n = A204244 (n + 1)

end A204244

/-! ## A204244.P14771639170065914271

`A204246(n+1)*A332013(n)`
-/

namespace A204244.P14771639170065914271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204246 (n + 1) * A332013 n

end

end A204244.P14771639170065914271

namespace A204244

/-- `A204246(n+1)*A332013(n)` -/
def P14771639170065914271.Spec : Prop :=
  ∀ n, P14771639170065914271.a n = A204244 (n + 1)

end A204244

/-! ## A204244.P8965447386132272935

`A003983(n+1)*A204246(n+1)`
-/

namespace A204244.P8965447386132272935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) * A204246 (n + 1)

end

end A204244.P8965447386132272935

namespace A204244

/-- `A003983(n+1)*A204246(n+1)` -/
def P8965447386132272935.Spec : Prop :=
  ∀ n, P8965447386132272935.a n = A204244 (n + 1)

end A204244

/-! ## A204244.P13893944940885658875

`A003989(n+1)*A204246(n+1)`
-/

namespace A204244.P13893944940885658875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1) * A204246 (n + 1)

end

end A204244.P13893944940885658875

namespace A204244

/-- `A003989(n+1)*A204246(n+1)` -/
def P13893944940885658875.Spec : Prop :=
  ∀ n, P13893944940885658875.a n = A204244 (n + 1)

end A204244

/-! ## A204244.P6209259552627840086

`A059895(n+1)*A204246(n+1)`
-/

namespace A204244.P6209259552627840086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059895 (n + 1) * A204246 (n + 1)

end

end A204244.P6209259552627840086

namespace A204244

/-- `A059895(n+1)*A204246(n+1)` -/
def P6209259552627840086.Spec : Prop :=
  ∀ n, P6209259552627840086.a n = A204244 (n + 1)

end A204244

/-! ## A204244.P15650632182640174645

`A091255(n+1)*A204246(n+1)`
-/

namespace A204244.P15650632182640174645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (n + 1) * A204246 (n + 1)

end

end A204244.P15650632182640174645

namespace A204244

/-- `A091255(n+1)*A204246(n+1)` -/
def P15650632182640174645.Spec : Prop :=
  ∀ n, P15650632182640174645.a n = A204244 (n + 1)

end A204244

/-! ## A204244.P9298164051086014609

`A164306(n+1)*A204246(n+1)`
-/

namespace A204244.P9298164051086014609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (n + 1) * A204246 (n + 1)

end

end A204244.P9298164051086014609

namespace A204244

/-- `A164306(n+1)*A204246(n+1)` -/
def P9298164051086014609.Spec : Prop :=
  ∀ n, P9298164051086014609.a n = A204244 (n + 1)

end A204244

/-! ## A204244.P14859355607666880686

`A175466(n+1)*A204246(n+1)`
-/

namespace A204244.P14859355607666880686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175466 (n + 1) * A204246 (n + 1)

end

end A204244.P14859355607666880686

namespace A204244

/-- `A175466(n+1)*A204246(n+1)` -/
def P14859355607666880686.Spec : Prop :=
  ∀ n, P14859355607666880686.a n = A204244 (n + 1)

end A204244

/-! ## A204244.P337677526300860884

`and(A107044(n+2), A185917(n+1))`
-/

namespace A204244.P337677526300860884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107044 (n + 2)) (A185917 (n + 1))

end

end A204244.P337677526300860884

namespace A204244

/-- `and(A107044(n+2), A185917(n+1))` -/
def P337677526300860884.Spec : Prop :=
  ∀ n, P337677526300860884.a n = A204244 (n + 1)

end A204244

/-! ## A204244.P1349484768882354249

`A204179(n+1)!*A204177(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A204244

/-- `A204179(n+1)!*A204177(n+1)` -/
def P1349484768882354249.Spec : Prop :=
  ∀ n, P1349484768882354249.a n = A204244 (n + 1)

theorem P1349484768882354249.correct : P1349484768882354249.Spec := by
  intro n
  simp only [A204244, Nat.add_sub_cancel]

end A204244

/-! ## A204244.P592613614031561002

`A109626(n+1)*A204246(n+1)`
-/

namespace A204244.P592613614031561002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (n + 1) * A204246 (n + 1)

end

end A204244.P592613614031561002

namespace A204244

/-- `A109626(n+1)*A204246(n+1)` -/
def P592613614031561002.Spec : Prop :=
  ∀ n, P592613614031561002.a n = A204244 (n + 1)

end A204244

/-! ## A204244.P12488735150353038275

`A204179(n+1)*A267383(n)`
-/

namespace A204244.P12488735150353038275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204179 (n + 1) * A267383 n

end

end A204244.P12488735150353038275

namespace A204244

/-- `A204179(n+1)*A267383(n)` -/
def P12488735150353038275.Spec : Prop :=
  ∀ n, P12488735150353038275.a n = A204244 (n + 1)

end A204244

/-! ## A204244.P9231608193874808792

`A204179(n+1)*A265312(n)`
-/

namespace A204244.P9231608193874808792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204179 (n + 1) * A265312 n

end

end A204244.P9231608193874808792

namespace A204244

/-- `A204179(n+1)*A265312(n)` -/
def P9231608193874808792.Spec : Prop :=
  ∀ n, P9231608193874808792.a n = A204244 (n + 1)

end A204244

/-! ## A204244.P13010957529718463173

`A047888(A204177(n+1)+n)*A204177(n+1)`
-/

namespace A204244.P13010957529718463173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047888 (A204177 (n + 1) + (n : ℤ)).toNat * A204177 (n + 1)

end

end A204244.P13010957529718463173

namespace A204244

/-- `A047888(A204177(n+1)+n)*A204177(n+1)` -/
def P13010957529718463173.Spec : Prop :=
  ∀ n, P13010957529718463173.a n = A204244 (n + 1)

end A204244

/-! ## A204244.P981014390508650812

`A047888(n+1)*A204177(n+1)`
-/

namespace A204244.P981014390508650812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047888 (n + 1) * A204177 (n + 1)

end

end A204244.P981014390508650812

namespace A204244

/-- `A047888(n+1)*A204177(n+1)` -/
def P981014390508650812.Spec : Prop :=
  ∀ n, P981014390508650812.a n = A204244 (n + 1)

end A204244

/-! ## A204244.P765031405434797359

`lcm(A047888(n+1), A185917(n+1))`
-/

namespace A204244.P765031405434797359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A047888 (n + 1)) (A185917 (n + 1))

end

end A204244.P765031405434797359

namespace A204244

/-- `lcm(A047888(n+1), A185917(n+1))` -/
def P765031405434797359.Spec : Prop :=
  ∀ n, (P765031405434797359.a n : ℤ) = A204244 (n + 1)

end A204244

/-! ## A204244.P5909636710302309110

`A204179(n+1)*A306209(n)`
-/

namespace A204244.P5909636710302309110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204179 (n + 1) * A306209 n

end

end A204244.P5909636710302309110

namespace A204244

/-- `A204179(n+1)*A306209(n)` -/
def P5909636710302309110.Spec : Prop :=
  ∀ n, P5909636710302309110.a n = A204244 (n + 1)

end A204244

/-!
# A204245: Determinant of the n-th principal submatrix of A204244.

The programs for A204245, there is no canonical definition to state claims against.
-/

/-! ## A204245.P3517080652220479570

`A000178(n)*A056543(n+1)`
-/

namespace A204245.P3517080652220479570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A056543 (n + 1)

end

end A204245.P3517080652220479570

/-! ## A204245.P17829327656106150827

`∏[A000142(n)]*A056543(n+1)`
-/

namespace A204245.P17829327656106150827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A056543 (n + 1)

end

end A204245.P17829327656106150827

/-! ## A204245.P5734342814234287852

`A204247(n+2)+A000178(n+1)`
-/

namespace A204245.P5734342814234287852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204247 (n + 2) + A000178 (n + 1)

end

end A204245.P5734342814234287852

/-! ## A204245.P2243089466945726005

`A000178(n+1)+A000178(n+1)-A203228(n+1)`
-/

namespace A204245.P2243089466945726005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 (n + 1) + (A000178 (n + 1) - A203228 (n + 1))

end

end A204245.P2243089466945726005

/-! ## A204245.P12746047103700419590

`A203228(n+1)+A204247(n+2)+A204247(n+2)`
-/

namespace A204245.P12746047103700419590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203228 (n + 1) + (A204247 (n + 2) + A204247 (n + 2))

end

end A204245.P12746047103700419590

/-!
# A204246: Array given by f(i,1)=1, f(1,j)=1, f(i,i)=(i-1)!, and f(i,j)=0 otherwise, read by antidiagonals.

The programs for A204246, the canonical program `A204246.P3171406654780179534` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204246 has offset 1).

The definition of A204246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9660 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204246.P6813429391025889426

`A204244(n+1)/A089688(n)`
-/

namespace A204246.P6813429391025889426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204244 (n + 1) : ℚ) / (A089688 n : ℚ)

end

end A204246.P6813429391025889426

namespace A204246

/-- `A204244(n+1)/A089688(n)` -/
def P6813429391025889426.Spec : Prop :=
  ∀ n, P6813429391025889426.a n = (A204246 (n + 1) : ℚ)

end A204246

/-! ## A204246.P3171406654780179534

`A204244(n+1)/A128227(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A204246

/-- `A204244(n+1)/A128227(n)` -/
def P3171406654780179534.Spec : Prop :=
  ∀ n, P3171406654780179534.a n = (A204246 (n + 1) : ℚ)

end A204246

/-! ## A204246.P17697355104406360169

`A204244(n+1)/A193592(n)`
-/

namespace A204246.P17697355104406360169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204244 (n + 1) : ℚ) / (A193592 n : ℚ)

end

end A204246.P17697355104406360169

namespace A204246

/-- `A204244(n+1)/A193592(n)` -/
def P17697355104406360169.Spec : Prop :=
  ∀ n, P17697355104406360169.a n = (A204246 (n + 1) : ℚ)

end A204246

/-! ## A204246.P13756704729680938514

`A204244(n+1)/A332013(n)`
-/

namespace A204246.P13756704729680938514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204244 (n + 1) : ℚ) / (A332013 n : ℚ)

end

end A204246.P13756704729680938514

namespace A204246

/-- `A204244(n+1)/A332013(n)` -/
def P13756704729680938514.Spec : Prop :=
  ∀ n, P13756704729680938514.a n = (A204246 (n + 1) : ℚ)

end A204246

/-! ## A204246.P12099364918150275856

`A204244(n+1)/A003983(n+1)`
-/

namespace A204246.P12099364918150275856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204244 (n + 1) : ℚ) / (A003983 (n + 1) : ℚ)

end

end A204246.P12099364918150275856

namespace A204246

/-- `A204244(n+1)/A003983(n+1)` -/
def P12099364918150275856.Spec : Prop :=
  ∀ n, P12099364918150275856.a n = (A204246 (n + 1) : ℚ)

end A204246

/-! ## A204246.P3209440307811845968

`A204244(n+1)/A003989(n+1)`
-/

namespace A204246.P3209440307811845968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204244 (n + 1) : ℚ) / (A003989 (n + 1) : ℚ)

end

end A204246.P3209440307811845968

namespace A204246

/-- `A204244(n+1)/A003989(n+1)` -/
def P3209440307811845968.Spec : Prop :=
  ∀ n, P3209440307811845968.a n = (A204246 (n + 1) : ℚ)

end A204246

/-! ## A204246.P13198015093153131251

`A204244(n+1)/A059895(n+1)`
-/

namespace A204246.P13198015093153131251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204244 (n + 1) : ℚ) / (A059895 (n + 1) : ℚ)

end

end A204246.P13198015093153131251

namespace A204246

/-- `A204244(n+1)/A059895(n+1)` -/
def P13198015093153131251.Spec : Prop :=
  ∀ n, P13198015093153131251.a n = (A204246 (n + 1) : ℚ)

end A204246

/-! ## A204246.P6779136987279422042

`A204244(n+1)/A091255(n+1)`
-/

namespace A204246.P6779136987279422042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204244 (n + 1) : ℚ) / (A091255 (n + 1) : ℚ)

end

end A204246.P6779136987279422042

namespace A204246

/-- `A204244(n+1)/A091255(n+1)` -/
def P6779136987279422042.Spec : Prop :=
  ∀ n, P6779136987279422042.a n = (A204246 (n + 1) : ℚ)

end A204246

/-! ## A204246.P17751418793624810482

`A204244(n+1)/A109626(n+1)`
-/

namespace A204246.P17751418793624810482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204244 (n + 1) : ℚ) / (A109626 (n + 1) : ℚ)

end

end A204246.P17751418793624810482

namespace A204246

/-- `A204244(n+1)/A109626(n+1)` -/
def P17751418793624810482.Spec : Prop :=
  ∀ n, P17751418793624810482.a n = (A204246 (n + 1) : ℚ)

end A204246

/-! ## A204246.P11772699814038919816

`A204177(n+1)*A267383(n)`
-/

namespace A204246.P11772699814038919816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204177 (n + 1) * A267383 n

end

end A204246.P11772699814038919816

namespace A204246

/-- `A204177(n+1)*A267383(n)` -/
def P11772699814038919816.Spec : Prop :=
  ∀ n, P11772699814038919816.a n = A204246 (n + 1)

end A204246

/-! ## A204246.P2615980569338896060

`and(A185917(n+1), A267383(n))`
-/

namespace A204246.P2615980569338896060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A267383 n)

end

end A204246.P2615980569338896060

namespace A204246

/-- `and(A185917(n+1), A267383(n))` -/
def P2615980569338896060.Spec : Prop :=
  ∀ n, P2615980569338896060.a n = A204246 (n + 1)

end A204246

/-! ## A204246.P6088152728766870417

`A204177(n+1)*A265312(n)`
-/

namespace A204246.P6088152728766870417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204177 (n + 1) * A265312 n

end

end A204246.P6088152728766870417

namespace A204246

/-- `A204177(n+1)*A265312(n)` -/
def P6088152728766870417.Spec : Prop :=
  ∀ n, P6088152728766870417.a n = A204246 (n + 1)

end A204246

/-! ## A204246.P8719190770509903340

`lcm(A204183(n+1), A265312(n))`
-/

namespace A204246.P8719190770509903340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A204183 (n + 1)) (A265312 n)

end

end A204246.P8719190770509903340

namespace A204246

/-- `lcm(A204183(n+1), A265312(n))` -/
def P8719190770509903340.Spec : Prop :=
  ∀ n, (P8719190770509903340.a n : ℤ) = A204246 (n + 1)

end A204246

/-! ## A204246.P8137872719441775338

`and(A185917(n+1), A265312(n))`
-/

namespace A204246.P8137872719441775338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A265312 n)

end

end A204246.P8137872719441775338

namespace A204246

/-- `and(A185917(n+1), A265312(n))` -/
def P8137872719441775338.Spec : Prop :=
  ∀ n, P8137872719441775338.a n = A204246 (n + 1)

end A204246

/-! ## A204246.P13962962724223900408

`A204177(n+1)*A306209(n)`
-/

namespace A204246.P13962962724223900408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204177 (n + 1) * A306209 n

end

end A204246.P13962962724223900408

namespace A204246

/-- `A204177(n+1)*A306209(n)` -/
def P13962962724223900408.Spec : Prop :=
  ∀ n, P13962962724223900408.a n = A204246 (n + 1)

end A204246

/-! ## A204246.P18316452686689569283

`and(A185917(n+1), A306209(n))`
-/

namespace A204246.P18316452686689569283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A306209 n)

end

end A204246.P18316452686689569283

namespace A204246

/-- `and(A185917(n+1), A306209(n))` -/
def P18316452686689569283.Spec : Prop :=
  ∀ n, P18316452686689569283.a n = A204246 (n + 1)

end A204246

/-! ## A204246.P13672146340393219999

`A306714(A204242(n+1))/A089688(n)`
-/

namespace A204246.P13672146340393219999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306714 (A204242 (n + 1)).toNat : ℚ) / (A089688 n : ℚ)

end

end A204246.P13672146340393219999

namespace A204246

/-- `A306714(A204242(n+1))/A089688(n)` -/
def P13672146340393219999.Spec : Prop :=
  ∀ n, P13672146340393219999.a n = (A204246 (n + 1) : ℚ)

end A204246

/-! ## A204246.P3398648589166169444

`A265312(n)%A000070(A204242(n+1))`
-/

namespace A204246.P3398648589166169444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265312 n) (A000070 (A204242 (n + 1)).toNat)

end

end A204246.P3398648589166169444

namespace A204246

/-- `A265312(n)%A000070(A204242(n+1))` -/
def P3398648589166169444.Spec : Prop :=
  ∀ n, P3398648589166169444.a n = A204246 (n + 1)

end A204246

/-! ## A204246.P12710175128372448898

`A267383(n)%A000070(A204242(n+1))`
-/

namespace A204246.P12710175128372448898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267383 n) (A000070 (A204242 (n + 1)).toNat)

end

end A204246.P12710175128372448898

namespace A204246

/-- `A267383(n)%A000070(A204242(n+1))` -/
def P12710175128372448898.Spec : Prop :=
  ∀ n, P12710175128372448898.a n = A204246 (n + 1)

end A204246

/-! ## A204246.P15292160848645099353

`A306209(n)%A000070(A204242(n+1))`
-/

namespace A204246.P15292160848645099353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306209 n) (A000070 (A204242 (n + 1)).toNat)

end

end A204246.P15292160848645099353

namespace A204246

/-- `A306209(n)%A000070(A204242(n+1))` -/
def P15292160848645099353.Spec : Prop :=
  ∀ n, P15292160848645099353.a n = A204246 (n + 1)

end A204246

/-!
# A204247: Determinant of the n-th principal submatrix of A204246.

The programs for A204247, there is no canonical definition to state claims against.
-/

/-! ## A204247.P5562999129104344274

`A353430(A353430(2*(n+2)))-A033886(2*(n+2))`
-/

namespace A204247.P5562999129104344274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353430 (A353430 (2 * (n + 2))).toNat - A033886 (2 * (n + 2))

end

end A204247.P5562999129104344274

/-!
# A204248: Permanent of the n-th principal submatrix of A002024.

The programs for A204248, there is no canonical definition to state claims against.
-/

/-! ## A204248.P80277644556505435

`abs(A238685(n+1)/A002457(n))`
-/

namespace A204248.P80277644556505435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A238685 (n + 1) : ℚ) / (A002457 n : ℚ)|

end

end A204248.P80277644556505435

/-! ## A204248.P567475995216541941

`A226057(n+1)/(n+1)`
-/

namespace A204248.P567475995216541941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226057 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A204248.P567475995216541941

/-!
# A204250: Symmetric matrix read by antidiagonals given by T(i,j)=i*j+i+j-2.

The programs for A204250, the canonical program `A204250.P17821355249436488297` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204250 has offset 1).

The definition of A204250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204250.P17821355249436488297

`A173395(n+1)-3`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A204250

/-- `A173395(n+1)-3` -/
def P17821355249436488297.Spec : Prop :=
  ∀ n, P17821355249436488297.a n = A204250 (n + 1)

theorem P17821355249436488297.correct : P17821355249436488297.Spec := by
  intro n
  simp only [A204250, Nat.add_sub_cancel]

end A204250

/-! ## A204250.P15929060550593489982

`A059036(n)+∑[char[∑[n]]]`
-/

namespace A204250.P15929060550593489982
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A204250.P15929060550593489982

namespace A204250

/-- `A059036(n)+∑[char[∑[n]]]` -/
def P15929060550593489982.Spec : Prop :=
  ∀ n, P15929060550593489982.a n = A204250 (n + 1)

end A204250

/-! ## A204250.P9875715597890482142

`∑[char[∑[n]]]²-A073254(n)`
-/

namespace A204250.P9875715597890482142
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A073254 n

end

end A204250.P9875715597890482142

namespace A204250

/-- `∑[char[∑[n]]]²-A073254(n)` -/
def P9875715597890482142.Spec : Prop :=
  ∀ n, P9875715597890482142.a n = A204250 (n + 1)

end A204250

/-! ## A204250.P74364326715529993

`A003991(n+1)+∑[char[∑[n+1]]]`
-/

namespace A204250.P74364326715529993
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A204250.P74364326715529993

namespace A204250

/-- `A003991(n+1)+∑[char[∑[n+1]]]` -/
def P74364326715529993.Spec : Prop :=
  ∀ n, P74364326715529993.a n = A204250 (n + 1)

end A204250

/-! ## A204250.P8741738219040222793

`A023445(A173395(n+1))`
-/

namespace A204250.P8741738219040222793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A173395 (n + 1)).toNat

end

end A204250.P8741738219040222793

namespace A204250

/-- `A023445(A173395(n+1))` -/
def P8741738219040222793.Spec : Prop :=
  ∀ n, P8741738219040222793.a n = A204250 (n + 1)

end A204250

/-! ## A204250.P14969731703709029526

`A131507(n)+A004247(n)`
-/

namespace A204250.P14969731703709029526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n + A004247 n

end

end A204250.P14969731703709029526

namespace A204250

/-- `A131507(n)+A004247(n)` -/
def P14969731703709029526.Spec : Prop :=
  ∀ n, P14969731703709029526.a n = A204250 (n + 1)

end A204250

/-! ## A204250.P17823611453885445629

`A279891(n)+A077028(n)`
-/

namespace A204250.P17823611453885445629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + A077028 n

end

end A204250.P17823611453885445629

namespace A204250

/-- `A279891(n)+A077028(n)` -/
def P17823611453885445629.Spec : Prop :=
  ∀ n, P17823611453885445629.a n = A204250 (n + 1)

end A204250

/-! ## A204250.P3622650162846152536

`A294317(n)+A128139(n)`
-/

namespace A204250.P3622650162846152536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 n + A128139 n

end

end A204250.P3622650162846152536

namespace A204250

/-- `A294317(n)+A128139(n)` -/
def P3622650162846152536.Spec : Prop :=
  ∀ n, P3622650162846152536.a n = A204250 (n + 1)

end A204250

/-! ## A204250.P13492552689330298900

`A105020(n)-A079904(n)`
-/

namespace A204250.P13492552689330298900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 n - A079904 n

end

end A204250.P13492552689330298900

namespace A204250

/-- `A105020(n)-A079904(n)` -/
def P13492552689330298900.Spec : Prop :=
  ∀ n, P13492552689330298900.a n = A204250 (n + 1)

end A204250

/-! ## A204250.P16777574684029890180

`A003056(n)+A059036(n)+1`
-/

namespace A204250.P16777574684029890180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A059036 n + 1)

end

end A204250.P16777574684029890180

namespace A204250

/-- `A003056(n)+A059036(n)+1` -/
def P16777574684029890180.Spec : Prop :=
  ∀ n, P16777574684029890180.a n = A204250 (n + 1)

end A204250

/-! ## A204250.P3297660895795598175

`A127738(n+1)+A002262(n)`
-/

namespace A204250.P3297660895795598175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127738 (n + 1) + A002262 n

end

end A204250.P3297660895795598175

namespace A204250

/-- `A127738(n+1)+A002262(n)` -/
def P3297660895795598175.Spec : Prop :=
  ∀ n, P3297660895795598175.a n = A204250 (n + 1)

end A204250

/-! ## A204250.P6910352750371301619

`A204000(n+1)+A003984(n)`
-/

namespace A204250.P6910352750371301619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204000 (n + 1) + A003984 n

end

end A204250.P6910352750371301619

namespace A204250

/-- `A204000(n+1)+A003984(n)` -/
def P6910352750371301619.Spec : Prop :=
  ∀ n, P6910352750371301619.a n = A204250 (n + 1)

end A204250

/-! ## A204250.P5051261837595900472

`A203998(n+1)+A004197(n)`
-/

namespace A204250.P5051261837595900472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203998 (n + 1) + A004197 n

end

end A204250.P5051261837595900472

namespace A204250

/-- `A203998(n+1)+A004197(n)` -/
def P5051261837595900472.Spec : Prop :=
  ∀ n, P5051261837595900472.a n = A204250 (n + 1)

end A204250

/-! ## A204250.P9917805250436845045

`A094728(n+1)-A091435(n)`
-/

namespace A204250.P9917805250436845045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (n + 1) - A091435 n

end

end A204250.P9917805250436845045

namespace A204250

/-- `A094728(n+1)-A091435(n)` -/
def P9917805250436845045.Spec : Prop :=
  ∀ n, P9917805250436845045.a n = A204250 (n + 1)

end A204250

/-! ## A204250.P13952039658298031779

`A077028(n)+2*A003056(n)`
-/

namespace A204250.P13952039658298031779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + 2 * A003056 n

end

end A204250.P13952039658298031779

namespace A204250

/-- `A077028(n)+2*A003056(n)` -/
def P13952039658298031779.Spec : Prop :=
  ∀ n, P13952039658298031779.a n = A204250 (n + 1)

end A204250

/-! ## A204250.P805853656041164311

`A094727(n+1)+A094053(n+1)`
-/

namespace A204250.P805853656041164311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + A094053 (n + 1)

end

end A204250.P805853656041164311

namespace A204250

/-- `A094727(n+1)+A094053(n+1)` -/
def P805853656041164311.Spec : Prop :=
  ∀ n, P805853656041164311.a n = A204250 (n + 1)

end A204250

/-! ## A204250.P7107854456494173278

`2*A003991(n+1)-A077028(n)`
-/

namespace A204250.P7107854456494173278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003991 (n + 1) - A077028 n

end

end A204250.P7107854456494173278

namespace A204250

/-- `2*A003991(n+1)-A077028(n)` -/
def P7107854456494173278.Spec : Prop :=
  ∀ n, P7107854456494173278.a n = A204250 (n + 1)

end A204250

/-! ## A204250.P4314299199959072885

`2*A002024(n+1)-A176270(n)`
-/

namespace A204250.P4314299199959072885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002024 (n + 1) - A176270 n

end

end A204250.P4314299199959072885

namespace A204250

/-- `2*A002024(n+1)-A176270(n)` -/
def P4314299199959072885.Spec : Prop :=
  ∀ n, P4314299199959072885.a n = A204250 (n + 1)

end A204250

/-! ## A204250.P4289414803264923246

`A002024(n+1)+A003991(n+1)-1`
-/

namespace A204250.P4289414803264923246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A003991 (n + 1) - 1)

end

end A204250.P4289414803264923246

namespace A204250

/-- `A002024(n+1)+A003991(n+1)-1` -/
def P4289414803264923246.Spec : Prop :=
  ∀ n, P4289414803264923246.a n = A204250 (n + 1)

end A204250

/-! ## A204250.P7055767889028150411

`A002260(n+1)+A141429(n+1)-2`
-/

namespace A204250.P7055767889028150411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A141429 (n + 1) - 2)

end

end A204250.P7055767889028150411

namespace A204250

/-- `A002260(n+1)+A141429(n+1)-2` -/
def P7055767889028150411.Spec : Prop :=
  ∀ n, P7055767889028150411.a n = A204250 (n + 1)

end A204250

/-!
# A204252: Permanent of the n-th principal submatrix of A201208 (in square format).

The programs for A204252, there is no canonical definition to state claims against.
-/

/-! ## A204252.P1401919341244087963

`A154440(A105488(n+4))-2*n²`
-/

namespace A204252.P1401919341244087963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154440 (A105488 (n + 4)).toNat - (2 * n ^ 2 : ℤ)

end

end A204252.P1401919341244087963

/-!
# A204253: Symmetric matrix given by f(i,j)=1+[(i+j) mod 3].

The programs for A204253, the canonical program `A204253.P4184580073073620583` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204253 has offset 1).

The definition of A204253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204253.P14320662662771592111

`(comp[∑[n]]-n)%3+1`
-/

namespace A204253.P14320662662771592111
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) 3 + 1

end

end A204253.P14320662662771592111

namespace A204253

/-- `(comp[∑[n]]-n)%3+1` -/
def P14320662662771592111.Spec : Prop :=
  ∀ n, P14320662662771592111.a n = A204253 (n + 1)

end A204253

/-! ## A204253.P808144284370206823

`1-(n-comp[∑[n]])%3`
-/

namespace A204253.P808144284370206823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) 3

end

end A204253.P808144284370206823

namespace A204253

/-- `1-(n-comp[∑[n]])%3` -/
def P808144284370206823.Spec : Prop :=
  ∀ n, P808144284370206823.a n = A204253 (n + 1)

end A204253

/-! ## A204253.P4184580073073620583

`∑[A089812(n)]+2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A204253

/-- `∑[A089812(n)]+2` -/
def P4184580073073620583.Spec : Prop :=
  ∀ n, P4184580073073620583.a n = A204253 (n + 1)

theorem P4184580073073620583.correct : P4184580073073620583.Spec := by
  intro n
  simp only [A204253, Nat.add_sub_cancel]

end A204253

/-! ## A204253.P7724341552413909886

`A204263(n+1)+1`
-/

namespace A204253.P7724341552413909886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204263 (n + 1) + 1

end

end A204253.P7724341552413909886

namespace A204253

/-- `A204263(n+1)+1` -/
def P7724341552413909886.Spec : Prop :=
  ∀ n, P7724341552413909886.a n = A204253 (n + 1)

end A204253

/-! ## A204253.P5849620726355092475

`3-A204433(n+1)`
-/

namespace A204253.P5849620726355092475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A204433 (n + 1)

end

end A204253.P5849620726355092475

namespace A204253

/-- `3-A204433(n+1)` -/
def P5849620726355092475.Spec : Prop :=
  ∀ n, P5849620726355092475.a n = A204253 (n + 1)

end A204253

/-! ## A204253.P9895403663455077836

`dr(∑[A055235(n)]%3+1)`
-/

namespace A204253.P9895403663455077836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3 + 1)

end

end A204253.P9895403663455077836

namespace A204253

/-- `dr(∑[A055235(n)]%3+1)` -/
def P9895403663455077836.Spec : Prop :=
  ∀ n, (P9895403663455077836.a n : ℤ) = A204253 (n + 1)

end A204253

/-! ## A204253.P8597075872991420049

`C(2, A204421(n+1)²)+1`
-/

namespace A204253.P8597075872991420049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A204421 (n + 1) ^ 2).toNat + 1

end

end A204253.P8597075872991420049

namespace A204253

/-- `C(2, A204421(n+1)²)+1` -/
def P8597075872991420049.Spec : Prop :=
  ∀ n, (P8597075872991420049.a n : ℤ) = A204253 (n + 1)

end A204253

/-! ## A204253.P4036204399851297636

`dr(A003057(n+2)%3)+1`
-/

namespace A204253.P4036204399851297636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A003057 (n + 2)) 3) + 1

end

end A204253.P4036204399851297636

namespace A204253

/-- `dr(A003057(n+2)%3)+1` -/
def P4036204399851297636.Spec : Prop :=
  ∀ n, (P4036204399851297636.a n : ℤ) = A204253 (n + 1)

end A204253

/-! ## A204253.P4230573864067088408

`A130784(A131507(n))`
-/

namespace A204253.P4230573864067088408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A131507 n).toNat

end

end A204253.P4230573864067088408

namespace A204253

/-- `A130784(A131507(n))` -/
def P4230573864067088408.Spec : Prop :=
  ∀ n, P4230573864067088408.a n = A204253 (n + 1)

end A204253

/-! ## A204253.P9019289816555839906

`A110569(A111650(n+1))`
-/

namespace A204253.P9019289816555839906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110569 (A111650 (n + 1)).toNat

end

end A204253.P9019289816555839906

namespace A204253

/-- `A110569(A111650(n+1))` -/
def P9019289816555839906.Spec : Prop :=
  ∀ n, P9019289816555839906.a n = A204253 (n + 1)

end A204253

/-! ## A204253.P16311475225739997528

`A130784(A204154(n+1))`
-/

namespace A204253.P16311475225739997528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A204154 (n + 1)).toNat

end

end A204253.P16311475225739997528

namespace A204253

/-- `A130784(A204154(n+1))` -/
def P16311475225739997528.Spec : Prop :=
  ∀ n, P16311475225739997528.a n = A204253 (n + 1)

end A204253

/-! ## A204253.P16087451269119056426

`A105899(A261491(n+1))`
-/

namespace A204253.P16087451269119056426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105899 (A261491 (n + 1)).toNat

end

end A204253.P16087451269119056426

namespace A204253

/-- `A105899(A261491(n+1))` -/
def P16087451269119056426.Spec : Prop :=
  ∀ n, P16087451269119056426.a n = A204253 (n + 1)

end A204253

/-! ## A204253.P5305333439931667017

`A010882(A003057(n+2))`
-/

namespace A204253.P5305333439931667017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A003057 (n + 2)).toNat

end

end A204253.P5305333439931667017

namespace A204253

/-- `A010882(A003057(n+2))` -/
def P5305333439931667017.Spec : Prop :=
  ∀ n, P5305333439931667017.a n = A204253 (n + 1)

end A204253

/-! ## A204253.P12072036200623242867

`A133873(A111652(n+1))+1`
-/

namespace A204253.P12072036200623242867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133873 (A111652 (n + 1)).toNat + 1

end

end A204253.P12072036200623242867

namespace A204253

/-- `A133873(A111652(n+1))+1` -/
def P12072036200623242867.Spec : Prop :=
  ∀ n, P12072036200623242867.a n = A204253 (n + 1)

end A204253

/-! ## A204253.P16230389036978931448

`A131026(A131507(n)+1)+1`
-/

namespace A204253.P16230389036978931448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131026 (A131507 n + 1).toNat + 1

end

end A204253.P16230389036978931448

namespace A204253

/-- `A131026(A131507(n)+1)+1` -/
def P16230389036978931448.Spec : Prop :=
  ∀ n, P16230389036978931448.a n = A204253 (n + 1)

end A204253

/-! ## A204253.P17814716616538000258

`A080425(A253586(n)+1)+1`
-/

namespace A204253.P17814716616538000258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A253586 n + 1).toNat + 1

end

end A204253.P17814716616538000258

namespace A204253

/-- `A080425(A253586(n)+1)+1` -/
def P17814716616538000258.Spec : Prop :=
  ∀ n, P17814716616538000258.a n = A204253 (n + 1)

end A204253

/-! ## A204253.P3962036614802027860

`A080425(A279891(n)+1)+1`
-/

namespace A204253.P3962036614802027860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A279891 n + 1).toNat + 1

end

end A204253.P3962036614802027860

namespace A204253

/-- `A080425(A279891(n)+1)+1` -/
def P3962036614802027860.Spec : Prop :=
  ∀ n, P3962036614802027860.a n = A204253 (n + 1)

end A204253

/-! ## A204253.P15688642246083307096

`A010872(A003056(n)+2)+1`
-/

namespace A204253.P15688642246083307096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A003056 n + 2).toNat + 1

end

end A204253.P15688642246083307096

namespace A204253

/-- `A010872(A003056(n)+2)+1` -/
def P15688642246083307096.Spec : Prop :=
  ∀ n, P15688642246083307096.a n = A204253 (n + 1)

end A204253

/-! ## A204253.P4948693010768449805

`A010872(A004489(n)+2)+1`
-/

namespace A204253.P4948693010768449805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A004489 n + 2).toNat + 1

end

end A204253.P4948693010768449805

namespace A204253

/-- `A010872(A004489(n)+2)+1` -/
def P4948693010768449805.Spec : Prop :=
  ∀ n, P4948693010768449805.a n = A204253 (n + 1)

end A204253

/-! ## A204253.P1827890847558995640

`A102283(A004489(n)+1)+2`
-/

namespace A204253.P1827890847558995640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A004489 n + 1).toNat + 2

end

end A204253.P1827890847558995640

namespace A204253

/-- `A102283(A004489(n)+1)+2` -/
def P1827890847558995640.Spec : Prop :=
  ∀ n, P1827890847558995640.a n = A204253 (n + 1)

end A204253

/-!
# A204255: Symmetric matrix given by f(i,j)=1+[(i+j) mod 4].

The programs for A204255, the canonical program `A204255.P9177356554640057393` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204255 has offset 1).

The definition of A204255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204255.P17176742343166621576

`(comp[∑[n]]-n)%4+1`
-/

namespace A204255.P17176742343166621576
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) 4 + 1

end

end A204255.P17176742343166621576

namespace A204255

/-- `(comp[∑[n]]-n)%4+1` -/
def P17176742343166621576.Spec : Prop :=
  ∀ n, P17176742343166621576.a n = A204255 (n + 1)

end A204255

/-! ## A204255.P17852828532531745029

`1-(n-comp[∑[n]])%4`
-/

namespace A204255.P17852828532531745029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) 4

end

end A204255.P17852828532531745029

namespace A204255

/-- `1-(n-comp[∑[n]])%4` -/
def P17852828532531745029.Spec : Prop :=
  ∀ n, P17852828532531745029.a n = A204255 (n + 1)

end A204255

/-! ## A204255.P18391616382726952313

`and(3, comp[∑[n]]-n)+1`
-/

namespace A204255.P18391616382726952313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) + 1

end

end A204255.P18391616382726952313

namespace A204255

/-- `and(3, comp[∑[n]]-n)+1` -/
def P18391616382726952313.Spec : Prop :=
  ∀ n, P18391616382726952313.a n = A204255 (n + 1)

end A204255

/-! ## A204255.P1306946104869414479

`A010883(∑[char[∑[n]]]+1)`
-/

namespace A204255.P1306946104869414479
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204255.P1306946104869414479

namespace A204255

/-- `A010883(∑[char[∑[n]]]+1)` -/
def P1306946104869414479.Spec : Prop :=
  ∀ n, P1306946104869414479.a n = A204255 (n + 1)

end A204255

/-! ## A204255.P15215788184706126422

`A010873(comp[∑[n]]-n)+1`
-/

namespace A204255.P15215788184706126422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) + 1

end

end A204255.P15215788184706126422

namespace A204255

/-- `A010873(comp[∑[n]]-n)+1` -/
def P15215788184706126422.Spec : Prop :=
  ∀ n, P15215788184706126422.a n = A204255 (n + 1)

end A204255

/-! ## A204255.P12689146714836723341

`A005705(and(3, comp[∑[n]]-n))`
-/

namespace A204255.P12689146714836723341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005705 (Int.land 3 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A204255.P12689146714836723341

namespace A204255

/-- `A005705(and(3, comp[∑[n]]-n))` -/
def P12689146714836723341.Spec : Prop :=
  ∀ n, P12689146714836723341.a n = A204255 (n + 1)

end A204255

/-! ## A204255.P9177356554640057393

`(((A003056(n)+1)%4+1)%4+1)%10`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204255

/-- `(((A003056(n)+1)%4+1)%4+1)%10` -/
def P9177356554640057393.Spec : Prop :=
  ∀ n, P9177356554640057393.a n = A204255 (n + 1)

theorem P9177356554640057393.correct : P9177356554640057393.Spec := by
  intro n
  simp only [A204255, Nat.add_sub_cancel]

end A204255

/-! ## A204255.P12317351375600543291

`A214684(A111653(n+1)²*A111653(n+1))`
-/

namespace A204255.P12317351375600543291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214684 (A111653 (n + 1) ^ 2 * A111653 (n + 1)).toNat

end

end A204255.P12317351375600543291

namespace A204255

/-- `A214684(A111653(n+1)²*A111653(n+1))` -/
def P12317351375600543291.Spec : Prop :=
  ∀ n, P12317351375600543291.a n = A204255 (n + 1)

end A204255

/-!
# A204256: Permanent of the n-th principal submatrix of A204255.

The programs for A204256, there is no canonical definition to state claims against.
-/

/-! ## A204256.P17731754644071807413

`A310207(A141798(n+1))`
-/

namespace A204256.P17731754644071807413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310207 (A141798 (n + 1)).toNat

end

end A204256.P17731754644071807413

/-!
# A204257: Matrix given by f(i,j)=1+[(i+2j) mod 3], by antidiagonals.

The programs for A204257, the canonical program `A204257.P1593210157951859049` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204257 has offset 1).

The definition of A204257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204257.P398109478933251690

`3-(∑[char[∑[n]]]²+n+1)%3`
-/

namespace A204257.P398109478933251690
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n + 1)) % 3 : ℕ) : ℤ)

end

end A204257.P398109478933251690

namespace A204257

/-- `3-(∑[char[∑[n]]]²+n+1)%3` -/
def P398109478933251690.Spec : Prop :=
  ∀ n, P398109478933251690.a n = A204257 (n + 1)

end A204257

/-! ## A204257.P17696723845413932930

`3-A204427(n+1)`
-/

namespace A204257.P17696723845413932930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A204427 (n + 1)

end

end A204257.P17696723845413932930

namespace A204257

/-- `3-A204427(n+1)` -/
def P17696723845413932930.Spec : Prop :=
  ∀ n, P17696723845413932930.a n = A204257 (n + 1)

end A204257

/-! ## A204257.P15002220215060969512

`A253587(n)%3+1`
-/

namespace A204257.P15002220215060969512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253587 n) 3 + 1

end

end A204257.P15002220215060969512

namespace A204257

/-- `A253587(n)%3+1` -/
def P15002220215060969512.Spec : Prop :=
  ∀ n, P15002220215060969512.a n = A204257 (n + 1)

end A204257

/-! ## A204257.P11157716079455955858

`A294317(n)%3+1`
-/

namespace A204257.P11157716079455955858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294317 n) 3 + 1

end

end A204257.P11157716079455955858

namespace A204257

/-- `A294317(n)%3+1` -/
def P11157716079455955858.Spec : Prop :=
  ∀ n, P11157716079455955858.a n = A204257 (n + 1)

end A204257

/-! ## A204257.P7459753904559191450

`a(A204423(n+1))` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A204257.P7459753904559191450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  a (A204423 (n + 1)).toNat

end

end A204257.P7459753904559191450

namespace A204257

/-- `a(A204423(n+1))` -/
def P7459753904559191450.Spec : Prop :=
  ∀ n, (P7459753904559191450.a n : ℤ) = A204257 (n + 1)

end A204257

/-! ## A204257.P1593210157951859049

`(4*(3*n-A114327(n)))%3+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A204257

/-- `(4*(3*n-A114327(n)))%3+1` -/
def P1593210157951859049.Spec : Prop :=
  ∀ n, P1593210157951859049.a n = A204257 (n + 1)

theorem P1593210157951859049.correct : P1593210157951859049.Spec := by
  intro n
  simp only [A204257, Nat.add_sub_cancel]

end A204257

/-! ## A204257.P11878216815215434785

`A130784(A051162(n))`
-/

namespace A204257.P11878216815215434785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A051162 n).toNat

end

end A204257.P11878216815215434785

namespace A204257

/-- `A130784(A051162(n))` -/
def P11878216815215434785.Spec : Prop :=
  ∀ n, P11878216815215434785.a n = A204257 (n + 1)

end A204257

/-! ## A204257.P13239892369137653221

`A010882(A253587(n))`
-/

namespace A204257.P13239892369137653221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A253587 n).toNat

end

end A204257.P13239892369137653221

namespace A204257

/-- `A010882(A253587(n))` -/
def P13239892369137653221.Spec : Prop :=
  ∀ n, P13239892369137653221.a n = A204257 (n + 1)

end A204257

/-! ## A204257.P14711709661195267282

`A010882(A294317(n))`
-/

namespace A204257.P14711709661195267282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A294317 n).toNat

end

end A204257.P14711709661195267282

namespace A204257

/-- `A010882(A294317(n))` -/
def P14711709661195267282.Spec : Prop :=
  ∀ n, P14711709661195267282.a n = A204257 (n + 1)

end A204257

/-! ## A204257.P12386461304903108827

`A078711(A131421(n+1))`
-/

namespace A204257.P12386461304903108827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078711 (A131421 (n + 1)).toNat

end

end A204257.P12386461304903108827

namespace A204257

/-- `A078711(A131421(n+1))` -/
def P12386461304903108827.Spec : Prop :=
  ∀ n, P12386461304903108827.a n = A204257 (n + 1)

end A204257

/-! ## A204257.P11793201611163628955

`A010882(2*A051162(n))`
-/

namespace A204257.P11793201611163628955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (2 * A051162 n).toNat

end

end A204257.P11793201611163628955

namespace A204257

/-- `A010882(2*A051162(n))` -/
def P11793201611163628955.Spec : Prop :=
  ∀ n, P11793201611163628955.a n = A204257 (n + 1)

end A204257

/-! ## A204257.P12813344339944617053

`A130784(2*A253587(n))`
-/

namespace A204257.P12813344339944617053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (2 * A253587 n).toNat

end

end A204257.P12813344339944617053

namespace A204257

/-- `A130784(2*A253587(n))` -/
def P12813344339944617053.Spec : Prop :=
  ∀ n, P12813344339944617053.a n = A204257 (n + 1)

end A204257

/-! ## A204257.P13379648535252231282

`A130784(2*A294317(n))`
-/

namespace A204257.P13379648535252231282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (2 * A294317 n).toNat

end

end A204257.P13379648535252231282

namespace A204257

/-- `A130784(2*A294317(n))` -/
def P13379648535252231282.Spec : Prop :=
  ∀ n, P13379648535252231282.a n = A204257 (n + 1)

end A204257

/-! ## A204257.P12292446142921095895

`A010872(2*A051162(n))+1`
-/

namespace A204257.P12292446142921095895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (2 * A051162 n).toNat + 1

end

end A204257.P12292446142921095895

namespace A204257

/-- `A010872(2*A051162(n))+1` -/
def P12292446142921095895.Spec : Prop :=
  ∀ n, P12292446142921095895.a n = A204257 (n + 1)

end A204257

/-! ## A204257.P13573789086521588765

`A080425(2*A253587(n))+1`
-/

namespace A204257.P13573789086521588765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (2 * A253587 n).toNat + 1

end

end A204257.P13573789086521588765

namespace A204257

/-- `A080425(2*A253587(n))+1` -/
def P13573789086521588765.Spec : Prop :=
  ∀ n, P13573789086521588765.a n = A204257 (n + 1)

end A204257

/-! ## A204257.P3371561118240679175

`A080425(2*A294317(n))+1`
-/

namespace A204257.P3371561118240679175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (2 * A294317 n).toNat + 1

end

end A204257.P3371561118240679175

namespace A204257

/-- `A080425(2*A294317(n))+1` -/
def P3371561118240679175.Spec : Prop :=
  ∀ n, P3371561118240679175.a n = A204257 (n + 1)

end A204257

/-! ## A204257.P3760522271368982926

`A076840(2*A131421(n+1)-1)`
-/

namespace A204257.P3760522271368982926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076840 (2 * A131421 (n + 1) - 1).toNat

end

end A204257.P3760522271368982926

namespace A204257

/-- `A076840(2*A131421(n+1)-1)` -/
def P3760522271368982926.Spec : Prop :=
  ∀ n, P3760522271368982926.a n = A204257 (n + 1)

end A204257

/-! ## A204257.P16208543659152858788

`A204427(a(A204427(n+1)))+1` with `a(0)=1`
-/

namespace A204257.P16208543659152858788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A204427 (a (A204427 (n + 1)).toNat).toNat + 1

end

end A204257.P16208543659152858788

namespace A204257

/-- `A204427(a(A204427(n+1)))+1` -/
def P16208543659152858788.Spec : Prop :=
  ∀ n, P16208543659152858788.a n = A204257 (n + 1)

end A204257

/-! ## A204257.P16080151757249949060

`A204425(n+1)+A204423(n+1)`
-/

namespace A204257.P16080151757249949060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204425 (n + 1) + A204423 (n + 1)

end

end A204257.P16080151757249949060

namespace A204257

/-- `A204425(n+1)+A204423(n+1)` -/
def P16080151757249949060.Spec : Prop :=
  ∀ n, P16080151757249949060.a n = A204257 (n + 1)

end A204257

/-! ## A204257.P9967804138255329487

`A204427(A204427(n+1)+n)+1`
-/

namespace A204257.P9967804138255329487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204427 (A204427 (n + 1) + (n : ℤ)).toNat + 1

end

end A204257.P9967804138255329487

namespace A204257

/-- `A204427(A204427(n+1)+n)+1` -/
def P9967804138255329487.Spec : Prop :=
  ∀ n, P9967804138255329487.a n = A204257 (n + 1)

end A204257

/-!
# A204258: Permanent of the n-th principal submatrix of A204257.

The programs for A204258, there is no canonical definition to state claims against.
-/

/-! ## A204258.P15765254945893995969

`A126206(A000040((n+2)!))`
-/

namespace A204258.P15765254945893995969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126206 (A000040 (Nat.factorial (n + 2))).toNat

end

end A204258.P15765254945893995969

/-!
# A204259: Matrix given by f(i,j) = 1 + [(2i+j) mod 3], by antidiagonals.

The programs for A204259, the canonical program `A204259.P17158997028130791302` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204259 has offset 1).

The definition of A204259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204259.P12519146861205916009

`(n-C(∑[char[∑[n+1]]], 2))%3+1`
-/

namespace A204259.P12519146861205916009
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) 3 + 1

end

end A204259.P12519146861205916009

namespace A204259

/-- `(n-C(∑[char[∑[n+1]]], 2))%3+1` -/
def P12519146861205916009.Spec : Prop :=
  ∀ n, P12519146861205916009.a n = A204259 (n + 1)

end A204259

/-! ## A204259.P17158997028130791302

`27%dr(A055236(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A204259

/-- `27%dr(A055236(n))` -/
def P17158997028130791302.Spec : Prop :=
  ∀ n, (P17158997028130791302.a n : ℤ) = A204259 (n + 1)

theorem P17158997028130791302.correct : P17158997028130791302.Spec := by
  intro n
  simp only [A204259, Nat.add_sub_cancel]

end A204259

/-! ## A204259.P15523296496706248976

`A204423(n+1)+1`
-/

namespace A204259.P15523296496706248976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204423 (n + 1) + 1

end

end A204259.P15523296496706248976

namespace A204259

/-- `A204423(n+1)+1` -/
def P15523296496706248976.Spec : Prop :=
  ∀ n, P15523296496706248976.a n = A204259 (n + 1)

end A204259

/-! ## A204259.P3715592351524326506

`A051162(n)%3+1`
-/

namespace A204259.P3715592351524326506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051162 n) 3 + 1

end

end A204259.P3715592351524326506

namespace A204259

/-- `A051162(n)%3+1` -/
def P3715592351524326506.Spec : Prop :=
  ∀ n, P3715592351524326506.a n = A204259 (n + 1)

end A204259

/-! ## A204259.P9202427413698778382

`A105125(n)%3+1`
-/

namespace A204259.P9202427413698778382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105125 n) 3 + 1

end

end A204259.P9202427413698778382

namespace A204259

/-- `A105125(n)%3+1` -/
def P9202427413698778382.Spec : Prop :=
  ∀ n, P9202427413698778382.a n = A204259 (n + 1)

end A204259

/-! ## A204259.P1504223257163976951

`A256497(n+1)%3+1`
-/

namespace A204259.P1504223257163976951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256497 (n + 1)) 3 + 1

end

end A204259.P1504223257163976951

namespace A204259

/-- `A256497(n+1)%3+1` -/
def P1504223257163976951.Spec : Prop :=
  ∀ n, P1504223257163976951.a n = A204259 (n + 1)

end A204259

/-! ## A204259.P5710415375261739503

`C(2, A204427(n+1)²)+1`
-/

namespace A204259.P5710415375261739503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A204427 (n + 1) ^ 2).toNat + 1

end

end A204259.P5710415375261739503

namespace A204259

/-- `C(2, A204427(n+1)²)+1` -/
def P5710415375261739503.Spec : Prop :=
  ∀ n, (P5710415375261739503.a n : ℤ) = A204259 (n + 1)

end A204259

/-! ## A204259.P10775762824442796121

`A010882(A051162(n))`
-/

namespace A204259.P10775762824442796121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A051162 n).toNat

end

end A204259.P10775762824442796121

namespace A204259

/-- `A010882(A051162(n))` -/
def P10775762824442796121.Spec : Prop :=
  ∀ n, P10775762824442796121.a n = A204259 (n + 1)

end A204259

/-! ## A204259.P9385889215075547197

`A130784(A253587(n))`
-/

namespace A204259.P9385889215075547197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A253587 n).toNat

end

end A204259.P9385889215075547197

namespace A204259

/-- `A130784(A253587(n))` -/
def P9385889215075547197.Spec : Prop :=
  ∀ n, P9385889215075547197.a n = A204259 (n + 1)

end A204259

/-! ## A204259.P18122655530225330357

`A130784(A294317(n))`
-/

namespace A204259.P18122655530225330357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A294317 n).toNat

end

end A204259.P18122655530225330357

namespace A204259

/-- `A130784(A294317(n))` -/
def P18122655530225330357.Spec : Prop :=
  ∀ n, P18122655530225330357.a n = A204259 (n + 1)

end A204259

/-! ## A204259.P14168930928126292257

`A076840(A131421(n+1))`
-/

namespace A204259.P14168930928126292257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076840 (A131421 (n + 1)).toNat

end

end A204259.P14168930928126292257

namespace A204259

/-- `A076840(A131421(n+1))` -/
def P14168930928126292257.Spec : Prop :=
  ∀ n, P14168930928126292257.a n = A204259 (n + 1)

end A204259

/-! ## A204259.P4520924420873540668

`A130784(2*A051162(n))`
-/

namespace A204259.P4520924420873540668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (2 * A051162 n).toNat

end

end A204259.P4520924420873540668

namespace A204259

/-- `A130784(2*A051162(n))` -/
def P4520924420873540668.Spec : Prop :=
  ∀ n, P4520924420873540668.a n = A204259 (n + 1)

end A204259

/-! ## A204259.P2985502973830706886

`A010882(2*A253587(n))`
-/

namespace A204259.P2985502973830706886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (2 * A253587 n).toNat

end

end A204259.P2985502973830706886

namespace A204259

/-- `A010882(2*A253587(n))` -/
def P2985502973830706886.Spec : Prop :=
  ∀ n, P2985502973830706886.a n = A204259 (n + 1)

end A204259

/-! ## A204259.P3928992844773015572

`A010882(2*A294317(n))`
-/

namespace A204259.P3928992844773015572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (2 * A294317 n).toNat

end

end A204259.P3928992844773015572

namespace A204259

/-- `A010882(2*A294317(n))` -/
def P3928992844773015572.Spec : Prop :=
  ∀ n, P3928992844773015572.a n = A204259 (n + 1)

end A204259

/-! ## A204259.P4841283657376573117

`A010872(2*A253587(n))+1`
-/

namespace A204259.P4841283657376573117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (2 * A253587 n).toNat + 1

end

end A204259.P4841283657376573117

namespace A204259

/-- `A010872(2*A253587(n))+1` -/
def P4841283657376573117.Spec : Prop :=
  ∀ n, P4841283657376573117.a n = A204259 (n + 1)

end A204259

/-! ## A204259.P13234699949999175031

`A010872(A094727(n+1)-1)+1`
-/

namespace A204259.P13234699949999175031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A094727 (n + 1) - 1).toNat + 1

end

end A204259.P13234699949999175031

namespace A204259

/-- `A010872(A094727(n+1)-1)+1` -/
def P13234699949999175031.Spec : Prop :=
  ∀ n, P13234699949999175031.a n = A204259 (n + 1)

end A204259

/-! ## A204259.P4853452207090095559

`A080425(A131421(n+1)-1)+1`
-/

namespace A204259.P4853452207090095559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A131421 (n + 1) - 1).toNat + 1

end

end A204259.P4853452207090095559

namespace A204259

/-- `A080425(A131421(n+1)-1)+1` -/
def P4853452207090095559.Spec : Prop :=
  ∀ n, P4853452207090095559.a n = A204259 (n + 1)

end A204259

/-! ## A204259.P3469520448042107079

`(A003056(n)+A002262(n))%3+1`
-/

namespace A204259.P3469520448042107079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 n + A002262 n) 3 + 1

end

end A204259.P3469520448042107079

namespace A204259

/-- `(A003056(n)+A002262(n))%3+1` -/
def P3469520448042107079.Spec : Prop :=
  ∀ n, P3469520448042107079.a n = A204259 (n + 1)

end A204259

/-! ## A204259.P14197971490145495444

`A204257(n+1)+1-A204425(n+1)`
-/

namespace A204259.P14197971490145495444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204257 (n + 1) + (1 - A204425 (n + 1))

end

end A204259.P14197971490145495444

namespace A204259

/-- `A204257(n+1)+1-A204425(n+1)` -/
def P14197971490145495444.Spec : Prop :=
  ∀ n, P14197971490145495444.a n = A204259 (n + 1)

end A204259

/-! ## A204259.P2868928994275245664

`and(3, A046630(A003056(n)+A002262(n)))`
-/

namespace A204259.P2868928994275245664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A046630 (A003056 n + A002262 n).toNat)

end

end A204259.P2868928994275245664

namespace A204259

/-- `and(3, A046630(A003056(n)+A002262(n)))` -/
def P2868928994275245664.Spec : Prop :=
  ∀ n, P2868928994275245664.a n = A204259 (n + 1)

end A204259

/-!
# A204260: Symmetric matrix given by f(i,j)=ceiling(i*j/(i+j)) .

The programs for A204260, the canonical program `A204260.P9423945729788135670` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204260 has offset 1).

The definition of A204260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204260.P4035578536397229954

`ceil(A003991(n+1)/(comp[∑[n]]-n))`
-/

namespace A204260.P4035578536397229954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003991 (n + 1) : ℚ) / ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ)⌉

end

end A204260.P4035578536397229954

namespace A204260

/-- `ceil(A003991(n+1)/(comp[∑[n]]-n))` -/
def P4035578536397229954.Spec : Prop :=
  ∀ n, P4035578536397229954.a n = A204260 (n + 1)

end A204260

/-! ## A204260.P7718313764190833631

`ceil(A003506(n+1)/A014410(n+2))`
-/

namespace A204260.P7718313764190833631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003506 (n + 1) : ℚ) / (A014410 (n + 2) : ℚ)⌉

end

end A204260.P7718313764190833631

namespace A204260

/-- `ceil(A003506(n+1)/A014410(n+2))` -/
def P7718313764190833631.Spec : Prop :=
  ∀ n, P7718313764190833631.a n = A204260 (n + 1)

end A204260

/-! ## A204260.P9423945729788135670

`A002260(n+1)-floor((A002262(n)+1)²/(A002024(n+1)+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A204260

/-- `A002260(n+1)-floor((A002262(n)+1)²/(A002024(n+1)+1))` -/
def P9423945729788135670.Spec : Prop :=
  ∀ n, P9423945729788135670.a n = A204260 (n + 1)

theorem P9423945729788135670.correct : P9423945729788135670.Spec := by
  intro n
  simp only [A204260, Nat.add_sub_cancel]

end A204260

/-! ## A204260.P5905925121392286717

`A002260(n+1)-(A133819(n+1)-A060036(n+2))/A003057(n+2)`
-/

namespace A204260.P5905925121392286717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) - (A133819 (n + 1) - A060036 (n + 2) : ℚ) / (A003057 (n + 2) : ℚ)

end

end A204260.P5905925121392286717

namespace A204260

/-- `A002260(n+1)-(A133819(n+1)-A060036(n+2))/A003057(n+2)` -/
def P5905925121392286717.Spec : Prop :=
  ∀ n, P5905925121392286717.a n = (A204260 (n + 1) : ℚ)

end A204260

/-! ## A204260.P15246243871503787911

`A002260(n+1)-A166373(n+2)`
-/

namespace A204260.P15246243871503787911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A166373 (n + 2)

end

end A204260.P15246243871503787911

namespace A204260

/-- `A002260(n+1)-A166373(n+2)` -/
def P15246243871503787911.Spec : Prop :=
  ∀ n, P15246243871503787911.a n = A204260 (n + 1)

end A204260

/-! ## A204260.P5017938973458415516

`A002262(n)+1-A166373(n+2)`
-/

namespace A204260.P5017938973458415516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (1 - A166373 (n + 2))

end

end A204260.P5017938973458415516

namespace A204260

/-- `A002262(n)+1-A166373(n+2)` -/
def P5017938973458415516.Spec : Prop :=
  ∀ n, P5017938973458415516.a n = A204260 (n + 1)

end A204260

/-! ## A204260.P11414232122516934335

`A004736(A166373(n+2)+A038722(n+1))`
-/

namespace A204260.P11414232122516934335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A166373 (n + 2) + A038722 (n + 1)).toNat

end

end A204260.P11414232122516934335

namespace A204260

/-- `A004736(A166373(n+2)+A038722(n+1))` -/
def P11414232122516934335.Spec : Prop :=
  ∀ n, P11414232122516934335.a n = A204260 (n + 1)

end A204260

/-! ## A204260.P3669223869208114843

`A079722(n+1-A166373(n+2))`
-/

namespace A204260.P3669223869208114843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079722 ((n + 1 : ℤ) - A166373 (n + 2)).toNat

end

end A204260.P3669223869208114843

namespace A204260

/-- `A079722(n+1-A166373(n+2))` -/
def P3669223869208114843.Spec : Prop :=
  ∀ n, P3669223869208114843.a n = A204260 (n + 1)

end A204260

/-! ## A204260.P1183309096038203139

`A055642(3*A283796(n))`
-/

namespace A204260.P1183309096038203139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (3 * A283796 n).toNat

end

end A204260.P1183309096038203139

namespace A204260

/-- `A055642(3*A283796(n))` -/
def P1183309096038203139.Spec : Prop :=
  ∀ n, P1183309096038203139.a n = A204260 (n + 1)

end A204260

/-!
# A204261: Permanent of the n-th principal submatrix of A204260.

The programs for A204261, there is no canonical definition to state claims against.
-/

/-! ## A204261.P2975163197153222361

`A323093(∑[A084265(n)])`
-/

namespace A204261.P2975163197153222361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323093 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A204261.P2975163197153222361

/-!
# A204262: Permanent of the n-th principal submatrix of A003983.

The programs for A204262, there is no canonical definition to state claims against.
-/

/-! ## A204262.P9345472256854744463

`A109613(A202656(n+1)+A202617(n))`
-/

namespace A204262.P9345472256854744463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A202656 (n + 1) + A202617 n).toNat

end

end A204262.P9345472256854744463

/-! ## A204262.P16434928443074056475

`A065033(A317677(n+1)+abs(A292935(n)))`
-/

namespace A204262.P16434928443074056475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A317677 (n + 1) + |A292935 n|).toNat

end

end A204262.P16434928443074056475

/-!
# A204263: Symmetric matrix: f(i,j)=(i+j mod 3), by antidiagonals.

The programs for A204263, the canonical program `A204263.P7060640148051898808` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204263 has offset 1).

The definition of A204263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204263.P3392722377309139361

`(comp[∑[n]]-n)%3`
-/

namespace A204263.P3392722377309139361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) 3

end

end A204263.P3392722377309139361

namespace A204263

/-- `(comp[∑[n]]-n)%3` -/
def P3392722377309139361.Spec : Prop :=
  ∀ n, P3392722377309139361.a n = A204263 (n + 1)

end A204263

/-! ## A204263.P11129997206157604406

`2-∑[2*char[∑[n+1]]]%3`
-/

namespace A204263.P11129997206157604406
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ)

end

end A204263.P11129997206157604406

namespace A204263

/-- `2-∑[2*char[∑[n+1]]]%3` -/
def P11129997206157604406.Spec : Prop :=
  ∀ n, P11129997206157604406.a n = A204263 (n + 1)

end A204263

/-! ## A204263.P7060640148051898808

`∑[A089812(n)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A204263

/-- `∑[A089812(n)]+1` -/
def P7060640148051898808.Spec : Prop :=
  ∀ n, P7060640148051898808.a n = A204263 (n + 1)

theorem P7060640148051898808.correct : P7060640148051898808.Spec := by
  intro n
  simp only [A204263, Nat.add_sub_cancel]

end A204263

/-! ## A204263.P17885444583213537545

`A204253(n+1)-1`
-/

namespace A204263.P17885444583213537545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204253 (n + 1) - 1

end

end A204263.P17885444583213537545

namespace A204263

/-- `A204253(n+1)-1` -/
def P17885444583213537545.Spec : Prop :=
  ∀ n, P17885444583213537545.a n = A204263 (n + 1)

end A204263

/-! ## A204263.P15722493174875159610

`2-A204433(n+1)`
-/

namespace A204263.P15722493174875159610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A204433 (n + 1)

end

end A204263.P15722493174875159610

namespace A204263

/-- `2-A204433(n+1)` -/
def P15722493174875159610.Spec : Prop :=
  ∀ n, P15722493174875159610.a n = A204263 (n + 1)

end A204263

/-! ## A204263.P7531668979379320923

`C(2, A204421(n+1)²)`
-/

namespace A204263.P7531668979379320923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A204421 (n + 1) ^ 2).toNat

end

end A204263.P7531668979379320923

namespace A204263

/-- `C(2, A204421(n+1)²)` -/
def P7531668979379320923.Spec : Prop :=
  ∀ n, (P7531668979379320923.a n : ℤ) = A204263 (n + 1)

end A204263

/-! ## A204263.P12082892835048127051

`C(2, a(A056943(n))²)` with `a(0)=2`
-/

namespace A204263.P12082892835048127051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.choose 2 (a (A056943 n).toNat ^ 2)

end

end A204263.P12082892835048127051

namespace A204263

/-- `C(2, a(A056943(n))²)` -/
def P12082892835048127051.Spec : Prop :=
  ∀ n, (P12082892835048127051.a n : ℤ) = A204263 (n + 1)

end A204263

/-! ## A204263.P11761155215252086664

`2-C(2, A204431(n+1)²)`
-/

namespace A204263.P11761155215252086664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 (A204431 (n + 1) ^ 2).toNat : ℤ)

end

end A204263.P11761155215252086664

namespace A204263

/-- `2-C(2, A204431(n+1)²)` -/
def P11761155215252086664.Spec : Prop :=
  ∀ n, P11761155215252086664.a n = A204263 (n + 1)

end A204263

/-! ## A204263.P15846379550836405038

`A080425(A131507(n))`
-/

namespace A204263.P15846379550836405038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A131507 n).toNat

end

end A204263.P15846379550836405038

namespace A204263

/-- `A080425(A131507(n))` -/
def P15846379550836405038.Spec : Prop :=
  ∀ n, P15846379550836405038.a n = A204263 (n + 1)

end A204263

/-! ## A204263.P4661333045556117036

`A100286(A111650(n+1))`
-/

namespace A204263.P4661333045556117036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100286 (A111650 (n + 1)).toNat

end

end A204263.P4661333045556117036

namespace A204263

/-- `A100286(A111650(n+1))` -/
def P4661333045556117036.Spec : Prop :=
  ∀ n, P4661333045556117036.a n = A204263 (n + 1)

end A204263

/-! ## A204263.P9898382241752591074

`A133873(A111652(n+1))`
-/

namespace A204263.P9898382241752591074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133873 (A111652 (n + 1)).toNat

end

end A204263.P9898382241752591074

namespace A204263

/-- `A133873(A111652(n+1))` -/
def P9898382241752591074.Spec : Prop :=
  ∀ n, P9898382241752591074.a n = A204263 (n + 1)

end A204263

/-! ## A204263.P13012446913609443775

`A131026(A131507(n)+1)`
-/

namespace A204263.P13012446913609443775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131026 (A131507 n + 1).toNat

end

end A204263.P13012446913609443775

namespace A204263

/-- `A131026(A131507(n)+1)` -/
def P13012446913609443775.Spec : Prop :=
  ∀ n, P13012446913609443775.a n = A204263 (n + 1)

end A204263

/-! ## A204263.P617836718421908926

`A080425(A204154(n+1))`
-/

namespace A204263.P617836718421908926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A204154 (n + 1)).toNat

end

end A204263.P617836718421908926

namespace A204263

/-- `A080425(A204154(n+1))` -/
def P617836718421908926.Spec : Prop :=
  ∀ n, P617836718421908926.a n = A204263 (n + 1)

end A204263

/-! ## A204263.P13261623636094513176

`A080425(A253586(n)+1)`
-/

namespace A204263.P13261623636094513176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A253586 n + 1).toNat

end

end A204263.P13261623636094513176

namespace A204263

/-- `A080425(A253586(n)+1)` -/
def P13261623636094513176.Spec : Prop :=
  ∀ n, P13261623636094513176.a n = A204263 (n + 1)

end A204263

/-! ## A204263.P16478399256750735496

`A080425(A279891(n)+1)`
-/

namespace A204263.P16478399256750735496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A279891 n + 1).toNat

end

end A204263.P16478399256750735496

namespace A204263

/-- `A080425(A279891(n)+1)` -/
def P16478399256750735496.Spec : Prop :=
  ∀ n, P16478399256750735496.a n = A204263 (n + 1)

end A204263

/-! ## A204263.P74189812716645693

`A010872(A003057(n+2))`
-/

namespace A204263.P74189812716645693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A003057 (n + 2)).toNat

end

end A204263.P74189812716645693

namespace A204263

/-- `A010872(A003057(n+2))` -/
def P74189812716645693.Spec : Prop :=
  ∀ n, P74189812716645693.a n = A204263 (n + 1)

end A204263

/-! ## A204263.P5441737921199195933

`A010872(A003056(n)+2)`
-/

namespace A204263.P5441737921199195933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A003056 n + 2).toNat

end

end A204263.P5441737921199195933

namespace A204263

/-- `A010872(A003056(n)+2)` -/
def P5441737921199195933.Spec : Prop :=
  ∀ n, P5441737921199195933.a n = A204263 (n + 1)

end A204263

/-! ## A204263.P3633621258573361140

`A010872(A004489(n)+2)`
-/

namespace A204263.P3633621258573361140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A004489 n + 2).toNat

end

end A204263.P3633621258573361140

namespace A204263

/-- `A010872(A004489(n)+2)` -/
def P3633621258573361140.Spec : Prop :=
  ∀ n, P3633621258573361140.a n = A204263 (n + 1)

end A204263

/-! ## A204263.P14665884904852231508

`A060572(A131507(n)+2)`
-/

namespace A204263.P14665884904852231508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060572 (A131507 n + 2).toNat

end

end A204263.P14665884904852231508

namespace A204263

/-- `A060572(A131507(n)+2)` -/
def P14665884904852231508.Spec : Prop :=
  ∀ n, P14665884904852231508.a n = A204263 (n + 1)

end A204263

/-! ## A204263.P12942932337617853554

`A100286(A279891(n)+2)`
-/

namespace A204263.P12942932337617853554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100286 (A279891 n + 2).toNat

end

end A204263.P12942932337617853554

namespace A204263

/-- `A100286(A279891(n)+2)` -/
def P12942932337617853554.Spec : Prop :=
  ∀ n, P12942932337617853554.a n = A204263 (n + 1)

end A204263

/-!
# A204264: Permanent of the n-th principal submatrix of A051125.

The programs for A204264, there is no canonical definition to state claims against.
-/

/-! ## A204264.P458160146975493399

`n*A286323(n*a(n-1))` with `a(0)=1`
-/

namespace A204264.P458160146975493399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A286323 ((n : ℤ) * a (n - 1)).toNat

end

end A204264.P458160146975493399

/-!
# A204265: Permanent of n X n matrix M with M(i,j) = (i+j) (mod 3).

The programs for A204265, there is no canonical definition to state claims against.
-/

/-! ## A204265.P11725110960399192643

`A347704(A061954(n+1))+A100953(n)`
-/

namespace A204265.P11725110960399192643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347704 (A061954 (n + 1)).toNat + A100953 n

end

end A204265.P11725110960399192643

/-! ## A204265.P13746980472235371726

`A306230(A392850(n)+A334997(n+1))`
-/

namespace A204265.P13746980472235371726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306230 (A392850 n + A334997 (n + 1)).toNat

end

end A204265.P13746980472235371726

/-!
# A204266: Permanent of the n-th principal submatrix of A204123.

The programs for A204266, there is no canonical definition to state claims against.
-/

/-! ## A204266.P10511640756088916164

`Δ[A152832(A336421(n))]`
-/

namespace A204266.P10511640756088916164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152832 (A336421 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A204266.P10511640756088916164

/-!
# A204267: Symmetric matrix: f(i,j)=(i+j+1 mod 3), by antidiagonals.

The programs for A204267, the canonical program `A204267.P11067029943541218959` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204267 has offset 1).

The definition of A204267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204267.P15360820477534409332

`∑[char[∑[n+1]]]%3`
-/

namespace A204267.P15360820477534409332
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 3

end

end A204267.P15360820477534409332

namespace A204267

/-- `∑[char[∑[n+1]]]%3` -/
def P15360820477534409332.Spec : Prop :=
  ∀ n, (P15360820477534409332.a n : ℤ) = A204267 (n + 1)

end A204267

/-! ## A204267.P1828638375587698944

`abs((∑[char[∑[n]]]-1)%3)`
-/

namespace A204267.P1828638375587698944
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) 3|

end

end A204267.P1828638375587698944

namespace A204267

/-- `abs((∑[char[∑[n]]]-1)%3)` -/
def P1828638375587698944.Spec : Prop :=
  ∀ n, P1828638375587698944.a n = A204267 (n + 1)

end A204267

/-! ## A204267.P17092631379043625294

`dr((1-∑[char[∑[n]]])%3)`
-/

namespace A204267.P17092631379043625294
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) 3)

end

end A204267.P17092631379043625294

namespace A204267

/-- `dr((1-∑[char[∑[n]]])%3)` -/
def P17092631379043625294.Spec : Prop :=
  ∀ n, (P17092631379043625294.a n : ℤ) = A204267 (n + 1)

end A204267

/-! ## A204267.P8169240593242301021

`2-∑[2*char[∑[n]]]%3`
-/

namespace A204267.P8169240593242301021
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ)

end

end A204267.P8169240593242301021

namespace A204267

/-- `2-∑[2*char[∑[n]]]%3` -/
def P8169240593242301021.Spec : Prop :=
  ∀ n, P8169240593242301021.a n = A204267 (n + 1)

end A204267

/-! ## A204267.P2219874489558074592

`2-A204431(n+1)`
-/

namespace A204267.P2219874489558074592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A204431 (n + 1)

end

end A204267.P2219874489558074592

namespace A204267

/-- `2-A204431(n+1)` -/
def P2219874489558074592.Spec : Prop :=
  ∀ n, P2219874489558074592.a n = A204267 (n + 1)

end A204267

/-! ## A204267.P11067029943541218959

`C(2, A204263(n+1)²)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A204267

/-- `C(2, A204263(n+1)²)` -/
def P11067029943541218959.Spec : Prop :=
  ∀ n, (P11067029943541218959.a n : ℤ) = A204267 (n + 1)

theorem P11067029943541218959.correct : P11067029943541218959.Spec := by
  intro n
  simp only [A204267, Nat.add_sub_cancel]

end A204267

/-! ## A204267.P13262160207289950682

`A010872(∑[char[∑[n+1]]])`
-/

namespace A204267.P13262160207289950682
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204267.P13262160207289950682

namespace A204267

/-- `A010872(∑[char[∑[n+1]]])` -/
def P13262160207289950682.Spec : Prop :=
  ∀ n, P13262160207289950682.a n = A204267 (n + 1)

end A204267

/-! ## A204267.P3987885357351386994

`C(2, (2-A204433(n+1))²)`
-/

namespace A204267.P3987885357351386994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((2 - A204433 (n + 1)) ^ 2).toNat

end

end A204267.P3987885357351386994

namespace A204267

/-- `C(2, (2-A204433(n+1))²)` -/
def P3987885357351386994.Spec : Prop :=
  ∀ n, (P3987885357351386994.a n : ℤ) = A204267 (n + 1)

end A204267

/-! ## A204267.P3947749485947050585

`A060571(A131507(n))`
-/

namespace A204267.P3947749485947050585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060571 (A131507 n).toNat

end

end A204267.P3947749485947050585

namespace A204267

/-- `A060571(A131507(n))` -/
def P3947749485947050585.Spec : Prop :=
  ∀ n, P3947749485947050585.a n = A204267 (n + 1)

end A204267

/-! ## A204267.P8621531976430058575

`A080425(A253586(n))`
-/

namespace A204267.P8621531976430058575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A253586 n).toNat

end

end A204267.P8621531976430058575

namespace A204267

/-- `A080425(A253586(n))` -/
def P8621531976430058575.Spec : Prop :=
  ∀ n, P8621531976430058575.a n = A204267 (n + 1)

end A204267

/-! ## A204267.P1716341257933209642

`A080425(A279891(n))`
-/

namespace A204267.P1716341257933209642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A279891 n).toNat

end

end A204267.P1716341257933209642

namespace A204267

/-- `A080425(A279891(n))` -/
def P1716341257933209642.Spec : Prop :=
  ∀ n, P1716341257933209642.a n = A204267 (n + 1)

end A204267

/-! ## A204267.P3344677436292819262

`A080425(A131507(n)-1)`
-/

namespace A204267.P3344677436292819262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A131507 n - 1).toNat

end

end A204267.P3344677436292819262

namespace A204267

/-- `A080425(A131507(n)-1)` -/
def P3344677436292819262.Spec : Prop :=
  ∀ n, P3344677436292819262.a n = A204267 (n + 1)

end A204267

/-! ## A204267.P17556901215940695350

`A131555(A131507(n)-1)`
-/

namespace A204267.P17556901215940695350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131555 (A131507 n - 1).toNat

end

end A204267.P17556901215940695350

namespace A204267

/-- `A131555(A131507(n)-1)` -/
def P17556901215940695350.Spec : Prop :=
  ∀ n, P17556901215940695350.a n = A204267 (n + 1)

end A204267

/-! ## A204267.P2892655945802793103

`A080425(2*A003056(n))`
-/

namespace A204267.P2892655945802793103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (2 * A003056 n).toNat

end

end A204267.P2892655945802793103

namespace A204267

/-- `A080425(2*A003056(n))` -/
def P2892655945802793103.Spec : Prop :=
  ∀ n, P2892655945802793103.a n = A204267 (n + 1)

end A204267

/-! ## A204267.P8939746712381820412

`A080425(2*A004489(n))`
-/

namespace A204267.P8939746712381820412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (2 * A004489 n).toNat

end

end A204267.P8939746712381820412

namespace A204267

/-- `A080425(2*A004489(n))` -/
def P8939746712381820412.Spec : Prop :=
  ∀ n, P8939746712381820412.a n = A204267 (n + 1)

end A204267

/-! ## A204267.P5705148820071226585

`A080425(A111650(n+1)+1)`
-/

namespace A204267.P5705148820071226585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A111650 (n + 1) + 1).toNat

end

end A204267.P5705148820071226585

namespace A204267

/-- `A080425(A111650(n+1)+1)` -/
def P5705148820071226585.Spec : Prop :=
  ∀ n, P5705148820071226585.a n = A204267 (n + 1)

end A204267

/-! ## A204267.P12958002523754303938

`A102283(A004489(n)+2)+1`
-/

namespace A204267.P12958002523754303938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A004489 n + 2).toNat + 1

end

end A204267.P12958002523754303938

namespace A204267

/-- `A102283(A004489(n)+2)+1` -/
def P12958002523754303938.Spec : Prop :=
  ∀ n, P12958002523754303938.a n = A204267 (n + 1)

end A204267

/-! ## A204267.P6289735590342566584

`A100286(A111650(n+1)+2)`
-/

namespace A204267.P6289735590342566584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100286 (A111650 (n + 1) + 2).toNat

end

end A204267.P6289735590342566584

namespace A204267

/-- `A100286(A111650(n+1)+2)` -/
def P6289735590342566584.Spec : Prop :=
  ∀ n, P6289735590342566584.a n = A204267 (n + 1)

end A204267

/-! ## A204267.P17293199136613052866

`A080425(A204154(n+1)-1)`
-/

namespace A204267.P17293199136613052866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A204154 (n + 1) - 1).toNat

end

end A204267.P17293199136613052866

namespace A204267

/-- `A080425(A204154(n+1)-1)` -/
def P17293199136613052866.Spec : Prop :=
  ∀ n, P17293199136613052866.a n = A204267 (n + 1)

end A204267

/-! ## A204267.P16561101591465987592

`2-A060588(A111652(n+1))`
-/

namespace A204267.P16561101591465987592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A060588 (A111652 (n + 1)).toNat

end

end A204267.P16561101591465987592

namespace A204267

/-- `2-A060588(A111652(n+1))` -/
def P16561101591465987592.Spec : Prop :=
  ∀ n, P16561101591465987592.a n = A204267 (n + 1)

end A204267

/-!
# A204268: Permanent of the n-th principal submatrix of A204267.

The programs for A204268, there is no canonical definition to state claims against.
-/

/-! ## A204268.P7870141041869691835

`A204426(n+1)+A204434(n+1)-A179079(n+1)`
-/

namespace A204268.P7870141041869691835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204426 (n + 1) + (A204434 (n + 1) - A179079 (n + 1))

end

end A204268.P7870141041869691835

/-! ## A204268.P2071858613205753862

`A204424(n+1)+A204432(n+1)-A204265(n+1)`
-/

namespace A204268.P2071858613205753862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204424 (n + 1) + (A204432 (n + 1) - A204265 (n + 1))

end

end A204268.P2071858613205753862

/-! ## A204268.P6202380388647427565

`A204424(n+1)+A204426(n+1)-A204430(n+1)`
-/

namespace A204268.P6202380388647427565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204424 (n + 1) + (A204426 (n + 1) - A204430 (n + 1))

end

end A204268.P6202380388647427565

/-! ## A204268.P17215071299460854521

`A204432(n+1)+A204434(n+1)-A204428(n+1)`
-/

namespace A204268.P17215071299460854521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204432 (n + 1) + (A204434 (n + 1) - A204428 (n + 1))

end

end A204268.P17215071299460854521

/-!
# A204269: Symmetric matrix: f(i,j)=floor[(i+j+2)/4]-floor[(i+j)/4], by (constant) antidiagonals.

The programs for A204269, the canonical program `A204269.P5173295850797786783` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204269 has offset 1).

The definition of A204269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204269.P7537641011683019119

`∑[char[C(or(1, n), 2)]]%2`
-/

namespace A204269.P7537641011683019119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A204269.P7537641011683019119

namespace A204269

/-- `∑[char[C(or(1, n), 2)]]%2` -/
def P7537641011683019119.Spec : Prop :=
  ∀ n, (P7537641011683019119.a n : ℤ) = A204269 (n + 1)

end A204269

/-! ## A204269.P5766073372843173363

`and(1, ∑[char[C(or(1, n), 2)]])`
-/

namespace A204269.P5766073372843173363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204269.P5766073372843173363

namespace A204269

/-- `and(1, ∑[char[C(or(1, n), 2)]])` -/
def P5766073372843173363.Spec : Prop :=
  ∀ n, (P5766073372843173363.a n : ℤ) = A204269 (n + 1)

end A204269

/-! ## A204269.P6121704387349914415

`(comp[∑[4*n]]+n)%2`
-/

namespace A204269.P6121704387349914415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) % 2

end

end A204269.P6121704387349914415

namespace A204269

/-- `(comp[∑[4*n]]+n)%2` -/
def P6121704387349914415.Spec : Prop :=
  ∀ n, (P6121704387349914415.a n : ℤ) = A204269 (n + 1)

end A204269

/-! ## A204269.P15878277802880208886

`and(2, comp[∑[n]]-n)/2`
-/

namespace A204269.P15878277802880208886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) : ℚ) / 2

end

end A204269.P15878277802880208886

namespace A204269

/-- `and(2, comp[∑[n]]-n)/2` -/
def P15878277802880208886.Spec : Prop :=
  ∀ n, P15878277802880208886.a n = (A204269 (n + 1) : ℚ)

end A204269

/-! ## A204269.P1813120478261389281

`and(1, C(comp[∑[n]]-n, 2))`
-/

namespace A204269.P1813120478261389281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2)

end

end A204269.P1813120478261389281

namespace A204269

/-- `and(1, C(comp[∑[n]]-n, 2))` -/
def P1813120478261389281.Spec : Prop :=
  ∀ n, (P1813120478261389281.a n : ℤ) = A204269 (n + 1)

end A204269

/-! ## A204269.P2922924973311392020

`and(1, ceil(∑[char[∑[n]]/2]))`
-/

namespace A204269.P2922924973311392020
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A204269.P2922924973311392020

namespace A204269

/-- `and(1, ceil(∑[char[∑[n]]/2]))` -/
def P2922924973311392020.Spec : Prop :=
  ∀ n, P2922924973311392020.a n = A204269 (n + 1)

end A204269

/-! ## A204269.P2886272903886341614

`1-and(2, ∑[char[∑[n+1]]])/2`
-/

namespace A204269.P2886272903886341614
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A204269.P2886272903886341614

namespace A204269

/-- `1-and(2, ∑[char[∑[n+1]]])/2` -/
def P2886272903886341614.Spec : Prop :=
  ∀ n, P2886272903886341614.a n = (A204269 (n + 1) : ℚ)

end A204269

/-! ## A204269.P1198906944522762519

`xor(1, and(2, ∑[char[∑[n+1]]])/2)`
-/

namespace A204269.P1198906944522762519
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway ((Nat.land 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2))

end

end A204269.P1198906944522762519

namespace A204269

/-- `xor(1, and(2, ∑[char[∑[n+1]]])/2)` -/
def P1198906944522762519.Spec : Prop :=
  ∀ n, P1198906944522762519.a n = A204269 (n + 1)

end A204269

/-! ## A204269.P9395531703348257198

`floor(log(and(3, ∑[char[∑[n]]]+1)+1))`
-/

namespace A204269.P9395531703348257198
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Nat.land 3 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1 : ℝ)⌋

end

end A204269.P9395531703348257198

namespace A204269

/-- `floor(log(and(3, ∑[char[∑[n]]]+1)+1))` -/
def P9395531703348257198.Spec : Prop :=
  ∀ n, P9395531703348257198.a n = A204269 (n + 1)

end A204269

/-! ## A204269.P4697122392405579398

`1-A204547(n+1)`
-/

namespace A204269.P4697122392405579398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A204547 (n + 1)

end

end A204269.P4697122392405579398

namespace A204269

/-- `1-A204547(n+1)` -/
def P4697122392405579398.Spec : Prop :=
  ∀ n, P4697122392405579398.a n = A204269 (n + 1)

end A204269

/-! ## A204269.P8330862801296613601

`floor(log(A204255(n+1)))`
-/

namespace A204269.P8330862801296613601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A204255 (n + 1) : ℝ)⌋

end

end A204269.P8330862801296613601

namespace A204269

/-- `floor(log(A204255(n+1)))` -/
def P8330862801296613601.Spec : Prop :=
  ∀ n, P8330862801296613601.a n = A204269 (n + 1)

end A204269

/-! ## A204269.P8999944245109717293

`log2(gcd(2, A025581(n)+n))`
-/

namespace A204269.P8999944245109717293
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A025581 n + (n : ℤ)) : ℝ)

end

end A204269.P8999944245109717293

namespace A204269

/-- `log2(gcd(2, A025581(n)+n))` -/
def P8999944245109717293.Spec : Prop :=
  ∀ n, P8999944245109717293.a n = (A204269 (n + 1) : ℝ)

end A204269

/-! ## A204269.P5173295850797786783

`A133872(A003056(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204269

/-- `A133872(A003056(n))` -/
def P5173295850797786783.Spec : Prop :=
  ∀ n, P5173295850797786783.a n = A204269 (n + 1)

theorem P5173295850797786783.correct : P5173295850797786783.Spec := by
  intro n
  simp only [A204269, Nat.add_sub_cancel]

end A204269

/-! ## A204269.P4478739730880911801

`A133872(A057892(n))`
-/

namespace A204269.P4478739730880911801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A057892 n).toNat

end

end A204269.P4478739730880911801

namespace A204269

/-- `A133872(A057892(n))` -/
def P4478739730880911801.Spec : Prop :=
  ∀ n, P4478739730880911801.a n = A204269 (n + 1)

end A204269

/-! ## A204269.P8325266484564817594

`A021913(A111652(n+1))`
-/

namespace A204269.P8325266484564817594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A111652 (n + 1)).toNat

end

end A204269.P8325266484564817594

namespace A204269

/-- `A021913(A111652(n+1))` -/
def P8325266484564817594.Spec : Prop :=
  ∀ n, P8325266484564817594.a n = A204269 (n + 1)

end A204269

/-! ## A204269.P6003903055310505841

`A000035(A204164(n+1))`
-/

namespace A204269.P6003903055310505841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A204164 (n + 1)).toNat

end

end A204269.P6003903055310505841

namespace A204269

/-- `A000035(A204164(n+1))` -/
def P6003903055310505841.Spec : Prop :=
  ∀ n, P6003903055310505841.a n = A204269 (n + 1)

end A204269

/-! ## A204269.P998500312302415526

`A021913(A003057(n+2))`
-/

namespace A204269.P998500312302415526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A003057 (n + 2)).toNat

end

end A204269.P998500312302415526

namespace A204269

/-- `A021913(A003057(n+2))` -/
def P998500312302415526.Spec : Prop :=
  ∀ n, P998500312302415526.a n = A204269 (n + 1)

end A204269

/-! ## A204269.P9121414179753375845

`A021913(A003056(n)+2)`
-/

namespace A204269.P9121414179753375845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A003056 n + 2).toNat

end

end A204269.P9121414179753375845

namespace A204269

/-- `A021913(A003056(n)+2)` -/
def P9121414179753375845.Spec : Prop :=
  ∀ n, P9121414179753375845.a n = A204269 (n + 1)

end A204269

/-! ## A204269.P769658502421748402

`A260394(A131507(n)+2)`
-/

namespace A204269.P769658502421748402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (A131507 n + 2).toNat

end

end A204269.P769658502421748402

namespace A204269

/-- `A260394(A131507(n)+2)` -/
def P769658502421748402.Spec : Prop :=
  ∀ n, P769658502421748402.a n = A204269 (n + 1)

end A204269

/-! ## A204269.P7198107394538128007

`A000035(A369736(n)+n)`
-/

namespace A204269.P7198107394538128007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A369736 n + (n : ℤ)).toNat

end

end A204269.P7198107394538128007

namespace A204269

/-- `A000035(A369736(n)+n)` -/
def P7198107394538128007.Spec : Prop :=
  ∀ n, P7198107394538128007.a n = A204269 (n + 1)

end A204269

/-!
# A204270: a(n) = tau(n)*Pell(n), where tau(n) = A000005(n), the number of divisors of n.

The programs for A204270, the canonical program `A204270.P12797670132099192821` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204270 has offset 1).

The definition of A204270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204270.P6919874667056143938

`abs(A000005(n+1)*A077985(n))`
-/

namespace A204270.P6919874667056143938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000005 (n + 1) * A077985 n|

end

end A204270.P6919874667056143938

namespace A204270

/-- `abs(A000005(n+1)*A077985(n))` -/
def P6919874667056143938.Spec : Prop :=
  ∀ n, P6919874667056143938.a n = A204270 (n + 1)

end A204270

/-! ## A204270.P14585355392562070442

`A000005(n+1)*∑[A001333(n)]`
-/

namespace A204270.P14585355392562070442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204270.P14585355392562070442

namespace A204270

/-- `A000005(n+1)*∑[A001333(n)]` -/
def P14585355392562070442.Spec : Prop :=
  ∀ n, P14585355392562070442.a n = A204270 (n + 1)

end A204270

/-! ## A204270.P11215550671843686100

`Δ[A006218(n)]*A000129(n+1)`
-/

namespace A204270.P11215550671843686100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000129 (n + 1)

end

end A204270.P11215550671843686100

namespace A204270

/-- `Δ[A006218(n)]*A000129(n+1)` -/
def P11215550671843686100.Spec : Prop :=
  ∀ n, P11215550671843686100.a n = A204270 (n + 1)

end A204270

/-! ## A204270.P13036032616340396687

`Δ[A024537(n)]*A000005(n+1)`
-/

namespace A204270.P13036032616340396687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000005 (n + 1)

end

end A204270.P13036032616340396687

namespace A204270

/-- `Δ[A024537(n)]*A000005(n+1)` -/
def P13036032616340396687.Spec : Prop :=
  ∀ n, P13036032616340396687.a n = A204270 (n + 1)

end A204270

/-! ## A204270.P11305728139513429585

`A000005(n+1)*A000129(n+1)`
-/

namespace A204270.P11305728139513429585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000129 (n + 1)

end

end A204270.P11305728139513429585

namespace A204270

/-- `A000005(n+1)*A000129(n+1)` -/
def P11305728139513429585.Spec : Prop :=
  ∀ n, P11305728139513429585.a n = A204270 (n + 1)

end A204270

/-! ## A204270.P12797670132099192821

`A001511(n+1)*A209445(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A204270

/-- `A001511(n+1)*A209445(n+1)` -/
def P12797670132099192821.Spec : Prop :=
  ∀ n, P12797670132099192821.a n = A204270 (n + 1)

theorem P12797670132099192821.correct : P12797670132099192821.Spec := by
  intro n
  simp only [A204270, Nat.add_sub_cancel]

end A204270

/-! ## A204270.P7309433703099578777

`A000005(n+1)*A215928(n+1)`
-/

namespace A204270.P7309433703099578777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A215928 (n + 1)

end

end A204270.P7309433703099578777

namespace A204270

/-- `A000005(n+1)*A215928(n+1)` -/
def P7309433703099578777.Spec : Prop :=
  ∀ n, P7309433703099578777.a n = A204270 (n + 1)

end A204270

/-! ## A204270.P3835442138031607174

`abs(A176981(n+2))*A000005(n+1)`
-/

namespace A204270.P3835442138031607174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 (n + 2)| * A000005 (n + 1)

end

end A204270.P3835442138031607174

namespace A204270

/-- `abs(A176981(n+2))*A000005(n+1)` -/
def P3835442138031607174.Spec : Prop :=
  ∀ n, P3835442138031607174.a n = A204270 (n + 1)

end A204270

/-! ## A204270.P16715635568063434822

`A000005(n+1)*Δ[A171842(n+1)]`
-/

namespace A204270.P16715635568063434822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * (f1 (n + 1) - f1 n)

end

end A204270.P16715635568063434822

namespace A204270

/-- `A000005(n+1)*Δ[A171842(n+1)]` -/
def P16715635568063434822.Spec : Prop :=
  ∀ n, P16715635568063434822.a n = A204270 (n + 1)

end A204270

/-! ## A204270.P12868510937998192719

`A000129(n+1)*A183063(2*(n+1))`
-/

namespace A204270.P12868510937998192719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A183063 (2 * (n + 1))

end

end A204270.P12868510937998192719

namespace A204270

/-- `A000129(n+1)*A183063(2*(n+1))` -/
def P12868510937998192719.Spec : Prop :=
  ∀ n, P12868510937998192719.a n = A204270 (n + 1)

end A204270

/-! ## A204270.P10614495471365855373

`(A106514(n)-A094706(n))*A000005(n+1)`
-/

namespace A204270.P10614495471365855373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A106514 n - A094706 n) * A000005 (n + 1)

end

end A204270.P10614495471365855373

namespace A204270

/-- `(A106514(n)-A094706(n))*A000005(n+1)` -/
def P10614495471365855373.Spec : Prop :=
  ∀ n, P10614495471365855373.a n = A204270 (n + 1)

end A204270

/-! ## A204270.P3814275982085915502

`(A024537(n+1)-A024537(n))*A000005(n+1)`
-/

namespace A204270.P3814275982085915502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024537 (n + 1) - A024537 n) * A000005 (n + 1)

end

end A204270.P3814275982085915502

namespace A204270

/-- `(A024537(n+1)-A024537(n))*A000005(n+1)` -/
def P3814275982085915502.Spec : Prop :=
  ∀ n, P3814275982085915502.a n = A204270 (n + 1)

end A204270

/-! ## A204270.P9688907457064334458

`A000005(n+1)/A001227(n+1)*A209445(n+1)`
-/

namespace A204270.P9688907457064334458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A001227 (n + 1) : ℚ) * (A209445 (n + 1) : ℚ)

end

end A204270.P9688907457064334458

namespace A204270

/-- `A000005(n+1)/A001227(n+1)*A209445(n+1)` -/
def P9688907457064334458.Spec : Prop :=
  ∀ n, P9688907457064334458.a n = (A204270 (n + 1) : ℚ)

end A204270

/-! ## A204270.P14420524644261717194

`A203847(n+1)/A205965(n+1)*A209445(n+1)`
-/

namespace A204270.P14420524644261717194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203847 (n + 1) : ℚ) / (A205965 (n + 1) : ℚ) * (A209445 (n + 1) : ℚ)

end

end A204270.P14420524644261717194

namespace A204270

/-- `A203847(n+1)/A205965(n+1)*A209445(n+1)` -/
def P14420524644261717194.Spec : Prop :=
  ∀ n, P14420524644261717194.a n = (A204270 (n + 1) : ℚ)

end A204270

/-! ## A204270.P7809600949432793246

`A000005(n+1)/A000203(n+1)*A204271(n+1)`
-/

namespace A204270.P7809600949432793246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A204271 (n + 1) : ℚ)

end

end A204270.P7809600949432793246

namespace A204270

/-- `A000005(n+1)/A000203(n+1)*A204271(n+1)` -/
def P7809600949432793246.Spec : Prop :=
  ∀ n, P7809600949432793246.a n = (A204270 (n + 1) : ℚ)

end A204270

/-! ## A204270.P2726464024933916721

`A000005(n+1)/A034896(n+1)*A209451(n+1)`
-/

namespace A204270.P2726464024933916721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A034896 (n + 1) : ℚ) * (A209451 (n + 1) : ℚ)

end

end A204270.P2726464024933916721

namespace A204270

/-- `A000005(n+1)/A034896(n+1)*A209451(n+1)` -/
def P2726464024933916721.Spec : Prop :=
  ∀ n, P2726464024933916721.a n = (A204270 (n + 1) : ℚ)

end A204270

/-! ## A204270.P6301376449872052887

`A000005(n+1)/A109064(n+1)*A205884(n+1)`
-/

namespace A204270.P6301376449872052887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A109064 (n + 1) : ℚ) * (A205884 (n + 1) : ℚ)

end

end A204270.P6301376449872052887

namespace A204270

/-- `A000005(n+1)/A109064(n+1)*A205884(n+1)` -/
def P6301376449872052887.Spec : Prop :=
  ∀ n, P6301376449872052887.a n = (A204270 (n + 1) : ℚ)

end A204270

/-! ## A204270.P5401707473163235047

`A203847(n+1)/A203848(n+1)*A204271(n+1)`
-/

namespace A204270.P5401707473163235047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203847 (n + 1) : ℚ) / (A203848 (n + 1) : ℚ) * (A204271 (n + 1) : ℚ)

end

end A204270.P5401707473163235047

namespace A204270

/-- `A203847(n+1)/A203848(n+1)*A204271(n+1)` -/
def P5401707473163235047.Spec : Prop :=
  ∀ n, P5401707473163235047.a n = (A204270 (n + 1) : ℚ)

end A204270

/-! ## A204270.P2679076761881901849

`A203847(n+1)/A205882(n+1)*A205884(n+1)`
-/

namespace A204270.P2679076761881901849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203847 (n + 1) : ℚ) / (A205882 (n + 1) : ℚ) * (A205884 (n + 1) : ℚ)

end

end A204270.P2679076761881901849

namespace A204270

/-- `A203847(n+1)/A205882(n+1)*A205884(n+1)` -/
def P2679076761881901849.Spec : Prop :=
  ∀ n, P2679076761881901849.a n = (A204270 (n + 1) : ℚ)

end A204270

/-! ## A204270.P5748862714654755711

`A203847(n+1)/A205971(n+1)*A209451(n+1)`
-/

namespace A204270.P5748862714654755711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203847 (n + 1) : ℚ) / (A205971 (n + 1) : ℚ) * (A209451 (n + 1) : ℚ)

end

end A204270.P5748862714654755711

namespace A204270

/-- `A203847(n+1)/A205971(n+1)*A209451(n+1)` -/
def P5748862714654755711.Spec : Prop :=
  ∀ n, P5748862714654755711.a n = (A204270 (n + 1) : ℚ)

end A204270

/-!
# A204271: a(n) = sigma(n)*Pell(n), where sigma(n) = A000203(n), the sum of divisors of n.

The programs for A204271, the canonical program `A204271.P11283443685406951891` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204271 has offset 1).

The definition of A204271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204271.P11283443685406951891

`∑{d}[n+1, #*A000129(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204271

/-- `∑{d}[n+1, #*A000129(n+1)]` -/
def P11283443685406951891.Spec : Prop :=
  ∀ n, P11283443685406951891.a n = A204271 (n + 1)

theorem P11283443685406951891.correct : P11283443685406951891.Spec := by
  intro n
  simp only [A204271, Nat.add_sub_cancel]

end A204271

/-! ## A204271.P12457190202519462012

`Δ[A171842(n+1)]*∑{d}[n+1, #]`
-/

namespace A204271.P12457190202519462012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A204271.P12457190202519462012

namespace A204271

/-- `Δ[A171842(n+1)]*∑{d}[n+1, #]` -/
def P12457190202519462012.Spec : Prop :=
  ∀ n, P12457190202519462012.a n = A204271 (n + 1)

end A204271

/-! ## A204271.P10502888104709988615

`A077985(n)*A143348(n+1)`
-/

namespace A204271.P10502888104709988615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n * A143348 (n + 1)

end

end A204271.P10502888104709988615

namespace A204271

/-- `A077985(n)*A143348(n+1)` -/
def P10502888104709988615.Spec : Prop :=
  ∀ n, P10502888104709988615.a n = A204271 (n + 1)

end A204271

/-! ## A204271.P15026376940927758917

`A000203(n+1)*∑[A001333(n)]`
-/

namespace A204271.P15026376940927758917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204271.P15026376940927758917

namespace A204271

/-- `A000203(n+1)*∑[A001333(n)]` -/
def P15026376940927758917.Spec : Prop :=
  ∀ n, P15026376940927758917.a n = A204271 (n + 1)

end A204271

/-! ## A204271.P7252854767979961214

`A000129(n+1)*A000203(n+1)`
-/

namespace A204271.P7252854767979961214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A000203 (n + 1)

end

end A204271.P7252854767979961214

namespace A204271

/-- `A000129(n+1)*A000203(n+1)` -/
def P7252854767979961214.Spec : Prop :=
  ∀ n, P7252854767979961214.a n = A204271 (n + 1)

end A204271

/-! ## A204271.P5155837604466042949

`A000203(n+1)*A215928(n+1)`
-/

namespace A204271.P5155837604466042949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A215928 (n + 1)

end

end A204271.P5155837604466042949

namespace A204271

/-- `A000203(n+1)*A215928(n+1)` -/
def P5155837604466042949.Spec : Prop :=
  ∀ n, P5155837604466042949.a n = A204271 (n + 1)

end A204271

/-! ## A204271.P3597788799583694848

`abs(A176981(n+2))*A000203(n+1)`
-/

namespace A204271.P3597788799583694848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 (n + 2)| * A000203 (n + 1)

end

end A204271.P3597788799583694848

namespace A204271

/-- `abs(A176981(n+2))*A000203(n+1)` -/
def P3597788799583694848.Spec : Prop :=
  ∀ n, P3597788799583694848.a n = A204271 (n + 1)

end A204271

/-! ## A204271.P9796067004047997150

`A000203(n+1)*A249576(3*(n+1))`
-/

namespace A204271.P9796067004047997150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A249576 (3 * (n + 1))

end

end A204271.P9796067004047997150

namespace A204271

/-- `A000203(n+1)*A249576(3*(n+1))` -/
def P9796067004047997150.Spec : Prop :=
  ∀ n, P9796067004047997150.a n = A204271 (n + 1)

end A204271

/-! ## A204271.P13684190311053044087

`(A001065(n+1)+n+1)*A000129(n+1)`
-/

namespace A204271.P13684190311053044087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + (n + 1 : ℤ)) * A000129 (n + 1)

end

end A204271.P13684190311053044087

namespace A204271

/-- `(A001065(n+1)+n+1)*A000129(n+1)` -/
def P13684190311053044087.Spec : Prop :=
  ∀ n, P13684190311053044087.a n = A204271 (n + 1)

end A204271

/-! ## A204271.P12178117736259336748

`A000203(n+1)/A000005(n+1)*A204270(n+1)`
-/

namespace A204271.P12178117736259336748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A204270 (n + 1) : ℚ)

end

end A204271.P12178117736259336748

namespace A204271

/-- `A000203(n+1)/A000005(n+1)*A204270(n+1)` -/
def P12178117736259336748.Spec : Prop :=
  ∀ n, P12178117736259336748.a n = (A204271 (n + 1) : ℚ)

end A204271

/-! ## A204271.P2434325082645420832

`A203848(n+1)/A203847(n+1)*A204270(n+1)`
-/

namespace A204271.P2434325082645420832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203848 (n + 1) : ℚ) / (A203847 (n + 1) : ℚ) * (A204270 (n + 1) : ℚ)

end

end A204271.P2434325082645420832

namespace A204271

/-- `A203848(n+1)/A203847(n+1)*A204270(n+1)` -/
def P2434325082645420832.Spec : Prop :=
  ∀ n, P2434325082645420832.a n = (A204271 (n + 1) : ℚ)

end A204271

/-! ## A204271.P13395995152109389160

`A203848(n+1)/A205882(n+1)*A205884(n+1)`
-/

namespace A204271.P13395995152109389160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203848 (n + 1) : ℚ) / (A205882 (n + 1) : ℚ) * (A205884 (n + 1) : ℚ)

end

end A204271.P13395995152109389160

namespace A204271

/-- `A203848(n+1)/A205882(n+1)*A205884(n+1)` -/
def P13395995152109389160.Spec : Prop :=
  ∀ n, P13395995152109389160.a n = (A204271 (n + 1) : ℚ)

end A204271

/-! ## A204271.P233605365805528768

`A203848(n+1)/A205965(n+1)*A209445(n+1)`
-/

namespace A204271.P233605365805528768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203848 (n + 1) : ℚ) / (A205965 (n + 1) : ℚ) * (A209445 (n + 1) : ℚ)

end

end A204271.P233605365805528768

namespace A204271

/-- `A203848(n+1)/A205965(n+1)*A209445(n+1)` -/
def P233605365805528768.Spec : Prop :=
  ∀ n, P233605365805528768.a n = (A204271 (n + 1) : ℚ)

end A204271

/-! ## A204271.P1320000191380756569

`A203848(n+1)/A205971(n+1)*A209451(n+1)`
-/

namespace A204271.P1320000191380756569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203848 (n + 1) : ℚ) / (A205971 (n + 1) : ℚ) * (A209451 (n + 1) : ℚ)

end

end A204271.P1320000191380756569

namespace A204271

/-- `A203848(n+1)/A205971(n+1)*A209451(n+1)` -/
def P1320000191380756569.Spec : Prop :=
  ∀ n, P1320000191380756569.a n = (A204271 (n + 1) : ℚ)

end A204271

/-! ## A204271.P17274359751505758809

`A203848(n+1)/A205963(n+1)*A209443(n+1)`
-/

namespace A204271.P17274359751505758809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203848 (n + 1) : ℚ) / (A205963 (n + 1) : ℚ) * (A209443 (n + 1) : ℚ)

end

end A204271.P17274359751505758809

namespace A204271

/-- `A203848(n+1)/A205963(n+1)*A209443(n+1)` -/
def P17274359751505758809.Spec : Prop :=
  ∀ n, P17274359751505758809.a n = (A204271 (n + 1) : ℚ)

end A204271

/-! ## A204271.P17088676825787087268

`A000203(n+1)/A001157(n+1)*A204272(n+1)`
-/

namespace A204271.P17088676825787087268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A001157 (n + 1) : ℚ) * (A204272 (n + 1) : ℚ)

end

end A204271.P17088676825787087268

namespace A204271

/-- `A000203(n+1)/A001157(n+1)*A204272(n+1)` -/
def P17088676825787087268.Spec : Prop :=
  ∀ n, P17088676825787087268.a n = (A204271 (n + 1) : ℚ)

end A204271

/-! ## A204271.P9938976830928123839

`A203848(n+1)/A203849(n+1)*A204272(n+1)`
-/

namespace A204271.P9938976830928123839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203848 (n + 1) : ℚ) / (A203849 (n + 1) : ℚ) * (A204272 (n + 1) : ℚ)

end

end A204271.P9938976830928123839

namespace A204271

/-- `A203848(n+1)/A203849(n+1)*A204272(n+1)` -/
def P9938976830928123839.Spec : Prop :=
  ∀ n, P9938976830928123839.a n = (A204271 (n + 1) : ℚ)

end A204271

/-! ## A204271.P16084460590029042137

`A000203(n+1)/A001158(n+1)*A204273(n+1)`
-/

namespace A204271.P16084460590029042137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A001158 (n + 1) : ℚ) * (A204273 (n + 1) : ℚ)

end

end A204271.P16084460590029042137

namespace A204271

/-- `A000203(n+1)/A001158(n+1)*A204273(n+1)` -/
def P16084460590029042137.Spec : Prop :=
  ∀ n, P16084460590029042137.a n = (A204271 (n + 1) : ℚ)

end A204271

/-! ## A204271.P39887459822234837

`A203848(n+1)/A203838(n+1)*A204273(n+1)`
-/

namespace A204271.P39887459822234837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203848 (n + 1) : ℚ) / (A203838 (n + 1) : ℚ) * (A204273 (n + 1) : ℚ)

end

end A204271.P39887459822234837

namespace A204271

/-- `A203848(n+1)/A203838(n+1)*A204273(n+1)` -/
def P39887459822234837.Spec : Prop :=
  ∀ n, P39887459822234837.a n = (A204271 (n + 1) : ℚ)

end A204271

/-!
# A204272: a(n) = sigma_2(n)*Pell(n), where sigma_2(n) = A001157(n), the sum of squares of divisors of n.

The programs for A204272, the canonical program `A204272.P13524161059662794718` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204272 has offset 1).

The definition of A204272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204272.P13524161059662794718

`∑[A001333(n)]*∑{d}[n+1, #²]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204272

/-- `∑[A001333(n)]*∑{d}[n+1, #²]` -/
def P13524161059662794718.Spec : Prop :=
  ∀ n, P13524161059662794718.a n = A204272 (n + 1)

theorem P13524161059662794718.correct : P13524161059662794718.Spec := by
  intro n
  simp only [A204272, Nat.add_sub_cancel]

end A204272

/-! ## A204272.P2180393546115349411

`∑{d}[n+1, #²]*A000129(n+1)`
-/

namespace A204272.P2180393546115349411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) * A000129 (n + 1)

end

end A204272.P2180393546115349411

namespace A204272

/-- `∑{d}[n+1, #²]*A000129(n+1)` -/
def P2180393546115349411.Spec : Prop :=
  ∀ n, P2180393546115349411.a n = A204272 (n + 1)

end A204272

/-! ## A204272.P18330781633975534301

`∑{d}[n+1, #*#*A215928(n+1)]`
-/

namespace A204272.P18330781633975534301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * ((d : ℤ) * A215928 (n + 1))

end

end A204272.P18330781633975534301

namespace A204272

/-- `∑{d}[n+1, #*#*A215928(n+1)]` -/
def P18330781633975534301.Spec : Prop :=
  ∀ n, P18330781633975534301.a n = A204272 (n + 1)

end A204272

/-! ## A204272.P3060074410048174367

`∑{d}[n+1, #²*A002965(2*(n+1))]`
-/

namespace A204272.P3060074410048174367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 2 : ℤ) * A002965 (2 * (n + 1))

end

end A204272.P3060074410048174367

namespace A204272

/-- `∑{d}[n+1, #²*A002965(2*(n+1))]` -/
def P3060074410048174367.Spec : Prop :=
  ∀ n, P3060074410048174367.a n = A204272 (n + 1)

end A204272

/-! ## A204272.P8969941334835081465

`∑[A001333(n)]*A001157(n+1)`
-/

namespace A204272.P8969941334835081465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001157 (n + 1)

end

end A204272.P8969941334835081465

namespace A204272

/-- `∑[A001333(n)]*A001157(n+1)` -/
def P8969941334835081465.Spec : Prop :=
  ∀ n, P8969941334835081465.a n = A204272 (n + 1)

end A204272

/-! ## A204272.P10942392211834058015

`A000129(n+1)*A001157(n+1)`
-/

namespace A204272.P10942392211834058015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A001157 (n + 1)

end

end A204272.P10942392211834058015

namespace A204272

/-- `A000129(n+1)*A001157(n+1)` -/
def P10942392211834058015.Spec : Prop :=
  ∀ n, P10942392211834058015.a n = A204272 (n + 1)

end A204272

/-! ## A204272.P10613298197104584574

`Δ[A171842(n+1)]*A001157(n+1)`
-/

namespace A204272.P10613298197104584574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001157 (n + 1)

end

end A204272.P10613298197104584574

namespace A204272

/-- `Δ[A171842(n+1)]*A001157(n+1)` -/
def P10613298197104584574.Spec : Prop :=
  ∀ n, P10613298197104584574.a n = A204272 (n + 1)

end A204272

/-! ## A204272.P9023705490942235262

`(A067558(n+1)+(n+1)²)*A000129(n+1)`
-/

namespace A204272.P9023705490942235262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067558 (n + 1) + ((n + 1) ^ 2 : ℤ)) * A000129 (n + 1)

end

end A204272.P9023705490942235262

namespace A204272

/-- `(A067558(n+1)+(n+1)²)*A000129(n+1)` -/
def P9023705490942235262.Spec : Prop :=
  ∀ n, P9023705490942235262.a n = A204272 (n + 1)

end A204272

/-! ## A204272.P11682709578017514513

`A001157(n+1)/A000005(n+1)*A204270(n+1)`
-/

namespace A204272.P11682709578017514513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A204270 (n + 1) : ℚ)

end

end A204272.P11682709578017514513

namespace A204272

/-- `A001157(n+1)/A000005(n+1)*A204270(n+1)` -/
def P11682709578017514513.Spec : Prop :=
  ∀ n, P11682709578017514513.a n = (A204272 (n + 1) : ℚ)

end A204272

/-! ## A204272.P11243796748029309059

`A001157(n+1)/A000203(n+1)*A204271(n+1)`
-/

namespace A204272.P11243796748029309059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A204271 (n + 1) : ℚ)

end

end A204272.P11243796748029309059

namespace A204272

/-- `A001157(n+1)/A000203(n+1)*A204271(n+1)` -/
def P11243796748029309059.Spec : Prop :=
  ∀ n, P11243796748029309059.a n = (A204272 (n + 1) : ℚ)

end A204272

/-! ## A204272.P11567472846099538300

`A203849(n+1)/A203847(n+1)*A204270(n+1)`
-/

namespace A204272.P11567472846099538300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203849 (n + 1) : ℚ) / (A203847 (n + 1) : ℚ) * (A204270 (n + 1) : ℚ)

end

end A204272.P11567472846099538300

namespace A204272

/-- `A203849(n+1)/A203847(n+1)*A204270(n+1)` -/
def P11567472846099538300.Spec : Prop :=
  ∀ n, P11567472846099538300.a n = (A204272 (n + 1) : ℚ)

end A204272

/-! ## A204272.P15939180638075380680

`A203849(n+1)/A203848(n+1)*A204271(n+1)`
-/

namespace A204272.P15939180638075380680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203849 (n + 1) : ℚ) / (A203848 (n + 1) : ℚ) * (A204271 (n + 1) : ℚ)

end

end A204272.P15939180638075380680

namespace A204272

/-- `A203849(n+1)/A203848(n+1)*A204271(n+1)` -/
def P15939180638075380680.Spec : Prop :=
  ∀ n, P15939180638075380680.a n = (A204272 (n + 1) : ℚ)

end A204272

/-! ## A204272.P16213654737119637630

`A203849(n+1)/A205882(n+1)*A205884(n+1)`
-/

namespace A204272.P16213654737119637630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203849 (n + 1) : ℚ) / (A205882 (n + 1) : ℚ) * (A205884 (n + 1) : ℚ)

end

end A204272.P16213654737119637630

namespace A204272

/-- `A203849(n+1)/A205882(n+1)*A205884(n+1)` -/
def P16213654737119637630.Spec : Prop :=
  ∀ n, P16213654737119637630.a n = (A204272 (n + 1) : ℚ)

end A204272

/-! ## A204272.P8954830272102424939

`A203849(n+1)/A205963(n+1)*A209443(n+1)`
-/

namespace A204272.P8954830272102424939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203849 (n + 1) : ℚ) / (A205963 (n + 1) : ℚ) * (A209443 (n + 1) : ℚ)

end

end A204272.P8954830272102424939

namespace A204272

/-- `A203849(n+1)/A205963(n+1)*A209443(n+1)` -/
def P8954830272102424939.Spec : Prop :=
  ∀ n, P8954830272102424939.a n = (A204272 (n + 1) : ℚ)

end A204272

/-! ## A204272.P18144746593710967226

`A203849(n+1)/A205965(n+1)*A209445(n+1)`
-/

namespace A204272.P18144746593710967226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203849 (n + 1) : ℚ) / (A205965 (n + 1) : ℚ) * (A209445 (n + 1) : ℚ)

end

end A204272.P18144746593710967226

namespace A204272

/-- `A203849(n+1)/A205965(n+1)*A209445(n+1)` -/
def P18144746593710967226.Spec : Prop :=
  ∀ n, P18144746593710967226.a n = (A204272 (n + 1) : ℚ)

end A204272

/-! ## A204272.P1796856632821154412

`A001157(n+1)/A001158(n+1)*A204273(n+1)`
-/

namespace A204272.P1796856632821154412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A001158 (n + 1) : ℚ) * (A204273 (n + 1) : ℚ)

end

end A204272.P1796856632821154412

namespace A204272

/-- `A001157(n+1)/A001158(n+1)*A204273(n+1)` -/
def P1796856632821154412.Spec : Prop :=
  ∀ n, P1796856632821154412.a n = (A204272 (n + 1) : ℚ)

end A204272

/-! ## A204272.P777492965558442294

`A203849(n+1)/A203838(n+1)*A204273(n+1)`
-/

namespace A204272.P777492965558442294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203849 (n + 1) : ℚ) / (A203838 (n + 1) : ℚ) * (A204273 (n + 1) : ℚ)

end

end A204272.P777492965558442294

namespace A204272

/-- `A203849(n+1)/A203838(n+1)*A204273(n+1)` -/
def P777492965558442294.Spec : Prop :=
  ∀ n, P777492965558442294.a n = (A204272 (n + 1) : ℚ)

end A204272

/-! ## A204272.P1798864941820219953

`A001157(n+1)*A228405(∑[n+2])`
-/

namespace A204272.P1798864941820219953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) * A228405 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204272.P1798864941820219953

namespace A204272

/-- `A001157(n+1)*A228405(∑[n+2])` -/
def P1798864941820219953.Spec : Prop :=
  ∀ n, P1798864941820219953.a n = A204272 (n + 1)

end A204272

/-!
# A204273: a(n) = sigma_3(n)*Pell(n), where sigma_3(n) = A001158(n), the sum of cubes of divisors of n.

The programs for A204273, the canonical program `A204273.P1803749618269786851` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204273 has offset 1).

The definition of A204273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204273.P1803749618269786851

`∑[A001333(n)]*A001158(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204273

/-- `∑[A001333(n)]*A001158(n+1)` -/
def P1803749618269786851.Spec : Prop :=
  ∀ n, P1803749618269786851.a n = A204273 (n + 1)

theorem P1803749618269786851.correct : P1803749618269786851.Spec := by
  intro n
  simp only [A204273, Nat.add_sub_cancel]

end A204273

/-! ## A204273.P10241455170443380775

`Δ[A024537(n)]*A001158(n+1)`
-/

namespace A204273.P10241455170443380775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001158 (n + 1)

end

end A204273.P10241455170443380775

namespace A204273

/-- `Δ[A024537(n)]*A001158(n+1)` -/
def P10241455170443380775.Spec : Prop :=
  ∀ n, P10241455170443380775.a n = A204273 (n + 1)

end A204273

/-! ## A204273.P10235695295052917841

`A000129(n+1)*A001158(n+1)`
-/

namespace A204273.P10235695295052917841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A001158 (n + 1)

end

end A204273.P10235695295052917841

namespace A204273

/-- `A000129(n+1)*A001158(n+1)` -/
def P10235695295052917841.Spec : Prop :=
  ∀ n, P10235695295052917841.a n = A204273 (n + 1)

end A204273

/-! ## A204273.P15092003313953416892

`∑{d}[n+1, A000129(n+1)*A000578(#)]`
-/

namespace A204273.P15092003313953416892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000129 (n + 1) * A000578 d

end

end A204273.P15092003313953416892

namespace A204273

/-- `∑{d}[n+1, A000129(n+1)*A000578(#)]` -/
def P15092003313953416892.Spec : Prop :=
  ∀ n, P15092003313953416892.a n = A204273 (n + 1)

end A204273

/-! ## A204273.P6513879476850887709

`∑[A249576(A016777(n))]*A001158(n+1)`
-/

namespace A204273.P6513879476850887709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001158 (n + 1)

end

end A204273.P6513879476850887709

namespace A204273

/-- `∑[A249576(A016777(n))]*A001158(n+1)` -/
def P6513879476850887709.Spec : Prop :=
  ∀ n, P6513879476850887709.a n = A204273 (n + 1)

end A204273

/-! ## A204273.P2504942397727327904

`A001158(n+1)*A249576(A008585(n+1))`
-/

namespace A204273.P2504942397727327904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) * A249576 (A008585 (n + 1)).toNat

end

end A204273.P2504942397727327904

namespace A204273

/-- `A001158(n+1)*A249576(A008585(n+1))` -/
def P2504942397727327904.Spec : Prop :=
  ∀ n, P2504942397727327904.a n = A204273 (n + 1)

end A204273

/-! ## A204273.P17203577691868223242

`A001158(n+1)*A249576(A016777(n)+2)`
-/

namespace A204273.P17203577691868223242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) * A249576 (A016777 n + 2).toNat

end

end A204273.P17203577691868223242

namespace A204273

/-- `A001158(n+1)*A249576(A016777(n)+2)` -/
def P17203577691868223242.Spec : Prop :=
  ∀ n, P17203577691868223242.a n = A204273 (n + 1)

end A204273

/-! ## A204273.P6303633142773606751

`A001158(n+1)/A000005(n+1)*A204270(n+1)`
-/

namespace A204273.P6303633142773606751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A204270 (n + 1) : ℚ)

end

end A204273.P6303633142773606751

namespace A204273

/-- `A001158(n+1)/A000005(n+1)*A204270(n+1)` -/
def P6303633142773606751.Spec : Prop :=
  ∀ n, P6303633142773606751.a n = (A204273 (n + 1) : ℚ)

end A204273

/-! ## A204273.P10989143539058199768

`A001158(n+1)/A000203(n+1)*A204271(n+1)`
-/

namespace A204273.P10989143539058199768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A204271 (n + 1) : ℚ)

end

end A204273.P10989143539058199768

namespace A204273

/-- `A001158(n+1)/A000203(n+1)*A204271(n+1)` -/
def P10989143539058199768.Spec : Prop :=
  ∀ n, P10989143539058199768.a n = (A204273 (n + 1) : ℚ)

end A204273

/-! ## A204273.P2209038942225243949

`A001158(n+1)/A001157(n+1)*A204272(n+1)`
-/

namespace A204273.P2209038942225243949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / (A001157 (n + 1) : ℚ) * (A204272 (n + 1) : ℚ)

end

end A204273.P2209038942225243949

namespace A204273

/-- `A001158(n+1)/A001157(n+1)*A204272(n+1)` -/
def P2209038942225243949.Spec : Prop :=
  ∀ n, P2209038942225243949.a n = (A204273 (n + 1) : ℚ)

end A204273

/-! ## A204273.P6744918006169772700

`A203838(n+1)/A203848(n+1)*A204271(n+1)`
-/

namespace A204273.P6744918006169772700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203838 (n + 1) : ℚ) / (A203848 (n + 1) : ℚ) * (A204271 (n + 1) : ℚ)

end

end A204273.P6744918006169772700

namespace A204273

/-- `A203838(n+1)/A203848(n+1)*A204271(n+1)` -/
def P6744918006169772700.Spec : Prop :=
  ∀ n, P6744918006169772700.a n = (A204273 (n + 1) : ℚ)

end A204273

/-! ## A204273.P5033785535535812348

`A203838(n+1)/A203849(n+1)*A204272(n+1)`
-/

namespace A204273.P5033785535535812348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203838 (n + 1) : ℚ) / (A203849 (n + 1) : ℚ) * (A204272 (n + 1) : ℚ)

end

end A204273.P5033785535535812348

namespace A204273

/-- `A203838(n+1)/A203849(n+1)*A204272(n+1)` -/
def P5033785535535812348.Spec : Prop :=
  ∀ n, P5033785535535812348.a n = (A204273 (n + 1) : ℚ)

end A204273

/-!
# A204274: G.f.: Sum_{n>=1} Pell(n^2)*x^(n^2).

The programs for A204274, the canonical program `A204274.P6003204237064035270` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204274 has offset 1).

The definition of A204274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204274.P6003204237064035270

`A000129((n+1)*char[n²-1])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204274

/-- `A000129((n+1)*char[n²-1])` -/
def P6003204237064035270.Spec : Prop :=
  ∀ n, P6003204237064035270.a n = A204274 (n + 1)

theorem P6003204237064035270.correct : P6003204237064035270.Spec := by
  intro n
  simp only [A204274, Nat.add_sub_cancel]

end A204274

/-! ## A204274.P13895180595085493477

`A258998(n+1)²*A000129(n+1)`
-/

namespace A204274.P13895180595085493477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 (n + 1) ^ 2 * A000129 (n + 1)

end

end A204274.P13895180595085493477

namespace A204274

/-- `A258998(n+1)²*A000129(n+1)` -/
def P13895180595085493477.Spec : Prop :=
  ∀ n, P13895180595085493477.a n = A204274 (n + 1)

end A204274

/-! ## A204274.P8556741903250451747

`(2-A169695(n+1))*A000129(n+1)`
-/

namespace A204274.P8556741903250451747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A169695 (n + 1)) * A000129 (n + 1)

end

end A204274.P8556741903250451747

namespace A204274

/-- `(2-A169695(n+1))*A000129(n+1)` -/
def P8556741903250451747.Spec : Prop :=
  ∀ n, P8556741903250451747.a n = A204274 (n + 1)

end A204274

/-! ## A204274.P17002309089405319308

`A000122(n+1)/2*A000129(n+1)`
-/

namespace A204274.P17002309089405319308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 (n + 1) : ℚ) / 2 * (A000129 (n + 1) : ℚ)

end

end A204274.P17002309089405319308

namespace A204274

/-- `A000122(n+1)/2*A000129(n+1)` -/
def P17002309089405319308.Spec : Prop :=
  ∀ n, P17002309089405319308.a n = (A204274 (n + 1) : ℚ)

end A204274

/-! ## A204274.P5039926324731617242

`A000005(n+1)%2*A000129(n+1)`
-/

namespace A204274.P5039926324731617242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) 2 * A000129 (n + 1)

end

end A204274.P5039926324731617242

namespace A204274

/-- `A000005(n+1)%2*A000129(n+1)` -/
def P5039926324731617242.Spec : Prop :=
  ∀ n, P5039926324731617242.a n = A204274 (n + 1)

end A204274

/-! ## A204274.P17444601367312035030

`A000129(n+1)*A240025(A000037(n+1))`
-/

namespace A204274.P17444601367312035030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A240025 (A000037 (n + 1)).toNat

end

end A204274.P17444601367312035030

namespace A204274

/-- `A000129(n+1)*A240025(A000037(n+1))` -/
def P17444601367312035030.Spec : Prop :=
  ∀ n, P17444601367312035030.a n = A204274 (n + 1)

end A204274

/-! ## A204274.P16649209185526334923

`(A000196(n+1)-A000196(n))*A000129(n+1)`
-/

namespace A204274.P16649209185526334923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000196 (n + 1) - A000196 n) * A000129 (n + 1)

end

end A204274.P16649209185526334923

namespace A204274

/-- `(A000196(n+1)-A000196(n))*A000129(n+1)` -/
def P16649209185526334923.Spec : Prop :=
  ∀ n, P16649209185526334923.a n = A204274 (n + 1)

end A204274

/-! ## A204274.P7306151691789695921

`A171842(A010052(n+1)+n+1)-A171842(n+1)`
-/

namespace A204274.P7306151691789695921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (A010052 (n + 1) + (n + 1 : ℤ)).toNat - A171842 (n + 1)

end

end A204274.P7306151691789695921

namespace A204274

/-- `A171842(A010052(n+1)+n+1)-A171842(n+1)` -/
def P7306151691789695921.Spec : Prop :=
  ∀ n, P7306151691789695921.a n = A204274 (n + 1)

end A204274

/-! ## A204274.P2895684521101657097

`A204060(n+1)/A203847(n+1)*A204270(n+1)`
-/

namespace A204274.P2895684521101657097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204060 (n + 1) : ℚ) / (A203847 (n + 1) : ℚ) * (A204270 (n + 1) : ℚ)

end

end A204274.P2895684521101657097

namespace A204274

/-- `A204060(n+1)/A203847(n+1)*A204270(n+1)` -/
def P2895684521101657097.Spec : Prop :=
  ∀ n, P2895684521101657097.a n = (A204274 (n + 1) : ℚ)

end A204274

/-! ## A204274.P12272065578271853335

`lcm(A065803(n+1), A077985(n*A065803(n+1)))`
-/

namespace A204274.P12272065578271853335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065803 (n + 1)) (A077985 ((n : ℤ) * A065803 (n + 1)).toNat)

end

end A204274.P12272065578271853335

namespace A204274

/-- `lcm(A065803(n+1), A077985(n*A065803(n+1)))` -/
def P12272065578271853335.Spec : Prop :=
  ∀ n, (P12272065578271853335.a n : ℤ) = A204274 (n + 1)

end A204274

/-!
# A204275: G.f.: Product_{n>=1} (1 + A002203(n)*x^n + (-1)^n*x^(2*n)) where A002203 is the companion Pell numbers.

The programs for A204275, there is no canonical definition to state claims against.
-/

/-! ## A204275.P11986280322262237789

`∩[∑[A199898(n+1)], A001318(n)]`
-/

namespace A204275.P11986280322262237789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A204275.P11986280322262237789

/-! ## A204275.P3908884728340094158

`A001318(∏{e}[A115066(n)+n, #+1])`
-/

namespace A204275.P3908884728340094158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115066 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A204275.P3908884728340094158

/-!
# A204276: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..2 introduced in row major order.

The programs for A204276, there is no canonical definition to state claims against.
-/

/-! ## A204276.P1153328891604227233

`A204284(∑[4*n]+1)`
-/

namespace A204276.P1153328891604227233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204276.P1153328891604227233

/-! ## A204276.P16392603296086836674

`lcm(2, A204284(A001844(n)))`
-/

namespace A204276.P16392603296086836674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204284 (A001844 n).toNat)

end

end A204276.P16392603296086836674

/-! ## A204276.P1457907776760795854

`A204284(A001844(n))+A185037(n)`
-/

namespace A204276.P1457907776760795854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A001844 n).toNat + A185037 n

end

end A204276.P1457907776760795854

/-! ## A204276.P6122405144961727080

`A007318(∑[n])*A204284(A001844(n))`
-/

namespace A204276.P6122405144961727080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A204284 (A001844 n).toNat

end

end A204276.P6122405144961727080

/-! ## A204276.P6739155718714492364

`A204284(A001844(n))+A000007(n+2)`
-/

namespace A204276.P6739155718714492364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A001844 n).toNat + A000007 (n + 2)

end

end A204276.P6739155718714492364

/-!
# A204277: Number of (n+2)X3 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..2 introduced in row major order.

The programs for A204277, there is no canonical definition to state claims against.
-/

/-! ## A204277.P8542380229495825926

`A204284(∑[n]+1)`
-/

namespace A204277.P8542380229495825926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204277.P8542380229495825926

/-! ## A204277.P9318249987168049132

`record[A204284(n+1)]`
-/

namespace A204277.P9318249987168049132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204277.P9318249987168049132

/-! ## A204277.P1709830811407188485

`or(char[2], A204284(A000124(n)))`
-/

namespace A204277.P1709830811407188485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A204284 (A000124 n).toNat)

end

end A204277.P1709830811407188485

/-! ## A204277.P8386576148924247894

`A204284(A000124(n))+A178798(n)`
-/

namespace A204277.P8386576148924247894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A000124 n).toNat + A178798 n

end

end A204277.P8386576148924247894

/-! ## A204277.P9918980592433056210

`A007318(∑[n])*A204284(A000124(n))`
-/

namespace A204277.P9918980592433056210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A204284 (A000124 n).toNat

end

end A204277.P9918980592433056210

/-!
# A204278: Number of (n+2) X 4 0..2 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..2 introduced in row major order.

The programs for A204278, there is no canonical definition to state claims against.
-/

/-! ## A204278.P4379939912644982820

`A204284(∑[n+1]+2)`
-/

namespace A204278.P4379939912644982820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204278.P4379939912644982820

/-! ## A204278.P8068923845584884959

`A204284(A000096(n+1))%A204282(2*(n+2))`
-/

namespace A204278.P8068923845584884959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204284 (A000096 (n + 1)).toNat) (A204282 (2 * (n + 2)))

end

end A204278.P8068923845584884959

/-! ## A204278.P17812046096546690447

`A000027(A204284(∑[n+2]))`
-/

namespace A204278.P17812046096546690447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A204284 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A204278.P17812046096546690447

/-!
# A204279: Number of (n+2) X 5 0..2 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..2 introduced in row major order.

The programs for A204279, there is no canonical definition to state claims against.
-/

/-! ## A204279.P10057074046877982551

`A204284(∑[n+2]+4)`
-/

namespace A204279.P10057074046877982551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204279.P10057074046877982551

/-! ## A204279.P6268247915770911897

`or(char[1], A204284(A046691(n)+7))`
-/

namespace A204279.P6268247915770911897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A204284 (A046691 n + 7).toNat)

end

end A204279.P6268247915770911897

/-! ## A204279.P1787067192386412059

`A204284(A167614(n+1))+A011738(n)`
-/

namespace A204279.P1787067192386412059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A167614 (n + 1)).toNat + A011738 n

end

end A204279.P1787067192386412059

/-! ## A204279.P7984970356535211394

`A204284(A167614(n+1))+A025443(n)`
-/

namespace A204279.P7984970356535211394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A167614 (n + 1)).toNat + A025443 n

end

end A204279.P7984970356535211394

/-! ## A204279.P17694886574056990860

`A204284(A167614(n+1))+A185284(n)`
-/

namespace A204279.P17694886574056990860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A167614 (n + 1)).toNat + A185284 n

end

end A204279.P17694886574056990860

/-!
# A204280: Number of (n+2) X 6 0..2 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..2 introduced in row major order.

The programs for A204280, there is no canonical definition to state claims against.
-/

/-! ## A204280.P2871986807220655473

`A204284(∑[n+3]+7)`
-/

namespace A204280.P2871986807220655473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A204280.P2871986807220655473

/-! ## A204280.P5313981688806602777

`A204284(Δ[A008778(n)]+6)+and(1, 2*n)`
-/

namespace A204280.P5313981688806602777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (f1 (n + 1) - f1 n + 6).toNat + (Nat.land 1 (2 * n) : ℤ)

end

end A204280.P5313981688806602777

/-! ## A204280.P15190313711248372348

`A204284(Δ[A008778(n)]+6)+A185037(n)`
-/

namespace A204280.P15190313711248372348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (f1 (n + 1) - f1 n + 6).toNat + A185037 n

end

end A204280.P15190313711248372348

/-! ## A204280.P10788785855206631878

`A014963(12*n+6)*A204284(Δ[A008778(n)]+6)`
-/

namespace A204280.P10788785855206631878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A204284 (f1 (n + 1) - f1 n + 6).toNat

end

end A204280.P10788785855206631878

/-! ## A204280.P17417196243890489696

`A008683(n+1)²!*A204284(Δ[A008778(n)]+6)`
-/

namespace A204280.P17417196243890489696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ) * A204284 (f1 (n + 1) - f1 n + 6).toNat

end

end A204280.P17417196243890489696

/-!
# A204281: Number of (n+2) X 7 0..2 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..2 introduced in row major order.

The programs for A204281, there is no canonical definition to state claims against.
-/

/-! ## A204281.P17239447407876705233

`A204284(∑[n+4]+11)`
-/

namespace A204281.P17239447407876705233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A204281.P17239447407876705233

/-! ## A204281.P4083164289664805589

`A204284(A046691(n+3))+A011738(n)`
-/

namespace A204281.P4083164289664805589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A046691 (n + 3)).toNat + A011738 n

end

end A204281.P4083164289664805589

/-! ## A204281.P213379757680150478

`A204284(A046691(n+3))+A025443(n)`
-/

namespace A204281.P213379757680150478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A046691 (n + 3)).toNat + A025443 n

end

end A204281.P213379757680150478

/-! ## A204281.P9284419284327373305

`A204284(A046691(n+3))+A185284(n)`
-/

namespace A204281.P9284419284327373305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A046691 (n + 3)).toNat + A185284 n

end

end A204281.P9284419284327373305

/-! ## A204281.P6416852516678110122

`A204284(A374005(n+1))+A022895(2*n+1)`
-/

namespace A204281.P6416852516678110122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A374005 (n + 1)).toNat + A022895 (2 * n + 1)

end

end A204281.P6416852516678110122

/-!
# A204282: Number of (n+2) X 8 0..2 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..2 introduced in row major order.

The programs for A204282, there is no canonical definition to state claims against.
-/

/-! ## A204282.P7130603334242094562

`A204284(A166136(n+4))`
-/

namespace A204282.P7130603334242094562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A166136 (n + 4)).toNat

end

end A204282.P7130603334242094562

/-! ## A204282.P3060959799593198426

`A204284(A167499(n+4)+1)`
-/

namespace A204282.P3060959799593198426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A167499 (n + 4) + 1).toNat

end

end A204282.P3060959799593198426

/-! ## A204282.P11122237336893825741

`A204284(A000124(n+5)+5)`
-/

namespace A204282.P11122237336893825741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A000124 (n + 5) + 5).toNat

end

end A204282.P11122237336893825741

/-! ## A204282.P7280546246363193805

`A204284(A000096(n+4)+7)`
-/

namespace A204282.P7280546246363193805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A000096 (n + 4) + 7).toNat

end

end A204282.P7280546246363193805

/-! ## A204282.P8078307598900588966

`A204284(A000217(n+5)+6)`
-/

namespace A204282.P8078307598900588966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A000217 (n + 5) + 6).toNat

end

end A204282.P8078307598900588966

/-!
# A204283: Number of (n+2) X 9 0..2 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..2 introduced in row major order.

The programs for A204283, there is no canonical definition to state claims against.
-/

/-! ## A204283.P18429253609340285424

`A204284(A056119(n)+28)`
-/

namespace A204283.P18429253609340285424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A056119 n + 28).toNat

end

end A204283.P18429253609340285424

/-! ## A204283.P10038243533292461517

`A204284(A167614(n+5)+4)`
-/

namespace A204283.P10038243533292461517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A167614 (n + 5) + 4).toNat

end

end A204283.P10038243533292461517

/-! ## A204283.P15441256817991733834

`A204284(A000124(n+6)+6)`
-/

namespace A204283.P15441256817991733834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A000124 (n + 6) + 6).toNat

end

end A204283.P15441256817991733834

/-! ## A204283.P2153485763073946131

`A204284(A000096(n+5)+8)`
-/

namespace A204283.P2153485763073946131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A000096 (n + 5) + 8).toNat

end

end A204283.P2153485763073946131

/-! ## A204283.P13852924054192895874

`A204284(A000217(n+6)+7)`
-/

namespace A204283.P13852924054192895874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204284 (A000217 (n + 6) + 7).toNat

end

end A204283.P13852924054192895874

/-!
# A204285: Number of (n+2)X3 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..3 introduced in row major order.

The programs for A204285, there is no canonical definition to state claims against.
-/

/-! ## A204285.P5204417831294082595

`A204289(∑[n]+1)`
-/

namespace A204285.P5204417831294082595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204289 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204285.P5204417831294082595

/-! ## A204285.P5744556105151717041

`and(-1, A204289(A000124(n)))`
-/

namespace A204285.P5744556105151717041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A204289 (A000124 n).toNat)

end

end A204285.P5744556105151717041

/-! ## A204285.P2412417585877899011

`record[A204289(A286234(n+1))]`
-/

namespace A204285.P2412417585877899011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204289 (A286234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204285.P2412417585877899011

/-! ## A204285.P1136756023784224108

`record[A204289(A000124(val(n+1, 2)))]`
-/

namespace A204285.P1136756023784224108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204289 (A000124 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204285.P1136756023784224108

/-! ## A204285.P1223071009431195818

`record[A010054(n)*A204289(n+1)]`
-/

namespace A204285.P1223071009431195818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204285.P1223071009431195818

/-!
# A204286: Number of (n+2)X4 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..3 introduced in row major order.

The programs for A204286, there is no canonical definition to state claims against.
-/

/-! ## A204286.P13630210718541652021

`A204289(∑[n+1]+2)`
-/

namespace A204286.P13630210718541652021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204289 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204286.P13630210718541652021

/-! ## A204286.P7991415153716531384

`record[A010054(n)*A204289(n+2)]`
-/

namespace A204286.P7991415153716531384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204289 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204286.P7991415153716531384

/-! ## A204286.P4466927662195079497

`record[root(A204289(n+2), A002260(n+1))]`
-/

namespace A204286.P4466927662195079497
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204289 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204286.P4466927662195079497

/-! ## A204286.P7091790969063899054

`A000108(C(n, 47))*A204289(A133263(n+1))`
-/

namespace A204286.P7091790969063899054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n 47) * A204289 (A133263 (n + 1)).toNat

end

end A204286.P7091790969063899054

/-!
# A204287: Number of (n+2)X5 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..3 introduced in row major order.

The programs for A204287, there is no canonical definition to state claims against.
-/

/-! ## A204287.P3513396590135558966

`A204289(∑[n+2]+4)`
-/

namespace A204287.P3513396590135558966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204289 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204287.P3513396590135558966

/-! ## A204287.P3194207179668221854

`and(-1, A204289(A167614(n+1)))`
-/

namespace A204287.P3194207179668221854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A204289 (A167614 (n + 1)).toNat)

end

end A204287.P3194207179668221854

/-! ## A204287.P14708341404559045012

`record[gcd(A204289(n+4), A264428(n+1))]`
-/

namespace A204287.P14708341404559045012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204289 (n + 4)) (A264428 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204287.P14708341404559045012

/-!
# A204288: Number of (n+2)X6 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly two different ways, and new values 0..3 introduced in row major order.

The programs for A204288, there is no canonical definition to state claims against.
-/

/-! ## A204288.P12664179156868240820

`A204289(A020752(n+1))`
-/

namespace A204288.P12664179156868240820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204289 (A020752 (n + 1)).toNat

end

end A204288.P12664179156868240820

/-! ## A204288.P15163889433417577245

`A204289(A141214(n)+7)`
-/

namespace A204288.P15163889433417577245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204289 (A141214 n + 7).toNat

end

end A204288.P15163889433417577245

/-!
# A204290: E.g.f. A(x) satisfies: Sum_{n>=1} Moebius(n) * A(x)^n/n = x.

The programs for A204290, there is no canonical definition to state claims against.
-/

/-! ## A204290.P9750766270106089303

`A059865(n+3)-A276085(A059865(n+1))`
-/

namespace A204290.P9750766270106089303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059865 (n + 3) - A276085 (A059865 (n + 1)).toNat

end

end A204290.P9750766270106089303

/-!
# A204292: a(n) = binomial(n, d(n)), where d(n) = A000005(n) is the number of divisors of n.

The programs for A204292, the canonical program `A204292.P11969319273237781695` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204292 has offset 1).

The definition of A204292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204292.P11969319273237781695

`C(n+1, ∏{e}[n+1, #+1])`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204292

/-- `C(n+1, ∏{e}[n+1, #+1])` -/
def P11969319273237781695.Spec : Prop :=
  ∀ n, (P11969319273237781695.a n : ℤ) = A204292 (n + 1)

theorem P11969319273237781695.correct : P11969319273237781695.Spec := by
  intro n
  simp only [A204292, Nat.add_sub_cancel]

end A204292

/-! ## A204292.P15374884182734388214

`C(n+1, ∑{d}[n+1, gcd(n, #)])`
-/

namespace A204292.P15374884182734388214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)

end

end A204292.P15374884182734388214

namespace A204292

/-- `C(n+1, ∑{d}[n+1, gcd(n, #)])` -/
def P15374884182734388214.Spec : Prop :=
  ∀ n, (P15374884182734388214.a n : ℤ) = A204292 (n + 1)

end A204292

/-! ## A204292.P15622035284094243462

`C(n+1, ∑{d}[n+1, ceil(acot(#))])`
-/

namespace A204292.P15622035284094243462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉).toNat

end

end A204292.P15622035284094243462

namespace A204292

/-- `C(n+1, ∑{d}[n+1, ceil(acot(#))])` -/
def P15622035284094243462.Spec : Prop :=
  ∀ n, (P15622035284094243462.a n : ℤ) = A204292 (n + 1)

end A204292

/-! ## A204292.P12056281486904760163

`C(n+1, ∑{d}[n+1, ceil(1/#)])`
-/

namespace A204292.P12056281486904760163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉).toNat

end

end A204292.P12056281486904760163

namespace A204292

/-- `C(n+1, ∑{d}[n+1, ceil(1/#)])` -/
def P12056281486904760163.Spec : Prop :=
  ∀ n, (P12056281486904760163.a n : ℤ) = A204292 (n + 1)

end A204292

/-! ## A204292.P11329956105137106507

`C(n+1, -∑{d}[n+1, or(#, -1)])`
-/

namespace A204292.P11329956105137106507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (-(∑ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1))).toNat

end

end A204292.P11329956105137106507

namespace A204292

/-- `C(n+1, -∑{d}[n+1, or(#, -1)])` -/
def P11329956105137106507.Spec : Prop :=
  ∀ n, (P11329956105137106507.a n : ℤ) = A204292 (n + 1)

end A204292

/-! ## A204292.P1102058770141685664

`C(n+1, Δ[A006218(n)])`
-/

namespace A204292.P1102058770141685664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (f1 (n + 1) - f1 n).toNat

end

end A204292.P1102058770141685664

namespace A204292

/-- `C(n+1, Δ[A006218(n)])` -/
def P1102058770141685664.Spec : Prop :=
  ∀ n, (P1102058770141685664.a n : ℤ) = A204292 (n + 1)

end A204292

/-! ## A204292.P14399172772075886371

`C(n+1, A000005(n+1))`
-/

namespace A204292.P14399172772075886371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A000005 (n + 1)).toNat

end

end A204292.P14399172772075886371

namespace A204292

/-- `C(n+1, A000005(n+1))` -/
def P14399172772075886371.Spec : Prop :=
  ∀ n, (P14399172772075886371.a n : ℤ) = A204292 (n + 1)

end A204292

/-! ## A204292.P5739385018628286532

`C(n+1, A049820(n+1))`
-/

namespace A204292.P5739385018628286532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A049820 (n + 1)).toNat

end

end A204292.P5739385018628286532

namespace A204292

/-- `C(n+1, A049820(n+1))` -/
def P5739385018628286532.Spec : Prop :=
  ∀ n, (P5739385018628286532.a n : ℤ) = A204292 (n + 1)

end A204292

/-! ## A204292.P16403855240635586306

`C(A110654(2*n+1), A183063(2*(n+1)))`
-/

namespace A204292.P16403855240635586306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A110654 (2 * n + 1)).toNat (A183063 (2 * (n + 1))).toNat

end

end A204292.P16403855240635586306

namespace A204292

/-- `C(A110654(2*n+1), A183063(2*(n+1)))` -/
def P16403855240635586306.Spec : Prop :=
  ∀ n, (P16403855240635586306.a n : ℤ) = A204292 (n + 1)

end A204292

/-!
# A204293: Pascal's triangle interspersed with rows of zeros, and the rows of Pascal's triangle are interspersed with zeros.

The programs for A204293, the canonical program `A204293.P7647427088041582671` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204293 has offset 0).

The definition of A204293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204293.P11119149991160285904

`A051159(n)*A057211(n+1)`
-/

namespace A204293.P11119149991160285904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n * A057211 (n + 1)

end

end A204293.P11119149991160285904

namespace A204293

/-- `A051159(n)*A057211(n+1)` -/
def P11119149991160285904.Spec : Prop :=
  ∀ n, P11119149991160285904.a n = A204293 n

end A204293

/-! ## A204293.P7647427088041582671

`A057211(n+1)*A178112(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A204293

/-- `A057211(n+1)*A178112(n)` -/
def P7647427088041582671.Spec : Prop :=
  ∀ n, P7647427088041582671.a n = A204293 n

theorem P7647427088041582671.correct : P7647427088041582671.Spec := by
  intro n
  simp only [A204293]

end A204293

/-! ## A204293.P2989501387827523998

`A178112(n)*A376583(n+1)`
-/

namespace A204293.P2989501387827523998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178112 n * A376583 (n + 1)

end

end A204293.P2989501387827523998

namespace A204293

/-- `A178112(n)*A376583(n+1)` -/
def P2989501387827523998.Spec : Prop :=
  ∀ n, P2989501387827523998.a n = A204293 n

end A204293

/-! ## A204293.P6528802925121482992

`(1-A057212(n+1))*A051159(n)`
-/

namespace A204293.P6528802925121482992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057212 (n + 1)) * A051159 n

end

end A204293.P6528802925121482992

namespace A204293

/-- `(1-A057212(n+1))*A051159(n)` -/
def P6528802925121482992.Spec : Prop :=
  ∀ n, P6528802925121482992.a n = A204293 n

end A204293

/-! ## A204293.P2913664862161762977

`A002024(n+1)%2*A051159(n)`
-/

namespace A204293.P2913664862161762977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1)) 2 * A051159 n

end

end A204293.P2913664862161762977

namespace A204293

/-- `A002024(n+1)%2*A051159(n)` -/
def P2913664862161762977.Spec : Prop :=
  ∀ n, P2913664862161762977.a n = A204293 n

end A204293

/-! ## A204293.P15988943273658162268

`A178112(A057944(n))*A178112(n)`
-/

namespace A204293.P15988943273658162268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178112 (A057944 n).toNat * A178112 n

end

end A204293.P15988943273658162268

namespace A204293

/-- `A178112(A057944(n))*A178112(n)` -/
def P15988943273658162268.Spec : Prop :=
  ∀ n, P15988943273658162268.a n = A204293 n

end A204293

/-! ## A204293.P13103702648471748988

`A051159(A127739(n+1)+1)*A051159(n)`
-/

namespace A204293.P13103702648471748988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A127739 (n + 1) + 1).toNat * A051159 n

end

end A204293.P13103702648471748988

namespace A204293

/-- `A051159(A127739(n+1)+1)*A051159(n)` -/
def P13103702648471748988.Spec : Prop :=
  ∀ n, P13103702648471748988.a n = A204293 n

end A204293

/-! ## A204293.P3289086403699534254

`and(1, A191664(n+1))*A178112(n)`
-/

namespace A204293.P3289086403699534254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A191664 (n + 1)) * A178112 n

end

end A204293.P3289086403699534254

namespace A204293

/-- `and(1, A191664(n+1))*A178112(n)` -/
def P3289086403699534254.Spec : Prop :=
  ∀ n, P3289086403699534254.a n = A204293 n

end A204293

/-! ## A204293.P1000303402078247471

`A057211(n+1)*A179181(n+1)`
-/

namespace A204293.P1000303402078247471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1) * A179181 (n + 1)

end

end A204293.P1000303402078247471

namespace A204293

/-- `A057211(n+1)*A179181(n+1)` -/
def P1000303402078247471.Spec : Prop :=
  ∀ n, P1000303402078247471.a n = A204293 n

end A204293

/-! ## A204293.P3151287301367119252

`(1-A357298(n+1))*A207974(n)`
-/

namespace A204293.P3151287301367119252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A357298 (n + 1)) * A207974 n

end

end A204293.P3151287301367119252

namespace A204293

/-- `(1-A357298(n+1))*A207974(n)` -/
def P3151287301367119252.Spec : Prop :=
  ∀ n, P3151287301367119252.a n = A204293 n

end A204293

/-! ## A204293.P825813633061707899

`and(1, A061559(n+1))*A178112(n)`
-/

namespace A204293.P825813633061707899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A061559 (n + 1)) * A178112 n

end

end A204293.P825813633061707899

namespace A204293

/-- `and(1, A061559(n+1))*A178112(n)` -/
def P825813633061707899.Spec : Prop :=
  ∀ n, P825813633061707899.a n = A204293 n

end A204293

/-!
# A204294: Number of n X n 0..3 arrays with every element neighboring horizontally or vertically both a 0 and a 1, and 2 introduced before 3 in row major order.

The programs for A204294, there is no canonical definition to state claims against.
-/

/-! ## A204294.P12661620205747135003

`A204301(∑[4*n]+1)`
-/

namespace A204294.P12661620205747135003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204294.P12661620205747135003

/-! ## A204294.P4413585874014644189

`lcm(2, A204301(A001844(n)))`
-/

namespace A204294.P4413585874014644189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204301 (A001844 n).toNat)

end

end A204294.P4413585874014644189

/-! ## A204294.P866117602854122600

`record[A204301(∑[A266981(n)])]`
-/

namespace A204294.P866117602854122600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204294.P866117602854122600

/-! ## A204294.P15596417903902476542

`record[A204301(Δ[A235355(n)])]`
-/

namespace A204294.P15596417903902476542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204294.P15596417903902476542

/-!
# A204295: Number of n X 2 0..3 arrays with every element neighboring horizontally or vertically both a 0 and a 1, and 2 introduced before 3 in row major order.

The programs for A204295, there is no canonical definition to state claims against.
-/

/-! ## A204295.P1897948731193189852

`A204301(∑[n+1]+2)`
-/

namespace A204295.P1897948731193189852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204295.P1897948731193189852

/-! ## A204295.P13792984928643771152

`A230915(n+1)+A204301(A133263(n+1))`
-/

namespace A204295.P13792984928643771152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230915 (n + 1) + A204301 (A133263 (n + 1)).toNat

end

end A204295.P13792984928643771152

/-! ## A204295.P4754245405812987810

`A007318(A318557(n))*A204301(A133263(n+1))`
-/

namespace A204295.P4754245405812987810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A318557 n).toNat * A204301 (A133263 (n + 1)).toNat

end

end A204295.P4754245405812987810

/-! ## A204295.P11564582859827662263

`A007318(A001222(n+1))*A204301(A133263(n+1))`
-/

namespace A204295.P11564582859827662263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A001222 (n + 1)).toNat * A204301 (A133263 (n + 1)).toNat

end

end A204295.P11564582859827662263

/-! ## A204295.P2832296371599697946

`A168184(2*n+1)*A204301(A373662(n+1))`
-/

namespace A204295.P2832296371599697946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 (2 * n + 1) * A204301 (A373662 (n + 1)).toNat

end

end A204295.P2832296371599697946

/-!
# A204296: Number of nX3 0..3 arrays with every element neighboring horizontally or vertically both a 0 and a 1, and 2 introduced before 3 in row major order.

The programs for A204296, there is no canonical definition to state claims against.
-/

/-! ## A204296.P18155510162100880088

`A204301(∑[n+2]+4)`
-/

namespace A204296.P18155510162100880088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204296.P18155510162100880088

/-! ## A204296.P7861149806318131192

`lcm(2, A204301(A167614(n+1)))`
-/

namespace A204296.P7861149806318131192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204301 (A167614 (n + 1)).toNat)

end

end A204296.P7861149806318131192

/-! ## A204296.P989865428706644762

`A057427(n)*A204301(A167614(n+1))`
-/

namespace A204296.P989865428706644762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A204301 (A167614 (n + 1)).toNat

end

end A204296.P989865428706644762

/-! ## A204296.P2579252090020628553

`A204301(A167614(n+1))%A204285(n+1)`
-/

namespace A204296.P2579252090020628553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204301 (A167614 (n + 1)).toNat) (A204285 (n + 1))

end

end A204296.P2579252090020628553

/-! ## A204296.P3486971019584094456

`record[gcd(A204301(n+1), A230730(n+1))]`
-/

namespace A204296.P3486971019584094456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204301 (n + 1)) (A230730 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204296.P3486971019584094456

/-!
# A204297: Number of nX4 0..3 arrays with every element neighboring horizontally or vertically both a 0 and a 1, and 2 introduced before 3 in row major order.

The programs for A204297, there is no canonical definition to state claims against.
-/

/-! ## A204297.P1134182667007921277

`A204301(A052905(n)+9)`
-/

namespace A204297.P1134182667007921277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (A052905 n + 9).toNat

end

end A204297.P1134182667007921277

/-! ## A204297.P4696138569740559087

`A204301(A055999(n)+10)`
-/

namespace A204297.P4696138569740559087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (A055999 n + 10).toNat

end

end A204297.P4696138569740559087

/-! ## A204297.P17349863345521359693

`A204301(A167614(n+2)+1)`
-/

namespace A204297.P17349863345521359693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (A167614 (n + 2) + 1).toNat

end

end A204297.P17349863345521359693

/-! ## A204297.P1451832948255685665

`A204301(A166136(n+2)-2)`
-/

namespace A204297.P1451832948255685665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (A166136 (n + 2) - 2).toNat

end

end A204297.P1451832948255685665

/-! ## A204297.P10885722219275795845

`A204301(A167487(n+2)-3)`
-/

namespace A204297.P10885722219275795845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (A167487 (n + 2) - 3).toNat

end

end A204297.P10885722219275795845

/-!
# A204298: Number of nX5 0..3 arrays with every element neighboring horizontally or vertically both a 0 and a 1, and 2 introduced before 3 in row major order.

The programs for A204298, there is no canonical definition to state claims against.
-/

/-! ## A204298.P3903865438735101530

`A204301(A374005(n+1))`
-/

namespace A204298.P3903865438735101530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (A374005 (n + 1)).toNat

end

end A204298.P3903865438735101530

/-! ## A204298.P8367594617258269613

`A204301(A046691(n+3))`
-/

namespace A204298.P8367594617258269613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (A046691 (n + 3)).toNat

end

end A204298.P8367594617258269613

/-! ## A204298.P7081554438397945109

`A204301(A056115(n)+11)`
-/

namespace A204298.P7081554438397945109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (A056115 n + 11).toNat

end

end A204298.P7081554438397945109

/-! ## A204298.P10998740711466086141

`A204301(eq[4, A193592(n)])`
-/

namespace A204298.P10998740711466086141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204298.P10998740711466086141

/-! ## A204298.P18281472190980985588

`A204301(Δ[A023545(n+1)])`
-/

namespace A204298.P18281472190980985588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (f1 (n + 1) - f1 n).toNat

end

end A204298.P18281472190980985588

/-!
# A204299: Number of nX6 0..3 arrays with every element neighboring horizontally or vertically both a 0 and a 1, and 2 introduced before 3 in row major order.

The programs for A204299, there is no canonical definition to state claims against.
-/

/-! ## A204299.P15372659541659049734

`A204301(A374007(n+1))`
-/

namespace A204299.P15372659541659049734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (A374007 (n + 1)).toNat

end

end A204299.P15372659541659049734

/-! ## A204299.P16859601984936318712

`A204301(eq[3, A219347(n)])`
-/

namespace A204299.P16859601984936318712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204299.P16859601984936318712

/-! ## A204299.P14218673145444289502

`A204301(eq[5, A193592(n)])`
-/

namespace A204299.P14218673145444289502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204299.P14218673145444289502

/-! ## A204299.P11173724850644095852

`A204301(A046691(n+4)-1)`
-/

namespace A204299.P11173724850644095852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (A046691 (n + 4) - 1).toNat

end

end A204299.P11173724850644095852

/-! ## A204299.P2073852806444003546

`A204301(eq[8, A185782(n+1)])`
-/

namespace A204299.P2073852806444003546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204299.P2073852806444003546

