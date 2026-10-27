import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A162800: a(n) = n-th grid point that is covered by the zig-zag function for prime numbers such that the grid point is a vertex in the graph of the function.

The programs for A162800, the canonical program `A162800.P4495527545912003925` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162800 has offset 0).

The definition of A162800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162800.P4495527545912003925

`A162345(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A162800

/-- `A162345(n)+a(n-1)` -/
def P4495527545912003925.Spec : Prop :=
  ∀ n, P4495527545912003925.a n = A162800 n

theorem P4495527545912003925.correct : P4495527545912003925.Spec := by
  intro n
  simp only [A162800]

end A162800

/-! ## A162800.P2060319407330919278

`ceil(sqrt(A023515(n+1)-1))`
-/

namespace A162800.P2060319407330919278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A023515 (n + 1) - 1 : ℝ)⌉

end

end A162800.P2060319407330919278

namespace A162800

/-- `ceil(sqrt(A023515(n+1)-1))` -/
def P2060319407330919278.Spec : Prop :=
  ∀ n, P2060319407330919278.a n = A162800 n

end A162800

/-! ## A162800.P9276820911001438246

`ceil(sqrt(A023523(n+1)-3))`
-/

namespace A162800.P9276820911001438246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A023523 (n + 1) - 3 : ℝ)⌉

end

end A162800.P9276820911001438246

namespace A162800

/-- `ceil(sqrt(A023523(n+1)-3))` -/
def P9276820911001438246.Spec : Prop :=
  ∀ n, P9276820911001438246.a n = A162800 n

end A162800

/-! ## A162800.P16247036696562737394

`∪[A024675(n+1), A196292(n)]`
-/

namespace A162800.P16247036696562737394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196292 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162800.P16247036696562737394

namespace A162800

/-- `∪[A024675(n+1), A196292(n)]` -/
def P16247036696562737394.Spec : Prop :=
  ∀ n, (P16247036696562737394.a n : ℤ) = A162800 n

end A162800

/-! ## A162800.P1524712685687364487

`∪[A162801(n+1), A162802(n+1)]`
-/

namespace A162800.P1524712685687364487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162800.P1524712685687364487

namespace A162800

/-- `∪[A162801(n+1), A162802(n+1)]` -/
def P1524712685687364487.Spec : Prop :=
  ∀ n, (P1524712685687364487.a n : ℤ) = A162800 n

end A162800

/-! ## A162800.P7167095454462501

`∑[A162345(n+1)]-A162345(n+1)`
-/

namespace A162800.P7167095454462501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A162345 (n + 1)

end

end A162800.P7167095454462501

namespace A162800

/-- `∑[A162345(n+1)]-A162345(n+1)` -/
def P7167095454462501.Spec : Prop :=
  ∀ n, P7167095454462501.a n = A162800 n

end A162800

/-! ## A162800.P7760738973756621978

`A062839(n+1)+A062839(n+2)-A024675(n+1)`
-/

namespace A162800.P7760738973756621978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062839 (n + 1) + (A062839 (n + 2) - A024675 (n + 1))

end

end A162800.P7760738973756621978

namespace A162800

/-- `A062839(n+1)+A062839(n+2)-A024675(n+1)` -/
def P7760738973756621978.Spec : Prop :=
  ∀ n, P7760738973756621978.a n = A162800 n

end A162800

/-! ## A162800.P14373258311426679856

`A024675(n+1)-(A162345(n+1)+A115061(n+2))`
-/

namespace A162800.P14373258311426679856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - (A162345 (n + 1) + A115061 (n + 2))

end

end A162800.P14373258311426679856

namespace A162800

/-- `A024675(n+1)-(A162345(n+1)+A115061(n+2))` -/
def P14373258311426679856.Spec : Prop :=
  ∀ n, P14373258311426679856.a n = A162800 n

end A162800

/-! ## A162800.P8014597128787419172

`A024675(n+1)-(A162345(n+1)+A162345(n+2))`
-/

namespace A162800.P8014597128787419172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - (A162345 (n + 1) + A162345 (n + 2))

end

end A162800.P8014597128787419172

namespace A162800

/-- `A024675(n+1)-(A162345(n+1)+A162345(n+2))` -/
def P8014597128787419172.Spec : Prop :=
  ∀ n, P8014597128787419172.a n = A162800 n

end A162800

/-! ## A162800.P17088972173277434312

`ceil(sqrt(A057602(2*n+1)-2))`
-/

namespace A162800.P17088972173277434312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A057602 (2 * n + 1) - 2 : ℝ)⌉

end

end A162800.P17088972173277434312

namespace A162800

/-- `ceil(sqrt(A057602(2*n+1)-2))` -/
def P17088972173277434312.Spec : Prop :=
  ∀ n, P17088972173277434312.a n = A162800 n

end A162800

/-! ## A162800.P1002638513863235280

`record[A285712(n+1)+n]`
-/

namespace A162800.P1002638513863235280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285712 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162800.P1002638513863235280

namespace A162800

/-- `record[A285712(n+1)+n]` -/
def P1002638513863235280.Spec : Prop :=
  ∀ n, P1002638513863235280.a n = A162800 n

end A162800

/-! ## A162800.P12451592605698179097

`record[A210882(n+1)%or(1, n+1)]`
-/

namespace A162800.P12451592605698179097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210882 (n + 1)) (Nat.lor 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162800.P12451592605698179097

namespace A162800

/-- `record[A210882(n+1)%or(1, n+1)]` -/
def P12451592605698179097.Spec : Prop :=
  ∀ n, P12451592605698179097.a n = A162800 n

end A162800

/-! ## A162800.P5227815848375566735

`record[ceil(sqrt(A353791(n+1)-1))]`
-/

namespace A162800.P5227815848375566735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A353791 (n + 1) - 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162800.P5227815848375566735

namespace A162800

/-- `record[ceil(sqrt(A353791(n+1)-1))]` -/
def P5227815848375566735.Spec : Prop :=
  ∀ n, P5227815848375566735.a n = A162800 n

end A162800

/-! ## A162800.P17780168188190214677

`A004526(A069102(n+2))`
-/

namespace A162800.P17780168188190214677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A069102 (n + 2)).toNat

end

end A162800.P17780168188190214677

namespace A162800

/-- `A004526(A069102(n+2))` -/
def P17780168188190214677.Spec : Prop :=
  ∀ n, P17780168188190214677.a n = A162800 n

end A162800

/-! ## A162800.P372053055579453375

`A289435(A164653(n+2))`
-/

namespace A162800.P372053055579453375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (A164653 (n + 2)).toNat

end

end A162800.P372053055579453375

namespace A162800

/-- `A289435(A164653(n+2))` -/
def P372053055579453375.Spec : Prop :=
  ∀ n, P372053055579453375.a n = A162800 n

end A162800

/-! ## A162800.P5379425942332030552

`∑[A162341(n)-(-1)^n]`
-/

namespace A162800.P5379425942332030552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162341 n - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162800.P5379425942332030552

namespace A162800

/-- `∑[A162341(n)-(-1)^n]` -/
def P5379425942332030552.Spec : Prop :=
  ∀ n, P5379425942332030552.a n = A162800 n

end A162800

/-!
# A162801: Bisection of A162800.

The programs for A162801, the canonical program `A162801.P8102485252760729664` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162801 has offset 1).

The definition of A162801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162801.P8102485252760729664

`A058296(n+1)%Δ[n²]²`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A162801

/-- `A058296(n+1)%Δ[n²]²` -/
def P8102485252760729664.Spec : Prop :=
  ∀ n, P8102485252760729664.a n = A162801 (n + 1)

theorem P8102485252760729664.correct : P8102485252760729664.Spec := by
  intro n
  simp only [A162801, Nat.add_sub_cancel]

end A162801

/-! ## A162801.P7165254755458231137

`Δ[A321178(floor(acot(n))-1+n)]`
-/

namespace A162801.P7165254755458231137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321178 (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162801.P7165254755458231137

namespace A162801

/-- `Δ[A321178(floor(acot(n))-1+n)]` -/
def P7165254755458231137.Spec : Prop :=
  ∀ n, P7165254755458231137.a n = A162801 (n + 1)

end A162801

/-! ## A162801.P16579227734162955718

`Δ[A007504(abs(1-2*n))]/2`
-/

namespace A162801.P16579227734162955718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 |1 - (2 * n : ℤ)|.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A162801.P16579227734162955718

namespace A162801

/-- `Δ[A007504(abs(1-2*n))]/2` -/
def P16579227734162955718.Spec : Prop :=
  ∀ n, P16579227734162955718.a n = (A162801 (n + 1) : ℚ)

end A162801

/-! ## A162801.P14501870022467399259

`A058296(n+1)-A000038(n)`
-/

namespace A162801.P14501870022467399259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058296 (n + 1) - A000038 n

end

end A162801.P14501870022467399259

namespace A162801

/-- `A058296(n+1)-A000038(n)` -/
def P14501870022467399259.Spec : Prop :=
  ∀ n, P14501870022467399259.a n = A162801 (n + 1)

end A162801

/-! ## A162801.P10762697081420161880

`A057427(n)*A058296(n+1)`
-/

namespace A162801.P10762697081420161880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A058296 (n + 1)

end

end A162801.P10762697081420161880

namespace A162801

/-- `A057427(n)*A058296(n+1)` -/
def P10762697081420161880.Spec : Prop :=
  ∀ n, P10762697081420161880.a n = A162801 (n + 1)

end A162801

/-! ## A162801.P18054715037392902295

`and(A057428(n), A058296(n+1))`
-/

namespace A162801.P18054715037392902295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A058296 (n + 1))

end

end A162801.P18054715037392902295

namespace A162801

/-- `and(A057428(n), A058296(n+1))` -/
def P18054715037392902295.Spec : Prop :=
  ∀ n, P18054715037392902295.a n = A162801 (n + 1)

end A162801

/-! ## A162801.P16811095985708902028

`and(A058296(n+1), A260196(n))`
-/

namespace A162801.P16811095985708902028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058296 (n + 1)) (A260196 n)

end

end A162801.P16811095985708902028

namespace A162801

/-- `and(A058296(n+1), A260196(n))` -/
def P16811095985708902028.Spec : Prop :=
  ∀ n, P16811095985708902028.a n = A162801 (n + 1)

end A162801

/-! ## A162801.P4932878227504256781

`and(A058296(n+1), A153881(n+1))`
-/

namespace A162801.P4932878227504256781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058296 (n + 1)) (A153881 (n + 1))

end

end A162801.P4932878227504256781

namespace A162801

/-- `and(A058296(n+1), A153881(n+1))` -/
def P4932878227504256781.Spec : Prop :=
  ∀ n, P4932878227504256781.a n = A162801 (n + 1)

end A162801

/-! ## A162801.P15310184511806962980

`∑{e}[A006530(n+1), A058296(#+n)]`
-/

namespace A162801.P15310184511806962980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A058296 (Nat.factorization (f1 n).natAbs p + n)

end

end A162801.P15310184511806962980

namespace A162801

/-- `∑{e}[A006530(n+1), A058296(#+n)]` -/
def P15310184511806962980.Spec : Prop :=
  ∀ n, P15310184511806962980.a n = A162801 (n + 1)

end A162801

/-! ## A162801.P13399313248446571790

`A000040(n+1)%2*A058296(n+1)`
-/

namespace A162801.P13399313248446571790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A058296 (n + 1)

end

end A162801.P13399313248446571790

namespace A162801

/-- `A000040(n+1)%2*A058296(n+1)` -/
def P13399313248446571790.Spec : Prop :=
  ∀ n, P13399313248446571790.a n = A162801 (n + 1)

end A162801

/-! ## A162801.P4064653543567431437

`A162800(2*n)`
-/

namespace A162801.P4064653543567431437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (2 * n)

end

end A162801.P4064653543567431437

namespace A162801

/-- `A162800(2*n)` -/
def P4064653543567431437.Spec : Prop :=
  ∀ n, P4064653543567431437.a n = A162801 (n + 1)

end A162801

/-! ## A162801.P11810202825465069912

`record[floor(A008866(n+1)/2)]`
-/

namespace A162801.P11810202825465069912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008866 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162801.P11810202825465069912

namespace A162801

/-- `record[floor(A008866(n+1)/2)]` -/
def P11810202825465069912.Spec : Prop :=
  ∀ n, P11810202825465069912.a n = A162801 (n + 1)

end A162801

/-! ## A162801.P18235768435356916128

`record[A001043(n+1)/2*n%2]`
-/

namespace A162801.P18235768435356916128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001043 (n + 1) : ℚ) / 2 * ((n % 2 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162801.P18235768435356916128

namespace A162801

/-- `record[A001043(n+1)/2*n%2]` -/
def P18235768435356916128.Spec : Prop :=
  ∀ n, P18235768435356916128.a n = (A162801 (n + 1) : ℚ)

end A162801

/-! ## A162801.P16915367855391957282

`record[(A078444(n+1)+1)*and(1, n)]`
-/

namespace A162801.P16915367855391957282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078444 (n + 1) + 1) * (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162801.P16915367855391957282

namespace A162801

/-- `record[(A078444(n+1)+1)*and(1, n)]` -/
def P16915367855391957282.Spec : Prop :=
  ∀ n, P16915367855391957282.a n = A162801 (n + 1)

end A162801

/-! ## A162801.P796920667295737568

`n*A011974(2*n+1)/A004275(n+1)`
-/

namespace A162801.P796920667295737568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A011974 (2 * n + 1) : ℚ) / (A004275 (n + 1) : ℚ))

end

end A162801.P796920667295737568

namespace A162801

/-- `n*A011974(2*n+1)/A004275(n+1)` -/
def P796920667295737568.Spec : Prop :=
  ∀ n, P796920667295737568.a n = (A162801 (n + 1) : ℚ)

end A162801

/-! ## A162801.P5490648334662757185

`ceil(sqrt(A023515(2*n+1)-1))`
-/

namespace A162801.P5490648334662757185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A023515 (2 * n + 1) - 1 : ℝ)⌉

end

end A162801.P5490648334662757185

namespace A162801

/-- `ceil(sqrt(A023515(2*n+1)-1))` -/
def P5490648334662757185.Spec : Prop :=
  ∀ n, P5490648334662757185.a n = A162801 (n + 1)

end A162801

/-! ## A162801.P7584154249799713998

`A162802(n+1)-A162345(2*n+1)`
-/

namespace A162801.P7584154249799713998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162802 (n + 1) - A162345 (2 * n + 1)

end

end A162801.P7584154249799713998

namespace A162801

/-- `A162802(n+1)-A162345(2*n+1)` -/
def P7584154249799713998.Spec : Prop :=
  ∀ n, P7584154249799713998.a n = A162801 (n + 1)

end A162801

/-! ## A162801.P15233883199779175906

`A113523(A058296(n+1))`
-/

namespace A162801.P15233883199779175906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113523 (A058296 (n + 1)).toNat

end

