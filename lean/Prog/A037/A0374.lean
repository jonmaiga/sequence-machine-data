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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A037400: Numbers k such that every base-6 digit of k is a base-9 digit of k.

The programs for A037400, there is no canonical definition to state claims against.
-/

/-! ## A037400.P14726798627668727460

`A111706(∑[A090339(n)])`
-/

namespace A037400.P14726798627668727460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111706 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A037400.P14726798627668727460

/-! ## A037400.P1296945885493487378

`∑[A321126(A052722(n))]`
-/

namespace A037400.P1296945885493487378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321126 (A052722 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037400.P1296945885493487378

/-! ## A037400.P7527256866671341526

`A001055(A293196(n))+n`
-/

namespace A037400.P7527256866671341526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A293196 n).toNat + (n : ℤ)

end

end A037400.P7527256866671341526

/-!
# A037401: Numbers k such that every base-6 digit of k is a base-10 digit of k.

The programs for A037401, there is no canonical definition to state claims against.
-/

/-! ## A037401.P719295735618046859

`record[floor(A195934(n+2)/4)]`
-/

namespace A037401.P719295735618046859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A195934 (n + 2) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037401.P719295735618046859

/-! ## A037401.P7460084519954009170

`A361172(A351056(n))+n`
-/

namespace A037401.P7460084519954009170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361172 (A351056 n).toNat + (n : ℤ)

end

end A037401.P7460084519954009170

/-!
# A037402: Numbers k such that every base-7 digit of k is a base-8 digit of k.

The programs for A037402, there is no canonical definition to state claims against.
-/

/-! ## A037402.P834240898924917645

`A085736(A048332(n+1))`
-/

namespace A037402.P834240898924917645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A048332 (n + 1)).toNat

end

end A037402.P834240898924917645

/-! ## A037402.P14546361919144803043

`A269394(eq[2, A165074(n)])`
-/

namespace A037402.P14546361919144803043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037402.P14546361919144803043

/-! ## A037402.P12007518055430372837

`A351870(eq[2, A165074(n)])`
-/

namespace A037402.P12007518055430372837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037402.P12007518055430372837

/-! ## A037402.P6019318844774118498

`eq[A037901(n), A151810(n)]`
-/

namespace A037402.P6019318844774118498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037402.P6019318844774118498

/-! ## A037402.P3467535802324177173

`eq[A037901(n), A151878(n)]`
-/

namespace A037402.P3467535802324177173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037402.P3467535802324177173

/-!
# A037404: Numbers k such that every base-7 digit of k is a base-10 digit of k.

The programs for A037404, there is no canonical definition to state claims against.
-/

/-! ## A037404.P4102195356814004866

`A020651(A272603(n)+A073482(n+1))`
-/

namespace A037404.P4102195356814004866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A272603 n + A073482 (n + 1)).toNat

end

end A037404.P4102195356814004866

/-!
# A037405: Numbers k such that every base-8 digit of k is a base-9 digit of k.

The programs for A037405, there is no canonical definition to state claims against.
-/

/-! ## A037405.P16250659385569714462

`eq[ceil(n/98), cos(A165091(n))]`
-/

namespace A037405.P16250659385569714462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 98⌉

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A165091 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A037405.P16250659385569714462

/-! ## A037405.P195440016194075477

`record[A265539(A035457(n))]`
-/

namespace A037405.P195440016194075477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265539 (A035457 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037405.P195440016194075477

/-! ## A037405.P16087152962207167160

`record[A265539(A219347(n))]`
-/

namespace A037405.P16087152962207167160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265539 (A219347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037405.P16087152962207167160

/-! ## A037405.P1124627912447359548

`record[A265554(A280865(n))]`
-/

namespace A037405.P1124627912447359548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265554 (A280865 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037405.P1124627912447359548

/-! ## A037405.P13024567567172770380

`record[A265539(A284593(n))]`
-/

namespace A037405.P13024567567172770380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265539 (A284593 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037405.P13024567567172770380

/-!
# A037406: Numbers k such that every base-8 digit of k is a base-10 digit of k.

The programs for A037406, there is no canonical definition to state claims against.
-/

/-! ## A037406.P12396333032441407207

`A005940(eq[1, A151359(n)])`
-/

namespace A037406.P12396333032441407207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037406.P12396333032441407207

/-! ## A037406.P15280357416920463573

`record[A339334(∑[A033072(n+1)])]`
-/

namespace A037406.P15280357416920463573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033072 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339334 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037406.P15280357416920463573

/-! ## A037406.P2415077531066316016

`or(n+1, A036853(A049923(n+1)))`
-/

namespace A037406.P2415077531066316016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A036853 (A049923 (n + 1)).toNat)

end

end A037406.P2415077531066316016

/-! ## A037406.P3933188472207602882

`record[gcd(A073278(n), A119464(2*n+5))]`
-/

namespace A037406.P3933188472207602882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073278 n) (A119464 (2 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037406.P3933188472207602882

/-! ## A037406.P17734007664598158767

`record[C(A028825(2*n+1), A112624(n+2))]`
-/

namespace A037406.P17734007664598158767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028825 (2 * n + 1)).toNat (A112624 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037406.P17734007664598158767

/-!
# A037407: Numbers k such that every base-9 digit of k is a base-10 digit of k.

The programs for A037407, there is no canonical definition to state claims against.
-/

/-! ## A037407.P3807161705553399350

`A118759(A048334(n+1))`
-/

namespace A037407.P3807161705553399350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A048334 (n + 1)).toNat

end

end A037407.P3807161705553399350

/-! ## A037407.P17066716562736419436

`A048334(A000005(2^n))`
-/

namespace A037407.P17066716562736419436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048334 (A000005 (2 ^ n)).toNat

end

end A037407.P17066716562736419436

/-! ## A037407.P8594518042617936916

`lt[A165110(n), A102382(n)]`
-/

namespace A037407.P8594518042617936916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037407.P8594518042617936916

/-! ## A037407.P16145642045756262288

`lt[A165110(n), A124768(n)]`
-/

namespace A037407.P16145642045756262288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037407.P16145642045756262288

/-! ## A037407.P2071189084361438688

`lt[A165110(n), A124769(n)]`
-/

namespace A037407.P2071189084361438688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037407.P2071189084361438688

/-!
# A037408: Positive numbers having the same set of digits in base 2 and base 3.

The programs for A037408, there is no canonical definition to state claims against.
-/

/-! ## A037408.P8765562930973668982

`A005836(A037143(n+4))%A057179(n+1)`
-/

namespace A037408.P8765562930973668982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005836 (A037143 (n + 4)).toNat) (A057179 (n + 1))

end

end A037408.P8765562930973668982

/-!
# A037409: Positive numbers having the same set of digits in base 2 and base 4.

The programs for A037409, the canonical program `A037409.P18189841594398077675` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037409 has offset 1).

The definition of A037409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037409.P18189841594398077675

`A000695(record[xor(n, A036987(n))])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037409

/-- `A000695(record[xor(n, A036987(n))])` -/
def P18189841594398077675.Spec : Prop :=
  ∀ n, P18189841594398077675.a n = A037409 (n + 1)

theorem P18189841594398077675.correct : P18189841594398077675.Spec := by
  intro n
  simp only [A037409, Nat.add_sub_cancel]

end A037409

/-! ## A037409.P9981448506060416519

`record[gcd(A000695(n), A129502(n+1))]`
-/

namespace A037409.P9981448506060416519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000695 n) (A129502 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037409.P9981448506060416519

namespace A037409

/-- `record[gcd(A000695(n), A129502(n+1))]` -/
def P9981448506060416519.Spec : Prop :=
  ∀ n, (P9981448506060416519.a n : ℤ) = A037409 (n + 1)

end A037409

/-! ## A037409.P10085533813562887466

`A000695(eq[2, or(2, A048298(n+1))])`
-/

namespace A037409.P10085533813562887466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A048298 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037409.P10085533813562887466

namespace A037409

/-- `A000695(eq[2, or(2, A048298(n+1))])` -/
def P10085533813562887466.Spec : Prop :=
  ∀ n, P10085533813562887466.a n = A037409 (n + 1)

end A037409

/-! ## A037409.P7515401301054542236

`A000695(lt[2^val(n+1, 2), A325973(n+1)])`
-/

namespace A037409.P7515401301054542236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A037409.P7515401301054542236

namespace A037409

/-- `A000695(lt[2^val(n+1, 2), A325973(n+1)])` -/
def P7515401301054542236.Spec : Prop :=
  ∀ n, P7515401301054542236.a n = A037409 (n + 1)

end A037409

/-! ## A037409.P17016097734389669041

`A000695(∪[A062289(n+1), A007899(n)])`
-/

namespace A037409.P17016097734389669041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007899 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A037409.P17016097734389669041

namespace A037409

/-- `A000695(∪[A062289(n+1), A007899(n)])` -/
def P17016097734389669041.Spec : Prop :=
  ∀ n, P17016097734389669041.a n = A037409 (n + 1)

end A037409

/-! ## A037409.P6090191939456560989

`record[A000695(n)^A000120(A080940(n+1))]`
-/

namespace A037409.P6090191939456560989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000695 n : ℚ) ^ (A000120 (A080940 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037409.P6090191939456560989

namespace A037409

/-- `record[A000695(n)^A000120(A080940(n+1))]` -/
def P6090191939456560989.Spec : Prop :=
  ∀ n, P6090191939456560989.a n = (A037409 (n + 1) : ℚ)

end A037409

/-! ## A037409.P9799667213283490132

`record[A000695(n)^A178334(A335905(n+1))]`
-/

namespace A037409.P9799667213283490132
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000695 n : ℚ) ^ (A178334 (A335905 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037409.P9799667213283490132

namespace A037409

/-- `record[A000695(n)^A178334(A335905(n+1))]` -/
def P9799667213283490132.Spec : Prop :=
  ∀ n, P9799667213283490132.a n = (A037409 (n + 1) : ℚ)

end A037409

/-! ## A037409.P16775713533318448162

`A000695(lt[A266529(n+4), A151573(n+1)])`
-/

namespace A037409.P16775713533318448162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266529 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A037409.P16775713533318448162

namespace A037409

/-- `A000695(lt[A266529(n+4), A151573(n+1)])` -/
def P16775713533318448162.Spec : Prop :=
  ∀ n, P16775713533318448162.a n = A037409 (n + 1)

end A037409

/-! ## A037409.P3209515294327824324

`filter[A037373(n+1), A151666(#)]`
-/

namespace A037409.P3209515294327824324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A151666 (f1 j).toNat = 1) n)

end

end A037409.P3209515294327824324

namespace A037409

/-- `filter[A037373(n+1), A151666(#)]` -/
def P3209515294327824324.Spec : Prop :=
  ∀ n, P3209515294327824324.a n = A037409 (n + 1)

end A037409

/-! ## A037409.P5432650780951101191

`∩[A037373(n+1), A000695(n)]`
-/

namespace A037409.P5432650780951101191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037409.P5432650780951101191

namespace A037409

/-- `∩[A037373(n+1), A000695(n)]` -/
def P5432650780951101191.Spec : Prop :=
  ∀ n, (P5432650780951101191.a n : ℤ) = A037409 (n + 1)

end A037409

/-! ## A037409.P866479640227922976

`∩[A032937(n+1), A037373(n+1)]`
-/

namespace A037409.P866479640227922976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037409.P866479640227922976

namespace A037409

/-- `∩[A032937(n+1), A037373(n+1)]` -/
def P866479640227922976.Spec : Prop :=
  ∀ n, (P866479640227922976.a n : ℤ) = A037409 (n + 1)

end A037409

/-! ## A037409.P46340046928787797

`∩[A037373(n+1), A126684(n+1)]`
-/

namespace A037409.P46340046928787797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037409.P46340046928787797

namespace A037409

/-- `∩[A037373(n+1), A126684(n+1)]` -/
def P46340046928787797.Spec : Prop :=
  ∀ n, (P46340046928787797.a n : ℤ) = A037409 (n + 1)

end A037409

/-!
# A037410: Positive numbers having the same set of digits in base 2 and base 5.

The programs for A037410, the canonical program `A037410.P2759170275717859689` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037410 has offset 1).

The definition of A037410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9988 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037410.P2759170275717859689

`A033042(comp[A256691(n+1)-1])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037410

/-- `A033042(comp[A256691(n+1)-1])` -/
def P2759170275717859689.Spec : Prop :=
  ∀ n, P2759170275717859689.a n = A037410 (n + 1)

theorem P2759170275717859689.correct : P2759170275717859689.Spec := by
  intro n
  simp only [A037410, Nat.add_sub_cancel]

end A037410

/-! ## A037410.P15479855259057661915

`∩[A037374(n+1), A033042(n)]`
-/

namespace A037410.P15479855259057661915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037410.P15479855259057661915

namespace A037410

/-- `∩[A037374(n+1), A033042(n)]` -/
def P15479855259057661915.Spec : Prop :=
  ∀ n, (P15479855259057661915.a n : ℤ) = A037410 (n + 1)

end A037410

/-! ## A037410.P519009497294044014

`filter[A037374(n+1), A151667(#)]`
-/

namespace A037410.P519009497294044014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A151667 (f1 j).toNat = 1) n)

end

end A037410.P519009497294044014

namespace A037410

/-- `filter[A037374(n+1), A151667(#)]` -/
def P519009497294044014.Spec : Prop :=
  ∀ n, P519009497294044014.a n = A037410 (n + 1)

end A037410

/-! ## A037410.P6775638193374277148

`A033042(lt[A037291(n+1)/(n+1), A037291(n+2)])`
-/

namespace A037410.P6775638193374277148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037291 (n + 1) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037291 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A037410.P6775638193374277148

namespace A037410

/-- `A033042(lt[A037291(n+1)/(n+1), A037291(n+2)])` -/
def P6775638193374277148.Spec : Prop :=
  ∀ n, P6775638193374277148.a n = A037410 (n + 1)

end A037410

/-!
# A037411: Positive numbers having the same set of digits in base 2 and base 6.

The programs for A037411, there is no canonical definition to state claims against.
-/

/-! ## A037411.P3445566462942388461

`A033043(eq[A043545(n), A267870(n)])`
-/

namespace A037411.P3445566462942388461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A037411.P3445566462942388461

/-! ## A037411.P4992348576503508758

`A033043(lt[A000005(n+1), A262621(n)])`
-/

namespace A037411.P4992348576503508758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A037411.P4992348576503508758

/-! ## A037411.P5271414381140761794

`∩[A037375(n+1), A033043(n)]`
-/

namespace A037411.P5271414381140761794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037411.P5271414381140761794

/-! ## A037411.P8401956289106102688

`∩[A037454(A005836(n+1)), A037375(n+1)]`
-/

namespace A037411.P8401956289106102688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (A005836 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037411.P8401956289106102688

/-!
# A037412: Positive numbers having the same set of digits in base 2 and base 7.

The programs for A037412, the canonical program `A037412.P10981224244522319325` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037412 has offset 1).

The definition of A037412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9986 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037412.P10981224244522319325

`A033044(A057427(n)+eq[0, A036987(n)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037412

/-- `A033044(A057427(n)+eq[0, A036987(n)])` -/
def P10981224244522319325.Spec : Prop :=
  ∀ n, P10981224244522319325.a n = A037412 (n + 1)

theorem P10981224244522319325.correct : P10981224244522319325.Spec := by
  intro n
  simp only [A037412, Nat.add_sub_cancel]

end A037412

/-! ## A037412.P3889277970799932327

`A033044(lt[A174422(n+1), A062130(n)])`
-/

namespace A037412.P3889277970799932327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A037412.P3889277970799932327

namespace A037412

/-- `A033044(lt[A174422(n+1), A062130(n)])` -/
def P3889277970799932327.Spec : Prop :=
  ∀ n, P3889277970799932327.a n = A037412 (n + 1)

end A037412

/-! ## A037412.P10776583602182506316

`A033044(lt[A174422(n+1), A038186(n+1)])`
-/

namespace A037412.P10776583602182506316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A037412.P10776583602182506316

namespace A037412

/-- `A033044(lt[A174422(n+1), A038186(n+1)])` -/
def P10776583602182506316.Spec : Prop :=
  ∀ n, P10776583602182506316.a n = A037412 (n + 1)

end A037412

/-! ## A037412.P1619147278898403754

`A033044(lt[A174422(n+1), A117284(n+1)])`
-/

namespace A037412.P1619147278898403754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A037412.P1619147278898403754

namespace A037412

/-- `A033044(lt[A174422(n+1), A117284(n+1)])` -/
def P1619147278898403754.Spec : Prop :=
  ∀ n, P1619147278898403754.a n = A037412 (n + 1)

end A037412

/-! ## A037412.P9178099781492543606

`A033044(lt[A174422(n+1), A257340(n+1)])`
-/

namespace A037412.P9178099781492543606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A037412.P9178099781492543606

namespace A037412

/-- `A033044(lt[A174422(n+1), A257340(n+1)])` -/
def P9178099781492543606.Spec : Prop :=
  ∀ n, P9178099781492543606.a n = A037412 (n + 1)

end A037412

/-!
# A037413: Positive numbers having the same set of digits in base 2 and base 8.

The programs for A037413, the canonical program `A037413.P354472380037276149` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037413 has offset 1).

The definition of A037413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037413.P354472380037276149

`A033045(record[gcd(n, A099894(n))])`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037413

/-- `A033045(record[gcd(n, A099894(n))])` -/
def P354472380037276149.Spec : Prop :=
  ∀ n, P354472380037276149.a n = A037413 (n + 1)

theorem P354472380037276149.correct : P354472380037276149.Spec := by
  intro n
  simp only [A037413, Nat.add_sub_cancel]

end A037413

/-! ## A037413.P9713365556620207315

`A033045(record[xor(n, A036987(n))])`
-/

namespace A037413.P9713365556620207315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A036987 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037413.P9713365556620207315

namespace A037413

/-- `A033045(record[xor(n, A036987(n))])` -/
def P9713365556620207315.Spec : Prop :=
  ∀ n, P9713365556620207315.a n = A037413 (n + 1)

end A037413

/-! ## A037413.P16181265700320057341

`A033045(record[A154269(n+1)+n])`
-/

namespace A037413.P16181265700320057341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037413.P16181265700320057341

namespace A037413

/-- `A033045(record[A154269(n+1)+n])` -/
def P16181265700320057341.Spec : Prop :=
  ∀ n, P16181265700320057341.a n = A037413 (n + 1)

end A037413

/-! ## A037413.P7194174407620097019

`record[gcd(A033045(n), A122698(n+1))]`
-/

namespace A037413.P7194174407620097019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033045 n) (A122698 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037413.P7194174407620097019

namespace A037413

/-- `record[gcd(A033045(n), A122698(n+1))]` -/
def P7194174407620097019.Spec : Prop :=
  ∀ n, (P7194174407620097019.a n : ℤ) = A037413 (n + 1)

end A037413

/-! ## A037413.P12697585621169224172

`A033045(record[xor(n, A209229(n+1))])`
-/

namespace A037413.P12697585621169224172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A209229 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037413.P12697585621169224172

namespace A037413

/-- `A033045(record[xor(n, A209229(n+1))])` -/
def P12697585621169224172.Spec : Prop :=
  ∀ n, P12697585621169224172.a n = A037413 (n + 1)

end A037413

/-! ## A037413.P6212076263859496521

`A033045(eq[1, A019425(A233569(n))])`
-/

namespace A037413.P6212076263859496521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A233569 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037413.P6212076263859496521

namespace A037413

/-- `A033045(eq[1, A019425(A233569(n))])` -/
def P6212076263859496521.Spec : Prop :=
  ∀ n, P6212076263859496521.a n = A037413 (n + 1)

end A037413

/-! ## A037413.P1131950943234199244

`A037462(A037409(n+1))`
-/

namespace A037413.P1131950943234199244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A037409 (n + 1)).toNat

end

end A037413.P1131950943234199244

namespace A037413

/-- `A037462(A037409(n+1))` -/
def P1131950943234199244.Spec : Prop :=
  ∀ n, P1131950943234199244.a n = A037413 (n + 1)

end A037413

/-! ## A037413.P445118490821837697

`∩[A037377(n+1), A033045(n)]`
-/

namespace A037413.P445118490821837697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037413.P445118490821837697

namespace A037413

/-- `∩[A037377(n+1), A033045(n)]` -/
def P445118490821837697.Spec : Prop :=
  ∀ n, (P445118490821837697.a n : ℤ) = A037413 (n + 1)

end A037413

/-! ## A037413.P2335350672835477693

`∩[A037377(n+1), A152111(n+1)]`
-/

namespace A037413.P2335350672835477693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037413.P2335350672835477693

namespace A037413

/-- `∩[A037377(n+1), A152111(n+1)]` -/
def P2335350672835477693.Spec : Prop :=
  ∀ n, (P2335350672835477693.a n : ℤ) = A037413 (n + 1)

end A037413

/-!
# A037414: Positive numbers having the same set of digits in base 2 and base 9.

The programs for A037414, the canonical program `A037414.P16486790926337239700` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037414 has offset 1).

The definition of A037414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037414.P2603798165719597493

`A033046(record[gcd(n, A099894(n))])`
-/

namespace A037414.P2603798165719597493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A099894 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A037414.P2603798165719597493

namespace A037414

/-- `A033046(record[gcd(n, A099894(n))])` -/
def P2603798165719597493.Spec : Prop :=
  ∀ n, P2603798165719597493.a n = A037414 (n + 1)

end A037414

/-! ## A037414.P16486790926337239700

`A033046(record[xor(n, A036987(n))])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037414

/-- `A033046(record[xor(n, A036987(n))])` -/
def P16486790926337239700.Spec : Prop :=
  ∀ n, P16486790926337239700.a n = A037414 (n + 1)

theorem P16486790926337239700.correct : P16486790926337239700.Spec := by
  intro n
  simp only [A037414, Nat.add_sub_cancel]

end A037414

/-! ## A037414.P8831396476931931216

`∩[A037421(n+1), A033046(n)]`
-/

namespace A037414.P8831396476931931216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037414.P8831396476931931216

namespace A037414

/-- `∩[A037421(n+1), A033046(n)]` -/
def P8831396476931931216.Spec : Prop :=
  ∀ n, (P8831396476931931216.a n : ℤ) = A037414 (n + 1)

end A037414

/-! ## A037414.P4412841760944541490

`∩[A037421(n+1), A060140(n)]`
-/

namespace A037414.P4412841760944541490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060140 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037414.P4412841760944541490

namespace A037414

/-- `∩[A037421(n+1), A060140(n)]` -/
def P4412841760944541490.Spec : Prop :=
  ∀ n, (P4412841760944541490.a n : ℤ) = A037414 (n + 1)

end A037414

/-! ## A037414.P12655606227551937293

`∩[A037421(n+1), A319497(n)]`
-/

namespace A037414.P12655606227551937293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037414.P12655606227551937293

namespace A037414

/-- `∩[A037421(n+1), A319497(n)]` -/
def P12655606227551937293.Spec : Prop :=
  ∀ n, (P12655606227551937293.a n : ℤ) = A037414 (n + 1)

end A037414

/-! ## A037414.P10712561243248900132

`A037463(A037409(n+1))`
-/

namespace A037414.P10712561243248900132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (A037409 (n + 1)).toNat

end

end A037414.P10712561243248900132

namespace A037414

/-- `A037463(A037409(n+1))` -/
def P10712561243248900132.Spec : Prop :=
  ∀ n, P10712561243248900132.a n = A037414 (n + 1)

end A037414

/-! ## A037414.P14236892850021166732

`A005836(A037409(n+1)+1)`
-/

namespace A037414.P14236892850021166732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A037409 (n + 1) + 1).toNat

end

end A037414.P14236892850021166732

namespace A037414

/-- `A005836(A037409(n+1)+1)` -/
def P14236892850021166732.Spec : Prop :=
  ∀ n, P14236892850021166732.a n = A037414 (n + 1)

end A037414

/-! ## A037414.P15617121326389913746

`∩[A005836(n+1), A037421(n+1)]`
-/

namespace A037414.P15617121326389913746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037414.P15617121326389913746

namespace A037414

/-- `∩[A005836(n+1), A037421(n+1)]` -/
def P15617121326389913746.Spec : Prop :=
  ∀ n, (P15617121326389913746.a n : ℤ) = A037414 (n + 1)

end A037414

/-! ## A037414.P16615024473523885857

`∩[A037408(n+1), A037421(n+1)]`
-/

namespace A037414.P16615024473523885857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037414.P16615024473523885857

namespace A037414

/-- `∩[A037408(n+1), A037421(n+1)]` -/
def P16615024473523885857.Spec : Prop :=
  ∀ n, (P16615024473523885857.a n : ℤ) = A037414 (n + 1)

end A037414

/-! ## A037414.P9349807985274030255

`∩[A037421(n+1), A082575(n+1)]`
-/

namespace A037414.P9349807985274030255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037414.P9349807985274030255

namespace A037414

/-- `∩[A037421(n+1), A082575(n+1)]` -/
def P9349807985274030255.Spec : Prop :=
  ∀ n, (P9349807985274030255.a n : ℤ) = A037414 (n + 1)

end A037414

/-! ## A037414.P7086382610401947471

`A342802(A037409(n+1)%A023545(n+1))`
-/

namespace A037414.P7086382610401947471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342802 (Int.tmod (A037409 (n + 1)) (A023545 (n + 1))).toNat

end

end A037414.P7086382610401947471

namespace A037414

/-- `A342802(A037409(n+1)%A023545(n+1))` -/
def P7086382610401947471.Spec : Prop :=
  ∀ n, P7086382610401947471.a n = A037414 (n + 1)

end A037414

/-!
# A037415: Positive numbers having the same set of digits in base 2 and base 10.

The programs for A037415, the canonical program `A037415.P11765629124754090229` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037415 has offset 1).

The definition of A037415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037415.P14162941627230579159

`A007088(comp[xor(n, n+2)]+1)`
-/

namespace A037415.P14162941627230579159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A037415.P14162941627230579159

namespace A037415

/-- `A007088(comp[xor(n, n+2)]+1)` -/
def P14162941627230579159.Spec : Prop :=
  ∀ n, P14162941627230579159.a n = A037415 (n + 1)

end A037415

/-! ## A037415.P16896609908783735802

`A007088(comp[A003817(2*n)])`
-/

namespace A037415.P16896609908783735802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A037415.P16896609908783735802

namespace A037415

/-- `A007088(comp[A003817(2*n)])` -/
def P16896609908783735802.Spec : Prop :=
  ∀ n, P16896609908783735802.a n = A037415 (n + 1)

end A037415

/-! ## A037415.P11765629124754090229

`A007088(record[xor(n, A036987(n))])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037415

/-- `A007088(record[xor(n, A036987(n))])` -/
def P11765629124754090229.Spec : Prop :=
  ∀ n, P11765629124754090229.a n = A037415 (n + 1)

theorem P11765629124754090229.correct : P11765629124754090229.Spec := by
  intro n
  simp only [A037415, Nat.add_sub_cancel]

end A037415

/-! ## A037415.P7000224256813247838

`A007088(comp[record[A324715(n+1)]])`
-/

namespace A037415.P7000224256813247838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324715 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A037415.P7000224256813247838

namespace A037415

/-- `A007088(comp[record[A324715(n+1)]])` -/
def P7000224256813247838.Spec : Prop :=
  ∀ n, P7000224256813247838.a n = A037415 (n + 1)

end A037415

/-! ## A037415.P3689660315021100413

`A007088(comp[A062383(2*n)-1])`
-/

namespace A037415.P3689660315021100413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (2 * n) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A037415.P3689660315021100413

namespace A037415

/-- `A007088(comp[A062383(2*n)-1])` -/
def P3689660315021100413.Spec : Prop :=
  ∀ n, P3689660315021100413.a n = A037415 (n + 1)

end A037415

/-! ## A037415.P14516629649262353155

`A007088(comp[A010078(n+2)+n]+1)`
-/

namespace A037415.P14516629649262353155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A037415.P14516629649262353155

namespace A037415

/-- `A007088(comp[A010078(n+2)+n]+1)` -/
def P14516629649262353155.Spec : Prop :=
  ∀ n, P14516629649262353155.a n = A037415 (n + 1)

end A037415

/-! ## A037415.P10411852971458573512

`A007088(comp[A029744(2*(n+2))-2]+1)`
-/

namespace A037415.P10411852971458573512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (2 * (n + 2)) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A037415.P10411852971458573512

namespace A037415

/-- `A007088(comp[A029744(2*(n+2))-2]+1)` -/
def P10411852971458573512.Spec : Prop :=
  ∀ n, P10411852971458573512.a n = A037415 (n + 1)

end A037415

/-! ## A037415.P11955886889857582134

`A007088(eq[n*A036987(n), A036987(n)])`
-/

namespace A037415.P11955886889857582134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A037415.P11955886889857582134

namespace A037415

/-- `A007088(eq[n*A036987(n), A036987(n)])` -/
def P11955886889857582134.Spec : Prop :=
  ∀ n, P11955886889857582134.a n = A037415 (n + 1)

end A037415

/-! ## A037415.P9214552560601421160

`A007088(eq[n*A209229(n+1), A209229(n+1)])`
-/

namespace A037415.P9214552560601421160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A209229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A037415.P9214552560601421160

namespace A037415

/-- `A007088(eq[n*A209229(n+1), A209229(n+1)])` -/
def P9214552560601421160.Spec : Prop :=
  ∀ n, P9214552560601421160.a n = A037415 (n + 1)

end A037415

/-! ## A037415.P6571953412710639333

`A007088(lt[2, A006530(char[1]+1+n)])`
-/

namespace A037415.P6571953412710639333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((if ∃ j, f3 j = n then 1 else 0) + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A037415.P6571953412710639333

namespace A037415

/-- `A007088(lt[2, A006530(char[1]+1+n)])` -/
def P6571953412710639333.Spec : Prop :=
  ∀ n, P6571953412710639333.a n = A037415 (n + 1)

end A037415

/-! ## A037415.P10317154857604084869

`∩[A085934(n+1), A007088(n)]`
-/

namespace A037415.P10317154857604084869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037415.P10317154857604084869

namespace A037415

/-- `∩[A085934(n+1), A007088(n)]` -/
def P10317154857604084869.Spec : Prop :=
  ∀ n, (P10317154857604084869.a n : ℤ) = A037415 (n + 1)

end A037415

/-! ## A037415.P7913161148176397449

`∩[A085934(n+1), A085186(n)]`
-/

namespace A037415.P7913161148176397449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085186 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037415.P7913161148176397449

namespace A037415

/-- `∩[A085934(n+1), A085186(n)]` -/
def P7913161148176397449.Spec : Prop :=
  ∀ n, (P7913161148176397449.a n : ℤ) = A037415 (n + 1)

end A037415

/-! ## A037415.P14077270376217148255

`∩[A085934(n+1), A239903(n)]`
-/

namespace A037415.P14077270376217148255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037415.P14077270376217148255

namespace A037415

/-- `∩[A085934(n+1), A239903(n)]` -/
def P14077270376217148255.Spec : Prop :=
  ∀ n, (P14077270376217148255.a n : ℤ) = A037415 (n + 1)

end A037415

/-! ## A037415.P15639899762801964648

`∩[A085934(n+1), A244159(n)]`
-/

namespace A037415.P15639899762801964648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244159 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037415.P15639899762801964648

namespace A037415

/-- `∩[A085934(n+1), A244159(n)]` -/
def P15639899762801964648.Spec : Prop :=
  ∀ n, (P15639899762801964648.a n : ℤ) = A037415 (n + 1)

end A037415

/-! ## A037415.P3048709264220324808

`∩[A085934(n+1), A266946(n+1)]`
-/

namespace A037415.P3048709264220324808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037415.P3048709264220324808

namespace A037415

/-- `∩[A085934(n+1), A266946(n+1)]` -/
def P3048709264220324808.Spec : Prop :=
  ∀ n, (P3048709264220324808.a n : ℤ) = A037415 (n + 1)

end A037415

/-! ## A037415.P11539973781375242631

`A004284(A037409(n+1))`
-/

namespace A037415.P11539973781375242631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004284 (A037409 (n + 1)).toNat

end

end A037415.P11539973781375242631

namespace A037415

/-- `A004284(A037409(n+1))` -/
def P11539973781375242631.Spec : Prop :=
  ∀ n, P11539973781375242631.a n = A037415 (n + 1)

end A037415

/-! ## A037415.P13178791585018493002

`∩[A085934(n+1), A376314(n+1)]`
-/

namespace A037415.P13178791585018493002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037415.P13178791585018493002

namespace A037415

/-- `∩[A085934(n+1), A376314(n+1)]` -/
def P13178791585018493002.Spec : Prop :=
  ∀ n, (P13178791585018493002.a n : ℤ) = A037415 (n + 1)

end A037415

/-!
# A037418: Positive numbers having the same set of digits in base 3 and base 6.

The programs for A037418, there is no canonical definition to state claims against.
-/

/-! ## A037418.P5499683561648836890

`∑[gcd(A197275(n+1)², A197273(n+1))]`
-/

namespace A037418.P5499683561648836890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197275 (n + 1) ^ 2) (A197273 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037418.P5499683561648836890

/-!
# A037419: Positive numbers having the same set of digits in base 3 and base 7.

The programs for A037419, there is no canonical definition to state claims against.
-/

/-! ## A037419.P16993112867202882237

`A037383(∑[A163940(2*n)!])`
-/

namespace A037419.P16993112867202882237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A163940 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037383 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037419.P16993112867202882237

/-!
# A037420: Positive numbers having the same set of digits in base 3 and base 8.

The programs for A037420, there is no canonical definition to state claims against.
-/

/-! ## A037420.P11585017770042287791

`∩[A037384(n+1), A166274(n+1)]`
-/

namespace A037420.P11585017770042287791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037420.P11585017770042287791

/-!
# A037421: Positive numbers having the same set of digits in base 3 and base 9.

The programs for A037421, there is no canonical definition to state claims against.
-/

/-! ## A037421.P5034620062950716783

`∩[A037385(n+1), A037314(n)]`
-/

namespace A037421.P5034620062950716783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037421.P5034620062950716783

/-! ## A037421.P13333826842474390097

`∩[A032938(n+1), A037385(n+1)]`
-/

namespace A037421.P13333826842474390097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037421.P13333826842474390097

/-! ## A037421.P3764496132089179339

`record[A065369(A297126(n+1))]`
-/

namespace A037421.P3764496132089179339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (A297126 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037421.P3764496132089179339

/-! ## A037421.P5966212855766907325

`∩[A297126(n+1), A037314(n)]`
-/

namespace A037421.P5966212855766907325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037421.P5966212855766907325

/-! ## A037421.P15808465578369477536

`record[A065369(A108690(n+1))]`
-/

namespace A037421.P15808465578369477536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (A108690 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037421.P15808465578369477536

/-!
# A037422: Positive numbers having the same set of digits in base 3 and base 10.

The programs for A037422, there is no canonical definition to state claims against.
-/

/-! ## A037422.P9065117327695475969

`A075075(record[A074473(n+1)])`
-/

namespace A037422.P9065117327695475969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075075 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037422.P9065117327695475969

/-!
# A037425: Positive numbers having the same set of digits in base 4 and base 7.

The programs for A037425, there is no canonical definition to state claims against.
-/

/-! ## A037425.P16902472427501625485

`round(p?[record[A350110(n)]]/2)`
-/

namespace A037425.P16902472427501625485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350110 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2)

end

end A037425.P16902472427501625485

/-! ## A037425.P3150943913684499398

`A002973(∑[A360319(n)])`
-/

namespace A037425.P3150943913684499398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002973 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A037425.P3150943913684499398

/-!
# A037426: Positive numbers having the same set of digits in base 4 and base 8.

The programs for A037426, there is no canonical definition to state claims against.
-/

/-! ## A037426.P6841258832082858076

`A126006(4*(n+1))`
-/

namespace A037426.P6841258832082858076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126006 (4 * (n + 1))

end

end A037426.P6841258832082858076

/-! ## A037426.P6961649475994603049

`∑[A112568(4^val(n+1, 4))]`
-/

namespace A037426.P6961649475994603049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112568 (4 ^ SequenceMachineLib.valuation (n + 1) 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037426.P6961649475994603049

/-! ## A037426.P13230949029170547590

`∑[A276959(15^val(n+1, 4))]`
-/

namespace A037426.P13230949029170547590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276959 (15 ^ SequenceMachineLib.valuation (n + 1) 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037426.P13230949029170547590

/-! ## A037426.P12448934713225841748

`record[and(abs(1-n), A066322(n²))]`
-/

namespace A037426.P12448934713225841748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land |1 - (n : ℤ)| (A066322 (n ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037426.P12448934713225841748

/-! ## A037426.P18284783212283322279

`∑[A086070((4^val(n+1, 4))²)]`
-/

namespace A037426.P18284783212283322279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086070 ((4 ^ SequenceMachineLib.valuation (n + 1) 4) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037426.P18284783212283322279

/-!
# A037427: Positive numbers having the same set of digits in base 4 and base 9.

The programs for A037427, there is no canonical definition to state claims against.
-/

/-! ## A037427.P5418463537752041673

`∩[A037391(n+1), A349467(n+1)]`
-/

namespace A037427.P5418463537752041673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037427.P5418463537752041673

/-! ## A037427.P1710950446348105744

`A029034(∑[A054453(n)!])`
-/

namespace A037427.P1710950446348105744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A054453 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029034 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037427.P1710950446348105744

/-!
# A037428: Positive numbers having the same set of digits in base 4 and base 10.

The programs for A037428, there is no canonical definition to state claims against.
-/

/-! ## A037428.P2478418727475346441

`A325283(A326023(n))-A326023(n)`
-/

namespace A037428.P2478418727475346441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325283 (A326023 n).toNat - A326023 n

end

end A037428.P2478418727475346441

/-! ## A037428.P9247860260352947742

`A358378(A298345(n))`
-/

namespace A037428.P9247860260352947742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358378 (A298345 n).toNat

end

end A037428.P9247860260352947742

/-!
# A037431: Positive numbers having the same set of digits in base 5 and base 8.

The programs for A037431, there is no canonical definition to state claims against.
-/

/-! ## A037431.P8223849281422627987

`A037395(A177913(n+1)%A062666(n+1))`
-/

namespace A037431.P8223849281422627987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037395 (Int.tmod (A177913 (n + 1)) (A062666 (n + 1))).toNat

end

end A037431.P8223849281422627987

/-! ## A037431.P9378594834241657925

`A037395(lt[A148933(n), A273787(n+1)])`
-/

namespace A037431.P9378594834241657925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037395 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A037431.P9378594834241657925

/-! ## A037431.P13528938020465726148

`A037395(lt[A119857(n+1), A273787(n+1)])`
-/

namespace A037431.P13528938020465726148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037395 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A037431.P13528938020465726148

/-!
# A037432: Positive numbers having the same set of digits in base 5 and base 9.

The programs for A037432, there is no canonical definition to state claims against.
-/

/-! ## A037432.P2188834450160291516

`∩[A037396(n+1), A285304(n+1)]`
-/

namespace A037432.P2188834450160291516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037432.P2188834450160291516

/-! ## A037432.P17253927940139251595

`∩[A037396(n+1), A114802(n+1)]`
-/

namespace A037432.P17253927940139251595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037432.P17253927940139251595

/-! ## A037432.P12851932618191318652

`∩[A037396(n+1), A141033(n+1)]`
-/

namespace A037432.P12851932618191318652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037432.P12851932618191318652

/-! ## A037432.P17701553321449008484

`∩[A037396(n+1), A176541(n+1)]`
-/

namespace A037432.P17701553321449008484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037432.P17701553321449008484

/-!
# A037433: Positive numbers having the same set of digits in base 5 and base 10.

The programs for A037433, there is no canonical definition to state claims against.
-/

/-! ## A037433.P3442874130366608821

`6^(a(n-1)-1)-3` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A037433.P3442874130366608821
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  (6 : ℝ) ^ (a (n - 1) - 1) - 3

end

end A037433.P3442874130366608821

/-!
# A037435: Positive numbers having the same set of digits in base 6 and base 8.

The programs for A037435, there is no canonical definition to state claims against.
-/

/-! ## A037435.P17755851714788041600

`A355815(A005157(n))+A062928(n+1)`
-/

namespace A037435.P17755851714788041600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355815 (A005157 n).toNat + A062928 (n + 1)

end

end A037435.P17755851714788041600

/-! ## A037435.P6655321564377484835

`A205133(n^n)+n`
-/

namespace A037435.P6655321564377484835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205133 (n ^ n) + (n : ℤ)

end

end A037435.P6655321564377484835

/-!
# A037436: Positive numbers having the same set of digits in base 6 and base 9.

The programs for A037436, there is no canonical definition to state claims against.
-/

/-! ## A037436.P11510587040351770109

`A086031(C(n, 4))+n`
-/

namespace A037436.P11510587040351770109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086031 (Nat.choose n 4) + (n : ℤ)

end

end A037436.P11510587040351770109

/-! ## A037436.P12175141742119402403

`A349145(C(n, 4))+n`
-/

namespace A037436.P12175141742119402403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349145 (Nat.choose n 4) + (n : ℤ)

end

end A037436.P12175141742119402403

/-!
# A037437: Positive numbers having the same set of digits in base 6 and base 10.

The programs for A037437, there is no canonical definition to state claims against.
-/

/-! ## A037437.P7089144173197744691

`A037401(∑[A255599(n+1)^A172119(n)])`
-/

namespace A037437.P7089144173197744691
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255599 (n + 1) : ℚ) ^ (A172119 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037401 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A037437.P7089144173197744691

/-! ## A037437.P12459125126621566668

`A037401(∑[A255599(n+1)^A332403(n+1)])`
-/

namespace A037437.P12459125126621566668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255599 (n + 1) : ℚ) ^ (A332403 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037401 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A037437.P12459125126621566668

/-!
# A037438: Positive numbers having the same set of digits in base 7 and base 8.

The programs for A037438, there is no canonical definition to state claims against.
-/

/-! ## A037438.P2277480898026251901

`A254948((n+1)*A146635(n+1))`
-/

namespace A037438.P2277480898026251901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254948 ((n + 1 : ℤ) * A146635 (n + 1)).toNat

end

end A037438.P2277480898026251901

/-! ## A037438.P16833313148752206818

`A254948(lcm(n+1, A146635(n+1)))`
-/

namespace A037438.P16833313148752206818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254948 (Int.lcm (n + 1 : ℤ) (A146635 (n + 1)))

end

end A037438.P16833313148752206818

/-! ## A037438.P6891350716388542769

`∩[A037331(n+1), A141283(n+1)]`
-/

namespace A037438.P6891350716388542769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037438.P6891350716388542769

/-! ## A037438.P12423898631494743901

`∩[A037331(n+1), A191878(n+1)]`
-/

namespace A037438.P12423898631494743901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037438.P12423898631494743901

/-!
# A037439: Positive numbers having the same set of digits in base 7 and base 9.

The programs for A037439, there is no canonical definition to state claims against.
-/

/-! ## A037439.P7492917557326542890

`∩[A037403(n+1), A051534(n+1)]`
-/

namespace A037439.P7492917557326542890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037439.P7492917557326542890

/-! ## A037439.P1667582251329903187

`∩[A037403(n+1), A295020(n+1)]`
-/

namespace A037439.P1667582251329903187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037439.P1667582251329903187

/-!
# A037440: Positive numbers having the same set of digits in base 7 and base 10.

The programs for A037440, there is no canonical definition to state claims against.
-/

/-! ## A037440.P14805010316292483505

`A130604(A043318(n+2))`
-/

namespace A037440.P14805010316292483505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130604 (A043318 (n + 2)).toNat

end

end A037440.P14805010316292483505

/-! ## A037440.P5234896575091634789

`A130604(A044915(n+2))`
-/

namespace A037440.P5234896575091634789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130604 (A044915 (n + 2)).toNat

end

end A037440.P5234896575091634789

/-! ## A037440.P5868745191546918592

`A130604(A161951(n+2))`
-/

namespace A037440.P5868745191546918592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130604 (A161951 (n + 2)).toNat

end

end A037440.P5868745191546918592

/-! ## A037440.P13124259438186965211

`A130604(A043317(n+1)+1)`
-/

namespace A037440.P13124259438186965211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130604 (A043317 (n + 1) + 1).toNat

end

end A037440.P13124259438186965211

/-! ## A037440.P17402893924342742173

`A130604(A044914(n+1)+1)`
-/

namespace A037440.P17402893924342742173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130604 (A044914 (n + 1) + 1).toNat

end

end A037440.P17402893924342742173

/-!
# A037441: Positive numbers having the same set of digits in base 8 and base 9.

The programs for A037441, there is no canonical definition to state claims against.
-/

/-! ## A037441.P10382750652529817949

`∑[A003961(A069571(3*n+1)^A006822(n))]`
-/

namespace A037441.P10382750652529817949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((A069571 (3 * n + 1) : ℚ) ^ (A006822 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037441.P10382750652529817949

/-! ## A037441.P16796447422256449815

`A023193(record[A020497(n+1)^A292224(n+1)])`
-/

namespace A037441.P16796447422256449815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020497 (n + 1) : ℚ) ^ (A292224 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A037441.P16796447422256449815

/-! ## A037441.P9954672942588909913

`A146172(a(n-1))+n` with `a(0)=1`
-/

namespace A037441.P9954672942588909913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A146172 (a (n - 1)).toNat + (n : ℤ)

end

end A037441.P9954672942588909913

/-! ## A037441.P8785906208539057200

`A059759(A010351(n+1))`
-/

namespace A037441.P8785906208539057200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059759 (A010351 (n + 1)).toNat

end

end A037441.P8785906208539057200

/-!
# A037442: Positive numbers having the same set of digits in base 8 and base 10.

The programs for A037442, there is no canonical definition to state claims against.
-/

/-! ## A037442.P13297329368104957906

`A033792(A053625(n))+n`
-/

namespace A037442.P13297329368104957906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033792 (A053625 n).toNat + (n : ℤ)

end

end A037442.P13297329368104957906

/-! ## A037442.P2351347229637267719

`A125306(A058275(n))+n`
-/

namespace A037442.P2351347229637267719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125306 (A058275 n).toNat + (n : ℤ)

end

end A037442.P2351347229637267719

/-! ## A037442.P15380575427610344746

`A284254(A379670(3*n+1))+n`
-/

namespace A037442.P15380575427610344746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284254 (A379670 (3 * n + 1)).toNat + (n : ℤ)

end

end A037442.P15380575427610344746

/-! ## A037442.P11733112737414011124

`A000046(A371992(A000048(n)))+n`
-/

namespace A037442.P11733112737414011124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (A371992 (A000048 n).toNat).toNat + (n : ℤ)

end

end A037442.P11733112737414011124

/-!
# A037443: Positive numbers having the same set of digits in base 9 and base 10.

The programs for A037443, there is no canonical definition to state claims against.
-/

/-! ## A037443.P4500452794178186185

`A324687(C(n, 5))+n+1`
-/

namespace A037443.P4500452794178186185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324687 (Nat.choose n 5) + (n + 1 : ℤ)

end

end A037443.P4500452794178186185

/-! ## A037443.P1828968773604481406

`A273478(A032569(n+2))`
-/

namespace A037443.P1828968773604481406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273478 (A032569 (n + 2)).toNat

end

end A037443.P1828968773604481406

/-! ## A037443.P14509267821371517416

`A305462(A107070(n+2))`
-/

namespace A037443.P14509267821371517416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305462 (A107070 (n + 2)).toNat

end

end A037443.P14509267821371517416

/-! ## A037443.P14954459873172892839

`A273478(A306360(n+2))`
-/

namespace A037443.P14954459873172892839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273478 (A306360 (n + 2)).toNat

end

end A037443.P14954459873172892839

/-! ## A037443.P15174999443903668427

`A185225(A185234(n+1))+n+1`
-/

namespace A037443.P15174999443903668427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185225 (A185234 (n + 1)).toNat + (n + 1 : ℤ)

end

end A037443.P15174999443903668427

/-!
# A037444: Number of partitions of n^2 into squares.

The programs for A037444, there is no canonical definition to state claims against.
-/

/-! ## A037444.P7633026044158887526

`A001156(n²)`
-/

namespace A037444.P7633026044158887526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (n ^ 2)

end

end A037444.P7633026044158887526

/-! ## A037444.P17549203788738671301

`A219610(A253909(n))+1`
-/

namespace A037444.P17549203788738671301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219610 (A253909 n).toNat + 1

end

end A037444.P17549203788738671301

/-! ## A037444.P664876172347893043

`A219610(A028310(n²))+1`
-/

namespace A037444.P664876172347893043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219610 (A028310 (n ^ 2)).toNat + 1

end

end A037444.P664876172347893043

/-! ## A037444.P5129367577175664840

`A219610(n²)+A057427(n)`
-/

namespace A037444.P5129367577175664840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219610 (n ^ 2) + A057427 n

end

end A037444.P5129367577175664840

/-! ## A037444.P1507850058083731903

`A219610(n²)+A178334(n)`
-/

namespace A037444.P1507850058083731903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219610 (n ^ 2) + A178334 n

end

end A037444.P1507850058083731903

/-! ## A037444.P697622312069424134

`A001156(A253909(n))^A178334(n)`
-/

namespace A037444.P697622312069424134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001156 (A253909 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A037444.P697622312069424134

/-! ## A037444.P9176110858468092842

`A001156(A000290(n))%A001576(n)`
-/

namespace A037444.P9176110858468092842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001156 (A000290 n).toNat) (A001576 n)

end

end A037444.P9176110858468092842

/-! ## A037444.P8346386849809339039

`gcd(A000038(n), A001156(A000290(n)))`
-/

namespace A037444.P8346386849809339039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A001156 (A000290 n).toNat)

end

end A037444.P8346386849809339039

/-! ## A037444.P51409837918905291

`or(A000007(n), A001156(A000290(n)))`
-/

namespace A037444.P51409837918905291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A001156 (A000290 n).toNat)

end

end A037444.P51409837918905291

/-! ## A037444.P14221415243218051394

`A001156(A000290(n))/A007318(∑[n])`
-/

namespace A037444.P14221415243218051394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001156 (A000290 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A037444.P14221415243218051394

/-! ## A037444.P6041195387089215489

`A001156(A000290(n))*A001156(A033183(n))`
-/

namespace A037444.P6041195387089215489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A000290 n).toNat * A001156 (A033183 n).toNat

end

end A037444.P6041195387089215489

/-! ## A037444.P6900214338860907719

`A001156(A000290(n))*A001156(A243148(n))`
-/

namespace A037444.P6900214338860907719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A000290 n).toNat * A001156 (A243148 n).toNat

end

end A037444.P6900214338860907719

/-! ## A037444.P15703786578605356157

`A001156(A000290(n))*A001156(A280129(n))`
-/

namespace A037444.P15703786578605356157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A000290 n).toNat * A001156 (A280129 n).toNat

end

end A037444.P15703786578605356157

/-! ## A037444.P5706263632045471608

`A001156(A078128(n+1))*A001156(A000290(n))`
-/

namespace A037444.P5706263632045471608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A078128 (n + 1)).toNat * A001156 (A000290 n).toNat

end

end A037444.P5706263632045471608

/-!
# A037445: Number of infinitary divisors (or i-divisors) of n.

The programs for A037445, the canonical program `A037445.P13224315450337883063` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037445 has offset 1).

The definition of A037445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037445.P940018258936822646

`2^A064547(n+1)`
-/

namespace A037445.P940018258936822646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A064547 (n + 1) : ℤ)

end

end A037445.P940018258936822646

namespace A037445

/-- `2^A064547(n+1)` -/
def P940018258936822646.Spec : Prop :=
  ∀ n, P940018258936822646.a n = (A037445 (n + 1) : ℚ)

end A037445

/-! ## A037445.P11007612184317487091

`A286575(A156552(n+1))`
-/

namespace A037445.P11007612184317487091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286575 (A156552 (n + 1)).toNat

end

end A037445.P11007612184317487091

namespace A037445

/-- `A286575(A156552(n+1))` -/
def P11007612184317487091.Spec : Prop :=
  ∀ n, P11007612184317487091.a n = A037445 (n + 1)

end A037445

/-! ## A037445.P13224315450337883063

`∏{e}[n+1, A001316(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037445

/-- `∏{e}[n+1, A001316(#)]` -/
def P13224315450337883063.Spec : Prop :=
  ∀ n, P13224315450337883063.a n = A037445 (n + 1)

theorem P13224315450337883063.correct : P13224315450337883063.Spec := by
  intro n
  simp only [A037445, Nat.add_sub_cancel]

end A037445

/-! ## A037445.P8888726879928866374

`∏{e}[n+1, A285741(#)]`
-/

namespace A037445.P8888726879928866374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A285741 (Nat.factorization (f1 n) p)

end

end A037445.P8888726879928866374

namespace A037445

/-- `∏{e}[n+1, A285741(#)]` -/
def P8888726879928866374.Spec : Prop :=
  ∀ n, P8888726879928866374.a n = A037445 (n + 1)

end A037445

/-! ## A037445.P6209295472946574497

`∏{e}[A160102(n+1), #+1]`
-/

namespace A037445.P6209295472946574497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A037445.P6209295472946574497

namespace A037445

/-- `∏{e}[A160102(n+1), #+1]` -/
def P6209295472946574497.Spec : Prop :=
  ∀ n, (P6209295472946574497.a n : ℤ) = A037445 (n + 1)

end A037445

/-! ## A037445.P13511635851746542198

`2*a(A302792(n+1)-1)` with `a(0)=1`
-/

namespace A037445.P13511635851746542198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (A302792 (n + 1) - 1).toNat

end

end A037445.P13511635851746542198

namespace A037445

/-- `2*a(A302792(n+1)-1)` -/
def P13511635851746542198.Spec : Prop :=
  ∀ n, (P13511635851746542198.a n : ℤ) = A037445 (n + 1)

end A037445

/-! ## A037445.P9438989646897476994

`A000079(∑{e}[n+1, #-val(#!, 2)])`
-/

namespace A037445.P9438989646897476994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))).toNat

end

end A037445.P9438989646897476994

namespace A037445

/-- `A000079(∑{e}[n+1, #-val(#!, 2)])` -/
def P9438989646897476994.Spec : Prop :=
  ∀ n, P9438989646897476994.a n = A037445 (n + 1)

end A037445

/-! ## A037445.P10964079211354428210

`2^(∑{e}[n+1, #]-log2(A317934(n+1)))`
-/

namespace A037445.P10964079211354428210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ) - Real.logb 2 (A317934 (n + 1) : ℝ))

end

end A037445.P10964079211354428210

namespace A037445

/-- `2^(∑{e}[n+1, #]-log2(A317934(n+1)))` -/
def P10964079211354428210.Spec : Prop :=
  ∀ n, P10964079211354428210.a n = (A037445 (n + 1) : ℝ)

end A037445

/-! ## A037445.P9950736762699824489

`A000005(A160102(n+1))`
-/

namespace A037445.P9950736762699824489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A160102 (n + 1)).toNat

end

end A037445.P9950736762699824489

namespace A037445

/-- `A000005(A160102(n+1))` -/
def P9950736762699824489.Spec : Prop :=
  ∀ n, P9950736762699824489.a n = A037445 (n + 1)

end A037445

/-! ## A037445.P2542279803266859880

`2^A001222(A074848(n+1))`
-/

namespace A037445.P2542279803266859880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (A074848 (n + 1)).toNat : ℤ)

end

end A037445.P2542279803266859880

namespace A037445

/-- `2^A001222(A074848(n+1))` -/
def P2542279803266859880.Spec : Prop :=
  ∀ n, P2542279803266859880.a n = (A037445 (n + 1) : ℚ)

end A037445

/-! ## A037445.P10242495047722410620

`∏{e}[n+1, A000079(A000120(#))]`
-/

namespace A037445.P10242495047722410620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000079 (A000120 (Nat.factorization (f1 n) p)).toNat

end

end A037445.P10242495047722410620

namespace A037445

/-- `∏{e}[n+1, A000079(A000120(#))]` -/
def P10242495047722410620.Spec : Prop :=
  ∀ n, P10242495047722410620.a n = A037445 (n + 1)

end A037445

/-! ## A037445.P13561667966942401374

`∏{e}[A302024(n+1), A000079(#)]`
-/

namespace A037445.P13561667966942401374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000079 (Nat.factorization (f1 n).natAbs p)

end

end A037445.P13561667966942401374

namespace A037445

/-- `∏{e}[A302024(n+1), A000079(#)]` -/
def P13561667966942401374.Spec : Prop :=
  ∀ n, P13561667966942401374.a n = A037445 (n + 1)

end A037445

/-! ## A037445.P905212133097305776

`∑{d}[A160102(n+1), A008683(#)²]`
-/

namespace A037445.P905212133097305776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d ^ 2

end

end A037445.P905212133097305776

namespace A037445

/-- `∑{d}[A160102(n+1), A008683(#)²]` -/
def P905212133097305776.Spec : Prop :=
  ∀ n, P905212133097305776.a n = A037445 (n + 1)

end A037445

/-! ## A037445.P10701249348047582825

`A000005(n+1)-A348341(n+1)`
-/

namespace A037445.P10701249348047582825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A348341 (n + 1)

end

end A037445.P10701249348047582825

namespace A037445

/-- `A000005(n+1)-A348341(n+1)` -/
def P10701249348047582825.Spec : Prop :=
  ∀ n, P10701249348047582825.a n = A037445 (n + 1)

theorem P10701249348047582825.correct : P10701249348047582825.Spec := by
  intro n
  simp only [A037445, Nat.add_sub_cancel, A037445.P10701249348047582825.a, A037445.P13224315450337883063.f1, A037445.P13224315450337883063.a, A000005, A000005.P16091521709108585461.a, A001316, A001316.P6850078358198232129.a, A348341, A348341.P11276104296330033514.a, A000120, A000120.P2816527436160941581.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037445

/-! ## A037445.P1583886975048750111

`A055076(n+1)*A358260(n+1)`
-/

namespace A037445.P1583886975048750111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (n + 1) * A358260 (n + 1)

end

end A037445.P1583886975048750111

namespace A037445

/-- `A055076(n+1)*A358260(n+1)` -/
def P1583886975048750111.Spec : Prop :=
  ∀ n, P1583886975048750111.a n = A037445 (n + 1)

end A037445

/-! ## A037445.P15665766862337471490

`A034444(n+1)*A382291(n+1)`
-/

namespace A037445.P15665766862337471490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A382291 (n + 1)

end

end A037445.P15665766862337471490

namespace A037445

/-- `A034444(n+1)*A382291(n+1)` -/
def P15665766862337471490.Spec : Prop :=
  ∀ n, P15665766862337471490.a n = A037445 (n + 1)

end A037445

/-! ## A037445.P454631667478952681

`A056671(n+1)*A368106(n+1)`
-/

namespace A037445.P454631667478952681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1) * A368106 (n + 1)

end

end A037445.P454631667478952681

namespace A037445

/-- `A056671(n+1)*A368106(n+1)` -/
def P454631667478952681.Spec : Prop :=
  ∀ n, P454631667478952681.a n = A037445 (n + 1)

end A037445

/-! ## A037445.P11974087574808583044

`A366308(n+1)*A366309(n+1)`
-/

namespace A037445.P11974087574808583044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366308 (n + 1) * A366309 (n + 1)

end

end A037445.P11974087574808583044

namespace A037445

/-- `A366308(n+1)*A366309(n+1)` -/
def P11974087574808583044.Spec : Prop :=
  ∀ n, P11974087574808583044.a n = A037445 (n + 1)

end A037445

/-! ## A037445.P13430701109117461297

`A165825(n+1)/A046644(n+1)`
-/

namespace A037445.P13430701109117461297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165825 (n + 1) : ℚ) / (A046644 (n + 1) : ℚ)

end

end A037445.P13430701109117461297

namespace A037445

/-- `A165825(n+1)/A046644(n+1)` -/
def P13430701109117461297.Spec : Prop :=
  ∀ n, P13430701109117461297.a n = (A037445 (n + 1) : ℚ)

end A037445

/-! ## A037445.P974572979991185717

`A317848(n+1)/A046643(n+1)`
-/

namespace A037445.P974572979991185717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317848 (n + 1) : ℚ) / (A046643 (n + 1) : ℚ)

end

end A037445.P974572979991185717

namespace A037445

/-- `A317848(n+1)/A046643(n+1)` -/
def P974572979991185717.Spec : Prop :=
  ∀ n, P974572979991185717.a n = (A037445 (n + 1) : ℚ)

end A037445

/-!
# A037446: Floor of (n/e)^(n/e).

The programs for A037446, the canonical program `A037446.P18370416512073906743` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037446 has offset 1).

The definition of A037446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037446.P18370416512073906743

`floor(((n+1)/e)^((n+1)/e))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037446

/-- `floor(((n+1)/e)^((n+1)/e))` -/
def P18370416512073906743.Spec : Prop :=
  ∀ n, P18370416512073906743.a n = A037446 (n + 1)

theorem P18370416512073906743.correct : P18370416512073906743.Spec := by
  intro n
  simp only [A037446, Nat.add_sub_cancel]

end A037446

/-! ## A037446.P14178997798989604336

`A004788(A237585(n))`
-/

namespace A037446.P14178997798989604336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 (A237585 n).toNat

end

end A037446.P14178997798989604336

namespace A037446

/-- `A004788(A237585(n))` -/
def P14178997798989604336.Spec : Prop :=
  ∀ n, P14178997798989604336.a n = A037446 (n + 1)

end A037446

/-! ## A037446.P9200057426177517180

`A168201(A190156(n)+A139634(n+1))`
-/

namespace A037446.P9200057426177517180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A190156 n + A139634 (n + 1)).toNat

end

end A037446.P9200057426177517180

namespace A037446

/-- `A168201(A190156(n)+A139634(n+1))` -/
def P9200057426177517180.Spec : Prop :=
  ∀ n, P9200057426177517180.a n = A037446 (n + 1)

end A037446

/-! ## A037446.P18159535267856467221

`A339183(A052393(n))`
-/

namespace A037446.P18159535267856467221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A052393 n).toNat

end

end A037446.P18159535267856467221

namespace A037446

/-- `A339183(A052393(n))` -/
def P18159535267856467221.Spec : Prop :=
  ∀ n, P18159535267856467221.a n = A037446 (n + 1)

end A037446

/-! ## A037446.P1261972931987843260

`A026838(A130245(n!))`
-/

namespace A037446.P1261972931987843260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026838 (A130245 (Nat.factorial n)).toNat

end

end A037446.P1261972931987843260

namespace A037446

/-- `A026838(A130245(n!))` -/
def P1261972931987843260.Spec : Prop :=
  ∀ n, P1261972931987843260.a n = A037446 (n + 1)

end A037446

/-!
# A037447: Number of conjugacy classes of subgroups of the Chevalley group A_n(2) (the group of nonsingular n X n matrices over GF(2)).

The programs for A037447, there is no canonical definition to state claims against.
-/

/-! ## A037447.P11296989380360583735

`A194876(A000108(2*n))+n`
-/

namespace A037447.P11296989380360583735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194876 (A000108 (2 * n)).toNat + (n : ℤ)

end

end A037447.P11296989380360583735

/-!
# A037448: a(n) = floor(cot(n)).

The programs for A037448, the canonical program `A037448.P492079538144767690` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037448 has offset 1).

The definition of A037448 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(cot(n+1))` (program `A037448.P492079538144767690`, by `A037448.P492079538144767690.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037448.P492079538144767690

`floor(cot(n+1))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037448

/-- `floor(cot(n+1))` -/
def P492079538144767690.Spec : Prop :=
  ∀ n, P492079538144767690.a n = A037448 (n + 1)

theorem P492079538144767690.correct : P492079538144767690.Spec := by
  intro n
  simp only [A037448, Nat.add_sub_cancel]

end A037448

/-! ## A037448.P5117869392650481609

`floor(1/tan(n+1))`
-/

namespace A037448.P5117869392650481609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / Real.tan (n + 1 : ℝ)⌋

end

end A037448.P5117869392650481609

namespace A037448

/-- `floor(1/tan(n+1))` -/
def P5117869392650481609.Spec : Prop :=
  ∀ n, P5117869392650481609.a n = A037448 (n + 1)

theorem P5117869392650481609.correct : P5117869392650481609.Spec := by
  intro n
  simp only [A037448, Nat.add_sub_cancel, A037448.P5117869392650481609.a, A037448.P492079538144767690.a, SequenceMachineLib.memo_apply]
  try simp

end A037448

/-! ## A037448.P2374143591290910612

`ceil(cot(n+1))-1`
-/

namespace A037448.P2374143591290910612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (n + 1 : ℝ)⌉ - 1

end

end A037448.P2374143591290910612

namespace A037448

/-- `ceil(cot(n+1))-1` -/
def P2374143591290910612.Spec : Prop :=
  ∀ n, P2374143591290910612.a n = A037448 (n + 1)

end A037448

/-! ## A037448.P9437364129781009874

`-ceil(cot(-(n+1)))`
-/

namespace A037448.P9437364129781009874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.cot (-(n + 1 : ℤ) : ℝ)⌉

end

end A037448.P9437364129781009874

namespace A037448

/-- `-ceil(cot(-(n+1)))` -/
def P9437364129781009874.Spec : Prop :=
  ∀ n, P9437364129781009874.a n = A037448 (n + 1)

end A037448

/-! ## A037448.P18368954532854352576

`floor(tan(acot(tan(n+1))))`
-/

namespace A037448.P18368954532854352576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (SequenceMachineLib.acot (Real.tan (n + 1 : ℝ)))⌋

end

end A037448.P18368954532854352576

namespace A037448

/-- `floor(tan(acot(tan(n+1))))` -/
def P18368954532854352576.Spec : Prop :=
  ∀ n, P18368954532854352576.a n = A037448 (n + 1)

end A037448

/-! ## A037448.P6343794157554349957

`floor(tan(n+1)^-1)`
-/

namespace A037448.P6343794157554349957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (n + 1 : ℝ) ^ (-1 : ℤ)⌋

end

end A037448.P6343794157554349957

namespace A037448

/-- `floor(tan(n+1)^-1)` -/
def P6343794157554349957.Spec : Prop :=
  ∀ n, P6343794157554349957.a n = A037448 (n + 1)

theorem P6343794157554349957.correct : P6343794157554349957.Spec := by
  intro n
  simp only [A037448, Nat.add_sub_cancel, A037448.P6343794157554349957.a, A037448.P492079538144767690.a, SequenceMachineLib.memo_apply]
  try simp

end A037448

/-! ## A037448.P4133777093802555010

`floor(tan(acos(0)-(n+1)))`
-/

namespace A037448.P4133777093802555010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (Real.arccos (0 : ℝ) - (n + 1 : ℝ))⌋

end

end A037448.P4133777093802555010

namespace A037448

/-- `floor(tan(acos(0)-(n+1)))` -/
def P4133777093802555010.Spec : Prop :=
  ∀ n, P4133777093802555010.a n = A037448 (n + 1)

end A037448

/-! ## A037448.P3204925358013463130

`floor(tan(asin(1)-(n+1)))`
-/

namespace A037448.P3204925358013463130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (Real.arcsin (1 : ℝ) - (n + 1 : ℝ))⌋

end

end A037448.P3204925358013463130

namespace A037448

/-- `floor(tan(asin(1)-(n+1)))` -/
def P3204925358013463130.Spec : Prop :=
  ∀ n, P3204925358013463130.a n = A037448 (n + 1)

end A037448

/-! ## A037448.P12348370697190699719

`ceil(1/tan(n+1))-1`
-/

namespace A037448.P12348370697190699719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / Real.tan (n + 1 : ℝ)⌉ - 1

end

end A037448.P12348370697190699719

namespace A037448

/-- `ceil(1/tan(n+1))-1` -/
def P12348370697190699719.Spec : Prop :=
  ∀ n, P12348370697190699719.a n = A037448 (n + 1)

end A037448

/-! ## A037448.P9690868450085652755

`round(cot(n+1)-1/2)`
-/

namespace A037448.P9690868450085652755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (n + 1 : ℝ) - ((1 : ℚ) / 2 : ℝ))

end

end A037448.P9690868450085652755

namespace A037448

/-- `round(cot(n+1)-1/2)` -/
def P9690868450085652755.Spec : Prop :=
  ∀ n, P9690868450085652755.a n = A037448 (n + 1)

end A037448

/-! ## A037448.P2766432639542411734

`-ceil(1/tan(-(n+1)))`
-/

namespace A037448.P2766432639542411734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈1 / Real.tan (-(n + 1 : ℤ) : ℝ)⌉

end

end A037448.P2766432639542411734

namespace A037448

/-- `-ceil(1/tan(-(n+1)))` -/
def P2766432639542411734.Spec : Prop :=
  ∀ n, P2766432639542411734.a n = A037448 (n + 1)

end A037448

/-! ## A037448.P13770119998378483523

`floor(-cot(n-1-2*n))`
-/

namespace A037448.P13770119998378483523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-Real.cot ((n : ℤ) - 1 - (2 * n : ℤ) : ℝ)⌋

end

end A037448.P13770119998378483523

namespace A037448

/-- `floor(-cot(n-1-2*n))` -/
def P13770119998378483523.Spec : Prop :=
  ∀ n, P13770119998378483523.a n = A037448 (n + 1)

end A037448

/-! ## A037448.P9500066045582425049

`floor(cos(n+1)/sin(n+1))`
-/

namespace A037448.P9500066045582425049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (n + 1 : ℝ) / Real.sin (n + 1 : ℝ)⌋

end

end A037448.P9500066045582425049

namespace A037448

/-- `floor(cos(n+1)/sin(n+1))` -/
def P9500066045582425049.Spec : Prop :=
  ∀ n, P9500066045582425049.a n = A037448 (n + 1)

end A037448

/-! ## A037448.P12874576098554845477

`-ceil(-cot(2*n-(n-1)))`
-/

namespace A037448.P12874576098554845477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈-Real.cot ((2 * n : ℤ) - ((n : ℤ) - 1) : ℝ)⌉

end

end A037448.P12874576098554845477

namespace A037448

/-- `-ceil(-cot(2*n-(n-1)))` -/
def P12874576098554845477.Spec : Prop :=
  ∀ n, P12874576098554845477.a n = A037448 (n + 1)

end A037448

/-! ## A037448.P5791323335734855438

`A195911(n+1)-1`
-/

namespace A037448.P5791323335734855438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195911 (n + 1) - 1

end

end A037448.P5791323335734855438

namespace A037448

/-- `A195911(n+1)-1` -/
def P5791323335734855438.Spec : Prop :=
  ∀ n, P5791323335734855438.a n = A037448 (n + 1)

end A037448

/-! ## A037448.P12209064087199406396

`floor(log2(root(2, tan(n+1))))`
-/

namespace A037448.P12209064087199406396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((2 : ℝ) ^ (1 / Real.tan (n + 1 : ℝ)))⌋

end

end A037448.P12209064087199406396

namespace A037448

/-- `floor(log2(root(2, tan(n+1))))` -/
def P12209064087199406396.Spec : Prop :=
  ∀ n, P12209064087199406396.a n = A037448 (n + 1)

theorem P12209064087199406396.correct : P12209064087199406396.Spec := by
  intro n
  simp only [A037448, Nat.add_sub_cancel, A037448.P12209064087199406396.a, A037448.P492079538144767690.a, SequenceMachineLib.memo_apply]
  try simp

end A037448

/-! ## A037448.P2293166901961085767

`floor(log(root(e, tan(n+1))))`
-/

namespace A037448.P2293166901961085767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.exp 1 ^ (1 / Real.tan (n + 1 : ℝ)))⌋

end

end A037448.P2293166901961085767

namespace A037448

/-- `floor(log(root(e, tan(n+1))))` -/
def P2293166901961085767.Spec : Prop :=
  ∀ n, P2293166901961085767.a n = A037448 (n + 1)

theorem P2293166901961085767.correct : P2293166901961085767.Spec := by
  intro n
  simp only [A037448, Nat.add_sub_cancel, A037448.P2293166901961085767.a, A037448.P492079538144767690.a, SequenceMachineLib.memo_apply]
  try simp

end A037448

/-!
# A037449: Discriminant of quadratic field Q(sqrt(n)).

The programs for A037449, the canonical program `A037449.P5379136438379684916` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037449 has offset 1).

The definition of A037449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037449.P13617352433417111137

`4*(n+1)/A389136(n+1)²`
-/

namespace A037449.P13617352433417111137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℚ) / (A389136 (n + 1) ^ 2 : ℚ)

end

end A037449.P13617352433417111137

namespace A037449

/-- `4*(n+1)/A389136(n+1)²` -/
def P13617352433417111137.Spec : Prop :=
  ∀ n, P13617352433417111137.a n = (A037449 (n + 1) : ℚ)

end A037449

/-! ## A037449.P5379136438379684916

`lcm(A014709(n)², A302138(A007913(n+1)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A037449

/-- `lcm(A014709(n)², A302138(A007913(n+1)))` -/
def P5379136438379684916.Spec : Prop :=
  ∀ n, (P5379136438379684916.a n : ℤ) = A037449 (n + 1)

theorem P5379136438379684916.correct : P5379136438379684916.Spec := by
  intro n
  simp only [A037449, Nat.add_sub_cancel]

end A037449

/-! ## A037449.P4252661835003360060

`A178182(A204993(n+1))`
-/

namespace A037449.P4252661835003360060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178182 (A204993 (n + 1)).toNat

end

end A037449.P4252661835003360060

namespace A037449

/-- `A178182(A204993(n+1))` -/
def P4252661835003360060.Spec : Prop :=
  ∀ n, P4252661835003360060.a n = A037449 (n + 1)

end A037449

/-! ## A037449.P9314186191944086343

`A010685(A204993(n+1))*A195161(A007913(n+1))`
-/

namespace A037449.P9314186191944086343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A204993 (n + 1)).toNat * A195161 (A007913 (n + 1)).toNat

end

end A037449.P9314186191944086343

namespace A037449

/-- `A010685(A204993(n+1))*A195161(A007913(n+1))` -/
def P9314186191944086343.Spec : Prop :=
  ∀ n, P9314186191944086343.a n = A037449 (n + 1)

end A037449

/-! ## A037449.P7523835363074719429

`A259532(∑[n]+1)`
-/

namespace A037449.P7523835363074719429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259532 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A037449.P7523835363074719429

namespace A037449

/-- `A259532(∑[n]+1)` -/
def P7523835363074719429.Spec : Prop :=
  ∀ n, P7523835363074719429.a n = A037449 (n + 1)

end A037449

/-!
# A037450: Numbers which are one less than a perfect square that cannot otherwise be written as a power.

The programs for A037450, the canonical program `A037450.P975231576386369614` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037450 has offset 1).

The definition of A037450 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037450.P975231576386369614

`A007916(n+1)²-1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037450

/-- `A007916(n+1)²-1` -/
def P975231576386369614.Spec : Prop :=
  ∀ n, P975231576386369614.a n = A037450 (n + 1)

theorem P975231576386369614.correct : P975231576386369614.Spec := by
  intro n
  simp only [A037450, Nat.add_sub_cancel]

end A037450

/-! ## A037450.P1519036358221841554

`comp[floor(n/(xor(n, n+1)+1))^(val(n+1, 2)+2)]²-1`
-/

namespace A037450.P1519036358221841554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ ^ (SequenceMachineLib.valuation (n + 1) 2 + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 : ℤ) - 1

end

end A037450.P1519036358221841554

namespace A037450

/-- `comp[floor(n/(xor(n, n+1)+1))^(val(n+1, 2)+2)]²-1` -/
def P1519036358221841554.Spec : Prop :=
  ∀ n, P1519036358221841554.a n = A037450 (n + 1)

end A037450

/-! ## A037450.P9661171415271662099

`A153158(n+1)-1`
-/

namespace A037450.P9661171415271662099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153158 (n + 1) - 1

end

end A037450.P9661171415271662099

namespace A037450

/-- `A153158(n+1)-1` -/
def P9661171415271662099.Spec : Prop :=
  ∀ n, P9661171415271662099.a n = A037450 (n + 1)

end A037450

/-! ## A037450.P18375182364121528481

`sqrt(A153157(n+1))-1`
-/

namespace A037450.P18375182364121528481
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A153157 (n + 1) : ℝ) - 1

end

end A037450.P18375182364121528481

namespace A037450

/-- `sqrt(A153157(n+1))-1` -/
def P18375182364121528481.Spec : Prop :=
  ∀ n, P18375182364121528481.a n = (A037450 (n + 1) : ℝ)

end A037450

/-! ## A037450.P9713431585078092617

`record[A052410(n+2)²-1]`
-/

namespace A037450.P9713431585078092617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 2) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037450.P9713431585078092617

namespace A037450

/-- `record[A052410(n+2)²-1]` -/
def P9713431585078092617.Spec : Prop :=
  ∀ n, P9713431585078092617.a n = A037450 (n + 1)

end A037450

/-! ## A037450.P10277558374283269878

`A153147(n+1)/A007916(n+1)-1`
-/

namespace A037450.P10277558374283269878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153147 (n + 1) : ℚ) / (A007916 (n + 1) : ℚ) - 1

end

end A037450.P10277558374283269878

namespace A037450

/-- `A153147(n+1)/A007916(n+1)-1` -/
def P10277558374283269878.Spec : Prop :=
  ∀ n, P10277558374283269878.a n = (A037450 (n + 1) : ℚ)

end A037450

/-! ## A037450.P5199754139213241513

`A153159(n+1)/A153147(n+1)-1`
-/

namespace A037450.P5199754139213241513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153159 (n + 1) : ℚ) / (A153147 (n + 1) : ℚ) - 1

end

end A037450.P5199754139213241513

namespace A037450

/-- `A153159(n+1)/A153147(n+1)-1` -/
def P5199754139213241513.Spec : Prop :=
  ∀ n, P5199754139213241513.a n = (A037450 (n + 1) : ℚ)

end A037450

/-! ## A037450.P10370706489270291847

`A153160(n+1)/A153157(n+1)-1`
-/

namespace A037450.P10370706489270291847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153160 (n + 1) : ℚ) / (A153157 (n + 1) : ℚ) - 1

end

end A037450.P10370706489270291847

namespace A037450

/-- `A153160(n+1)/A153157(n+1)-1` -/
def P10370706489270291847.Spec : Prop :=
  ∀ n, P10370706489270291847.a n = (A037450 (n + 1) : ℚ)

end A037450

/-! ## A037450.P16502698397778337884

`(A153159(n+1)/A153157(n+1))²-1`
-/

namespace A037450.P16502698397778337884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A153159 (n + 1) : ℚ) / (A153157 (n + 1) : ℚ)) ^ 2 - 1

end

end A037450.P16502698397778337884

namespace A037450

/-- `(A153159(n+1)/A153157(n+1))²-1` -/
def P16502698397778337884.Spec : Prop :=
  ∀ n, P16502698397778337884.a n = (A037450 (n + 1) : ℚ)

end A037450

/-! ## A037450.P7306932148745555247

`A007916(n+1)*A007916(n+1)-A057427(n+1)`
-/

namespace A037450.P7306932148745555247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1) * A007916 (n + 1) - A057427 (n + 1)

end

end A037450.P7306932148745555247

namespace A037450

/-- `A007916(n+1)*A007916(n+1)-A057427(n+1)` -/
def P7306932148745555247.Spec : Prop :=
  ∀ n, P7306932148745555247.a n = A037450 (n + 1)

theorem P7306932148745555247.correct : P7306932148745555247.Spec := by
  intro n
  simp only [A037450, Nat.add_sub_cancel, A037450.P7306932148745555247.a, A037450.P975231576386369614.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037450

/-! ## A037450.P18023521229427557139

`A357579(A357986(n+1))²-1`
-/

namespace A037450.P18023521229427557139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357579 (A357986 (n + 1)).toNat ^ 2 - 1

end

end A037450.P18023521229427557139

namespace A037450

/-- `A357579(A357986(n+1))²-1` -/
def P18023521229427557139.Spec : Prop :=
  ∀ n, P18023521229427557139.a n = A037450 (n + 1)

end A037450

/-! ## A037450.P13232372434516674640

`record[A073843(n+2)-1]`
-/

namespace A037450.P13232372434516674640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073843 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037450.P13232372434516674640

namespace A037450

/-- `record[A073843(n+2)-1]` -/
def P13232372434516674640.Spec : Prop :=
  ∀ n, P13232372434516674640.a n = A037450 (n + 1)

end A037450

/-! ## A037450.P15831469060937867638

`record[A175781(n+2)²-1]`
-/

namespace A037450.P15831469060937867638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175781 (n + 2) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037450.P15831469060937867638

namespace A037450

/-- `record[A175781(n+2)²-1]` -/
def P15831469060937867638.Spec : Prop :=
  ∀ n, P15831469060937867638.a n = A037450 (n + 1)

end A037450

/-! ## A037450.P3795878550577975022

`record[A304491(n+2)²-1]`
-/

namespace A037450.P3795878550577975022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304491 (n + 2) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037450.P3795878550577975022

namespace A037450

/-- `record[A304491(n+2)²-1]` -/
def P3795878550577975022.Spec : Prop :=
  ∀ n, P3795878550577975022.a n = A037450 (n + 1)

end A037450

/-! ## A037450.P14210983526698127103

`A132411(A007916(n+1))`
-/

namespace A037450.P14210983526698127103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 (A007916 (n + 1)).toNat

end

end A037450.P14210983526698127103

namespace A037450

/-- `A132411(A007916(n+1))` -/
def P14210983526698127103.Spec : Prop :=
  ∀ n, P14210983526698127103.a n = A037450 (n + 1)

end A037450

/-! ## A037450.P1015987380796076231

`A132411(A175082(n+2))`
-/

namespace A037450.P1015987380796076231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 (A175082 (n + 2)).toNat

end

end A037450.P1015987380796076231

namespace A037450

/-- `A132411(A175082(n+2))` -/
def P1015987380796076231.Spec : Prop :=
  ∀ n, P1015987380796076231.a n = A037450 (n + 1)

end A037450

/-! ## A037450.P5577072995864834211

`eq[A157928(n), A253641(n)]²-1`
-/

namespace A037450.P5577072995864834211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2 : ℤ) - 1

end

end A037450.P5577072995864834211

namespace A037450

/-- `eq[A157928(n), A253641(n)]²-1` -/
def P5577072995864834211.Spec : Prop :=
  ∀ n, P5577072995864834211.a n = A037450 (n + 1)

end A037450

/-! ## A037450.P4011565816606561821

`∩[A093771(n+1), n²]-1`
-/

namespace A037450.P4011565816606561821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093771 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℤ) - 1

end

end A037450.P4011565816606561821

namespace A037450

/-- `∩[A093771(n+1), n²]-1` -/
def P4011565816606561821.Spec : Prop :=
  ∀ n, P4011565816606561821.a n = A037450 (n + 1)

end A037450

/-! ## A037450.P5325787953609852457

`∩[A000290(n), A093771(n+1)]-1`
-/

namespace A037450.P5325787953609852457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093771 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A037450.P5325787953609852457

namespace A037450

/-- `∩[A000290(n), A093771(n+1)]-1` -/
def P5325787953609852457.Spec : Prop :=
  ∀ n, P5325787953609852457.a n = A037450 (n + 1)

end A037450

/-! ## A037450.P2003916258828913450

`comp[(n+1)*A075802(n+1)]²-1`
-/

namespace A037450.P2003916258828913450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075802 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 : ℤ) - 1

end

end A037450.P2003916258828913450

namespace A037450

/-- `comp[(n+1)*A075802(n+1)]²-1` -/
def P2003916258828913450.Spec : Prop :=
  ∀ n, P2003916258828913450.a n = A037450 (n + 1)

end A037450

/-!
# A037451: a(n) = Fibonacci(n) * Fibonacci(2*n).

The programs for A037451, the canonical program `A037451.P4252489188112269908` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037451 has offset 0).

The definition of A037451 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*A000045(2*n)` (program `A037451.P4252489188112269908`, by `A037451.P4252489188112269908.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037451.P9001472600939442112

`A000045(2*n)*A000045(n)`
-/

namespace A037451.P9001472600939442112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A000045 n

end

end A037451.P9001472600939442112

namespace A037451

/-- `A000045(2*n)*A000045(n)` -/
def P9001472600939442112.Spec : Prop :=
  ∀ n, P9001472600939442112.a n = A037451 n

theorem P9001472600939442112.correct : P9001472600939442112.Spec := by
  intro n
  simp only [A037451, Nat.add_sub_cancel, A037451.P9001472600939442112.a, A037451.P4252489188112269908.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A037451

/-! ## A037451.P4252489188112269908

`A000045(n)*A000045(2*n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037451

/-- `A000045(n)*A000045(2*n)` -/
def P4252489188112269908.Spec : Prop :=
  ∀ n, P4252489188112269908.a n = A037451 n

theorem P4252489188112269908.correct : P4252489188112269908.Spec := by
  intro n
  simp only [A037451]

end A037451

/-! ## A037451.P5719479186194518760

`1/5*(A000032(3*n)-(-1)^n*A000032(n))`
-/

namespace A037451.P5719479186194518760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * (A000032 (3 * n) - (-1) ^ n * A000032 n : ℚ)

end

end A037451.P5719479186194518760

namespace A037451

/-- `1/5*(A000032(3*n)-(-1)^n*A000032(n))` -/
def P5719479186194518760.Spec : Prop :=
  ∀ n, P5719479186194518760.a n = (A037451 n : ℚ)

end A037451

/-! ## A037451.P8602451579571999002

`round(ϕ^n/sqrt(5))²*A000032(n)`
-/

namespace A037451.P8602451579571999002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2 * A000032 n

end

end A037451.P8602451579571999002

namespace A037451

/-- `round(ϕ^n/sqrt(5))²*A000032(n)` -/
def P8602451579571999002.Spec : Prop :=
  ∀ n, P8602451579571999002.a n = A037451 n

end A037451

/-! ## A037451.P703436557792385332

`A346513(n)-A220363(n)`
-/

namespace A037451.P703436557792385332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346513 n - A220363 n

end

end A037451.P703436557792385332

namespace A037451

/-- `A346513(n)-A220363(n)` -/
def P703436557792385332.Spec : Prop :=
  ∀ n, P703436557792385332.a n = A037451 n

end A037451

/-! ## A037451.P18067804800800007292

`A000045(n)*A001906(n)`
-/

namespace A037451.P18067804800800007292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001906 n

end

end A037451.P18067804800800007292

namespace A037451

/-- `A000045(n)*A001906(n)` -/
def P18067804800800007292.Spec : Prop :=
  ∀ n, P18067804800800007292.a n = A037451 n

end A037451

/-! ## A037451.P8939532572807283542

`A000032(n)*A007598(n)`
-/

namespace A037451.P8939532572807283542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A007598 n

end

end A037451.P8939532572807283542

namespace A037451

/-- `A000032(n)*A007598(n)` -/
def P8939532572807283542.Spec : Prop :=
  ∀ n, P8939532572807283542.a n = A037451 n

end A037451

/-! ## A037451.P384139937139674446

`A000045(n)*A088305(n)`
-/

namespace A037451.P384139937139674446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A088305 n

end

end A037451.P384139937139674446

namespace A037451

/-- `A000045(n)*A088305(n)` -/
def P384139937139674446.Spec : Prop :=
  ∀ n, P384139937139674446.a n = A037451 n

end A037451

/-! ## A037451.P17753176854237205799

`A000045(n)*Δ[A001519(n)]`
-/

namespace A037451.P17753176854237205799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A037451.P17753176854237205799

namespace A037451

/-- `A000045(n)*Δ[A001519(n)]` -/
def P17753176854237205799.Spec : Prop :=
  ∀ n, P17753176854237205799.a n = A037451 n

end A037451

/-! ## A037451.P11163997278106191497

`A000045(n)*Δ[A032908(n)]`
-/

namespace A037451.P11163997278106191497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A037451.P11163997278106191497

namespace A037451

/-- `A000045(n)*Δ[A032908(n)]` -/
def P11163997278106191497.Spec : Prop :=
  ∀ n, P11163997278106191497.a n = A037451 n

end A037451

/-! ## A037451.P2693481810420320064

`A001906(n)*A212804(n+1)`
-/

namespace A037451.P2693481810420320064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n * A212804 (n + 1)

end

end A037451.P2693481810420320064

namespace A037451

/-- `A001906(n)*A212804(n+1)` -/
def P2693481810420320064.Spec : Prop :=
  ∀ n, P2693481810420320064.a n = A037451 n

end A037451

/-! ## A037451.P15513610487093675906

`A088305(n)*A212804(n+1)`
-/

namespace A037451.P15513610487093675906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n * A212804 (n + 1)

end

end A037451.P15513610487093675906

namespace A037451

/-- `A088305(n)*A212804(n+1)` -/
def P15513610487093675906.Spec : Prop :=
  ∀ n, P15513610487093675906.a n = A037451 n

end A037451

/-! ## A037451.P539161554252784922

`A001906(n)*A324969(n+1)`
-/

namespace A037451.P539161554252784922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n * A324969 (n + 1)

end

end A037451.P539161554252784922

namespace A037451

/-- `A001906(n)*A324969(n+1)` -/
def P539161554252784922.Spec : Prop :=
  ∀ n, P539161554252784922.a n = A037451 n

end A037451

/-! ## A037451.P2868048114493549597

`(A001611(n)-1)*A001906(n)`
-/

namespace A037451.P2868048114493549597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A001906 n

end

end A037451.P2868048114493549597

namespace A037451

/-- `(A001611(n)-1)*A001906(n)` -/
def P2868048114493549597.Spec : Prop :=
  ∀ n, P2868048114493549597.a n = A037451 n

end A037451

/-! ## A037451.P9899790452150055398

`A007598(n)*A329723(n+2)`
-/

namespace A037451.P9899790452150055398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n * A329723 (n + 2)

end

end A037451.P9899790452150055398

namespace A037451

/-- `A007598(n)*A329723(n+2)` -/
def P9899790452150055398.Spec : Prop :=
  ∀ n, P9899790452150055398.a n = A037451 n

end A037451

/-! ## A037451.P15165074611914184732

`2*A066258(n)-A056570(n)`
-/

namespace A037451.P15165074611914184732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066258 n - A056570 n

end

end A037451.P15165074611914184732

namespace A037451

/-- `2*A066258(n)-A056570(n)` -/
def P15165074611914184732.Spec : Prop :=
  ∀ n, P15165074611914184732.a n = A037451 n

end A037451

/-! ## A037451.P510828982018380305

`A001906(n)*A103609(2*n)`
-/

namespace A037451.P510828982018380305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n * A103609 (2 * n)

end

end A037451.P510828982018380305

namespace A037451

/-- `A001906(n)*A103609(2*n)` -/
def P510828982018380305.Spec : Prop :=
  ∀ n, P510828982018380305.a n = A037451 n

end A037451

/-! ## A037451.P4225730308782299263

`Δ[A000071(n+1)]*A001906(n)`
-/

namespace A037451.P4225730308782299263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001906 n

end

end A037451.P4225730308782299263

namespace A037451

/-- `Δ[A000071(n+1)]*A001906(n)` -/
def P4225730308782299263.Spec : Prop :=
  ∀ n, P4225730308782299263.a n = A037451 n

end A037451

/-! ## A037451.P14518901889303207021

`A094966(2*n)*A212804(n+1)`
-/

namespace A037451.P14518901889303207021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (2 * n) * A212804 (n + 1)

end

end A037451.P14518901889303207021

namespace A037451

/-- `A094966(2*n)*A212804(n+1)` -/
def P14518901889303207021.Spec : Prop :=
  ∀ n, P14518901889303207021.a n = A037451 n

end A037451

/-!
# A037452: Let F(x) = 1 + 1*x + 4*x^2 + 10*x^3 + ..., the g.f. for A000293 (solid partitions), and write F(x) = 1/Product_{n>=1} (1 - x^n)^a(n).

The programs for A037452, there is no canonical definition to state claims against.
-/

/-! ## A037452.P8577152256053576890

`∑{d}[n, A193718(#-1)]`
-/

namespace A037452.P8577152256053576890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A193718 (d - 1)

end

end A037452.P8577152256053576890

/-! ## A037452.P1225529934546791044

`∑[∑[A031214(A351017(n))]]`
-/

namespace A037452.P1225529934546791044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031214 (A351017 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037452.P1225529934546791044

/-! ## A037452.P1178116329019396568

`∑[A094937(record[A050144(n)])]`
-/

namespace A037452.P1178116329019396568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050144 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094937 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037452.P1178116329019396568

/-! ## A037452.P17549084080789169356

`∑[A297030(∑[A214833(n+1)])]`
-/

namespace A037452.P17549084080789169356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214833 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297030 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037452.P17549084080789169356

/-! ## A037452.P11184128278336395396

`∑[n-A309766((n+1)²)]`
-/

namespace A037452.P11184128278336395396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A309766 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037452.P11184128278336395396

/-!
# A037453: Positive numbers whose base-5 representation contains no 3 or 4.

The programs for A037453, the canonical program `A037453.P2958615793513436964` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037453 has offset 1).

The definition of A037453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037453.P2958615793513436964

`∑[2*(5^val(n+1, 3)+1)/4]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037453

/-- `∑[2*(5^val(n+1, 3)+1)/4]` -/
def P2958615793513436964.Spec : Prop :=
  ∀ n, P2958615793513436964.a n = (A037453 (n + 1) : ℚ)

end A037453

/-! ## A037453.P6447731918675743984

`∑[A048673(A038500(n+1))]`
-/

namespace A037453.P6447731918675743984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A038500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037453.P6447731918675743984

namespace A037453

/-- `∑[A048673(A038500(n+1))]` -/
def P6447731918675743984.Spec : Prop :=
  ∀ n, P6447731918675743984.a n = A037453 (n + 1)

end A037453

/-! ## A037453.P14365348621263548985

`A037459(A023717(n+1))`
-/

namespace A037453.P14365348621263548985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (A023717 (n + 1)).toNat

end

end A037453.P14365348621263548985

namespace A037453

/-- `A037459(A023717(n+1))` -/
def P14365348621263548985.Spec : Prop :=
  ∀ n, P14365348621263548985.a n = A037453 (n + 1)

end A037453

/-! ## A037453.P1406700557345546338

`A020654(A023717(n+1)+1)`
-/

namespace A037453.P1406700557345546338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A023717 (n + 1) + 1).toNat

end

end A037453.P1406700557345546338

namespace A037453

/-- `A020654(A023717(n+1)+1)` -/
def P1406700557345546338.Spec : Prop :=
  ∀ n, P1406700557345546338.a n = A037453 (n + 1)

end A037453

/-! ## A037453.P6900044627755694521

`∩[A023733(n+1), A037459(n+1)]`
-/

namespace A037453.P6900044627755694521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037453.P6900044627755694521

namespace A037453

/-- `∩[A023733(n+1), A037459(n+1)]` -/
def P6900044627755694521.Spec : Prop :=
  ∀ n, (P6900044627755694521.a n : ℤ) = A037453 (n + 1)

end A037453

/-! ## A037453.P8166061664543312089

`∩[A037459(n+1), A039015(n+1)]`
-/

namespace A037453.P8166061664543312089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037453.P8166061664543312089

namespace A037453

/-- `∩[A037459(n+1), A039015(n+1)]` -/
def P8166061664543312089.Spec : Prop :=
  ∀ n, (P8166061664543312089.a n : ℤ) = A037453 (n + 1)

end A037453

/-! ## A037453.P8865895694882723698

`record[A004515(n+1)/2]`
-/

namespace A037453.P8865895694882723698
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004515 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037453.P8865895694882723698

namespace A037453

/-- `record[A004515(n+1)/2]` -/
def P8865895694882723698.Spec : Prop :=
  ∀ n, P8865895694882723698.a n = (A037453 (n + 1) : ℚ)

end A037453

/-! ## A037453.P14354891883965436833

`lt[1, A208279(n)]`
-/

namespace A037453.P14354891883965436833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208279 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A037453.P14354891883965436833

namespace A037453

/-- `lt[1, A208279(n)]` -/
def P14354891883965436833.Spec : Prop :=
  ∀ n, (P14354891883965436833.a n : ℤ) = A037453 (n + 1)

end A037453

/-! ## A037453.P17356123073149077192

`record[A309991(n+1)]`
-/

namespace A037453.P17356123073149077192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037453.P17356123073149077192

namespace A037453

/-- `record[A309991(n+1)]` -/
def P17356123073149077192.Spec : Prop :=
  ∀ n, P17356123073149077192.a n = A037453 (n + 1)

end A037453

/-! ## A037453.P13305520876614120998

`lt[n*A000999(n), n]`
-/

namespace A037453.P13305520876614120998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000999 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037453.P13305520876614120998

namespace A037453

/-- `lt[n*A000999(n), n]` -/
def P13305520876614120998.Spec : Prop :=
  ∀ n, (P13305520876614120998.a n : ℤ) = A037453 (n + 1)

end A037453

/-! ## A037453.P17251127554287115107

`lt[comp[2*n+3], A004515(n)]`
-/

namespace A037453.P17251127554287115107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A037453.P17251127554287115107

namespace A037453

/-- `lt[comp[2*n+3], A004515(n)]` -/
def P17251127554287115107.Spec : Prop :=
  ∀ n, (P17251127554287115107.a n : ℤ) = A037453 (n + 1)

end A037453

/-! ## A037453.P14364216325639536629

`eq[A004277(n), A004515(n)]`
-/

namespace A037453.P14364216325639536629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037453.P14364216325639536629

namespace A037453

/-- `eq[A004277(n), A004515(n)]` -/
def P14364216325639536629.Spec : Prop :=
  ∀ n, (P14364216325639536629.a n : ℤ) = A037453 (n + 1)

end A037453

/-! ## A037453.P13306429229573247821

`eq[n, A309991(A028310(n))]`
-/

namespace A037453.P13306429229573247821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037453.P13306429229573247821

namespace A037453

/-- `eq[n, A309991(A028310(n))]` -/
def P13306429229573247821.Spec : Prop :=
  ∀ n, (P13306429229573247821.a n : ℤ) = A037453 (n + 1)

end A037453

/-! ## A037453.P6916401481946233190

`lt[A000999(n), n/A027379(n)]`
-/

namespace A037453.P6916401481946233190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000999 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A027379 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A037453.P6916401481946233190

namespace A037453

/-- `lt[A000999(n), n/A027379(n)]` -/
def P6916401481946233190.Spec : Prop :=
  ∀ n, (P6916401481946233190.a n : ℤ) = A037453 (n + 1)

end A037453

/-! ## A037453.P11670802481478808098

`lt[(1-A190594(n))², A190594(n)]`
-/

namespace A037453.P11670802481478808098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A190594 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037453.P11670802481478808098

namespace A037453

/-- `lt[(1-A190594(n))², A190594(n)]` -/
def P11670802481478808098.Spec : Prop :=
  ∀ n, (P11670802481478808098.a n : ℤ) = A037453 (n + 1)

end A037453

/-! ## A037453.P15440601025848609375

`eq[A004515(n+1), A005843(n+1)]+1`
-/

namespace A037453.P15440601025848609375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037453.P15440601025848609375

namespace A037453

/-- `eq[A004515(n+1), A005843(n+1)]+1` -/
def P15440601025848609375.Spec : Prop :=
  ∀ n, (P15440601025848609375.a n : ℤ) = A037453 (n + 1)

end A037453

/-! ## A037453.P1891180994853173231

`A309991(eq[n+1, A309991(n+1)]+1)`
-/

namespace A037453.P1891180994853173231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A037453.P1891180994853173231

namespace A037453

/-- `A309991(eq[n+1, A309991(n+1)]+1)` -/
def P1891180994853173231.Spec : Prop :=
  ∀ n, P1891180994853173231.a n = A037453 (n + 1)

end A037453

/-! ## A037453.P5052649319689733419

`record[A004515(A065187(n+1))-A065187(n+1)]`
-/

namespace A037453.P5052649319689733419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 (A065187 (n + 1)).toNat - A065187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037453.P5052649319689733419

namespace A037453

/-- `record[A004515(A065187(n+1))-A065187(n+1)]` -/
def P5052649319689733419.Spec : Prop :=
  ∀ n, P5052649319689733419.a n = A037453 (n + 1)

end A037453

/-! ## A037453.P323613221089552527

`record[n+2-A065256(n+2)]`
-/

namespace A037453.P323613221089552527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A065256 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037453.P323613221089552527

namespace A037453

/-- `record[n+2-A065256(n+2)]` -/
def P323613221089552527.Spec : Prop :=
  ∀ n, P323613221089552527.a n = A037453 (n + 1)

end A037453

/-! ## A037453.P16513189272630738439

`eq[2*A053824(n), A053824(A004277(n))]`
-/

namespace A037453.P16513189272630738439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037453.P16513189272630738439

namespace A037453

/-- `eq[2*A053824(n), A053824(A004277(n))]` -/
def P16513189272630738439.Spec : Prop :=
  ∀ n, (P16513189272630738439.a n : ℤ) = A037453 (n + 1)

end A037453

/-!
# A037454: a(n) = Sum_{i=0..m} d(i)*6^i, where Sum_{i=0..m} d(i)*3^i is the base 3 representation of n.

The programs for A037454, there is no canonical definition to state claims against.
-/

/-! ## A037454.P12473490147409222972

`A037460(A023717(n))`
-/

namespace A037454.P12473490147409222972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 (A023717 n).toNat

end

end A037454.P12473490147409222972

/-! ## A037454.P10568877825381263419

`A037460(eq[0, A292373(n)])`
-/

namespace A037454.P10568877825381263419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037454.P10568877825381263419

/-! ## A037454.P12764474669745684860

`∩[A039592(n+1), A037460(n)]`
-/

namespace A037454.P12764474669745684860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037454.P12764474669745684860

/-! ## A037454.P5511412003979412011

`A037465(record[A309991(n)])`
-/

namespace A037454.P5511412003979412011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037454.P5511412003979412011

/-! ## A037454.P9598737845502755319

`∩[A039027(n+1), A037460(n)]`
-/

namespace A037454.P9598737845502755319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037454.P9598737845502755319

/-! ## A037454.P16898928991369596818

`∩[A039028(n+1), A037460(n)]`
-/

namespace A037454.P16898928991369596818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037454.P16898928991369596818

/-! ## A037454.P6426142946755097518

`∩[A039592(n+1), A037465(n)]`
-/

namespace A037454.P6426142946755097518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037454.P6426142946755097518

/-! ## A037454.P14207287532182033693

`record[gcd(A039027(n+1), A039029(n+1))]`
-/

namespace A037454.P14207287532182033693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039027 (n + 1)) (A039029 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037454.P14207287532182033693

/-! ## A037454.P1918007177388171383

`A037465(A020654(A023717(n)+1))`
-/

namespace A037454.P1918007177388171383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A020654 (A023717 n + 1).toNat).toNat

end

end A037454.P1918007177388171383

/-! ## A037454.P10053554545436863256

`lt[A190595(n), 3]`
-/

namespace A037454.P10053554545436863256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190595 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037454.P10053554545436863256

/-! ## A037454.P15371712537138585943

`record[A004516(n)/2]`
-/

namespace A037454.P15371712537138585943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004516 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037454.P15371712537138585943

/-! ## A037454.P2919685807996286489

`eq[A004516(n), A005843(n)]`
-/

namespace A037454.P2919685807996286489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004516 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037454.P2919685807996286489

/-! ## A037454.P16483628372408070881

`eq[A090223(A004516(n)/2), A090223(n)]`
-/

namespace A037454.P16483628372408070881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (SequenceMachineLib.roundAway ((A004516 n : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037454.P16483628372408070881

/-! ## A037454.P2632988832538176315

`record[(n-A055116(n))/2]`
-/

namespace A037454.P2632988832538176315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A055116 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037454.P2632988832538176315

/-! ## A037454.P3496675280658603483

`A303789(A037455(n))`
-/

namespace A037454.P3496675280658603483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (A037455 n).toNat

end

end A037454.P3496675280658603483

/-! ## A037454.P9385630239269996287

`eq[A004516(2*n), A004516(A004516(n))]`
-/

namespace A037454.P9385630239269996287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004516 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004516 (A004516 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037454.P9385630239269996287

/-! ## A037454.P12876333863981608032

`eq[A001281(A030105(2*n)), A030105(n)]`
-/

namespace A037454.P12876333863981608032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A030105 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037454.P12876333863981608032

/-! ## A037454.P2734821027239405710

`eq[2*A055952(n), A055952(A005843(n))]`
-/

namespace A037454.P2734821027239405710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055952 (A005843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037454.P2734821027239405710

/-! ## A037454.P51283400633166361

`lt[A007091(A053827(n)), A053827(2*n+1)]`
-/

namespace A037454.P51283400633166361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A053827 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037454.P51283400633166361

/-! ## A037454.P5209388827676328786

`eq[A004273(A173526(n+1)), A173526(2*n+1)]`
-/

namespace A037454.P5209388827676328786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A173526 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173526 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037454.P5209388827676328786

/-!
# A037455: a(n)=Sum{d(i)*7^i: i=0,1,...,m}, where Sum{d(i)*3^i: i=0,1,...,m} is the base 3 representation of n.

The programs for A037455, the canonical program `A037455.P4163353995444016703` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037455 has offset 0).

The definition of A037455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037455.P7025127065640797269

`A037466(record[A309991(n)])`
-/

namespace A037455.P7025127065640797269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037455.P7025127065640797269

namespace A037455

/-- `A037466(record[A309991(n)])` -/
def P7025127065640797269.Spec : Prop :=
  ∀ n, P7025127065640797269.a n = A037455 n

end A037455

/-! ## A037455.P4163353995444016703

`record[gcd(A037466(2*n), A037466(n))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A037455

/-- `record[gcd(A037466(2*n), A037466(n))]` -/
def P4163353995444016703.Spec : Prop :=
  ∀ n, (P4163353995444016703.a n : ℤ) = A037455 n

theorem P4163353995444016703.correct : P4163353995444016703.Spec := by
  intro n
  simp only [A037455]

end A037455

/-! ## A037455.P2570007343817792999

`record[gcd(A039044(n+1), A039046(n+1))]`
-/

namespace A037455.P2570007343817792999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039044 (n + 1)) (A039046 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037455.P2570007343817792999

namespace A037455

/-- `record[gcd(A039044(n+1), A039046(n+1))]` -/
def P2570007343817792999.Spec : Prop :=
  ∀ n, (P2570007343817792999.a n : ℤ) = A037455 n

end A037455

/-! ## A037455.P2880884133377765317

`A020657(A037454(n)+1)`
-/

namespace A037455.P2880884133377765317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (A037454 n + 1).toNat

end

end A037455.P2880884133377765317

namespace A037455

/-- `A020657(A037454(n)+1)` -/
def P2880884133377765317.Spec : Prop :=
  ∀ n, P2880884133377765317.a n = A037455 n

end A037455

/-! ## A037455.P12912878802396346183

`A020657(A037465(A020654(A023717(n)+2)))`
-/

namespace A037455.P12912878802396346183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (A037465 (A020654 (A023717 n + 2).toNat).toNat).toNat

end

end A037455.P12912878802396346183

namespace A037455

/-- `A020657(A037465(A020654(A023717(n)+2)))` -/
def P12912878802396346183.Spec : Prop :=
  ∀ n, P12912878802396346183.a n = A037455 n

end A037455

/-! ## A037455.P1421956437034240170

`lt[A190596(n), 3]`
-/

namespace A037455.P1421956437034240170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190596 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037455.P1421956437034240170

namespace A037455

/-- `lt[A190596(n), 3]` -/
def P1421956437034240170.Spec : Prop :=
  ∀ n, (P1421956437034240170.a n : ℤ) = A037455 n

end A037455

/-! ## A037455.P109544760909422380

`eq[3*A165071(n), A165071(3*n)]`
-/

namespace A037455.P109544760909422380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A165071 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165071 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037455.P109544760909422380

namespace A037455

/-- `eq[3*A165071(n), A165071(3*n)]` -/
def P109544760909422380.Spec : Prop :=
  ∀ n, (P109544760909422380.a n : ℤ) = A037455 n

end A037455

/-! ## A037455.P13011774922788929393

`record[A020658(2*n+1)%A020658(n+1)]`
-/

namespace A037455.P13011774922788929393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020658 (2 * n + 1)) (A020658 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037455.P13011774922788929393

namespace A037455

/-- `record[A020658(2*n+1)%A020658(n+1)]` -/
def P13011774922788929393.Spec : Prop :=
  ∀ n, P13011774922788929393.a n = A037455 n

end A037455

/-! ## A037455.P2805727389348696436

`A028902(A007089(n))`
-/

namespace A037455.P2805727389348696436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A007089 n).toNat

end

end A037455.P2805727389348696436

namespace A037455

/-- `A028902(A007089(n))` -/
def P2805727389348696436.Spec : Prop :=
  ∀ n, P2805727389348696436.a n = A037455 n

end A037455

/-! ## A037455.P12846449105330674844

`lt[A054055(A007093(n)), 3]`
-/

namespace A037455.P12846449105330674844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007093 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037455.P12846449105330674844

namespace A037455

/-- `lt[A054055(A007093(n)), 3]` -/
def P12846449105330674844.Spec : Prop :=
  ∀ n, (P12846449105330674844.a n : ℤ) = A037455 n

end A037455

/-!
# A037456: a(n)=Sum{d(i)*8^i: i=0,1,...,m}, where Sum{d(i)*3^i: i=0,1,...,m} is the base 3 representation of n.

The programs for A037456, there is no canonical definition to state claims against.
-/

/-! ## A037456.P11873145607439858803

`A037462(A023717(n))`
-/

namespace A037456.P11873145607439858803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A023717 n).toNat

end

end A037456.P11873145607439858803

/-! ## A037456.P4364703772311428830

`A037462(eq[0, A292373(n)])`
-/

namespace A037456.P4364703772311428830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037456.P4364703772311428830

/-! ## A037456.P553513603806572526

`A037462(record[gcd(n, A292373(n))])`
-/

namespace A037456.P553513603806572526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A292373 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A037456.P553513603806572526

/-! ## A037456.P2057035386061962271

`A037462(record[n-A292373(n)²])`
-/

namespace A037456.P2057035386061962271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292373 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037456.P2057035386061962271

/-! ## A037456.P5224138223352515525

`record[(1-A292373(n))*A037462(n)]`
-/

namespace A037456.P5224138223352515525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A292373 n) * A037462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037456.P5224138223352515525

/-! ## A037456.P17430228205046752956

`A037462(A163241(record[A163241(n)]))`
-/

namespace A037456.P17430228205046752956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A163241 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A037456.P17430228205046752956

/-! ## A037456.P14206746870001919907

`∩[A003714(n), A037462(n)]`
-/

namespace A037456.P14206746870001919907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037456.P14206746870001919907

/-! ## A037456.P5391193043907550075

`A037471(A037454(n))`
-/

namespace A037456.P5391193043907550075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (A037454 n).toNat

end

end A037456.P5391193043907550075

/-! ## A037456.P13312594996331897555

`lt[A190597(n), 3]`
-/

namespace A037456.P13312594996331897555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190597 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037456.P13312594996331897555

/-! ## A037456.P11571016140262356485

`A037474(A037455(n))`
-/

namespace A037456.P11571016140262356485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A037455 n).toNat

end

end A037456.P11571016140262356485

/-! ## A037456.P6244015422708611351

`record[A090077(A037462(n))]`
-/

namespace A037456.P6244015422708611351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 (A037462 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037456.P6244015422708611351

/-! ## A037456.P8586344427926525140

`lt[A181061(A007094(n)), 2]`
-/

namespace A037456.P8586344427926525140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 (A007094 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037456.P8586344427926525140

/-! ## A037456.P15783057354124565000

`filter[A037462(n), A085357(#)]`
-/

namespace A037456.P15783057354124565000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085357 (f1 j).toNat = 1) n)

end

end A037456.P15783057354124565000

/-! ## A037456.P9435371696067044108

`eq[A004518(n), A178729(n)]`
-/

namespace A037456.P9435371696067044108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004518 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037456.P9435371696067044108

/-! ## A037456.P12030476989713691776

`eq[A005926(n), A334889(n)]`
-/

namespace A037456.P12030476989713691776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334889 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037456.P12030476989713691776

/-! ## A037456.P10703325765571413070

`eq[A085121(n), A334889(n)]`
-/

namespace A037456.P10703325765571413070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334889 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037456.P10703325765571413070

/-! ## A037456.P8618976931129394969

`eq[A185014(n), A334889(n)]`
-/

namespace A037456.P8618976931129394969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334889 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037456.P8618976931129394969

/-! ## A037456.P6227152204403028189

`eq[A185015(n), A334889(n)]`
-/

namespace A037456.P6227152204403028189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185015 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334889 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037456.P6227152204403028189

/-! ## A037456.P7613900408081610688

`eq[A185016(n), A334889(n)]`
-/

namespace A037456.P7613900408081610688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334889 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037456.P7613900408081610688

/-! ## A037456.P10141678803285261957

`eq[A334889(n), A344182(n)]`
-/

namespace A037456.P10141678803285261957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344182 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037456.P10141678803285261957

/-!
# A037458: a(1)=1; for n > 1, a(n) = n - a(n-floor(sqrt(n))).

The programs for A037458, the canonical program `A037458.P12163390544781379402` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037458 has offset 1).

The definition of A037458 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-a(n-floor(sqrt(n+1)))` (program `A037458.P12163390544781379402`, by `A037458.P12163390544781379402.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037458.P12163390544781379402

`n+1-a(n-floor(sqrt(n+1)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037458

/-- `n+1-a(n-floor(sqrt(n+1)))` -/
def P12163390544781379402.Spec : Prop :=
  ∀ n, P12163390544781379402.a n = A037458 (n + 1)

theorem P12163390544781379402.correct : P12163390544781379402.Spec := by
  intro n
  simp only [A037458, Nat.add_sub_cancel]

end A037458

/-! ## A037458.P18137969761548981974

`1/2*(n+1+A053615(n+1))`
-/

namespace A037458.P18137969761548981974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((n + 1 : ℤ) + A053615 (n + 1) : ℚ)

end

end A037458.P18137969761548981974

namespace A037458

/-- `1/2*(n+1+A053615(n+1))` -/
def P18137969761548981974.Spec : Prop :=
  ∀ n, P18137969761548981974.a n = (A037458 (n + 1) : ℚ)

end A037458

/-! ## A037458.P13650954162512159617

`∑[floor(1/Δ[sqrt(n)])%2]`
-/

namespace A037458.P13650954162512159617
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊1 / (f2 (n + 1) - f2 n)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037458.P13650954162512159617

namespace A037458

/-- `∑[floor(1/Δ[sqrt(n)])%2]` -/
def P13650954162512159617.Spec : Prop :=
  ∀ n, P13650954162512159617.a n = A037458 (n + 1)

end A037458

/-! ## A037458.P5549512924809445841

`∑[and(1, floor(sqrt(4*n+1)))]`
-/

namespace A037458.P5549512924809445841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.sqrt (4 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037458.P5549512924809445841

namespace A037458

/-- `∑[and(1, floor(sqrt(4*n+1)))]` -/
def P5549512924809445841.Spec : Prop :=
  ∀ n, (P5549512924809445841.a n : ℤ) = A037458 (n + 1)

end A037458

/-! ## A037458.P4022866034039455762

`∑[1-a(round(n-sqrt(n)))]` with `a(0)=1`
-/

namespace A037458.P4022866034039455762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037458.P4022866034039455762

namespace A037458

/-- `∑[1-a(round(n-sqrt(n)))]` -/
def P4022866034039455762.Spec : Prop :=
  ∀ n, P4022866034039455762.a n = A037458 (n + 1)

end A037458

/-! ## A037458.P12044059626280000940

`∑[comp[n²]-comp[∑[2*n]]]`
-/

namespace A037458.P12044059626280000940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037458.P12044059626280000940

namespace A037458

/-- `∑[comp[n²]-comp[∑[2*n]]]` -/
def P12044059626280000940.Spec : Prop :=
  ∀ n, P12044059626280000940.a n = A037458 (n + 1)

end A037458

/-! ## A037458.P4411420483244073050

`2*∑[A118175(n)/2]`
-/

namespace A037458.P4411420483244073050
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118175 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037458.P4411420483244073050

namespace A037458

/-- `2*∑[A118175(n)/2]` -/
def P4411420483244073050.Spec : Prop :=
  ∀ n, P4411420483244073050.a n = (A037458 (n + 1) : ℚ)

end A037458

/-! ## A037458.P12296519293511764024

`comp[A061885(n)+n]-n`
-/

namespace A037458.P12296519293511764024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A037458.P12296519293511764024

namespace A037458

/-- `comp[A061885(n)+n]-n` -/
def P12296519293511764024.Spec : Prop :=
  ∀ n, P12296519293511764024.a n = A037458 (n + 1)

end A037458

/-! ## A037458.P16465860225154200077

`∑[char[A061885(n+1)]]+1`
-/

namespace A037458.P16465860225154200077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A037458.P16465860225154200077

namespace A037458

/-- `∑[char[A061885(n+1)]]+1` -/
def P16465860225154200077.Spec : Prop :=
  ∀ n, (P16465860225154200077.a n : ℤ) = A037458 (n + 1)

end A037458

/-! ## A037458.P2098677892490908748

`ceil((A004739(n+1)+n)/2)`
-/

namespace A037458.P2098677892490908748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004739 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A037458.P2098677892490908748

namespace A037458

/-- `ceil((A004739(n+1)+n)/2)` -/
def P2098677892490908748.Spec : Prop :=
  ∀ n, P2098677892490908748.a n = A037458 (n + 1)

end A037458

/-! ## A037458.P886418575873751095

`A000196(A056847(n))+A080344(n)+1`
-/

namespace A037458.P886418575873751095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A056847 n).toNat + (A080344 n + 1)

end

end A037458.P886418575873751095

namespace A037458

/-- `A000196(A056847(n))+A080344(n)+1` -/
def P886418575873751095.Spec : Prop :=
  ∀ n, P886418575873751095.a n = A037458 (n + 1)

end A037458

/-! ## A037458.P2839235843753414958

`A135034(A056847(n)+1)+A080344(n)`
-/

namespace A037458.P2839235843753414958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (A056847 n + 1).toNat + A080344 n

end

end A037458.P2839235843753414958

namespace A037458

/-- `A135034(A056847(n)+1)+A080344(n)` -/
def P2839235843753414958.Spec : Prop :=
  ∀ n, P2839235843753414958.a n = A037458 (n + 1)

end A037458

/-! ## A037458.P4171239919295006384

`A028391(n)+1-A080344(A028391(n))`
-/

namespace A037458.P4171239919295006384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n + (1 - A080344 (A028391 n).toNat)

end

end A037458.P4171239919295006384

namespace A037458

/-- `A028391(n)+1-A080344(A028391(n))` -/
def P4171239919295006384.Spec : Prop :=
  ∀ n, P4171239919295006384.a n = A037458 (n + 1)

end A037458

/-! ## A037458.P7029536246228109825

`A000196(n+1)+A080344(n)+A023969(n+1)`
-/

namespace A037458.P7029536246228109825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) + (A080344 n + A023969 (n + 1))

end

end A037458.P7029536246228109825

namespace A037458

/-- `A000196(n+1)+A080344(n)+A023969(n+1)` -/
def P7029536246228109825.Spec : Prop :=
  ∀ n, P7029536246228109825.a n = A037458 (n + 1)

end A037458

/-! ## A037458.P7046155296763073435

`(A004738(n+2)+n)/2`
-/

namespace A037458.P7046155296763073435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004738 (n + 2) + (n : ℤ) : ℚ) / 2

end

end A037458.P7046155296763073435

namespace A037458

/-- `(A004738(n+2)+n)/2` -/
def P7046155296763073435.Spec : Prop :=
  ∀ n, P7046155296763073435.a n = (A037458 (n + 1) : ℚ)

end A037458

/-! ## A037458.P10064956623517740737

`(A053615(n+1)+n+1)/2`
-/

namespace A037458.P10064956623517740737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053615 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A037458.P10064956623517740737

namespace A037458

/-- `(A053615(n+1)+n+1)/2` -/
def P10064956623517740737.Spec : Prop :=
  ∀ n, P10064956623517740737.a n = (A037458 (n + 1) : ℚ)

end A037458

/-! ## A037458.P11303393530484649755

`A080344(n)+A000194(n+1)`
-/

namespace A037458.P11303393530484649755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080344 n + A000194 (n + 1)

end

end A037458.P11303393530484649755

namespace A037458

/-- `A080344(n)+A000194(n+1)` -/
def P11303393530484649755.Spec : Prop :=
  ∀ n, P11303393530484649755.a n = A037458 (n + 1)

end A037458

/-! ## A037458.P9717559281830818118

`A165453(n+1)-A022554(n)`
-/

namespace A037458.P9717559281830818118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165453 (n + 1) - A022554 n

end

end A037458.P9717559281830818118

namespace A037458

/-- `A165453(n+1)-A022554(n)` -/
def P9717559281830818118.Spec : Prop :=
  ∀ n, P9717559281830818118.a n = A037458 (n + 1)

end A037458

/-! ## A037458.P16805230501330565015

`A080344(n+1)+A000196(n+1)`
-/

namespace A037458.P16805230501330565015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080344 (n + 1) + A000196 (n + 1)

end

end A037458.P16805230501330565015

namespace A037458

/-- `A080344(n+1)+A000196(n+1)` -/
def P16805230501330565015.Spec : Prop :=
  ∀ n, P16805230501330565015.a n = A037458 (n + 1)

end A037458

/-! ## A037458.P15536492287882005677

`A259549(n+2-A004737(n+2))`
-/

namespace A037458.P15536492287882005677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259549 ((n + 2 : ℤ) - A004737 (n + 2)).toNat

end

end A037458.P15536492287882005677

namespace A037458

/-- `A259549(n+2-A004737(n+2))` -/
def P15536492287882005677.Spec : Prop :=
  ∀ n, P15536492287882005677.a n = A037458 (n + 1)

end A037458

/-!
# A037459: Sum{d(i)*5^i: i=0,1,...,m}, where Sum{d(i)*4^i: i=0,1,...,m} is the base 4 representation of n.

The programs for A037459, there is no canonical definition to state claims against.
-/

/-! ## A037459.P3077868588356323477

`lt[n*A276206(n), n]`
-/

namespace A037459.P3077868588356323477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276206 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037459.P3077868588356323477

/-! ## A037459.P3821635411953802183

`A020654(n+2)`
-/

namespace A037459.P3821635411953802183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (n + 2)

end

end A037459.P3821635411953802183

/-! ## A037459.P6139315177193360143

`A020655(n+2)-1`
-/

namespace A037459.P6139315177193360143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (n + 2) - 1

end

end A037459.P6139315177193360143

/-! ## A037459.P6666898434331854266

`∑[abs(Δ[A020655(n+1)])]`
-/

namespace A037459.P6666898434331854266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037459.P6666898434331854266

/-! ## A037459.P14424120447278233480

`∑[A000027(Δ[A020655(n+1)])]`
-/

namespace A037459.P14424120447278233480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037459.P14424120447278233480

/-! ## A037459.P17441068515629159289

`∑[A325692(Δ[A020655(n+1)])]`
-/

namespace A037459.P17441068515629159289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325692 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037459.P17441068515629159289

/-! ## A037459.P9789255116493474569

`A349340(A051698(n+1))+A020655(n+2)`
-/

namespace A037459.P9789255116493474569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A051698 (n + 1)).toNat + A020655 (n + 2)

end

end A037459.P9789255116493474569

/-! ## A037459.P1408754213255162915

`A321800(A034444(n+2))+A020655(n+2)`
-/

namespace A037459.P1408754213255162915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A034444 (n + 2)).toNat + A020655 (n + 2)

end

end A037459.P1408754213255162915

/-! ## A037459.P5243653001005438093

`A054354(A054353(2*(n+1)))+A020655(n+2)`
-/

namespace A037459.P5243653001005438093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A054353 (2 * (n + 1))).toNat + A020655 (n + 2)

end

end A037459.P5243653001005438093

/-! ## A037459.P4353919196142356465

`lt[(2-A190594(n))², 2]`
-/

namespace A037459.P4353919196142356465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A190594 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037459.P4353919196142356465

/-! ## A037459.P5823653618705791259

`A023443(A020655(n+2))`
-/

namespace A037459.P5823653618705791259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A020655 (n + 2)).toNat

end

end A037459.P5823653618705791259

/-! ## A037459.P6765818239848250794

`A062157(A002517(2*n+1))+A020655(n+2)`
-/

namespace A037459.P6765818239848250794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002517 (2 * n + 1)).toNat + A020655 (n + 2)

end

end A037459.P6765818239848250794

/-! ## A037459.P2905771111580003355

`A303788(A037460(n+1))`
-/

namespace A037459.P2905771111580003355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303788 (A037460 (n + 1)).toNat

end

end A037459.P2905771111580003355

/-! ## A037459.P16738396990171868223

`A028900(A007090(n+1))`
-/

namespace A037459.P16738396990171868223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A007090 (n + 1)).toNat

end

end A037459.P16738396990171868223

/-!
# A037460: a(n) = Sum{d(i)*6^i: i=0,1,...,m}, where Sum{d(i)*4^i: i=0,1,...,m} is the base 4 representation of n.

The programs for A037460, there is no canonical definition to state claims against.
-/

/-! ## A037460.P3686271061618695303

`A037465(A020654(n+1))`
-/

namespace A037460.P3686271061618695303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A020654 (n + 1)).toNat

end

end A037460.P3686271061618695303

/-! ## A037460.P1643835931670861484

`A037465(A020655(n+1)-1)`
-/

namespace A037460.P1643835931670861484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A020655 (n + 1) - 1).toNat

end

end A037460.P1643835931670861484

/-! ## A037460.P13874111393152505375

`∩[A039029(n+1), A037465(n)]`
-/

namespace A037460.P13874111393152505375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037460.P13874111393152505375

/-! ## A037460.P15378094974677634469

`lt[A190595(n), 4]`
-/

namespace A037460.P15378094974677634469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190595 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037460.P15378094974677634469

/-! ## A037460.P4906477250100430048

`eq[A202267(n+1)%A084545(n+1), A007092(n)]`
-/

namespace A037460.P4906477250100430048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202267 (n + 1)) (A084545 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037460.P4906477250100430048

/-! ## A037460.P5268543610857528923

`A028901(A007090(n))`
-/

namespace A037460.P5268543610857528923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A007090 n).toNat

end

end A037460.P5268543610857528923

/-! ## A037460.P9952377960998816152

`eq[0, A102673(A007092(n))]`
-/

namespace A037460.P9952377960998816152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037460.P9952377960998816152

/-! ## A037460.P5591970120773286920

`eq[0, A102679(A084984(n+1))]`
-/

namespace A037460.P5591970120773286920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037460.P5591970120773286920

/-! ## A037460.P12307495925684349233

`lt[A054055(A202267(n+1)), 4]`
-/

namespace A037460.P12307495925684349233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A202267 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037460.P12307495925684349233

/-! ## A037460.P8192337226479629830

`lt[A054055(lt[A054055(n), 6]), 4]`
-/

namespace A037460.P8192337226479629830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A037460.P8192337226479629830

/-! ## A037460.P11027990322278753335

`eq[0, A102679(A276138(n+1))]`
-/

namespace A037460.P11027990322278753335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A276138 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037460.P11027990322278753335

/-! ## A037460.P5374904184590999832

`eq[A137386(n+1), A222254(A137386(n+1))]`
-/

namespace A037460.P5374904184590999832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A137386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037460.P5374904184590999832

/-!
# A037461: a(n)=Sum{d(i)*7^i: i=0,1,...,m}, where Sum{d(i)*4^i: i=0,1,...,m} is the base 4 representation of n.

The programs for A037461, there is no canonical definition to state claims against.
-/

/-! ## A037461.P3522217958546301371

`A037466(A037459(n+1))`
-/

namespace A037461.P3522217958546301371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (A037459 (n + 1)).toNat

end

end A037461.P3522217958546301371

/-! ## A037461.P15013164366693471072

`A037466(A020654(n+2))`
-/

namespace A037461.P15013164366693471072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (A020654 (n + 2)).toNat

end

end A037461.P15013164366693471072

/-! ## A037461.P14551584049420478583

`A020657(A037460(n+1)+1)`
-/

namespace A037461.P14551584049420478583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (A037460 (n + 1) + 1).toNat

end

end A037461.P14551584049420478583

/-! ## A037461.P8941708664686527166

`A020657(A037465(A020655(n+2)))`
-/

namespace A037461.P8941708664686527166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (A037465 (A020655 (n + 2)).toNat).toNat

end

end A037461.P8941708664686527166

/-! ## A037461.P5791461966884548491

`A020657(A037465(A020654(n+2)+1))`
-/

namespace A037461.P5791461966884548491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (A037465 (A020654 (n + 2) + 1).toNat).toNat

end

end A037461.P5791461966884548491

/-! ## A037461.P15541423086917866633

`record[A309995(n+1)]`
-/

namespace A037461.P15541423086917866633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037461.P15541423086917866633

/-! ## A037461.P2037420426489706599

`lt[(2-A190596(n))², 2]`
-/

namespace A037461.P2037420426489706599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A190596 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037461.P2037420426489706599

/-! ## A037461.P15104226349198796382

`eq[A004277(n), A004517(n)]`
-/

namespace A037461.P15104226349198796382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037461.P15104226349198796382

/-! ## A037461.P3943973726550976787

`eq[n, A309995(A028310(n))]`
-/

namespace A037461.P3943973726550976787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309995 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037461.P3943973726550976787

/-! ## A037461.P7574815383458674802

`A309995(eq[n+1, A309995(n+1)]+1)`
-/

namespace A037461.P7574815383458674802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A037461.P7574815383458674802

/-! ## A037461.P5114261878167334730

`eq[2*A053828(n), A053828(A004277(n))]`
-/

namespace A037461.P5114261878167334730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053828 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037461.P5114261878167334730

/-! ## A037461.P8874470256026751909

`eq[A053828(n), A065033(A053828(2*n))]`
-/

namespace A037461.P8874470256026751909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A053828 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037461.P8874470256026751909

/-! ## A037461.P10301391047184311392

`A028902(A007090(n+1))`
-/

namespace A037461.P10301391047184311392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A007090 (n + 1)).toNat

end

end A037461.P10301391047184311392

/-! ## A037461.P482467176374999061

`A348355(record[A348355(n+1)])`
-/

namespace A037461.P482467176374999061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348355 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037461.P482467176374999061

/-!
# A037462: a(n) = Sum_{i = 0..m} d(i)*8^i, where Sum_{i = 0..m} d(i)*4^i is the base 4 representation of n.

The programs for A037462, there is no canonical definition to state claims against.
-/

/-! ## A037462.P14925505239948046908

`A037467(A020654(n+1))`
-/

namespace A037462.P14925505239948046908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (A020654 (n + 1)).toNat

end

end A037462.P14925505239948046908

/-! ## A037462.P7701165244176320826

`A037471(A037460(n))`
-/

namespace A037462.P7701165244176320826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (A037460 n).toNat

end

end A037462.P7701165244176320826

/-! ## A037462.P17020210042925485086

`∩[A039071(n+1), A037467(n)]`
-/

namespace A037462.P17020210042925485086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037462.P17020210042925485086

/-! ## A037462.P4074674057693743925

`∩[A039072(n+1), A037467(n)]`
-/

namespace A037462.P4074674057693743925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037462.P4074674057693743925

/-! ## A037462.P8730241730038490601

`∩[A039073(n+1), A037467(n)]`
-/

namespace A037462.P8730241730038490601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037462.P8730241730038490601

/-! ## A037462.P5538553266670617408

`A037474(A020657(A037465(A020654(n+1)+1)))`
-/

namespace A037462.P5538553266670617408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A020657 (A037465 (A020654 (n + 1) + 1).toNat).toNat).toNat

end

end A037462.P5538553266670617408

/-! ## A037462.P17750743530720219832

`lt[A190597(n), 4]`
-/

namespace A037462.P17750743530720219832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190597 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037462.P17750743530720219832

/-! ## A037462.P5997943064088612582

`record[A004518(n)/2]`
-/

namespace A037462.P5997943064088612582
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004518 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037462.P5997943064088612582

/-! ## A037462.P237058880455110011

`eq[A004518(n), A005843(n)]`
-/

namespace A037462.P237058880455110011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004518 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037462.P237058880455110011

/-! ## A037462.P14564704352186934598

`record[gcd(A037474(2*n), A037474(n))]`
-/

namespace A037462.P14564704352186934598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037474 (2 * n)) (A037474 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037462.P14564704352186934598

/-! ## A037462.P15120447394511416650

`eq[A004518(2*n), A004518(A004518(n))]`
-/

namespace A037462.P15120447394511416650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004518 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004518 (A004518 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037462.P15120447394511416650

/-! ## A037462.P7079608027444854765

`A028903(A007090(n))`
-/

namespace A037462.P7079608027444854765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A007090 n).toNat

end

end A037462.P7079608027444854765

/-! ## A037462.P14895821631473804347

`lt[A054055(A007094(n)), 4]`
-/

namespace A037462.P14895821631473804347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007094 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037462.P14895821631473804347

/-! ## A037462.P9318808320460842191

`record[(n-A055118(n))/2]`
-/

namespace A037462.P9318808320460842191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A055118 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037462.P9318808320460842191

/-! ## A037462.P11093901410641687691

`eq[A001281(A030107(2*n)), A030107(n)]`
-/

namespace A037462.P11093901410641687691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A030107 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037462.P11093901410641687691

/-!
# A037463: a(n)=Sum{d(i)*9^i: i=0,1,...,m}, where Sum{d(i)*4^i: i=0,1,...,m} is the base 4 representation of n.

The programs for A037463, there is no canonical definition to state claims against.
-/

/-! ## A037463.P14253789032184433735

`A037468(A020654(n+1))`
-/

namespace A037463.P14253789032184433735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (A020654 (n + 1)).toNat

end

end A037463.P14253789032184433735

/-! ## A037463.P542070853197170581

`A037468(A020655(n+1)-1)`
-/

namespace A037463.P542070853197170581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (A020655 (n + 1) - 1).toNat

end

end A037463.P542070853197170581

/-! ## A037463.P16785007926252517952

`A037472(A037460(n))`
-/

namespace A037463.P16785007926252517952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (A037460 n).toNat

end

end A037463.P16785007926252517952

/-! ## A037463.P3511732274026505579

`∩[A039102(n+1), A037468(n)]`
-/

namespace A037463.P3511732274026505579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037463.P3511732274026505579

/-! ## A037463.P12090572487805983391

`∩[A039103(n+1), A037468(n)]`
-/

namespace A037463.P12090572487805983391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037463.P12090572487805983391

/-! ## A037463.P17748175193620741312

`∩[A039104(n+1), A037468(n)]`
-/

namespace A037463.P17748175193620741312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037463.P17748175193620741312

/-! ## A037463.P6972379291464085342

`∩[A039105(n+1), A037468(n)]`
-/

namespace A037463.P6972379291464085342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037463.P6972379291464085342

/-! ## A037463.P5460410644283359844

`A037477(A037462(n))`
-/

namespace A037463.P5460410644283359844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A037462 n).toNat

end

end A037463.P5460410644283359844

/-! ## A037463.P13181002007501800565

`record[gcd(A037475(2*n), A037475(n))]`
-/

namespace A037463.P13181002007501800565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037475 (2 * n)) (A037475 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037463.P13181002007501800565

/-! ## A037463.P9747977787634854322

`lt[A190598(n), 4]`
-/

namespace A037463.P9747977787634854322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190598 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037463.P9747977787634854322

/-! ## A037463.P11501629649638063089

`eq[0, A052406(n+1)-A007095(n)]`
-/

namespace A037463.P11501629649638063089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1) - A007095 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037463.P11501629649638063089

/-! ## A037463.P3645976257737031781

`A028904(A007090(n))`
-/

namespace A037463.P3645976257737031781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A007090 n).toNat

end

end A037463.P3645976257737031781

/-! ## A037463.P8353260896049082610

`lt[A054055(A007095(n)), 4]`
-/

namespace A037463.P8353260896049082610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007095 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037463.P8353260896049082610

/-! ## A037463.P7683819380772530054

`record[n-A103181(A052421(2*n+1))]`
-/

namespace A037463.P7683819380772530054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A103181 (A052421 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037463.P7683819380772530054

/-! ## A037463.P15038165789628407549

`record[n/A103181(A052421(2*(n+1)))]`
-/

namespace A037463.P15038165789628407549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A103181 (A052421 (2 * (n + 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037463.P15038165789628407549

/-!
# A037464: Bisection of A076605.

The programs for A037464, the canonical program `A037464.P6205142235644604405` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037464 has offset 1).

The definition of A037464 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076605, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037464.P6205142235644604405

`A076605(2*(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A037464

/-- `A076605(2*(n+1))` -/
def P6205142235644604405.Spec : Prop :=
  ∀ n, P6205142235644604405.a n = A037464 (n + 1)

theorem P6205142235644604405.correct : P6205142235644604405.Spec := by
  intro n
  simp only [A037464, Nat.add_sub_cancel]

end A037464

/-! ## A037464.P14447024244334509531

`p?[A076605(n+2)^and(1, n+1)]`
-/

namespace A037464.P14447024244334509531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2) ^ Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A037464.P14447024244334509531

namespace A037464

/-- `p?[A076605(n+2)^and(1, n+1)]` -/
def P14447024244334509531.Spec : Prop :=
  ∀ n, P14447024244334509531.a n = A037464 (n + 1)

end A037464

/-! ## A037464.P9079991933195664958

`A014963(A076605(n+2+n))`
-/

namespace A037464.P9079991933195664958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A076605 (n + 2 + n)).toNat

end

end A037464.P9079991933195664958

namespace A037464

/-- `A014963(A076605(n+2+n))` -/
def P9079991933195664958.Spec : Prop :=
  ∀ n, P9079991933195664958.a n = A037464 (n + 1)

end A037464

/-! ## A037464.P2985448462455105866

`A006530((2*n+1)*A076565(n+1))`
-/

namespace A037464.P2985448462455105866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((2 * n + 1 : ℤ) * A076565 (n + 1)).toNat

end

end A037464.P2985448462455105866

namespace A037464

/-- `A006530((2*n+1)*A076565(n+1))` -/
def P2985448462455105866.Spec : Prop :=
  ∀ n, P2985448462455105866.a n = A037464 (n + 1)

end A037464

/-! ## A037464.P18130053803110523996

`A006530((2*(n+1))²-1)`
-/

namespace A037464.P18130053803110523996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((2 * (n + 1)) ^ 2 - 1)

end

end A037464.P18130053803110523996

namespace A037464

/-- `A006530((2*(n+1))²-1)` -/
def P18130053803110523996.Spec : Prop :=
  ∀ n, P18130053803110523996.a n = A037464 (n + 1)

end A037464

/-! ## A037464.P1089243942202712288

`p?[or(-and(1, n), A006530((n+2)²-1))]`
-/

namespace A037464.P1089243942202712288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-(Nat.land 1 n : ℤ)) (A006530 ((n + 2) ^ 2 - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A037464.P1089243942202712288

namespace A037464

/-- `p?[or(-and(1, n), A006530((n+2)²-1))]` -/
def P1089243942202712288.Spec : Prop :=
  ∀ n, P1089243942202712288.a n = A037464 (n + 1)

end A037464

/-! ## A037464.P12214276495026314428

`or(1, A006530(A000466(n+1)))`
-/

namespace A037464.P12214276495026314428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A000466 (n + 1)).toNat)

end

end A037464.P12214276495026314428

namespace A037464

/-- `or(1, A006530(A000466(n+1)))` -/
def P12214276495026314428.Spec : Prop :=
  ∀ n, P12214276495026314428.a n = A037464 (n + 1)

end A037464

/-! ## A037464.P3497360430893576202

`or(1, A006530(A005563(2*n+1)))`
-/

namespace A037464.P3497360430893576202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A005563 (2 * n + 1)).toNat)

end

end A037464.P3497360430893576202

namespace A037464

/-- `or(1, A006530(A005563(2*n+1)))` -/
def P3497360430893576202.Spec : Prop :=
  ∀ n, P3497360430893576202.a n = A037464 (n + 1)

end A037464

/-! ## A037464.P15638986708330947746

`lcm(A006530(A000466(n+1)), A008836(n+1))`
-/

namespace A037464.P15638986708330947746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006530 (A000466 (n + 1)).toNat) (A008836 (n + 1))

end

end A037464.P15638986708330947746

namespace A037464

/-- `lcm(A006530(A000466(n+1)), A008836(n+1))` -/
def P15638986708330947746.Spec : Prop :=
  ∀ n, (P15638986708330947746.a n : ℤ) = A037464 (n + 1)

end A037464

/-! ## A037464.P2237042697174372167

`A006530(A000466(n+1))%A000040(n+2)²`
-/

namespace A037464.P2237042697174372167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A000466 (n + 1)).toNat) (A000040 (n + 2) ^ 2)

end

end A037464.P2237042697174372167

namespace A037464

/-- `A006530(A000466(n+1))%A000040(n+2)²` -/
def P2237042697174372167.Spec : Prop :=
  ∀ n, P2237042697174372167.a n = A037464 (n + 1)

end A037464

/-! ## A037464.P13849681893883727077

`or(1, A006530(A054000(2*(n+1))))`
-/

namespace A037464.P13849681893883727077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A054000 (2 * (n + 1))).toNat)

end

end A037464.P13849681893883727077

namespace A037464

/-- `or(1, A006530(A054000(2*(n+1))))` -/
def P13849681893883727077.Spec : Prop :=
  ∀ n, P13849681893883727077.a n = A037464 (n + 1)

end A037464

/-!
# A037465: a(n) = Sum_{i=0..m} d(i)*6^i, where Sum_{i=0..m} d(i)*5^i is the base 5 representation of n.

The programs for A037465, there is no canonical definition to state claims against.
-/

/-! ## A037465.P9577745579538346055

`comp[A333656(n+1)]`
-/

namespace A037465.P9577745579538346055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A037465.P9577745579538346055

/-! ## A037465.P16984675550574263955

`lt[A190595(n), 5]`
-/

namespace A037465.P16984675550574263955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190595 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037465.P16984675550574263955

/-! ## A037465.P3583092812704457448

`lt[A006530(A338863(n)), 4]`
-/

namespace A037465.P3583092812704457448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A338863 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037465.P3583092812704457448

/-! ## A037465.P14728495649416951361

`A303789(A037466(n))`
-/

namespace A037465.P14728495649416951361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (A037466 n).toNat

end

end A037465.P14728495649416951361

/-! ## A037465.P4519070162209977784

`A028901(A007091(n))`
-/

namespace A037465.P4519070162209977784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A007091 n).toNat

end

end A037465.P4519070162209977784

/-! ## A037465.P10114202783152634429

`eq[0, A102675(A007092(n))]`
-/

namespace A037465.P10114202783152634429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037465.P10114202783152634429

/-! ## A037465.P17345158023862284774

`A028901(A024657(2*n)/2)`
-/

namespace A037465.P17345158023862284774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (SequenceMachineLib.roundAway ((A024657 (2 * n) : ℚ) / 2)).toNat

end

end A037465.P17345158023862284774

/-! ## A037465.P1428592832755498042

`eq[0, A102683(A084984(n+1))]`
-/

namespace A037465.P1428592832755498042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037465.P1428592832755498042

/-! ## A037465.P15113114150541771806

`lt[A054055(A202267(n+1)), 7]`
-/

namespace A037465.P15113114150541771806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A202267 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037465.P15113114150541771806

/-! ## A037465.P9383544610335973221

`lt[A054055(lt[A054055(n), 6]), 5]`
-/

namespace A037465.P9383544610335973221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A037465.P9383544610335973221

/-! ## A037465.P11215374087071002742

`eq[0, A196564(A276138(n+1))]`
-/

namespace A037465.P11215374087071002742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A276138 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037465.P11215374087071002742

/-! ## A037465.P8481043111172164489

`eq[A037472(n), A316823(A037472(n))]`
-/

namespace A037465.P8481043111172164489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 (A037472 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037465.P8481043111172164489

/-! ## A037465.P16718423235979746444

`eq[A007092(n), A107128(2*A007092(n))]`
-/

namespace A037465.P16718423235979746444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (2 * A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037465.P16718423235979746444

/-! ## A037465.P4404008986148921334

`eq[A137386(n+1), A222253(A137386(n+1))]`
-/

namespace A037465.P4404008986148921334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A137386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037465.P4404008986148921334

/-!
# A037466: a(n)=Sum{d(i)*7^i: i=0,1,...,m}, where Sum{d(i)*5^i: i=0,1,...,m} is the base 5 representation of n.

The programs for A037466, the canonical program `A037466.P5572666431852063936` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037466 has offset 0).

The definition of A037466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2655 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037466.P8454271653231197194

`A020657(A037465(n)+1)`
-/

namespace A037466.P8454271653231197194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (A037465 n + 1).toNat

end

end A037466.P8454271653231197194

namespace A037466

/-- `A020657(A037465(n)+1)` -/
def P8454271653231197194.Spec : Prop :=
  ∀ n, P8454271653231197194.a n = A037466 n

end A037466

/-! ## A037466.P9638875218073854968

`∩[A020657(n+1), A039049(n+1)]`
-/

namespace A037466.P9638875218073854968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037466.P9638875218073854968

namespace A037466

/-- `∩[A020657(n+1), A039049(n+1)]` -/
def P9638875218073854968.Spec : Prop :=
  ∀ n, (P9638875218073854968.a n : ℤ) = A037466 n

end A037466

/-! ## A037466.P5572666431852063936

`lt[A190596(n), 5]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A037466

/-- `lt[A190596(n), 5]` -/
def P5572666431852063936.Spec : Prop :=
  ∀ n, (P5572666431852063936.a n : ℤ) = A037466 n

theorem P5572666431852063936.correct : P5572666431852063936.Spec := by
  intro n
  simp only [A037466]

end A037466

/-! ## A037466.P16347393125913875976

`A028902(A007091(n))`
-/

namespace A037466.P16347393125913875976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A007091 n).toNat

end

end A037466.P16347393125913875976

namespace A037466

/-- `A028902(A007091(n))` -/
def P16347393125913875976.Spec : Prop :=
  ∀ n, P16347393125913875976.a n = A037466 n

end A037466

/-! ## A037466.P8219443211923918331

`lt[A054055(A007093(n)), 5]`
-/

namespace A037466.P8219443211923918331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007093 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037466.P8219443211923918331

namespace A037466

/-- `lt[A054055(A007093(n)), 5]` -/
def P8219443211923918331.Spec : Prop :=
  ∀ n, (P8219443211923918331.a n : ℤ) = A037466 n

end A037466

/-! ## A037466.P15748168422726294257

`lt[A054055(lt[A054055(n), 7]), 5]`
-/

namespace A037466.P15748168422726294257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A037466.P15748168422726294257

namespace A037466

/-- `lt[A054055(lt[A054055(n), 7]), 5]` -/
def P15748168422726294257.Spec : Prop :=
  ∀ n, (P15748168422726294257.a n : ℤ) = A037466 n

end A037466

/-! ## A037466.P15347131977161264359

`lt[A086066(lt[A047842(n)%10, 7]), 32]`
-/

namespace A037466.P15347131977161264359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 n) 10

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A037466.P15347131977161264359

namespace A037466

/-- `lt[A086066(lt[A047842(n)%10, 7]), 32]` -/
def P15347131977161264359.Spec : Prop :=
  ∀ n, (P15347131977161264359.a n : ℤ) = A037466 n

end A037466

/-! ## A037466.P8875654922403674956

`eq[A037475(n), A316823(A037475(n))]`
-/

namespace A037466.P8875654922403674956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 (A037475 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037466.P8875654922403674956

namespace A037466

/-- `eq[A037475(n), A316823(A037475(n))]` -/
def P8875654922403674956.Spec : Prop :=
  ∀ n, (P8875654922403674956.a n : ℤ) = A037466 n

end A037466

/-! ## A037466.P6273804976172294532

`eq[A028374(n+1), A222254(A028374(n+1))]`
-/

namespace A037466.P6273804976172294532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A028374 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037466.P6273804976172294532

namespace A037466

/-- `eq[A028374(n+1), A222254(A028374(n+1))]` -/
def P6273804976172294532.Spec : Prop :=
  ∀ n, (P6273804976172294532.a n : ℤ) = A037466 n

end A037466

/-!
# A037467: Sum{d(i)*8^i: i=0,1,...,m}, where Sum{d(i)*5^i: i=0,1,...,m} is the base 5 representation of n.

The programs for A037467, the canonical program `A037467.P2964122890397976009` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037467 has offset 0).

The definition of A037467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2655 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037467.P8574102355435032480

`A037471(A037465(n))`
-/

namespace A037467.P8574102355435032480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (A037465 n).toNat

end

end A037467.P8574102355435032480

namespace A037467

/-- `A037471(A037465(n))` -/
def P8574102355435032480.Spec : Prop :=
  ∀ n, P8574102355435032480.a n = A037467 n

end A037467

/-! ## A037467.P5634293567183952883

`∩[A039074(n+1), A037471(n)]`
-/

namespace A037467.P5634293567183952883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037467.P5634293567183952883

namespace A037467

/-- `∩[A039074(n+1), A037471(n)]` -/
def P5634293567183952883.Spec : Prop :=
  ∀ n, (P5634293567183952883.a n : ℤ) = A037467 n

end A037467

/-! ## A037467.P14732583556770964093

`∩[A039075(n+1), A037471(n)]`
-/

namespace A037467.P14732583556770964093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037467.P14732583556770964093

namespace A037467

/-- `∩[A039075(n+1), A037471(n)]` -/
def P14732583556770964093.Spec : Prop :=
  ∀ n, (P14732583556770964093.a n : ℤ) = A037467 n

end A037467

/-! ## A037467.P2964122890397976009

`A037474(A037466(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A037467

/-- `A037474(A037466(n))` -/
def P2964122890397976009.Spec : Prop :=
  ∀ n, P2964122890397976009.a n = A037467 n

theorem P2964122890397976009.correct : P2964122890397976009.Spec := by
  intro n
  simp only [A037467]

end A037467

/-! ## A037467.P15693196665994177951

`A037474(A020657(A037465(n)+1))`
-/

namespace A037467.P15693196665994177951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A020657 (A037465 n + 1).toNat).toNat

end

end A037467.P15693196665994177951

namespace A037467

/-- `A037474(A020657(A037465(n)+1))` -/
def P15693196665994177951.Spec : Prop :=
  ∀ n, P15693196665994177951.a n = A037467 n

end A037467

/-! ## A037467.P560754627916357649

`lt[A190597(n), 5]`
-/

namespace A037467.P560754627916357649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190597 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037467.P560754627916357649

namespace A037467

/-- `lt[A190597(n), 5]` -/
def P560754627916357649.Spec : Prop :=
  ∀ n, (P560754627916357649.a n : ℤ) = A037467 n

end A037467

/-! ## A037467.P15839462316732344628

`A028903(A007091(n))`
-/

namespace A037467.P15839462316732344628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A007091 n).toNat

end

end A037467.P15839462316732344628

namespace A037467

/-- `A028903(A007091(n))` -/
def P15839462316732344628.Spec : Prop :=
  ∀ n, P15839462316732344628.a n = A037467 n

end A037467

/-! ## A037467.P12131240399388514216

`lt[A054055(A007094(n)), 5]`
-/

namespace A037467.P12131240399388514216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007094 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037467.P12131240399388514216

namespace A037467

/-- `lt[A054055(A007094(n)), 5]` -/
def P12131240399388514216.Spec : Prop :=
  ∀ n, (P12131240399388514216.a n : ℤ) = A037467 n

end A037467

/-! ## A037467.P4431584350046342201

`A028903(A024657(2*n)/2)`
-/

namespace A037467.P4431584350046342201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (SequenceMachineLib.roundAway ((A024657 (2 * n) : ℚ) / 2)).toNat

end

end A037467.P4431584350046342201

namespace A037467

/-- `A028903(A024657(2*n)/2)` -/
def P4431584350046342201.Spec : Prop :=
  ∀ n, P4431584350046342201.a n = A037467 n

end A037467

/-! ## A037467.P11188755114059926161

`lt[A054055(lt[A054055(n), 8]), 5]`
-/

namespace A037467.P11188755114059926161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A037467.P11188755114059926161

namespace A037467

/-- `lt[A054055(lt[A054055(n), 8]), 5]` -/
def P11188755114059926161.Spec : Prop :=
  ∀ n, (P11188755114059926161.a n : ℤ) = A037467 n

end A037467

/-! ## A037467.P431586609729830676

`eq[A037477(n), A316823(A037477(n))]`
-/

namespace A037467.P431586609729830676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 (A037477 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037467.P431586609729830676

namespace A037467

/-- `eq[A037477(n), A316823(A037477(n))]` -/
def P431586609729830676.Spec : Prop :=
  ∀ n, (P431586609729830676.a n : ℤ) = A037467 n

end A037467

/-! ## A037467.P12270850084644176917

`record[A037471(n)-A103181(A276138(n+1))]`
-/

namespace A037467.P12270850084644176917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 n - A103181 (A276138 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037467.P12270850084644176917

namespace A037467

/-- `record[A037471(n)-A103181(A276138(n+1))]` -/
def P12270850084644176917.Spec : Prop :=
  ∀ n, P12270850084644176917.a n = A037467 n

end A037467

/-! ## A037467.P17020224212680317081

`eq[A053829(n), A092196(A007094(n))]`
-/

namespace A037467.P17020224212680317081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037467.P17020224212680317081

namespace A037467

/-- `eq[A053829(n), A092196(A007094(n))]` -/
def P17020224212680317081.Spec : Prop :=
  ∀ n, (P17020224212680317081.a n : ℤ) = A037467 n

end A037467

/-!
# A037468: a(n)=Sum{d(i)*9^i: i=0,1,...,m}, where Sum{d(i)*5^i: i=0,1,...,m} is the base 5 representation of n.

The programs for A037468, the canonical program `A037468.P8981474126117510266` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037468 has offset 0).

The definition of A037468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2654 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037468.P5646334473844923040

`A037472(A037465(n))`
-/

namespace A037468.P5646334473844923040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (A037465 n).toNat

end

end A037468.P5646334473844923040

namespace A037468

/-- `A037472(A037465(n))` -/
def P5646334473844923040.Spec : Prop :=
  ∀ n, P5646334473844923040.a n = A037468 n

end A037468

/-! ## A037468.P8981474126117510266

`A037475(A037466(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A037468

/-- `A037475(A037466(n))` -/
def P8981474126117510266.Spec : Prop :=
  ∀ n, P8981474126117510266.a n = A037468 n

theorem P8981474126117510266.correct : P8981474126117510266.Spec := by
  intro n
  simp only [A037468]

end A037468

/-! ## A037468.P3059346248114892955

`∩[A039106(n+1), A037472(n)]`
-/

namespace A037468.P3059346248114892955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037468.P3059346248114892955

namespace A037468

/-- `∩[A039106(n+1), A037472(n)]` -/
def P3059346248114892955.Spec : Prop :=
  ∀ n, (P3059346248114892955.a n : ℤ) = A037468 n

end A037468

/-! ## A037468.P15928739491033500860

`∩[A039107(n+1), A037472(n)]`
-/

namespace A037468.P15928739491033500860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037468.P15928739491033500860

namespace A037468

/-- `∩[A039107(n+1), A037472(n)]` -/
def P15928739491033500860.Spec : Prop :=
  ∀ n, (P15928739491033500860.a n : ℤ) = A037468 n

end A037468

/-! ## A037468.P13269408740670459798

`∩[A039108(n+1), A037472(n)]`
-/

namespace A037468.P13269408740670459798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037468.P13269408740670459798

namespace A037468

/-- `∩[A039108(n+1), A037472(n)]` -/
def P13269408740670459798.Spec : Prop :=
  ∀ n, (P13269408740670459798.a n : ℤ) = A037468 n

end A037468

/-! ## A037468.P3566770693686988996

`A037477(A037467(n))`
-/

namespace A037468.P3566770693686988996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A037467 n).toNat

end

end A037468.P3566770693686988996

namespace A037468

/-- `A037477(A037467(n))` -/
def P3566770693686988996.Spec : Prop :=
  ∀ n, P3566770693686988996.a n = A037468 n

end A037468

/-! ## A037468.P16335235289738758383

`A037477(A037474(A020657(A037465(n)+1)))`
-/

namespace A037468.P16335235289738758383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A037474 (A020657 (A037465 n + 1).toNat).toNat).toNat

end

end A037468.P16335235289738758383

namespace A037468

/-- `A037477(A037474(A020657(A037465(n)+1)))` -/
def P16335235289738758383.Spec : Prop :=
  ∀ n, P16335235289738758383.a n = A037468 n

end A037468

/-! ## A037468.P13486878671494085603

`lt[A190598(n), 5]`
-/

namespace A037468.P13486878671494085603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190598 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037468.P13486878671494085603

namespace A037468

/-- `lt[A190598(n), 5]` -/
def P13486878671494085603.Spec : Prop :=
  ∀ n, (P13486878671494085603.a n : ℤ) = A037468 n

end A037468

/-! ## A037468.P17585837444177216457

`record[A004519(n)/2]`
-/

namespace A037468.P17585837444177216457
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004519 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037468.P17585837444177216457

namespace A037468

/-- `record[A004519(n)/2]` -/
def P17585837444177216457.Spec : Prop :=
  ∀ n, P17585837444177216457.a n = (A037468 n : ℚ)

end A037468

/-! ## A037468.P10724289597785628676

`eq[A004519(n), A005843(n)]`
-/

namespace A037468.P10724289597785628676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004519 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037468.P10724289597785628676

namespace A037468

/-- `eq[A004519(n), A005843(n)]` -/
def P10724289597785628676.Spec : Prop :=
  ∀ n, (P10724289597785628676.a n : ℤ) = A037468 n

end A037468

/-! ## A037468.P5209073933107805349

`record[A163327(n)-2*A105186(n)]`
-/

namespace A037468.P5209073933107805349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163327 n - 2 * A105186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037468.P5209073933107805349

namespace A037468

/-- `record[A163327(n)-2*A105186(n)]` -/
def P5209073933107805349.Spec : Prop :=
  ∀ n, P5209073933107805349.a n = A037468 n

end A037468

/-! ## A037468.P2693516746231253867

`record[A105186(A002264(n))+A105186(n)]`
-/

namespace A037468.P2693516746231253867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105186 (A002264 n).toNat + A105186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037468.P2693516746231253867

namespace A037468

/-- `record[A105186(A002264(n))+A105186(n)]` -/
def P2693516746231253867.Spec : Prop :=
  ∀ n, P2693516746231253867.a n = A037468 n

end A037468

/-! ## A037468.P8870267019752790387

`A028904(A007091(n))`
-/

namespace A037468.P8870267019752790387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A007091 n).toNat

end

end A037468.P8870267019752790387

namespace A037468

/-- `A028904(A007091(n))` -/
def P8870267019752790387.Spec : Prop :=
  ∀ n, P8870267019752790387.a n = A037468 n

end A037468

/-! ## A037468.P5836008218733795838

`lt[A054055(A007095(n)), 5]`
-/

namespace A037468.P5836008218733795838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007095 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037468.P5836008218733795838

namespace A037468

/-- `lt[A054055(A007095(n)), 5]` -/
def P5836008218733795838.Spec : Prop :=
  ∀ n, (P5836008218733795838.a n : ℤ) = A037468 n

end A037468

/-! ## A037468.P4912153786554041770

`record[A316823(n)]`
-/

namespace A037468.P4912153786554041770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037468.P4912153786554041770

namespace A037468

/-- `record[A316823(n)]` -/
def P4912153786554041770.Spec : Prop :=
  ∀ n, P4912153786554041770.a n = A037468 n

end A037468

/-! ## A037468.P4362172440212935057

`A316823(eq[n, A316823(n)])`
-/

namespace A037468.P4362172440212935057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037468.P4362172440212935057

namespace A037468

/-- `A316823(eq[n, A316823(n)])` -/
def P4362172440212935057.Spec : Prop :=
  ∀ n, P4362172440212935057.a n = A037468 n

end A037468

/-! ## A037468.P2500451386539301455

`eq[n, A163333(A163332(n))]/2`
-/

namespace A037468.P2500451386539301455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163333 (A163332 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A037468.P2500451386539301455

namespace A037468

/-- `eq[n, A163333(A163332(n))]/2` -/
def P2500451386539301455.Spec : Prop :=
  ∀ n, P2500451386539301455.a n = (A037468 n : ℚ)

end A037468

/-! ## A037468.P14238063911303563026

`record[n-A103181(A007095(2*n))]`
-/

namespace A037468.P14238063911303563026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A103181 (A007095 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037468.P14238063911303563026

namespace A037468

/-- `record[n-A103181(A007095(2*n))]` -/
def P14238063911303563026.Spec : Prop :=
  ∀ n, P14238063911303563026.a n = A037468 n

end A037468

/-! ## A037468.P10270308117342772071

`eq[A163332(2*n), A163333(2*n)]`
-/

namespace A037468.P10270308117342772071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163333 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037468.P10270308117342772071

namespace A037468

/-- `eq[A163332(2*n), A163333(2*n)]` -/
def P10270308117342772071.Spec : Prop :=
  ∀ n, (P10270308117342772071.a n : ℤ) = A037468 n

end A037468

/-! ## A037468.P15812815752699493579

`eq[A004519(2*n), A004519(A004519(n))]`
-/

namespace A037468.P15812815752699493579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004519 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004519 (A004519 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037468.P15812815752699493579

namespace A037468

/-- `eq[A004519(2*n), A004519(A004519(n))]` -/
def P15812815752699493579.Spec : Prop :=
  ∀ n, (P15812815752699493579.a n : ℤ) = A037468 n

end A037468

/-!
# A037471: a(n)=Sum{d(i)*8^i: i=0,1,...,m}, where Sum{d(i)*6^i: i=0,1,...,m} is the base 6 representation of n.

The programs for A037471, the canonical program `A037471.P8190266980563573188` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037471 has offset 0).

The definition of A037471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2722 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037471.P13440869287518136269

`A037474(A020657(n+1))`
-/

namespace A037471.P13440869287518136269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A020657 (n + 1)).toNat

end

end A037471.P13440869287518136269

namespace A037471

/-- `A037474(A020657(n+1))` -/
def P13440869287518136269.Spec : Prop :=
  ∀ n, P13440869287518136269.a n = A037471 n

end A037471

/-! ## A037471.P12025128001106310564

`A037474(A020658(n+1)-1)`
-/

namespace A037471.P12025128001106310564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A020658 (n + 1) - 1).toNat

end

end A037471.P12025128001106310564

namespace A037471

/-- `A037474(A020658(n+1)-1)` -/
def P12025128001106310564.Spec : Prop :=
  ∀ n, P12025128001106310564.a n = A037471 n

end A037471

/-! ## A037471.P4542076236100641151

`∩[A039076(n+1), A037474(n)]`
-/

namespace A037471.P4542076236100641151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037471.P4542076236100641151

namespace A037471

/-- `∩[A039076(n+1), A037474(n)]` -/
def P4542076236100641151.Spec : Prop :=
  ∀ n, (P4542076236100641151.a n : ℤ) = A037471 n

end A037471

/-! ## A037471.P1921737596052236994

`eq[A190597(n)%6, A190597(n)]`
-/

namespace A037471.P1921737596052236994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190597 n) 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037471.P1921737596052236994

namespace A037471

/-- `eq[A190597(n)%6, A190597(n)]` -/
def P1921737596052236994.Spec : Prop :=
  ∀ n, (P1921737596052236994.a n : ℤ) = A037471 n

end A037471

/-! ## A037471.P8190266980563573188

`record[A008585(A037474(n))-A037474(2*n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A037471

/-- `record[A008585(A037474(n))-A037474(2*n)]` -/
def P8190266980563573188.Spec : Prop :=
  ∀ n, P8190266980563573188.a n = A037471 n

theorem P8190266980563573188.correct : P8190266980563573188.Spec := by
  intro n
  simp only [A037471]

end A037471

/-! ## A037471.P11045053199564024595

`A028903(A007092(n))`
-/

namespace A037471.P11045053199564024595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A007092 n).toNat

end

end A037471.P11045053199564024595

namespace A037471

/-- `A028903(A007092(n))` -/
def P11045053199564024595.Spec : Prop :=
  ∀ n, P11045053199564024595.a n = A037471 n

end A037471

/-! ## A037471.P13243433349178004246

`lt[A054055(A007094(n)), 6]`
-/

namespace A037471.P13243433349178004246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007094 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037471.P13243433349178004246

namespace A037471

/-- `lt[A054055(A007094(n)), 6]` -/
def P13243433349178004246.Spec : Prop :=
  ∀ n, (P13243433349178004246.a n : ℤ) = A037471 n

end A037471

/-! ## A037471.P449184661896017316

`lt[A054055(lt[A054055(n), 8]), 6]`
-/

namespace A037471.P449184661896017316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A037471.P449184661896017316

namespace A037471

/-- `lt[A054055(lt[A054055(n), 8]), 6]` -/
def P449184661896017316.Spec : Prop :=
  ∀ n, (P449184661896017316.a n : ℤ) = A037471 n

end A037471

/-! ## A037471.P12603244949882822064

`lt[A086066(eq[n, A222254(n)]), 62]`
-/

namespace A037471.P12603244949882822064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  62

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A037471.P12603244949882822064

namespace A037471

/-- `lt[A086066(eq[n, A222254(n)]), 62]` -/
def P12603244949882822064.Spec : Prop :=
  ∀ n, (P12603244949882822064.a n : ℤ) = A037471 n

end A037471

/-! ## A037471.P12855631606182572675

`record[A309952(A037456(n))]`
-/

namespace A037471.P12855631606182572675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A037456 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037471.P12855631606182572675

namespace A037471

/-- `record[A309952(A037456(n))]` -/
def P12855631606182572675.Spec : Prop :=
  ∀ n, P12855631606182572675.a n = A037471 n

end A037471

/-!
# A037472: a(n)=Sum{d(i)*9^i: i=0,1,...,m}, where Sum{d(i)*6^i: i=0,1,...,m} is the base 6 representation of n.

The programs for A037472, the canonical program `A037472.P13823202368914928265` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037472 has offset 0).

The definition of A037472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3397 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037472.P3691749133770360328

`A037475(A020657(n+1))`
-/

namespace A037472.P3691749133770360328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A020657 (n + 1)).toNat

end

end A037472.P3691749133770360328

namespace A037472

/-- `A037475(A020657(n+1))` -/
def P3691749133770360328.Spec : Prop :=
  ∀ n, P3691749133770360328.a n = A037472 n

end A037472

/-! ## A037472.P10031454109958542655

`∩[A039109(n+1), A037475(n)]`
-/

namespace A037472.P10031454109958542655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037472.P10031454109958542655

namespace A037472

/-- `∩[A039109(n+1), A037475(n)]` -/
def P10031454109958542655.Spec : Prop :=
  ∀ n, (P10031454109958542655.a n : ℤ) = A037472 n

end A037472

/-! ## A037472.P5785444473769716389

`∩[A039110(n+1), A037475(n)]`
-/

namespace A037472.P5785444473769716389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037472.P5785444473769716389

namespace A037472

/-- `∩[A039110(n+1), A037475(n)]` -/
def P5785444473769716389.Spec : Prop :=
  ∀ n, (P5785444473769716389.a n : ℤ) = A037472 n

end A037472

/-! ## A037472.P668231668162596382

`record[gcd(A039109(n+1), A039111(n+1))]`
-/

namespace A037472.P668231668162596382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039109 (n + 1)) (A039111 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037472.P668231668162596382

namespace A037472

/-- `record[gcd(A039109(n+1), A039111(n+1))]` -/
def P668231668162596382.Spec : Prop :=
  ∀ n, (P668231668162596382.a n : ℤ) = A037472 n

end A037472

/-! ## A037472.P13823202368914928265

`A037477(A037471(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A037472

/-- `A037477(A037471(n))` -/
def P13823202368914928265.Spec : Prop :=
  ∀ n, P13823202368914928265.a n = A037472 n

theorem P13823202368914928265.correct : P13823202368914928265.Spec := by
  intro n
  simp only [A037472]

end A037472

/-! ## A037472.P265505513321212394

`eq[A300222(n), A316823(A300222(n))]`
-/

namespace A037472.P265505513321212394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 (A300222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037472.P265505513321212394

namespace A037472

/-- `eq[A300222(n), A316823(A300222(n))]` -/
def P265505513321212394.Spec : Prop :=
  ∀ n, (P265505513321212394.a n : ℤ) = A037472 n

end A037472

/-! ## A037472.P8798387207962491699

`eq[0, A059906(A289814(n))]`
-/

namespace A037472.P8798387207962491699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A289814 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037472.P8798387207962491699

namespace A037472

/-- `eq[0, A059906(A289814(n))]` -/
def P8798387207962491699.Spec : Prop :=
  ∀ n, (P8798387207962491699.a n : ℤ) = A037472 n

end A037472

/-! ## A037472.P6921866870840644155

`eq[A190598(n)%6, A190598(n)]`
-/

namespace A037472.P6921866870840644155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190598 n) 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190598 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037472.P6921866870840644155

namespace A037472

/-- `eq[A190598(n)%6, A190598(n)]` -/
def P6921866870840644155.Spec : Prop :=
  ∀ n, (P6921866870840644155.a n : ℤ) = A037472 n

end A037472

/-! ## A037472.P8228763416911082666

`eq[0, A052414(n+1)-A007095(n)]`
-/

namespace A037472.P8228763416911082666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1) - A007095 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037472.P8228763416911082666

namespace A037472

/-- `eq[0, A052414(n+1)-A007095(n)]` -/
def P8228763416911082666.Spec : Prop :=
  ∀ n, (P8228763416911082666.a n : ℤ) = A037472 n

end A037472

/-! ## A037472.P1831380486400435138

`A028904(A007092(n))`
-/

namespace A037472.P1831380486400435138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A007092 n).toNat

end

end A037472.P1831380486400435138

namespace A037472

/-- `A028904(A007092(n))` -/
def P1831380486400435138.Spec : Prop :=
  ∀ n, P1831380486400435138.a n = A037472 n

end A037472

/-! ## A037472.P3529856557598990862

`lt[A054055(A007095(n)), 6]`
-/

namespace A037472.P3529856557598990862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007095 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037472.P3529856557598990862

namespace A037472

/-- `lt[A054055(A007095(n)), 6]` -/
def P3529856557598990862.Spec : Prop :=
  ∀ n, (P3529856557598990862.a n : ℤ) = A037472 n

end A037472

/-! ## A037472.P4408680227045063147

`record[n+1-A194960(A055119(n)+1+n)]`
-/

namespace A037472.P4408680227045063147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A194960 (A055119 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037472.P4408680227045063147

namespace A037472

/-- `record[n+1-A194960(A055119(n)+1+n)]` -/
def P4408680227045063147.Spec : Prop :=
  ∀ n, P4408680227045063147.a n = A037472 n

end A037472

/-!
# A037474: a(n) = Sum{d(i)*8^i: i=0,1,...,m}, where Sum{d(i)*7^i: i=0,1,...,m} is the base 7 representation of n.

The programs for A037474, the canonical program `A037474.P6444879889403224104` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037474 has offset 0).

The definition of A037474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037474.P7302692979961845009

`comp[A337239(n+1)]`
-/

namespace A037474.P7302692979961845009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A037474.P7302692979961845009

namespace A037474

/-- `comp[A337239(n+1)]` -/
def P7302692979961845009.Spec : Prop :=
  ∀ n, (P7302692979961845009.a n : ℤ) = A037474 n

end A037474

/-! ## A037474.P6444879889403224104

`lt[A006530(A338881(n)), 6]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A037474

/-- `lt[A006530(A338881(n)), 6]` -/
def P6444879889403224104.Spec : Prop :=
  ∀ n, (P6444879889403224104.a n : ℤ) = A037474 n

theorem P6444879889403224104.correct : P6444879889403224104.Spec := by
  intro n
  simp only [A037474]

end A037474

/-! ## A037474.P10170281659125278501

`eq[A190597(n)%7, A190597(n)]`
-/

namespace A037474.P10170281659125278501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190597 n) 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037474.P10170281659125278501

namespace A037474

/-- `eq[A190597(n)%7, A190597(n)]` -/
def P10170281659125278501.Spec : Prop :=
  ∀ n, (P10170281659125278501.a n : ℤ) = A037474 n

end A037474

/-! ## A037474.P8028505717208747955

`lt[A319656(n), A319656(A319656(n)+1)]`
-/

namespace A037474.P8028505717208747955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319656 (A319656 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037474.P8028505717208747955

namespace A037474

/-- `lt[A319656(n), A319656(A319656(n)+1)]` -/
def P8028505717208747955.Spec : Prop :=
  ∀ n, (P8028505717208747955.a n : ℤ) = A037474 n

end A037474

/-! ## A037474.P11980743965557560255

`A028903(A007093(n))`
-/

namespace A037474.P11980743965557560255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A007093 n).toNat

end

end A037474.P11980743965557560255

namespace A037474

/-- `A028903(A007093(n))` -/
def P11980743965557560255.Spec : Prop :=
  ∀ n, P11980743965557560255.a n = A037474 n

end A037474

/-! ## A037474.P16282973330106360564

`lt[A054055(A007094(n)), 7]`
-/

namespace A037474.P16282973330106360564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007094 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037474.P16282973330106360564

namespace A037474

/-- `lt[A054055(A007094(n)), 7]` -/
def P16282973330106360564.Spec : Prop :=
  ∀ n, (P16282973330106360564.a n : ℤ) = A037474 n

end A037474

/-! ## A037474.P10964293411760892635

`eq[1, A004273(n)^A102679(A007094(n))]`
-/

namespace A037474.P10964293411760892635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004273 n : ℚ) ^ (A102679 (A007094 n).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A037474.P10964293411760892635

namespace A037474

/-- `eq[1, A004273(n)^A102679(A007094(n))]` -/
def P10964293411760892635.Spec : Prop :=
  ∀ n, (P10964293411760892635.a n : ℤ) = A037474 n

end A037474

/-! ## A037474.P9466976022580614796

`eq[1, A005843(n)^A102679(A007094(n))]`
-/

namespace A037474.P9466976022580614796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) ^ (A102679 (A007094 n).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A037474.P9466976022580614796

namespace A037474

/-- `eq[1, A005843(n)^A102679(A007094(n))]` -/
def P9466976022580614796.Spec : Prop :=
  ∀ n, (P9466976022580614796.a n : ℤ) = A037474 n

end A037474

/-! ## A037474.P7979184257481378238

`eq[1, A225523(n)^A102679(A007094(n))]`
-/

namespace A037474.P7979184257481378238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225523 n : ℚ) ^ (A102679 (A007094 n).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A037474.P7979184257481378238

namespace A037474

/-- `eq[1, A225523(n)^A102679(A007094(n))]` -/
def P7979184257481378238.Spec : Prop :=
  ∀ n, (P7979184257481378238.a n : ℤ) = A037474 n

end A037474

/-! ## A037474.P789526776191294242

`eq[1, A225523(n*A102679(A007094(n)))]`
-/

namespace A037474.P789526776191294242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225523 ((n : ℤ) * A102679 (A007094 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037474.P789526776191294242

namespace A037474

/-- `eq[1, A225523(n*A102679(A007094(n)))]` -/
def P789526776191294242.Spec : Prop :=
  ∀ n, (P789526776191294242.a n : ℤ) = A037474 n

end A037474

/-!
# A037475: a(n)=Sum{d(i)*9^i: i=0,1,...,m}, where Sum{d(i)*7^i: i=0,1,...,m} is the base 7 representation of n.

The programs for A037475, the canonical program `A037475.P14542776515784587610` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037475 has offset 0).

The definition of A037475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3675 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037475.P2243050318759325927

`A037477(A037474(n))`
-/

namespace A037475.P2243050318759325927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A037474 n).toNat

end

end A037475.P2243050318759325927

namespace A037475

/-- `A037477(A037474(n))` -/
def P2243050318759325927.Spec : Prop :=
  ∀ n, P2243050318759325927.a n = A037475 n

end A037475

/-! ## A037475.P7337268476397133613

`∩[A039111(n+1), A037477(n)]`
-/

namespace A037475.P7337268476397133613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037475.P7337268476397133613

namespace A037475

/-- `∩[A039111(n+1), A037477(n)]` -/
def P7337268476397133613.Spec : Prop :=
  ∀ n, (P7337268476397133613.a n : ℤ) = A037475 n

end A037475

/-! ## A037475.P14542776515784587610

`record[n-A105186(A002264(n))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037475

/-- `record[n-A105186(A002264(n))]` -/
def P14542776515784587610.Spec : Prop :=
  ∀ n, P14542776515784587610.a n = A037475 n

theorem P14542776515784587610.correct : P14542776515784587610.Spec := by
  intro n
  simp only [A037475]

end A037475

/-! ## A037475.P4431855327025827425

`A028904(A007093(n))`
-/

namespace A037475.P4431855327025827425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A007093 n).toNat

end

end A037475.P4431855327025827425

namespace A037475

/-- `A028904(A007093(n))` -/
def P4431855327025827425.Spec : Prop :=
  ∀ n, P4431855327025827425.a n = A037475 n

end A037475

/-! ## A037475.P4240798138393773738

`lt[A054055(A007095(n)), 7]`
-/

namespace A037475.P4240798138393773738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007095 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037475.P4240798138393773738

namespace A037475

/-- `lt[A054055(A007095(n)), 7]` -/
def P4240798138393773738.Spec : Prop :=
  ∀ n, (P4240798138393773738.a n : ℤ) = A037475 n

end A037475

/-! ## A037475.P15518965585918302247

`lt[A054055(A052419(n+1)), 7]`
-/

namespace A037475.P15518965585918302247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A052419 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037475.P15518965585918302247

namespace A037475

/-- `lt[A054055(A052419(n+1)), 7]` -/
def P15518965585918302247.Spec : Prop :=
  ∀ n, (P15518965585918302247.a n : ℤ) = A037475 n

end A037475

/-! ## A037475.P16656615095762844668

`record[n-A105186(A163327(n))]`
-/

namespace A037475.P16656615095762844668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A105186 (A163327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037475.P16656615095762844668

namespace A037475

/-- `record[n-A105186(A163327(n))]` -/
def P16656615095762844668.Spec : Prop :=
  ∀ n, P16656615095762844668.a n = A037475 n

end A037475

/-! ## A037475.P3689971980257186664

`eq[A052419(n+1), A222253(A007095(n))]`
-/

namespace A037475.P3689971980257186664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037475.P3689971980257186664

namespace A037475

/-- `eq[A052419(n+1), A222253(A007095(n))]` -/
def P3689971980257186664.Spec : Prop :=
  ∀ n, (P3689971980257186664.a n : ℤ) = A037475 n

end A037475

/-! ## A037475.P12278839895083459034

`eq[A052421(n+1), A222253(A007095(n))]`
-/

namespace A037475.P12278839895083459034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037475.P12278839895083459034

namespace A037475

/-- `eq[A052421(n+1), A222253(A007095(n))]` -/
def P12278839895083459034.Spec : Prop :=
  ∀ n, (P12278839895083459034.a n : ℤ) = A037475 n

end A037475

/-! ## A037475.P13481883372784771742

`eq[A052383(n+1), A222254(A052383(n+1))]`
-/

namespace A037475.P13481883372784771742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A052383 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037475.P13481883372784771742

namespace A037475

/-- `eq[A052383(n+1), A222254(A052383(n+1))]` -/
def P13481883372784771742.Spec : Prop :=
  ∀ n, (P13481883372784771742.a n : ℤ) = A037475 n

end A037475

/-! ## A037475.P10658000514960657748

`eq[A052406(n+1), A222254(A052406(n+1))]`
-/

namespace A037475.P10658000514960657748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A052406 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037475.P10658000514960657748

namespace A037475

/-- `eq[A052406(n+1), A222254(A052406(n+1))]` -/
def P10658000514960657748.Spec : Prop :=
  ∀ n, (P10658000514960657748.a n : ℤ) = A037475 n

end A037475

/-! ## A037475.P16632529020294646913

`eq[A052413(n+1), A222254(A052413(n+1))]`
-/

namespace A037475.P16632529020294646913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A052413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037475.P16632529020294646913

namespace A037475

/-- `eq[A052413(n+1), A222254(A052413(n+1))]` -/
def P16632529020294646913.Spec : Prop :=
  ∀ n, (P16632529020294646913.a n : ℤ) = A037475 n

end A037475

/-! ## A037475.P17368195419371407062

`eq[A052414(n+1), A222254(A052414(n+1))]`
-/

namespace A037475.P17368195419371407062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A052414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037475.P17368195419371407062

namespace A037475

/-- `eq[A052414(n+1), A222254(A052414(n+1))]` -/
def P17368195419371407062.Spec : Prop :=
  ∀ n, (P17368195419371407062.a n : ℤ) = A037475 n

end A037475

/-! ## A037475.P18307951915118155940

`eq[A052419(n+1), A222253(A052421(n+1))]`
-/

namespace A037475.P18307951915118155940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A052421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037475.P18307951915118155940

namespace A037475

/-- `eq[A052419(n+1), A222253(A052421(n+1))]` -/
def P18307951915118155940.Spec : Prop :=
  ∀ n, (P18307951915118155940.a n : ℤ) = A037475 n

end A037475

/-!
# A037477: a(n) = Sum{d(i)*9^i: i=0,1,...,m}, where Sum{d(i)*8^i: i=0,1,...,m} is the base 8 representation of n.

The programs for A037477, the canonical program `A037477.P15889330472557437891` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037477 has offset 0).

The definition of A037477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037477.P4317339621471527267

`comp[A338090(n+1)]`
-/

namespace A037477.P4317339621471527267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A037477.P4317339621471527267

namespace A037477

/-- `comp[A338090(n+1)]` -/
def P4317339621471527267.Spec : Prop :=
  ∀ n, (P4317339621471527267.a n : ℤ) = A037477 n

end A037477

/-! ## A037477.P4851611879475679317

`eq[0, A292373(A289814(n))]`
-/

namespace A037477.P4851611879475679317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A289814 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037477.P4851611879475679317

namespace A037477

/-- `eq[0, A292373(A289814(n))]` -/
def P4851611879475679317.Spec : Prop :=
  ∀ n, (P4851611879475679317.a n : ℤ) = A037477 n

end A037477

/-! ## A037477.P15889330472557437891

`eq[0, xor(A007095(n), A052421(n+1))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037477

/-- `eq[0, xor(A007095(n), A052421(n+1))]` -/
def P15889330472557437891.Spec : Prop :=
  ∀ n, (P15889330472557437891.a n : ℤ) = A037477 n

theorem P15889330472557437891.correct : P15889330472557437891.Spec := by
  intro n
  simp only [A037477]

end A037477

/-! ## A037477.P3895896256224954179

`eq[A053830(n), A326746(A052421(n+1))]`
-/

namespace A037477.P3895896256224954179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A052421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037477.P3895896256224954179

namespace A037477

/-- `eq[A053830(n), A326746(A052421(n+1))]` -/
def P3895896256224954179.Spec : Prop :=
  ∀ n, (P3895896256224954179.a n : ℤ) = A037477 n

end A037477

/-! ## A037477.P13563283960715588860

`lt[A000203(n+1)*A292373(A289814(n)), 1]`
-/

namespace A037477.P13563283960715588860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A292373 (A289814 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037477.P13563283960715588860

namespace A037477

/-- `lt[A000203(n+1)*A292373(A289814(n)), 1]` -/
def P13563283960715588860.Spec : Prop :=
  ∀ n, (P13563283960715588860.a n : ℤ) = A037477 n

end A037477

/-! ## A037477.P10666169732619313630

`lt[(A008592(n)+1)*A292373(A289814(n)), 1]`
-/

namespace A037477.P10666169732619313630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008592 n + 1) * A292373 (A289814 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037477.P10666169732619313630

namespace A037477

/-- `lt[(A008592(n)+1)*A292373(A289814(n)), 1]` -/
def P10666169732619313630.Spec : Prop :=
  ∀ n, (P10666169732619313630.a n : ℤ) = A037477 n

end A037477

/-! ## A037477.P8859329820516244969

`lt[A020942(n+1)*A292373(A289814(n)), 1]`
-/

namespace A037477.P8859329820516244969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 1) * A292373 (A289814 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037477.P8859329820516244969

namespace A037477

/-- `lt[A020942(n+1)*A292373(A289814(n)), 1]` -/
def P8859329820516244969.Spec : Prop :=
  ∀ n, (P8859329820516244969.a n : ℤ) = A037477 n

end A037477

/-! ## A037477.P5726507035253775855

`lt[A064413(n+1)*A292373(A289814(n)), 1]`
-/

namespace A037477.P5726507035253775855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1) * A292373 (A289814 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037477.P5726507035253775855

namespace A037477

/-- `lt[A064413(n+1)*A292373(A289814(n)), 1]` -/
def P5726507035253775855.Spec : Prop :=
  ∀ n, (P5726507035253775855.a n : ℤ) = A037477 n

end A037477

/-! ## A037477.P5198304704603517328

`lt[A112928(n+1)*A292373(A289814(n)), 1]`
-/

namespace A037477.P5198304704603517328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112928 (n + 1) * A292373 (A289814 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037477.P5198304704603517328

namespace A037477

/-- `lt[A112928(n+1)*A292373(A289814(n)), 1]` -/
def P5198304704603517328.Spec : Prop :=
  ∀ n, (P5198304704603517328.a n : ℤ) = A037477 n

end A037477

/-! ## A037477.P6690601990213935159

`lt[A161560(n+1)*A292373(A289814(n)), 1]`
-/

namespace A037477.P6690601990213935159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161560 (n + 1) * A292373 (A289814 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037477.P6690601990213935159

namespace A037477

/-- `lt[A161560(n+1)*A292373(A289814(n)), 1]` -/
def P6690601990213935159.Spec : Prop :=
  ∀ n, (P6690601990213935159.a n : ℤ) = A037477 n

end A037477

/-! ## A037477.P17356320772687844456

`lt[5*A109613(n)*A292373(A289814(n)), 1]`
-/

namespace A037477.P17356320772687844456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A109613 n * A292373 (A289814 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037477.P17356320772687844456

namespace A037477

/-- `lt[5*A109613(n)*A292373(A289814(n)), 1]` -/
def P17356320772687844456.Spec : Prop :=
  ∀ n, (P17356320772687844456.a n : ℤ) = A037477 n

end A037477

/-! ## A037477.P17041665125242121811

`eq[A052421(n+1)%A007095(n+1), A007095(n)]`
-/

namespace A037477.P17041665125242121811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052421 (n + 1)) (A007095 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037477.P17041665125242121811

namespace A037477

/-- `eq[A052421(n+1)%A007095(n+1), A007095(n)]` -/
def P17041665125242121811.Spec : Prop :=
  ∀ n, (P17041665125242121811.a n : ℤ) = A037477 n

end A037477

/-! ## A037477.P13761244542543715128

`A028904(A007094(n))`
-/

namespace A037477.P13761244542543715128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A007094 n).toNat

end

end A037477.P13761244542543715128

namespace A037477

/-- `A028904(A007094(n))` -/
def P13761244542543715128.Spec : Prop :=
  ∀ n, P13761244542543715128.a n = A037477 n

end A037477

/-! ## A037477.P8366346912699437789

`lt[A054055(A007095(n)), 8]`
-/

namespace A037477.P8366346912699437789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007095 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037477.P8366346912699437789

namespace A037477

/-- `lt[A054055(A007095(n)), 8]` -/
def P8366346912699437789.Spec : Prop :=
  ∀ n, (P8366346912699437789.a n : ℤ) = A037477 n

end A037477

/-! ## A037477.P4731893613754921790

`eq[A007095(n), A103205(A052421(n+1))]`
-/

namespace A037477.P4731893613754921790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (A052421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037477.P4731893613754921790

namespace A037477

/-- `eq[A007095(n), A103205(A052421(n+1))]` -/
def P4731893613754921790.Spec : Prop :=
  ∀ n, (P4731893613754921790.a n : ℤ) = A037477 n

end A037477

/-! ## A037477.P14739978434879986801

`eq[A051801(A052421(n+1)), A338882(n)]`
-/

namespace A037477.P14739978434879986801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A052421 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037477.P14739978434879986801

namespace A037477

/-- `eq[A051801(A052421(n+1)), A338882(n)]` -/
def P14739978434879986801.Spec : Prop :=
  ∀ n, (P14739978434879986801.a n : ℤ) = A037477 n

end A037477

/-! ## A037477.P12578440424919312833

`eq[A052419(n+1), A222252(A007095(n))]`
-/

namespace A037477.P12578440424919312833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037477.P12578440424919312833

namespace A037477

/-- `eq[A052419(n+1), A222252(A007095(n))]` -/
def P12578440424919312833.Spec : Prop :=
  ∀ n, (P12578440424919312833.a n : ℤ) = A037477 n

end A037477

/-! ## A037477.P15655114212095220402

`eq[A052383(n+1), A222226(A052383(n+1))]`
-/

namespace A037477.P15655114212095220402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (A052383 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037477.P15655114212095220402

namespace A037477

/-- `eq[A052383(n+1), A222226(A052383(n+1))]` -/
def P15655114212095220402.Spec : Prop :=
  ∀ n, (P15655114212095220402.a n : ℤ) = A037477 n

end A037477

/-! ## A037477.P3691691804187276011

`eq[A052413(n+1), A222248(A052413(n+1))]`
-/

namespace A037477.P3691691804187276011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A052413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037477.P3691691804187276011

namespace A037477

/-- `eq[A052413(n+1), A222248(A052413(n+1))]` -/
def P3691691804187276011.Spec : Prop :=
  ∀ n, (P3691691804187276011.a n : ℤ) = A037477 n

end A037477

/-! ## A037477.P9512058362742760212

`eq[A052414(n+1), A222251(A052414(n+1))]`
-/

namespace A037477.P9512058362742760212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A052414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037477.P9512058362742760212

namespace A037477

/-- `eq[A052414(n+1), A222251(A052414(n+1))]` -/
def P9512058362742760212.Spec : Prop :=
  ∀ n, (P9512058362742760212.a n : ℤ) = A037477 n

end A037477

/-!
# A037478: Number of positive solutions to "numbers that are n times sum of their digits".

The programs for A037478, there is no canonical definition to state claims against.
-/

/-! ## A037478.P17468108291082332128

`A101605(A284008(n))+gcd(9, n)`
-/

namespace A037478.P17468108291082332128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (A284008 n).toNat + (Nat.gcd 9 n : ℤ)

end

end A037478.P17468108291082332128

/-! ## A037478.P6217939794873032720

`A109012(n)+A101605(A284008(n))`
-/

namespace A037478.P6217939794873032720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109012 n + A101605 (A284008 n).toNat

end

end A037478.P6217939794873032720

/-! ## A037478.P12839803481291772055

`A109017(A333379(3*n+1))+A109012(n)`
-/

namespace A037478.P12839803481291772055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109017 (A333379 (3 * n + 1)).toNat + A109012 n

end

end A037478.P12839803481291772055

/-! ## A037478.P7486447793945951695

`A109012(n)+A010051(A107253(n+1))`
-/

namespace A037478.P7486447793945951695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109012 n + A010051 (A107253 (n + 1)).toNat

end

end A037478.P7486447793945951695

/-! ## A037478.P2699291800451638878

`A109012(n)+A036987(A000040(A002083(n+1)))`
-/

namespace A037478.P2699291800451638878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109012 n + A036987 (A000040 (A002083 (n + 1)).toNat).toNat

end

end A037478.P2699291800451638878

/-!
# A037479: a(n)=Sum{d(i)*10^i: i=0,1,...,m}, where Sum{d(i)*9^i: i=0,1,...,m} is the base 9 representation of n.

The programs for A037479, the canonical program `A037479.P5811322619123370596` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037479 has offset 1).

The definition of A037479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037479.P5811322619123370596

`A007095(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037479

/-- `A007095(n+1)` -/
def P5811322619123370596.Spec : Prop :=
  ∀ n, P5811322619123370596.a n = A037479 (n + 1)

theorem P5811322619123370596.correct : P5811322619123370596.Spec := by
  intro n
  simp only [A037479, Nat.add_sub_cancel]

end A037479

/-! ## A037479.P14131728536472616244

`∑[abs(Δ[A007095(n)])]`
-/

namespace A037479.P14131728536472616244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037479.P14131728536472616244

namespace A037479

/-- `∑[abs(Δ[A007095(n)])]` -/
def P14131728536472616244.Spec : Prop :=
  ∀ n, P14131728536472616244.a n = A037479 (n + 1)

end A037479

/-! ## A037479.P8076934140666094546

`record[A007095(abs(1-n))]`
-/

namespace A037479.P8076934140666094546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037479.P8076934140666094546

namespace A037479

/-- `record[A007095(abs(1-n))]` -/
def P8076934140666094546.Spec : Prop :=
  ∀ n, P8076934140666094546.a n = A037479 (n + 1)

end A037479

/-! ## A037479.P16725589143587264264

`record[A004728(n+1)]`
-/

namespace A037479.P16725589143587264264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037479.P16725589143587264264

namespace A037479

/-- `record[A004728(n+1)]` -/
def P16725589143587264264.Spec : Prop :=
  ∀ n, P16725589143587264264.a n = A037479 (n + 1)

end A037479

/-! ## A037479.P12360839078912323901

`record[A004184(n+1)]`
-/

namespace A037479.P12360839078912323901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037479.P12360839078912323901

namespace A037479

/-- `record[A004184(n+1)]` -/
def P12360839078912323901.Spec : Prop :=
  ∀ n, P12360839078912323901.a n = A037479 (n + 1)

end A037479

/-! ## A037479.P6273078544415829368

`record[A235049(n+2)]`
-/

namespace A037479.P6273078544415829368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037479.P6273078544415829368

namespace A037479

/-- `record[A235049(n+2)]` -/
def P6273078544415829368.Spec : Prop :=
  ∀ n, P6273078544415829368.a n = A037479 (n + 1)

end A037479

/-! ## A037479.P14884969327101583440

`eq[n, A028310(A004184(n))]`
-/

namespace A037479.P14884969327101583440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004184 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037479.P14884969327101583440

namespace A037479

/-- `eq[n, A028310(A004184(n))]` -/
def P14884969327101583440.Spec : Prop :=
  ∀ n, (P14884969327101583440.a n : ℤ) = A037479 (n + 1)

end A037479

/-! ## A037479.P3046910019953027184

`∑[A109855(Δ[A007095(n)])]`
-/

namespace A037479.P3046910019953027184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109855 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037479.P3046910019953027184

namespace A037479

/-- `∑[A109855(Δ[A007095(n)])]` -/
def P3046910019953027184.Spec : Prop :=
  ∀ n, P3046910019953027184.a n = A037479 (n + 1)

end A037479

/-! ## A037479.P18212795030899713822

`eq[A102683(n), A151909(n)]`
-/

namespace A037479.P18212795030899713822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037479.P18212795030899713822

namespace A037479

/-- `eq[A102683(n), A151909(n)]` -/
def P18212795030899713822.Spec : Prop :=
  ∀ n, (P18212795030899713822.a n : ℤ) = A037479 (n + 1)

end A037479

/-! ## A037479.P1716233431676701003

`eq[A102683(n), A151933(n)]`
-/

namespace A037479.P1716233431676701003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037479.P1716233431676701003

namespace A037479

/-- `eq[A102683(n), A151933(n)]` -/
def P1716233431676701003.Spec : Prop :=
  ∀ n, (P1716233431676701003.a n : ℤ) = A037479 (n + 1)

end A037479

/-!
# A037480: Base-3 digits are, in order, the first n terms of the periodic sequence with initial period 1,2.

The programs for A037480, the canonical program `A037480.P5278072409334160727` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037480 has offset 1).

The definition of A037480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037480.P5278072409334160727

`2*a(n-1)+3*a(n-2)+3` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037480

/-- `2*a(n-1)+3*a(n-2)+3` -/
def P5278072409334160727.Spec : Prop :=
  ∀ n, (P5278072409334160727.a n : ℤ) = A037480 (n + 1)

theorem P5278072409334160727.correct : P5278072409334160727.Spec := by
  intro n
  simp only [A037480, Nat.add_sub_cancel]

end A037480

/-! ## A037480.P7919690156957750971

`(5*3^(n+1)+(-1)^(n+1)-6)/8`
-/

namespace A037480.P7919690156957750971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 3 ^ (n + 1) : ℤ) + (-1) ^ (n + 1) - 6 : ℚ) / 8

end

end A037480.P7919690156957750971

namespace A037480

/-- `(5*3^(n+1)+(-1)^(n+1)-6)/8` -/
def P7919690156957750971.Spec : Prop :=
  ∀ n, P7919690156957750971.a n = (A037480 (n + 1) : ℚ)

theorem P7919690156957750971.correct : P7919690156957750971.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A037480, Nat.add_sub_cancel, A037480.P7919690156957750971.a, A037480.P5278072409334160727.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A037480, Nat.add_sub_cancel, A037480.P7919690156957750971.a, A037480.P5278072409334160727.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A037480

/-! ## A037480.P13823630419609151385

`ogf((1+2x)/(1-3x-x^2+3x^3))`
-/

namespace A037480.P13823630419609151385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -3, -1, 3] n

end

end A037480.P13823630419609151385

namespace A037480

/-- `ogf((1+2x)/(1-3x-x^2+3x^3))` -/
def P13823630419609151385.Spec : Prop :=
  ∀ n, P13823630419609151385.a n = A037480 (n + 1)

end A037480

/-! ## A037480.P546665571663252634

`∑[3*a(n-1)-(-1)^n]` with `a(0)=1`
-/

namespace A037480.P546665571663252634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037480.P546665571663252634

namespace A037480

/-- `∑[3*a(n-1)-(-1)^n]` -/
def P546665571663252634.Spec : Prop :=
  ∀ n, P546665571663252634.a n = A037480 (n + 1)

end A037480

/-! ## A037480.P3596896872607517616

`3*a(n-1)+n%2+1` with `a(0)=1`
-/

namespace A037480.P3596896872607517616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (n % 2 + 1)

end

end A037480.P3596896872607517616

namespace A037480

/-- `3*a(n-1)+n%2+1` -/
def P3596896872607517616.Spec : Prop :=
  ∀ n, (P3596896872607517616.a n : ℤ) = A037480 (n + 1)

end A037480

/-! ## A037480.P9101346145596529993

`gcd(2, n+1)+3*a(n-1)` with `a(0)=1`
-/

namespace A037480.P9101346145596529993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 2 (n + 1) + 3 * a (n - 1)

end

end A037480.P9101346145596529993

namespace A037480

/-- `gcd(2, n+1)+3*a(n-1)` -/
def P9101346145596529993.Spec : Prop :=
  ∀ n, (P9101346145596529993.a n : ℤ) = A037480 (n + 1)

end A037480

/-! ## A037480.P17705968596028269099

`a(n-1)+round(5*3^n/4)` with `a(0)=1`
-/

namespace A037480.P17705968596028269099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + SequenceMachineLib.roundAway (5 * ((3 ^ n : ℚ) / 4))

end

end A037480.P17705968596028269099

namespace A037480

/-- `a(n-1)+round(5*3^n/4)` -/
def P17705968596028269099.Spec : Prop :=
  ∀ n, P17705968596028269099.a n = A037480 (n + 1)

end A037480

/-! ## A037480.P16652607931267875297

`3*a(n-1)+2-char[2*n]` with `a(0)=1`
-/

namespace A037480.P16652607931267875297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A037480.P16652607931267875297

namespace A037480

/-- `3*a(n-1)+2-char[2*n]` -/
def P16652607931267875297.Spec : Prop :=
  ∀ n, P16652607931267875297.a n = A037480 (n + 1)

end A037480

/-! ## A037480.P4232444822672483388

`record[3*a(n-2)]+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A037480.P4232444822672483388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 2)

end

end A037480.P4232444822672483388

namespace A037480

/-- `record[3*a(n-2)]+a(n-2)` -/
def P4232444822672483388.Spec : Prop :=
  ∀ n, (P4232444822672483388.a n : ℤ) = A037480 (n + 1)

end A037480

/-! ## A037480.P2754374663598282340

`3-(a(n-1)%3-3*a(n-1))` with `a(0)=1`
-/

namespace A037480.P2754374663598282340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - (Int.tmod (a (n - 1)) 3 - 3 * a (n - 1))

end

end A037480.P2754374663598282340

namespace A037480

/-- `3-(a(n-1)%3-3*a(n-1))` -/
def P2754374663598282340.Spec : Prop :=
  ∀ n, P2754374663598282340.a n = A037480 (n + 1)

end A037480

/-! ## A037480.P14311057763443642408

`∑[A060925(n)]`
-/

namespace A037480.P14311057763443642408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037480.P14311057763443642408

namespace A037480

/-- `∑[A060925(n)]` -/
def P14311057763443642408.Spec : Prop :=
  ∀ n, P14311057763443642408.a n = A037480 (n + 1)

end A037480

/-! ## A037480.P15332438675347018050

`A153773(n+2)-1`
-/

namespace A037480.P15332438675347018050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153773 (n + 2) - 1

end

end A037480.P15332438675347018050

namespace A037480

/-- `A153773(n+2)-1` -/
def P15332438675347018050.Spec : Prop :=
  ∀ n, P15332438675347018050.a n = A037480 (n + 1)

end A037480

/-! ## A037480.P13943983673655576912

`∑[∑[or(1, A060816(n))]]`
-/

namespace A037480.P13943983673655576912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060816 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037480.P13943983673655576912

namespace A037480

/-- `∑[∑[or(1, A060816(n))]]` -/
def P13943983673655576912.Spec : Prop :=
  ∀ n, P13943983673655576912.a n = A037480 (n + 1)

end A037480

/-! ## A037480.P4053884029978564742

`∑[A015518(n)+3^n]`
-/

namespace A037480.P4053884029978564742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n + (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037480.P4053884029978564742

namespace A037480

/-- `∑[A015518(n)+3^n]` -/
def P4053884029978564742.Spec : Prop :=
  ∀ n, P4053884029978564742.a n = A037480 (n + 1)

end A037480

/-! ## A037480.P10933626462371834296

`A176895(2*n)+3*a(n-1)` with `a(0)=1`
-/

namespace A037480.P10933626462371834296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A176895 (2 * n) + 3 * a (n - 1)

end

end A037480.P10933626462371834296

namespace A037480

/-- `A176895(2*n)+3*a(n-1)` -/
def P10933626462371834296.Spec : Prop :=
  ∀ n, P10933626462371834296.a n = A037480 (n + 1)

end A037480

/-! ## A037480.P8885965047878893590

`A039300(n)+A029858(n+1)`
-/

namespace A037480.P8885965047878893590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 n + A029858 (n + 1)

end

end A037480.P8885965047878893590

namespace A037480

/-- `A039300(n)+A029858(n+1)` -/
def P8885965047878893590.Spec : Prop :=
  ∀ n, P8885965047878893590.a n = A037480 (n + 1)

end A037480

/-! ## A037480.P3088693594133424372

`A080926(n)+A006342(n+1)`
-/

namespace A037480.P3088693594133424372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080926 n + A006342 (n + 1)

end

end A037480.P3088693594133424372

namespace A037480

/-- `A080926(n)+A006342(n+1)` -/
def P3088693594133424372.Spec : Prop :=
  ∀ n, P3088693594133424372.a n = A037480 (n + 1)

end A037480

/-! ## A037480.P18271310118046018735

`A153774(n+1)+A024023(n)`
-/

namespace A037480.P18271310118046018735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153774 (n + 1) + A024023 n

end

end A037480.P18271310118046018735

namespace A037480

/-- `A153774(n+1)+A024023(n)` -/
def P18271310118046018735.Spec : Prop :=
  ∀ n, P18271310118046018735.a n = A037480 (n + 1)

end A037480

/-! ## A037480.P1910247178952335190

`A178222(n+1)+A047926(n)`
-/

namespace A037480.P1910247178952335190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178222 (n + 1) + A047926 n

end

end A037480.P1910247178952335190

namespace A037480

/-- `A178222(n+1)+A047926(n)` -/
def P1910247178952335190.Spec : Prop :=
  ∀ n, P1910247178952335190.a n = A037480 (n + 1)

end A037480

/-! ## A037480.P9916812537766756291

`A153774(n+1)+A000244(n)-1`
-/

namespace A037480.P9916812537766756291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153774 (n + 1) + (A000244 n - 1)

end

end A037480.P9916812537766756291

namespace A037480

/-- `A153774(n+1)+A000244(n)-1` -/
def P9916812537766756291.Spec : Prop :=
  ∀ n, P9916812537766756291.a n = A037480 (n + 1)

end A037480

/-!
# A037481: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 1,2.

The programs for A037481, the canonical program `A037481.P10494666032556963771` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037481 has offset 0).

The definition of A037481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037481.P10494666032556963771

`4*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037481

/-- `4*a(n-1)+a(n-2)-4*a(n-3)` -/
def P10494666032556963771.Spec : Prop :=
  ∀ n, P10494666032556963771.a n = A037481 n

theorem P10494666032556963771.correct : P10494666032556963771.Spec := by
  intro n
  simp only [A037481]

end A037481

/-! ## A037481.P17713251459762680591

`((4^(n+1)-(-1)^(n+1))/5-1)/2`
-/

namespace A037481.P17713251459762680591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((4 ^ (n + 1) : ℤ) - (-1) ^ (n + 1) : ℚ) / 5 - 1) / 2

end

end A037481.P17713251459762680591

namespace A037481

/-- `((4^(n+1)-(-1)^(n+1))/5-1)/2` -/
def P17713251459762680591.Spec : Prop :=
  ∀ n, P17713251459762680591.a n = (A037481 n : ℚ)

theorem P17713251459762680591.correct : P17713251459762680591.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A037481, Nat.add_sub_cancel, A037481.P17713251459762680591.a, A037481.P10494666032556963771.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A037481, Nat.add_sub_cancel, A037481.P17713251459762680591.a, A037481.P10494666032556963771.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A037481

/-! ## A037481.P17314298333981999763

`ogf((x+2x^2)/(1-4x-x^2+4x^3))`
-/

namespace A037481.P17314298333981999763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, -4, -1, 4] n

end

end A037481.P17314298333981999763

namespace A037481

/-- `ogf((x+2x^2)/(1-4x-x^2+4x^3))` -/
def P17314298333981999763.Spec : Prop :=
  ∀ n, P17314298333981999763.a n = A037481 n

end A037481

/-! ## A037481.P8691428768440226266

`gcd(2, n)+4*a(n-1)` with `a(0)=0`
-/

namespace A037481.P8691428768440226266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.gcd 2 n + 4 * a (n - 1)

end

end A037481.P8691428768440226266

namespace A037481

/-- `gcd(2, n)+4*a(n-1)` -/
def P8691428768440226266.Spec : Prop :=
  ∀ n, (P8691428768440226266.a n : ℤ) = A037481 n

end A037481

/-! ## A037481.P8724016027958228058

`4^n/2-(a(n-1)+1)` with `a(0)=0`
-/

namespace A037481.P8724016027958228058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (4 ^ n : ℚ) / 2 - (a (n - 1) + 1)

end

end A037481.P8724016027958228058

namespace A037481

/-- `4^n/2-(a(n-1)+1)` -/
def P8724016027958228058.Spec : Prop :=
  ∀ n, P8724016027958228058.a n = (A037481 n : ℚ)

end A037481

/-! ## A037481.P12007563541180151656

`4^n/2-1-a(n-1)` with `a(0)=0`
-/

namespace A037481.P12007563541180151656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (4 ^ n : ℚ) / 2 - 1 - a (n - 1)

end

end A037481.P12007563541180151656

namespace A037481

/-- `4^n/2-1-a(n-1)` -/
def P12007563541180151656.Spec : Prop :=
  ∀ n, P12007563541180151656.a n = (A037481 n : ℚ)

end A037481

/-! ## A037481.P6473377575519231406

`4*a(n-1)+2-n%2` with `a(0)=0`
-/

namespace A037481.P6473377575519231406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * a (n - 1) + (2 - ((n % 2 : ℕ) : ℤ))

end

end A037481.P6473377575519231406

namespace A037481

/-- `4*a(n-1)+2-n%2` -/
def P6473377575519231406.Spec : Prop :=
  ∀ n, P6473377575519231406.a n = A037481 n

end A037481

/-! ## A037481.P18349173150034424568

`3*(a(n-1)+1)+4*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A037481.P18349173150034424568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (a (n - 1) + 1) + 4 * a (n - 2)

end

end A037481.P18349173150034424568

namespace A037481

/-- `3*(a(n-1)+1)+4*a(n-2)` -/
def P18349173150034424568.Spec : Prop :=
  ∀ n, (P18349173150034424568.a n : ℤ) = A037481 n

end A037481

/-! ## A037481.P3214503880650803421

`3-(gcd(4, a(n-1))-4*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A037481.P3214503880650803421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 - ((Int.gcd 4 (a (n - 1)) : ℤ) - 4 * a (n - 1))

end

end A037481.P3214503880650803421

namespace A037481

/-- `3-(gcd(4, a(n-1))-4*a(n-1))` -/
def P3214503880650803421.Spec : Prop :=
  ∀ n, P3214503880650803421.a n = A037481 n

end A037481

/-! ## A037481.P7777035269558573767

`A363773(n)-1`
-/

namespace A037481.P7777035269558573767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363773 n - 1

end

end A037481.P7777035269558573767

namespace A037481

/-- `A363773(n)-1` -/
def P7777035269558573767.Spec : Prop :=
  ∀ n, P7777035269558573767.a n = A037481 n

theorem P7777035269558573767.correct : P7777035269558573767.Spec := by
  intro n
  simp only [A037481, Nat.add_sub_cancel, A037481.P7777035269558573767.a, A037481.P10494666032556963771.a, A363773, A363773.P7965947977853477985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037481

/-! ## A037481.P11203879044894671532

`Δ[A368346(2*n)]`
-/

namespace A037481.P11203879044894671532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368346 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037481.P11203879044894671532

namespace A037481

/-- `Δ[A368346(2*n)]` -/
def P11203879044894671532.Spec : Prop :=
  ∀ n, P11203879044894671532.a n = A037481 n

end A037481

/-! ## A037481.P299203587652491678

`A256494(2*(n+1))-1`
-/

namespace A037481.P299203587652491678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256494 (2 * (n + 1)) - 1

end

end A037481.P299203587652491678

namespace A037481

/-- `A256494(2*(n+1))-1` -/
def P299203587652491678.Spec : Prop :=
  ∀ n, P299203587652491678.a n = A037481 n

end A037481

/-! ## A037481.P3902499811136170633

`A102900(n)-A059841(n)`
-/

namespace A037481.P3902499811136170633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102900 n - A059841 n

end

end A037481.P3902499811136170633

namespace A037481

/-- `A102900(n)-A059841(n)` -/
def P3902499811136170633.Spec : Prop :=
  ∀ n, P3902499811136170633.a n = A037481 n

end A037481

/-! ## A037481.P9614365344658399551

`A267036(n)-A122117(n)`
-/

namespace A037481.P9614365344658399551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267036 n - A122117 n

end

end A037481.P9614365344658399551

namespace A037481

/-- `A267036(n)-A122117(n)` -/
def P9614365344658399551.Spec : Prop :=
  ∀ n, P9614365344658399551.a n = A037481 n

end A037481

/-! ## A037481.P7172000438726393497

`xor(A102865(n), A126019(n))`
-/

namespace A037481.P7172000438726393497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102865 n) (A126019 n)

end

end A037481.P7172000438726393497

namespace A037481

/-- `xor(A102865(n), A126019(n))` -/
def P7172000438726393497.Spec : Prop :=
  ∀ n, P7172000438726393497.a n = A037481 n

end A037481

/-! ## A037481.P3989991251163138965

`xor(A010684(n), A363773(n))`
-/

namespace A037481.P3989991251163138965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A363773 n)

end

end A037481.P3989991251163138965

namespace A037481

/-- `xor(A010684(n), A363773(n))` -/
def P3989991251163138965.Spec : Prop :=
  ∀ n, P3989991251163138965.a n = A037481 n

end A037481

/-! ## A037481.P4891813580706397315

`A033114(n+1)-A007583(n)`
-/

namespace A037481.P4891813580706397315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033114 (n + 1) - A007583 n

end

end A037481.P4891813580706397315

namespace A037481

/-- `A033114(n+1)-A007583(n)` -/
def P4891813580706397315.Spec : Prop :=
  ∀ n, P4891813580706397315.a n = A037481 n

end A037481

/-! ## A037481.P4942934963963026161

`A113876(n+1)%A363773(n)`
-/

namespace A037481.P4942934963963026161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113876 (n + 1)) (A363773 n)

end

end A037481.P4942934963963026161

namespace A037481

/-- `A113876(n+1)%A363773(n)` -/
def P4942934963963026161.Spec : Prop :=
  ∀ n, P4942934963963026161.a n = A037481 n

end A037481

/-! ## A037481.P6161846083597375920

`A007909(2*n)-A133872(2*n)`
-/

namespace A037481.P6161846083597375920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (2 * n) - A133872 (2 * n)

end

end A037481.P6161846083597375920

namespace A037481

/-- `A007909(2*n)-A133872(2*n)` -/
def P6161846083597375920.Spec : Prop :=
  ∀ n, P6161846083597375920.a n = A037481 n

end A037481

/-!
# A037482: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,2.

The programs for A037482, the canonical program `A037482.P2219289928729598603` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037482 has offset 1).

The definition of A037482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037482.P2219289928729598603

`5*a(n-1)+a(n-2)-5*a(n-3)` with `a(0)=1, a(1)=7, a(2)=36`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037482

/-- `5*a(n-1)+a(n-2)-5*a(n-3)` -/
def P2219289928729598603.Spec : Prop :=
  ∀ n, P2219289928729598603.a n = A037482 (n + 1)

theorem P2219289928729598603.correct : P2219289928729598603.Spec := by
  intro n
  simp only [A037482, Nat.add_sub_cancel]

end A037482

/-! ## A037482.P7758090858803628987

`(-1)^(n+1)/12-3/8+7*5^(n+1)/24`
-/

namespace A037482.P7758090858803628987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (n + 1) : ℚ) / 12 - (3 : ℚ) / 8 + (7 * 5 ^ (n + 1) : ℚ) / 24

end

end A037482.P7758090858803628987

namespace A037482

/-- `(-1)^(n+1)/12-3/8+7*5^(n+1)/24` -/
def P7758090858803628987.Spec : Prop :=
  ∀ n, P7758090858803628987.a n = (A037482 (n + 1) : ℚ)

theorem P7758090858803628987.correct : P7758090858803628987.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A037482, Nat.add_sub_cancel, A037482.P7758090858803628987.a, A037482.P2219289928729598603.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A037482, Nat.add_sub_cancel, A037482.P7758090858803628987.a, A037482.P2219289928729598603.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A037482

/-! ## A037482.P9781459695077140345

`ogf((1+2x)/(1-5x-x^2+5x^3))`
-/

namespace A037482.P9781459695077140345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -5, -1, 5] n

end

end A037482.P9781459695077140345

namespace A037482

/-- `ogf((1+2x)/(1-5x-x^2+5x^3))` -/
def P9781459695077140345.Spec : Prop :=
  ∀ n, P9781459695077140345.a n = A037482 (n + 1)

end A037482

/-! ## A037482.P10982472175971040467

`∑[xor(3, 5*a(n-1))]` with `a(0)=1`
-/

namespace A037482.P10982472175971040467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor 3 (5 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037482.P10982472175971040467

namespace A037482

/-- `∑[xor(3, 5*a(n-1))]` -/
def P10982472175971040467.Spec : Prop :=
  ∀ n, (P10982472175971040467.a n : ℤ) = A037482 (n + 1)

end A037482

/-! ## A037482.P3800389099619710805

`∑[xor(3, lcm(5, a(n-1)))]` with `a(0)=1`
-/

namespace A037482.P3800389099619710805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor 3 (Nat.lcm 5 (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037482.P3800389099619710805

namespace A037482

/-- `∑[xor(3, lcm(5, a(n-1)))]` -/
def P3800389099619710805.Spec : Prop :=
  ∀ n, (P3800389099619710805.a n : ℤ) = A037482 (n + 1)

end A037482

/-! ## A037482.P2820915932896644091

`∑[A108982(n)]`
-/

namespace A037482.P2820915932896644091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037482.P2820915932896644091

namespace A037482

/-- `∑[A108982(n)]` -/
def P2820915932896644091.Spec : Prop :=
  ∀ n, P2820915932896644091.a n = A037482 (n + 1)

end A037482

/-!
# A037483: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,2.

The programs for A037483, the canonical program `A037483.P10990877128170278243` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037483 has offset 1).

The definition of A037483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037483.P10990877128170278243

`5*a(n-1)+6*a(n-2)+3` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037483

/-- `5*a(n-1)+6*a(n-2)+3` -/
def P10990877128170278243.Spec : Prop :=
  ∀ n, (P10990877128170278243.a n : ℤ) = A037483 (n + 1)

theorem P10990877128170278243.correct : P10990877128170278243.Spec := by
  intro n
  simp only [A037483, Nat.add_sub_cancel]

end A037483

/-! ## A037483.P8708533737167815978

`floor(8*6^(n+1)/35)`
-/

namespace A037483.P8708533737167815978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 * 6 ^ (n + 1) : ℚ) / 35⌋

end

end A037483.P8708533737167815978

namespace A037483

/-- `floor(8*6^(n+1)/35)` -/
def P8708533737167815978.Spec : Prop :=
  ∀ n, P8708533737167815978.a n = A037483 (n + 1)

end A037483

/-! ## A037483.P5906210303312762039

`ogf((1+2x)/(1-6x-x^2+6x^3))`
-/

namespace A037483.P5906210303312762039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -6, -1, 6] n

end

end A037483.P5906210303312762039

namespace A037483

/-- `ogf((1+2x)/(1-6x-x^2+6x^3))` -/
def P5906210303312762039.Spec : Prop :=
  ∀ n, P5906210303312762039.a n = A037483 (n + 1)

end A037483

/-! ## A037483.P4933741973441194959

`6*a(n-1)+n%2+1` with `a(0)=1`
-/

namespace A037483.P4933741973441194959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) + (n % 2 + 1)

end

end A037483.P4933741973441194959

namespace A037483

/-- `6*a(n-1)+n%2+1` -/
def P4933741973441194959.Spec : Prop :=
  ∀ n, (P4933741973441194959.a n : ℤ) = A037483 (n + 1)

end A037483

/-! ## A037483.P17545167513423396700

`gcd(2, n+1)+6*a(n-1)` with `a(0)=1`
-/

namespace A037483.P17545167513423396700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 2 (n + 1) + 6 * a (n - 1)

end

end A037483.P17545167513423396700

namespace A037483

/-- `gcd(2, n+1)+6*a(n-1)` -/
def P17545167513423396700.Spec : Prop :=
  ∀ n, (P17545167513423396700.a n : ℤ) = A037483 (n + 1)

end A037483

/-! ## A037483.P8495476617903022074

`6*a(n-1)+and(1, n)+1` with `a(0)=1`
-/

namespace A037483.P8495476617903022074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) + (Nat.land 1 n + 1)

end

end A037483.P8495476617903022074

namespace A037483

/-- `6*a(n-1)+and(1, n)+1` -/
def P8495476617903022074.Spec : Prop :=
  ∀ n, (P8495476617903022074.a n : ℤ) = A037483 (n + 1)

end A037483

/-! ## A037483.P7528136021608337240

`∑[6*a(n-1)-(-1)^n]` with `a(0)=1`
-/

namespace A037483.P7528136021608337240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037483.P7528136021608337240

namespace A037483

/-- `∑[6*a(n-1)-(-1)^n]` -/
def P7528136021608337240.Spec : Prop :=
  ∀ n, P7528136021608337240.a n = A037483 (n + 1)

end A037483

/-! ## A037483.P773654043124052916

`∑[6*a(n-1)]-a(n-1)` with `a(0)=1, a(1)=8`
-/

namespace A037483.P773654043124052916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A037483.P773654043124052916

namespace A037483

/-- `∑[6*a(n-1)]-a(n-1)` -/
def P773654043124052916.Spec : Prop :=
  ∀ n, P773654043124052916.a n = A037483 (n + 1)

end A037483

/-! ## A037483.P12301245134740082514

`∑[A108983(n)]`
-/

namespace A037483.P12301245134740082514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037483.P12301245134740082514

namespace A037483

/-- `∑[A108983(n)]` -/
def P12301245134740082514.Spec : Prop :=
  ∀ n, P12301245134740082514.a n = A037483 (n + 1)

end A037483

/-! ## A037483.P1572655758982408474

`A270576(n)+a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A037483.P1572655758982408474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  A270576 n + a (n - 2)

end

end A037483.P1572655758982408474

namespace A037483

/-- `A270576(n)+a(n-2)` -/
def P1572655758982408474.Spec : Prop :=
  ∀ n, P1572655758982408474.a n = A037483 (n + 1)

end A037483

/-! ## A037483.P14415122790475676115

`∑[A015540(n)+A000400(n)]`
-/

namespace A037483.P14415122790475676115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 n + A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037483.P14415122790475676115

namespace A037483

/-- `∑[A015540(n)+A000400(n)]` -/
def P14415122790475676115.Spec : Prop :=
  ∀ n, P14415122790475676115.a n = A037483 (n + 1)

end A037483

/-!
# A037484: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,2.

The programs for A037484, the canonical program `A037484.P8053303010544516777` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037484 has offset 1).

The definition of A037484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037484.P8053303010544516777

`7*a(n-1)+a(n-2)-7*a(n-3)` with `a(0)=1, a(1)=9, a(2)=64`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037484

/-- `7*a(n-1)+a(n-2)-7*a(n-3)` -/
def P8053303010544516777.Spec : Prop :=
  ∀ n, P8053303010544516777.a n = A037484 (n + 1)

theorem P8053303010544516777.correct : P8053303010544516777.Spec := by
  intro n
  simp only [A037484, Nat.add_sub_cancel]

end A037484

/-! ## A037484.P16945964492145080864

`(-1)^(n+1)/16-1/4+3*7^(n+1)/16`
-/

namespace A037484.P16945964492145080864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (n + 1) : ℚ) / 16 - (1 : ℚ) / 4 + (3 * 7 ^ (n + 1) : ℚ) / 16

end

end A037484.P16945964492145080864

namespace A037484

/-- `(-1)^(n+1)/16-1/4+3*7^(n+1)/16` -/
def P16945964492145080864.Spec : Prop :=
  ∀ n, P16945964492145080864.a n = (A037484 (n + 1) : ℚ)

theorem P16945964492145080864.correct : P16945964492145080864.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A037484, Nat.add_sub_cancel, A037484.P16945964492145080864.a, A037484.P8053303010544516777.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A037484, Nat.add_sub_cancel, A037484.P16945964492145080864.a, A037484.P8053303010544516777.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A037484

/-! ## A037484.P11552402339963545205

`ogf((1+2x)/(1-7x-x^2+7x^3))`
-/

namespace A037484.P11552402339963545205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -7, -1, 7] n

end

end A037484.P11552402339963545205

namespace A037484

/-- `ogf((1+2x)/(1-7x-x^2+7x^3))` -/
def P11552402339963545205.Spec : Prop :=
  ∀ n, P11552402339963545205.a n = A037484 (n + 1)

end A037484

/-! ## A037484.P13184125328009102292

`∑[A108984(n)]`
-/

namespace A037484.P13184125328009102292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037484.P13184125328009102292

namespace A037484

/-- `∑[A108984(n)]` -/
def P13184125328009102292.Spec : Prop :=
  ∀ n, P13184125328009102292.a n = A037484 (n + 1)

end A037484

/-! ## A037484.P10380462429095428829

`floor(∑[7*a(n-1)]/8)` with `a(0)=9`
-/

namespace A037484.P10380462429095428829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 8⌋

end

end A037484.P10380462429095428829

namespace A037484

/-- `floor(∑[7*a(n-1)]/8)` -/
def P10380462429095428829.Spec : Prop :=
  ∀ n, P10380462429095428829.a n = A037484 (n + 1)

end A037484

/-! ## A037484.P17628298845702859656

`floor(A199417(n+1)/8)`
-/

namespace A037484.P17628298845702859656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199417 (n + 1) : ℚ) / 8⌋

end

end A037484.P17628298845702859656

namespace A037484

/-- `floor(A199417(n+1)/8)` -/
def P17628298845702859656.Spec : Prop :=
  ∀ n, P17628298845702859656.a n = A037484 (n + 1)

end A037484

/-! ## A037484.P6024791125670010709

`round((∑[3*A169634(n)]+2)/8)`
-/

namespace A037484.P6024791125670010709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A169634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℤ) : ℚ) / 8)

end

end A037484.P6024791125670010709

namespace A037484

/-- `round((∑[3*A169634(n)]+2)/8)` -/
def P6024791125670010709.Spec : Prop :=
  ∀ n, P6024791125670010709.a n = A037484 (n + 1)

end A037484

/-! ## A037484.P6245250914291955339

`∑[A109808(n+1)-∑[A083232(n)]]`
-/

namespace A037484.P6245250914291955339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083232 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109808 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037484.P6245250914291955339

namespace A037484

/-- `∑[A109808(n+1)-∑[A083232(n)]]` -/
def P6245250914291955339.Spec : Prop :=
  ∀ n, P6245250914291955339.a n = A037484 (n + 1)

end A037484

/-!
# A037485: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,2.

The programs for A037485, the canonical program `A037485.P11695239398446449233` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037485 has offset 1).

The definition of A037485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037485.P11695239398446449233

`8*a(n-1)+a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=10, a(2)=81`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037485

/-- `8*a(n-1)+a(n-2)-8*a(n-3)` -/
def P11695239398446449233.Spec : Prop :=
  ∀ n, P11695239398446449233.a n = A037485 (n + 1)

theorem P11695239398446449233.correct : P11695239398446449233.Spec := by
  intro n
  simp only [A037485, Nat.add_sub_cancel]

end A037485

/-! ## A037485.P11293449775274283295

`(20*8^(n+1)+7*(-1)^(n+1)-27)/126`
-/

namespace A037485.P11293449775274283295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((20 * 8 ^ (n + 1) : ℤ) + 7 * (-1) ^ (n + 1) - 27 : ℚ) / 126

end

end A037485.P11293449775274283295

namespace A037485

/-- `(20*8^(n+1)+7*(-1)^(n+1)-27)/126` -/
def P11293449775274283295.Spec : Prop :=
  ∀ n, P11293449775274283295.a n = (A037485 (n + 1) : ℚ)

theorem P11293449775274283295.correct : P11293449775274283295.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A037485, Nat.add_sub_cancel, A037485.P11293449775274283295.a, A037485.P11695239398446449233.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A037485, Nat.add_sub_cancel, A037485.P11293449775274283295.a, A037485.P11695239398446449233.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A037485

/-! ## A037485.P14856696586081541820

`ogf((1+2x)/(1-8x-x^2+8x^3))`
-/

namespace A037485.P14856696586081541820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -8, -1, 8] n

end

end A037485.P14856696586081541820

namespace A037485

/-- `ogf((1+2x)/(1-8x-x^2+8x^3))` -/
def P14856696586081541820.Spec : Prop :=
  ∀ n, P14856696586081541820.a n = A037485 (n + 1)

end A037485

/-! ## A037485.P1038714370769571128

`8*a(n-1)+n%2+1` with `a(0)=1`
-/

namespace A037485.P1038714370769571128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) + (n % 2 + 1)

end

end A037485.P1038714370769571128

namespace A037485

/-- `8*a(n-1)+n%2+1` -/
def P1038714370769571128.Spec : Prop :=
  ∀ n, (P1038714370769571128.a n : ℤ) = A037485 (n + 1)

end A037485

/-! ## A037485.P12227793368668173005

`gcd(2, n+1)+8*a(n-1)` with `a(0)=1`
-/

namespace A037485.P12227793368668173005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 2 (n + 1) + 8 * a (n - 1)

end

end A037485.P12227793368668173005

namespace A037485

/-- `gcd(2, n+1)+8*a(n-1)` -/
def P12227793368668173005.Spec : Prop :=
  ∀ n, (P12227793368668173005.a n : ℤ) = A037485 (n + 1)

end A037485

/-! ## A037485.P15599664367897922313

`8*a(n-1)+and(1, n)+1` with `a(0)=1`
-/

namespace A037485.P15599664367897922313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) + (Nat.land 1 n + 1)

end

end A037485.P15599664367897922313

namespace A037485

/-- `8*a(n-1)+and(1, n)+1` -/
def P15599664367897922313.Spec : Prop :=
  ∀ n, (P15599664367897922313.a n : ℤ) = A037485 (n + 1)

end A037485

/-! ## A037485.P3918802057684290074

`or(8*a(n-1), a(n-2))` with `a(0)=1, a(1)=10`
-/

namespace A037485.P3918802057684290074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  Nat.lor (8 * a (n - 1)) (a (n - 2))

end

end A037485.P3918802057684290074

namespace A037485

/-- `or(8*a(n-1), a(n-2))` -/
def P3918802057684290074.Spec : Prop :=
  ∀ n, (P3918802057684290074.a n : ℤ) = A037485 (n + 1)

end A037485

/-! ## A037485.P1238173312197181124

`∑[8*a(n-1)-(-1)^n]` with `a(0)=1`
-/

namespace A037485.P1238173312197181124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  8 * f1 (n - 1) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037485.P1238173312197181124

namespace A037485

/-- `∑[8*a(n-1)-(-1)^n]` -/
def P1238173312197181124.Spec : Prop :=
  ∀ n, P1238173312197181124.a n = A037485 (n + 1)

end A037485

/-! ## A037485.P11935964392383259472

`∑[8*a(n-1)]-a(n-1)` with `a(0)=1, a(1)=10`
-/

namespace A037485.P11935964392383259472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A037485.P11935964392383259472

namespace A037485

/-- `∑[8*a(n-1)]-a(n-1)` -/
def P11935964392383259472.Spec : Prop :=
  ∀ n, P11935964392383259472.a n = A037485 (n + 1)

end A037485

/-! ## A037485.P6505236371603399894

`A245599(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A037485.P6505236371603399894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A245599 (n + 1) - a (n - 1)

end

end A037485.P6505236371603399894

namespace A037485

/-- `A245599(n+1)-a(n-1)` -/
def P6505236371603399894.Spec : Prop :=
  ∀ n, P6505236371603399894.a n = A037485 (n + 1)

end A037485

/-! ## A037485.P3167736567315207014

`A334930(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A037485.P3167736567315207014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A334930 (2 * n) - a (n - 1)

end

end A037485.P3167736567315207014

namespace A037485

/-- `A334930(2*n)-a(n-1)` -/
def P3167736567315207014.Spec : Prop :=
  ∀ n, P3167736567315207014.a n = A037485 (n + 1)

end A037485

/-! ## A037485.P11899818231748185749

`A176895(2*n)+8*a(n-1)` with `a(0)=1`
-/

namespace A037485.P11899818231748185749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A176895 (2 * n) + 8 * a (n - 1)

end

end A037485.P11899818231748185749

namespace A037485

/-- `A176895(2*n)+8*a(n-1)` -/
def P11899818231748185749.Spec : Prop :=
  ∀ n, P11899818231748185749.a n = A037485 (n + 1)

end A037485

/-! ## A037485.P2495091896085847075

`∑[A132805(n)+A090409(n)]`
-/

namespace A037485.P2495091896085847075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132805 n + A090409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037485.P2495091896085847075

namespace A037485

/-- `∑[A132805(n)+A090409(n)]` -/
def P2495091896085847075.Spec : Prop :=
  ∀ n, P2495091896085847075.a n = A037485 (n + 1)

end A037485

/-! ## A037485.P8436011729694572870

`A015565(n+1)+∑[A132805(n)]`
-/

namespace A037485.P8436011729694572870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015565 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037485.P8436011729694572870

namespace A037485

/-- `A015565(n+1)+∑[A132805(n)]` -/
def P8436011729694572870.Spec : Prop :=
  ∀ n, P8436011729694572870.a n = A037485 (n + 1)

end A037485

/-! ## A037485.P8522649563626334753

`∑[A082365(n)-2*A015565(n)]`
-/

namespace A037485.P8522649563626334753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082365 n - 2 * A015565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037485.P8522649563626334753

namespace A037485

/-- `∑[A082365(n)-2*A015565(n)]` -/
def P8522649563626334753.Spec : Prop :=
  ∀ n, P8522649563626334753.a n = A037485 (n + 1)

end A037485

/-! ## A037485.P9773936715594627308

`and(A000975(A016777(n)), A083713(n+1))`
-/

namespace A037485.P9773936715594627308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000975 (A016777 n).toNat) (A083713 (n + 1))

end

end A037485.P9773936715594627308

namespace A037485

/-- `and(A000975(A016777(n)), A083713(n+1))` -/
def P9773936715594627308.Spec : Prop :=
  ∀ n, P9773936715594627308.a n = A037485 (n + 1)

end A037485

/-! ## A037485.P17422551348450316096

`floor(∑[8*a(n-1)]/9)` with `a(0)=10`
-/

namespace A037485.P17422551348450316096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 9⌋

end

end A037485.P17422551348450316096

namespace A037485

/-- `floor(∑[8*a(n-1)]/9)` -/
def P17422551348450316096.Spec : Prop :=
  ∀ n, P17422551348450316096.a n = A037485 (n + 1)

end A037485

/-!
# A037486: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,2.

The programs for A037486, the canonical program `A037486.P2305430411449531039` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037486 has offset 1).

The definition of A037486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037486.P10049791242232303694

`9*a(n-1)+a(n-2)-9*a(n-3)` with `a(0)=1, a(1)=11, a(2)=100`
-/

namespace A037486.P10049791242232303694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11, 100] fun n a =>
  9 * a (n - 1) + a (n - 2) - 9 * a (n - 3)

end

end A037486.P10049791242232303694

namespace A037486

/-- `9*a(n-1)+a(n-2)-9*a(n-3)` -/
def P10049791242232303694.Spec : Prop :=
  ∀ n, P10049791242232303694.a n = A037486 (n + 1)

end A037486

/-! ## A037486.P2305430411449531039

`(11*9^(n+1)+4*(-1)^(n+1)-15)/80`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037486

/-- `(11*9^(n+1)+4*(-1)^(n+1)-15)/80` -/
def P2305430411449531039.Spec : Prop :=
  ∀ n, P2305430411449531039.a n = (A037486 (n + 1) : ℚ)

end A037486

/-! ## A037486.P17349878466517459121

`ogf((1+2x)/(1-9x-x^2+9x^3))`
-/

namespace A037486.P17349878466517459121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -9, -1, 9] n

end

end A037486.P17349878466517459121

namespace A037486

/-- `ogf((1+2x)/(1-9x-x^2+9x^3))` -/
def P17349878466517459121.Spec : Prop :=
  ∀ n, P17349878466517459121.a n = A037486 (n + 1)

end A037486

/-! ## A037486.P9806790542204304586

`∑[xor(3, 9*a(n-1))]` with `a(0)=1`
-/

namespace A037486.P9806790542204304586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor 3 (9 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037486.P9806790542204304586

namespace A037486

/-- `∑[xor(3, 9*a(n-1))]` -/
def P9806790542204304586.Spec : Prop :=
  ∀ n, (P9806790542204304586.a n : ℤ) = A037486 (n + 1)

end A037486

/-! ## A037486.P7485849163440795677

`∑[xor(3, lcm(9, a(n-1)))]` with `a(0)=1`
-/

namespace A037486.P7485849163440795677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor 3 (Nat.lcm 9 (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037486.P7485849163440795677

namespace A037486

/-- `∑[xor(3, lcm(9, a(n-1)))]` -/
def P7485849163440795677.Spec : Prop :=
  ∀ n, (P7485849163440795677.a n : ℤ) = A037486 (n + 1)

end A037486

/-! ## A037486.P241258678848094561

`gcd(2, n+1)+9*a(n-1)` with `a(0)=1`
-/

namespace A037486.P241258678848094561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 2 (n + 1) + 9 * a (n - 1)

end

end A037486.P241258678848094561

namespace A037486

/-- `gcd(2, n+1)+9*a(n-1)` -/
def P241258678848094561.Spec : Prop :=
  ∀ n, (P241258678848094561.a n : ℤ) = A037486 (n + 1)

end A037486

/-! ## A037486.P12653055151186307421

`∑[9*a(n-1)-(-1)^n]` with `a(0)=1`
-/

namespace A037486.P12653055151186307421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037486.P12653055151186307421

namespace A037486

/-- `∑[9*a(n-1)-(-1)^n]` -/
def P12653055151186307421.Spec : Prop :=
  ∀ n, P12653055151186307421.a n = A037486 (n + 1)

end A037486

/-! ## A037486.P17939467774642003198

`∑[9*a(n-1)]-a(n-1)` with `a(0)=1, a(1)=11`
-/

namespace A037486.P17939467774642003198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A037486.P17939467774642003198

namespace A037486

/-- `∑[9*a(n-1)]-a(n-1)` -/
def P17939467774642003198.Spec : Prop :=
  ∀ n, P17939467774642003198.a n = A037486 (n + 1)

end A037486

/-! ## A037486.P9176441914898673114

`9*a(n-1)-or(1, n)+n+2` with `a(0)=1`
-/

namespace A037486.P9176441914898673114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) - (Nat.lor 1 n : ℤ) + (n + 2 : ℤ)

end

end A037486.P9176441914898673114

namespace A037486

/-- `9*a(n-1)-or(1, n)+n+2` -/
def P9176441914898673114.Spec : Prop :=
  ∀ n, P9176441914898673114.a n = A037486 (n + 1)

end A037486

/-! ## A037486.P12513103226279450536

`∑[ceil(A198969(n)/5)]`
-/

namespace A037486.P12513103226279450536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A198969 n : ℚ) / 5⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037486.P12513103226279450536

namespace A037486

/-- `∑[ceil(A198969(n)/5)]` -/
def P12513103226279450536.Spec : Prop :=
  ∀ n, P12513103226279450536.a n = A037486 (n + 1)

end A037486

/-! ## A037486.P4675179005955978755

`∑[A001019(n)+round(9^n/10)]`
-/

namespace A037486.P4675179005955978755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n + SequenceMachineLib.roundAway ((9 ^ n : ℚ) / 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037486.P4675179005955978755

namespace A037486

/-- `∑[A001019(n)+round(9^n/10)]` -/
def P4675179005955978755.Spec : Prop :=
  ∀ n, P4675179005955978755.a n = A037486 (n + 1)

end A037486

/-! ## A037486.P2167910106151717311

`A176895(2*n)+9*a(n-1)` with `a(0)=1`
-/

namespace A037486.P2167910106151717311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A176895 (2 * n) + 9 * a (n - 1)

end

end A037486.P2167910106151717311

namespace A037486

/-- `A176895(2*n)+9*a(n-1)` -/
def P2167910106151717311.Spec : Prop :=
  ∀ n, P2167910106151717311.a n = A037486 (n + 1)

end A037486

/-! ## A037486.P924203070078056030

`A177704(2*n+1)+9*a(n-1)` with `a(0)=1`
-/

namespace A037486.P924203070078056030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A177704 (2 * n + 1) + 9 * a (n - 1)

end

end A037486.P924203070078056030

namespace A037486

/-- `A177704(2*n+1)+9*a(n-1)` -/
def P924203070078056030.Spec : Prop :=
  ∀ n, P924203070078056030.a n = A037486 (n + 1)

end A037486

/-! ## A037486.P9749677790704218762

`∑[A015577(n)+A001019(n)]`
-/

namespace A037486.P9749677790704218762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015577 n + A001019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037486.P9749677790704218762

namespace A037486

/-- `∑[A015577(n)+A001019(n)]` -/
def P9749677790704218762.Spec : Prop :=
  ∀ n, P9749677790704218762.a n = A037486 (n + 1)

end A037486

/-! ## A037486.P1194512501016960755

`A178543(2*n+1)+∑[A178543(2*n)]`
-/

namespace A037486.P1194512501016960755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178543 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178543 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037486.P1194512501016960755

namespace A037486

/-- `A178543(2*n+1)+∑[A178543(2*n)]` -/
def P1194512501016960755.Spec : Prop :=
  ∀ n, P1194512501016960755.a n = A037486 (n + 1)

end A037486

/-!
# A037487: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,2.

The programs for A037487, the canonical program `A037487.P11004034175781705646` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037487 has offset 1).

The definition of A037487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037487.P6344640005991872209

`floor(4/33*10^(n+1))`
-/

namespace A037487.P6344640005991872209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 33 * (10 ^ (n + 1) : ℚ)⌋

end

end A037487.P6344640005991872209

namespace A037487

/-- `floor(4/33*10^(n+1))` -/
def P6344640005991872209.Spec : Prop :=
  ∀ n, P6344640005991872209.a n = A037487 (n + 1)

end A037487

/-! ## A037487.P11004034175781705646

`10*a(n-1)+a(n-2)-10*a(n-3)` with `a(0)=1, a(1)=12, a(2)=121`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037487

/-- `10*a(n-1)+a(n-2)-10*a(n-3)` -/
def P11004034175781705646.Spec : Prop :=
  ∀ n, P11004034175781705646.a n = A037487 (n + 1)

theorem P11004034175781705646.correct : P11004034175781705646.Spec := by
  intro n
  simp only [A037487, Nat.add_sub_cancel]

end A037487

/-! ## A037487.P7718190662162816266

`ogf((1+2x)/(1-10x-x^2+10x^3))`
-/

namespace A037487.P7718190662162816266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -10, -1, 10] n

end

end A037487.P7718190662162816266

namespace A037487

/-- `ogf((1+2x)/(1-10x-x^2+10x^3))` -/
def P7718190662162816266.Spec : Prop :=
  ∀ n, P7718190662162816266.a n = A037487 (n + 1)

end A037487

/-! ## A037487.P12256793915477731393

`n%2+10*a(n-1)+1` with `a(0)=1`
-/

namespace A037487.P12256793915477731393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n % 2 + (10 * a (n - 1) + 1)

end

end A037487.P12256793915477731393

namespace A037487

/-- `n%2+10*a(n-1)+1` -/
def P12256793915477731393.Spec : Prop :=
  ∀ n, (P12256793915477731393.a n : ℤ) = A037487 (n + 1)

end A037487

/-! ## A037487.P8008134663705761126

`gcd(2, n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A037487.P8008134663705761126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 2 (n + 1) + 10 * a (n - 1)

end

end A037487.P8008134663705761126

namespace A037487

/-- `gcd(2, n+1)+10*a(n-1)` -/
def P8008134663705761126.Spec : Prop :=
  ∀ n, (P8008134663705761126.a n : ℤ) = A037487 (n + 1)

end A037487

/-! ## A037487.P1930606970088367575

`10*a(n-1)+and(1, n)+1` with `a(0)=1`
-/

namespace A037487.P1930606970088367575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + (Nat.land 1 n + 1)

end

end A037487.P1930606970088367575

namespace A037487

/-- `10*a(n-1)+and(1, n)+1` -/
def P1930606970088367575.Spec : Prop :=
  ∀ n, (P1930606970088367575.a n : ℤ) = A037487 (n + 1)

end A037487

/-! ## A037487.P5494946212163787003

`10*a(n-1)+2-char[2*n]` with `a(0)=1`
-/

namespace A037487.P5494946212163787003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A037487.P5494946212163787003

namespace A037487

/-- `10*a(n-1)+2-char[2*n]` -/
def P5494946212163787003.Spec : Prop :=
  ∀ n, P5494946212163787003.a n = A037487 (n + 1)

end A037487

/-! ## A037487.P6029376223311953625

`∑[10*a(n-1)]-a(n-1)` with `a(0)=1, a(1)=12`
-/

namespace A037487.P6029376223311953625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A037487.P6029376223311953625

namespace A037487

/-- `∑[10*a(n-1)]-a(n-1)` -/
def P6029376223311953625.Spec : Prop :=
  ∀ n, P6029376223311953625.a n = A037487 (n + 1)

end A037487

/-! ## A037487.P9274068045542047905

`A097166(n)-a(n-1)` with `a(0)=1`
-/

namespace A037487.P9274068045542047905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097166 n - a (n - 1)

end

end A037487.P9274068045542047905

namespace A037487

/-- `A097166(n)-a(n-1)` -/
def P9274068045542047905.Spec : Prop :=
  ∀ n, P9274068045542047905.a n = A037487 (n + 1)

end A037487

/-! ## A037487.P16815309233026521154

`A097169(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A037487.P16815309233026521154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097169 (2 * n) - a (n - 1)

end

end A037487.P16815309233026521154

namespace A037487

/-- `A097169(2*n)-a(n-1)` -/
def P16815309233026521154.Spec : Prop :=
  ∀ n, P16815309233026521154.a n = A037487 (n + 1)

end A037487

/-! ## A037487.P1161342057914719883

`A056830(n)+∑[10*a(n-1)]` with `a(0)=1`
-/

namespace A037487.P1161342057914719883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037487.P1161342057914719883

namespace A037487

/-- `A056830(n)+∑[10*a(n-1)]` -/
def P1161342057914719883.Spec : Prop :=
  ∀ n, P1161342057914719883.a n = A037487 (n + 1)

end A037487

/-! ## A037487.P1810807319446785153

`∑[10*a(n-1)-A033999(n)]` with `a(0)=1`
-/

namespace A037487.P1810807319446785153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1) - A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037487.P1810807319446785153

namespace A037487

/-- `∑[10*a(n-1)-A033999(n)]` -/
def P1810807319446785153.Spec : Prop :=
  ∀ n, P1810807319446785153.a n = A037487 (n + 1)

end A037487

/-! ## A037487.P9086635555248225218

`A176895(2*n)+10*a(n-1)` with `a(0)=1`
-/

namespace A037487.P9086635555248225218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A176895 (2 * n) + 10 * a (n - 1)

end

end A037487.P9086635555248225218

namespace A037487

/-- `A176895(2*n)+10*a(n-1)` -/
def P9086635555248225218.Spec : Prop :=
  ∀ n, P9086635555248225218.a n = A037487 (n + 1)

end A037487

/-! ## A037487.P6736645574387906636

`A177704(n²+2)+10*a(n-1)` with `a(0)=1`
-/

namespace A037487.P6736645574387906636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A177704 (n ^ 2 + 2) + 10 * a (n - 1)

end

end A037487.P6736645574387906636

namespace A037487

/-- `A177704(n²+2)+10*a(n-1)` -/
def P6736645574387906636.Spec : Prop :=
  ∀ n, P6736645574387906636.a n = A037487 (n + 1)

end A037487

/-! ## A037487.P7179213166464805188

`A260438(3*n+2)+10*a(n-1)` with `a(0)=1`
-/

namespace A037487.P7179213166464805188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A260438 (3 * n + 2) + 10 * a (n - 1)

end

end A037487.P7179213166464805188

namespace A037487

/-- `A260438(3*n+2)+10*a(n-1)` -/
def P7179213166464805188.Spec : Prop :=
  ∀ n, P7179213166464805188.a n = A037487 (n + 1)

end A037487

/-! ## A037487.P2271569444697745901

`A028359(∑[A000034(n)])`
-/

namespace A037487.P2271569444697745901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028359 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A037487.P2271569444697745901

namespace A037487

/-- `A028359(∑[A000034(n)])` -/
def P2271569444697745901.Spec : Prop :=
  ∀ n, P2271569444697745901.a n = A037487 (n + 1)

end A037487

/-! ## A037487.P7547422366226324178

`A028359(A032766(n+1))`
-/

namespace A037487.P7547422366226324178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028359 (A032766 (n + 1)).toNat

end

end A037487.P7547422366226324178

namespace A037487

/-- `A028359(A032766(n+1))` -/
def P7547422366226324178.Spec : Prop :=
  ∀ n, P7547422366226324178.a n = A037487 (n + 1)

end A037487

/-! ## A037487.P9622883696725986534

`A056830(n)+∑[A011557(n)]`
-/

namespace A037487.P9622883696725986534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037487.P9622883696725986534

namespace A037487

/-- `A056830(n)+∑[A011557(n)]` -/
def P9622883696725986534.Spec : Prop :=
  ∀ n, P9622883696725986534.a n = A037487 (n + 1)

end A037487

/-! ## A037487.P13423143182886549254

`A056830(n)+Δ[A014824(n)]`
-/

namespace A037487.P13423143182886549254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n + (f1 (n + 1) - f1 n)

end

end A037487.P13423143182886549254

namespace A037487

/-- `A056830(n)+Δ[A014824(n)]` -/
def P13423143182886549254.Spec : Prop :=
  ∀ n, P13423143182886549254.a n = A037487 (n + 1)

end A037487

/-! ## A037487.P9146629267793342515

`A056830(n)+A000042(n+1)`
-/

namespace A037487.P9146629267793342515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n + A000042 (n + 1)

end

end A037487.P9146629267793342515

namespace A037487

/-- `A056830(n)+A000042(n+1)` -/
def P9146629267793342515.Spec : Prop :=
  ∀ n, P9146629267793342515.a n = A037487 (n + 1)

end A037487

/-!
# A037488: Base 3 digits are, in order, the first n terms of the periodic sequence with initial period 2,1.

The programs for A037488, the canonical program `A037488.P15133340106791633188` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037488 has offset 1).

The definition of A037488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037488.P10628837529271253700

`3*a(n-1)+1+(n+1)%2` with `a(0)=2`
-/

namespace A037488.P10628837529271253700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  3 * a (n - 1) + 1 + (n + 1) % 2

end

end A037488.P10628837529271253700

namespace A037488

/-- `3*a(n-1)+1+(n+1)%2` -/
def P10628837529271253700.Spec : Prop :=
  ∀ n, (P10628837529271253700.a n : ℤ) = A037488 (n + 1)

end A037488

/-! ## A037488.P15133340106791633188

`3*a(n-1)+a(n-2)-3*a(n-3)` with `a(0)=2, a(1)=7, a(2)=23`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037488

/-- `3*a(n-1)+a(n-2)-3*a(n-3)` -/
def P15133340106791633188.Spec : Prop :=
  ∀ n, P15133340106791633188.a n = A037488 (n + 1)

theorem P15133340106791633188.correct : P15133340106791633188.Spec := by
  intro n
  simp only [A037488, Nat.add_sub_cancel]

end A037488

/-! ## A037488.P3605614537203372847

`(7*3^(n+1)-(-1)^(n+1)-6)/8`
-/

namespace A037488.P3605614537203372847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 3 ^ (n + 1) : ℤ) - (-1) ^ (n + 1) - 6 : ℚ) / 8

end

end A037488.P3605614537203372847

namespace A037488

/-- `(7*3^(n+1)-(-1)^(n+1)-6)/8` -/
def P3605614537203372847.Spec : Prop :=
  ∀ n, P3605614537203372847.a n = (A037488 (n + 1) : ℚ)

theorem P3605614537203372847.correct : P3605614537203372847.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A037488, Nat.add_sub_cancel, A037488.P3605614537203372847.a, A037488.P15133340106791633188.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A037488, Nat.add_sub_cancel, A037488.P3605614537203372847.a, A037488.P15133340106791633188.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A037488

/-! ## A037488.P2736449083290189371

`ogf((2+x)/(1-3x-x^2+3x^3))`
-/

namespace A037488.P2736449083290189371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -3, -1, 3] n

end

end A037488.P2736449083290189371

namespace A037488

/-- `ogf((2+x)/(1-3x-x^2+3x^3))` -/
def P2736449083290189371.Spec : Prop :=
  ∀ n, P2736449083290189371.a n = A037488 (n + 1)

end A037488

/-! ## A037488.P79929965702772887

`gcd(2, n)+3*a(n-1)` with `a(0)=2`
-/

namespace A037488.P79929965702772887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 n + 3 * a (n - 1)

end

end A037488.P79929965702772887

namespace A037488

/-- `gcd(2, n)+3*a(n-1)` -/
def P79929965702772887.Spec : Prop :=
  ∀ n, (P79929965702772887.a n : ℤ) = A037488 (n + 1)

end A037488

/-! ## A037488.P5548524832921618782

`∑[(-1)^n+3*a(n-1)]` with `a(0)=2`
-/

namespace A037488.P5548524832921618782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (-1) ^ n + 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037488.P5548524832921618782

namespace A037488

/-- `∑[(-1)^n+3*a(n-1)]` -/
def P5548524832921618782.Spec : Prop :=
  ∀ n, P5548524832921618782.a n = A037488 (n + 1)

end A037488

/-! ## A037488.P17085919202445910453

`3*a(n-1)+2-n%2` with `a(0)=2`
-/

namespace A037488.P17085919202445910453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * a (n - 1) + (2 - ((n % 2 : ℕ) : ℤ))

end

end A037488.P17085919202445910453

namespace A037488

/-- `3*a(n-1)+2-n%2` -/
def P17085919202445910453.Spec : Prop :=
  ∀ n, P17085919202445910453.a n = A037488 (n + 1)

end A037488

/-! ## A037488.P12204146945346323600

`3*a(n-1)-and(1, n)+2` with `a(0)=2`
-/

namespace A037488.P12204146945346323600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * a (n - 1) - (Nat.land 1 n : ℤ) + 2

end

end A037488.P12204146945346323600

namespace A037488

/-- `3*a(n-1)-and(1, n)+2` -/
def P12204146945346323600.Spec : Prop :=
  ∀ n, P12204146945346323600.a n = A037488 (n + 1)

end A037488

/-! ## A037488.P3774082634683128121

`lcm(3, a(n-1))+char[2*n]+1` with `a(0)=2`
-/

namespace A037488.P3774082634683128121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm 3 (a (n - 1)) + ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A037488.P3774082634683128121

namespace A037488

/-- `lcm(3, a(n-1))+char[2*n]+1` -/
def P3774082634683128121.Spec : Prop :=
  ∀ n, (P3774082634683128121.a n : ℤ) = A037488 (n + 1)

end A037488

/-! ## A037488.P3637342494713163390

`∑[3*a(n-1)]-a(n-1)` with `a(0)=2, a(1)=7`
-/

namespace A037488.P3637342494713163390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A037488.P3637342494713163390

namespace A037488

/-- `∑[3*a(n-1)]-a(n-1)` -/
def P3637342494713163390.Spec : Prop :=
  ∀ n, P3637342494713163390.a n = A037488 (n + 1)

end A037488

/-! ## A037488.P10684543333523352199

`3*a(n-1)-(a(n-1)%3-3)` with `a(0)=2`
-/

namespace A037488.P10684543333523352199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * a (n - 1) - (Int.tmod (a (n - 1)) 3 - 3)

end

end A037488.P10684543333523352199

namespace A037488

/-- `3*a(n-1)-(a(n-1)%3-3)` -/
def P10684543333523352199.Spec : Prop :=
  ∀ n, P10684543333523352199.a n = A037488 (n + 1)

end A037488

/-! ## A037488.P9591931153452973684

`A153774(n+2)-1`
-/

namespace A037488.P9591931153452973684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153774 (n + 2) - 1

end

end A037488.P9591931153452973684

namespace A037488

/-- `A153774(n+2)-1` -/
def P9591931153452973684.Spec : Prop :=
  ∀ n, P9591931153452973684.a n = A037488 (n + 1)

end A037488

/-! ## A037488.P8296340660407468960

`3^(n+1)-A039300(n)`
-/

namespace A037488.P8296340660407468960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - A039300 n

end

end A037488.P8296340660407468960

namespace A037488

/-- `3^(n+1)-A039300(n)` -/
def P8296340660407468960.Spec : Prop :=
  ∀ n, P8296340660407468960.a n = A037488 (n + 1)

end A037488

/-! ## A037488.P17593365647188136490

`A037480(n+2)-3^(n+1)`
-/

namespace A037488.P17593365647188136490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037480 (n + 2) - (3 ^ (n + 1) : ℤ)

end

end A037488.P17593365647188136490

namespace A037488

/-- `A037480(n+2)-3^(n+1)` -/
def P17593365647188136490.Spec : Prop :=
  ∀ n, P17593365647188136490.a n = A037488 (n + 1)

end A037488

/-! ## A037488.P3472595593374952748

`A116952(n)-a(n-1)+1` with `a(0)=2`
-/

namespace A037488.P3472595593374952748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A116952 n - a (n - 1) + 1

end

end A037488.P3472595593374952748

namespace A037488

/-- `A116952(n)-a(n-1)+1` -/
def P3472595593374952748.Spec : Prop :=
  ∀ n, P3472595593374952748.a n = A037488 (n + 1)

end A037488

/-! ## A037488.P4536468153031914767

`A000034(n+1)+3*a(n-1)` with `a(0)=2`
-/

namespace A037488.P4536468153031914767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000034 (n + 1) + 3 * a (n - 1)

end

end A037488.P4536468153031914767

namespace A037488

/-- `A000034(n+1)+3*a(n-1)` -/
def P4536468153031914767.Spec : Prop :=
  ∀ n, P4536468153031914767.a n = A037488 (n + 1)

end A037488

/-! ## A037488.P8774911364870831999

`A059841(n)+3*a(n-1)+1` with `a(0)=2`
-/

namespace A037488.P8774911364870831999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A059841 n + (3 * a (n - 1) + 1)

end

end A037488.P8774911364870831999

namespace A037488

/-- `A059841(n)+3*a(n-1)+1` -/
def P8774911364870831999.Spec : Prop :=
  ∀ n, P8774911364870831999.a n = A037488 (n + 1)

end A037488

/-! ## A037488.P12383502465247700117

`A085287(n)+A059841(n)`
-/

namespace A037488.P12383502465247700117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085287 n + A059841 n

end

end A037488.P12383502465247700117

namespace A037488

/-- `A085287(n)+A059841(n)` -/
def P12383502465247700117.Spec : Prop :=
  ∀ n, P12383502465247700117.a n = A037488 (n + 1)

end A037488

/-! ## A037488.P1742751096627864651

`A080926(n+1)+A006342(n)`
-/

namespace A037488.P1742751096627864651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080926 (n + 1) + A006342 n

end

end A037488.P1742751096627864651

namespace A037488

/-- `A080926(n+1)+A006342(n)` -/
def P1742751096627864651.Spec : Prop :=
  ∀ n, P1742751096627864651.a n = A037488 (n + 1)

end A037488

/-! ## A037488.P8484920636777695899

`A153773(n+1)+A048473(n)`
-/

namespace A037488.P8484920636777695899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153773 (n + 1) + A048473 n

end

end A037488.P8484920636777695899

namespace A037488

/-- `A153773(n+1)+A048473(n)` -/
def P8484920636777695899.Spec : Prop :=
  ∀ n, P8484920636777695899.a n = A037488 (n + 1)

end A037488

/-!
# A037489: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,1.

The programs for A037489, the canonical program `A037489.P11356628586925819228` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037489 has offset 1).

The definition of A037489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037489.P11356628586925819228

`4*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=2, a(1)=9, a(2)=38`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037489

/-- `4*a(n-1)+a(n-2)-4*a(n-3)` -/
def P11356628586925819228.Spec : Prop :=
  ∀ n, P11356628586925819228.a n = A037489 (n + 1)

theorem P11356628586925819228.correct : P11356628586925819228.Spec := by
  intro n
  simp only [A037489, Nat.add_sub_cancel]

end A037489

/-! ## A037489.P4822522410333081732

`floor(3*4^(n+1)/5)`
-/

namespace A037489.P4822522410333081732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * 4 ^ (n + 1) : ℚ) / 5⌋

end

end A037489.P4822522410333081732

namespace A037489

/-- `floor(3*4^(n+1)/5)` -/
def P4822522410333081732.Spec : Prop :=
  ∀ n, P4822522410333081732.a n = A037489 (n + 1)

end A037489

/-! ## A037489.P1318086817707456166

`ogf((2+x)/(1-4x-x^2+4x^3))`
-/

namespace A037489.P1318086817707456166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -4, -1, 4] n

end

end A037489.P1318086817707456166

namespace A037489

/-- `ogf((2+x)/(1-4x-x^2+4x^3))` -/
def P1318086817707456166.Spec : Prop :=
  ∀ n, P1318086817707456166.a n = A037489 (n + 1)

end A037489

/-! ## A037489.P10629046130035832372

`gcd(2, n)+4*a(n-1)` with `a(0)=2`
-/

namespace A037489.P10629046130035832372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 n + 4 * a (n - 1)

end

end A037489.P10629046130035832372

namespace A037489

/-- `gcd(2, n)+4*a(n-1)` -/
def P10629046130035832372.Spec : Prop :=
  ∀ n, (P10629046130035832372.a n : ℤ) = A037489 (n + 1)

end A037489

/-! ## A037489.P16198702046622244576

`Δ[4^n]-(a(n-1)+1)` with `a(0)=2`
-/

namespace A037489.P16198702046622244576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (a (n - 1) + 1)

end

end A037489.P16198702046622244576

namespace A037489

/-- `Δ[4^n]-(a(n-1)+1)` -/
def P16198702046622244576.Spec : Prop :=
  ∀ n, P16198702046622244576.a n = A037489 (n + 1)

end A037489

/-! ## A037489.P3978300063241989287

`Δ[4^n]-1-a(n-1)` with `a(0)=2`
-/

namespace A037489.P3978300063241989287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1 - a (n - 1)

end

end A037489.P3978300063241989287

namespace A037489

/-- `Δ[4^n]-1-a(n-1)` -/
def P3978300063241989287.Spec : Prop :=
  ∀ n, P3978300063241989287.a n = A037489 (n + 1)

end A037489

/-! ## A037489.P11820686964045765728

`∑[(-1)^n+4*a(n-1)]` with `a(0)=2`
-/

namespace A037489.P11820686964045765728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (-1) ^ n + 4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037489.P11820686964045765728

namespace A037489

/-- `∑[(-1)^n+4*a(n-1)]` -/
def P11820686964045765728.Spec : Prop :=
  ∀ n, P11820686964045765728.a n = A037489 (n + 1)

end A037489

/-! ## A037489.P5748831759446524866

`4*a(n-1)+2-n%2` with `a(0)=2`
-/

namespace A037489.P5748831759446524866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) + (2 - ((n % 2 : ℕ) : ℤ))

end

end A037489.P5748831759446524866

namespace A037489

/-- `4*a(n-1)+2-n%2` -/
def P5748831759446524866.Spec : Prop :=
  ∀ n, P5748831759446524866.a n = A037489 (n + 1)

end A037489

/-! ## A037489.P2114478866983888706

`or(4*a(n-1), a(n-2))` with `a(0)=2, a(1)=9`
-/

namespace A037489.P2114478866983888706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 9] fun n a =>
  Nat.lor (4 * a (n - 1)) (a (n - 2))

end

end A037489.P2114478866983888706

namespace A037489

/-- `or(4*a(n-1), a(n-2))` -/
def P2114478866983888706.Spec : Prop :=
  ∀ n, (P2114478866983888706.a n : ℤ) = A037489 (n + 1)

end A037489

/-! ## A037489.P8975086621976944653

`4*a(n-1)-(1-a(n-1))%3` with `a(0)=2`
-/

namespace A037489.P8975086621976944653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) - Int.tmod (1 - a (n - 1)) 3

end

end A037489.P8975086621976944653

namespace A037489

/-- `4*a(n-1)-(1-a(n-1))%3` -/
def P8975086621976944653.Spec : Prop :=
  ∀ n, P8975086621976944653.a n = A037489 (n + 1)

end A037489

/-! ## A037489.P10332019514565501824

`3-(gcd(4, a(n-1))-4*a(n-1))` with `a(0)=2`
-/

namespace A037489.P10332019514565501824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 - ((Int.gcd 4 (a (n - 1)) : ℤ) - 4 * a (n - 1))

end

end A037489.P10332019514565501824

namespace A037489

/-- `3-(gcd(4, a(n-1))-4*a(n-1))` -/
def P10332019514565501824.Spec : Prop :=
  ∀ n, P10332019514565501824.a n = A037489 (n + 1)

end A037489

/-! ## A037489.P17184833041880454092

`A262864(Δ[n²])`
-/

namespace A037489.P17184833041880454092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262864 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A037489.P17184833041880454092

namespace A037489

/-- `A262864(Δ[n²])` -/
def P17184833041880454092.Spec : Prop :=
  ∀ n, P17184833041880454092.a n = A037489 (n + 1)

end A037489

/-! ## A037489.P17456869042776028816

`xor(3, A226309(2*n+1))`
-/

namespace A037489.P17456869042776028816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A226309 (2 * n + 1))

end

end A037489.P17456869042776028816

namespace A037489

/-- `xor(3, A226309(2*n+1))` -/
def P17456869042776028816.Spec : Prop :=
  ∀ n, P17456869042776028816.a n = A037489 (n + 1)

end A037489

/-! ## A037489.P17028391647298421812

`A122117(n+1)-and(1, n)`
-/

namespace A037489.P17028391647298421812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122117 (n + 1) - (Nat.land 1 n : ℤ)

end

end A037489.P17028391647298421812

namespace A037489

/-- `A122117(n+1)-and(1, n)` -/
def P17028391647298421812.Spec : Prop :=
  ∀ n, P17028391647298421812.a n = A037489 (n + 1)

end A037489

/-! ## A037489.P5060672095281814729

`A037481(n)+A004171(n)`
-/

namespace A037489.P5060672095281814729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037481 n + A004171 n

end

end A037489.P5060672095281814729

namespace A037489

/-- `A037481(n)+A004171(n)` -/
def P5060672095281814729.Spec : Prop :=
  ∀ n, P5060672095281814729.a n = A037489 (n + 1)

end A037489

/-! ## A037489.P4398806990060637916

`A363773(n)+A083420(n)`
-/

namespace A037489.P4398806990060637916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363773 n + A083420 n

end

end A037489.P4398806990060637916

namespace A037489

/-- `A363773(n)+A083420(n)` -/
def P4398806990060637916.Spec : Prop :=
  ∀ n, P4398806990060637916.a n = A037489 (n + 1)

end A037489

/-! ## A037489.P7365538882668871062

`A267036(n)+A255465(n)`
-/

namespace A037489.P7365538882668871062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267036 n + A255465 n

end

end A037489.P7365538882668871062

namespace A037489

/-- `A267036(n)+A255465(n)` -/
def P7365538882668871062.Spec : Prop :=
  ∀ n, P7365538882668871062.a n = A037489 (n + 1)

end A037489

/-! ## A037489.P6163760182776186781

`A010693(n)*A112627(n+1)`
-/

namespace A037489.P6163760182776186781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n * A112627 (n + 1)

end

end A037489.P6163760182776186781

namespace A037489

/-- `A010693(n)*A112627(n+1)` -/
def P6163760182776186781.Spec : Prop :=
  ∀ n, P6163760182776186781.a n = A037489 (n + 1)

end A037489

/-! ## A037489.P10240706428427620626

`A037481(n)+2*A000079(n)²`
-/

namespace A037489.P10240706428427620626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037481 n + 2 * A000079 n ^ 2

end

end A037489.P10240706428427620626

namespace A037489

/-- `A037481(n)+2*A000079(n)²` -/
def P10240706428427620626.Spec : Prop :=
  ∀ n, P10240706428427620626.a n = A037489 (n + 1)

end A037489

/-! ## A037489.P9332625121869605870

`A033114(n+1)+A002450(n+1)`
-/

namespace A037489.P9332625121869605870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033114 (n + 1) + A002450 (n + 1)

end

end A037489.P9332625121869605870

namespace A037489

/-- `A033114(n+1)+A002450(n+1)` -/
def P9332625121869605870.Spec : Prop :=
  ∀ n, P9332625121869605870.a n = A037489 (n + 1)

end A037489

/-!
# A037490: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,1.

The programs for A037490, the canonical program `A037490.P7366785758651936149` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037490 has offset 1).

The definition of A037490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037490.P7366785758651936149

`5*a(n-1)+a(n-2)-5*a(n-3)` with `a(0)=2, a(1)=11, a(2)=57`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037490

/-- `5*a(n-1)+a(n-2)-5*a(n-3)` -/
def P7366785758651936149.Spec : Prop :=
  ∀ n, P7366785758651936149.a n = A037490 (n + 1)

theorem P7366785758651936149.correct : P7366785758651936149.Spec := by
  intro n
  simp only [A037490, Nat.add_sub_cancel]

end A037490

/-! ## A037490.P7976584021478731312

`(11*5^(n+1)-2*(-1)^(n+1)-9)/24`
-/

namespace A037490.P7976584021478731312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * 5 ^ (n + 1) : ℤ) - 2 * (-1) ^ (n + 1) - 9 : ℚ) / 24

end

end A037490.P7976584021478731312

namespace A037490

/-- `(11*5^(n+1)-2*(-1)^(n+1)-9)/24` -/
def P7976584021478731312.Spec : Prop :=
  ∀ n, P7976584021478731312.a n = (A037490 (n + 1) : ℚ)

theorem P7976584021478731312.correct : P7976584021478731312.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A037490, Nat.add_sub_cancel, A037490.P7976584021478731312.a, A037490.P7366785758651936149.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A037490, Nat.add_sub_cancel, A037490.P7976584021478731312.a, A037490.P7366785758651936149.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A037490

/-! ## A037490.P16332476761581479885

`ogf((2+x)/(1-5x-x^2+5x^3))`
-/

namespace A037490.P16332476761581479885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -5, -1, 5] n

end

end A037490.P16332476761581479885

namespace A037490

/-- `ogf((2+x)/(1-5x-x^2+5x^3))` -/
def P16332476761581479885.Spec : Prop :=
  ∀ n, P16332476761581479885.a n = A037490 (n + 1)

end A037490

/-! ## A037490.P16786430349450364118

`∑[xor(3, 5*a(n-1))]` with `a(0)=2`
-/

namespace A037490.P16786430349450364118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.xor 3 (5 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037490.P16786430349450364118

namespace A037490

/-- `∑[xor(3, 5*a(n-1))]` -/
def P16786430349450364118.Spec : Prop :=
  ∀ n, (P16786430349450364118.a n : ℤ) = A037490 (n + 1)

end A037490

/-! ## A037490.P8357394885653173360

`∑[xor(3, lcm(5, a(n-1)))]` with `a(0)=2`
-/

namespace A037490.P8357394885653173360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.xor 3 (Nat.lcm 5 (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037490.P8357394885653173360

namespace A037490

/-- `∑[xor(3, lcm(5, a(n-1)))]` -/
def P8357394885653173360.Spec : Prop :=
  ∀ n, (P8357394885653173360.a n : ℤ) = A037490 (n + 1)

end A037490

/-! ## A037490.P452143093984418665

`gcd(2, n)+5*a(n-1)` with `a(0)=2`
-/

namespace A037490.P452143093984418665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 n + 5 * a (n - 1)

end

end A037490.P452143093984418665

namespace A037490

/-- `gcd(2, n)+5*a(n-1)` -/
def P452143093984418665.Spec : Prop :=
  ∀ n, (P452143093984418665.a n : ℤ) = A037490 (n + 1)

end A037490

/-! ## A037490.P4578435767936097606

`5*a(n-1)-or(n, -2)` with `a(0)=2`
-/

namespace A037490.P4578435767936097606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 * a (n - 1) - Int.lor (n : ℤ) (-2)

end

end A037490.P4578435767936097606

namespace A037490

/-- `5*a(n-1)-or(n, -2)` -/
def P4578435767936097606.Spec : Prop :=
  ∀ n, P4578435767936097606.a n = A037490 (n + 1)

end A037490

/-! ## A037490.P14080938081514709497

`5*a(n-1)-n%2+2` with `a(0)=2`
-/

namespace A037490.P14080938081514709497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 * a (n - 1) - ((n % 2 : ℕ) : ℤ) + 2

end

end A037490.P14080938081514709497

namespace A037490

/-- `5*a(n-1)-n%2+2` -/
def P14080938081514709497.Spec : Prop :=
  ∀ n, P14080938081514709497.a n = A037490 (n + 1)

end A037490

/-! ## A037490.P3453874211683159759

`5*a(n-1)-and(1, n)+2` with `a(0)=2`
-/

namespace A037490.P3453874211683159759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 * a (n - 1) - (Nat.land 1 n : ℤ) + 2

end

end A037490.P3453874211683159759

namespace A037490

/-- `5*a(n-1)-and(1, n)+2` -/
def P3453874211683159759.Spec : Prop :=
  ∀ n, P3453874211683159759.a n = A037490 (n + 1)

end A037490

/-! ## A037490.P11793277243790233508

`A000034(n+1)+5*a(n-1)` with `a(0)=2`
-/

namespace A037490.P11793277243790233508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000034 (n + 1) + 5 * a (n - 1)

end

end A037490.P11793277243790233508

namespace A037490

/-- `A000034(n+1)+5*a(n-1)` -/
def P11793277243790233508.Spec : Prop :=
  ∀ n, P11793277243790233508.a n = A037490 (n + 1)

end A037490

/-! ## A037490.P6178733247864607508

`A037738(n+1)+A037745(n+1)-A037752(n+1)`
-/

namespace A037490.P6178733247864607508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037738 (n + 1) + (A037745 (n + 1) - A037752 (n + 1))

end

end A037490.P6178733247864607508

namespace A037490

/-- `A037738(n+1)+A037745(n+1)-A037752(n+1)` -/
def P6178733247864607508.Spec : Prop :=
  ∀ n, P6178733247864607508.a n = A037490 (n + 1)

end A037490

/-!
# A037491: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,1.

The programs for A037491, the canonical program `A037491.P9979592323610380005` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037491 has offset 1).

The definition of A037491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037491.P9979592323610380005

`6*a(n-1)+a(n-2)-6*a(n-3)` with `a(0)=2, a(1)=13, a(2)=80`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037491

/-- `6*a(n-1)+a(n-2)-6*a(n-3)` -/
def P9979592323610380005.Spec : Prop :=
  ∀ n, P9979592323610380005.a n = A037491 (n + 1)

theorem P9979592323610380005.correct : P9979592323610380005.Spec := by
  intro n
  simp only [A037491, Nat.add_sub_cancel]

end A037491

/-! ## A037491.P9132727362705796320

`floor(13*6^(n+1)/35)`
-/

namespace A037491.P9132727362705796320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(13 * 6 ^ (n + 1) : ℚ) / 35⌋

end

end A037491.P9132727362705796320

namespace A037491

/-- `floor(13*6^(n+1)/35)` -/
def P9132727362705796320.Spec : Prop :=
  ∀ n, P9132727362705796320.a n = A037491 (n + 1)

end A037491

/-! ## A037491.P8051782159336242424

`ogf((2+x)/(1-6x-x^2+6x^3))`
-/

namespace A037491.P8051782159336242424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -6, -1, 6] n

end

end A037491.P8051782159336242424

namespace A037491

/-- `ogf((2+x)/(1-6x-x^2+6x^3))` -/
def P8051782159336242424.Spec : Prop :=
  ∀ n, P8051782159336242424.a n = A037491 (n + 1)

end A037491

/-! ## A037491.P2243730642209213372

`gcd(2, n)+6*a(n-1)` with `a(0)=2`
-/

namespace A037491.P2243730642209213372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 n + 6 * a (n - 1)

end

end A037491.P2243730642209213372

namespace A037491

/-- `gcd(2, n)+6*a(n-1)` -/
def P2243730642209213372.Spec : Prop :=
  ∀ n, (P2243730642209213372.a n : ℤ) = A037491 (n + 1)

end A037491

/-! ## A037491.P5824910647109085984

`6*a(n-1)+2-n%2` with `a(0)=2`
-/

namespace A037491.P5824910647109085984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  6 * a (n - 1) + (2 - ((n % 2 : ℕ) : ℤ))

end

end A037491.P5824910647109085984

namespace A037491

/-- `6*a(n-1)+2-n%2` -/
def P5824910647109085984.Spec : Prop :=
  ∀ n, P5824910647109085984.a n = A037491 (n + 1)

end A037491

/-! ## A037491.P15587080176120755882

`6*a(n-1)+2-and(1, n)` with `a(0)=2`
-/

namespace A037491.P15587080176120755882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  6 * a (n - 1) + (2 - (Nat.land 1 n : ℤ))

end

end A037491.P15587080176120755882

namespace A037491

/-- `6*a(n-1)+2-and(1, n)` -/
def P15587080176120755882.Spec : Prop :=
  ∀ n, P15587080176120755882.a n = A037491 (n + 1)

end A037491

/-! ## A037491.P6485644879063212494

`3*2*a(n-1)-or(n, -2)` with `a(0)=2`
-/

namespace A037491.P6485644879063212494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * (2 * a (n - 1)) - Int.lor (n : ℤ) (-2)

end

end A037491.P6485644879063212494

namespace A037491

/-- `3*2*a(n-1)-or(n, -2)` -/
def P6485644879063212494.Spec : Prop :=
  ∀ n, P6485644879063212494.a n = A037491 (n + 1)

end A037491

/-! ## A037491.P18092674978445933285

`A040001(n)+6*a(n-1)` with `a(0)=2`
-/

namespace A037491.P18092674978445933285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A040001 n + 6 * a (n - 1)

end

end A037491.P18092674978445933285

namespace A037491

/-- `A040001(n)+6*a(n-1)` -/
def P18092674978445933285.Spec : Prop :=
  ∀ n, P18092674978445933285.a n = A037491 (n + 1)

end A037491

/-! ## A037491.P7900366275350329788

`A000034(n+1)+6*a(n-1)` with `a(0)=2`
-/

namespace A037491.P7900366275350329788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000034 (n + 1) + 6 * a (n - 1)

end

end A037491.P7900366275350329788

namespace A037491

/-- `A000034(n+1)+6*a(n-1)` -/
def P7900366275350329788.Spec : Prop :=
  ∀ n, P7900366275350329788.a n = A037491 (n + 1)

end A037491

/-! ## A037491.P15053575774852189369

`∑[A015540(n+1)+A000400(n)]`
-/

namespace A037491.P15053575774852189369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 (n + 1) + A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037491.P15053575774852189369

namespace A037491

/-- `∑[A015540(n+1)+A000400(n)]` -/
def P15053575774852189369.Spec : Prop :=
  ∀ n, P15053575774852189369.a n = A037491 (n + 1)

end A037491

/-! ## A037491.P12076357174217784194

`∑[2*A000400(n)-A015540(n)]`
-/

namespace A037491.P12076357174217784194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000400 n - A015540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037491.P12076357174217784194

namespace A037491

/-- `∑[2*A000400(n)-A015540(n)]` -/
def P12076357174217784194.Spec : Prop :=
  ∀ n, P12076357174217784194.a n = A037491 (n + 1)

end A037491

/-! ## A037491.P18148444525842852442

`A037760(n+1)+Δ[A037767(n+1)-A037781(n+1)]`
-/

namespace A037491.P18148444525842852442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037767 (n + 1) - A037781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037760 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037491.P18148444525842852442

namespace A037491

/-- `A037760(n+1)+Δ[A037767(n+1)-A037781(n+1)]` -/
def P18148444525842852442.Spec : Prop :=
  ∀ n, P18148444525842852442.a n = A037491 (n + 1)

end A037491

/-! ## A037491.P11007598910214326273

`A037760(n+1)+Δ[A037774(n+1)-A037788(n+1)]`
-/

namespace A037491.P11007598910214326273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037774 (n + 1) - A037788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037760 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037491.P11007598910214326273

namespace A037491

/-- `A037760(n+1)+Δ[A037774(n+1)-A037788(n+1)]` -/
def P11007598910214326273.Spec : Prop :=
  ∀ n, P11007598910214326273.a n = A037491 (n + 1)

end A037491

/-!
# A037492: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,1.

The programs for A037492, the canonical program `A037492.P12534664945778785394` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037492 has offset 1).

The definition of A037492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037492.P12534664945778785394

`7*a(n-1)+a(n-2)-7*a(n-3)` with `a(0)=2, a(1)=15, a(2)=107`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037492

/-- `7*a(n-1)+a(n-2)-7*a(n-3)` -/
def P12534664945778785394.Spec : Prop :=
  ∀ n, P12534664945778785394.a n = A037492 (n + 1)

theorem P12534664945778785394.correct : P12534664945778785394.Spec := by
  intro n
  simp only [A037492, Nat.add_sub_cancel]

end A037492

/-! ## A037492.P204849125438215972

`floor(5*7^(n+1)/16)`
-/

namespace A037492.P204849125438215972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 * 7 ^ (n + 1) : ℚ) / 16⌋

end

end A037492.P204849125438215972

namespace A037492

/-- `floor(5*7^(n+1)/16)` -/
def P204849125438215972.Spec : Prop :=
  ∀ n, P204849125438215972.a n = A037492 (n + 1)

end A037492

/-! ## A037492.P15056632796794714012

`ogf((2+x)/(1-7x-x^2+7x^3))`
-/

namespace A037492.P15056632796794714012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -7, -1, 7] n

end

end A037492.P15056632796794714012

namespace A037492

/-- `ogf((2+x)/(1-7x-x^2+7x^3))` -/
def P15056632796794714012.Spec : Prop :=
  ∀ n, P15056632796794714012.a n = A037492 (n + 1)

end A037492

/-! ## A037492.P7572935051315498843

`gcd(2, n)+7*a(n-1)` with `a(0)=2`
-/

namespace A037492.P7572935051315498843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 n + 7 * a (n - 1)

end

end A037492.P7572935051315498843

namespace A037492

/-- `gcd(2, n)+7*a(n-1)` -/
def P7572935051315498843.Spec : Prop :=
  ∀ n, (P7572935051315498843.a n : ℤ) = A037492 (n + 1)

end A037492

/-! ## A037492.P16753529139235748593

`7*a(n-1)+2-n%2` with `a(0)=2`
-/

namespace A037492.P16753529139235748593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  7 * a (n - 1) + (2 - ((n % 2 : ℕ) : ℤ))

end

end A037492.P16753529139235748593

namespace A037492

/-- `7*a(n-1)+2-n%2` -/
def P16753529139235748593.Spec : Prop :=
  ∀ n, P16753529139235748593.a n = A037492 (n + 1)

end A037492

/-! ## A037492.P8642908824383838701

`7*a(n-1)-and(1, n)+2` with `a(0)=2`
-/

namespace A037492.P8642908824383838701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  7 * a (n - 1) - (Nat.land 1 n : ℤ) + 2

end

end A037492.P8642908824383838701

namespace A037492

/-- `7*a(n-1)-and(1, n)+2` -/
def P8642908824383838701.Spec : Prop :=
  ∀ n, P8642908824383838701.a n = A037492 (n + 1)

end A037492

/-! ## A037492.P2726005908992823467

`7*a(n-1)-(and(1, n)-2)` with `a(0)=2`
-/

namespace A037492.P2726005908992823467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  7 * a (n - 1) - ((Nat.land 1 n : ℤ) - 2)

end

end A037492.P2726005908992823467

namespace A037492

/-- `7*a(n-1)-(and(1, n)-2)` -/
def P2726005908992823467.Spec : Prop :=
  ∀ n, P2726005908992823467.a n = A037492 (n + 1)

end A037492

/-! ## A037492.P13227272356394338213

`∑[(-1)^n+7*a(n-1)]` with `a(0)=2`
-/

namespace A037492.P13227272356394338213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (-1) ^ n + 7 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037492.P13227272356394338213

namespace A037492

/-- `∑[(-1)^n+7*a(n-1)]` -/
def P13227272356394338213.Spec : Prop :=
  ∀ n, P13227272356394338213.a n = A037492 (n + 1)

end A037492

/-! ## A037492.P12665803658443403758

`7*a(n-1)+char[2*n]+1` with `a(0)=2`
-/

namespace A037492.P12665803658443403758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  7 * a (n - 1) + ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A037492.P12665803658443403758

namespace A037492

/-- `7*a(n-1)+char[2*n]+1` -/
def P12665803658443403758.Spec : Prop :=
  ∀ n, (P12665803658443403758.a n : ℤ) = A037492 (n + 1)

end A037492

/-! ## A037492.P3625719367390593934

`∑{d}[n, round(1/#)]+lcm(7, a(n-1))` with `a(0)=2`
-/

namespace A037492.P3625719367390593934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (1 / (d : ℚ)) + (Int.lcm 7 (a (n - 1)) : ℤ)

end

end A037492.P3625719367390593934

namespace A037492

/-- `∑{d}[n, round(1/#)]+lcm(7, a(n-1))` -/
def P3625719367390593934.Spec : Prop :=
  ∀ n, P3625719367390593934.a n = A037492 (n + 1)

end A037492

/-! ## A037492.P461301408516845538

`(A037761(n+1)+A037698(n+1))/2`
-/

namespace A037492.P461301408516845538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037761 (n + 1) + A037698 (n + 1) : ℚ) / 2

end

end A037492.P461301408516845538

namespace A037492

/-- `(A037761(n+1)+A037698(n+1))/2` -/
def P461301408516845538.Spec : Prop :=
  ∀ n, P461301408516845538.a n = (A037492 (n + 1) : ℚ)

end A037492

/-! ## A037492.P101410963762247046

`(A037796(n+1)+A037684(n+1))/2`
-/

namespace A037492.P101410963762247046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037796 (n + 1) + A037684 (n + 1) : ℚ) / 2

end

end A037492.P101410963762247046

namespace A037492

/-- `(A037796(n+1)+A037684(n+1))/2` -/
def P101410963762247046.Spec : Prop :=
  ∀ n, P101410963762247046.a n = (A037492 (n + 1) : ℚ)

end A037492

/-!
# A037493: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,1.

The programs for A037493, the canonical program `A037493.P11884723274599503264` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037493 has offset 1).

The definition of A037493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037493.P11884723274599503264

`8*a(n-1)+a(n-2)-8*a(n-3)` with `a(0)=2, a(1)=17, a(2)=138`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037493

/-- `8*a(n-1)+a(n-2)-8*a(n-3)` -/
def P11884723274599503264.Spec : Prop :=
  ∀ n, P11884723274599503264.a n = A037493 (n + 1)

theorem P11884723274599503264.correct : P11884723274599503264.Spec := by
  intro n
  simp only [A037493, Nat.add_sub_cancel]

end A037493

/-! ## A037493.P10638303178567439033

`floor(17*8^(n+1)/63)`
-/

namespace A037493.P10638303178567439033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(17 * 8 ^ (n + 1) : ℚ) / 63⌋

end

end A037493.P10638303178567439033

namespace A037493

/-- `floor(17*8^(n+1)/63)` -/
def P10638303178567439033.Spec : Prop :=
  ∀ n, P10638303178567439033.a n = A037493 (n + 1)

end A037493

/-! ## A037493.P11696159331956740024

`ogf((2+x)/(1-8x-x^2+8x^3))`
-/

namespace A037493.P11696159331956740024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -8, -1, 8] n

end

end A037493.P11696159331956740024

namespace A037493

/-- `ogf((2+x)/(1-8x-x^2+8x^3))` -/
def P11696159331956740024.Spec : Prop :=
  ∀ n, P11696159331956740024.a n = A037493 (n + 1)

end A037493

/-! ## A037493.P11109299189906382570

`gcd(2, n)+8*a(n-1)` with `a(0)=2`
-/

namespace A037493.P11109299189906382570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 n + 8 * a (n - 1)

end

end A037493.P11109299189906382570

namespace A037493

/-- `gcd(2, n)+8*a(n-1)` -/
def P11109299189906382570.Spec : Prop :=
  ∀ n, (P11109299189906382570.a n : ℤ) = A037493 (n + 1)

end A037493

/-! ## A037493.P10103810034000919844

`8*a(n-1)-or(n, -2)` with `a(0)=2`
-/

namespace A037493.P10103810034000919844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  8 * a (n - 1) - Int.lor (n : ℤ) (-2)

end

end A037493.P10103810034000919844

namespace A037493

/-- `8*a(n-1)-or(n, -2)` -/
def P10103810034000919844.Spec : Prop :=
  ∀ n, P10103810034000919844.a n = A037493 (n + 1)

end A037493

/-! ## A037493.P1143122352298552909

`8*a(n-1)+2-n%2` with `a(0)=2`
-/

namespace A037493.P1143122352298552909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  8 * a (n - 1) + (2 - ((n % 2 : ℕ) : ℤ))

end

end A037493.P1143122352298552909

namespace A037493

/-- `8*a(n-1)+2-n%2` -/
def P1143122352298552909.Spec : Prop :=
  ∀ n, P1143122352298552909.a n = A037493 (n + 1)

end A037493

/-! ## A037493.P1657069241925419655

`8*a(n-1)+2-and(1, n)` with `a(0)=2`
-/

namespace A037493.P1657069241925419655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  8 * a (n - 1) + (2 - (Nat.land 1 n : ℤ))

end

end A037493.P1657069241925419655

namespace A037493

/-- `8*a(n-1)+2-and(1, n)` -/
def P1657069241925419655.Spec : Prop :=
  ∀ n, P1657069241925419655.a n = A037493 (n + 1)

end A037493

/-! ## A037493.P12953489814289981236

`xor(8*a(n-1), A134451(n))` with `a(0)=2`
-/

namespace A037493.P12953489814289981236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor (8 * a (n - 1)) (A134451 n)

end

end A037493.P12953489814289981236

namespace A037493

/-- `xor(8*a(n-1), A134451(n))` -/
def P12953489814289981236.Spec : Prop :=
  ∀ n, P12953489814289981236.a n = A037493 (n + 1)

end A037493

/-! ## A037493.P1603847979653342880

`∑[A132805(n+1)-A090409(n)]`
-/

namespace A037493.P1603847979653342880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132805 (n + 1) - A090409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037493.P1603847979653342880

namespace A037493

/-- `∑[A132805(n+1)-A090409(n)]` -/
def P1603847979653342880.Spec : Prop :=
  ∀ n, P1603847979653342880.a n = A037493 (n + 1)

end A037493

/-! ## A037493.P14199012438206485301

`∑[A132805(n)+2*A090409(n)]`
-/

namespace A037493.P14199012438206485301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132805 n + 2 * A090409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037493.P14199012438206485301

namespace A037493

/-- `∑[A132805(n)+2*A090409(n)]` -/
def P14199012438206485301.Spec : Prop :=
  ∀ n, P14199012438206485301.a n = A037493 (n + 1)

end A037493

/-! ## A037493.P7758770300551802094

`A033118(n+1)+A023001(n+1)`
-/

namespace A037493.P7758770300551802094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033118 (n + 1) + A023001 (n + 1)

end

end A037493.P7758770300551802094

namespace A037493

/-- `A033118(n+1)+A023001(n+1)` -/
def P7758770300551802094.Spec : Prop :=
  ∀ n, P7758770300551802094.a n = A037493 (n + 1)

end A037493

/-! ## A037493.P15136308597521848476

`∑[A132805(n+1)]-A015565(n+1)`
-/

namespace A037493.P15136308597521848476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015565 (n + 1)

end

end A037493.P15136308597521848476

namespace A037493

/-- `∑[A132805(n+1)]-A015565(n+1)` -/
def P15136308597521848476.Spec : Prop :=
  ∀ n, P15136308597521848476.a n = A037493 (n + 1)

end A037493

/-! ## A037493.P3303461450073336410

`∑[A024495(3*(n+1))-A090409(n)]`
-/

namespace A037493.P3303461450073336410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (3 * (n + 1)) - A090409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037493.P3303461450073336410

namespace A037493

/-- `∑[A024495(3*(n+1))-A090409(n)]` -/
def P3303461450073336410.Spec : Prop :=
  ∀ n, P3303461450073336410.a n = A037493 (n + 1)

end A037493

/-! ## A037493.P16240717126877755068

`∑[A024495(3*(n+1))]-A015565(n+1)`
-/

namespace A037493.P16240717126877755068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015565 (n + 1)

end

end A037493.P16240717126877755068

namespace A037493

/-- `∑[A024495(3*(n+1))]-A015565(n+1)` -/
def P16240717126877755068.Spec : Prop :=
  ∀ n, P16240717126877755068.a n = A037493 (n + 1)

end A037493

/-! ## A037493.P7711645198960632596

`and(A000975(A016777(n+1)), A083713(n+1))`
-/

namespace A037493.P7711645198960632596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000975 (A016777 (n + 1)).toNat) (A083713 (n + 1))

end

end A037493.P7711645198960632596

namespace A037493

/-- `and(A000975(A016777(n+1)), A083713(n+1))` -/
def P7711645198960632596.Spec : Prop :=
  ∀ n, P7711645198960632596.a n = A037493 (n + 1)

end A037493

/-!
# A037494: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,1.

The programs for A037494, the canonical program `A037494.P8789448745735977114` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037494 has offset 1).

The definition of A037494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037494.P8789448745735977114

`9*a(n-1)+a(n-2)-9*a(n-3)` with `a(0)=2, a(1)=19, a(2)=173`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037494

/-- `9*a(n-1)+a(n-2)-9*a(n-3)` -/
def P8789448745735977114.Spec : Prop :=
  ∀ n, P8789448745735977114.a n = A037494 (n + 1)

theorem P8789448745735977114.correct : P8789448745735977114.Spec := by
  intro n
  simp only [A037494, Nat.add_sub_cancel]

end A037494

/-! ## A037494.P10539300860871405611

`(19*9^(n+1)-4*(-1)^(n+1)-15)/80`
-/

namespace A037494.P10539300860871405611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((19 * 9 ^ (n + 1) : ℤ) - 4 * (-1) ^ (n + 1) - 15 : ℚ) / 80

end

end A037494.P10539300860871405611

namespace A037494

/-- `(19*9^(n+1)-4*(-1)^(n+1)-15)/80` -/
def P10539300860871405611.Spec : Prop :=
  ∀ n, P10539300860871405611.a n = (A037494 (n + 1) : ℚ)

theorem P10539300860871405611.correct : P10539300860871405611.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A037494, Nat.add_sub_cancel, A037494.P10539300860871405611.a, A037494.P8789448745735977114.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A037494, Nat.add_sub_cancel, A037494.P10539300860871405611.a, A037494.P8789448745735977114.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A037494

/-! ## A037494.P16076360363946591337

`ogf((2+x)/(1-9x-x^2+9x^3))`
-/

namespace A037494.P16076360363946591337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -9, -1, 9] n

end

end A037494.P16076360363946591337

namespace A037494

/-- `ogf((2+x)/(1-9x-x^2+9x^3))` -/
def P16076360363946591337.Spec : Prop :=
  ∀ n, P16076360363946591337.a n = A037494 (n + 1)

end A037494

/-! ## A037494.P7462473540199579907

`∑[xor(3, 9*a(n-1))]` with `a(0)=2`
-/

namespace A037494.P7462473540199579907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.xor 3 (9 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037494.P7462473540199579907

namespace A037494

/-- `∑[xor(3, 9*a(n-1))]` -/
def P7462473540199579907.Spec : Prop :=
  ∀ n, (P7462473540199579907.a n : ℤ) = A037494 (n + 1)

end A037494

/-! ## A037494.P12782856925390675805

`∑[xor(3, lcm(9, a(n-1)))]` with `a(0)=2`
-/

namespace A037494.P12782856925390675805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.xor 3 (Nat.lcm 9 (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037494.P12782856925390675805

namespace A037494

/-- `∑[xor(3, lcm(9, a(n-1)))]` -/
def P12782856925390675805.Spec : Prop :=
  ∀ n, (P12782856925390675805.a n : ℤ) = A037494 (n + 1)

end A037494

/-! ## A037494.P3634560673753170734

`gcd(2, n)+9*a(n-1)` with `a(0)=2`
-/

namespace A037494.P3634560673753170734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 n + 9 * a (n - 1)

end

end A037494.P3634560673753170734

namespace A037494

/-- `gcd(2, n)+9*a(n-1)` -/
def P3634560673753170734.Spec : Prop :=
  ∀ n, (P3634560673753170734.a n : ℤ) = A037494 (n + 1)

end A037494

/-! ## A037494.P5005798809356358741

`9*a(n-1)+2-and(1, n)` with `a(0)=2`
-/

namespace A037494.P5005798809356358741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  9 * a (n - 1) + (2 - (Nat.land 1 n : ℤ))

end

end A037494.P5005798809356358741

namespace A037494

/-- `9*a(n-1)+2-and(1, n)` -/
def P5005798809356358741.Spec : Prop :=
  ∀ n, P5005798809356358741.a n = A037494 (n + 1)

end A037494

/-! ## A037494.P5909513238541546399

`char[2*n]+9*a(n-1)+1` with `a(0)=2`
-/

namespace A037494.P5909513238541546399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + (9 * a (n - 1) + 1)

end

end A037494.P5909513238541546399

namespace A037494

/-- `char[2*n]+9*a(n-1)+1` -/
def P5909513238541546399.Spec : Prop :=
  ∀ n, (P5909513238541546399.a n : ℤ) = A037494 (n + 1)

end A037494

/-! ## A037494.P8848674043476917536

`9*a(n-1)-((1-n)%2-1)` with `a(0)=2`
-/

namespace A037494.P8848674043476917536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  9 * a (n - 1) - (Int.tmod (1 - (n : ℤ)) 2 - 1)

end

end A037494.P8848674043476917536

namespace A037494

/-- `9*a(n-1)-((1-n)%2-1)` -/
def P8848674043476917536.Spec : Prop :=
  ∀ n, P8848674043476917536.a n = A037494 (n + 1)

end A037494

/-! ## A037494.P9509704008748888248

`∑[A015577(n+1)+A001019(n)]`
-/

namespace A037494.P9509704008748888248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015577 (n + 1) + A001019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037494.P9509704008748888248

namespace A037494

/-- `∑[A015577(n+1)+A001019(n)]` -/
def P9509704008748888248.Spec : Prop :=
  ∀ n, P9509704008748888248.a n = A037494 (n + 1)

end A037494

/-! ## A037494.P7017751825546285476

`∑[2*A001019(n)-A015577(n)]`
-/

namespace A037494.P7017751825546285476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001019 n - A015577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037494.P7017751825546285476

namespace A037494

/-- `∑[2*A001019(n)-A015577(n)]` -/
def P7017751825546285476.Spec : Prop :=
  ∀ n, P7017751825546285476.a n = A037494 (n + 1)

end A037494

/-! ## A037494.P8264996556834929920

`A033119(n+1)+A033113(2*n+1)`
-/

namespace A037494.P8264996556834929920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033119 (n + 1) + A033113 (2 * n + 1)

end

end A037494.P8264996556834929920

namespace A037494

/-- `A033119(n+1)+A033113(2*n+1)` -/
def P8264996556834929920.Spec : Prop :=
  ∀ n, P8264996556834929920.a n = A037494 (n + 1)

end A037494

/-!
# A037495: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,1.

The programs for A037495, the canonical program `A037495.P11555927895491587427` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037495 has offset 1).

The definition of A037495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037495.P26554536577676756

`ogf((2+x)/(1-10x-x^2+10x^3))`
-/

namespace A037495.P26554536577676756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -10, -1, 10] n

end

end A037495.P26554536577676756

namespace A037495

/-- `ogf((2+x)/(1-10x-x^2+10x^3))` -/
def P26554536577676756.Spec : Prop :=
  ∀ n, P26554536577676756.a n = A037495 (n + 1)

end A037495

/-! ## A037495.P11555927895491587427

`gcd(2, n)+10*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037495

/-- `gcd(2, n)+10*a(n-1)` -/
def P11555927895491587427.Spec : Prop :=
  ∀ n, (P11555927895491587427.a n : ℤ) = A037495 (n + 1)

theorem P11555927895491587427.correct : P11555927895491587427.Spec := by
  intro n
  simp only [A037495, Nat.add_sub_cancel]

end A037495

/-! ## A037495.P8608832313994778493

`10*a(n-1)+2-n%2` with `a(0)=2`
-/

namespace A037495.P8608832313994778493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  10 * a (n - 1) + 2 - ((n % 2 : ℕ) : ℤ)

end

end A037495.P8608832313994778493

namespace A037495

/-- `10*a(n-1)+2-n%2` -/
def P8608832313994778493.Spec : Prop :=
  ∀ n, P8608832313994778493.a n = A037495 (n + 1)

end A037495

/-! ## A037495.P5521695081148465715

`A198972(n)-a(n-1)` with `a(0)=2`
-/

namespace A037495.P5521695081148465715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A198972 n - a (n - 1)

end

end A037495.P5521695081148465715

namespace A037495

/-- `A198972(n)-a(n-1)` -/
def P5521695081148465715.Spec : Prop :=
  ∀ n, P5521695081148465715.a n = A037495 (n + 1)

end A037495

/-! ## A037495.P3375175911309218569

`abs(A280193(n))+10*a(n-1)` with `a(0)=2`
-/

namespace A037495.P3375175911309218569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |A280193 n| + 10 * a (n - 1)

end

end A037495.P3375175911309218569

namespace A037495

/-- `abs(A280193(n))+10*a(n-1)` -/
def P3375175911309218569.Spec : Prop :=
  ∀ n, P3375175911309218569.a n = A037495 (n + 1)

end A037495

/-! ## A037495.P17323025337154185972

`A000034(n+1)+10*a(n-1)` with `a(0)=2`
-/

namespace A037495.P17323025337154185972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000034 (n + 1) + 10 * a (n - 1)

end

end A037495.P17323025337154185972

namespace A037495

/-- `A000034(n+1)+10*a(n-1)` -/
def P17323025337154185972.Spec : Prop :=
  ∀ n, P17323025337154185972.a n = A037495 (n + 1)

end A037495

/-! ## A037495.P15574049128985947531

`∑[10*a(n-1)]/2-A056830(n)` with `a(0)=4`
-/

namespace A037495.P15574049128985947531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 - (A056830 n : ℚ)

end

end A037495.P15574049128985947531

namespace A037495

/-- `∑[10*a(n-1)]/2-A056830(n)` -/
def P15574049128985947531.Spec : Prop :=
  ∀ n, P15574049128985947531.a n = (A037495 (n + 1) : ℚ)

end A037495

/-! ## A037495.P18092286701428428474

`A055396(2*n+3+n)+10*a(n-1)` with `a(0)=2`
-/

namespace A037495.P18092286701428428474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A055396 (2 * n + 3 + n) + 10 * a (n - 1)

end

end A037495.P18092286701428428474

namespace A037495

/-- `A055396(2*n+3+n)+10*a(n-1)` -/
def P18092286701428428474.Spec : Prop :=
  ∀ n, P18092286701428428474.a n = A037495 (n + 1)

end A037495

/-! ## A037495.P6094001017568400094

`A002276(n+1)-A056830(n)`
-/

namespace A037495.P6094001017568400094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (n + 1) - A056830 n

end

end A037495.P6094001017568400094

namespace A037495

/-- `A002276(n+1)-A056830(n)` -/
def P6094001017568400094.Spec : Prop :=
  ∀ n, P6094001017568400094.a n = A037495 (n + 1)

end A037495

/-! ## A037495.P5334099501498097967

`∑[A011557(n)+Δ[A056830(n)]]`
-/

namespace A037495.P5334099501498097967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037495.P5334099501498097967

namespace A037495

/-- `∑[A011557(n)+Δ[A056830(n)]]` -/
def P5334099501498097967.Spec : Prop :=
  ∀ n, P5334099501498097967.a n = A037495 (n + 1)

end A037495

/-! ## A037495.P8821320959908195413

`A056830(n+1)+∑[A011557(n)]`
-/

namespace A037495.P8821320959908195413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037495.P8821320959908195413

namespace A037495

/-- `A056830(n+1)+∑[A011557(n)]` -/
def P8821320959908195413.Spec : Prop :=
  ∀ n, P8821320959908195413.a n = A037495 (n + 1)

end A037495

/-! ## A037495.P11435002445937806396

`A056830(n+1)+Δ[A014824(n)]`
-/

namespace A037495.P11435002445937806396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037495.P11435002445937806396

namespace A037495

/-- `A056830(n+1)+Δ[A014824(n)]` -/
def P11435002445937806396.Spec : Prop :=
  ∀ n, P11435002445937806396.a n = A037495 (n + 1)

end A037495

/-! ## A037495.P11261023255118537990

`Δ[2*A014824(n)]-A056830(n)`
-/

namespace A037495.P11261023255118537990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A056830 n

end

end A037495.P11261023255118537990

namespace A037495

/-- `Δ[2*A014824(n)]-A056830(n)` -/
def P11261023255118537990.Spec : Prop :=
  ∀ n, P11261023255118537990.a n = A037495 (n + 1)

end A037495

/-! ## A037495.P12715365446947012336

`A056830(n+1)+A000042(n+1)`
-/

namespace A037495.P12715365446947012336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (n + 1) + A000042 (n + 1)

end

end A037495.P12715365446947012336

namespace A037495

/-- `A056830(n+1)+A000042(n+1)` -/
def P12715365446947012336.Spec : Prop :=
  ∀ n, P12715365446947012336.a n = A037495 (n + 1)

end A037495

/-! ## A037495.P14890105073438706684

`A056830(n+1)+A002275(n+1)`
-/

namespace A037495.P14890105073438706684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (n + 1) + A002275 (n + 1)

end

end A037495.P14890105073438706684

namespace A037495

/-- `A056830(n+1)+A002275(n+1)` -/
def P14890105073438706684.Spec : Prop :=
  ∀ n, P14890105073438706684.a n = A037495 (n + 1)

end A037495

/-! ## A037495.P11134802326145829300

`A056830(n+1)+A002276(n+1)/2`
-/

namespace A037495.P11134802326145829300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056830 (n + 1) : ℚ) + (A002276 (n + 1) : ℚ) / 2

end

end A037495.P11134802326145829300

namespace A037495

/-- `A056830(n+1)+A002276(n+1)/2` -/
def P11134802326145829300.Spec : Prop :=
  ∀ n, P11134802326145829300.a n = (A037495 (n + 1) : ℚ)

end A037495

/-! ## A037495.P921418574129814423

`A344749(A017185(n))+A056830(n+1)`
-/

namespace A037495.P921418574129814423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344749 (A017185 n).toNat + A056830 (n + 1)

end

end A037495.P921418574129814423

namespace A037495

/-- `A344749(A017185(n))+A056830(n+1)` -/
def P921418574129814423.Spec : Prop :=
  ∀ n, P921418574129814423.a n = A037495 (n + 1)

end A037495

/-! ## A037495.P14223891697883860004

`2*A344749(A017185(n))-A056830(n)`
-/

namespace A037495.P14223891697883860004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344749 (A017185 n).toNat - A056830 n

end

end A037495.P14223891697883860004

namespace A037495

/-- `2*A344749(A017185(n))-A056830(n)` -/
def P14223891697883860004.Spec : Prop :=
  ∀ n, P14223891697883860004.a n = A037495 (n + 1)

end A037495

/-! ## A037495.P12499174058952571045

`A002276(n)-(A056830(n)-Δ[A002276(n)])`
-/

namespace A037495.P12499174058952571045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n - (A056830 n - (f1 (n + 1) - f1 n))

end

end A037495.P12499174058952571045

namespace A037495

/-- `A002276(n)-(A056830(n)-Δ[A002276(n)])` -/
def P12499174058952571045.Spec : Prop :=
  ∀ n, P12499174058952571045.a n = A037495 (n + 1)

end A037495

/-! ## A037495.P10662756603887993935

`A056830(n+1)+A056830(n+1)+A056830(n)`
-/

namespace A037495.P10662756603887993935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (n + 1) + (A056830 (n + 1) + A056830 n)

end

end A037495.P10662756603887993935

namespace A037495

/-- `A056830(n+1)+A056830(n+1)+A056830(n)` -/
def P10662756603887993935.Spec : Prop :=
  ∀ n, P10662756603887993935.a n = A037495 (n + 1)

end A037495

/-!
# A037496: Base-3 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2.

The programs for A037496, the canonical program `A037496.P16844071048061808176` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037496 has offset 1).

The definition of A037496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037496.P16844071048061808176

`3*a(n-1)+a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=3, a(2)=11, a(3)=34`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037496

/-- `3*a(n-1)+a(n-3)-3*a(n-4)` -/
def P16844071048061808176.Spec : Prop :=
  ∀ n, P16844071048061808176.a n = A037496 (n + 1)

theorem P16844071048061808176.correct : P16844071048061808176.Spec := by
  intro n
  simp only [A037496, Nat.add_sub_cancel]

end A037496

/-! ## A037496.P6647688063036787619

`round((11*3^(n+1)-13)/26)`
-/

namespace A037496.P6647688063036787619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((11 * 3 ^ (n + 1) : ℤ) - 13 : ℚ) / 26)

end

end A037496.P6647688063036787619

namespace A037496

/-- `round((11*3^(n+1)-13)/26)` -/
def P6647688063036787619.Spec : Prop :=
  ∀ n, P6647688063036787619.a n = A037496 (n + 1)

end A037496

/-! ## A037496.P7709113818965529973

`ogf((1+2x^2)/(1-3x-x^3+3x^4))`
-/

namespace A037496.P7709113818965529973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -3, 0, -1, 3] n

end

end A037496.P7709113818965529973

namespace A037496

/-- `ogf((1+2x^2)/(1-3x-x^3+3x^4))` -/
def P7709113818965529973.Spec : Prop :=
  ∀ n, P7709113818965529973.a n = A037496 (n + 1)

end A037496

/-! ## A037496.P4587767389165526002

`Δ[n²]%3+3*a(n-1)` with `a(0)=1`
-/

namespace A037496.P4587767389165526002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 3 + 3 * a (n - 1)

end

end A037496.P4587767389165526002

namespace A037496

/-- `Δ[n²]%3+3*a(n-1)` -/
def P4587767389165526002.Spec : Prop :=
  ∀ n, P4587767389165526002.a n = A037496 (n + 1)

end A037496

/-! ## A037496.P5902952777953279003

`3*a(n-1)+2-(n+1)%3` with `a(0)=1`
-/

namespace A037496.P5902952777953279003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (2 - (((n + 1) % 3 : ℕ) : ℤ))

end

end A037496.P5902952777953279003

namespace A037496

/-- `3*a(n-1)+2-(n+1)%3` -/
def P5902952777953279003.Spec : Prop :=
  ∀ n, P5902952777953279003.a n = A037496 (n + 1)

end A037496

/-! ## A037496.P10711634105023651343

`3*a(n-1)-(1-a(n-1))%3` with `a(0)=1`
-/

namespace A037496.P10711634105023651343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - Int.tmod (1 - a (n - 1)) 3

end

end A037496.P10711634105023651343

namespace A037496

/-- `3*a(n-1)-(1-a(n-1))%3` -/
def P10711634105023651343.Spec : Prop :=
  ∀ n, P10711634105023651343.a n = A037496 (n + 1)

end A037496

/-! ## A037496.P3285007280410748279

`A037078(Δ[n²])`
-/

namespace A037496.P3285007280410748279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037078 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A037496.P3285007280410748279

namespace A037496

/-- `A037078(Δ[n²])` -/
def P3285007280410748279.Spec : Prop :=
  ∀ n, P3285007280410748279.a n = A037496 (n + 1)

end A037496

/-! ## A037496.P8212046039003906095

`A033121(n+1)+A368344(n+1)-A368344(n)`
-/

namespace A037496.P8212046039003906095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033121 (n + 1) + (A368344 (n + 1) - A368344 n)

end

end A037496.P8212046039003906095

namespace A037496

/-- `A033121(n+1)+A368344(n+1)-A368344(n)` -/
def P8212046039003906095.Spec : Prop :=
  ∀ n, P8212046039003906095.a n = A037496 (n + 1)

end A037496

/-! ## A037496.P8354451675679990632

`A033121(n+1)+A033121(n+1)-A033139(n+1)`
-/

namespace A037496.P8354451675679990632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033121 (n + 1) + (A033121 (n + 1) - A033139 (n + 1))

end

end A037496.P8354451675679990632

namespace A037496

/-- `A033121(n+1)+A033121(n+1)-A033139(n+1)` -/
def P8354451675679990632.Spec : Prop :=
  ∀ n, P8354451675679990632.a n = A037496 (n + 1)

end A037496

/-! ## A037496.P5984561190945760272

`A037568(n+1)-A033130(n+1)`
-/

namespace A037496.P5984561190945760272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037568 (n + 1) - A033130 (n + 1)

end

end A037496.P5984561190945760272

namespace A037496

/-- `A037568(n+1)-A033130(n+1)` -/
def P5984561190945760272.Spec : Prop :=
  ∀ n, P5984561190945760272.a n = A037496 (n + 1)

end A037496

/-! ## A037496.P12375525562723749863

`2*A033121(n+1)-A033139(n+1)`
-/

namespace A037496.P12375525562723749863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033121 (n + 1) - A033139 (n + 1)

end

end A037496.P12375525562723749863

namespace A037496

/-- `2*A033121(n+1)-A033139(n+1)` -/
def P12375525562723749863.Spec : Prop :=
  ∀ n, P12375525562723749863.a n = A037496 (n + 1)

end A037496

/-!
# A037497: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2.

The programs for A037497, the canonical program `A037497.P3893065333787281505` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037497 has offset 1).

The definition of A037497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037497.P3893065333787281505

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=4, a(2)=18, a(3)=73`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037497

/-- `4*a(n-1)+a(n-3)-4*a(n-4)` -/
def P3893065333787281505.Spec : Prop :=
  ∀ n, P3893065333787281505.a n = A037497 (n + 1)

theorem P3893065333787281505.correct : P3893065333787281505.Spec := by
  intro n
  simp only [A037497, Nat.add_sub_cancel]

end A037497

/-! ## A037497.P14147152881445897578

`floor(2*4^(n+1)/7)`
-/

namespace A037497.P14147152881445897578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * 4 ^ (n + 1) : ℚ) / 7⌋

end

end A037497.P14147152881445897578

namespace A037497

/-- `floor(2*4^(n+1)/7)` -/
def P14147152881445897578.Spec : Prop :=
  ∀ n, P14147152881445897578.a n = A037497 (n + 1)

end A037497

/-! ## A037497.P5766683012129318376

`ogf((1+2x^2)/(1-4x-x^3+4x^4))`
-/

namespace A037497.P5766683012129318376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -4, 0, -1, 4] n

end

end A037497.P5766683012129318376

namespace A037497

/-- `ogf((1+2x^2)/(1-4x-x^3+4x^4))` -/
def P5766683012129318376.Spec : Prop :=
  ∀ n, P5766683012129318376.a n = A037497 (n + 1)

end A037497

/-! ## A037497.P14969344036696925218

`floor(a(n-1)/2)+4^n` with `a(0)=1`
-/

namespace A037497.P14969344036696925218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) / 2⌋ + (4 ^ n : ℤ)

end

end A037497.P14969344036696925218

namespace A037497

/-- `floor(a(n-1)/2)+4^n` -/
def P14969344036696925218.Spec : Prop :=
  ∀ n, P14969344036696925218.a n = A037497 (n + 1)

end A037497

/-! ## A037497.P6414849217346449839

`val(a(n-1), 2)+4*a(n-1)` with `a(0)=1`
-/

namespace A037497.P6414849217346449839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.valuation (a (n - 1)) 2 + 4 * a (n - 1)

end

end A037497.P6414849217346449839

namespace A037497

/-- `val(a(n-1), 2)+4*a(n-1)` -/
def P6414849217346449839.Spec : Prop :=
  ∀ n, (P6414849217346449839.a n : ℤ) = A037497 (n + 1)

end A037497

/-! ## A037497.P13174926419943253609

`or(4*a(n-1), val(a(n-1), 2))` with `a(0)=1`
-/

namespace A037497.P13174926419943253609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (4 * a (n - 1)) (SequenceMachineLib.valuation (a (n - 1)) 2)

end

end A037497.P13174926419943253609

namespace A037497

/-- `or(4*a(n-1), val(a(n-1), 2))` -/
def P13174926419943253609.Spec : Prop :=
  ∀ n, (P13174926419943253609.a n : ℤ) = A037497 (n + 1)

end A037497

/-! ## A037497.P4920508900692981197

`xor(4*a(n-1), val(a(n-1), 2))` with `a(0)=1`
-/

namespace A037497.P4920508900692981197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (4 * a (n - 1)) (SequenceMachineLib.valuation (a (n - 1)) 2)

end

end A037497.P4920508900692981197

namespace A037497

/-- `xor(4*a(n-1), val(a(n-1), 2))` -/
def P4920508900692981197.Spec : Prop :=
  ∀ n, (P4920508900692981197.a n : ℤ) = A037497 (n + 1)

end A037497

/-! ## A037497.P18338001374024826417

`4*a(n-1)+2-(n+1)%3` with `a(0)=1`
-/

namespace A037497.P18338001374024826417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + (2 - (((n + 1) % 3 : ℕ) : ℤ))

end

end A037497.P18338001374024826417

namespace A037497

/-- `4*a(n-1)+2-(n+1)%3` -/
def P18338001374024826417.Spec : Prop :=
  ∀ n, P18338001374024826417.a n = A037497 (n + 1)

end A037497

/-! ## A037497.P16703789225008930069

`floor(gcd(4, a(n-1))/2)+4*a(n-1)` with `a(0)=1`
-/

namespace A037497.P16703789225008930069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Int.gcd 4 (a (n - 1)) : ℚ) / 2⌋ + 4 * a (n - 1)

end

end A037497.P16703789225008930069

namespace A037497

/-- `floor(gcd(4, a(n-1))/2)+4*a(n-1)` -/
def P16703789225008930069.Spec : Prop :=
  ∀ n, P16703789225008930069.a n = A037497 (n + 1)

end A037497

/-! ## A037497.P5346662454324003038

`A033138(Δ[n²])`
-/

namespace A037497.P5346662454324003038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033138 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A037497.P5346662454324003038

namespace A037497

/-- `A033138(Δ[n²])` -/
def P5346662454324003038.Spec : Prop :=
  ∀ n, P5346662454324003038.a n = A037497 (n + 1)

end A037497

/-! ## A037497.P17720366195199037757

`∑[record[A078043(n)]]`
-/

namespace A037497.P17720366195199037757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078043 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037497.P17720366195199037757

namespace A037497

/-- `∑[record[A078043(n)]]` -/
def P17720366195199037757.Spec : Prop :=
  ∀ n, P17720366195199037757.a n = A037497 (n + 1)

end A037497

/-! ## A037497.P6755848735704019529

`∑[A078043(2*n)]`
-/

namespace A037497.P6755848735704019529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078043 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037497.P6755848735704019529

namespace A037497

/-- `∑[A078043(2*n)]` -/
def P6755848735704019529.Spec : Prop :=
  ∀ n, P6755848735704019529.a n = A037497 (n + 1)

end A037497

/-! ## A037497.P9571336677429849768

`∑[A294627(Δ[n²])]`
-/

namespace A037497.P9571336677429849768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037497.P9571336677429849768

namespace A037497

/-- `∑[A294627(Δ[n²])]` -/
def P9571336677429849768.Spec : Prop :=
  ∀ n, P9571336677429849768.a n = A037497 (n + 1)

end A037497

/-! ## A037497.P1727224314580531399

`A155803(2*n+3)`
-/

namespace A037497.P1727224314580531399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (2 * n + 3)

end

end A037497.P1727224314580531399

namespace A037497

/-- `A155803(2*n+3)` -/
def P1727224314580531399.Spec : Prop :=
  ∀ n, P1727224314580531399.a n = A037497 (n + 1)

end A037497

/-! ## A037497.P13051906701920355006

`A046630(Δ[n²])-1`
-/

namespace A037497.P13051906701920355006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A037497.P13051906701920355006

namespace A037497

/-- `A046630(Δ[n²])-1` -/
def P13051906701920355006.Spec : Prop :=
  ∀ n, P13051906701920355006.a n = A037497 (n + 1)

end A037497

/-! ## A037497.P12409686124075133480

`record[A033138(n%10+1+n)]`
-/

namespace A037497.P12409686124075133480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033138 (n % 10 + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037497.P12409686124075133480

namespace A037497

/-- `record[A033138(n%10+1+n)]` -/
def P12409686124075133480.Spec : Prop :=
  ∀ n, P12409686124075133480.a n = A037497 (n + 1)

end A037497

/-! ## A037497.P17115454167589899725

`A078043(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A037497.P17115454167589899725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078043 (n + n) + a (n - 1)

end

end A037497.P17115454167589899725

namespace A037497

/-- `A078043(n+n)+a(n-1)` -/
def P17115454167589899725.Spec : Prop :=
  ∀ n, P17115454167589899725.a n = A037497 (n + 1)

end A037497

/-! ## A037497.P8193400336181205034

`A048333(A047350(2*n+1))`
-/

namespace A037497.P8193400336181205034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048333 (A047350 (2 * n + 1)).toNat

end

end A037497.P8193400336181205034

namespace A037497

/-- `A048333(A047350(2*n+1))` -/
def P8193400336181205034.Spec : Prop :=
  ∀ n, P8193400336181205034.a n = A037497 (n + 1)

end A037497

/-! ## A037497.P8357756000203219592

`record[A046630(A109785(2*n))-1]`
-/

namespace A037497.P8357756000203219592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 (A109785 (2 * n)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037497.P8357756000203219592

namespace A037497

/-- `record[A046630(A109785(2*n))-1]` -/
def P8357756000203219592.Spec : Prop :=
  ∀ n, P8357756000203219592.a n = A037497 (n + 1)

end A037497

/-! ## A037497.P16112130279684563409

`2*A077947(2*n)-A079978(n)`
-/

namespace A037497.P16112130279684563409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077947 (2 * n) - A079978 n

end

end A037497.P16112130279684563409

namespace A037497

/-- `2*A077947(2*n)-A079978(n)` -/
def P16112130279684563409.Spec : Prop :=
  ∀ n, P16112130279684563409.a n = A037497 (n + 1)

end A037497

/-!
# A037498: Base-5 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2.

The programs for A037498, the canonical program `A037498.P5266891646091660087` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037498 has offset 1).

The definition of A037498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037498.P13397092882707254449

`ogf((1+2x^2)/(1-5x-x^3+5x^4))`
-/

namespace A037498.P13397092882707254449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -5, 0, -1, 5] n

end

end A037498.P13397092882707254449

namespace A037498

/-- `ogf((1+2x^2)/(1-5x-x^3+5x^4))` -/
def P13397092882707254449.Spec : Prop :=
  ∀ n, P13397092882707254449.a n = A037498 (n + 1)

end A037498

/-! ## A037498.P5266891646091660087

`5*a(n-1)+2-(n+1)%3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037498

/-- `5*a(n-1)+2-(n+1)%3` -/
def P5266891646091660087.Spec : Prop :=
  ∀ n, P5266891646091660087.a n = A037498 (n + 1)

theorem P5266891646091660087.correct : P5266891646091660087.Spec := by
  intro n
  simp only [A037498, Nat.add_sub_cancel]

end A037498

/-! ## A037498.P16372421238956132772

`∑[5*a(n-1)-A061347(n+1)]` with `a(0)=1`
-/

namespace A037498.P16372421238956132772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1) - A061347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037498.P16372421238956132772

namespace A037498

/-- `∑[5*a(n-1)-A061347(n+1)]` -/
def P16372421238956132772.Spec : Prop :=
  ∀ n, P16372421238956132772.a n = A037498 (n + 1)

end A037498

/-! ## A037498.P2475812115881623461

`∑[5*a(n-1)-A100051(A017353(n))]` with `a(0)=1`
-/

namespace A037498.P2475812115881623461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1) - A100051 (A017353 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037498.P2475812115881623461

namespace A037498

/-- `∑[5*a(n-1)-A100051(A017353(n))]` -/
def P2475812115881623461.Spec : Prop :=
  ∀ n, P2475812115881623461.a n = A037498 (n + 1)

end A037498

/-! ## A037498.P6761844427530485408

`A033123(n+1)+A033123(n+1)-A033141(n+1)`
-/

namespace A037498.P6761844427530485408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033123 (n + 1) + (A033123 (n + 1) - A033141 (n + 1))

end

end A037498.P6761844427530485408

namespace A037498

/-- `A033123(n+1)+A033123(n+1)-A033141(n+1)` -/
def P6761844427530485408.Spec : Prop :=
  ∀ n, P6761844427530485408.a n = A037498 (n + 1)

end A037498

/-! ## A037498.P5083843623370625849

`A037619(n+1)-A033123(n+1)`
-/

namespace A037498.P5083843623370625849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037619 (n + 1) - A033123 (n + 1)

end

end A037498.P5083843623370625849

namespace A037498

/-- `A037619(n+1)-A033123(n+1)` -/
def P5083843623370625849.Spec : Prop :=
  ∀ n, P5083843623370625849.a n = A037498 (n + 1)

end A037498

/-! ## A037498.P15795742670280467262

`2*A033123(n+1)-A033141(n+1)`
-/

namespace A037498.P15795742670280467262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033123 (n + 1) - A033141 (n + 1)

end

end A037498.P15795742670280467262

namespace A037498

/-- `2*A033123(n+1)-A033141(n+1)` -/
def P15795742670280467262.Spec : Prop :=
  ∀ n, P15795742670280467262.a n = A037498 (n + 1)

end A037498

/-! ## A037498.P16897996015174840833

`(A037591(n+1)+A033123(n+1))/2`
-/

namespace A037498.P16897996015174840833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037591 (n + 1) + A033123 (n + 1) : ℚ) / 2

end

end A037498.P16897996015174840833

namespace A037498

/-- `(A037591(n+1)+A033123(n+1))/2` -/
def P16897996015174840833.Spec : Prop :=
  ∀ n, P16897996015174840833.a n = (A037498 (n + 1) : ℚ)

end A037498

/-! ## A037498.P13955770267987803816

`2*A037530(n+1)-A037546(n+1)`
-/

namespace A037498.P13955770267987803816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037530 (n + 1) - A037546 (n + 1)

end

end A037498.P13955770267987803816

namespace A037498

/-- `2*A037530(n+1)-A037546(n+1)` -/
def P13955770267987803816.Spec : Prop :=
  ∀ n, P13955770267987803816.a n = A037498 (n + 1)

end A037498

/-! ## A037498.P9489468343984497416

`A037538(n+1)+A037554(n+1)-A037626(n+1)`
-/

namespace A037498.P9489468343984497416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037538 (n + 1) + (A037554 (n + 1) - A037626 (n + 1))

end

end A037498.P9489468343984497416

namespace A037498

/-- `A037538(n+1)+A037554(n+1)-A037626(n+1)` -/
def P9489468343984497416.Spec : Prop :=
  ∀ n, P9489468343984497416.a n = A037498 (n + 1)

end A037498

/-!
# A037499: Base-6 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2.

The programs for A037499, the canonical program `A037499.P16430178348752193434` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037499 has offset 1).

The definition of A037499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037499.P14642500495370652078

`ogf((1+2x^2)/(1-6x-x^3+6x^4))`
-/

namespace A037499.P14642500495370652078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -6, 0, -1, 6] n

end

end A037499.P14642500495370652078

namespace A037499

/-- `ogf((1+2x^2)/(1-6x-x^3+6x^4))` -/
def P14642500495370652078.Spec : Prop :=
  ∀ n, P14642500495370652078.a n = A037499 (n + 1)

end A037499

/-! ## A037499.P16430178348752193434

`or(6*a(n-1), (2*n+1)%3)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037499

/-- `or(6*a(n-1), (2*n+1)%3)` -/
def P16430178348752193434.Spec : Prop :=
  ∀ n, (P16430178348752193434.a n : ℤ) = A037499 (n + 1)

theorem P16430178348752193434.correct : P16430178348752193434.Spec := by
  intro n
  simp only [A037499, Nat.add_sub_cancel]

end A037499

/-! ## A037499.P5341730136959594737

`∑[6*a(n-1)-A061347(n+1)]` with `a(0)=1`
-/

namespace A037499.P5341730136959594737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1) - A061347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037499.P5341730136959594737

namespace A037499

/-- `∑[6*a(n-1)-A061347(n+1)]` -/
def P5341730136959594737.Spec : Prop :=
  ∀ n, P5341730136959594737.a n = A037499 (n + 1)

end A037499

/-! ## A037499.P16134972574770024605

`2*3*a(n-1)-A102283(n)+1` with `a(0)=1`
-/

namespace A037499.P16134972574770024605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (3 * a (n - 1)) - A102283 n + 1

end

end A037499.P16134972574770024605

namespace A037499

/-- `2*3*a(n-1)-A102283(n)+1` -/
def P16134972574770024605.Spec : Prop :=
  ∀ n, P16134972574770024605.a n = A037499 (n + 1)

end A037499

/-! ## A037499.P7055180898009197471

`2*A033124(n+1)-A033142(n+1)`
-/

namespace A037499.P7055180898009197471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033124 (n + 1) - A033142 (n + 1)

end

end A037499.P7055180898009197471

namespace A037499

/-- `2*A033124(n+1)-A033142(n+1)` -/
def P7055180898009197471.Spec : Prop :=
  ∀ n, P7055180898009197471.a n = A037499 (n + 1)

end A037499

/-! ## A037499.P2270441312774535488

`2*A037531(n+1)-A037547(n+1)`
-/

namespace A037499.P2270441312774535488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037531 (n + 1) - A037547 (n + 1)

end

end A037499.P2270441312774535488

namespace A037499

/-- `2*A037531(n+1)-A037547(n+1)` -/
def P2270441312774535488.Spec : Prop :=
  ∀ n, P2270441312774535488.a n = A037499 (n + 1)

end A037499

/-! ## A037499.P8480576260532435950

`xor(6*a(n-1), A010872(A005408(n)))` with `a(0)=1`
-/

namespace A037499.P8480576260532435950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (6 * a (n - 1)) (A010872 (A005408 n).toNat)

end

end A037499.P8480576260532435950

namespace A037499

/-- `xor(6*a(n-1), A010872(A005408(n)))` -/
def P8480576260532435950.Spec : Prop :=
  ∀ n, P8480576260532435950.a n = A037499 (n + 1)

end A037499

/-! ## A037499.P585622581331771926

`∑[6*a(n-1)-A100051(A017353(n))]` with `a(0)=1`
-/

namespace A037499.P585622581331771926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1) - A100051 (A017353 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037499.P585622581331771926

namespace A037499

/-- `∑[6*a(n-1)-A100051(A017353(n))]` -/
def P585622581331771926.Spec : Prop :=
  ∀ n, P585622581331771926.a n = A037499 (n + 1)

end A037499

/-! ## A037499.P9189811877176826084

`∑[6*a(n-1)-A131713(A004092(n))]` with `a(0)=1`
-/

namespace A037499.P9189811877176826084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1) - A131713 (A004092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037499.P9189811877176826084

namespace A037499

/-- `∑[6*a(n-1)-A131713(A004092(n))]` -/
def P9189811877176826084.Spec : Prop :=
  ∀ n, P9189811877176826084.a n = A037499 (n + 1)

end A037499

/-! ## A037499.P1444007093981670025

`A037655(n+1)-2*A033142(n+1)`
-/

namespace A037499.P1444007093981670025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037655 (n + 1) - 2 * A033142 (n + 1)

end

end A037499.P1444007093981670025

namespace A037499

/-- `A037655(n+1)-2*A033142(n+1)` -/
def P1444007093981670025.Spec : Prop :=
  ∀ n, P1444007093981670025.a n = A037499 (n + 1)

end A037499