end A162801.P15233883199779175906

namespace A162801

/-- `A113523(A058296(n+1))` -/
def P15233883199779175906.Spec : Prop :=
  ∀ n, P15233883199779175906.a n = A162801 (n + 1)

end A162801

/-! ## A162801.P4522703601264262551

`filter[A162800(n), A131377(#)]`
-/

namespace A162801.P4522703601264262551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131377 (f1 j).toNat = 1) n)

end

end A162801.P4522703601264262551

namespace A162801

/-- `filter[A162800(n), A131377(#)]` -/
def P4522703601264262551.Spec : Prop :=
  ∀ n, P4522703601264262551.a n = A162801 (n + 1)

end A162801

/-! ## A162801.P6709072392478414146

`A004526(A069102(2*(n+1)))`
-/

namespace A162801.P6709072392478414146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A069102 (2 * (n + 1))).toNat

end

end A162801.P6709072392478414146

namespace A162801

/-- `A004526(A069102(2*(n+1)))` -/
def P6709072392478414146.Spec : Prop :=
  ∀ n, P6709072392478414146.a n = A162801 (n + 1)

end A162801

/-!
# A162802: Bisection of A162800.

The programs for A162802, the canonical program `A162802.P1911416847344321322` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162802 has offset 1).

The definition of A162802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162802.P11904534495318584594

`round(sqrt(A089581(n+1)))`
-/

namespace A162802.P11904534495318584594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A089581 (n + 1) : ℝ))

end

end A162802.P11904534495318584594

namespace A162802

/-- `round(sqrt(A089581(n+1)))` -/
def P11904534495318584594.Spec : Prop :=
  ∀ n, P11904534495318584594.a n = A162802 (n + 1)

end A162802

/-! ## A162802.P8079294875677163168

`Δ[floor(A109722(n)/2)]`
-/

namespace A162802.P8079294875677163168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A109722 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162802.P8079294875677163168

namespace A162802

/-- `Δ[floor(A109722(n)/2)]` -/
def P8079294875677163168.Spec : Prop :=
  ∀ n, P8079294875677163168.a n = A162802 (n + 1)

end A162802

/-! ## A162802.P1911416847344321322

`floor(A100479(n+1)/2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A162802

/-- `floor(A100479(n+1)/2)` -/
def P1911416847344321322.Spec : Prop :=
  ∀ n, P1911416847344321322.a n = A162802 (n + 1)

theorem P1911416847344321322.correct : P1911416847344321322.Spec := by
  intro n
  simp only [A162802, Nat.add_sub_cancel]

end A162802

/-! ## A162802.P10530778763152523074

`∪[A007352(n+1), A079424(n+1)]`
-/

namespace A162802.P10530778763152523074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162802.P10530778763152523074

namespace A162802

/-- `∪[A007352(n+1), A079424(n+1)]` -/
def P10530778763152523074.Spec : Prop :=
  ∀ n, (P10530778763152523074.a n : ℤ) = A162802 (n + 1)

end A162802

/-! ## A162802.P390885178599929426

`∪[A064029(n+1), A079424(n+1)]`
-/

namespace A162802.P390885178599929426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162802.P390885178599929426

namespace A162802

/-- `∪[A064029(n+1), A079424(n+1)]` -/
def P390885178599929426.Spec : Prop :=
  ∀ n, (P390885178599929426.a n : ℤ) = A162802 (n + 1)

end A162802

/-! ## A162802.P10879521563041011675

`A162800(Δ[n²])`
-/

namespace A162802.P10879521563041011675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A162802.P10879521563041011675

namespace A162802

/-- `A162800(Δ[n²])` -/
def P10879521563041011675.Spec : Prop :=
  ∀ n, P10879521563041011675.a n = A162802 (n + 1)

end A162802

/-! ## A162802.P4051326034288410903

`ceil(sqrt(A037166(Δ[n²])))`
-/

namespace A162802.P4051326034288410903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A037166 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)⌉

end

end A162802.P4051326034288410903

namespace A162802

/-- `ceil(sqrt(A037166(Δ[n²])))` -/
def P4051326034288410903.Spec : Prop :=
  ∀ n, P4051326034288410903.a n = A162802 (n + 1)

end A162802

/-! ## A162802.P1741835817049549783

`ceil(sqrt(A037167(Δ[n²])))`
-/

namespace A162802.P1741835817049549783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A037167 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)⌉

end

end A162802.P1741835817049549783

namespace A162802

/-- `ceil(sqrt(A037167(Δ[n²])))` -/
def P1741835817049549783.Spec : Prop :=
  ∀ n, P1741835817049549783.a n = A162802 (n + 1)

end A162802

/-! ## A162802.P6014305072165989453

`round(sqrt(A006094(Δ[n²])))`
-/

namespace A162802.P6014305072165989453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A006094 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ))

end

end A162802.P6014305072165989453

namespace A162802

/-- `round(sqrt(A006094(Δ[n²])))` -/
def P6014305072165989453.Spec : Prop :=
  ∀ n, P6014305072165989453.a n = A162802 (n + 1)

end A162802

/-! ## A162802.P10253663833154240816

`floor(sqrt(A123134(2*n+1)))`
-/

namespace A162802.P10253663833154240816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A123134 (2 * n + 1))

end

end A162802.P10253663833154240816

namespace A162802

/-- `floor(sqrt(A123134(2*n+1)))` -/
def P10253663833154240816.Spec : Prop :=
  ∀ n, P10253663833154240816.a n = A162802 (n + 1)

end A162802

/-! ## A162802.P8317384811282261992

`floor(sqrt(A397463(2*n+1)))`
-/

namespace A162802.P8317384811282261992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A397463 (2 * n + 1))

end

end A162802.P8317384811282261992

namespace A162802

/-- `floor(sqrt(A397463(2*n+1)))` -/
def P8317384811282261992.Spec : Prop :=
  ∀ n, P8317384811282261992.a n = A162802 (n + 1)

end A162802

/-! ## A162802.P8634171528580582859

`round(sqrt(A391805(2*n+1)))`
-/

namespace A162802.P8634171528580582859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A391805 (2 * n + 1) : ℝ))

end

end A162802.P8634171528580582859

namespace A162802

/-- `round(sqrt(A391805(2*n+1)))` -/
def P8634171528580582859.Spec : Prop :=
  ∀ n, P8634171528580582859.a n = A162802 (n + 1)

end A162802

/-! ## A162802.P2295820106002316898

`floor(A001043(2*n+1)/2)`
-/

namespace A162802.P2295820106002316898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001043 (2 * n + 1) : ℚ) / 2⌋

end

end A162802.P2295820106002316898

namespace A162802

/-- `floor(A001043(2*n+1)/2)` -/
def P2295820106002316898.Spec : Prop :=
  ∀ n, P2295820106002316898.a n = A162802 (n + 1)

end A162802

/-! ## A162802.P2297461216729519277

`A078444(2*n+1)+A057427(n)`
-/

namespace A162802.P2297461216729519277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (2 * n + 1) + A057427 n

end

end A162802.P2297461216729519277

namespace A162802

/-- `A078444(2*n+1)+A057427(n)` -/
def P2297461216729519277.Spec : Prop :=
  ∀ n, P2297461216729519277.a n = A162802 (n + 1)

end A162802

/-! ## A162802.P8780099673439942073

`A162801(n+1)+A162345(2*n+1)`
-/

namespace A162802.P8780099673439942073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162801 (n + 1) + A162345 (2 * n + 1)

end

end A162802.P8780099673439942073

namespace A162802

/-- `A162801(n+1)+A162345(2*n+1)` -/
def P8780099673439942073.Spec : Prop :=
  ∀ n, P8780099673439942073.a n = A162802 (n + 1)

end A162802

/-! ## A162802.P1113888722381922115

`A058296(n+2)-A162345(2*(n+1))`
-/

namespace A162802.P1113888722381922115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058296 (n + 2) - A162345 (2 * (n + 1))

end

end A162802.P1113888722381922115

namespace A162802

/-- `A058296(n+2)-A162345(2*(n+1))` -/
def P1113888722381922115.Spec : Prop :=
  ∀ n, P1113888722381922115.a n = A162802 (n + 1)

end A162802

/-! ## A162802.P14620950501648653635

`A162801(n+2)-A115061(2*(n+1))`
-/

namespace A162802.P14620950501648653635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162801 (n + 2) - A115061 (2 * (n + 1))

end

end A162802.P14620950501648653635

namespace A162802

/-- `A162801(n+2)-A115061(2*(n+1))` -/
def P14620950501648653635.Spec : Prop :=
  ∀ n, P14620950501648653635.a n = A162802 (n + 1)

end A162802

/-! ## A162802.P17048322938609178472

`A162800(2*n)+A162345(2*n+1)`
-/

namespace A162802.P17048322938609178472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (2 * n) + A162345 (2 * n + 1)

end

end A162802.P17048322938609178472

namespace A162802

/-- `A162800(2*n)+A162345(2*n+1)` -/
def P17048322938609178472.Spec : Prop :=
  ∀ n, P17048322938609178472.a n = A162802 (n + 1)

end A162802

/-! ## A162802.P4482406594080985509

`A033999(2*n)*A162800(2*n+1)`
-/

namespace A162802.P4482406594080985509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A162800 (2 * n + 1)

end

end A162802.P4482406594080985509

namespace A162802

/-- `A033999(2*n)*A162800(2*n+1)` -/
def P4482406594080985509.Spec : Prop :=
  ∀ n, P4482406594080985509.a n = A162802 (n + 1)

end A162802

/-! ## A162802.P18138000837491118422

`A102781(2*n+1)+A006254(2*n+1)`
-/

namespace A162802.P18138000837491118422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (2 * n + 1) + A006254 (2 * n + 1)

end

end A162802.P18138000837491118422

namespace A162802

/-- `A102781(2*n+1)+A006254(2*n+1)` -/
def P18138000837491118422.Spec : Prop :=
  ∀ n, P18138000837491118422.a n = A162802 (n + 1)

end A162802

/-!
# A162813: a(n) = 3*a(n-2) for n > 2; a(1) = 5, a(2) = 3.

The programs for A162813, the canonical program `A162813.P9994214254583249832` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162813 has offset 1).

The definition of A162813 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)` (program `A162813.P9994214254583249832`, by `A162813.P9994214254583249832.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162813.P9994214254583249832

`3*a(n-2)` with `a(0)=5, a(1)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A162813

/-- `3*a(n-2)` -/
def P9994214254583249832.Spec : Prop :=
  ∀ n, (P9994214254583249832.a n : ℤ) = A162813 (n + 1)

theorem P9994214254583249832.correct : P9994214254583249832.Spec := by
  intro n
  simp only [A162813, Nat.add_sub_cancel]

end A162813

/-! ## A162813.P2636122372092748586

`(3-2*(-1)^(n+1))*3^(1/4*(2*(n+1)-1+(-1)^(n+1)))`
-/

namespace A162813.P2636122372092748586
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 - 2 * (-1) ^ (n + 1) : ℝ) * (3 : ℝ) ^ ((1 : ℚ) / 4 * ((2 * (n + 1) : ℤ) - 1 + (-1) ^ (n + 1) : ℚ) : ℝ)

end

end A162813.P2636122372092748586

namespace A162813

/-- `(3-2*(-1)^(n+1))*3^(1/4*(2*(n+1)-1+(-1)^(n+1)))` -/
def P2636122372092748586.Spec : Prop :=
  ∀ n, P2636122372092748586.a n = (A162813 (n + 1) : ℝ)

end A162813

/-! ## A162813.P4693495844905811731

`ogf((5+3x)/(1-3x^2))`
-/

namespace A162813.P4693495844905811731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 3] [1, 0, -3] n

end

end A162813.P4693495844905811731

namespace A162813

/-- `ogf((5+3x)/(1-3x^2))` -/
def P4693495844905811731.Spec : Prop :=
  ∀ n, P4693495844905811731.a n = A162813 (n + 1)

end A162813

/-! ## A162813.P11096235169837737125

`∏[3/a(n-1)]` with `a(0)=5`
-/

namespace A162813.P11096235169837737125
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162813.P11096235169837737125

namespace A162813

/-- `∏[3/a(n-1)]` -/
def P11096235169837737125.Spec : Prop :=
  ∀ n, P11096235169837737125.a n = (A162813 (n + 1) : ℚ)

end A162813

/-! ## A162813.P10657561137334909962

`∏[log2(root(8, a(n-1)))]` with `a(0)=5`
-/

namespace A162813.P10657561137334909962
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [5] fun n f1 =>
  Real.logb 2 ((8 : ℝ) ^ (1 / f1 (n - 1)))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162813.P10657561137334909962

namespace A162813

/-- `∏[log2(root(8, a(n-1)))]` -/
def P10657561137334909962.Spec : Prop :=
  ∀ n, P10657561137334909962.a n = (A162813 (n + 1) : ℝ)

end A162813

/-! ## A162813.P1633500787138351521

`a(n-2)/(1-2/3)` with `a(0)=5, a(1)=3`
-/

namespace A162813.P1633500787138351521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5, 3] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A162813.P1633500787138351521

namespace A162813

/-- `a(n-2)/(1-2/3)` -/
def P1633500787138351521.Spec : Prop :=
  ∀ n, P1633500787138351521.a n = (A162813 (n + 1) : ℚ)

end A162813

/-! ## A162813.P17313267494046905678

`a(n-2)+lcm(2, a(n-2))` with `a(0)=5, a(1)=3`
-/

namespace A162813.P17313267494046905678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 3] fun n a =>
  a (n - 2) + Nat.lcm 2 (a (n - 2))

end

end A162813.P17313267494046905678

namespace A162813

/-- `a(n-2)+lcm(2, a(n-2))` -/
def P17313267494046905678.Spec : Prop :=
  ∀ n, (P17313267494046905678.a n : ℤ) = A162813 (n + 1)

end A162813

/-! ## A162813.P10153915163736598435

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=5, a(1)=3`
-/

namespace A162813.P10153915163736598435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 3] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A162813.P10153915163736598435

namespace A162813

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P10153915163736598435.Spec : Prop :=
  ∀ n, (P10153915163736598435.a n : ℤ) = A162813 (n + 1)

theorem P10153915163736598435.correct : P10153915163736598435.Spec := by
  intro n
  simp only [A162813, Nat.add_sub_cancel, A162813.P10153915163736598435.a, A162813.P9994214254583249832.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A162813

/-! ## A162813.P15302826427259093455

`A166465(n+2)`
-/

namespace A162813.P15302826427259093455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166465 (n + 2)

end

end A162813.P15302826427259093455

namespace A162813

/-- `A166465(n+2)` -/
def P15302826427259093455.Spec : Prop :=
  ∀ n, P15302826427259093455.a n = A162813 (n + 1)

end A162813

/-! ## A162813.P1952510556738320132

`A083658(xor(1, n+2))`
-/

namespace A162813.P1952510556738320132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (Nat.xor 1 (n + 2))

end

end A162813.P1952510556738320132

namespace A162813

/-- `A083658(xor(1, n+2))` -/
def P1952510556738320132.Spec : Prop :=
  ∀ n, P1952510556738320132.a n = A162813 (n + 1)

end A162813

/-! ## A162813.P5086122811006471324

`A133463(xor(3, 2*n))`
-/

namespace A162813.P5086122811006471324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133463 (Nat.xor 3 (2 * n))

end

end A162813.P5086122811006471324

namespace A162813

/-- `A133463(xor(3, 2*n))` -/
def P5086122811006471324.Spec : Prop :=
  ∀ n, P5086122811006471324.a n = A162813 (n + 1)

end A162813

/-! ## A162813.P6647971328385248100

`A133463(A166519(n))`
-/

namespace A162813.P6647971328385248100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133463 (A166519 n).toNat

end

end A162813.P6647971328385248100

namespace A162813

/-- `A133463(A166519(n))` -/
def P6647971328385248100.Spec : Prop :=
  ∀ n, P6647971328385248100.a n = A162813 (n + 1)

end A162813

/-! ## A162813.P8106588655714782369

`A083658(A004442(n+2))`
-/

namespace A162813.P8106588655714782369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (A004442 (n + 2)).toNat

end

end A162813.P8106588655714782369

namespace A162813

/-- `A083658(A004442(n+2))` -/
def P8106588655714782369.Spec : Prop :=
  ∀ n, P8106588655714782369.a n = A162813 (n + 1)

end A162813

/-! ## A162813.P12470372240121666051

`A083658(A065190(n+2))`
-/

namespace A162813.P12470372240121666051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (A065190 (n + 2)).toNat

end

end A162813.P12470372240121666051

namespace A162813

/-- `A083658(A065190(n+2))` -/
def P12470372240121666051.Spec : Prop :=
  ∀ n, P12470372240121666051.a n = A162813 (n + 1)

end A162813

/-! ## A162813.P1374426777749764608

`A091916(A166517(n+2))`
-/

namespace A162813.P1374426777749764608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091916 (A166517 (n + 2)).toNat

end

end A162813.P1374426777749764608

namespace A162813

/-- `A091916(A166517(n+2))` -/
def P1374426777749764608.Spec : Prop :=
  ∀ n, P1374426777749764608.a n = A162813 (n + 1)

end A162813

/-! ## A162813.P3089701003794241574

`lcm(A056449(n), A176260(n))`
-/

namespace A162813.P3089701003794241574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056449 n) (A176260 n)

end

end A162813.P3089701003794241574

namespace A162813

/-- `lcm(A056449(n), A176260(n))` -/
def P3089701003794241574.Spec : Prop :=
  ∀ n, (P3089701003794241574.a n : ℤ) = A162813 (n + 1)

end A162813

/-! ## A162813.P7109506351863383470

`A254006(n)+A162766(n+1)`
-/

namespace A162813.P7109506351863383470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 n + A162766 (n + 1)

end

end A162813.P7109506351863383470

namespace A162813

/-- `A254006(n)+A162766(n+1)` -/
def P7109506351863383470.Spec : Prop :=
  ∀ n, P7109506351863383470.a n = A162813 (n + 1)

end A162813

/-! ## A162813.P17369988457079180146

`A056449(n+1)+Δ[A056449(n)]`
-/

namespace A162813.P17369988457079180146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 (n + 1) + (f1 (n + 1) - f1 n)

end

end A162813.P17369988457079180146

namespace A162813

/-- `A056449(n+1)+Δ[A056449(n)]` -/
def P17369988457079180146.Spec : Prop :=
  ∀ n, P17369988457079180146.a n = A162813 (n + 1)

end A162813

/-! ## A162813.P3181136492259715312

`Δ[A211221(n+3)]`
-/

namespace A162813.P3181136492259715312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211221 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162813.P3181136492259715312

namespace A162813

/-- `Δ[A211221(n+3)]` -/
def P3181136492259715312.Spec : Prop :=
  ∀ n, P3181136492259715312.a n = A162813 (n + 1)

end A162813

/-! ## A162813.P86283409026455920

`abs(Δ[A166450(n+1)])`
-/

namespace A162813.P86283409026455920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A162813.P86283409026455920

namespace A162813

/-- `abs(Δ[A166450(n+1)])` -/
def P86283409026455920.Spec : Prop :=
  ∀ n, P86283409026455920.a n = A162813 (n + 1)

end A162813

/-!
# A162814: a(n) = 6*a(n-1)-6*a(n-2) for n > 1; a(0) = 5, a(1) = 18.

The programs for A162814, the canonical program `A162814.P10412365575360002016` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162814 has offset 0).

The definition of A162814 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-6*a(n-2)` (program `A162814.P10412365575360002016`, by `A162814.P10412365575360002016.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162814.P10412365575360002016

`6*a(n-1)-6*a(n-2)` with `a(0)=5, a(1)=18`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A162814

/-- `6*a(n-1)-6*a(n-2)` -/
def P10412365575360002016.Spec : Prop :=
  ∀ n, P10412365575360002016.a n = A162814 n

theorem P10412365575360002016.correct : P10412365575360002016.Spec := by
  intro n
  simp only [A162814]

end A162814

/-! ## A162814.P12942504587353750671

`ogf((5-12x)/(1-6x+6x^2))`
-/

namespace A162814.P12942504587353750671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -12] [1, -6, 6] n

end

end A162814.P12942504587353750671

namespace A162814

/-- `ogf((5-12x)/(1-6x+6x^2))` -/
def P12942504587353750671.Spec : Prop :=
  ∀ n, P12942504587353750671.a n = A162814 n

end A162814

/-! ## A162814.P2674490099207548837

`6*(a(n-1)-a(n-2))` with `a(0)=5, a(1)=18`
-/

namespace A162814.P2674490099207548837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 18] fun n a =>
  6 * (a (n - 1) - a (n - 2))

end

end A162814.P2674490099207548837

namespace A162814

/-- `6*(a(n-1)-a(n-2))` -/
def P2674490099207548837.Spec : Prop :=
  ∀ n, P2674490099207548837.a n = A162814 n

theorem P2674490099207548837.correct : P2674490099207548837.Spec := by
  intro n
  simp only [A162814, Nat.add_sub_cancel, A162814.P2674490099207548837.a, A162814.P10412365575360002016.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A162814

/-! ## A162814.P16626921932989789469

`A164310(n)+A083881(n)`
-/

namespace A162814.P16626921932989789469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164310 n + A083881 n

end

end A162814.P16626921932989789469

namespace A162814

/-- `A164310(n)+A083881(n)` -/
def P16626921932989789469.Spec : Prop :=
  ∀ n, P16626921932989789469.a n = A162814 n

end A162814

/-! ## A162814.P17238503630449282722

`A094433(n+3)-A030192(n)`
-/

namespace A162814.P17238503630449282722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094433 (n + 3) - A030192 n

end

end A162814.P17238503630449282722

namespace A162814

/-- `A094433(n+3)-A030192(n)` -/
def P17238503630449282722.Spec : Prop :=
  ∀ n, P17238503630449282722.a n = A162814 n

end A162814

/-! ## A162814.P15823438576429264550

`A030192(n)+4*A083881(n)`
-/

namespace A162814.P15823438576429264550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030192 n + 4 * A083881 n

end

end A162814.P15823438576429264550

namespace A162814

/-- `A030192(n)+4*A083881(n)` -/
def P15823438576429264550.Spec : Prop :=
  ∀ n, P15823438576429264550.a n = A162814 n

end A162814

/-! ## A162814.P4600516719702659571

`A083881(n+1)+2*A083881(n)`
-/

namespace A162814.P4600516719702659571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083881 (n + 1) + 2 * A083881 n

end

end A162814.P4600516719702659571

namespace A162814

/-- `A083881(n+1)+2*A083881(n)` -/
def P4600516719702659571.Spec : Prop :=
  ∀ n, P4600516719702659571.a n = A162814 n

end A162814

/-! ## A162814.P16916923672475538406

`A083881(n+1)+A083881(n+1)-A030192(n)`
-/

namespace A162814.P16916923672475538406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083881 (n + 1) + (A083881 (n + 1) - A030192 n)

end

end A162814.P16916923672475538406

namespace A162814

/-- `A083881(n+1)+A083881(n+1)-A030192(n)` -/
def P16916923672475538406.Spec : Prop :=
  ∀ n, P16916923672475538406.a n = A162814 n

end A162814

/-! ## A162814.P3022423245663065316

`((5+sqrt(3))*(3+sqrt(3))^n+(5-sqrt(3))*(3-sqrt(3))^n)/2`
-/

namespace A162814.P3022423245663065316
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (3 : ℝ)) * (3 + Real.sqrt (3 : ℝ)) ^ n + (5 - Real.sqrt (3 : ℝ)) * (3 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A162814.P3022423245663065316

namespace A162814

/-- `((5+sqrt(3))*(3+sqrt(3))^n+(5-sqrt(3))*(3-sqrt(3))^n)/2` -/
def P3022423245663065316.Spec : Prop :=
  ∀ n, P3022423245663065316.a n = (A162814 n : ℝ)

theorem P3022423245663065316.correct : P3022423245663065316.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A162814, Nat.add_sub_cancel, A162814.P3022423245663065316.a, A162814.P10412365575360002016.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A162814, Nat.add_sub_cancel, A162814.P3022423245663065316.a, A162814.P10412365575360002016.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A162814

/-! ## A162814.P3122901787178243378

`Δ[A276265(n)]-2*A276265(n)`
-/

namespace A162814.P3122901787178243378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A276265 n

end

end A162814.P3122901787178243378

namespace A162814

/-- `Δ[A276265(n)]-2*A276265(n)` -/
def P3122901787178243378.Spec : Prop :=
  ∀ n, P3122901787178243378.a n = A162814 n

end A162814

/-!
# A162815: a(n) = 8*a(n-1)-13*a(n-2) for n > 1; a(0) = 5, a(1) = 23.

The programs for A162815, the canonical program `A162815.P7978504273710521338` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162815 has offset 0).

The definition of A162815 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-13*a(n-2)` (program `A162815.P7978504273710521338`, by `A162815.P7978504273710521338.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162815.P7978504273710521338

`8*a(n-1)-13*a(n-2)` with `a(0)=5, a(1)=23`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A162815

/-- `8*a(n-1)-13*a(n-2)` -/
def P7978504273710521338.Spec : Prop :=
  ∀ n, P7978504273710521338.a n = A162815 n

theorem P7978504273710521338.correct : P7978504273710521338.Spec := by
  intro n
  simp only [A162815]

end A162815

/-! ## A162815.P12399136080902963555

`ogf((5-17x)/(1-8x+13x^2))`
-/

namespace A162815.P12399136080902963555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -17] [1, -8, 13] n

end

end A162815.P12399136080902963555

namespace A162815

/-- `ogf((5-17x)/(1-8x+13x^2))` -/
def P12399136080902963555.Spec : Prop :=
  ∀ n, P12399136080902963555.a n = A162815 n

end A162815

/-! ## A162815.P3838662002199084338

`A083882(n+1)+A083882(n)`
-/

namespace A162815.P3838662002199084338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083882 (n + 1) + A083882 n

end

end A162815.P3838662002199084338

namespace A162815

/-- `A083882(n+1)+A083882(n)` -/
def P3838662002199084338.Spec : Prop :=
  ∀ n, P3838662002199084338.a n = A162815 n

end A162815

/-! ## A162815.P1233726799251478529

`A163470(n)+A163470(n)-A161728(n)`
-/

namespace A162815.P1233726799251478529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163470 n + (A163470 n - A161728 n)

end

end A162815.P1233726799251478529

namespace A162815

/-- `A163470(n)+A163470(n)-A161728(n)` -/
def P1233726799251478529.Spec : Prop :=
  ∀ n, P1233726799251478529.a n = A162815 n

end A162815

/-! ## A162815.P508353247055531457

`((5+sqrt(3))*(sqrt(3)+4)^n+(5-sqrt(3))*(4-sqrt(3))^n)/2`
-/

namespace A162815.P508353247055531457
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (3 : ℝ)) * (Real.sqrt (3 : ℝ) + 4) ^ n + (5 - Real.sqrt (3 : ℝ)) * (4 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A162815.P508353247055531457

namespace A162815

/-- `((5+sqrt(3))*(sqrt(3)+4)^n+(5-sqrt(3))*(4-sqrt(3))^n)/2` -/
def P508353247055531457.Spec : Prop :=
  ∀ n, P508353247055531457.a n = (A162815 n : ℝ)

theorem P508353247055531457.correct : P508353247055531457.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A162815, Nat.add_sub_cancel, A162815.P508353247055531457.a, A162815.P7978504273710521338.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A162815, Nat.add_sub_cancel, A162815.P508353247055531457.a, A162815.P7978504273710521338.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A162815

/-! ## A162815.P8153613328162715890

`2*A163470(n)-A161728(n)`
-/

namespace A162815.P8153613328162715890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163470 n - A161728 n

end

end A162815.P8153613328162715890

namespace A162815

/-- `2*A163470(n)-A161728(n)` -/
def P8153613328162715890.Spec : Prop :=
  ∀ n, P8153613328162715890.a n = A162815 n

end A162815

/-! ## A162815.P4919082835407687516

`Δ[A163470(n)-A153594(n+1)]`
-/

namespace A162815.P4919082835407687516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163470 n - A153594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162815.P4919082835407687516

namespace A162815

/-- `Δ[A163470(n)-A153594(n+1)]` -/
def P4919082835407687516.Spec : Prop :=
  ∀ n, P4919082835407687516.a n = A162815 n

end A162815

/-!
# A162816: a(n) = 12*a(n-1)-33*a(n-2) for n > 1; a(0) = 5, a(1) = 33.

The programs for A162816, the canonical program `A162816.P6063475168268868810` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162816 has offset 0).

The definition of A162816 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-33*a(n-2)` (program `A162816.P6063475168268868810`, by `A162816.P6063475168268868810.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162816.P6063475168268868810

`12*a(n-1)-33*a(n-2)` with `a(0)=5, a(1)=33`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A162816

/-- `12*a(n-1)-33*a(n-2)` -/
def P6063475168268868810.Spec : Prop :=
  ∀ n, P6063475168268868810.a n = A162816 n

theorem P6063475168268868810.correct : P6063475168268868810.Spec := by
  intro n
  simp only [A162816]

end A162816

/-! ## A162816.P11306829325665433004

`((5+sqrt(3))*(sqrt(3)+6)^n+(5-sqrt(3))*(6-sqrt(3))^n)/2`
-/

namespace A162816.P11306829325665433004
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (3 : ℝ)) * (Real.sqrt (3 : ℝ) + 6) ^ n + (5 - Real.sqrt (3 : ℝ)) * (6 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A162816.P11306829325665433004

namespace A162816

/-- `((5+sqrt(3))*(sqrt(3)+6)^n+(5-sqrt(3))*(6-sqrt(3))^n)/2` -/
def P11306829325665433004.Spec : Prop :=
  ∀ n, P11306829325665433004.a n = (A162816 n : ℝ)

theorem P11306829325665433004.correct : P11306829325665433004.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A162816, Nat.add_sub_cancel, A162816.P11306829325665433004.a, A162816.P6063475168268868810.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A162816, Nat.add_sub_cancel, A162816.P11306829325665433004.a, A162816.P6063475168268868810.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A162816

/-! ## A162816.P16063993299749614792

`Δ[A147961(n)]`
-/

namespace A162816.P16063993299749614792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162816.P16063993299749614792

namespace A162816

/-- `Δ[A147961(n)]` -/
def P16063993299749614792.Spec : Prop :=
  ∀ n, P16063993299749614792.a n = A162816 n

end A162816

/-! ## A162816.P8391518032327690252

`A164311(n)+A147961(n)`
-/

namespace A162816.P8391518032327690252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164311 n + A147961 n

end

end A162816.P8391518032327690252

namespace A162816

/-- `A164311(n)+A147961(n)` -/
def P8391518032327690252.Spec : Prop :=
  ∀ n, P8391518032327690252.a n = A162816 n

end A162816

/-! ## A162816.P13743557746153025891

`A147961(n+1)-A147961(n)`
-/

namespace A162816.P13743557746153025891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147961 (n + 1) - A147961 n

end

end A162816.P13743557746153025891

namespace A162816

/-- `A147961(n+1)-A147961(n)` -/
def P13743557746153025891.Spec : Prop :=
  ∀ n, P13743557746153025891.a n = A162816 n

end A162816

/-! ## A162816.P6508898649210792520

`A163472(n)+2*A147961(n)`
-/

namespace A162816.P6508898649210792520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163472 n + 2 * A147961 n

end

end A162816.P6508898649210792520

namespace A162816

/-- `A163472(n)+2*A147961(n)` -/
def P6508898649210792520.Spec : Prop :=
  ∀ n, P6508898649210792520.a n = A162816 n

end A162816

/-! ## A162816.P12983516787267735981

`2*A164311(n)-A163472(n)`
-/

namespace A162816.P12983516787267735981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164311 n - A163472 n

end

end A162816.P12983516787267735981

namespace A162816

/-- `2*A164311(n)-A163472(n)` -/
def P12983516787267735981.Spec : Prop :=
  ∀ n, P12983516787267735981.a n = A162816 n

end A162816

/-!
# A162817: Positive numbers n such that 40*n/(40+n) are integers.

The programs for A162817, there is no canonical definition to state claims against.
-/

/-! ## A162817.P14294913901010935157

`A127730(A039493(n+2))`
-/

namespace A162817.P14294913901010935157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127730 (A039493 (n + 2)).toNat

end

end A162817.P14294913901010935157

/-! ## A162817.P6393889424702024193

`A127730(A043652(n+2))`
-/

namespace A162817.P6393889424702024193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127730 (A043652 (n + 2)).toNat

end

end A162817.P6393889424702024193

/-! ## A162817.P11281702393938919476

`A127730(A296889(n+2))`
-/

namespace A162817.P11281702393938919476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127730 (A296889 (n + 2)).toNat

end

end A162817.P11281702393938919476

/-!
# A162818: Strictly positive numbers n such that (42*n)/(42+n) is an integer.

The programs for A162818, there is no canonical definition to state claims against.
-/

/-! ## A162818.P9622175397304218968

`7*(record[A128830(2*n+1)]+n)`
-/

namespace A162818.P9622175397304218968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128830 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ))

end

end A162818.P9622175397304218968

/-! ## A162818.P1600836122504395178

`A008589(n)+A191203(n+1)*A366670(A372559(n+3))`
-/

namespace A162818.P1600836122504395178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n + A191203 (n + 1) * A366670 (A372559 (n + 3)).toNat

end

end A162818.P1600836122504395178

/-!
# A162819: Positive numbers n such that 48*n/(48+n) are integers.

The programs for A162819, there is no canonical definition to state claims against.
-/

/-! ## A162819.P17720333170484315188

`A127730(190+n)`
-/

namespace A162819.P17720333170484315188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127730 (190 + n)

end

end A162819.P17720333170484315188

/-! ## A162819.P7885600658125096246

`A167991(A162691(n+1)²)`
-/

namespace A162819.P7885600658125096246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167991 (A162691 (n + 1) ^ 2).toNat

end

end A162819.P7885600658125096246

/-!
# A162820: Positive numbers n such that 60*n/(60+n) is an integer.

The programs for A162820, there is no canonical definition to state claims against.
-/

/-! ## A162820.P13323215317392746168

`∩[A028962(n+1), A162826(n+1)]`
-/

namespace A162820.P13323215317392746168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162820.P13323215317392746168

/-! ## A162820.P5327542202755806180

`A162826(A115180(n+1)%A277317(n+3))`
-/

namespace A162820.P5327542202755806180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162826 (Int.tmod (A115180 (n + 1)) (A277317 (n + 3))).toNat

end

end A162820.P5327542202755806180

/-!
# A162821: Positive numbers k such that 30*k/(30-k) are integers.

The programs for A162821, there is no canonical definition to state claims against.
-/

/-! ## A162821.P14953823348942665092

`lt[A016825(A106616(n)), A178877(n+2)]`
-/

namespace A162821.P14953823348942665092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A106616 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178877 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162821.P14953823348942665092

/-!
# A162822: Positive numbers k such that 36*k/(36-k) are integers.

The programs for A162822, there is no canonical definition to state claims against.
-/

/-! ## A162822.P13817817134886987911

`lt[A136699(3*n), A339333(A320305(n))]`
-/

namespace A162822.P13817817134886987911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136699 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339333 (A320305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162822.P13817817134886987911

/-! ## A162822.P16444104672285757635

`A345443(A245383(n+2))`
-/

namespace A162822.P16444104672285757635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345443 (A245383 (n + 2)).toNat

end

end A162822.P16444104672285757635

/-! ## A162822.P5548572643137562150

`A018252(lt[0, A289323(3*n)])`
-/

namespace A162822.P5548572643137562150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289323 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A162822.P5548572643137562150

/-! ## A162822.P6897219223922738138

`∑[dr(A328908(A140161(n+1)))]`
-/

namespace A162822.P6897219223922738138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A328908 (A140161 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162822.P6897219223922738138

/-! ## A162822.P7302073205733003729

`lt[A245922(2*(n+2))-A000203(n+1), 1]+1`
-/

namespace A162822.P7302073205733003729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245922 (2 * (n + 2)) - A000203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A162822.P7302073205733003729

/-!
# A162824: Positive numbers k such that 48*k/(48-k) are integers.

The programs for A162824, there is no canonical definition to state claims against.
-/

/-! ## A162824.P1463896261564440288

`lt[A296525(n+3), A087188(A074206(n))]`
-/

namespace A162824.P1463896261564440288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296525 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087188 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162824.P1463896261564440288

/-!
# A162825: Positive numbers k such that 60*k/(60-k) are integers.

The programs for A162825, there is no canonical definition to state claims against.
-/

/-! ## A162825.P946705193495464818

`lt[A004093(n), A281116(A129204(n))]`
-/

namespace A162825.P946705193495464818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A129204 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162825.P946705193495464818

/-!
# A162832: The odd nonprimes in A162939.

The programs for A162832, there is no canonical definition to state claims against.
-/

/-! ## A162832.P15548229377680167753

`∩[A014076(n+1), A162939(n+1)]`
-/

namespace A162832.P15548229377680167753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162832.P15548229377680167753

/-! ## A162832.P10936708746643369807

`∩[A060976(n+1), A162939(n+1)]`
-/

namespace A162832.P10936708746643369807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162832.P10936708746643369807

/-! ## A162832.P18182107709600531550

`∩[A067800(n+1), A162939(n+1)]`
-/

namespace A162832.P18182107709600531550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162832.P18182107709600531550

/-! ## A162832.P7557903228431929675

`∩[A162939(n+1), A164376(n+1)]`
-/

namespace A162832.P7557903228431929675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162832.P7557903228431929675

/-! ## A162832.P7241524987915903265

`record[A171435(A014682(A125254(n+1)))]`
-/

namespace A162832.P7241524987915903265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A014682 (A125254 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162832.P7241524987915903265

/-! ## A162832.P16594482705972347708

`record[A171435(A005408(A190105(n+1)))]`
-/

namespace A162832.P16594482705972347708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A005408 (A190105 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162832.P16594482705972347708

/-! ## A162832.P11587503816607000794

`A014682(p?[A004767(n)-A167020(n+1)])`
-/

namespace A162832.P11587503816607000794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A167020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A162832.P11587503816607000794

/-!
# A162834: Primes of the form A037074(k) - 6, where A037074(k) is a twin prime product.

The programs for A162834, there is no canonical definition to state claims against.
-/

/-! ## A162834.P16733068014144827568

`∩[A028883(n+1), A099775(n+1)]`
-/

namespace A162834.P16733068014144827568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162834.P16733068014144827568

/-! ## A162834.P8936102829790937200

`∩[A099775(n+1), A028881(n+3)]`
-/

namespace A162834.P8936102829790937200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028881 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162834.P8936102829790937200

/-! ## A162834.P18371891822021793673

`∩[A099775(n+1), A267531(n)]`
-/

namespace A162834.P18371891822021793673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267531 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162834.P18371891822021793673

/-! ## A162834.P5756034488354863666

`∩[A099775(n+1), A142109(n+1)]`
-/

namespace A162834.P5756034488354863666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162834.P5756034488354863666

/-! ## A162834.P9605026797642877002

`p?[A120875(n+1)-5]`
-/

namespace A162834.P9605026797642877002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120875 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162834.P9605026797642877002

/-!
# A162842: a(1)=1, a(2)=2; for n > 2, a(n) is the smallest m that has not yet appeared and is not divisible by any pairwise sum of a(1)..a(n-1).

The programs for A162842, there is no canonical definition to state claims against.
-/

/-! ## A162842.P1036318335607513662

`A164901(n+1)-A355432(A001250(n))`
-/

namespace A162842.P1036318335607513662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164901 (n + 1) - A355432 (A001250 n).toNat

end

end A162842.P1036318335607513662

/-! ## A162842.P16695368905344559770

`A164901(n+1)-A184955(A347912(n+1))`
-/

namespace A162842.P16695368905344559770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164901 (n + 1) - A184955 (A347912 (n + 1)).toNat

end

end A162842.P16695368905344559770

/-!
# A162843: Let b(n) be the n-th positive integer that is a palindrome in base 2. a(n) = the smallest multiple of b(n) that is > b(n) and that is also a palindrome in binary.

The programs for A162843, there is no canonical definition to state claims against.
-/

/-! ## A162843.P225263110134422959

`∑[A164126(n+1)]*A162844(n+1)`
-/

namespace A162843.P225263110134422959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A162844 (n + 1)

end

end A162843.P225263110134422959

/-! ## A162843.P11129554852626119134

`A162844(n+1)/2*A164302(n+1)`
-/

namespace A162843.P11129554852626119134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162844 (n + 1) : ℚ) / 2 * (A164302 (n + 1) : ℚ)

end

end A162843.P11129554852626119134

/-! ## A162843.P16276494494003288570

`A006995(n+2)*A162844(n+1)`
-/

namespace A162843.P16276494494003288570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 2) * A162844 (n + 1)

end

end A162843.P16276494494003288570

/-! ## A162843.P1093922763839216774

`Δ[A206920(n+1)]*A162844(n+1)`
-/

namespace A162843.P1093922763839216774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A162844 (n + 1)

end

end A162843.P1093922763839216774

/-! ## A162843.P11511217326910431198

`eq[1, A303536(n)]*A162844(n+1)`
-/

namespace A162843.P11511217326910431198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A162844 (n + 1)

end

end A162843.P11511217326910431198

/-! ## A162843.P14067635309733115949

`A000265(A164302(n+1))*A162844(n+1)`
-/

namespace A162843.P14067635309733115949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A164302 (n + 1)).toNat * A162844 (n + 1)

end

end A162843.P14067635309733115949

/-! ## A162843.P3253133586871425292

`A004273(A044051(n+1))*A162844(n+1)`
-/

namespace A162843.P3253133586871425292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A044051 (n + 1)).toNat * A162844 (n + 1)

end

end A162843.P3253133586871425292

/-! ## A162843.P17794583816912725866

`record[A145799(n+1)]*A162844(n+1)`
-/

namespace A162843.P17794583816912725866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A162844 (n + 1)

end

end A162843.P17794583816912725866

/-! ## A162843.P16746495790479092317

`eq[1, A193306(n)]*A162844(n+1)`
-/

namespace A162843.P16746495790479092317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A162844 (n + 1)

end

end A162843.P16746495790479092317

/-! ## A162843.P15515158398821063371

`record[A161825(n+1)]*A162844(n+1)`
-/

namespace A162843.P15515158398821063371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A162844 (n + 1)

end

end A162843.P15515158398821063371

/-! ## A162843.P12893341965950259582

`record[A330717(A029579(n))]*A162844(n+1)`
-/

namespace A162843.P12893341965950259582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A162844 (n + 1)

end

end A162843.P12893341965950259582

/-!
# A162844: Let b(n) be the n-th positive integer that is a palindrome in base 2. Then a(n) = A162843(n)/b(n).

The programs for A162844, there is no canonical definition to state claims against.
-/

/-! ## A162844.P15330980023859526624

`A162843(n+1)/A006995(n+2)`
-/

namespace A162844.P15330980023859526624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162843 (n + 1) : ℚ) / (A006995 (n + 2) : ℚ)

end

end A162844.P15330980023859526624

/-! ## A162844.P11128504754518840720

`A162843(n+1)/∑[A164126(n+1)]`
-/

namespace A162844.P11128504754518840720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164126 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162843 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A162844.P11128504754518840720

/-! ## A162844.P8605214328083791730

`2*A162843(n+1)/A164302(n+1)`
-/

namespace A162844.P8605214328083791730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A162843 (n + 1) : ℚ) / (A164302 (n + 1) : ℚ))

end

end A162844.P8605214328083791730

/-! ## A162844.P6490620774755671448

`A162843(n+1)/Δ[A206920(n+1)]`
-/

namespace A162844.P6490620774755671448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206920 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162843 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A162844.P6490620774755671448

/-! ## A162844.P2200942177712781096

`A162843(n+1)/A000265(A164302(n+1)/2)`
-/

namespace A162844.P2200942177712781096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162843 (n + 1) : ℚ) / (A000265 (SequenceMachineLib.roundAway ((A164302 (n + 1) : ℚ) / 2)).toNat : ℚ)

end

end A162844.P2200942177712781096

/-! ## A162844.P13315997156222782476

`A162843(n+1)/eq[1, A303536(n)]`
-/

namespace A162844.P13315997156222782476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162843 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ)

end

end A162844.P13315997156222782476

/-! ## A162844.P10041285482866959545

`A162843(n+1)/A000265(A164302(n+1))`
-/

namespace A162844.P10041285482866959545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162843 (n + 1) : ℚ) / (A000265 (A164302 (n + 1)).toNat : ℚ)

end

end A162844.P10041285482866959545

/-! ## A162844.P2314980457822855039

`A162843(n+1)/A004273(A044051(n+1))`
-/

namespace A162844.P2314980457822855039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162843 (n + 1) : ℚ) / (A004273 (A044051 (n + 1)).toNat : ℚ)

end

end A162844.P2314980457822855039

/-! ## A162844.P10040450962676317106

`A162843(n+1)/record[A145799(n+1)]`
-/

namespace A162844.P10040450962676317106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145799 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162843 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A162844.P10040450962676317106

/-!
# A162845: Sum of digits of binomial(3n,n).

The programs for A162845, there is no canonical definition to state claims against.
-/

/-! ## A162845.P7179578417544959701

`∑{digits}[C(3*n, n), #]`
-/

namespace A162845.P7179578417544959701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A162845.P7179578417544959701

/-! ## A162845.P8576745016161336940

`∑{digits}[A005809(n), #]`
-/

namespace A162845.P8576745016161336940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A162845.P8576745016161336940

/-! ## A162845.P3448453654010450977

`∑{digits}[sqrt(A188662(n)), #]`
-/

namespace A162845.P3448453654010450977
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A188662 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A162845.P3448453654010450977

/-! ## A162845.P8617561999872132572

`∑{digits}[A264772(∑[n]), #]`
-/

namespace A162845.P8617561999872132572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A162845.P8617561999872132572

/-! ## A162845.P6432128946421339769

`∑{digits}[A065942(2*n), #]`
-/

namespace A162845.P6432128946421339769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A162845.P6432128946421339769

/-! ## A162845.P8276619875333077905

`∑{digits}[A081204(2*n), #]`
-/

namespace A162845.P8276619875333077905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081204 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A162845.P8276619875333077905

/-! ## A162845.P1445091002692647871

`∑{digits}[A303259(2*n+1), #]`
-/

namespace A162845.P1445091002692647871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303259 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A162845.P1445091002692647871

/-! ## A162845.P9469855943008358600

`∑{digits}[(2*n+1)*A001764(n), #]`
-/

namespace A162845.P9469855943008358600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A001764 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A162845.P9469855943008358600

/-!
# A162849: Pairs of numbers that add up to the 'backward decimal expansion' of fraction 1/109 and whose difference is the 'backward decimal expansion' of fraction 1/89.

The programs for A162849, there is no canonical definition to state claims against.
-/

/-! ## A162849.P12260866804006741963

`A319909(∑[∑[dr(3*n)%4]])`
-/

namespace A162849.P12260866804006741963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * n : ℤ) % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319909 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162849.P12260866804006741963

/-!
# A162852: a(n) = 3*a(n-2) for n > 2; a(1) = 3, a(2) = -1.

The programs for A162852, the canonical program `A162852.P764267141039134279` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162852 has offset 1).

The definition of A162852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)` (program `A162852.P764267141039134279`, by `A162852.P764267141039134279.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162852.P764267141039134279

`3*a(n-2)` with `a(0)=3, a(1)=-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A162852

/-- `3*a(n-2)` -/
def P764267141039134279.Spec : Prop :=
  ∀ n, P764267141039134279.a n = A162852 (n + 1)

theorem P764267141039134279.correct : P764267141039134279.Spec := by
  intro n
  simp only [A162852, Nat.add_sub_cancel]

end A162852

/-! ## A162852.P9010098220666634124

`(4-5*(-1)^(n+1))*3^(1/4*(2*(n+1)-1+(-1)^(n+1)))/3`
-/

namespace A162852.P9010098220666634124
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 - 5 * (-1) ^ (n + 1) : ℝ) * (3 : ℝ) ^ ((1 : ℚ) / 4 * ((2 * (n + 1) : ℤ) - 1 + (-1) ^ (n + 1) : ℚ) : ℝ) / 3

end

end A162852.P9010098220666634124

namespace A162852

/-- `(4-5*(-1)^(n+1))*3^(1/4*(2*(n+1)-1+(-1)^(n+1)))/3` -/
def P9010098220666634124.Spec : Prop :=
  ∀ n, P9010098220666634124.a n = (A162852 (n + 1) : ℝ)

end A162852

/-! ## A162852.P10327323283597081727

`ogf((3-x)/(1-3x^2))`
-/

namespace A162852.P10327323283597081727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, 0, -3] n

end

end A162852.P10327323283597081727

namespace A162852

/-- `ogf((3-x)/(1-3x^2))` -/
def P10327323283597081727.Spec : Prop :=
  ∀ n, P10327323283597081727.a n = A162852 (n + 1)

end A162852

/-! ## A162852.P10931946404557606640

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=3, a(1)=-1`
-/

namespace A162852.P10931946404557606640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, -1] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A162852.P10931946404557606640

namespace A162852

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P10931946404557606640.Spec : Prop :=
  ∀ n, P10931946404557606640.a n = A162852 (n + 1)

theorem P10931946404557606640.correct : P10931946404557606640.Spec := by
  intro n
  simp only [A162852, Nat.add_sub_cancel, A162852.P10931946404557606640.a, A162852.P764267141039134279.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A162852

/-! ## A162852.P10221958375018517018

`Δ[A074324(n+1)]`
-/

namespace A162852.P10221958375018517018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162852.P10221958375018517018

namespace A162852

/-- `Δ[A074324(n+1)]` -/
def P10221958375018517018.Spec : Prop :=
  ∀ n, P10221958375018517018.a n = A162852 (n + 1)

end A162852

/-! ## A162852.P6321967268714922432

`Δ[A166552(n+1)]`
-/

namespace A162852.P6321967268714922432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162852.P6321967268714922432

namespace A162852

/-- `Δ[A166552(n+1)]` -/
def P6321967268714922432.Spec : Prop :=
  ∀ n, P6321967268714922432.a n = A162852 (n + 1)

end A162852

/-! ## A162852.P15982789170980158671

`Δ[A000034(n)²*A108411(n)]`
-/

namespace A162852.P15982789170980158671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 * A108411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162852.P15982789170980158671

namespace A162852

/-- `Δ[A000034(n)²*A108411(n)]` -/
def P15982789170980158671.Spec : Prop :=
  ∀ n, P15982789170980158671.a n = A162852 (n + 1)

end A162852

/-! ## A162852.P10704077634897651083

`Δ[A038754(n)+Δ[A108411(n)]]`
-/

namespace A162852.P10704077634897651083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162852.P10704077634897651083

namespace A162852

/-- `Δ[A038754(n)+Δ[A108411(n)]]` -/
def P10704077634897651083.Spec : Prop :=
  ∀ n, P10704077634897651083.a n = A162852 (n + 1)

end A162852

/-! ## A162852.P5796283163025556471

`2*Δ[A056449(n)]-A108411(n)`
-/

namespace A162852.P5796283163025556471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - A108411 n

end

end A162852.P5796283163025556471

namespace A162852

/-- `2*Δ[A056449(n)]-A108411(n)` -/
def P5796283163025556471.Spec : Prop :=
  ∀ n, P5796283163025556471.a n = A162852 (n + 1)

end A162852

/-! ## A162852.P13715341629913995162

`Δ[A038754(n)*A176895(2*n)]`
-/

namespace A162852.P13715341629913995162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n * A176895 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162852.P13715341629913995162

namespace A162852

/-- `Δ[A038754(n)*A176895(2*n)]` -/
def P13715341629913995162.Spec : Prop :=
  ∀ n, P13715341629913995162.a n = A162852 (n + 1)

end A162852

/-! ## A162852.P8056588418372206644

`A162766(n+1)-A074324(n+1)`
-/

namespace A162852.P8056588418372206644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162766 (n + 1) - A074324 (n + 1)

end

end A162852.P8056588418372206644

namespace A162852

/-- `A162766(n+1)-A074324(n+1)` -/
def P8056588418372206644.Spec : Prop :=
  ∀ n, P8056588418372206644.a n = A162852 (n + 1)

end A162852

/-! ## A162852.P14671422206813284115

`A162766(n+1)-A166552(n+1)`
-/

namespace A162852.P14671422206813284115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162766 (n + 1) - A166552 (n + 1)

end

end A162852.P14671422206813284115

namespace A162852

/-- `A162766(n+1)-A166552(n+1)` -/
def P14671422206813284115.Spec : Prop :=
  ∀ n, P14671422206813284115.a n = A162852 (n + 1)

end A162852

/-! ## A162852.P13060050708714221269

`A074324(n+2)-A074324(n+1)`
-/

namespace A162852.P13060050708714221269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (n + 2) - A074324 (n + 1)

end

end A162852.P13060050708714221269

namespace A162852

/-- `A074324(n+2)-A074324(n+1)` -/
def P13060050708714221269.Spec : Prop :=
  ∀ n, P13060050708714221269.a n = A162852 (n + 1)

end A162852

/-! ## A162852.P15769755272458757511

`A166552(n+2)-A166552(n+1)`
-/

namespace A162852.P15769755272458757511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166552 (n + 2) - A166552 (n + 1)

end

end A162852.P15769755272458757511

namespace A162852

/-- `A166552(n+2)-A166552(n+1)` -/
def P15769755272458757511.Spec : Prop :=
  ∀ n, P15769755272458757511.a n = A162852 (n + 1)

end A162852

/-! ## A162852.P1414645889762515307

`A111575(2*n)+Δ[Δ[A111575(2*n)]]`
-/

namespace A162852.P1414645889762515307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111575 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111575 (2 * n) + (f1 (n + 1) - f1 n)

end

end A162852.P1414645889762515307

namespace A162852

/-- `A111575(2*n)+Δ[Δ[A111575(2*n)]]` -/
def P1414645889762515307.Spec : Prop :=
  ∀ n, P1414645889762515307.a n = A162852 (n + 1)

end A162852

/-! ## A162852.P18029566850864152039

`Δ[A122164(A047209(n+2))]`
-/

namespace A162852.P18029566850864152039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122164 (A047209 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162852.P18029566850864152039

namespace A162852

/-- `Δ[A122164(A047209(n+2))]` -/
def P18029566850864152039.Spec : Prop :=
  ∀ n, P18029566850864152039.a n = A162852 (n + 1)

end A162852

/-! ## A162852.P1485027697267579419

`Δ[A060647(n)-A254006(n)]`
-/

namespace A162852.P1485027697267579419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060647 n - A254006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162852.P1485027697267579419

namespace A162852

/-- `Δ[A060647(n)-A254006(n)]` -/
def P1485027697267579419.Spec : Prop :=
  ∀ n, P1485027697267579419.a n = A162852 (n + 1)

end A162852

/-! ## A162852.P10140496204878544086

`Δ[A162766(n+2)/3]`
-/

namespace A162852.P10140496204878544086
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162766 (n + 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162852.P10140496204878544086

namespace A162852

/-- `Δ[A162766(n+2)/3]` -/
def P10140496204878544086.Spec : Prop :=
  ∀ n, P10140496204878544086.a n = (A162852 (n + 1) : ℚ)

end A162852

/-! ## A162852.P4340281233091060958

`A117855(n+1)+A167936(n+1)-A167784(n+1)`
-/

namespace A162852.P4340281233091060958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117855 (n + 1) + (A167936 (n + 1) - A167784 (n + 1))

end

end A162852.P4340281233091060958

namespace A162852

/-- `A117855(n+1)+A167936(n+1)-A167784(n+1)` -/
def P4340281233091060958.Spec : Prop :=
  ∀ n, P4340281233091060958.a n = A162852 (n + 1)

end A162852

/-! ## A162852.P6159525998353612293

`-(3^n/a(n-1))` with `a(0)=3`
-/

namespace A162852.P6159525998353612293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  -((3 ^ n : ℚ) / a (n - 1))

end

end A162852.P6159525998353612293

namespace A162852

/-- `-(3^n/a(n-1))` -/
def P6159525998353612293.Spec : Prop :=
  ∀ n, P6159525998353612293.a n = (A162852 (n + 1) : ℚ)

end A162852

/-!
# A162853: Take the binary representation of n. Reduce by one digit every run (completely of either 0's or 1's) of an even number of digits. Increase by one digit every run of an odd number of digits in the binary representation of n (where this added digit has the same value that makes up the rest of the run's digits). a(n) = the decimal equivalent of the result.

The programs for A162853, there is no canonical definition to state claims against.
-/

/-! ## A162853.P10833830345123068370

`A266151(A266150(n))`
-/

namespace A162853.P10833830345123068370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266151 (A266150 n).toNat

end

end A162853.P10833830345123068370

/-!
# A162855: Write a prime p in binary. Consider the runs (that alternate between those of 1's and those of 0's) in this binary representation. Consider all binary numbers made by rearranging the runs, leaving each individual run intact, and starting each such binary number with a run of 1's, followed by a run of 0's, continuing to alternate runs of 1's and runs of 0's. A prime p is included in sequence A162855 if all such permutations of runs lead to prime values.

The programs for A162855, there is no canonical definition to state claims against.
-/

/-! ## A162855.P13714996798685642626

`eq[A003415(n), A334997(A083796(n+1))]`
-/

namespace A162855.P13714996798685642626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334997 (A083796 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162855.P13714996798685642626

/-! ## A162855.P17448482841911162902

`eq[A003415(n), A236833(A337683(n+1))]`
-/

namespace A162855.P17448482841911162902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236833 (A337683 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162855.P17448482841911162902

/-! ## A162855.P13055788756528774518

`eq[A302055(n), A334997(A083796(n+1))]`
-/

namespace A162855.P13055788756528774518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334997 (A083796 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162855.P13055788756528774518

/-! ## A162855.P11931928910783495979

`A000040(lt[A222032(n+1), A124360(n)])`
-/

namespace A162855.P11931928910783495979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A162855.P11931928910783495979

/-! ## A162855.P8810150072290100070

`eq[A003415(n), A222656(A253573(n+2))]`
-/

namespace A162855.P8810150072290100070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A253573 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162855.P8810150072290100070

/-!
# A162856: Those primes not in sequence A162855.

The programs for A162856, there is no canonical definition to state claims against.
-/

/-! ## A162856.P5689824112804814925

`p?[A001951(n^A269247(n))]`
-/

namespace A162856.P5689824112804814925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A269247 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162856.P5689824112804814925

/-!
# A162857: Primes of the form 4p - 1, p a prime.

The programs for A162857, there is no canonical definition to state claims against.
-/

/-! ## A162857.P10138115987473323479

`p?[A001749(n+1)-1]`
-/

namespace A162857.P10138115987473323479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162857.P10138115987473323479

/-! ## A162857.P7731401177445193015

`p?[eq[2, A070821(n+1)]]`
-/

namespace A162857.P7731401177445193015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A162857.P7731401177445193015

/-! ## A162857.P11022235964828270978

`4*A062737(n+1)-1`
-/

namespace A162857.P11022235964828270978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A062737 (n + 1) - 1

end

end A162857.P11022235964828270978

/-! ## A162857.P4508749530963530563

`p?[4*A000040(n+1)-1]`
-/

namespace A162857.P4508749530963530563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000040 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162857.P4508749530963530563

/-! ## A162857.P11359207638699041094

`4*p?[A005099(n+1)]-1`
-/

namespace A162857.P11359207638699041094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A162857.P11359207638699041094

/-!
# A162859: Numbers n such that 9n^2 is a zeroless pandigital number.

The programs for A162859, there is no canonical definition to state claims against.
-/

/-! ## A162859.P17270246552716706110

`A071519(n+1)/3`
-/

namespace A162859.P17270246552716706110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071519 (n + 1) : ℚ) / 3

end

end A162859.P17270246552716706110

/-! ## A162859.P16453413434391672036

`sqrt(A036744(n+1))/3`
-/

namespace A162859.P16453413434391672036
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036744 (n + 1) : ℝ) / 3

end

end A162859.P16453413434391672036

/-! ## A162859.P10951290377464477186

`floor(A294661(n+1)/3)`
-/

namespace A162859.P10951290377464477186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A294661 (n + 1) : ℚ) / 3⌋

end

end A162859.P10951290377464477186

/-! ## A162859.P5219419738757151107

`floor(sqrt(A352329(n+7))/3)`
-/

namespace A162859.P5219419738757151107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A352329 (n + 7) : ℝ) / 3⌋

end

end A162859.P5219419738757151107

/-!
# A162860: Numbers k such that k^2+4*k+1 is prime.

The programs for A162860, there is no canonical definition to state claims against.
-/

/-! ## A162860.P13020088672133159865

`A028873(n+1)-2`
-/

namespace A162860.P13020088672133159865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028873 (n + 1) - 2

end

end A162860.P13020088672133159865

/-! ## A162860.P16564744491607917157

`2*(A083022(n+1)-1)`
-/

namespace A162860.P16564744491607917157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A083022 (n + 1) - 1)

end

end A162860.P16564744491607917157

/-! ## A162860.P8024181994427137996

`ceil(sqrt(A028874(n+1)))-2`
-/

namespace A162860.P8024181994427137996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A028874 (n + 1) : ℝ)⌉ - 2

end

end A162860.P8024181994427137996

/-! ## A162860.P13718535190133874445

`(A038600(n+1)+A028873(n+1))%A038599(n+1)`
-/

namespace A162860.P13718535190133874445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038600 (n + 1) + A028873 (n + 1)) (A038599 (n + 1))

end

end A162860.P13718535190133874445

/-! ## A162860.P10970851221914023208

`A004275(A083022(n+1))`
-/

namespace A162860.P10970851221914023208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A083022 (n + 1)).toNat

end

end A162860.P10970851221914023208

/-! ## A162860.P7286619813171610695

`A004277(A083022(n+1)-1)`
-/

namespace A162860.P7286619813171610695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A083022 (n + 1) - 1).toNat

end

end A162860.P7286619813171610695

/-! ## A162860.P13279948072253439525

`A005843(A083022(n+1)-1)`
-/

namespace A162860.P13279948072253439525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A083022 (n + 1) - 1).toNat

end

end A162860.P13279948072253439525

/-! ## A162860.P7240619730310765437

`A046666(A028873(n+1))`
-/

namespace A162860.P7240619730310765437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A028873 (n + 1)).toNat

end

end A162860.P7240619730310765437

/-! ## A162860.P11898219854875913661

`eq[3, A056927(n+2)]`
-/

namespace A162860.P11898219854875913661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162860.P11898219854875913661

/-! ## A162860.P15056075535209452416

`ceil(sqrt(p?[n²-3]))-2`
-/

namespace A162860.P15056075535209452416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌉ - 2

end

end A162860.P15056075535209452416

/-! ## A162860.P10360200282413020878

`sqrt(p?[n²-3]+3)-2`
-/

namespace A162860.P10360200282413020878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3 : ℝ) - 2

end

end A162860.P10360200282413020878

/-! ## A162860.P17505052558848565790

`eq[1, ∑{e}[3-(n+2)², #]]`
-/

namespace A162860.P17505052558848565790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n + 2) ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162860.P17505052558848565790

/-!
# A162861: Primes of the form n^10 + n^9 + n^8 + n^7 + n^6 + n^5 + n^4 + n^3 + n^2 + n + 1.

The programs for A162861, there is no canonical definition to state claims against.
-/

/-! ## A162861.P74814883125202627

`A060885(A162862(n+1))`
-/

namespace A162861.P74814883125202627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060885 (A162862 (n + 1)).toNat

end

end A162861.P74814883125202627

/-!
# A162862: Numbers n such that n^10 + n^9 + n^8 + n^7 + n^6 + n^5 + n^4 + n^3 + n^2 + n + 1 is prime.

The programs for A162862, there is no canonical definition to state claims against.
-/

/-! ## A162862.P5747143115127494002

`∪[A240693(n+1), A308238(n+1)]`
-/

namespace A162862.P5747143115127494002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162862.P5747143115127494002

/-!
# A162863: E.g.f. satisfies: A(x) = (1 + x*A(x)^2)^A(x).

The programs for A162863, there is no canonical definition to state claims against.
-/

/-! ## A162863.P12287678676364072833

`floor(sqrt(A255558((2*n)^n+1)))`
-/

namespace A162863.P12287678676364072833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A255558 ((2 * n) ^ n + 1))

end

end A162863.P12287678676364072833

/-!
# A162864: Integers n, divisible by six, for which t = (4^n - 5 * 2^n - 4 * 4^(n^2 - 2n) + 8 * 2^(n^2 - 2n)) / (4 * (n^3 - n)) is an integer.

The programs for A162864, there is no canonical definition to state claims against.
-/

/-! ## A162864.P270020676680272448

`eq[A025147(A033265(n+1)), A227625(n+1)]`
-/

namespace A162864.P270020676680272448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (A033265 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227625 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162864.P270020676680272448

/-! ## A162864.P16802328459534363687

`lt[A007430(n+1), A326417(A162728(n+1))]`
-/

namespace A162864.P16802328459534363687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326417 (A162728 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162864.P16802328459534363687

/-! ## A162864.P15710667678259590676

`lt[A060724(n+1), A326417(A162728(n+1))]`
-/

namespace A162864.P15710667678259590676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326417 (A162728 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162864.P15710667678259590676

/-! ## A162864.P457637533077068737

`lt[A062369(n+1), A326417(A162728(n+1))]`
-/

namespace A162864.P457637533077068737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326417 (A162728 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162864.P457637533077068737

/-!
# A162865: Initial prime of exactly nine consecutive primes congruent to 1 modulo 4.

The programs for A162865, there is no canonical definition to state claims against.
-/

/-! ## A162865.P9997690339873652807

`A226905(A298345(n))`
-/

namespace A162865.P9997690339873652807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226905 (A298345 n).toNat

end

end A162865.P9997690339873652807

/-!
# A162867: a(n) is the sum of all possible pairs of the first n primes.

The programs for A162867, the canonical program `A162867.P8413772705343167960` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162867 has offset 1).

The definition of A162867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162867.P8413772705343167960

`(n+2)*A007504(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A162867

/-- `(n+2)*A007504(n+1)` -/
def P8413772705343167960.Spec : Prop :=
  ∀ n, P8413772705343167960.a n = A162867 (n + 1)

theorem P8413772705343167960.correct : P8413772705343167960.Spec := by
  intro n
  simp only [A162867, Nat.add_sub_cancel]

end A162867

/-! ## A162867.P1946300257674207948

`(n+2)*∑[p?[ceil(2/acot(n))]]`
-/

namespace A162867.P1946300257674207948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162867.P1946300257674207948

namespace A162867

/-- `(n+2)*∑[p?[ceil(2/acot(n))]]` -/
def P1946300257674207948.Spec : Prop :=
  ∀ n, P1946300257674207948.a n = A162867 (n + 1)

end A162867

/-! ## A162867.P13785721639119360218

`A014285(n+1)+A014148(n+1)`
-/

namespace A162867.P13785721639119360218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014285 (n + 1) + A014148 (n + 1)

end

end A162867.P13785721639119360218

namespace A162867

/-- `A014285(n+1)+A014148(n+1)` -/
def P13785721639119360218.Spec : Prop :=
  ∀ n, P13785721639119360218.a n = A162867 (n + 1)

end A162867

/-! ## A162867.P16458298800904744336

`A167214(n+1)+A007504(n+1)`
-/

namespace A162867.P16458298800904744336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167214 (n + 1) + A007504 (n + 1)

end

end A162867.P16458298800904744336

namespace A162867

/-- `A167214(n+1)+A007504(n+1)` -/
def P16458298800904744336.Spec : Prop :=
  ∀ n, P16458298800904744336.a n = A162867 (n + 1)

theorem P16458298800904744336.correct : P16458298800904744336.Spec := by
  intro n
  simp only [A162867, Nat.add_sub_cancel, A162867.P16458298800904744336.a, A162867.P8413772705343167960.a, A007504, A007504.P14310834286015847203.a, A167214, A167214.P9697442408688225616.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162867

/-! ## A162867.P5650563854471652039

`A062020(n+1)+2*A014148(n+1)`
-/

namespace A162867.P5650563854471652039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062020 (n + 1) + 2 * A014148 (n + 1)

end

end A162867.P5650563854471652039

namespace A162867

/-- `A062020(n+1)+2*A014148(n+1)` -/
def P5650563854471652039.Spec : Prop :=
  ∀ n, P5650563854471652039.a n = A162867 (n + 1)

end A162867

/-! ## A162867.P1166191214524361413

`2*A014285(n+1)-A062020(n+1)`
-/

namespace A162867.P1166191214524361413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014285 (n + 1) - A062020 (n + 1)

end

end A162867.P1166191214524361413

namespace A162867

/-- `2*A014285(n+1)-A062020(n+1)` -/
def P1166191214524361413.Spec : Prop :=
  ∀ n, P1166191214524361413.a n = A162867 (n + 1)

theorem P1166191214524361413.correct : P1166191214524361413.Spec := by
  intro n
  simp only [A162867, Nat.add_sub_cancel, A162867.P1166191214524361413.a, A162867.P8413772705343167960.a, A007504, A007504.P14310834286015847203.a, A014285, A014285.P2422315619309490149.f1, A014285.P2422315619309490149.a, A062020, A062020.P11042138404562219295.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162867

/-! ## A162867.P14992412875848450970

`A014285(n+1)+∑[∑[A000040(n+1)]]`
-/

namespace A162867.P14992412875848450970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014285 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162867.P14992412875848450970

namespace A162867

/-- `A014285(n+1)+∑[∑[A000040(n+1)]]` -/
def P14992412875848450970.Spec : Prop :=
  ∀ n, P14992412875848450970.a n = A162867 (n + 1)

end A162867

/-! ## A162867.P187738271292337901

`∑[A033286(n+1)+∑[A000040(n+1)]]`
-/

namespace A162867.P187738271292337901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162867.P187738271292337901

namespace A162867

/-- `∑[A033286(n+1)+∑[A000040(n+1)]]` -/
def P187738271292337901.Spec : Prop :=
  ∀ n, P187738271292337901.a n = A162867 (n + 1)

end A162867

/-! ## A162867.P17394657852933290090

`∑[∑[A090942(n+1)+A000040(n+1)]]`
-/

namespace A162867.P17394657852933290090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1) + A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162867.P17394657852933290090

namespace A162867

/-- `∑[∑[A090942(n+1)+A000040(n+1)]]` -/
def P17394657852933290090.Spec : Prop :=
  ∀ n, P17394657852933290090.a n = A162867 (n + 1)

end A162867

/-! ## A162867.P16600192393801198612

`A007504(n+1)+A062020(n+1)+A023662(n+1)`
-/

namespace A162867.P16600192393801198612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A062020 (n + 1) + A023662 (n + 1))

end

end A162867.P16600192393801198612

namespace A162867

/-- `A007504(n+1)+A062020(n+1)+A023662(n+1)` -/
def P16600192393801198612.Spec : Prop :=
  ∀ n, P16600192393801198612.a n = A162867 (n + 1)

theorem P16600192393801198612.correct : P16600192393801198612.Spec := by
  intro n
  simp only [A162867, Nat.add_sub_cancel, A162867.P16600192393801198612.a, A162867.P8413772705343167960.a, A007504, A007504.P14310834286015847203.a, A023662, A023662.P10648617195950893557.a, A062020, A062020.P11042138404562219295.a, A014284, A014284.P18183547548072881472.a, A014285, A014285.P2422315619309490149.f1, A014285.P2422315619309490149.a, A167214, A167214.P9697442408688225616.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162867

/-! ## A162867.P5024013763955469607

`A007504(n+1)+A316322(n+1)-A062020(n+1)`
-/

namespace A162867.P5024013763955469607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A316322 (n + 1) - A062020 (n + 1))

end

end A162867.P5024013763955469607

namespace A162867

/-- `A007504(n+1)+A316322(n+1)-A062020(n+1)` -/
def P5024013763955469607.Spec : Prop :=
  ∀ n, P5024013763955469607.a n = A162867 (n + 1)

theorem P5024013763955469607.correct : P5024013763955469607.Spec := by
  intro n
  simp only [A162867, Nat.add_sub_cancel, A162867.P5024013763955469607.a, A162867.P8413772705343167960.a, A007504, A007504.P14310834286015847203.a, A062020, A062020.P11042138404562219295.a, A316322, A316322.P16038970231065936341.a, A014284, A014284.P18183547548072881472.a, A014285, A014285.P2422315619309490149.f1, A014285.P2422315619309490149.a, A167214, A167214.P9697442408688225616.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162867

/-! ## A162867.P14112621032778015032

`A014148(n+1)+A306834(n+1)*A309036(n+1)`
-/

namespace A162867.P14112621032778015032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014148 (n + 1) + A306834 (n + 1) * A309036 (n + 1)

end

end A162867.P14112621032778015032

namespace A162867

/-- `A014148(n+1)+A306834(n+1)*A309036(n+1)` -/
def P14112621032778015032.Spec : Prop :=
  ∀ n, P14112621032778015032.a n = A162867 (n + 1)

end A162867

/-! ## A162867.P7185728108932036334

`A014285(n+1)+A167214(n+2)-A014285(n+2)`
-/

namespace A162867.P7185728108932036334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014285 (n + 1) + (A167214 (n + 2) - A014285 (n + 2))

end

end A162867.P7185728108932036334

namespace A162867

/-- `A014285(n+1)+A167214(n+2)-A014285(n+2)` -/
def P7185728108932036334.Spec : Prop :=
  ∀ n, P7185728108932036334.a n = A162867 (n + 1)

end A162867

/-! ## A162867.P14706537633994921045

`A083719(n+2)-(n+2)`
-/

namespace A162867.P14706537633994921045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083719 (n + 2) - (n + 2 : ℤ)

end

end A162867.P14706537633994921045

namespace A162867

/-- `A083719(n+2)-(n+2)` -/
def P14706537633994921045.Spec : Prop :=
  ∀ n, P14706537633994921045.a n = A162867 (n + 1)

end A162867

/-! ## A162867.P15467884115914918454

`(n+2)*∑[p?[round(sqrt(n)+n)]]`
-/

namespace A162867.P15467884115914918454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162867.P15467884115914918454

namespace A162867

/-- `(n+2)*∑[p?[round(sqrt(n)+n)]]` -/
def P15467884115914918454.Spec : Prop :=
  ∀ n, P15467884115914918454.a n = A162867 (n + 1)

end A162867

/-! ## A162867.P4157231484508362153

`(n+2)*A160793(2*(n+1))`
-/

namespace A162867.P4157231484508362153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A160793 (2 * (n + 1))

end

end A162867.P4157231484508362153

namespace A162867

/-- `(n+2)*A160793(2*(n+1))` -/
def P4157231484508362153.Spec : Prop :=
  ∀ n, P4157231484508362153.a n = A162867 (n + 1)

end A162867

/-! ## A162867.P7069458234465793574

`(n+2)*A034387(A000040(n+1))`
-/

namespace A162867.P7069458234465793574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A034387 (A000040 (n + 1)).toNat

end

end A162867.P7069458234465793574

namespace A162867

/-- `(n+2)*A034387(A000040(n+1))` -/
def P7069458234465793574.Spec : Prop :=
  ∀ n, P7069458234465793574.a n = A162867 (n + 1)

end A162867

/-! ## A162867.P8005037311003655530

`(n+2)*A074036(A001747(n+2))`
-/

namespace A162867.P8005037311003655530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A074036 (A001747 (n + 2)).toNat

end

end A162867.P8005037311003655530

namespace A162867

/-- `(n+2)*A074036(A001747(n+2))` -/
def P8005037311003655530.Spec : Prop :=
  ∀ n, P8005037311003655530.a n = A162867 (n + 1)

end A162867

/-! ## A162867.P3859498313392476189

`(n+2)*A066911(A000040(n+2))`
-/

namespace A162867.P3859498313392476189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A066911 (A000040 (n + 2)).toNat

end

end A162867.P3859498313392476189

namespace A162867

/-- `(n+2)*A066911(A000040(n+2))` -/
def P3859498313392476189.Spec : Prop :=
  ∀ n, P3859498313392476189.a n = A162867 (n + 1)

end A162867

/-! ## A162867.P3293494192301200289

`(n+2)*A194939(A000217(n+1))`
-/

namespace A162867.P3293494192301200289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A194939 (A000217 (n + 1)).toNat

end

end A162867.P3293494192301200289

namespace A162867

/-- `(n+2)*A194939(A000217(n+1))` -/
def P3293494192301200289.Spec : Prop :=
  ∀ n, P3293494192301200289.a n = A162867 (n + 1)

end A162867

/-!
# A162869: Primes of the form (x^2 + y^3)/(x+y), with x,y > 1 two distinct integers.

The programs for A162869, there is no canonical definition to state claims against.
-/

/-! ## A162869.P1252174439572978087

`p?[record[A073169(A181064(n+1))]]`
-/

namespace A162869.P1252174439572978087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073169 (A181064 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162869.P1252174439572978087

/-! ## A162869.P2643998380203693713

`p?[or(1, A276887(A276882(n+1)))]`
-/

namespace A162869.P2643998380203693713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A276887 (A276882 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162869.P2643998380203693713

/-! ## A162869.P2975963210825609473

`p?[A111250(n+1)*A215204(n)]`
-/

namespace A162869.P2975963210825609473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1) * A215204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162869.P2975963210825609473

/-! ## A162869.P4579563207475720430

`∩[A023227(n+1), A136272(n+1)]`
-/

namespace A162869.P4579563207475720430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162869.P4579563207475720430

/-!
# A162872: Primes p such that p-1 and p+1 each contain at least one squared prime in their prime factorization.

The programs for A162872, there is no canonical definition to state claims against.
-/

/-! ## A162872.P1908155434911029877

`A075432(eq[A023895(n), A151758(n)])`
-/

namespace A162872.P1908155434911029877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075432 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A162872.P1908155434911029877

/-!
# A162873: List of pairs (p,r) of twin primes p and r=p+2 such that p-1, p+1 and r+1 are all divisible by squares > 1.

The programs for A162873, there is no canonical definition to state claims against.
-/

/-! ## A162873.P9981793017767877896

`∩[A120993(n+1), A122565(n+1)]`
-/

namespace A162873.P9981793017767877896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162873.P9981793017767877896

/-!
# A162874: Twin primes p and r (p < r) such that p-1, p+1 and r+1 are not cubefree.

The programs for A162874, there is no canonical definition to state claims against.
-/

/-! ## A162874.P4220934139427409383

`∪[A162989(n+1)+2, A162989(n+1)]`
-/

namespace A162874.P4220934139427409383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162989 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162874.P4220934139427409383

/-! ## A162874.P5261682381980492593

`A162989(A008619(n))+Δ[A052928(n)]`
-/

namespace A162874.P5261682381980492593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162989 (A008619 n).toNat + (f1 (n + 1) - f1 n)

end

end A162874.P5261682381980492593

/-! ## A162874.P10821925683711582191

`A162989(A008619(n))+2*A000035(n)`
-/

namespace A162874.P10821925683711582191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162989 (A008619 n).toNat + 2 * A000035 n

end

end A162874.P10821925683711582191

/-! ## A162874.P9018626189597868919

`A323202(A016933(n))+A162989(A008619(n))`
-/

namespace A162874.P9018626189597868919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323202 (A016933 n).toNat + A162989 (A008619 n).toNat

end

end A162874.P9018626189597868919

/-!
# A162875: Twin primes p and r such that p - 1, p + 1 and r + 1 are cubefree.

The programs for A162875, there is no canonical definition to state claims against.
-/

/-! ## A162875.P16734019954622949629

`A007967(A166564(n+1))`
-/

namespace A162875.P16734019954622949629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (A166564 (n + 1)).toNat

end

end A162875.P16734019954622949629

/-! ## A162875.P5922110210907195679

`A166564(A365822(n+1))`
-/

namespace A162875.P5922110210907195679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166564 (A365822 (n + 1)).toNat

end

end A162875.P5922110210907195679

/-! ## A162875.P12305423050970953601

`A166564(A004903(n+2))`
-/

namespace A162875.P12305423050970953601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166564 (A004903 (n + 2)).toNat

end

end A162875.P12305423050970953601

/-! ## A162875.P14214761703252242354

`A166564(A004914(n+2))`
-/

namespace A162875.P14214761703252242354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166564 (A004914 (n + 2)).toNat

end

end A162875.P14214761703252242354

/-!
# A162876: Twin prime pairs p, p+2 such that p-1 and p+3 are both squarefree.

The programs for A162876, there is no canonical definition to state claims against.
-/

/-! ## A162876.P7767708457907771922

`A122564(∑[A301531(A059922(n))])`
-/

namespace A162876.P7767708457907771922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (A059922 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122564 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162876.P7767708457907771922

/-!
# A162880: Numbers k such that tau(sigma(k)) is not equal to sigma(tau(k)).

The programs for A162880, there is no canonical definition to state claims against.
-/

/-! ## A162880.P2448359183512871800

`comp[n*char[A076361(n+1)]]`
-/

namespace A162880.P2448359183512871800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076361 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A162880.P2448359183512871800

/-! ## A162880.P14708299914061275651

`lt[1, lcm(2, A076360(n+1))]+1`
-/

namespace A162880.P14708299914061275651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A076360 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A162880.P14708299914061275651

/-! ## A162880.P4826019009610835452

`comp[A076361(floor(n/2)+1)-1]+1`
-/

namespace A162880.P4826019009610835452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076361 (⌊(n : ℚ) / 2⌋ + 1).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A162880.P4826019009610835452

/-! ## A162880.P5209760248418695574

`lt[1, lcm(2, A076360(A028310(n)))]`
-/

namespace A162880.P5209760248418695574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A076360 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162880.P5209760248418695574

/-! ## A162880.P5851241922823142278

`comp[A076361(n+1)*A178401(n)]`
-/

namespace A162880.P5851241922823142278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076361 (n + 1) * A178401 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A162880.P5851241922823142278

/-! ## A162880.P6129386125989087259

`lt[0, A001222(abs(A076360(n+1))+1)]+1`
-/

namespace A162880.P6129386125989087259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|A076360 (n + 1)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A162880.P6129386125989087259

/-! ## A162880.P446183998466569822

`lt[0, A001222(A076360(n+1)²+1)]+1`
-/

namespace A162880.P446183998466569822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A076360 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A162880.P446183998466569822

/-!
# A162884: Half the difference between the larger and smaller term of the n-th amicable pair.

The programs for A162884, there is no canonical definition to state claims against.
-/

/-! ## A162884.P7435884325950161391

`A066539(n+1)/2`
-/

namespace A162884.P7435884325950161391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066539 (n + 1) : ℚ) / 2

end

end A162884.P7435884325950161391

/-! ## A162884.P3955883519092808571

`(A259180(2*(n+1))-A259180(2*(n+1)-1))/2`
-/

namespace A162884.P3955883519092808571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259180 (2 * (n + 1)) - A259180 (2 * (n + 1) - 1) : ℚ) / 2

end

end A162884.P3955883519092808571

/-! ## A162884.P5581542201960334943

`Δ[∑[A066539(A028310(n))]/2]`
-/

namespace A162884.P5581542201960334943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066539 (A028310 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162884.P5581542201960334943

/-! ## A162884.P8472488784305780293

`A275315(n+1)-A002025(n+1)`
-/

namespace A162884.P8472488784305780293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275315 (n + 1) - A002025 (n + 1)

end

end A162884.P8472488784305780293

/-! ## A162884.P10924882995536841083

`A002046(n+1)-A275315(n+1)`
-/

namespace A162884.P10924882995536841083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002046 (n + 1) - A275315 (n + 1)

end

end A162884.P10924882995536841083

/-! ## A162884.P6583907693049356200

`A275315(n+1)-A259180(Δ[n²])`
-/

namespace A162884.P6583907693049356200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275315 (n + 1) - A259180 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A162884.P6583907693049356200

/-! ## A162884.P14809212855048632483

`(A002046(n+1)-A002025(n+1))/2`
-/

namespace A162884.P14809212855048632483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002046 (n + 1) - A002025 (n + 1) : ℚ) / 2

end

end A162884.P14809212855048632483

/-! ## A162884.P1901371464129362534

`A180164(n+1)/2-A002025(n+1)`
-/

namespace A162884.P1901371464129362534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180164 (n + 1) : ℚ) / 2 - (A002025 (n + 1) : ℚ)

end

end A162884.P1901371464129362534

/-! ## A162884.P16740511597306203473

`A002046(n+1)-A180164(n+1)/2`
-/

namespace A162884.P16740511597306203473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002046 (n + 1) : ℚ) - (A180164 (n + 1) : ℚ) / 2

end

end A162884.P16740511597306203473

/-! ## A162884.P371556750897203836

`2^A008683(A020483(n))*A066539(n+1)`
-/

namespace A162884.P371556750897203836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A066539 (n + 1) : ℚ)

end

end A162884.P371556750897203836

/-!
# A162886: Even numbers in an alternating 1-based sum up to some odd nonprime.

The programs for A162886, there is no canonical definition to state claims against.
-/

/-! ## A162886.P873664552789638588

`6*A045752(n+1)`
-/

namespace A162886.P873664552789638588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A045752 (n + 1)

end

end A162886.P873664552789638588

/-! ## A162886.P15199437266436395527

`6*(A095277(n+1)+1)`
-/

namespace A162886.P15199437266436395527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A095277 (n + 1) + 1)

end

end A162886.P15199437266436395527

/-! ## A162886.P10008093291086803916

`6*(A153086(n+1)+2)`
-/

namespace A162886.P10008093291086803916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A153086 (n + 1) + 2)

end

end A162886.P10008093291086803916

/-! ## A162886.P11794940538359997079

`6*(A156288(n+1)-1)`
-/

namespace A162886.P11794940538359997079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A156288 (n + 1) - 1)

end

end A162886.P11794940538359997079

/-! ## A162886.P3808697388768627071

`3*ceil(A091236(n+1)/2)`
-/

namespace A162886.P3808697388768627071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈(A091236 (n + 1) : ℚ) / 2⌉

end

end A162886.P3808697388768627071

/-! ## A162886.P15108570291633008669

`6*(comp[A095278(n+1)]+1)`
-/

namespace A162886.P15108570291633008669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A162886.P15108570291633008669

/-! ## A162886.P4677427854803517533

`6*(lt[2, A000005(4*n+3)]+1)`
-/

namespace A162886.P4677427854803517533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A162886.P4677427854803517533

/-! ## A162886.P12145166338278522165

`A008458(A045752(n+1))`
-/

namespace A162886.P12145166338278522165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A045752 (n + 1)).toNat

end

end A162886.P12145166338278522165

/-! ## A162886.P2861821351117471754

`A055562(A091236(n+1))`
-/

namespace A162886.P2861821351117471754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055562 (A091236 (n + 1)).toNat

end

end A162886.P2861821351117471754

/-! ## A162886.P14095621376041709227

`6*lt[A014963(2*(A004277(n)-1)+1), n]`
-/

namespace A162886.P14095621376041709227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (A004277 n - 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A162886.P14095621376041709227

/-!
# A162888: An alternating sum of the first n nonprimes.

The programs for A162888, the canonical program `A162888.P12511542881006591627` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162888 has offset 1).

The definition of A162888 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162888.P12511542881006591627

`A064455(A141468(n+1)+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A162888

/-- `A064455(A141468(n+1)+1)` -/
def P12511542881006591627.Spec : Prop :=
  ∀ n, P12511542881006591627.a n = A162888 (n + 1)

theorem P12511542881006591627.correct : P12511542881006591627.Spec := by
  intro n
  simp only [A162888, Nat.add_sub_cancel]

end A162888

/-! ## A162888.P14118558669758887273

`A014682(comp[A134204(n)])+1`
-/

namespace A162888.P14118558669758887273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A162888.P14118558669758887273

namespace A162888

/-- `A014682(comp[A134204(n)])+1` -/
def P14118558669758887273.Spec : Prop :=
  ∀ n, P14118558669758887273.a n = A162888 (n + 1)

end A162888

/-! ## A162888.P6526163459169206205

`A014682(comp[A151800(n)])+1`
-/

namespace A162888.P6526163459169206205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A162888.P6526163459169206205

namespace A162888

/-- `A014682(comp[A151800(n)])+1` -/
def P6526163459169206205.Spec : Prop :=
  ∀ n, P6526163459169206205.a n = A162888 (n + 1)

end A162888

/-! ## A162888.P1792860707568024621

`A014682(comp[A162753(n)])+1`
-/

namespace A162888.P1792860707568024621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A162888.P1792860707568024621

namespace A162888

/-- `A014682(comp[A162753(n)])+1` -/
def P1792860707568024621.Spec : Prop :=
  ∀ n, P1792860707568024621.a n = A162888 (n + 1)

end A162888

/-! ## A162888.P17685823954396471711

`A014682(comp[Δ[A007504(n)]])+1`
-/

namespace A162888.P17685823954396471711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A162888.P17685823954396471711

namespace A162888

/-- `A014682(comp[Δ[A007504(n)]])+1` -/
def P17685823954396471711.Spec : Prop :=
  ∀ n, P17685823954396471711.a n = A162888 (n + 1)

end A162888

/-! ## A162888.P7302724570644657306

`A014682(comp[record[A036262(n)]])+1`
-/

namespace A162888.P7302724570644657306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A162888.P7302724570644657306

namespace A162888

/-- `A014682(comp[record[A036262(n)]])+1` -/
def P7302724570644657306.Spec : Prop :=
  ∀ n, P7302724570644657306.a n = A162888 (n + 1)

end A162888

/-! ## A162888.P1524772545013620854

`A014682(sqrt(A161753(n+1)))+1`
-/

namespace A162888.P1524772545013620854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway (Real.sqrt (A161753 (n + 1) : ℝ))).toNat + 1

end

end A162888.P1524772545013620854

namespace A162888

/-- `A014682(sqrt(A161753(n+1)))+1` -/
def P1524772545013620854.Spec : Prop :=
  ∀ n, P1524772545013620854.a n = A162888 (n + 1)

end A162888

/-! ## A162888.P15012485408041205737

`A014682(comp[A000040(n+1)])+1`
-/

namespace A162888.P15012485408041205737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A162888.P15012485408041205737

namespace A162888

/-- `A014682(comp[A000040(n+1)])+1` -/
def P15012485408041205737.Spec : Prop :=
  ∀ n, P15012485408041205737.a n = A162888 (n + 1)

end A162888

/-! ## A162888.P3160038341914211879

`A064455(comp[A000040(n+1)]+1)`
-/

namespace A162888.P3160038341914211879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A162888.P3160038341914211879

namespace A162888

/-- `A064455(comp[A000040(n+1)]+1)` -/
def P3160038341914211879.Spec : Prop :=
  ∀ n, P3160038341914211879.a n = A162888 (n + 1)

end A162888

/-! ## A162888.P8104696156347552883

`A014682(∪[A018252(n+1), n²])+1`
-/

namespace A162888.P8104696156347552883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n) + 1

end

end A162888.P8104696156347552883

namespace A162888

/-- `A014682(∪[A018252(n+1), n²])+1` -/
def P8104696156347552883.Spec : Prop :=
  ∀ n, P8104696156347552883.a n = A162888 (n + 1)

end A162888

/-!
# A162891: Expansion of 1 / Product_{k>=1} (1-x^k-x^(2*k)).

The programs for A162891, there is no canonical definition to state claims against.
-/

/-! ## A162891.P8578012001738411261

`A003056(A003082(n)*A215067(n+1))`
-/

namespace A162891.P8578012001738411261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A003082 n * A215067 (n + 1)).toNat

end

end A162891.P8578012001738411261

/-! ## A162891.P16489931705919080803

`A257639(A008619(n)*A046661(n+1))`
-/

namespace A162891.P16489931705919080803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A008619 n * A046661 (n + 1)).toNat

end

end A162891.P16489931705919080803

/-! ## A162891.P5707366549022785295

`A257639(A002900(n+1)/2*A008619(n))`
-/

namespace A162891.P5707366549022785295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (SequenceMachineLib.roundAway ((A002900 (n + 1) : ℚ) / 2 * (A008619 n : ℚ))).toNat

end

end A162891.P5707366549022785295

/-!
# A162893: Integers n such that the century defined by the interval [100n+1,100n+100] (i.e., the (n+1)-st century) contains exactly three Ormiston prime pairs and no other primes.

The programs for A162893, there is no canonical definition to state claims against.
-/

/-! ## A162893.P11466892602273551388

`A162892(A077773(n)+A014224(n+1))`
-/

namespace A162893.P11466892602273551388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162892 (A077773 n + A014224 (n + 1)).toNat

end

end A162893.P11466892602273551388

/-!
# A162897: a(1)=a(2)=2. a(n) = the smallest integer >= 2 such that a(n-1)^a(n) > a(n-2)^a(n-1).

The programs for A162897, there is no canonical definition to state claims against.
-/

/-! ## A162897.P17673858236118818034

`∑[char[2*n]]+C(gcd(4, n), n)`
-/

namespace A162897.P17673858236118818034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (Nat.gcd 4 n) n

end

end A162897.P17673858236118818034

/-! ## A162897.P16256927555632161445

`ceil(sqrt((floor(n/2)+ϕ)²-n))`
-/

namespace A162897.P16256927555632161445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (((⌊(n : ℚ) / 2⌋ : ℝ) + Real.goldenRatio) ^ 2 - (n : ℝ))⌉

end

end A162897.P16256927555632161445

/-! ## A162897.P14273453388564784636

`a(n-2)+1` with `a(0)=2, a(1)=2, a(2)=3, a(3)=2, a(4)=4, a(5)=3, a(6)=4`
-/

namespace A162897.P14273453388564784636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 3, 2, 4, 3, 4] fun n a =>
  a (n - 2) + 1

end

end A162897.P14273453388564784636

/-! ## A162897.P13879628628765742129

`n-floor(a(n-1)-6/n)` with `a(0)=2, a(1)=2`
-/

namespace A162897.P13879628628765742129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  (n : ℤ) - ⌊(a (n - 1) : ℚ) - 6 / (n : ℚ)⌋

end

end A162897.P13879628628765742129

/-! ## A162897.P9166297906913671983

`n-a(n-3)` with `a(0)=2, a(1)=2, a(2)=3, a(3)=2, a(4)=4, a(5)=3, a(6)=4, a(7)=4`
-/

namespace A162897.P9166297906913671983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3, 2, 4, 3, 4, 4] fun n a =>
  (n : ℤ) - a (n - 3)

end

end A162897.P9166297906913671983

/-! ## A162897.P7606871028059849701

`char[A346709(n)]+ceil((n+1)/2)`
-/

namespace A162897.P7606871028059849701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346709 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌈(n + 1 : ℚ) / 2⌉

end

end A162897.P7606871028059849701

/-! ## A162897.P17966804393501948654

`A003977(A162753(n))`
-/

namespace A162897.P17966804393501948654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003977 (A162753 n).toNat

end

end A162897.P17966804393501948654

/-! ## A162897.P2244128023930022256

`A008619(n)+char[A006464(n)-n]`
-/

namespace A162897.P2244128023930022256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A162897.P2244128023930022256

/-! ## A162897.P8823650616580842911

`floor(A014963(∑[A000010(n+3)])+n/2)`
-/

namespace A162897.P8823650616580842911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) + (n : ℚ) / 2⌋

end

end A162897.P8823650616580842911

/-! ## A162897.P9937376693916337771

`A004526(n)+A014963(∑[A000010(n+3)])`
-/

namespace A162897.P9937376693916337771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + A014963 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162897.P9937376693916337771

/-!
# A162898: a(n) = A162897(n)^A162897(n+1).

The programs for A162898, there is no canonical definition to state claims against.
-/

/-! ## A162898.P11806497614480613279

`A162897(n+1)^A162897(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162898.P11806497614480613279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162897 (n + 1) : ℚ) ^ (A162897 (n + 2) : ℤ)

end

end A162898.P11806497614480613279

/-! ## A162898.P8354287868896058972

`A036234(A162753(n))^A162897(n+2)`
-/

namespace A162898.P8354287868896058972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036234 (A162753 n).toNat : ℚ) ^ (A162897 (n + 2) : ℤ)

end

end A162898.P8354287868896058972

/-! ## A162898.P5221181354074298529

`record[A334858(A070939(n))]`
-/

namespace A162898.P5221181354074298529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334858 (A070939 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162898.P5221181354074298529

/-! ## A162898.P14445770487486726313

`record[A334858(A077168(n))]`
-/

namespace A162898.P14445770487486726313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334858 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162898.P14445770487486726313

/-!
# A162899: Partial sums of [A052938(n)^2].

The programs for A162899, the canonical program `A162899.P10795304540627870484` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162899 has offset 0).

The definition of A162899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162899.P10795304540627870484

`(60-36*(-1)^n+(109-9*(-1)^n)*n+24*n²+2*n^3)/24`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A162899

/-- `(60-36*(-1)^n+(109-9*(-1)^n)*n+24*n²+2*n^3)/24` -/
def P10795304540627870484.Spec : Prop :=
  ∀ n, P10795304540627870484.a n = (A162899 n : ℚ)

end A162899

/-! ## A162899.P14249494546594315265

`∑[ceil(xor(1, n+3)/2)²]`
-/

namespace A162899.P14249494546594315265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (n + 3) : ℚ) / 2⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162899.P14249494546594315265

namespace A162899

/-- `∑[ceil(xor(1, n+3)/2)²]` -/
def P14249494546594315265.Spec : Prop :=
  ∀ n, P14249494546594315265.a n = A162899 n

end A162899

/-! ## A162899.P1819145461569449060

`∑[round(xor(1, n+3)/2)²]`
-/

namespace A162899.P1819145461569449060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (n + 3) : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162899.P1819145461569449060

namespace A162899

/-- `∑[round(xor(1, n+3)/2)²]` -/
def P1819145461569449060.Spec : Prop :=
  ∀ n, P1819145461569449060.a n = A162899 n

end A162899

/-! ## A162899.P7307735739221896390

`∑[Δ[lcm(2, n+3)/2]²]`
-/

namespace A162899.P7307735739221896390
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 3) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162899.P7307735739221896390

namespace A162899

/-- `∑[Δ[lcm(2, n+3)/2]²]` -/
def P7307735739221896390.Spec : Prop :=
  ∀ n, P7307735739221896390.a n = (A162899 n : ℚ)

end A162899

/-! ## A162899.P2477938765719139260

`∑[∑[1-a(n-1)]²]` with `a(0)=1, a(1)=2`
-/

namespace A162899.P2477938765719139260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162899.P2477938765719139260

namespace A162899

/-- `∑[∑[1-a(n-1)]²]` -/
def P2477938765719139260.Spec : Prop :=
  ∀ n, P2477938765719139260.a n = A162899 n

end A162899

/-! ## A162899.P6621595965949444136

`∑[∑[∑[ogf((1+2x-2x^2)/(1+x))]]²]`
-/

namespace A162899.P6621595965949444136
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162899.P6621595965949444136

namespace A162899

/-- `∑[∑[∑[ogf((1+2x-2x^2)/(1+x))]]²]` -/
def P6621595965949444136.Spec : Prop :=
  ∀ n, P6621595965949444136.a n = A162899 n

end A162899

/-! ## A162899.P1326348159998750017

`∑[Δ[(n+3)/gcd(2, n+1)]²]`
-/

namespace A162899.P1326348159998750017
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162899.P1326348159998750017

namespace A162899

/-- `∑[Δ[(n+3)/gcd(2, n+1)]²]` -/
def P1326348159998750017.Spec : Prop :=
  ∀ n, P1326348159998750017.a n = (A162899 n : ℚ)

end A162899

/-! ## A162899.P9705745699815648397

`∑[(2*n-∑[gcd(n-1, 2*n)²])²]`
-/

namespace A162899.P9705745699815648397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162899.P9705745699815648397

namespace A162899

/-- `∑[(2*n-∑[gcd(n-1, 2*n)²])²]` -/
def P9705745699815648397.Spec : Prop :=
  ∀ n, P9705745699815648397.a n = A162899 n

end A162899

/-! ## A162899.P11591677808261010632

`∑[A052938(n)²]`
-/

namespace A162899.P11591677808261010632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162899.P11591677808261010632

namespace A162899

/-- `∑[A052938(n)²]` -/
def P11591677808261010632.Spec : Prop :=
  ∀ n, P11591677808261010632.a n = A162899 n

end A162899

/-! ## A162899.P3380461346264040459

`∑[(A030451(n)+1)²]`
-/

namespace A162899.P3380461346264040459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030451 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162899.P3380461346264040459

namespace A162899

/-- `∑[(A030451(n)+1)²]` -/
def P3380461346264040459.Spec : Prop :=
  ∀ n, P3380461346264040459.a n = A162899 n

end A162899

/-! ## A162899.P1954371016419272113

`∑[(1-A060762(n+1))²]`
-/

namespace A162899.P1954371016419272113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A060762 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162899.P1954371016419272113

namespace A162899

/-- `∑[(1-A060762(n+1))²]` -/
def P1954371016419272113.Spec : Prop :=
  ∀ n, P1954371016419272113.a n = A162899 n

end A162899

/-! ## A162899.P1714458825988468249

`∑[(A168233(n+1)-n)²]`
-/

namespace A162899.P1714458825988468249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168233 (n + 1) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162899.P1714458825988468249

namespace A162899

/-- `∑[(A168233(n+1)-n)²]` -/
def P1714458825988468249.Spec : Prop :=
  ∀ n, P1714458825988468249.a n = A162899 n

end A162899

/-! ## A162899.P12291121518494511437

`∑[(n+1-A168199(n+1))²]`
-/

namespace A162899.P12291121518494511437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A168199 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162899.P12291121518494511437

namespace A162899

/-- `∑[(n+1-A168199(n+1))²]` -/
def P12291121518494511437.Spec : Prop :=
  ∀ n, P12291121518494511437.a n = A162899 n

end A162899

/-! ## A162899.P13028503392913380827

`A030533(n+3)-5`
-/

namespace A162899.P13028503392913380827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030533 (n + 3) - 5

end

end A162899.P13028503392913380827

namespace A162899

/-- `A030533(n+3)-5` -/
def P13028503392913380827.Spec : Prop :=
  ∀ n, P13028503392913380827.a n = A162899 n

end A162899

/-! ## A162899.P3233112979865930570

`∑[A028242(n+3)²]`
-/

namespace A162899.P3233112979865930570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162899.P3233112979865930570

namespace A162899

/-- `∑[A028242(n+3)²]` -/
def P3233112979865930570.Spec : Prop :=
  ∀ n, P3233112979865930570.a n = A162899 n

end A162899

/-! ## A162899.P17884500020156438536

`∑[A007892(2*n+1)]`
-/

namespace A162899.P17884500020156438536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007892 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162899.P17884500020156438536

namespace A162899

/-- `∑[A007892(2*n+1)]` -/
def P17884500020156438536.Spec : Prop :=
  ∀ n, P17884500020156438536.a n = A162899 n

end A162899

