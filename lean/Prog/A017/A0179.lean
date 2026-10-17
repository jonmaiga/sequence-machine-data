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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A017900: Expansion of 1/(1 - x^6 - x^7 - x^8 - ...).

The programs for A017900, the canonical program `A017900.P7111475736307663453` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017900 has offset 0).

The definition of A017900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017900.P7111475736307663453

`a(n-6)+a(n-1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017900

/-- `a(n-6)+a(n-1)` -/
def P7111475736307663453.Spec : Prop :=
  ∀ n, (P7111475736307663453.a n : ℤ) = A017900 n

theorem P7111475736307663453.correct : P7111475736307663453.Spec := by
  intro n
  simp only [A017900]

end A017900

/-! ## A017900.P1442850736699533350

`Δ[A017841(n+5)-A017841(n)]`
-/

namespace A017900.P1442850736699533350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017841 (n + 5) - A017841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017900.P1442850736699533350

namespace A017900

/-- `Δ[A017841(n+5)-A017841(n)]` -/
def P1442850736699533350.Spec : Prop :=
  ∀ n, P1442850736699533350.a n = A017900 n

end A017900

/-! ## A017900.P7288002708565474172

`A005708(n)-Δ[A005708(n+4)]`
-/

namespace A017900.P7288002708565474172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 n - (f1 (n + 1) - f1 n)

end

end A017900.P7288002708565474172

namespace A017900

/-- `A005708(n)-Δ[A005708(n+4)]` -/
def P7288002708565474172.Spec : Prop :=
  ∀ n, P7288002708565474172.a n = A017900 n

end A017900

/-! ## A017900.P10653885973225420102

`Δ[A193941(n)-Δ[A193941(n+2)]]`
-/

namespace A017900.P10653885973225420102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193941 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193941 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017900.P10653885973225420102

namespace A017900

/-- `Δ[A193941(n)-Δ[A193941(n+2)]]` -/
def P10653885973225420102.Spec : Prop :=
  ∀ n, P10653885973225420102.a n = A017900 n

end A017900

/-! ## A017900.P13679013942755516575

`A005708(n+4)+A005708(n)-A005708(n+5)`
-/

namespace A017900.P13679013942755516575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (n + 4) + (A005708 n - A005708 (n + 5))

end

end A017900.P13679013942755516575

namespace A017900

/-- `A005708(n+4)+A005708(n)-A005708(n+5)` -/
def P13679013942755516575.Spec : Prop :=
  ∀ n, P13679013942755516575.a n = A017900 n

end A017900

/-! ## A017900.P5876371989752557104

`Δ[Δ[A005708(n+4)]]`
-/

namespace A017900.P5876371989752557104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017900.P5876371989752557104

namespace A017900

/-- `Δ[Δ[A005708(n+4)]]` -/
def P5876371989752557104.Spec : Prop :=
  ∀ n, P5876371989752557104.a n = A017900 n

end A017900

/-! ## A017900.P10734440038585970792

`Δ[Δ[Δ[A335184(n+4)]]]`
-/

namespace A017900.P10734440038585970792
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335184 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017900.P10734440038585970792

namespace A017900

/-- `Δ[Δ[Δ[A335184(n+4)]]]` -/
def P10734440038585970792.Spec : Prop :=
  ∀ n, P10734440038585970792.a n = A017900 n

end A017900

/-!
# A017901: Expansion of 1/(1 - x^7 - x^8 - ...).

The programs for A017901, the canonical program `A017901.P9908741470765038447` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017901 has offset 0).

The definition of A017901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1016 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017901.P9908741470765038447

`Δ[A005709(abs(1-n))-A000007(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A017901

/-- `Δ[A005709(abs(1-n))-A000007(n)]` -/
def P9908741470765038447.Spec : Prop :=
  ∀ n, P9908741470765038447.a n = A017901 n

theorem P9908741470765038447.correct : P9908741470765038447.Spec := by
  intro n
  simp only [A017901]

end A017901

/-! ## A017901.P10320219527566987392

`Δ[A005709(abs(1-n))*A057427(n)]`
-/

namespace A017901.P10320219527566987392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 |1 - (n : ℤ)|.toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017901.P10320219527566987392

namespace A017901

/-- `Δ[A005709(abs(1-n))*A057427(n)]` -/
def P10320219527566987392.Spec : Prop :=
  ∀ n, P10320219527566987392.a n = A017901 n

end A017901

/-! ## A017901.P12628405242775181847

`A005709(n+1)+A098527(n)-A376695(n+1)`
-/

namespace A017901.P12628405242775181847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (n + 1) + (A098527 n - A376695 (n + 1))

end

end A017901.P12628405242775181847

namespace A017901

/-- `A005709(n+1)+A098527(n)-A376695(n+1)` -/
def P12628405242775181847.Spec : Prop :=
  ∀ n, P12628405242775181847.a n = A017901 n

end A017901

/-! ## A017901.P4144958771219320966

`A005709(n)-Δ[A005709(n+5)]`
-/

namespace A017901.P4144958771219320966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 n - (f1 (n + 1) - f1 n)

end

end A017901.P4144958771219320966

namespace A017901

/-- `A005709(n)-Δ[A005709(n+5)]` -/
def P4144958771219320966.Spec : Prop :=
  ∀ n, P4144958771219320966.a n = A017901 n

end A017901

/-! ## A017901.P8835272691231593557

`A005709(n+5)+A005709(n)-A005709(n+6)`
-/

namespace A017901.P8835272691231593557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (n + 5) + (A005709 n - A005709 (n + 6))

end

end A017901.P8835272691231593557

namespace A017901

/-- `A005709(n+5)+A005709(n)-A005709(n+6)` -/
def P8835272691231593557.Spec : Prop :=
  ∀ n, P8835272691231593557.a n = A017901 n

end A017901

/-! ## A017901.P18059204620392504027

`Δ[Δ[A005709(n+5)]]`
-/

namespace A017901.P18059204620392504027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017901.P18059204620392504027

namespace A017901

/-- `Δ[Δ[A005709(n+5)]]` -/
def P18059204620392504027.Spec : Prop :=
  ∀ n, P18059204620392504027.a n = A017901 n

end A017901

/-! ## A017901.P1290437019055526496

`Δ[A005709(A004273(n)-n)%A131326(n)]`
-/

namespace A017901.P1290437019055526496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005709 (A004273 n - (n : ℤ)).toNat) (A131326 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017901.P1290437019055526496

namespace A017901

/-- `Δ[A005709(A004273(n)-n)%A131326(n)]` -/
def P1290437019055526496.Spec : Prop :=
  ∀ n, P1290437019055526496.a n = A017901 n

end A017901

/-!
# A017902: Expansion of 1/(1 - x^8 - x^9 - ...).

The programs for A017902, the canonical program `A017902.P3884309252853255410` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017902 has offset 0).

The definition of A017902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017902.P3884309252853255410

`a(n-8)+a(n-1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017902

/-- `a(n-8)+a(n-1)` -/
def P3884309252853255410.Spec : Prop :=
  ∀ n, (P3884309252853255410.a n : ℤ) = A017902 n

theorem P3884309252853255410.correct : P3884309252853255410.Spec := by
  intro n
  simp only [A017902]

end A017902

/-! ## A017902.P1429346374313807388

`Δ[A005710(n-a(2%n))]` with `a(0)=0`
-/

namespace A017902.P1429346374313807388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A005710 ((n : ℤ) - f1 (2 % n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017902.P1429346374313807388

namespace A017902

/-- `Δ[A005710(n-a(2%n))]` -/
def P1429346374313807388.Spec : Prop :=
  ∀ n, P1429346374313807388.a n = A017902 n

end A017902

/-! ## A017902.P4576295915940577444

`Δ[A017863(n+7)-A017863(n)]`
-/

namespace A017902.P4576295915940577444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017863 (n + 7) - A017863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017902.P4576295915940577444

namespace A017902

/-- `Δ[A017863(n+7)-A017863(n)]` -/
def P4576295915940577444.Spec : Prop :=
  ∀ n, P4576295915940577444.a n = A017902 n

end A017902

/-! ## A017902.P1823633262339310348

`A005710(n)-Δ[A005710(n+6)]`
-/

namespace A017902.P1823633262339310348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 n - (f1 (n + 1) - f1 n)

end

end A017902.P1823633262339310348

namespace A017902

/-- `A005710(n)-Δ[A005710(n+6)]` -/
def P1823633262339310348.Spec : Prop :=
  ∀ n, P1823633262339310348.a n = A017902 n

end A017902

/-! ## A017902.P216822830285744792

`Δ[Δ[A005710(n+6)]]`
-/

namespace A017902.P216822830285744792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017902.P216822830285744792

namespace A017902

/-- `Δ[Δ[A005710(n+6)]]` -/
def P216822830285744792.Spec : Prop :=
  ∀ n, P216822830285744792.a n = A017902 n

end A017902

/-! ## A017902.P9136912798924272757

`Δ[A367800(n)%A333032(n+1)]`
-/

namespace A017902.P9136912798924272757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367800 n) (A333032 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017902.P9136912798924272757

namespace A017902

/-- `Δ[A367800(n)%A333032(n+1)]` -/
def P9136912798924272757.Spec : Prop :=
  ∀ n, P9136912798924272757.a n = A017902 n

end A017902

/-! ## A017902.P17226150055440266082

`Δ[A017863(n+7)+A001478(A017863(n)+1)]`
-/

namespace A017902.P17226150055440266082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017863 (n + 7) + A001478 (A017863 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017902.P17226150055440266082

namespace A017902

/-- `Δ[A017863(n+7)+A001478(A017863(n)+1)]` -/
def P17226150055440266082.Spec : Prop :=
  ∀ n, P17226150055440266082.a n = A017902 n

end A017902

/-!
# A017903: Expansion of 1/(1 - x^9 - x^10 - ...).

The programs for A017903, the canonical program `A017903.P2631064997662785789` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017903 has offset 0).

The definition of A017903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017903.P2631064997662785789

`a(n-1)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=0`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017903

/-- `a(n-1)+a(n-9)` -/
def P2631064997662785789.Spec : Prop :=
  ∀ n, (P2631064997662785789.a n : ℤ) = A017903 n

theorem P2631064997662785789.correct : P2631064997662785789.Spec := by
  intro n
  simp only [A017903]

end A017903

/-! ## A017903.P16140004794534446249

`Δ[A017874(n+8)-A017874(n)]`
-/

namespace A017903.P16140004794534446249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017874 (n + 8) - A017874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017903.P16140004794534446249

namespace A017903

/-- `Δ[A017874(n+8)-A017874(n)]` -/
def P16140004794534446249.Spec : Prop :=
  ∀ n, P16140004794534446249.a n = A017903 n

end A017903

/-! ## A017903.P16771910676995895968

`Δ[Δ[A005711(n+6)]]`
-/

namespace A017903.P16771910676995895968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005711 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017903.P16771910676995895968

namespace A017903

/-- `Δ[Δ[A005711(n+6)]]` -/
def P16771910676995895968.Spec : Prop :=
  ∀ n, P16771910676995895968.a n = A017903 n

end A017903

/-! ## A017903.P6701955989554125402

`A017884(lt[A354666(2*(n+2)), A125714(n+1)])`
-/

namespace A017903.P6701955989554125402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354666 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017884 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017903.P6701955989554125402

namespace A017903

/-- `A017884(lt[A354666(2*(n+2)), A125714(n+1)])` -/
def P6701955989554125402.Spec : Prop :=
  ∀ n, P6701955989554125402.a n = A017903 n

end A017903

/-! ## A017903.P4089648741919798582

`A017884(lt[A354666(2*(n+2)), A114537(n+1)])`
-/

namespace A017903.P4089648741919798582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354666 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017884 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017903.P4089648741919798582

namespace A017903

/-- `A017884(lt[A354666(2*(n+2)), A114537(n+1)])` -/
def P4089648741919798582.Spec : Prop :=
  ∀ n, P4089648741919798582.a n = A017903 n

end A017903

/-!
# A017904: Expansion of 1/(1 - x^10 - x^11 - ...).

The programs for A017904, the canonical program `A017904.P18137744623008998386` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017904 has offset 0).

The definition of A017904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1293 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017904.P18137744623008998386

`a(n-10)+a(n-1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=0, a(9)=0`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017904

/-- `a(n-10)+a(n-1)` -/
def P18137744623008998386.Spec : Prop :=
  ∀ n, (P18137744623008998386.a n : ℤ) = A017904 n

theorem P18137744623008998386.correct : P18137744623008998386.Spec := by
  intro n
  simp only [A017904]

end A017904

/-! ## A017904.P12122064355101529304

`A017905(eq[A161060(n+1), A161061(n+1)])`
-/

namespace A017904.P12122064355101529304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017905 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A017904.P12122064355101529304

namespace A017904

/-- `A017905(eq[A161060(n+1), A161061(n+1)])` -/
def P12122064355101529304.Spec : Prop :=
  ∀ n, P12122064355101529304.a n = A017904 n

end A017904

/-! ## A017904.P2126220649580693725

`A017906(lt[A007947(n+1), A190295(n+2)])`
-/

namespace A017904.P2126220649580693725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190295 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017906 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017904.P2126220649580693725

namespace A017904

/-- `A017906(lt[A007947(n+1), A190295(n+2)])` -/
def P2126220649580693725.Spec : Prop :=
  ∀ n, P2126220649580693725.a n = A017904 n

end A017904

/-! ## A017904.P10383809849615760436

`A017895(lt[A216556(n), A133506(2*n+1)])`
-/

namespace A017904.P10383809849615760436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133506 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017895 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017904.P10383809849615760436

namespace A017904

/-- `A017895(lt[A216556(n), A133506(2*n+1)])` -/
def P10383809849615760436.Spec : Prop :=
  ∀ n, P10383809849615760436.a n = A017904 n

end A017904

/-! ## A017904.P4031660282327491611

`A017906(lt[A112983(2*n+1), A190295(n+2)])`
-/

namespace A017904.P4031660282327491611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112983 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190295 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017906 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017904.P4031660282327491611

namespace A017904

/-- `A017906(lt[A112983(2*n+1), A190295(n+2)])` -/
def P4031660282327491611.Spec : Prop :=
  ∀ n, P4031660282327491611.a n = A017904 n

end A017904

/-!
# A017905: Expansion of 1/(1 - x^11 - x^12 - ...).

The programs for A017905, there is no canonical definition to state claims against.
-/

/-! ## A017905.P15448056788599373092

`A017906(eq[A161061(n+1), A161062(n+1)])`
-/

namespace A017905.P15448056788599373092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017906 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A017905.P15448056788599373092

/-! ## A017905.P1639608754839358059

`A017906(lt[A112983(n+1), A190295(n+1)])`
-/

namespace A017905.P1639608754839358059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017906 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017905.P1639608754839358059

/-! ## A017905.P15440665361749583272

`A017906(lt[A296210(n+1), A132056(n+1)])`
-/

namespace A017905.P15440665361749583272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017906 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017905.P15440665361749583272

/-! ## A017905.P7572499947769862938

`A017907(lt[A002349(n+1), A346784(n+2)])`
-/

namespace A017905.P7572499947769862938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017907 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017905.P7572499947769862938

/-! ## A017905.P9003501616576879816

`A017906(lt[A127300(2*n), A207123(3*n+4)])`
-/

namespace A017905.P9003501616576879816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127300 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017906 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017905.P9003501616576879816

/-!
# A017906: Expansion of 1/(1 - x^12 - x^13 - ...).

The programs for A017906, there is no canonical definition to state claims against.
-/

/-! ## A017906.P2513125134439275453

`A017907(eq[A161037(n+1), A161038(n+1)])`
-/

namespace A017906.P2513125134439275453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017907 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A017906.P2513125134439275453

/-! ## A017906.P12943156586013668011

`A017907(eq[A161037(n+1), A161063(n+1)])`
-/

namespace A017906.P12943156586013668011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017907 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A017906.P12943156586013668011

/-! ## A017906.P15933814460297941163

`A017907(eq[A161062(n+1), A161063(n+1)])`
-/

namespace A017906.P15933814460297941163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017907 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A017906.P15933814460297941163

/-! ## A017906.P7900351171104102159

`A017907(lt[A069934(n+1), A270831(n+4)])`
-/

namespace A017906.P7900351171104102159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017907 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017906.P7900351171104102159

/-! ## A017906.P7439768262256534222

`A017909(lt[A143453(3*n+1), A243078(n+1)])`
-/

namespace A017906.P7439768262256534222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017909 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017906.P7439768262256534222

/-!
# A017907: Expansion of 1/(1 - x^13 - x^14 - ...).

The programs for A017907, there is no canonical definition to state claims against.
-/

/-! ## A017907.P8895263239714579259

`A017908(lt[A141539(2*n), A243078(n+1)])`
-/

namespace A017907.P8895263239714579259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017908 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017907.P8895263239714579259

/-! ## A017907.P12486863603069459479

`A017909(lt[A108611(2*n+1), A210636(2*n)])`
-/

namespace A017907.P12486863603069459479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210636 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017909 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017907.P12486863603069459479

/-! ## A017907.P5260348166921072011

`A017908(A172270(n))%A028765(n+1)`
-/

namespace A017907.P5260348166921072011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017908 (A172270 n).toNat) (A028765 (n + 1))

end

end A017907.P5260348166921072011

/-! ## A017907.P16352289124266120021

`A017908(A172270(n))%A112057(A079438(n))`
-/

namespace A017907.P16352289124266120021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017908 (A172270 n).toNat) (A112057 (A079438 n).toNat)

end

end A017907.P16352289124266120021

/-! ## A017907.P10367999580206577149

`A017908(lt[A099238(2*(n+1)), A238104(n+4)])`
-/

namespace A017907.P10367999580206577149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099238 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238104 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017908 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017907.P10367999580206577149

/-!
# A017908: Expansion of 1/(1 - x^14 - x^15 - ...).

The programs for A017908, there is no canonical definition to state claims against.
-/

/-! ## A017908.P8542198545755786621

`A017909(lt[A319058(2*n+1), A121722(n)])`
-/

namespace A017908.P8542198545755786621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319058 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017909 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017908.P8542198545755786621

/-! ## A017908.P6728411813635838398

`A017909(lt[A143453(n), A243078(n+1)])`
-/

namespace A017908.P6728411813635838398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017909 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017908.P6728411813635838398

/-! ## A017908.P16054834777571221219

`A017909(lt[A141539(2*n), A243078(n+1)])`
-/

namespace A017908.P16054834777571221219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017909 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017908.P16054834777571221219

/-! ## A017908.P8795887161970201555

`A017909(lt[A063428(n+2), A346911(n+5)])`
-/

namespace A017908.P8795887161970201555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063428 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346911 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017909 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017908.P8795887161970201555

/-! ## A017908.P4758019261185158859

`A017909(lt[A133910(2*(n+1)), A243078(n+1)])`
-/

namespace A017908.P4758019261185158859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133910 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017909 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017908.P4758019261185158859

/-!
# A017909: Expansion of 1/(1 - x^15 - x^16 - ...).

The programs for A017909, there is no canonical definition to state claims against.
-/

/-! ## A017909.P5698749506988989235

`A017907(A145569(n)%A141214(n))`
-/

namespace A017909.P5698749506988989235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017907 (Int.tmod (A145569 n) (A141214 n)).toNat

end

end A017909.P5698749506988989235

/-! ## A017909.P2752918133329268093

`A017907(A145569(n))%A281335(n+2)`
-/

namespace A017909.P2752918133329268093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017907 (A145569 n).toNat) (A281335 (n + 2))

end

end A017909.P2752918133329268093

/-! ## A017909.P8860224059109091939

`A017907(A145569(n))*A053423(A135784(n+1))`
-/

namespace A017909.P8860224059109091939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017907 (A145569 n).toNat * A053423 (A135784 (n + 1)).toNat

end

end A017909.P8860224059109091939

/-! ## A017909.P10249842069502708526

`A017907(A145569(n))^A014963(A277909(n+1))`
-/

namespace A017909.P10249842069502708526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017907 (A145569 n).toNat : ℚ) ^ (A014963 (A277909 (n + 1)).toNat : ℤ)

end

end A017909.P10249842069502708526

/-! ## A017909.P16739397534105085271

`floor(n/15)^n²`
-/

namespace A017909.P16739397534105085271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 15⌋ ^ n ^ 2

end

end A017909.P16739397534105085271

/-!
# A017910: Powers of sqrt(2) rounded down.

The programs for A017910, the canonical program `A017910.P15542471758442603211` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017910 has offset 0).

The definition of A017910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017910.P15542471758442603211

`floor(sqrt(2^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017910

/-- `floor(sqrt(2^n))` -/
def P15542471758442603211.Spec : Prop :=
  ∀ n, (P15542471758442603211.a n : ℤ) = A017910 n

theorem P15542471758442603211.correct : P15542471758442603211.Spec := by
  intro n
  simp only [A017910]

end A017910

/-! ## A017910.P17484799934671635222

`A000196(A000079(n))`
-/

namespace A017910.P17484799934671635222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000079 n).toNat

end

end A017910.P17484799934671635222

namespace A017910

/-- `A000196(A000079(n))` -/
def P17484799934671635222.Spec : Prop :=
  ∀ n, P17484799934671635222.a n = A017910 n

end A017910

/-! ## A017910.P2378086415125283918

`A136417(n)-1`
-/

namespace A017910.P2378086415125283918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136417 n - 1

end

end A017910.P2378086415125283918

namespace A017910

/-- `A136417(n)-1` -/
def P2378086415125283918.Spec : Prop :=
  ∀ n, P2378086415125283918.a n = A017910 n

end A017910

/-! ## A017910.P8827439616220574302

`A018048(2*n)`
-/

namespace A017910.P8827439616220574302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018048 (2 * n)

end

end A017910.P8827439616220574302

namespace A017910

/-- `A018048(2*n)` -/
def P8827439616220574302.Spec : Prop :=
  ∀ n, P8827439616220574302.a n = A017910 n

end A017910

/-! ## A017910.P5386288951749188629

`A017912(n)-and(1, n)`
-/

namespace A017910.P5386288951749188629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 n - (Nat.land 1 n : ℤ)

end

end A017910.P5386288951749188629

namespace A017910

/-- `A017912(n)-and(1, n)` -/
def P5386288951749188629.Spec : Prop :=
  ∀ n, P5386288951749188629.a n = A017910 n

end A017910

/-! ## A017910.P5709989923561987437

`A018050(2*n)-and(1, n)`
-/

namespace A017910.P5709989923561987437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018050 (2 * n) - (Nat.land 1 n : ℤ)

end

end A017910.P5709989923561987437

namespace A017910

/-- `A018050(2*n)-and(1, n)` -/
def P5709989923561987437.Spec : Prop :=
  ∀ n, P5709989923561987437.a n = A017910 n

end A017910

/-! ## A017910.P7787567551039924824

`A017912(n)-A000035(n)`
-/

namespace A017910.P7787567551039924824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 n - A000035 n

end

end A017910.P7787567551039924824

namespace A017910

/-- `A017912(n)-A000035(n)` -/
def P7787567551039924824.Spec : Prop :=
  ∀ n, P7787567551039924824.a n = A017910 n

end A017910

/-! ## A017910.P6212931066866610020

`A188917(n)-A110654(n)`
-/

namespace A017910.P6212931066866610020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188917 n - A110654 n

end

end A017910.P6212931066866610020

namespace A017910

/-- `A188917(n)-A110654(n)` -/
def P6212931066866610020.Spec : Prop :=
  ∀ n, P6212931066866610020.a n = A017910 n

end A017910

/-! ## A017910.P5597795190543816931

`A017912(n)-A059841(n+1)`
-/

namespace A017910.P5597795190543816931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 n - A059841 (n + 1)

end

end A017910.P5597795190543816931

namespace A017910

/-- `A017912(n)-A059841(n+1)` -/
def P5597795190543816931.Spec : Prop :=
  ∀ n, P5597795190543816931.a n = A017910 n

end A017910

/-! ## A017910.P14645528601514707178

`A188917(n)-A004526(n+1)`
-/

namespace A017910.P14645528601514707178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188917 n - A004526 (n + 1)

end

end A017910.P14645528601514707178

namespace A017910

/-- `A188917(n)-A004526(n+1)` -/
def P14645528601514707178.Spec : Prop :=
  ∀ n, P14645528601514707178.a n = A017910 n

end A017910

/-! ## A017910.P3924770671118296626

`A004526(n)-(n-A188917(n))`
-/

namespace A017910.P3924770671118296626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - ((n : ℤ) - A188917 n)

end

end A017910.P3924770671118296626

namespace A017910

/-- `A004526(n)-(n-A188917(n))` -/
def P3924770671118296626.Spec : Prop :=
  ∀ n, P3924770671118296626.a n = A017910 n

end A017910

/-! ## A017910.P5173632301083763280

`A017912(n)-A056594(n+1)²`
-/

namespace A017910.P5173632301083763280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 n - A056594 (n + 1) ^ 2

end

end A017910.P5173632301083763280

namespace A017910

/-- `A017912(n)-A056594(n+1)²` -/
def P5173632301083763280.Spec : Prop :=
  ∀ n, P5173632301083763280.a n = A017910 n

end A017910

/-! ## A017910.P201921152519441556

`A017912(n)-(A059841(n)-1)²`
-/

namespace A017910.P201921152519441556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 n - (A059841 n - 1) ^ 2

end

end A017910.P201921152519441556

namespace A017910

/-- `A017912(n)-(A059841(n)-1)²` -/
def P201921152519441556.Spec : Prop :=
  ∀ n, P201921152519441556.a n = A017910 n

end A017910

/-! ## A017910.P15993144926653642096

`A018050(2*n)-A166486(2*n)`
-/

namespace A017910.P15993144926653642096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018050 (2 * n) - A166486 (2 * n)

end

end A017910.P15993144926653642096

namespace A017910

/-- `A018050(2*n)-A166486(2*n)` -/
def P15993144926653642096.Spec : Prop :=
  ∀ n, P15993144926653642096.a n = A017910 n

end A017910

/-! ## A017910.P2861754795092591533

`A017912(n+1)+A188917(n)-A188917(n+1)`
-/

namespace A017910.P2861754795092591533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 (n + 1) + (A188917 n - A188917 (n + 1))

end

end A017910.P2861754795092591533

namespace A017910

/-- `A017912(n+1)+A188917(n)-A188917(n+1)` -/
def P2861754795092591533.Spec : Prop :=
  ∀ n, P2861754795092591533.a n = A017910 n

end A017910

/-! ## A017910.P2714637531162574836

`A001521(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A017910.P2714637531162574836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001521 (n + 1) - a (n - 1)

end

end A017910.P2714637531162574836

namespace A017910

/-- `A001521(n+1)-a(n-1)` -/
def P2714637531162574836.Spec : Prop :=
  ∀ n, P2714637531162574836.a n = A017910 n

end A017910

/-! ## A017910.P2884608207631127843

`ceil(sqrt(∑{d}[n+1, #%2]+2^n))-1`
-/

namespace A017910.P2884608207631127843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ d ∈ Nat.divisors (f1 n), d % 2 + 2 ^ n : ℕ) : ℝ)⌉ - 1

end

end A017910.P2884608207631127843

namespace A017910

/-- `ceil(sqrt(∑{d}[n+1, #%2]+2^n))-1` -/
def P2884608207631127843.Spec : Prop :=
  ∀ n, P2884608207631127843.a n = A017910 n

end A017910

/-! ## A017910.P6095066285010776070

`ceil(sqrt(2^n+2*n+2-∑{d}[n+1, #]))-1`
-/

namespace A017910.P6095066285010776070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((2 ^ n : ℤ) + ((2 * n : ℤ) + (2 - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))) : ℝ)⌉ - 1

end

end A017910.P6095066285010776070

namespace A017910

/-- `ceil(sqrt(2^n+2*n+2-∑{d}[n+1, #]))-1` -/
def P6095066285010776070.Spec : Prop :=
  ∀ n, P6095066285010776070.a n = A017910 n

end A017910

/-! ## A017910.P5877369589744727868

`ceil(sqrt(A000051(n)))-1`
-/

namespace A017910.P5877369589744727868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000051 n : ℝ)⌉ - 1

end

end A017910.P5877369589744727868

namespace A017910

/-- `ceil(sqrt(A000051(n)))-1` -/
def P5877369589744727868.Spec : Prop :=
  ∀ n, P5877369589744727868.a n = A017910 n

end A017910

/-!
# A017911: Powers of sqrt(2) rounded to nearest integer.

The programs for A017911, the canonical program `A017911.P11746449396979657446` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017911 has offset 0).

The definition of A017911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017911.P10173313501877623591

`round(2^(n/2))`
-/

namespace A017911.P10173313501877623591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℝ) ^ ((n : ℚ) / 2 : ℝ))

end

end A017911.P10173313501877623591

namespace A017911

/-- `round(2^(n/2))` -/
def P10173313501877623591.Spec : Prop :=
  ∀ n, P10173313501877623591.a n = A017911 n

end A017911

/-! ## A017911.P11746449396979657446

`A057048((n-1)%(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A017911

/-- `A057048((n-1)%(n+1))` -/
def P11746449396979657446.Spec : Prop :=
  ∀ n, P11746449396979657446.a n = A017911 n

theorem P11746449396979657446.correct : P11746449396979657446.Spec := by
  intro n
  simp only [A017911]

end A017911

/-! ## A017911.P13516012702581576403

`A057048(A289207(n+1))`
-/

namespace A017911.P13516012702581576403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057048 (A289207 (n + 1)).toNat

end

end A017911.P13516012702581576403

namespace A017911

/-- `A057048(A289207(n+1))` -/
def P13516012702581576403.Spec : Prop :=
  ∀ n, P13516012702581576403.a n = A017911 n

end A017911

/-! ## A017911.P17472548062246429598

`A057048(A289207(2*n)/2)`
-/

namespace A017911.P17472548062246429598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057048 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

end

end A017911.P17472548062246429598

namespace A017911

/-- `A057048(A289207(2*n)/2)` -/
def P17472548062246429598.Spec : Prop :=
  ∀ n, P17472548062246429598.a n = A017911 n

end A017911

/-! ## A017911.P15941771031989011540

`A017910(n+2)-A017910(n)`
-/

namespace A017911.P15941771031989011540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (n + 2) - A017910 n

end

end A017911.P15941771031989011540

namespace A017911

/-- `A017910(n+2)-A017910(n)` -/
def P15941771031989011540.Spec : Prop :=
  ∀ n, P15941771031989011540.a n = A017911 n

end A017911

/-! ## A017911.P5017697187514720587

`A017912(n+2)-A017912(n)`
-/

namespace A017911.P5017697187514720587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 (n + 2) - A017912 n

end

end A017911.P5017697187514720587

namespace A017911

/-- `A017912(n+2)-A017912(n)` -/
def P5017697187514720587.Spec : Prop :=
  ∀ n, P5017697187514720587.a n = A017911 n

end A017911

/-! ## A017911.P14570946494831412601

`A136417(n+2)-A136417(n)`
-/

namespace A017911.P14570946494831412601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136417 (n + 2) - A136417 n

end

end A017911.P14570946494831412601

namespace A017911

/-- `A136417(n+2)-A136417(n)` -/
def P14570946494831412601.Spec : Prop :=
  ∀ n, P14570946494831412601.a n = A017911 n

end A017911

/-! ## A017911.P10309798205546546161

`Δ[A001521(n+2)]`
-/

namespace A017911.P10309798205546546161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001521 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017911.P10309798205546546161

namespace A017911

/-- `Δ[A001521(n+2)]` -/
def P10309798205546546161.Spec : Prop :=
  ∀ n, P10309798205546546161.a n = A017911 n

end A017911

/-! ## A017911.P3553448994222460302

`Δ[A017910(n+1)+A017910(n)]`
-/

namespace A017911.P3553448994222460302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (n + 1) + A017910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017911.P3553448994222460302

namespace A017911

/-- `Δ[A017910(n+1)+A017910(n)]` -/
def P3553448994222460302.Spec : Prop :=
  ∀ n, P3553448994222460302.a n = A017911 n

end A017911

/-! ## A017911.P17044928923728691608

`Δ[A017912(n+1)+A017912(n)]`
-/

namespace A017911.P17044928923728691608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 (n + 1) + A017912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017911.P17044928923728691608

namespace A017911

/-- `Δ[A017912(n+1)+A017912(n)]` -/
def P17044928923728691608.Spec : Prop :=
  ∀ n, P17044928923728691608.a n = A017911 n

end A017911

/-! ## A017911.P3686132536591067133

`Δ[A136417(n+1)+A136417(n)]`
-/

namespace A017911.P3686132536591067133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136417 (n + 1) + A136417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017911.P3686132536591067133

namespace A017911

/-- `Δ[A136417(n+1)+A136417(n)]` -/
def P3686132536591067133.Spec : Prop :=
  ∀ n, P3686132536591067133.a n = A017911 n

end A017911

/-! ## A017911.P10175903110161223156

`A001521(n+3)-A001521(n+2)`
-/

namespace A017911.P10175903110161223156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001521 (n + 3) - A001521 (n + 2)

end

end A017911.P10175903110161223156

namespace A017911

/-- `A001521(n+3)-A001521(n+2)` -/
def P10175903110161223156.Spec : Prop :=
  ∀ n, P10175903110161223156.a n = A017911 n

end A017911

/-! ## A017911.P6865425133762753887

`A018049(2*n)`
-/

namespace A017911.P6865425133762753887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018049 (2 * n)

end

end A017911.P6865425133762753887

namespace A017911

/-- `A018049(2*n)` -/
def P6865425133762753887.Spec : Prop :=
  ∀ n, P6865425133762753887.a n = A017911 n

end A017911

/-! ## A017911.P15969426099894886763

`abs(1-round(sqrt(A000079(n))))+1`
-/

namespace A017911.P15969426099894886763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - SequenceMachineLib.roundAway (Real.sqrt (A000079 n : ℝ))| + 1

end

end A017911.P15969426099894886763

namespace A017911

/-- `abs(1-round(sqrt(A000079(n))))+1` -/
def P15969426099894886763.Spec : Prop :=
  ∀ n, P15969426099894886763.a n = A017911 n

end A017911

/-! ## A017911.P13325346322160284432

`abs(round(sqrt(A255047(n))-n))+n`
-/

namespace A017911.P13325346322160284432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (Real.sqrt (A255047 n : ℝ) - (n : ℝ))| + (n : ℤ)

end

end A017911.P13325346322160284432

namespace A017911

/-- `abs(round(sqrt(A255047(n))-n))+n` -/
def P13325346322160284432.Spec : Prop :=
  ∀ n, P13325346322160284432.a n = A017911 n

end A017911

/-! ## A017911.P16290389196902199865

`abs(round(sqrt(A000225(n)+1))-n)+n`
-/

namespace A017911.P16290389196902199865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (Real.sqrt (A000225 n + 1 : ℝ)) - (n : ℤ)| + (n : ℤ)

end

end A017911.P16290389196902199865

namespace A017911

/-- `abs(round(sqrt(A000225(n)+1))-n)+n` -/
def P16290389196902199865.Spec : Prop :=
  ∀ n, P16290389196902199865.a n = A017911 n

end A017911

/-! ## A017911.P14189014125995056018

`ceil(A000079(n)/A136417(n))`
-/

namespace A017911.P14189014125995056018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000079 n : ℚ) / (A136417 n : ℚ)⌉

end

end A017911.P14189014125995056018

namespace A017911

/-- `ceil(A000079(n)/A136417(n))` -/
def P14189014125995056018.Spec : Prop :=
  ∀ n, P14189014125995056018.a n = A017911 n

end A017911

/-! ## A017911.P9839132860853529214

`round(sqrt(A000079(n)))%A134062(n+1)`
-/

namespace A017911.P9839132860853529214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A000079 n : ℝ))) (A134062 (n + 1))

end

end A017911.P9839132860853529214

namespace A017911

/-- `round(sqrt(A000079(n)))%A134062(n+1)` -/
def P9839132860853529214.Spec : Prop :=
  ∀ n, P9839132860853529214.a n = A017911 n

end A017911

/-!
# A017912: Powers of sqrt(2) rounded up.

The programs for A017912, the canonical program `A017912.P5863680861404256064` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017912 has offset 0).

The definition of A017912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017912.P5863680861404256064

`ceil(sqrt(2^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017912

/-- `ceil(sqrt(2^n))` -/
def P5863680861404256064.Spec : Prop :=
  ∀ n, P5863680861404256064.a n = A017912 n

theorem P5863680861404256064.correct : P5863680861404256064.Spec := by
  intro n
  simp only [A017912]

end A017912

/-! ## A017912.P6526798052280490209

`A003059(A000079(n))`
-/

namespace A017912.P6526798052280490209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A000079 n).toNat

end

end A017912.P6526798052280490209

namespace A017912

/-- `A003059(A000079(n))` -/
def P6526798052280490209.Spec : Prop :=
  ∀ n, P6526798052280490209.a n = A017912 n

end A017912

/-! ## A017912.P4869468650159983898

`A018050(2*n)`
-/

namespace A017912.P4869468650159983898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018050 (2 * n)

end

end A017912.P4869468650159983898

namespace A017912

/-- `A018050(2*n)` -/
def P4869468650159983898.Spec : Prop :=
  ∀ n, P4869468650159983898.a n = A017912 n

end A017912

/-! ## A017912.P5425417664566226427

`A116601(n+2)+1`
-/

namespace A017912.P5425417664566226427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116601 (n + 2) + 1

end

end A017912.P5425417664566226427

namespace A017912

/-- `A116601(n+2)+1` -/
def P5425417664566226427.Spec : Prop :=
  ∀ n, P5425417664566226427.a n = A017912 n

end A017912

/-! ## A017912.P10893097836815168969

`A017910(n)+and(1, n)`
-/

namespace A017912.P10893097836815168969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 n + (Nat.land 1 n : ℤ)

end

end A017912.P10893097836815168969

namespace A017912

/-- `A017910(n)+and(1, n)` -/
def P10893097836815168969.Spec : Prop :=
  ∀ n, P10893097836815168969.a n = A017912 n

end A017912

/-! ## A017912.P15427328516020996384

`A188917(n)-floor(n/2)`
-/

namespace A017912.P15427328516020996384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188917 n - ⌊(n : ℚ) / 2⌋

end

end A017912.P15427328516020996384

namespace A017912

/-- `A188917(n)-floor(n/2)` -/
def P15427328516020996384.Spec : Prop :=
  ∀ n, P15427328516020996384.a n = A017912 n

end A017912

/-! ## A017912.P15257841487178257702

`A018048(2*n)+and(1, n)`
-/

namespace A017912.P15257841487178257702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018048 (2 * n) + (Nat.land 1 n : ℤ)

end

end A017912.P15257841487178257702

namespace A017912

/-- `A018048(2*n)+and(1, n)` -/
def P15257841487178257702.Spec : Prop :=
  ∀ n, P15257841487178257702.a n = A017912 n

end A017912

/-! ## A017912.P10880801698134072537

`A126726(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A017912.P10880801698134072537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A126726 n + a (n - 1)

end

end A017912.P10880801698134072537

namespace A017912

/-- `A126726(n)+a(n-1)` -/
def P10880801698134072537.Spec : Prop :=
  ∀ n, P10880801698134072537.a n = A017912 n

end A017912

/-! ## A017912.P829887121261076858

`A017910(n)+A000035(n)`
-/

namespace A017912.P829887121261076858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 n + A000035 n

end

end A017912.P829887121261076858

namespace A017912

/-- `A017910(n)+A000035(n)` -/
def P829887121261076858.Spec : Prop :=
  ∀ n, P829887121261076858.a n = A017912 n

end A017912

/-! ## A017912.P8730251640377060996

`A136417(n)-A059841(n)`
-/

namespace A017912.P8730251640377060996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136417 n - A059841 n

end

end A017912.P8730251640377060996

namespace A017912

/-- `A136417(n)-A059841(n)` -/
def P8730251640377060996.Spec : Prop :=
  ∀ n, P8730251640377060996.a n = A017912 n

end A017912

/-! ## A017912.P11376232372485965206

`A017910(n)+n-A052928(n)`
-/

namespace A017912.P11376232372485965206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 n + ((n : ℤ) - A052928 n)

end

end A017912.P11376232372485965206

namespace A017912

/-- `A017910(n)+n-A052928(n)` -/
def P11376232372485965206.Spec : Prop :=
  ∀ n, P11376232372485965206.a n = A017912 n

end A017912

/-! ## A017912.P1246453597338087931

`A110654(n)+A188917(n)-n`
-/

namespace A017912.P1246453597338087931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + (A188917 n - (n : ℤ))

end

end A017912.P1246453597338087931

namespace A017912

/-- `A110654(n)+A188917(n)-n` -/
def P1246453597338087931.Spec : Prop :=
  ∀ n, P1246453597338087931.a n = A017912 n

end A017912

/-! ## A017912.P14510586576106490222

`A017910(n)+A056594(n+1)²`
-/

namespace A017912.P14510586576106490222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 n + A056594 (n + 1) ^ 2

end

end A017912.P14510586576106490222

namespace A017912

/-- `A017910(n)+A056594(n+1)²` -/
def P14510586576106490222.Spec : Prop :=
  ∀ n, P14510586576106490222.a n = A017912 n

end A017912

/-! ## A017912.P2828092797182921084

`A059841(n+1)+A018048(2*n)`
-/

namespace A017912.P2828092797182921084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + A018048 (2 * n)

end

end A017912.P2828092797182921084

namespace A017912

/-- `A059841(n+1)+A018048(2*n)` -/
def P2828092797182921084.Spec : Prop :=
  ∀ n, P2828092797182921084.a n = A017912 n

end A017912

/-! ## A017912.P2328689179691648232

`A166486(2*n)+A018048(2*n)`
-/

namespace A017912.P2328689179691648232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A018048 (2 * n)

end

end A017912.P2328689179691648232

namespace A017912

/-- `A166486(2*n)+A018048(2*n)` -/
def P2328689179691648232.Spec : Prop :=
  ∀ n, P2328689179691648232.a n = A017912 n

end A017912

/-! ## A017912.P3135169350570712502

`A018048(2*n)+A075553(2*n)²`
-/

namespace A017912.P3135169350570712502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018048 (2 * n) + A075553 (2 * n) ^ 2

end

end A017912.P3135169350570712502

namespace A017912

/-- `A018048(2*n)+A075553(2*n)²` -/
def P3135169350570712502.Spec : Prop :=
  ∀ n, P3135169350570712502.a n = A017912 n

end A017912

/-! ## A017912.P14725113867752801739

`A077957(A077957(n)/A017910(n))+A017910(n)`
-/

namespace A017912.P14725113867752801739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (SequenceMachineLib.roundAway ((A077957 n : ℚ) / (A017910 n : ℚ))).toNat + A017910 n

end

end A017912.P14725113867752801739

namespace A017912

/-- `A077957(A077957(n)/A017910(n))+A017910(n)` -/
def P14725113867752801739.Spec : Prop :=
  ∀ n, P14725113867752801739.a n = A017912 n

end A017912

/-! ## A017912.P9514781442185481410

`A136417(n+1)+A188917(n)-A188917(n+1)`
-/

namespace A017912.P9514781442185481410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136417 (n + 1) + (A188917 n - A188917 (n + 1))

end

end A017912.P9514781442185481410

namespace A017912

/-- `A136417(n+1)+A188917(n)-A188917(n+1)` -/
def P9514781442185481410.Spec : Prop :=
  ∀ n, P9514781442185481410.a n = A017912 n

end A017912

/-! ## A017912.P16873817179313785105

`A001521(n+1)-a(n-1)+1` with `a(0)=1`
-/

namespace A017912.P16873817179313785105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001521 (n + 1) - a (n - 1) + 1

end

end A017912.P16873817179313785105

namespace A017912

/-- `A001521(n+1)-a(n-1)+1` -/
def P16873817179313785105.Spec : Prop :=
  ∀ n, P16873817179313785105.a n = A017912 n

end A017912

/-!
# A017913: Powers of sqrt(3) rounded down.

The programs for A017913, the canonical program `A017913.P9232263445672830313` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017913 has offset 0).

The definition of A017913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017913.P9232263445672830313

`floor(sqrt(3^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017913

/-- `floor(sqrt(3^n))` -/
def P9232263445672830313.Spec : Prop :=
  ∀ n, (P9232263445672830313.a n : ℤ) = A017913 n

theorem P9232263445672830313.correct : P9232263445672830313.Spec := by
  intro n
  simp only [A017913]

end A017913

/-! ## A017913.P13352105265833134850

`A018051(2*n)`
-/

namespace A017913.P13352105265833134850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018051 (2 * n)

end

end A017913.P13352105265833134850

namespace A017913

/-- `A018051(2*n)` -/
def P13352105265833134850.Spec : Prop :=
  ∀ n, P13352105265833134850.a n = A017913 n

end A017913

/-! ## A017913.P9142442894632817898

`A017915(n)-n%2`
-/

namespace A017913.P9142442894632817898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017915 n - ((n % 2 : ℕ) : ℤ)

end

end A017913.P9142442894632817898

namespace A017913

/-- `A017915(n)-n%2` -/
def P9142442894632817898.Spec : Prop :=
  ∀ n, P9142442894632817898.a n = A017913 n

end A017913

/-! ## A017913.P3397388733414476012

`A017915(n)-A000035(n)`
-/

namespace A017913.P3397388733414476012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017915 n - A000035 n

end

end A017913.P3397388733414476012

namespace A017913

/-- `A017915(n)-A000035(n)` -/
def P3397388733414476012.Spec : Prop :=
  ∀ n, P3397388733414476012.a n = A017913 n

end A017913

/-! ## A017913.P16160549690668647065

`A017915(n)-A059841(n+1)`
-/

namespace A017913.P16160549690668647065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017915 n - A059841 (n + 1)

end

end A017913.P16160549690668647065

namespace A017913

/-- `A017915(n)-A059841(n+1)` -/
def P16160549690668647065.Spec : Prop :=
  ∀ n, P16160549690668647065.a n = A017913 n

end A017913

/-! ## A017913.P18325196546659881070

`A059841(n)-(1-A017915(n))`
-/

namespace A017913.P18325196546659881070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n - (1 - A017915 n)

end

end A017913.P18325196546659881070

namespace A017913

/-- `A059841(n)-(1-A017915(n))` -/
def P18325196546659881070.Spec : Prop :=
  ∀ n, P18325196546659881070.a n = A017913 n

end A017913

/-! ## A017913.P15510151865531101741

`A018053(2*n)-A059841(n+1)`
-/

namespace A017913.P15510151865531101741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018053 (2 * n) - A059841 (n + 1)

end

end A017913.P15510151865531101741

namespace A017913

/-- `A018053(2*n)-A059841(n+1)` -/
def P15510151865531101741.Spec : Prop :=
  ∀ n, P15510151865531101741.a n = A017913 n

end A017913

/-! ## A017913.P10451329135647033022

`A018053(2*n)-A166486(2*n)`
-/

namespace A017913.P10451329135647033022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018053 (2 * n) - A166486 (2 * n)

end

end A017913.P10451329135647033022

namespace A017913

/-- `A018053(2*n)-A166486(2*n)` -/
def P10451329135647033022.Spec : Prop :=
  ∀ n, P10451329135647033022.a n = A017913 n

end A017913

/-! ## A017913.P12740978085643933775

`A018053(2*n)+A018060(2*n)-A018062(2*n)`
-/

namespace A017913.P12740978085643933775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018053 (2 * n) + (A018060 (2 * n) - A018062 (2 * n))

end

end A017913.P12740978085643933775

namespace A017913

/-- `A018053(2*n)+A018060(2*n)-A018062(2*n)` -/
def P12740978085643933775.Spec : Prop :=
  ∀ n, P12740978085643933775.a n = A017913 n

end A017913

/-! ## A017913.P8889189342219862512

`ceil(sqrt(A102345(n)))-1`
-/

namespace A017913.P8889189342219862512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A102345 n : ℝ)⌉ - 1

end

end A017913.P8889189342219862512

namespace A017913

/-- `ceil(sqrt(A102345(n)))-1` -/
def P8889189342219862512.Spec : Prop :=
  ∀ n, P8889189342219862512.a n = A017913 n

end A017913

/-! ## A017913.P13996971130375503868

`A128444(A179865(n+1))`
-/

namespace A017913.P13996971130375503868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128444 (A179865 (n + 1)).toNat

end

end A017913.P13996971130375503868

namespace A017913

/-- `A128444(A179865(n+1))` -/
def P13996971130375503868.Spec : Prop :=
  ∀ n, P13996971130375503868.a n = A017913 n

end A017913

/-!
# A017914: Powers of sqrt(3) rounded to nearest integer.

The programs for A017914, the canonical program `A017914.P3352247530673536423` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017914 has offset 0).

The definition of A017914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017914.P3352247530673536423

`round(3^(n/2))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017914

/-- `round(3^(n/2))` -/
def P3352247530673536423.Spec : Prop :=
  ∀ n, P3352247530673536423.a n = A017914 n

theorem P3352247530673536423.correct : P3352247530673536423.Spec := by
  intro n
  simp only [A017914]

end A017914

/-! ## A017914.P8243516969681217998

`A018052(2*n)`
-/

namespace A017914.P8243516969681217998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018052 (2 * n)

end

end A017914.P8243516969681217998

namespace A017914

/-- `A018052(2*n)` -/
def P8243516969681217998.Spec : Prop :=
  ∀ n, P8243516969681217998.a n = A017914 n

end A017914

/-! ## A017914.P12804495336511276584

`or(and(1, n+1), A018052(n+n))`
-/

namespace A017914.P12804495336511276584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.land 1 (n + 1) : ℤ) (A018052 (n + n))

end

end A017914.P12804495336511276584

namespace A017914

/-- `or(and(1, n+1), A018052(n+n))` -/
def P12804495336511276584.Spec : Prop :=
  ∀ n, P12804495336511276584.a n = A017914 n

end A017914

/-! ## A017914.P8265097175396661781

`record[A018052(A124625(n))]`
-/

namespace A017914.P8265097175396661781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018052 (A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017914.P8265097175396661781

namespace A017914

/-- `record[A018052(A124625(n))]` -/
def P8265097175396661781.Spec : Prop :=
  ∀ n, P8265097175396661781.a n = A017914 n

end A017914

/-! ## A017914.P3399494693954310134

`record[A018052(n)/A000034(n)]`
-/

namespace A017914.P3399494693954310134
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018052 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017914.P3399494693954310134

namespace A017914

/-- `record[A018052(n)/A000034(n)]` -/
def P3399494693954310134.Spec : Prop :=
  ∀ n, P3399494693954310134.a n = (A017914 n : ℚ)

end A017914

/-! ## A017914.P9581086037650670836

`record[A018052(A025480(n)+A004526(n))]`
-/

namespace A017914.P9581086037650670836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018052 (A025480 n + A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017914.P9581086037650670836

namespace A017914

/-- `record[A018052(A025480(n)+A004526(n))]` -/
def P9581086037650670836.Spec : Prop :=
  ∀ n, P9581086037650670836.a n = A017914 n

end A017914

/-! ## A017914.P3758669720698018264

`record[round(sqrt(A254006(n)))]`
-/

namespace A017914.P3758669720698018264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A254006 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017914.P3758669720698018264

namespace A017914

/-- `record[round(sqrt(A254006(n)))]` -/
def P3758669720698018264.Spec : Prop :=
  ∀ n, P3758669720698018264.a n = A017914 n

end A017914

/-! ## A017914.P14970174085246537176

`abs(1-round(sqrt(A000244(n))))+1`
-/

namespace A017914.P14970174085246537176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - SequenceMachineLib.roundAway (Real.sqrt (A000244 n : ℝ))| + 1

end

end A017914.P14970174085246537176

namespace A017914

/-- `abs(1-round(sqrt(A000244(n))))+1` -/
def P14970174085246537176.Spec : Prop :=
  ∀ n, P14970174085246537176.a n = A017914 n

end A017914

/-! ## A017914.P11994330894101918518

`ceil(A017915(2*n)/A017915(n))`
-/

namespace A017914.P11994330894101918518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017915 (2 * n) : ℚ) / (A017915 n : ℚ)⌉

end

end A017914.P11994330894101918518

namespace A017914

/-- `ceil(A017915(2*n)/A017915(n))` -/
def P11994330894101918518.Spec : Prop :=
  ∀ n, P11994330894101918518.a n = A017914 n

end A017914

/-! ## A017914.P7760151124680531919

`round(sqrt(A024023(n)+1))%A042950(n)`
-/

namespace A017914.P7760151124680531919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A024023 n + 1 : ℝ))) (A042950 n)

end

end A017914.P7760151124680531919

namespace A017914

/-- `round(sqrt(A024023(n)+1))%A042950(n)` -/
def P7760151124680531919.Spec : Prop :=
  ∀ n, P7760151124680531919.a n = A017914 n

end A017914

/-! ## A017914.P15938133698310773363

`record[round(sqrt(A112626(n)))]`
-/

namespace A017914.P15938133698310773363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A112626 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017914.P15938133698310773363

namespace A017914

/-- `record[round(sqrt(A112626(n)))]` -/
def P15938133698310773363.Spec : Prop :=
  ∀ n, P15938133698310773363.a n = A017914 n

end A017914

/-! ## A017914.P14780238480492026932

`record[round(sqrt(A175840(n)))]`
-/

namespace A017914.P14780238480492026932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A175840 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017914.P14780238480492026932

namespace A017914

/-- `record[round(sqrt(A175840(n)))]` -/
def P14780238480492026932.Spec : Prop :=
  ∀ n, P14780238480492026932.a n = A017914 n

end A017914

/-! ## A017914.P725300712252264894

`round(sqrt(A103453(n)+1))%A198965(n)`
-/

namespace A017914.P725300712252264894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A103453 n + 1 : ℝ))) (A198965 n)

end

end A017914.P725300712252264894

namespace A017914

/-- `round(sqrt(A103453(n)+1))%A198965(n)` -/
def P725300712252264894.Spec : Prop :=
  ∀ n, P725300712252264894.a n = A017914 n

end A017914

/-!
# A017915: Powers of sqrt(3) rounded up.

The programs for A017915, the canonical program `A017915.P6110732589952207282` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017915 has offset 0).

The definition of A017915 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017915.P6110732589952207282

`ceil(sqrt(3^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017915

/-- `ceil(sqrt(3^n))` -/
def P6110732589952207282.Spec : Prop :=
  ∀ n, P6110732589952207282.a n = A017915 n

theorem P6110732589952207282.correct : P6110732589952207282.Spec := by
  intro n
  simp only [A017915]

end A017915

/-! ## A017915.P9769652488847007144

`A018053(2*n)`
-/

namespace A017915.P9769652488847007144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018053 (2 * n)

end

end A017915.P9769652488847007144

namespace A017915

/-- `A018053(2*n)` -/
def P9769652488847007144.Spec : Prop :=
  ∀ n, P9769652488847007144.a n = A017915 n

end A017915

/-! ## A017915.P2921213102179407011

`A017913(n)+and(1, n)`
-/

namespace A017915.P2921213102179407011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 n + (Nat.land 1 n : ℤ)

end

end A017915.P2921213102179407011

namespace A017915

/-- `A017913(n)+and(1, n)` -/
def P2921213102179407011.Spec : Prop :=
  ∀ n, P2921213102179407011.a n = A017915 n

end A017915

/-! ## A017915.P9610460449878838354

`A017913(n)+A000035(n)`
-/

namespace A017915.P9610460449878838354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 n + A000035 n

end

end A017915.P9610460449878838354

namespace A017915

/-- `A017913(n)+A000035(n)` -/
def P9610460449878838354.Spec : Prop :=
  ∀ n, P9610460449878838354.a n = A017915 n

end A017915

/-! ## A017915.P12574471515113818860

`A059841(n+1)+A017913(n)`
-/

namespace A017915.P12574471515113818860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + A017913 n

end

end A017915.P12574471515113818860

namespace A017915

/-- `A059841(n+1)+A017913(n)` -/
def P12574471515113818860.Spec : Prop :=
  ∀ n, P12574471515113818860.a n = A017915 n

end A017915

/-! ## A017915.P8191489168693120497

`1-(A059841(n)-A017913(n))`
-/

namespace A017915.P8191489168693120497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A059841 n - A017913 n)

end

end A017915.P8191489168693120497

namespace A017915

/-- `1-(A059841(n)-A017913(n))` -/
def P8191489168693120497.Spec : Prop :=
  ∀ n, P8191489168693120497.a n = A017915 n

end A017915

/-! ## A017915.P15750452709487457388

`A017913(n)+n-A052928(n)`
-/

namespace A017915.P15750452709487457388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 n + ((n : ℤ) - A052928 n)

end

end A017915.P15750452709487457388

namespace A017915

/-- `A017913(n)+n-A052928(n)` -/
def P15750452709487457388.Spec : Prop :=
  ∀ n, P15750452709487457388.a n = A017915 n

end A017915

/-! ## A017915.P16138243580633158463

`A017913(n)+A056594(n+1)²`
-/

namespace A017915.P16138243580633158463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 n + A056594 (n + 1) ^ 2

end

end A017915.P16138243580633158463

namespace A017915

/-- `A017913(n)+A056594(n+1)²` -/
def P16138243580633158463.Spec : Prop :=
  ∀ n, P16138243580633158463.a n = A017915 n

end A017915

/-! ## A017915.P16837694006145714505

`A166486(2*n)+A018051(2*n)`
-/

namespace A017915.P16837694006145714505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A018051 (2 * n)

end

end A017915.P16837694006145714505

namespace A017915

/-- `A166486(2*n)+A018051(2*n)` -/
def P16837694006145714505.Spec : Prop :=
  ∀ n, P16837694006145714505.a n = A017915 n

end A017915

/-! ## A017915.P15958926029198016773

`A124625(A124625(n))+A017913(n)`
-/

namespace A017915.P15958926029198016773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A124625 n).toNat + A017913 n

end

end A017915.P15958926029198016773

namespace A017915

/-- `A124625(A124625(n))+A017913(n)` -/
def P15958926029198016773.Spec : Prop :=
  ∀ n, P15958926029198016773.a n = A017915 n

end A017915

/-! ## A017915.P12614803988013389004

`floor(sqrt(A024023(n)))+1`
-/

namespace A017915.P12614803988013389004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A024023 n) + 1

end

end A017915.P12614803988013389004

namespace A017915

/-- `floor(sqrt(A024023(n)))+1` -/
def P12614803988013389004.Spec : Prop :=
  ∀ n, P12614803988013389004.a n = A017915 n

end A017915

/-! ## A017915.P9284667655532168760

`floor(sqrt(A000244(n)-1))+1`
-/

namespace A017915.P9284667655532168760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000244 n - 1) + 1

end

end A017915.P9284667655532168760

namespace A017915

/-- `floor(sqrt(A000244(n)-1))+1` -/
def P9284667655532168760.Spec : Prop :=
  ∀ n, P9284667655532168760.a n = A017915 n

end A017915

/-! ## A017915.P2601112680186479699

`floor(sqrt(3^n-A000688(n+1)))+1`
-/

namespace A017915.P2601112680186479699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((3 ^ n : ℤ) - A000688 (n + 1)) + 1

end

end A017915.P2601112680186479699

namespace A017915

/-- `floor(sqrt(3^n-A000688(n+1)))+1` -/
def P2601112680186479699.Spec : Prop :=
  ∀ n, P2601112680186479699.a n = A017915 n

end A017915

/-! ## A017915.P13200257296270980610

`floor(sqrt(or(3^n, A160377(n+2))-(n+1)))+1`
-/

namespace A017915.P13200257296270980610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.lor (3 ^ n : ℤ) (A160377 (n + 2)) - (n + 1 : ℤ)) + 1

end

end A017915.P13200257296270980610

namespace A017915

/-- `floor(sqrt(or(3^n, A160377(n+2))-(n+1)))+1` -/
def P13200257296270980610.Spec : Prop :=
  ∀ n, P13200257296270980610.a n = A017915 n

end A017915

/-! ## A017915.P13245367779465410351

`ceil(sqrt(A024023(n)+1))%A000051(n+1)`
-/

namespace A017915.P13245367779465410351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A024023 n + 1 : ℝ)⌉ (A000051 (n + 1))

end

end A017915.P13245367779465410351

namespace A017915

/-- `ceil(sqrt(A024023(n)+1))%A000051(n+1)` -/
def P13245367779465410351.Spec : Prop :=
  ∀ n, P13245367779465410351.a n = A017915 n

end A017915

/-! ## A017915.P16157627978197829064

`record[ceil(sqrt(A112626(n)))]`
-/

namespace A017915.P16157627978197829064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A112626 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017915.P16157627978197829064

namespace A017915

/-- `record[ceil(sqrt(A112626(n)))]` -/
def P16157627978197829064.Spec : Prop :=
  ∀ n, P16157627978197829064.a n = A017915 n

end A017915

/-! ## A017915.P11661596967305527281

`record[ceil(sqrt(A143453(n)))]`
-/

namespace A017915.P11661596967305527281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A143453 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017915.P11661596967305527281

namespace A017915

/-- `record[ceil(sqrt(A143453(n)))]` -/
def P11661596967305527281.Spec : Prop :=
  ∀ n, P11661596967305527281.a n = A017915 n

end A017915

/-! ## A017915.P5468380350679606736

`record[ceil(sqrt(A175840(n)))]`
-/

namespace A017915.P5468380350679606736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A175840 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017915.P5468380350679606736

namespace A017915

/-- `record[ceil(sqrt(A175840(n)))]` -/
def P5468380350679606736.Spec : Prop :=
  ∀ n, P5468380350679606736.a n = A017915 n

end A017915

/-! ## A017915.P12106755209248852632

`floor(sqrt(sqrt(A001019(n))-1))+1`
-/

namespace A017915.P12106755209248852632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A001019 n : ℝ) - 1)⌋ + 1

end

end A017915.P12106755209248852632

namespace A017915

/-- `floor(sqrt(sqrt(A001019(n))-1))+1` -/
def P12106755209248852632.Spec : Prop :=
  ∀ n, P12106755209248852632.a n = A017915 n

end A017915

/-!
# A017916: Expansion of 1/((1-3x)*(1-5x)*(1-10x)).

The programs for A017916, the canonical program `A017916.P9638851838593351014` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017916 has offset 0).

The definition of A017916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017916.P9638851838593351014

`18*a(n-1)-95*a(n-2)+150*a(n-3)` with `a(0)=1, a(1)=18, a(2)=229`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017916

/-- `18*a(n-1)-95*a(n-2)+150*a(n-3)` -/
def P9638851838593351014.Spec : Prop :=
  ∀ n, P9638851838593351014.a n = A017916 n

theorem P9638851838593351014.correct : P9638851838593351014.Spec := by
  intro n
  simp only [A017916]

end A017916

/-! ## A017916.P3118773920910618854

`(2*10^(n+2)-7*5^(n+2)+5*3^(n+2))/70`
-/

namespace A017916.P3118773920910618854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 10 ^ (n + 2) : ℤ) - (7 * 5 ^ (n + 2) : ℤ) + (5 * 3 ^ (n + 2) : ℤ) : ℚ) / 70

end

end A017916.P3118773920910618854

namespace A017916

/-- `(2*10^(n+2)-7*5^(n+2)+5*3^(n+2))/70` -/
def P3118773920910618854.Spec : Prop :=
  ∀ n, P3118773920910618854.a n = (A017916 n : ℚ)

end A017916

/-! ## A017916.P17199897928076597136

`A016164(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A017916.P17199897928076597136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016164 n + 3 * a (n - 1)

end

end A017916.P17199897928076597136

namespace A017916

/-- `A016164(n)+3*a(n-1)` -/
def P17199897928076597136.Spec : Prop :=
  ∀ n, P17199897928076597136.a n = A017916 n

end A017916

/-! ## A017916.P5722030369653829835

`A005059(n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A017916.P5722030369653829835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005059 (n + 1) + 10 * a (n - 1)

end

end A017916.P5722030369653829835

namespace A017916

/-- `A005059(n+1)+10*a(n-1)` -/
def P5722030369653829835.Spec : Prop :=
  ∀ n, P5722030369653829835.a n = A017916 n

end A017916

/-! ## A017916.P9914613705473097222

`2*A016237(n)-A016215(n)`
-/

namespace A017916.P9914613705473097222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016237 n - A016215 n

end

end A017916.P9914613705473097222

namespace A017916

/-- `2*A016237(n)-A016215(n)` -/
def P9914613705473097222.Spec : Prop :=
  ∀ n, P9914613705473097222.a n = A017916 n

end A017916

/-! ## A017916.P6205726380696937542

`2*A017999(n)-A019958(n)`
-/

namespace A017916.P6205726380696937542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017999 n - A019958 n

end

end A017916.P6205726380696937542

namespace A017916

/-- `2*A017999(n)-A019958(n)` -/
def P6205726380696937542.Spec : Prop :=
  ∀ n, P6205726380696937542.a n = A017916 n

end A017916

/-!
# A017917: Expansion of 1/((1-3x)*(1-5x)*(1-11x)).

The programs for A017917, the canonical program `A017917.P13579361445660993101` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017917 has offset 0).

The definition of A017917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017917.P13579361445660993101

`16*a(n-1)-55*a(n-2)+3^n` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017917

/-- `16*a(n-1)-55*a(n-2)+3^n` -/
def P13579361445660993101.Spec : Prop :=
  ∀ n, P13579361445660993101.a n = A017917 n

theorem P13579361445660993101.correct : P13579361445660993101.Spec := by
  intro n
  simp only [A017917]

end A017917

/-! ## A017917.P10120526589949610396

`(11^(n+2)-4*5^(n+2)+3^(n+3))/48`
-/

namespace A017917.P10120526589949610396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 2) : ℤ) - (4 * 5 ^ (n + 2) : ℤ) + (3 ^ (n + 3) : ℤ) : ℚ) / 48

end

end A017917.P10120526589949610396

namespace A017917

/-- `(11^(n+2)-4*5^(n+2)+3^(n+3))/48` -/
def P10120526589949610396.Spec : Prop :=
  ∀ n, P10120526589949610396.a n = (A017917 n : ℚ)

end A017917

/-! ## A017917.P4095581173615840334

`A016146(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A017917.P4095581173615840334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016146 n + 5 * a (n - 1)

end

end A017917.P4095581173615840334

namespace A017917

/-- `A016146(n)+5*a(n-1)` -/
def P4095581173615840334.Spec : Prop :=
  ∀ n, P4095581173615840334.a n = A017917 n

end A017917

/-! ## A017917.P2907161769564793241

`A005059(n+1)+11*a(n-1)` with `a(0)=1`
-/

namespace A017917.P2907161769564793241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005059 (n + 1) + 11 * a (n - 1)

end

end A017917.P2907161769564793241

namespace A017917

/-- `A005059(n+1)+11*a(n-1)` -/
def P2907161769564793241.Spec : Prop :=
  ∀ n, P2907161769564793241.a n = A017917 n

end A017917

/-! ## A017917.P6803572307522978128

`2*A016238(n)-A016216(n)`
-/

namespace A017917.P6803572307522978128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016238 n - A016216 n

end

end A017917.P6803572307522978128

namespace A017917

/-- `2*A016238(n)-A016216(n)` -/
def P6803572307522978128.Spec : Prop :=
  ∀ n, P6803572307522978128.a n = A017917 n

end A017917

/-!
# A017918: Expansion of 1/((1-3x)*(1-5x)*(1-12x)).

The programs for A017918, the canonical program `A017918.P4918208852234185804` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017918 has offset 0).

The definition of A017918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017918.P4918208852234185804

`17*a(n-1)-60*a(n-2)+3^n` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017918

/-- `17*a(n-1)-60*a(n-2)+3^n` -/
def P4918208852234185804.Spec : Prop :=
  ∀ n, P4918208852234185804.a n = A017918 n

theorem P4918208852234185804.correct : P4918208852234185804.Spec := by
  intro n
  simp only [A017918]

end A017918

/-! ## A017918.P16234118367074875165

`(2*12^(n+2)-9*5^(n+2)+7*3^(n+2))/126`
-/

namespace A017918.P16234118367074875165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 12 ^ (n + 2) : ℤ) - (9 * 5 ^ (n + 2) : ℤ) + (7 * 3 ^ (n + 2) : ℤ) : ℚ) / 126

end

end A017918.P16234118367074875165

namespace A017918

/-- `(2*12^(n+2)-9*5^(n+2)+7*3^(n+2))/126` -/
def P16234118367074875165.Spec : Prop :=
  ∀ n, P16234118367074875165.a n = (A017918 n : ℚ)

end A017918

/-! ## A017918.P16937793097460924078

`A016166(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A017918.P16937793097460924078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016166 n + 3 * a (n - 1)

end

end A017918.P16937793097460924078

namespace A017918

/-- `A016166(n)+3*a(n-1)` -/
def P16937793097460924078.Spec : Prop :=
  ∀ n, P16937793097460924078.a n = A017918 n

end A017918

/-! ## A017918.P329783669756881023

`A016147(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A017918.P329783669756881023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016147 n + 5 * a (n - 1)

end

end A017918.P329783669756881023

namespace A017918

/-- `A016147(n)+5*a(n-1)` -/
def P329783669756881023.Spec : Prop :=
  ∀ n, P329783669756881023.a n = A017918 n

end A017918

/-! ## A017918.P9575697456017373721

`2*A016239(n)-A016217(n)`
-/

namespace A017918.P9575697456017373721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016239 n - A016217 n

end

end A017918.P9575697456017373721

namespace A017918

/-- `2*A016239(n)-A016217(n)` -/
def P9575697456017373721.Spec : Prop :=
  ∀ n, P9575697456017373721.a n = A017918 n

end A017918

/-! ## A017918.P17709890327659019267

`A018055(n)+A018055(n)-A020341(n)`
-/

namespace A017918.P17709890327659019267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018055 n + (A018055 n - A020341 n)

end

end A017918.P17709890327659019267

namespace A017918

/-- `A018055(n)+A018055(n)-A020341(n)` -/
def P17709890327659019267.Spec : Prop :=
  ∀ n, P17709890327659019267.a n = A017918 n

end A017918

/-! ## A017918.P4543465705818318451

`2*A018055(n)-A020341(n)`
-/

namespace A017918.P4543465705818318451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018055 n - A020341 n

end

end A017918.P4543465705818318451

namespace A017918

/-- `2*A018055(n)-A020341(n)` -/
def P4543465705818318451.Spec : Prop :=
  ∀ n, P4543465705818318451.a n = A017918 n

end A017918

/-!
# A017919: Powers of sqrt(5) rounded down.

The programs for A017919, the canonical program `A017919.P3552188439400927295` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017919 has offset 0).

The definition of A017919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017919.P3552188439400927295

`floor(sqrt(5^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017919

/-- `floor(sqrt(5^n))` -/
def P3552188439400927295.Spec : Prop :=
  ∀ n, (P3552188439400927295.a n : ℤ) = A017919 n

theorem P3552188439400927295.correct : P3552188439400927295.Spec := by
  intro n
  simp only [A017919]

end A017919

/-! ## A017919.P67242517496488218

`A018057(2*n)`
-/

namespace A017919.P67242517496488218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018057 (2 * n)

end

end A017919.P67242517496488218

namespace A017919

/-- `A018057(2*n)` -/
def P67242517496488218.Spec : Prop :=
  ∀ n, P67242517496488218.a n = A017919 n

end A017919

/-! ## A017919.P2456079231564400701

`A017921(n)-and(1, n)`
-/

namespace A017919.P2456079231564400701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017921 n - (Nat.land 1 n : ℤ)

end

end A017919.P2456079231564400701

namespace A017919

/-- `A017921(n)-and(1, n)` -/
def P2456079231564400701.Spec : Prop :=
  ∀ n, P2456079231564400701.a n = A017919 n

end A017919

/-! ## A017919.P17849427802008070799

`A018059(2*n)-char[2*n+1]`
-/

namespace A017919.P17849427802008070799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018059 (2 * n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A017919.P17849427802008070799

namespace A017919

/-- `A018059(2*n)-char[2*n+1]` -/
def P17849427802008070799.Spec : Prop :=
  ∀ n, P17849427802008070799.a n = A017919 n

end A017919

/-! ## A017919.P4666846837414568901

`A017921(n)-A000035(n)`
-/

namespace A017919.P4666846837414568901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017921 n - A000035 n

end

end A017919.P4666846837414568901

namespace A017919

/-- `A017921(n)-A000035(n)` -/
def P4666846837414568901.Spec : Prop :=
  ∀ n, P4666846837414568901.a n = A017919 n

end A017919

/-! ## A017919.P16437035453621986571

`A017921(n)-Δ[A004526(n)]`
-/

namespace A017919.P16437035453621986571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017921 n - (f1 (n + 1) - f1 n)

end

end A017919.P16437035453621986571

namespace A017919

/-- `A017921(n)-Δ[A004526(n)]` -/
def P16437035453621986571.Spec : Prop :=
  ∀ n, P16437035453621986571.a n = A017919 n

end A017919

/-! ## A017919.P408190892471714409

`A017921(n)-Δ[A008619(n)]`
-/

namespace A017919.P408190892471714409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017921 n - (f1 (n + 1) - f1 n)

end

end A017919.P408190892471714409

namespace A017919

/-- `A017921(n)-Δ[A008619(n)]` -/
def P408190892471714409.Spec : Prop :=
  ∀ n, P408190892471714409.a n = A017919 n

end A017919

/-! ## A017919.P16069937440802203273

`A017921(n)-char[A005408(n)]`
-/

namespace A017919.P16069937440802203273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017921 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017919.P16069937440802203273

namespace A017919

/-- `A017921(n)-char[A005408(n)]` -/
def P16069937440802203273.Spec : Prop :=
  ∀ n, P16069937440802203273.a n = A017919 n

end A017919

/-! ## A017919.P9011677941639608516

`A018051(2*n)+A018059(2*n)-A018053(2*n)`
-/

namespace A017919.P9011677941639608516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018051 (2 * n) + (A018059 (2 * n) - A018053 (2 * n))

end

end A017919.P9011677941639608516

namespace A017919

/-- `A018051(2*n)+A018059(2*n)-A018053(2*n)` -/
def P9011677941639608516.Spec : Prop :=
  ∀ n, P9011677941639608516.a n = A017919 n

end A017919

/-! ## A017919.P16174425310763829452

`A018060(2*n)+A018059(2*n)-A018062(2*n)`
-/

namespace A017919.P16174425310763829452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018060 (2 * n) + A018059 (2 * n) - A018062 (2 * n)

end

end A017919.P16174425310763829452

namespace A017919

/-- `A018060(2*n)+A018059(2*n)-A018062(2*n)` -/
def P16174425310763829452.Spec : Prop :=
  ∀ n, P16174425310763829452.a n = A017919 n

end A017919

/-! ## A017919.P17139521945617765084

`ceil(sqrt(∏{p}[n+1, #]+5^n))-1`
-/

namespace A017919.P17139521945617765084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n), p + 5 ^ n : ℕ) : ℝ)⌉ - 1

end

end A017919.P17139521945617765084

namespace A017919

/-- `ceil(sqrt(∏{p}[n+1, #]+5^n))-1` -/
def P17139521945617765084.Spec : Prop :=
  ∀ n, P17139521945617765084.a n = A017919 n

end A017919

/-! ## A017919.P15189570988520165099

`ceil(sqrt(5^n+∏{e}[n+1, #+1]+1))-1`
-/

namespace A017919.P15189570988520165099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((5 ^ n + (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1) : ℕ) : ℝ)⌉ - 1

end

end A017919.P15189570988520165099

namespace A017919

/-- `ceil(sqrt(5^n+∏{e}[n+1, #+1]+1))-1` -/
def P15189570988520165099.Spec : Prop :=
  ∀ n, P15189570988520165099.a n = A017919 n

end A017919

/-! ## A017919.P3050092401929851869

`record[floor(sqrt(A097756(n+1)))]`
-/

namespace A017919.P3050092401929851869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A097756 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017919.P3050092401929851869

namespace A017919

/-- `record[floor(sqrt(A097756(n+1)))]` -/
def P3050092401929851869.Spec : Prop :=
  ∀ n, P3050092401929851869.a n = A017919 n

end A017919

/-! ## A017919.P13387837590000320495

`ceil(sqrt(5^n+A005117(n+1)+1))-1`
-/

namespace A017919.P13387837590000320495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((5 ^ n : ℤ) + (A005117 (n + 1) + 1) : ℝ)⌉ - 1

end

end A017919.P13387837590000320495

namespace A017919

/-- `ceil(sqrt(5^n+A005117(n+1)+1))-1` -/
def P13387837590000320495.Spec : Prop :=
  ∀ n, P13387837590000320495.a n = A017919 n

end A017919

/-! ## A017919.P12589128101389573580

`ceil(sqrt(5^n+A020639(n+1)+1))-1`
-/

namespace A017919.P12589128101389573580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((5 ^ n : ℤ) + (A020639 (n + 1) + 1) : ℝ)⌉ - 1

end

end A017919.P12589128101389573580

namespace A017919

/-- `ceil(sqrt(5^n+A020639(n+1)+1))-1` -/
def P12589128101389573580.Spec : Prop :=
  ∀ n, P12589128101389573580.a n = A017919 n

end A017919

/-! ## A017919.P12924694654566562391

`record[floor(sqrt(A227076(n)))]`
-/

namespace A017919.P12924694654566562391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A227076 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017919.P12924694654566562391

namespace A017919

/-- `record[floor(sqrt(A227076(n)))]` -/
def P12924694654566562391.Spec : Prop :=
  ∀ n, P12924694654566562391.a n = A017919 n

end A017919

/-!
# A017920: Powers of sqrt(5) rounded to nearest integer.

The programs for A017920, the canonical program `A017920.P15956833670751895637` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017920 has offset 0).

The definition of A017920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017920.P15956833670751895637

`round(5^(n/2))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017920

/-- `round(5^(n/2))` -/
def P15956833670751895637.Spec : Prop :=
  ∀ n, P15956833670751895637.a n = A017920 n

theorem P15956833670751895637.correct : P15956833670751895637.Spec := by
  intro n
  simp only [A017920]

end A017920

/-! ## A017920.P3079118218581363301

`A018058(2*n)`
-/

namespace A017920.P3079118218581363301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018058 (2 * n)

end

end A017920.P3079118218581363301

namespace A017920

/-- `A018058(2*n)` -/
def P3079118218581363301.Spec : Prop :=
  ∀ n, P3079118218581363301.a n = A017920 n

end A017920

/-! ## A017920.P9698834390396254945

`A018058(n+n)%A023487(n)²`
-/

namespace A017920.P9698834390396254945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018058 (n + n)) (A023487 n ^ 2)

end

end A017920.P9698834390396254945

namespace A017920

/-- `A018058(n+n)%A023487(n)²` -/
def P9698834390396254945.Spec : Prop :=
  ∀ n, P9698834390396254945.a n = A017920 n

end A017920

/-! ## A017920.P17049335679523292804

`record[Δ[A022770(n+1)]]`
-/

namespace A017920.P17049335679523292804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022770 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017920.P17049335679523292804

namespace A017920

/-- `record[Δ[A022770(n+1)]]` -/
def P17049335679523292804.Spec : Prop :=
  ∀ n, P17049335679523292804.a n = A017920 n

end A017920

/-! ## A017920.P12530288762018135174

`round(sqrt(5^n))+and(n, char[2*n])`
-/

namespace A017920.P12530288762018135174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (5 ^ n : ℝ)) + (Nat.land n (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A017920.P12530288762018135174

namespace A017920

/-- `round(sqrt(5^n))+and(n, char[2*n])` -/
def P12530288762018135174.Spec : Prop :=
  ∀ n, P12530288762018135174.a n = A017920 n

end A017920

/-! ## A017920.P7280230462814622514

`record[round(sqrt(A097756(n+1)))]`
-/

namespace A017920.P7280230462814622514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A097756 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017920.P7280230462814622514

namespace A017920

/-- `record[round(sqrt(A097756(n+1)))]` -/
def P7280230462814622514.Spec : Prop :=
  ∀ n, P7280230462814622514.a n = A017920 n

end A017920

/-! ## A017920.P6888551654487857128

`abs(1-round(sqrt(A104745(n))))+1`
-/

namespace A017920.P6888551654487857128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - SequenceMachineLib.roundAway (Real.sqrt (A104745 n : ℝ))| + 1

end

end A017920.P6888551654487857128

namespace A017920

/-- `abs(1-round(sqrt(A104745(n))))+1` -/
def P6888551654487857128.Spec : Prop :=
  ∀ n, P6888551654487857128.a n = A017920 n

end A017920

/-! ## A017920.P8968455600634732216

`round(sqrt(5^n))%A183712(n+1)`
-/

namespace A017920.P8968455600634732216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (5 ^ n : ℝ))) (A183712 (n + 1))

end

end A017920.P8968455600634732216

namespace A017920

/-- `round(sqrt(5^n))%A183712(n+1)` -/
def P8968455600634732216.Spec : Prop :=
  ∀ n, P8968455600634732216.a n = A017920 n

end A017920

/-! ## A017920.P10213439096191166027

`floor(A017919(2*n)/A017919(n))`
-/

namespace A017920.P10213439096191166027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017919 (2 * n) : ℚ) / (A017919 n : ℚ)⌋

end

end A017920.P10213439096191166027

namespace A017920

/-- `floor(A017919(2*n)/A017919(n))` -/
def P10213439096191166027.Spec : Prop :=
  ∀ n, P10213439096191166027.a n = A017920 n

end A017920

/-! ## A017920.P898958141519292406

`ceil(A017921(2*n)/A017921(n))`
-/

namespace A017920.P898958141519292406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017921 (2 * n) : ℚ) / (A017921 n : ℚ)⌉

end

end A017920.P898958141519292406

namespace A017920

/-- `ceil(A017921(2*n)/A017921(n))` -/
def P898958141519292406.Spec : Prop :=
  ∀ n, P898958141519292406.a n = A017920 n

end A017920

/-! ## A017920.P11588584894055646875

`record[round(sqrt(A227076(n)))]`
-/

namespace A017920.P11588584894055646875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A227076 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017920.P11588584894055646875

namespace A017920

/-- `record[round(sqrt(A227076(n)))]` -/
def P11588584894055646875.Spec : Prop :=
  ∀ n, P11588584894055646875.a n = A017920 n

end A017920

/-! ## A017920.P17233257726047976108

`record[round(root(A191702(n+1), 2))]`
-/

namespace A017920.P17233257726047976108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A191702 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017920.P17233257726047976108

namespace A017920

/-- `record[round(root(A191702(n+1), 2))]` -/
def P17233257726047976108.Spec : Prop :=
  ∀ n, P17233257726047976108.a n = A017920 n

end A017920

/-!
# A017921: Powers of sqrt(5) rounded up.

The programs for A017921, the canonical program `A017921.P12717952701421239029` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017921 has offset 0).

The definition of A017921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017921.P12717952701421239029

`ceil(sqrt(5^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017921

/-- `ceil(sqrt(5^n))` -/
def P12717952701421239029.Spec : Prop :=
  ∀ n, P12717952701421239029.a n = A017921 n

theorem P12717952701421239029.correct : P12717952701421239029.Spec := by
  intro n
  simp only [A017921]

end A017921

/-! ## A017921.P1608591629318121783

`A018059(2*n)`
-/

namespace A017921.P1608591629318121783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018059 (2 * n)

end

end A017921.P1608591629318121783

namespace A017921

/-- `A018059(2*n)` -/
def P1608591629318121783.Spec : Prop :=
  ∀ n, P1608591629318121783.a n = A017921 n

end A017921

/-! ## A017921.P15404019013583001556

`A017919(n)+and(1, n)`
-/

namespace A017921.P15404019013583001556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017919 n + (Nat.land 1 n : ℤ)

end

end A017921.P15404019013583001556

namespace A017921

/-- `A017919(n)+and(1, n)` -/
def P15404019013583001556.Spec : Prop :=
  ∀ n, P15404019013583001556.a n = A017921 n

end A017921

/-! ## A017921.P4267728183817382855

`A017919(n)+A000035(n)`
-/

namespace A017921.P4267728183817382855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017919 n + A000035 n

end

end A017921.P4267728183817382855

namespace A017921

/-- `A017919(n)+A000035(n)` -/
def P4267728183817382855.Spec : Prop :=
  ∀ n, P4267728183817382855.a n = A017921 n

end A017921

/-! ## A017921.P12902941040516396407

`A017919(n)+Δ[A004526(n)]`
-/

namespace A017921.P12902941040516396407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017919 n + (f1 (n + 1) - f1 n)

end

end A017921.P12902941040516396407

namespace A017921

/-- `A017919(n)+Δ[A004526(n)]` -/
def P12902941040516396407.Spec : Prop :=
  ∀ n, P12902941040516396407.a n = A017921 n

end A017921

/-! ## A017921.P16249301767246554107

`A017919(n)+Δ[A008619(n)]`
-/

namespace A017921.P16249301767246554107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017919 n + (f1 (n + 1) - f1 n)

end

end A017921.P16249301767246554107

namespace A017921

/-- `A017919(n)+Δ[A008619(n)]` -/
def P16249301767246554107.Spec : Prop :=
  ∀ n, P16249301767246554107.a n = A017921 n

end A017921

/-! ## A017921.P17639255439686941405

`A000034(n)+A017919(n)-1`
-/

namespace A017921.P17639255439686941405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (A017919 n - 1)

end

end A017921.P17639255439686941405

namespace A017921

/-- `A000034(n)+A017919(n)-1` -/
def P17639255439686941405.Spec : Prop :=
  ∀ n, P17639255439686941405.a n = A017921 n

end A017921

/-! ## A017921.P1598050727901892064

`A017919(n)+n-A052928(n)`
-/

namespace A017921.P1598050727901892064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017919 n + ((n : ℤ) - A052928 n)

end

end A017921.P1598050727901892064

namespace A017921

/-- `A017919(n)+n-A052928(n)` -/
def P1598050727901892064.Spec : Prop :=
  ∀ n, P1598050727901892064.a n = A017921 n

end A017921

/-! ## A017921.P14420728003860007883

`A017919(n)+Δ[A002265(2*n)]`
-/

namespace A017921.P14420728003860007883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017919 n + (f1 (n + 1) - f1 n)

end

end A017921.P14420728003860007883

namespace A017921

/-- `A017919(n)+Δ[A002265(2*n)]` -/
def P14420728003860007883.Spec : Prop :=
  ∀ n, P14420728003860007883.a n = A017921 n

end A017921

/-! ## A017921.P3361338651165702993

`A166486(2*n)+A018057(2*n)`
-/

namespace A017921.P3361338651165702993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A018057 (2 * n)

end

end A017921.P3361338651165702993

namespace A017921

/-- `A166486(2*n)+A018057(2*n)` -/
def P3361338651165702993.Spec : Prop :=
  ∀ n, P3361338651165702993.a n = A017921 n

end A017921

/-! ## A017921.P2056412585611487510

`A060576(A342410(2*n+1))+A018057(2*n)`
-/

namespace A017921.P2056412585611487510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A342410 (2 * n + 1)).toNat + A018057 (2 * n)

end

end A017921.P2056412585611487510

namespace A017921

/-- `A060576(A342410(2*n+1))+A018057(2*n)` -/
def P2056412585611487510.Spec : Prop :=
  ∀ n, P2056412585611487510.a n = A017921 n

end A017921

/-! ## A017921.P6683465300896271610

`A018057(2*n)+A018062(2*n)-A018060(2*n)`
-/

namespace A017921.P6683465300896271610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018057 (2 * n) + (A018062 (2 * n) - A018060 (2 * n))

end

end A017921.P6683465300896271610

namespace A017921

/-- `A018057(2*n)+A018062(2*n)-A018060(2*n)` -/
def P6683465300896271610.Spec : Prop :=
  ∀ n, P6683465300896271610.a n = A017921 n

end A017921

/-! ## A017921.P13458806515504301112

`A018057(2*n)+A018065(2*n)-A018063(2*n)`
-/

namespace A017921.P13458806515504301112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018057 (2 * n) + (A018065 (2 * n) - A018063 (2 * n))

end

end A017921.P13458806515504301112

namespace A017921

/-- `A018057(2*n)+A018065(2*n)-A018063(2*n)` -/
def P13458806515504301112.Spec : Prop :=
  ∀ n, P13458806515504301112.a n = A017921 n

end A017921

/-! ## A017921.P9547157169227027557

`A018057(2*n)+A018068(2*n)-A018066(2*n)`
-/

namespace A017921.P9547157169227027557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018057 (2 * n) + (A018068 (2 * n) - A018066 (2 * n))

end

end A017921.P9547157169227027557

namespace A017921

/-- `A018057(2*n)+A018068(2*n)-A018066(2*n)` -/
def P9547157169227027557.Spec : Prop :=
  ∀ n, P9547157169227027557.a n = A017921 n

end A017921

/-! ## A017921.P10113874736667106365

`floor(sqrt(A024049(n)))+1`
-/

namespace A017921.P10113874736667106365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A024049 n) + 1

end

end A017921.P10113874736667106365

namespace A017921

/-- `floor(sqrt(A024049(n)))+1` -/
def P10113874736667106365.Spec : Prop :=
  ∀ n, P10113874736667106365.a n = A017921 n

end A017921

/-! ## A017921.P11311979563467919413

`record[ceil(sqrt(A227076(n)))]`
-/

namespace A017921.P11311979563467919413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A227076 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017921.P11311979563467919413

namespace A017921

/-- `record[ceil(sqrt(A227076(n)))]` -/
def P11311979563467919413.Spec : Prop :=
  ∀ n, P11311979563467919413.a n = A017921 n

end A017921

/-!
# A017922: Powers of sqrt(6) rounded down.

The programs for A017922, the canonical program `A017922.P3143830636783746622` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017922 has offset 0).

The definition of A017922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017922.P3143830636783746622

`floor(sqrt(6^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017922

/-- `floor(sqrt(6^n))` -/
def P3143830636783746622.Spec : Prop :=
  ∀ n, (P3143830636783746622.a n : ℤ) = A017922 n

theorem P3143830636783746622.correct : P3143830636783746622.Spec := by
  intro n
  simp only [A017922]

end A017922

/-! ## A017922.P16270271911600505439

`A018060(2*n)`
-/

namespace A017922.P16270271911600505439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018060 (2 * n)

end

end A017922.P16270271911600505439

namespace A017922

/-- `A018060(2*n)` -/
def P16270271911600505439.Spec : Prop :=
  ∀ n, P16270271911600505439.a n = A017922 n

end A017922

/-! ## A017922.P7386479345542454436

`A017924(n)-A000035(n)`
-/

namespace A017922.P7386479345542454436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017924 n - A000035 n

end

end A017922.P7386479345542454436

namespace A017922

/-- `A017924(n)-A000035(n)` -/
def P7386479345542454436.Spec : Prop :=
  ∀ n, P7386479345542454436.a n = A017922 n

end A017922

/-! ## A017922.P953527250316904310

`record[A018060(n)/A000034(n)]`
-/

namespace A017922.P953527250316904310
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018060 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017922.P953527250316904310

namespace A017922

/-- `record[A018060(n)/A000034(n)]` -/
def P953527250316904310.Spec : Prop :=
  ∀ n, P953527250316904310.a n = (A017922 n : ℚ)

end A017922

/-! ## A017922.P12974278509654280467

`A017924(n)-char[A005408(n)]`
-/

namespace A017922.P12974278509654280467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017924 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017922.P12974278509654280467

namespace A017922

/-- `A017924(n)-char[A005408(n)]` -/
def P12974278509654280467.Spec : Prop :=
  ∀ n, P12974278509654280467.a n = A017922 n

end A017922

/-! ## A017922.P6064874288485446535

`record[A018060(n)/A094603(n+1)]`
-/

namespace A017922.P6064874288485446535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018060 n : ℚ) / (A094603 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017922.P6064874288485446535

namespace A017922

/-- `record[A018060(n)/A094603(n+1)]` -/
def P6064874288485446535.Spec : Prop :=
  ∀ n, P6064874288485446535.a n = (A017922 n : ℚ)

end A017922

/-! ## A017922.P8241458047077932111

`record[A018060(n)/(A004442(n)-n)]`
-/

namespace A017922.P8241458047077932111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018060 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017922.P8241458047077932111

namespace A017922

/-- `record[A018060(n)/(A004442(n)-n)]` -/
def P8241458047077932111.Spec : Prop :=
  ∀ n, P8241458047077932111.a n = (A017922 n : ℚ)

end A017922

/-! ## A017922.P2600093615045301004

`A018062(2*n)-A166486(2*n)`
-/

namespace A017922.P2600093615045301004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018062 (2 * n) - A166486 (2 * n)

end

end A017922.P2600093615045301004

namespace A017922

/-- `A018062(2*n)-A166486(2*n)` -/
def P2600093615045301004.Spec : Prop :=
  ∀ n, P2600093615045301004.a n = A017922 n

end A017922

/-! ## A017922.P15014942379257437942

`A289165(A082907(n))+A018060(n+n)`
-/

namespace A017922.P15014942379257437942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289165 (A082907 n).toNat + A018060 (n + n)

end

end A017922.P15014942379257437942

namespace A017922

/-- `A289165(A082907(n))+A018060(n+n)` -/
def P15014942379257437942.Spec : Prop :=
  ∀ n, P15014942379257437942.a n = A017922 n

end A017922

/-! ## A017922.P3046132604349203845

`A018062(2*n)+A018057(2*n)-A018059(2*n)`
-/

namespace A017922.P3046132604349203845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018062 (2 * n) + A018057 (2 * n) - A018059 (2 * n)

end

end A017922.P3046132604349203845

namespace A017922

/-- `A018062(2*n)+A018057(2*n)-A018059(2*n)` -/
def P3046132604349203845.Spec : Prop :=
  ∀ n, P3046132604349203845.a n = A017922 n

end A017922

/-! ## A017922.P3620994793757239273

`A018062(2*n)+A018066(2*n)-A018068(2*n)`
-/

namespace A017922.P3620994793757239273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018062 (2 * n) + (A018066 (2 * n) - A018068 (2 * n))

end

end A017922.P3620994793757239273

namespace A017922

/-- `A018062(2*n)+A018066(2*n)-A018068(2*n)` -/
def P3620994793757239273.Spec : Prop :=
  ∀ n, P3620994793757239273.a n = A017922 n

end A017922

/-! ## A017922.P18287496965420889447

`ceil(sqrt(xor(1, n)+6^n))-1`
-/

namespace A017922.P18287496965420889447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.xor 1 n + 6 ^ n : ℝ)⌉ - 1

end

end A017922.P18287496965420889447

namespace A017922

/-- `ceil(sqrt(xor(1, n)+6^n))-1` -/
def P18287496965420889447.Spec : Prop :=
  ∀ n, P18287496965420889447.a n = A017922 n

end A017922

/-! ## A017922.P3335453859950358142

`ceil(sqrt(A155589(n)+1))-1`
-/

namespace A017922.P3335453859950358142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A155589 n + 1 : ℝ)⌉ - 1

end

end A017922.P3335453859950358142

namespace A017922

/-- `ceil(sqrt(A155589(n)+1))-1` -/
def P3335453859950358142.Spec : Prop :=
  ∀ n, P3335453859950358142.a n = A017922 n

end A017922

/-! ## A017922.P1151600559590768694

`abs(1-ceil(sqrt(A155597(n)+2^n)))`
-/

namespace A017922.P1151600559590768694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ⌈Real.sqrt (A155597 n + (2 ^ n : ℤ) : ℝ)⌉|

end

end A017922.P1151600559590768694

namespace A017922

/-- `abs(1-ceil(sqrt(A155597(n)+2^n)))` -/
def P1151600559590768694.Spec : Prop :=
  ∀ n, P1151600559590768694.a n = A017922 n

end A017922

/-! ## A017922.P15425812080003607149

`ceil(sqrt(comp[A005187(n)+n]+6^n))-1`
-/

namespace A017922.P15425812080003607149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 6 ^ n : ℝ)⌉ - 1

end

end A017922.P15425812080003607149

namespace A017922

/-- `ceil(sqrt(comp[A005187(n)+n]+6^n))-1` -/
def P15425812080003607149.Spec : Prop :=
  ∀ n, P15425812080003607149.a n = A017922 n

end A017922

/-! ## A017922.P13600783089707850228

`ceil(sqrt(A322042(2*(n+1))+6^n))-1`
-/

namespace A017922.P13600783089707850228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A322042 (2 * (n + 1)) + (6 ^ n : ℤ) : ℝ)⌉ - 1

end

end A017922.P13600783089707850228

namespace A017922

/-- `ceil(sqrt(A322042(2*(n+1))+6^n))-1` -/
def P13600783089707850228.Spec : Prop :=
  ∀ n, P13600783089707850228.a n = A017922 n

end A017922

/-!
# A017923: Powers of sqrt(6) rounded to nearest integer.

The programs for A017923, the canonical program `A017923.P4780253269424895750` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017923 has offset 0).

The definition of A017923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017923.P4780253269424895750

`round(6^(n/2))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017923

/-- `round(6^(n/2))` -/
def P4780253269424895750.Spec : Prop :=
  ∀ n, P4780253269424895750.a n = A017923 n

theorem P4780253269424895750.correct : P4780253269424895750.Spec := by
  intro n
  simp only [A017923]

end A017923

/-! ## A017923.P6648797475225327228

`A018061(2*n)`
-/

namespace A017923.P6648797475225327228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018061 (2 * n)

end

end A017923.P6648797475225327228

namespace A017923

/-- `A018061(2*n)` -/
def P6648797475225327228.Spec : Prop :=
  ∀ n, P6648797475225327228.a n = A017923 n

end A017923

/-! ## A017923.P5292120396370931741

`record[A018061(n)/A000034(n)]`
-/

namespace A017923.P5292120396370931741
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018061 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017923.P5292120396370931741

namespace A017923

/-- `record[A018061(n)/A000034(n)]` -/
def P5292120396370931741.Spec : Prop :=
  ∀ n, P5292120396370931741.a n = (A017923 n : ℚ)

end A017923

/-! ## A017923.P5753740603325958091

`record[A018061(n)/A094603(n+1)]`
-/

namespace A017923.P5753740603325958091
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018061 n : ℚ) / (A094603 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017923.P5753740603325958091

namespace A017923

/-- `record[A018061(n)/A094603(n+1)]` -/
def P5753740603325958091.Spec : Prop :=
  ∀ n, P5753740603325958091.a n = (A017923 n : ℚ)

end A017923

/-! ## A017923.P5345015675664886881

`ceil(A000400(n)/A017924(n))`
-/

namespace A017923.P5345015675664886881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000400 n : ℚ) / (A017924 n : ℚ)⌉

end

end A017923.P5345015675664886881

namespace A017923

/-- `ceil(A000400(n)/A017924(n))` -/
def P5345015675664886881.Spec : Prop :=
  ∀ n, P5345015675664886881.a n = A017923 n

end A017923

/-! ## A017923.P14587946377668293333

`ceil(A017924(2*n)/A017924(n))`
-/

namespace A017923.P14587946377668293333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017924 (2 * n) : ℚ) / (A017924 n : ℚ)⌉

end

end A017923.P14587946377668293333

namespace A017923

/-- `ceil(A017924(2*n)/A017924(n))` -/
def P14587946377668293333.Spec : Prop :=
  ∀ n, P14587946377668293333.a n = A017923 n

end A017923

/-! ## A017923.P7729872832028961970

`record[round(sqrt(A330681(n+1)))]`
-/

namespace A017923.P7729872832028961970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A330681 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017923.P7729872832028961970

namespace A017923

/-- `record[round(sqrt(A330681(n+1)))]` -/
def P7729872832028961970.Spec : Prop :=
  ∀ n, P7729872832028961970.a n = A017923 n

end A017923

/-!
# A017924: Powers of sqrt(6) rounded up.

The programs for A017924, the canonical program `A017924.P11130058852722133170` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017924 has offset 0).

The definition of A017924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017924.P11130058852722133170

`ceil(sqrt(6^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017924

/-- `ceil(sqrt(6^n))` -/
def P11130058852722133170.Spec : Prop :=
  ∀ n, P11130058852722133170.a n = A017924 n

theorem P11130058852722133170.correct : P11130058852722133170.Spec := by
  intro n
  simp only [A017924]

end A017924

/-! ## A017924.P3687995388808191053

`A018062(2*n)`
-/

namespace A017924.P3687995388808191053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018062 (2 * n)

end

end A017924.P3687995388808191053

namespace A017924

/-- `A018062(2*n)` -/
def P3687995388808191053.Spec : Prop :=
  ∀ n, P3687995388808191053.a n = A017924 n

end A017924

/-! ## A017924.P13825658219073799983

`A017922(n)+A000035(n)`
-/

namespace A017924.P13825658219073799983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017922 n + A000035 n

end

end A017924.P13825658219073799983

namespace A017924

/-- `A017922(n)+A000035(n)` -/
def P13825658219073799983.Spec : Prop :=
  ∀ n, P13825658219073799983.a n = A017924 n

end A017924

/-! ## A017924.P2269707587227409271

`A018060(2*n)+A000035(n)`
-/

namespace A017924.P2269707587227409271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018060 (2 * n) + A000035 n

end

end A017924.P2269707587227409271

namespace A017924

/-- `A018060(2*n)+A000035(n)` -/
def P2269707587227409271.Spec : Prop :=
  ∀ n, P2269707587227409271.a n = A017924 n

end A017924

/-! ## A017924.P12812987598615656874

`A017922(n)+n-A052928(n)`
-/

namespace A017924.P12812987598615656874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017922 n + ((n : ℤ) - A052928 n)

end

end A017924.P12812987598615656874

namespace A017924

/-- `A017922(n)+n-A052928(n)` -/
def P12812987598615656874.Spec : Prop :=
  ∀ n, P12812987598615656874.a n = A017924 n

end A017924

/-! ## A017924.P810451177924031929

`A018060(2*n)+A000034(n)-1`
-/

namespace A017924.P810451177924031929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018060 (2 * n) + (A000034 n - 1)

end

end A017924.P810451177924031929

namespace A017924

/-- `A018060(2*n)+A000034(n)-1` -/
def P810451177924031929.Spec : Prop :=
  ∀ n, P810451177924031929.a n = A017924 n

end A017924

/-! ## A017924.P16215052224965953641

`A166486(2*n)+A018060(2*n)`
-/

namespace A017924.P16215052224965953641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A018060 (2 * n)

end

end A017924.P16215052224965953641

namespace A017924

/-- `A166486(2*n)+A018060(2*n)` -/
def P16215052224965953641.Spec : Prop :=
  ∀ n, P16215052224965953641.a n = A017924 n

end A017924

/-! ## A017924.P18395301214693721452

`A057353(Δ[A057353(2*n)])+A018060(2*n)`
-/

namespace A017924.P18395301214693721452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (f1 (n + 1) - f1 n).toNat + A018060 (2 * n)

end

end A017924.P18395301214693721452

namespace A017924

/-- `A057353(Δ[A057353(2*n)])+A018060(2*n)` -/
def P18395301214693721452.Spec : Prop :=
  ∀ n, P18395301214693721452.a n = A017924 n

end A017924

/-! ## A017924.P2142993045425915468

`A018053(2*n)+A018060(2*n)-A018051(2*n)`
-/

namespace A017924.P2142993045425915468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018053 (2 * n) + (A018060 (2 * n) - A018051 (2 * n))

end

end A017924.P2142993045425915468

namespace A017924

/-- `A018053(2*n)+A018060(2*n)-A018051(2*n)` -/
def P2142993045425915468.Spec : Prop :=
  ∀ n, P2142993045425915468.a n = A017924 n

end A017924

/-! ## A017924.P2707917253351709684

`A018059(2*n)+A018060(2*n)-A018057(2*n)`
-/

namespace A017924.P2707917253351709684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018059 (2 * n) + (A018060 (2 * n) - A018057 (2 * n))

end

end A017924.P2707917253351709684

namespace A017924

/-- `A018059(2*n)+A018060(2*n)-A018057(2*n)` -/
def P2707917253351709684.Spec : Prop :=
  ∀ n, P2707917253351709684.a n = A017924 n

end A017924

/-! ## A017924.P2697860807576931437

`A057353(2*n+1)+A018060(2*n)-A057353(2*n)`
-/

namespace A017924.P2697860807576931437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * n + 1) + (A018060 (2 * n) - A057353 (2 * n))

end

end A017924.P2697860807576931437

namespace A017924

/-- `A057353(2*n+1)+A018060(2*n)-A057353(2*n)` -/
def P2697860807576931437.Spec : Prop :=
  ∀ n, P2697860807576931437.a n = A017924 n

end A017924

/-! ## A017924.P11389341963319505460

`A018060(2*n)+A018068(2*n)-A018066(2*n)`
-/

namespace A017924.P11389341963319505460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018060 (2 * n) + (A018068 (2 * n) - A018066 (2 * n))

end

end A017924.P11389341963319505460

namespace A017924

/-- `A018060(2*n)+A018068(2*n)-A018066(2*n)` -/
def P11389341963319505460.Spec : Prop :=
  ∀ n, P11389341963319505460.a n = A017924 n

end A017924

/-! ## A017924.P13462478705420009306

`floor(sqrt(A000400(n)-1))+1`
-/

namespace A017924.P13462478705420009306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000400 n - 1) + 1

end

end A017924.P13462478705420009306

namespace A017924

/-- `floor(sqrt(A000400(n)-1))+1` -/
def P13462478705420009306.Spec : Prop :=
  ∀ n, P13462478705420009306.a n = A017924 n

end A017924

/-! ## A017924.P6264207814592581379

`floor(sqrt(6^n-A024493(n)))+1`
-/

namespace A017924.P6264207814592581379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((6 ^ n : ℤ) - A024493 n) + 1

end

end A017924.P6264207814592581379

namespace A017924

/-- `floor(sqrt(6^n-A024493(n)))+1` -/
def P6264207814592581379.Spec : Prop :=
  ∀ n, P6264207814592581379.a n = A017924 n

end A017924

/-! ## A017924.P10162631077551077449

`floor(sqrt(6^n-A000120(n+1)))+1`
-/

namespace A017924.P10162631077551077449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((6 ^ n : ℤ) - A000120 (n + 1)) + 1

end

end A017924.P10162631077551077449

namespace A017924

/-- `floor(sqrt(6^n-A000120(n+1)))+1` -/
def P10162631077551077449.Spec : Prop :=
  ∀ n, P10162631077551077449.a n = A017924 n

end A017924

/-! ## A017924.P383351341735842567

`floor(sqrt(6^n-A059893(n+1)))+1`
-/

namespace A017924.P383351341735842567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((6 ^ n : ℤ) - A059893 (n + 1)) + 1

end

end A017924.P383351341735842567

namespace A017924

/-- `floor(sqrt(6^n-A059893(n+1)))+1` -/
def P383351341735842567.Spec : Prop :=
  ∀ n, P383351341735842567.a n = A017924 n

end A017924

/-! ## A017924.P9593562966616897305

`floor(sqrt(6^n-record[A006530(n+1)]))+1`
-/

namespace A017924.P9593562966616897305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((6 ^ n : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + 1

end

end A017924.P9593562966616897305

namespace A017924

/-- `floor(sqrt(6^n-record[A006530(n+1)]))+1` -/
def P9593562966616897305.Spec : Prop :=
  ∀ n, P9593562966616897305.a n = A017924 n

end A017924

/-!
# A017925: Powers of sqrt(7) rounded down.

The programs for A017925, the canonical program `A017925.P5362820570440638091` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017925 has offset 0).

The definition of A017925 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017925.P5362820570440638091

`floor(sqrt(7^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017925

/-- `floor(sqrt(7^n))` -/
def P5362820570440638091.Spec : Prop :=
  ∀ n, (P5362820570440638091.a n : ℤ) = A017925 n

theorem P5362820570440638091.correct : P5362820570440638091.Spec := by
  intro n
  simp only [A017925]

end A017925

/-! ## A017925.P3150584432238281407

`A018063(2*n)`
-/

namespace A017925.P3150584432238281407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018063 (2 * n)

end

end A017925.P3150584432238281407

namespace A017925

/-- `A018063(2*n)` -/
def P3150584432238281407.Spec : Prop :=
  ∀ n, P3150584432238281407.a n = A017925 n

end A017925

/-! ## A017925.P6760773519852170755

`A017927(n)-n%2`
-/

namespace A017925.P6760773519852170755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017927 n - ((n % 2 : ℕ) : ℤ)

end

end A017925.P6760773519852170755

namespace A017925

/-- `A017927(n)-n%2` -/
def P6760773519852170755.Spec : Prop :=
  ∀ n, P6760773519852170755.a n = A017925 n

end A017925

/-! ## A017925.P6813116628134338202

`A017927(n)-A000035(n)`
-/

namespace A017925.P6813116628134338202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017927 n - A000035 n

end

end A017925.P6813116628134338202

namespace A017925

/-- `A017927(n)-A000035(n)` -/
def P6813116628134338202.Spec : Prop :=
  ∀ n, P6813116628134338202.a n = A017925 n

end A017925

/-! ## A017925.P7010178171235652089

`A017927(n)-log2(A000034(n))`
-/

namespace A017925.P7010178171235652089
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017927 n : ℝ) - Real.logb 2 (A000034 n : ℝ)

end

end A017925.P7010178171235652089

namespace A017925

/-- `A017927(n)-log2(A000034(n))` -/
def P7010178171235652089.Spec : Prop :=
  ∀ n, P7010178171235652089.a n = (A017925 n : ℝ)

end A017925

/-! ## A017925.P2676849954861515229

`A017927(n)-Δ[A004526(n)]`
-/

namespace A017925.P2676849954861515229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017927 n - (f1 (n + 1) - f1 n)

end

end A017925.P2676849954861515229

namespace A017925

/-- `A017927(n)-Δ[A004526(n)]` -/
def P2676849954861515229.Spec : Prop :=
  ∀ n, P2676849954861515229.a n = A017925 n

end A017925

/-! ## A017925.P3857106533350262884

`A017927(n)-char[A005408(n)]`
-/

namespace A017925.P3857106533350262884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017927 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017925.P3857106533350262884

namespace A017925

/-- `A017927(n)-char[A005408(n)]` -/
def P3857106533350262884.Spec : Prop :=
  ∀ n, P3857106533350262884.a n = A017925 n

end A017925

/-! ## A017925.P11689312406390197631

`A017927(n)-and(1, A001015(n))`
-/

namespace A017925.P11689312406390197631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017927 n - Int.land 1 (A001015 n)

end

end A017925.P11689312406390197631

namespace A017925

/-- `A017927(n)-and(1, A001015(n))` -/
def P11689312406390197631.Spec : Prop :=
  ∀ n, P11689312406390197631.a n = A017925 n

end A017925

/-! ## A017925.P4101212642548645092

`A018065(2*n)-A166486(n²)`
-/

namespace A017925.P4101212642548645092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018065 (2 * n) - A166486 (n ^ 2)

end

end A017925.P4101212642548645092

namespace A017925

/-- `A018065(2*n)-A166486(n²)` -/
def P4101212642548645092.Spec : Prop :=
  ∀ n, P4101212642548645092.a n = A017925 n

end A017925

/-! ## A017925.P8278835923101327620

`A017927(n)-(A106249(Δ[n²])-n)`
-/

namespace A017925.P8278835923101327620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017927 n - (A106249 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ))

end

end A017925.P8278835923101327620

namespace A017925

/-- `A017927(n)-(A106249(Δ[n²])-n)` -/
def P8278835923101327620.Spec : Prop :=
  ∀ n, P8278835923101327620.a n = A017925 n

end A017925

/-! ## A017925.P12854502460987019920

`A017927(n)+1-Δ[A001651(n+1)]`
-/

namespace A017925.P12854502460987019920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017927 n + (1 - (f1 (n + 1) - f1 n))

end

end A017925.P12854502460987019920

namespace A017925

/-- `A017927(n)+1-Δ[A001651(n+1)]` -/
def P12854502460987019920.Spec : Prop :=
  ∀ n, P12854502460987019920.a n = A017925 n

end A017925

/-! ## A017925.P15796863612808749076

`A017927(n)-A057979(A006519(n+1))`
-/

namespace A017925.P15796863612808749076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017927 n - A057979 (A006519 (n + 1)).toNat

end

end A017925.P15796863612808749076

namespace A017925

/-- `A017927(n)-A057979(A006519(n+1))` -/
def P15796863612808749076.Spec : Prop :=
  ∀ n, P15796863612808749076.a n = A017925 n

end A017925

/-! ## A017925.P9814753965402329783

`A017927(n)-A106249(Δ[A001651(n+1)])`
-/

namespace A017925.P9814753965402329783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017927 n - A106249 (f1 (n + 1) - f1 n).toNat

end

end A017925.P9814753965402329783

namespace A017925

/-- `A017927(n)-A106249(Δ[A001651(n+1)])` -/
def P9814753965402329783.Spec : Prop :=
  ∀ n, P9814753965402329783.a n = A017925 n

end A017925

/-! ## A017925.P10903691676297525122

`A018057(2*n)+A018065(2*n)-A018059(2*n)`
-/

namespace A017925.P10903691676297525122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018057 (2 * n) + (A018065 (2 * n) - A018059 (2 * n))

end

end A017925.P10903691676297525122

namespace A017925

/-- `A018057(2*n)+A018065(2*n)-A018059(2*n)` -/
def P10903691676297525122.Spec : Prop :=
  ∀ n, P10903691676297525122.a n = A017925 n

end A017925

/-! ## A017925.P3366492044909088516

`A018065(2*n)-A166486(2*n+1)*A166486(2*n)`
-/

namespace A017925.P3366492044909088516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018065 (2 * n) - A166486 (2 * n + 1) * A166486 (2 * n)

end

end A017925.P3366492044909088516

namespace A017925

/-- `A018065(2*n)-A166486(2*n+1)*A166486(2*n)` -/
def P3366492044909088516.Spec : Prop :=
  ∀ n, P3366492044909088516.a n = A017925 n

end A017925

/-! ## A017925.P4668059275003810360

`A018065(2*n)+A018066(2*n)-A018068(2*n)`
-/

namespace A017925.P4668059275003810360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018065 (2 * n) + (A018066 (2 * n) - A018068 (2 * n))

end

end A017925.P4668059275003810360

namespace A017925

/-- `A018065(2*n)+A018066(2*n)-A018068(2*n)` -/
def P4668059275003810360.Spec : Prop :=
  ∀ n, P4668059275003810360.a n = A017925 n

end A017925

/-! ## A017925.P4916748492881950658

`A018065(2*n)+A018075(2*n)-A018077(2*n)`
-/

namespace A017925.P4916748492881950658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018065 (2 * n) + (A018075 (2 * n) - A018077 (2 * n))

end

end A017925.P4916748492881950658

namespace A017925

/-- `A018065(2*n)+A018075(2*n)-A018077(2*n)` -/
def P4916748492881950658.Spec : Prop :=
  ∀ n, P4916748492881950658.a n = A017925 n

end A017925

/-! ## A017925.P6965594442026261732

`ceil(sqrt(A000420(n)+1+n))-1`
-/

namespace A017925.P6965594442026261732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000420 n + 1 + (n : ℤ) : ℝ)⌉ - 1

end

end A017925.P6965594442026261732

namespace A017925

/-- `ceil(sqrt(A000420(n)+1+n))-1` -/
def P6965594442026261732.Spec : Prop :=
  ∀ n, P6965594442026261732.a n = A017925 n

end A017925

/-! ## A017925.P5971106861243789045

`A017927(n)-A057979(A057979(n²))`
-/

namespace A017925.P5971106861243789045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017927 n - A057979 (A057979 (n ^ 2)).toNat

end

end A017925.P5971106861243789045

namespace A017925

/-- `A017927(n)-A057979(A057979(n²))` -/
def P5971106861243789045.Spec : Prop :=
  ∀ n, P5971106861243789045.a n = A017925 n

end A017925

/-!
# A017926: Powers of sqrt(7) rounded to nearest integer.

The programs for A017926, the canonical program `A017926.P13722127793896628655` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017926 has offset 0).

The definition of A017926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017926.P13722127793896628655

`round(7^(n/2))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017926

/-- `round(7^(n/2))` -/
def P13722127793896628655.Spec : Prop :=
  ∀ n, P13722127793896628655.a n = A017926 n

theorem P13722127793896628655.correct : P13722127793896628655.Spec := by
  intro n
  simp only [A017926]

end A017926

/-! ## A017926.P5979571115396652456

`A018064(2*n)`
-/

namespace A017926.P5979571115396652456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018064 (2 * n)

end

end A017926.P5979571115396652456

namespace A017926

/-- `A018064(2*n)` -/
def P5979571115396652456.Spec : Prop :=
  ∀ n, P5979571115396652456.a n = A017926 n

end A017926

/-! ## A017926.P12851844769542659958

`record[A018064(A014681(n))]`
-/

namespace A017926.P12851844769542659958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018064 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017926.P12851844769542659958

namespace A017926

/-- `record[A018064(A014681(n))]` -/
def P12851844769542659958.Spec : Prop :=
  ∀ n, P12851844769542659958.a n = A017926 n

end A017926

/-! ## A017926.P8084309786831208188

`record[A018064(n)/A000034(n)]`
-/

namespace A017926.P8084309786831208188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018064 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017926.P8084309786831208188

namespace A017926

/-- `record[A018064(n)/A000034(n)]` -/
def P8084309786831208188.Spec : Prop :=
  ∀ n, P8084309786831208188.a n = (A017926 n : ℚ)

end A017926

/-! ## A017926.P13560460677615050195

`record[Δ[A022771(n+1)]]`
-/

namespace A017926.P13560460677615050195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022771 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017926.P13560460677615050195

namespace A017926

/-- `record[Δ[A022771(n+1)]]` -/
def P13560460677615050195.Spec : Prop :=
  ∀ n, P13560460677615050195.a n = A017926 n

end A017926

/-! ## A017926.P4217598888692437931

`abs(1-round(sqrt(A000420(n))))+1`
-/

namespace A017926.P4217598888692437931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - SequenceMachineLib.roundAway (Real.sqrt (A000420 n : ℝ))| + 1

end

end A017926.P4217598888692437931

namespace A017926

/-- `abs(1-round(sqrt(A000420(n))))+1` -/
def P4217598888692437931.Spec : Prop :=
  ∀ n, P4217598888692437931.a n = A017926 n

end A017926

/-! ## A017926.P14056097595563062772

`floor(A000420(n)/A017925(n))`
-/

namespace A017926.P14056097595563062772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000420 n : ℚ) / (A017925 n : ℚ)⌋

end

end A017926.P14056097595563062772

namespace A017926

/-- `floor(A000420(n)/A017925(n))` -/
def P14056097595563062772.Spec : Prop :=
  ∀ n, P14056097595563062772.a n = A017926 n

end A017926

/-! ## A017926.P1548083574477868570

`ceil(A000420(n)/A017927(n))`
-/

namespace A017926.P1548083574477868570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000420 n : ℚ) / (A017927 n : ℚ)⌉

end

end A017926.P1548083574477868570

namespace A017926

/-- `ceil(A000420(n)/A017927(n))` -/
def P1548083574477868570.Spec : Prop :=
  ∀ n, P1548083574477868570.a n = A017926 n

end A017926

/-! ## A017926.P15666939207969938383

`floor(A017925(2*n)/A017925(n))`
-/

namespace A017926.P15666939207969938383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017925 (2 * n) : ℚ) / (A017925 n : ℚ)⌋

end

end A017926.P15666939207969938383

namespace A017926

/-- `floor(A017925(2*n)/A017925(n))` -/
def P15666939207969938383.Spec : Prop :=
  ∀ n, P15666939207969938383.a n = A017926 n

end A017926

/-! ## A017926.P825139944955858172

`ceil(A017927(2*n)/A017927(n))`
-/

namespace A017926.P825139944955858172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017927 (2 * n) : ℚ) / (A017927 n : ℚ)⌉

end

end A017926.P825139944955858172

namespace A017926

/-- `ceil(A017927(2*n)/A017927(n))` -/
def P825139944955858172.Spec : Prop :=
  ∀ n, P825139944955858172.a n = A017926 n

end A017926

/-! ## A017926.P709741037841730185

`round(sqrt(A000420(n)))%A133510(n+1)`
-/

namespace A017926.P709741037841730185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A000420 n : ℝ))) (A133510 (n + 1))

end

end A017926.P709741037841730185

namespace A017926

/-- `round(sqrt(A000420(n)))%A133510(n+1)` -/
def P709741037841730185.Spec : Prop :=
  ∀ n, P709741037841730185.a n = A017926 n

end A017926

/-! ## A017926.P4438702787170808741

`floor(A017927(2*n)/A018063(2*n))`
-/

namespace A017926.P4438702787170808741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017927 (2 * n) : ℚ) / (A018063 (2 * n) : ℚ)⌋

end

end A017926.P4438702787170808741

namespace A017926

/-- `floor(A017927(2*n)/A018063(2*n))` -/
def P4438702787170808741.Spec : Prop :=
  ∀ n, P4438702787170808741.a n = A017926 n

end A017926

/-! ## A017926.P6914333001283346096

`floor(sqrt(A018065(2*n)+A017927(2*n)))`
-/

namespace A017926.P6914333001283346096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018065 (2 * n) + A017927 (2 * n))

end

end A017926.P6914333001283346096

namespace A017926

/-- `floor(sqrt(A018065(2*n)+A017927(2*n)))` -/
def P6914333001283346096.Spec : Prop :=
  ∀ n, P6914333001283346096.a n = A017926 n

end A017926

/-! ## A017926.P16271899735540502880

`round(sqrt(A103458(n)))%A198965(n)`
-/

namespace A017926.P16271899735540502880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A103458 n : ℝ))) (A198965 n)

end

end A017926.P16271899735540502880

namespace A017926

/-- `round(sqrt(A103458(n)))%A198965(n)` -/
def P16271899735540502880.Spec : Prop :=
  ∀ n, P16271899735540502880.a n = A017926 n

end A017926

/-!
# A017927: Powers of sqrt(7) rounded up.

The programs for A017927, the canonical program `A017927.P6728662461545588756` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017927 has offset 0).

The definition of A017927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017927.P6728662461545588756

`ceil(sqrt(7^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017927

/-- `ceil(sqrt(7^n))` -/
def P6728662461545588756.Spec : Prop :=
  ∀ n, P6728662461545588756.a n = A017927 n

theorem P6728662461545588756.correct : P6728662461545588756.Spec := by
  intro n
  simp only [A017927]

end A017927

/-! ## A017927.P12803498920362295773

`A018065(2*n)`
-/

namespace A017927.P12803498920362295773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018065 (2 * n)

end

end A017927.P12803498920362295773

namespace A017927

/-- `A018065(2*n)` -/
def P12803498920362295773.Spec : Prop :=
  ∀ n, P12803498920362295773.a n = A017927 n

end A017927

/-! ## A017927.P6137314839347865633

`A017925(n)+n%2`
-/

namespace A017927.P6137314839347865633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017925 n + ((n % 2 : ℕ) : ℤ)

end

end A017927.P6137314839347865633

namespace A017927

/-- `A017925(n)+n%2` -/
def P6137314839347865633.Spec : Prop :=
  ∀ n, P6137314839347865633.a n = A017927 n

end A017927

/-! ## A017927.P10860603416771121463

`A018063(2*n)+char[2*n+1]`
-/

namespace A017927.P10860603416771121463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018063 (2 * n) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A017927.P10860603416771121463

namespace A017927

/-- `A018063(2*n)+char[2*n+1]` -/
def P10860603416771121463.Spec : Prop :=
  ∀ n, P10860603416771121463.a n = A017927 n

end A017927

/-! ## A017927.P8287937637017523201

`A017925(n)+A000035(n)`
-/

namespace A017927.P8287937637017523201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017925 n + A000035 n

end

end A017927.P8287937637017523201

namespace A017927

/-- `A017925(n)+A000035(n)` -/
def P8287937637017523201.Spec : Prop :=
  ∀ n, P8287937637017523201.a n = A017927 n

end A017927

/-! ## A017927.P8953390263928555479

`A017925(n)+Δ[A004526(n)]`
-/

namespace A017927.P8953390263928555479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017925 n + (f1 (n + 1) - f1 n)

end

end A017927.P8953390263928555479

namespace A017927

/-- `A017925(n)+Δ[A004526(n)]` -/
def P8953390263928555479.Spec : Prop :=
  ∀ n, P8953390263928555479.a n = A017927 n

end A017927

/-! ## A017927.P13675207333583011923

`A017925(n)+Δ[A008619(n)]`
-/

namespace A017927.P13675207333583011923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017925 n + (f1 (n + 1) - f1 n)

end

end A017927.P13675207333583011923

namespace A017927

/-- `A017925(n)+Δ[A008619(n)]` -/
def P13675207333583011923.Spec : Prop :=
  ∀ n, P13675207333583011923.a n = A017927 n

end A017927

/-! ## A017927.P12942210488375907535

`A166486(n²)+A018063(2*n)`
-/

namespace A017927.P12942210488375907535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (n ^ 2) + A018063 (2 * n)

end

end A017927.P12942210488375907535

namespace A017927

/-- `A166486(n²)+A018063(2*n)` -/
def P12942210488375907535.Spec : Prop :=
  ∀ n, P12942210488375907535.a n = A017927 n

end A017927

/-! ## A017927.P16004864844502955168

`A017925(n)-A131736(A016777(n))`
-/

namespace A017927.P16004864844502955168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017925 n - A131736 (A016777 n).toNat

end

end A017927.P16004864844502955168

namespace A017927

/-- `A017925(n)-A131736(A016777(n))` -/
def P16004864844502955168.Spec : Prop :=
  ∀ n, P16004864844502955168.a n = A017927 n

end A017927

/-! ## A017927.P1671048097182318893

`A133872(A144396(n+1))+A017925(n)`
-/

namespace A017927.P1671048097182318893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A144396 (n + 1)).toNat + A017925 n

end

end A017927.P1671048097182318893

namespace A017927

/-- `A133872(A144396(n+1))+A017925(n)` -/
def P1671048097182318893.Spec : Prop :=
  ∀ n, P1671048097182318893.a n = A017927 n

end A017927

/-! ## A017927.P6648398311877549789

`A057353(Δ[A057353(2*n)])+A018063(2*n)`
-/

namespace A017927.P6648398311877549789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (f1 (n + 1) - f1 n).toNat + A018063 (2 * n)

end

end A017927.P6648398311877549789

namespace A017927

/-- `A057353(Δ[A057353(2*n)])+A018063(2*n)` -/
def P6648398311877549789.Spec : Prop :=
  ∀ n, P6648398311877549789.a n = A017927 n

end A017927

/-! ## A017927.P2297506302133832890

`A018062(2*n)+A018063(2*n)-A018060(2*n)`
-/

namespace A017927.P2297506302133832890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018062 (2 * n) + (A018063 (2 * n) - A018060 (2 * n))

end

end A017927.P2297506302133832890

namespace A017927

/-- `A018062(2*n)+A018063(2*n)-A018060(2*n)` -/
def P2297506302133832890.Spec : Prop :=
  ∀ n, P2297506302133832890.a n = A017927 n

end A017927

/-! ## A017927.P14771277025660966971

`A057353(2*n+1)+A018063(2*n)-A057353(2*n)`
-/

namespace A017927.P14771277025660966971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * n + 1) + (A018063 (2 * n) - A057353 (2 * n))

end

end A017927.P14771277025660966971

namespace A017927

/-- `A057353(2*n+1)+A018063(2*n)-A057353(2*n)` -/
def P14771277025660966971.Spec : Prop :=
  ∀ n, P14771277025660966971.a n = A017927 n

end A017927

/-! ## A017927.P13180980688526227371

`floor(sqrt(A155598(n)-1))+1`
-/

namespace A017927.P13180980688526227371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A155598 n - 1) + 1

end

end A017927.P13180980688526227371

namespace A017927

/-- `floor(sqrt(A155598(n)-1))+1` -/
def P13180980688526227371.Spec : Prop :=
  ∀ n, P13180980688526227371.a n = A017927 n

end A017927

/-! ## A017927.P2449207137769294801

`floor(sqrt(7^n-A000027(n+1)))+1`
-/

namespace A017927.P2449207137769294801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((7 ^ n : ℤ) - A000027 (n + 1)) + 1

end

end A017927.P2449207137769294801

namespace A017927

/-- `floor(sqrt(7^n-A000027(n+1)))+1` -/
def P2449207137769294801.Spec : Prop :=
  ∀ n, P2449207137769294801.a n = A017927 n

end A017927

/-! ## A017927.P18365584054878764181

`floor(sqrt(7^n-A003963(n+1)))+1`
-/

namespace A017927.P18365584054878764181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((7 ^ n : ℤ) - A003963 (n + 1)) + 1

end

end A017927.P18365584054878764181

namespace A017927

/-- `floor(sqrt(7^n-A003963(n+1)))+1` -/
def P18365584054878764181.Spec : Prop :=
  ∀ n, P18365584054878764181.a n = A017927 n

end A017927

/-! ## A017927.P12958141341517199362

`floor(sqrt(7^n-A327939(n+1)))+1`
-/

namespace A017927.P12958141341517199362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((7 ^ n : ℤ) - A327939 (n + 1)) + 1

end

end A017927.P12958141341517199362

namespace A017927

/-- `floor(sqrt(7^n-A327939(n+1)))+1` -/
def P12958141341517199362.Spec : Prop :=
  ∀ n, P12958141341517199362.a n = A017927 n

end A017927

/-! ## A017927.P10516716966012379470

`floor(A057427(n)+sqrt(A155598(n)))`
-/

namespace A017927.P10516716966012379470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n : ℝ) + Real.sqrt (A155598 n : ℝ)⌋

end

end A017927.P10516716966012379470

namespace A017927

/-- `floor(A057427(n)+sqrt(A155598(n)))` -/
def P10516716966012379470.Spec : Prop :=
  ∀ n, P10516716966012379470.a n = A017927 n

end A017927

/-! ## A017927.P13669228432928167352

`A133872(n²+3)+A017925(n)`
-/

namespace A017927.P13669228432928167352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (n ^ 2 + 3) + A017925 n

end

end A017927.P13669228432928167352

namespace A017927

/-- `A133872(n²+3)+A017925(n)` -/
def P13669228432928167352.Spec : Prop :=
  ∀ n, P13669228432928167352.a n = A017927 n

end A017927

/-!
# A017928: Powers of sqrt(8) rounded down.

The programs for A017928, the canonical program `A017928.P9559625745466745229` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017928 has offset 0).

The definition of A017928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017928.P9559625745466745229

`A017910(3*n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A017928

/-- `A017910(3*n)` -/
def P9559625745466745229.Spec : Prop :=
  ∀ n, P9559625745466745229.a n = A017928 n

theorem P9559625745466745229.correct : P9559625745466745229.Spec := by
  intro n
  simp only [A017928]

end A017928

/-! ## A017928.P2171232995104834178

`floor(sqrt(8^n))`
-/

namespace A017928.P2171232995104834178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (8 ^ n)

end

end A017928.P2171232995104834178

namespace A017928

/-- `floor(sqrt(8^n))` -/
def P2171232995104834178.Spec : Prop :=
  ∀ n, (P2171232995104834178.a n : ℤ) = A017928 n

end A017928

/-! ## A017928.P1955562198238526881

`A018066(2*n)`
-/

namespace A017928.P1955562198238526881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018066 (2 * n)

end

end A017928.P1955562198238526881

namespace A017928

/-- `A018066(2*n)` -/
def P1955562198238526881.Spec : Prop :=
  ∀ n, P1955562198238526881.a n = A017928 n

end A017928

/-! ## A017928.P11359417814321848289

`A018048(6*n)`
-/

namespace A017928.P11359417814321848289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018048 (6 * n)

end

end A017928.P11359417814321848289

namespace A017928

/-- `A018048(6*n)` -/
def P11359417814321848289.Spec : Prop :=
  ∀ n, P11359417814321848289.a n = A017928 n

end A017928

/-! ## A017928.P4451678864223314250

`A136417(3*n)-1`
-/

namespace A017928.P4451678864223314250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136417 (3 * n) - 1

end

end A017928.P4451678864223314250

namespace A017928

/-- `A136417(3*n)-1` -/
def P4451678864223314250.Spec : Prop :=
  ∀ n, P4451678864223314250.a n = A017928 n

end A017928

/-! ## A017928.P3553066111609533345

`A018068(2*n)-and(1, n)`
-/

namespace A017928.P3553066111609533345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018068 (2 * n) - (Nat.land 1 n : ℤ)

end

end A017928.P3553066111609533345

namespace A017928

/-- `A018068(2*n)-and(1, n)` -/
def P3553066111609533345.Spec : Prop :=
  ∀ n, P3553066111609533345.a n = A017928 n

end A017928

/-! ## A017928.P15385730179025190554

`A017930(n)-A000035(n)`
-/

namespace A017928.P15385730179025190554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017930 n - A000035 n

end

end A017928.P15385730179025190554

namespace A017928

/-- `A017930(n)-A000035(n)` -/
def P15385730179025190554.Spec : Prop :=
  ∀ n, P15385730179025190554.a n = A017928 n

end A017928

/-! ## A017928.P521848685022848575

`A017930(n)-A056594(n+1)²`
-/

namespace A017928.P521848685022848575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017930 n - A056594 (n + 1) ^ 2

end

end A017928.P521848685022848575

namespace A017928

/-- `A017930(n)-A056594(n+1)²` -/
def P521848685022848575.Spec : Prop :=
  ∀ n, P521848685022848575.a n = A017928 n

end A017928

/-! ## A017928.P5036134078518052755

`A018068(2*n)-A166486(n²)`
-/

namespace A017928.P5036134078518052755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018068 (2 * n) - A166486 (n ^ 2)

end

end A017928.P5036134078518052755

namespace A017928

/-- `A018068(2*n)-A166486(n²)` -/
def P5036134078518052755.Spec : Prop :=
  ∀ n, P5036134078518052755.a n = A017928 n

end A017928

/-! ## A017928.P9758849348937980457

`A188917(3*n)-A110654(3*n)`
-/

namespace A017928.P9758849348937980457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188917 (3 * n) - A110654 (3 * n)

end

end A017928.P9758849348937980457

namespace A017928

/-- `A188917(3*n)-A110654(3*n)` -/
def P9758849348937980457.Spec : Prop :=
  ∀ n, P9758849348937980457.a n = A017928 n

end A017928

/-! ## A017928.P1963717785337949118

`A188917(3*n)-A004526(3*n+1)`
-/

namespace A017928.P1963717785337949118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188917 (3 * n) - A004526 (3 * n + 1)

end

end A017928.P1963717785337949118

namespace A017928

/-- `A188917(3*n)-A004526(3*n+1)` -/
def P1963717785337949118.Spec : Prop :=
  ∀ n, P1963717785337949118.a n = A017928 n

end A017928

/-! ## A017928.P14686314118632677820

`A017910(n)+A017930(n)-A017912(n)`
-/

namespace A017928.P14686314118632677820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 n + (A017930 n - A017912 n)

end

end A017928.P14686314118632677820

namespace A017928

/-- `A017910(n)+A017930(n)-A017912(n)` -/
def P14686314118632677820.Spec : Prop :=
  ∀ n, P14686314118632677820.a n = A017928 n

end A017928

/-! ## A017928.P18398580872737785487

`A018057(2*n)+A018068(2*n)-A018059(2*n)`
-/

namespace A017928.P18398580872737785487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018057 (2 * n) + (A018068 (2 * n) - A018059 (2 * n))

end

end A017928.P18398580872737785487

namespace A017928

/-- `A018057(2*n)+A018068(2*n)-A018059(2*n)` -/
def P18398580872737785487.Spec : Prop :=
  ∀ n, P18398580872737785487.a n = A017928 n

end A017928

/-! ## A017928.P1084179546276262708

`A018060(2*n)+A018068(2*n)-A018062(2*n)`
-/

namespace A017928.P1084179546276262708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018060 (2 * n) + (A018068 (2 * n) - A018062 (2 * n))

end

end A017928.P1084179546276262708

namespace A017928

/-- `A018060(2*n)+A018068(2*n)-A018062(2*n)` -/
def P1084179546276262708.Spec : Prop :=
  ∀ n, P1084179546276262708.a n = A017928 n

end A017928

/-! ## A017928.P15932002088145411808

`A018063(2*n)+A018068(2*n)-A018065(2*n)`
-/

namespace A017928.P15932002088145411808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018063 (2 * n) + (A018068 (2 * n) - A018065 (2 * n))

end

end A017928.P15932002088145411808

namespace A017928

/-- `A018063(2*n)+A018068(2*n)-A018065(2*n)` -/
def P15932002088145411808.Spec : Prop :=
  ∀ n, P15932002088145411808.a n = A017928 n

end A017928

/-! ## A017928.P17737423250180902774

`A189996(2*n+1)+A018068(2*n)-A189996(2*n)`
-/

namespace A017928.P17737423250180902774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189996 (2 * n + 1) + (A018068 (2 * n) - A189996 (2 * n))

end

end A017928.P17737423250180902774

namespace A017928

/-- `A189996(2*n+1)+A018068(2*n)-A189996(2*n)` -/
def P17737423250180902774.Spec : Prop :=
  ∀ n, P17737423250180902774.a n = A017928 n

end A017928

/-! ## A017928.P13101449356420714229

`A018068(2*n)-A166486(2*n+1)*A166486(2*n)`
-/

namespace A017928.P13101449356420714229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018068 (2 * n) - A166486 (2 * n + 1) * A166486 (2 * n)

end

end A017928.P13101449356420714229

namespace A017928

/-- `A018068(2*n)-A166486(2*n+1)*A166486(2*n)` -/
def P13101449356420714229.Spec : Prop :=
  ∀ n, P13101449356420714229.a n = A017928 n

end A017928

/-! ## A017928.P1671593766550858946

`A018068(2*n)+A018072(2*n)-A018074(2*n)`
-/

namespace A017928.P1671593766550858946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018068 (2 * n) + (A018072 (2 * n) - A018074 (2 * n))

end

end A017928.P1671593766550858946

namespace A017928

/-- `A018068(2*n)+A018072(2*n)-A018074(2*n)` -/
def P1671593766550858946.Spec : Prop :=
  ∀ n, P1671593766550858946.a n = A017928 n

end A017928

/-! ## A017928.P7079030598956099205

`ceil(sqrt(A000051(3*n)))-1`
-/

namespace A017928.P7079030598956099205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000051 (3 * n) : ℝ)⌉ - 1

end

end A017928.P7079030598956099205

namespace A017928

/-- `ceil(sqrt(A000051(3*n)))-1` -/
def P7079030598956099205.Spec : Prop :=
  ∀ n, P7079030598956099205.a n = A017928 n

end A017928

/-! ## A017928.P17492917095204657820

`ceil(sqrt(A000225(3*n)+2))-1`
-/

namespace A017928.P17492917095204657820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000225 (3 * n) + 2 : ℝ)⌉ - 1

end

end A017928.P17492917095204657820

namespace A017928

/-- `ceil(sqrt(A000225(3*n)+2))-1` -/
def P17492917095204657820.Spec : Prop :=
  ∀ n, P17492917095204657820.a n = A017928 n

end A017928

/-!
# A017929: Powers of sqrt(8) rounded to nearest integer.

The programs for A017929, the canonical program `A017929.P8245764009525421864` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017929 has offset 0).

The definition of A017929 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017911, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A017929.P8245764009525421864

`A017911(3*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A017929

/-- `A017911(3*n)` -/
def P8245764009525421864.Spec : Prop :=
  ∀ n, P8245764009525421864.a n = A017929 n

theorem P8245764009525421864.correct : P8245764009525421864.Spec := by
  intro n
  simp only [A017929]

end A017929

/-! ## A017929.P14360234516994418480

`round(sqrt(8)^n)`
-/

namespace A017929.P14360234516994418480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (8 : ℝ) ^ n)

end

end A017929.P14360234516994418480

namespace A017929

/-- `round(sqrt(8)^n)` -/
def P14360234516994418480.Spec : Prop :=
  ∀ n, P14360234516994418480.a n = A017929 n

end A017929

/-! ## A017929.P6634616137264884049

`A018067(2*n)`
-/

namespace A017929.P6634616137264884049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018067 (2 * n)

end

end A017929.P6634616137264884049

namespace A017929

/-- `A018067(2*n)` -/
def P6634616137264884049.Spec : Prop :=
  ∀ n, P6634616137264884049.a n = A017929 n

end A017929

/-! ## A017929.P17060777028525897608

`A057048(A008486(n)-1)`
-/

namespace A017929.P17060777028525897608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057048 (A008486 n - 1).toNat

end

end A017929.P17060777028525897608

namespace A017929

/-- `A057048(A008486(n)-1)` -/
def P17060777028525897608.Spec : Prop :=
  ∀ n, P17060777028525897608.a n = A017929 n

end A017929

/-! ## A017929.P3892177282143910622

`A057048(A004273(n)+n)`
-/

namespace A017929.P3892177282143910622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057048 (A004273 n + (n : ℤ)).toNat

end

end A017929.P3892177282143910622

namespace A017929

/-- `A057048(A004273(n)+n)` -/
def P3892177282143910622.Spec : Prop :=
  ∀ n, P3892177282143910622.a n = A017929 n

end A017929

/-! ## A017929.P14955435203550051739

`A057048(A289207(2*n+1)+n)`
-/

namespace A017929.P14955435203550051739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057048 (A289207 (2 * n + 1) + (n : ℤ)).toNat

end

end A017929.P14955435203550051739

namespace A017929

/-- `A057048(A289207(2*n+1)+n)` -/
def P14955435203550051739.Spec : Prop :=
  ∀ n, P14955435203550051739.a n = A017929 n

end A017929

/-! ## A017929.P3789539345756266823

`A017910(3*n+2)-A017928(n)`
-/

namespace A017929.P3789539345756266823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (3 * n + 2) - A017928 n

end

end A017929.P3789539345756266823

namespace A017929

/-- `A017910(3*n+2)-A017928(n)` -/
def P3789539345756266823.Spec : Prop :=
  ∀ n, P3789539345756266823.a n = A017929 n

end A017929

/-! ## A017929.P14479373237217236970

`A018049(6*n)`
-/

namespace A017929.P14479373237217236970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018049 (6 * n)

end

end A017929.P14479373237217236970

namespace A017929

/-- `A018049(6*n)` -/
def P14479373237217236970.Spec : Prop :=
  ∀ n, P14479373237217236970.a n = A017929 n

end A017929

/-! ## A017929.P1646378412052079025

`record[round(sqrt(A131575(3*n+1)))]`
-/

namespace A017929.P1646378412052079025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A131575 (3 * n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017929.P1646378412052079025

namespace A017929

/-- `record[round(sqrt(A131575(3*n+1)))]` -/
def P1646378412052079025.Spec : Prop :=
  ∀ n, P1646378412052079025.a n = A017929 n

end A017929

/-! ## A017929.P3821515110087705246

`floor((sqrt(4*A011782(3*n+1))+1)/2)`
-/

namespace A017929.P3821515110087705246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (4 * A011782 (3 * n + 1) : ℝ) + 1) / 2⌋

end

end A017929.P3821515110087705246

namespace A017929

/-- `floor((sqrt(4*A011782(3*n+1))+1)/2)` -/
def P3821515110087705246.Spec : Prop :=
  ∀ n, P3821515110087705246.a n = A017929 n

end A017929

/-! ## A017929.P3573468774532892447

`ceil(A017930(2*n)/A017930(n))`
-/

namespace A017929.P3573468774532892447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017930 (2 * n) : ℚ) / (A017930 n : ℚ)⌉

end

end A017929.P3573468774532892447

namespace A017929

/-- `ceil(A017930(2*n)/A017930(n))` -/
def P3573468774532892447.Spec : Prop :=
  ∀ n, P3573468774532892447.a n = A017929 n

end A017929

/-!
# A017930: Powers of sqrt(8) rounded up.

The programs for A017930, the canonical program `A017930.P16700928631467315289` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017930 has offset 0).

The definition of A017930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017930.P16700928631467315289

`A017912(3*n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A017930

/-- `A017912(3*n)` -/
def P16700928631467315289.Spec : Prop :=
  ∀ n, P16700928631467315289.a n = A017930 n

theorem P16700928631467315289.correct : P16700928631467315289.Spec := by
  intro n
  simp only [A017930]

end A017930

/-! ## A017930.P5073547520102011349

`ceil(sqrt(8^n))`
-/

namespace A017930.P5073547520102011349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (8 ^ n : ℝ)⌉

end

end A017930.P5073547520102011349

namespace A017930

/-- `ceil(sqrt(8^n))` -/
def P5073547520102011349.Spec : Prop :=
  ∀ n, P5073547520102011349.a n = A017930 n

end A017930

/-! ## A017930.P17275466148975789205

`A018068(2*n)`
-/

namespace A017930.P17275466148975789205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018068 (2 * n)

end

end A017930.P17275466148975789205

namespace A017930

/-- `A018068(2*n)` -/
def P17275466148975789205.Spec : Prop :=
  ∀ n, P17275466148975789205.a n = A017930 n

end A017930

/-! ## A017930.P6532061677407270958

`A018050(6*n)`
-/

namespace A017930.P6532061677407270958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018050 (6 * n)

end

end A017930.P6532061677407270958

namespace A017930

/-- `A018050(6*n)` -/
def P6532061677407270958.Spec : Prop :=
  ∀ n, P6532061677407270958.a n = A017930 n

end A017930

/-! ## A017930.P2453841764587957103

`A017928(n)+and(1, n)`
-/

namespace A017930.P2453841764587957103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017928 n + (Nat.land 1 n : ℤ)

end

end A017930.P2453841764587957103

namespace A017930

/-- `A017928(n)+and(1, n)` -/
def P2453841764587957103.Spec : Prop :=
  ∀ n, P2453841764587957103.a n = A017930 n

end A017930

/-! ## A017930.P13977664777843504928

`A116601(3*n+2)+1`
-/

namespace A017930.P13977664777843504928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116601 (3 * n + 2) + 1

end

end A017930.P13977664777843504928

namespace A017930

/-- `A116601(3*n+2)+1` -/
def P13977664777843504928.Spec : Prop :=
  ∀ n, P13977664777843504928.a n = A017930 n

end A017930

/-! ## A017930.P18395603219000709444

`A017910(3*n)+and(1, n)`
-/

namespace A017930.P18395603219000709444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (3 * n) + (Nat.land 1 n : ℤ)

end

end A017930.P18395603219000709444

namespace A017930

/-- `A017910(3*n)+and(1, n)` -/
def P18395603219000709444.Spec : Prop :=
  ∀ n, P18395603219000709444.a n = A017930 n

end A017930

/-! ## A017930.P4029813831067612269

`record[A018068(n-val(n+1, 2))]`
-/

namespace A017930.P4029813831067612269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018068 (n - SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017930.P4029813831067612269

namespace A017930

/-- `record[A018068(n-val(n+1, 2))]` -/
def P4029813831067612269.Spec : Prop :=
  ∀ n, P4029813831067612269.a n = A017930 n

end A017930

/-! ## A017930.P4148474556048887239

`A017928(n)+A000035(n)`
-/

namespace A017930.P4148474556048887239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017928 n + A000035 n

end

end A017930.P4148474556048887239

namespace A017930

/-- `A017928(n)+A000035(n)` -/
def P4148474556048887239.Spec : Prop :=
  ∀ n, P4148474556048887239.a n = A017930 n

end A017930

/-! ## A017930.P15694155500810757581

`record[A116601(A014682(n))+1]`
-/

namespace A017930.P15694155500810757581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116601 (A014682 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017930.P15694155500810757581

namespace A017930

/-- `record[A116601(A014682(n))+1]` -/
def P15694155500810757581.Spec : Prop :=
  ∀ n, P15694155500810757581.a n = A017930 n

end A017930

/-! ## A017930.P9383745752829879087

`A018066(2*n)+A000035(n)`
-/

namespace A017930.P9383745752829879087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018066 (2 * n) + A000035 n

end

end A017930.P9383745752829879087

namespace A017930

/-- `A018066(2*n)+A000035(n)` -/
def P9383745752829879087.Spec : Prop :=
  ∀ n, P9383745752829879087.a n = A017930 n

end A017930

/-! ## A017930.P3244540603517913255

`A017928(n)+n-A052928(n)`
-/

namespace A017930.P3244540603517913255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017928 n + ((n : ℤ) - A052928 n)

end

end A017930.P3244540603517913255

namespace A017930

/-- `A017928(n)+n-A052928(n)` -/
def P3244540603517913255.Spec : Prop :=
  ∀ n, P3244540603517913255.a n = A017930 n

end A017930

/-! ## A017930.P12432862384491245735

`A018066(2*n)+A166486(n²)`
-/

namespace A017930.P12432862384491245735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018066 (2 * n) + A166486 (n ^ 2)

end

end A017930.P12432862384491245735

namespace A017930

/-- `A018066(2*n)+A166486(n²)` -/
def P12432862384491245735.Spec : Prop :=
  ∀ n, P12432862384491245735.a n = A017930 n

end A017930

/-! ## A017930.P16749625274817156054

`A166486(2*n)+A018066(2*n)`
-/

namespace A017930.P16749625274817156054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A018066 (2 * n)

end

end A017930.P16749625274817156054

namespace A017930

/-- `A166486(2*n)+A018066(2*n)` -/
def P16749625274817156054.Spec : Prop :=
  ∀ n, P16749625274817156054.a n = A017930 n

end A017930

/-! ## A017930.P11035589795492793452

`A188917(3*n)-A004526(3*n)`
-/

namespace A017930.P11035589795492793452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188917 (3 * n) - A004526 (3 * n)

end

end A017930.P11035589795492793452

namespace A017930

/-- `A188917(3*n)-A004526(3*n)` -/
def P11035589795492793452.Spec : Prop :=
  ∀ n, P11035589795492793452.a n = A017930 n

end A017930

/-! ## A017930.P6092930117441933159

`A018059(2*n)+A018066(2*n)-A018057(2*n)`
-/

namespace A017930.P6092930117441933159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018059 (2 * n) + (A018066 (2 * n) - A018057 (2 * n))

end

end A017930.P6092930117441933159

namespace A017930

/-- `A018059(2*n)+A018066(2*n)-A018057(2*n)` -/
def P6092930117441933159.Spec : Prop :=
  ∀ n, P6092930117441933159.a n = A017930 n

end A017930

/-! ## A017930.P14340663585231059405

`A018065(2*n)+A018066(2*n)-A018063(2*n)`
-/

namespace A017930.P14340663585231059405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018065 (2 * n) + (A018066 (2 * n) - A018063 (2 * n))

end

end A017930.P14340663585231059405

namespace A017930

/-- `A018065(2*n)+A018066(2*n)-A018063(2*n)` -/
def P14340663585231059405.Spec : Prop :=
  ∀ n, P14340663585231059405.a n = A017930 n

end A017930

/-! ## A017930.P1664266094449112466

`floor(sqrt(A000225(3*n)))+1`
-/

namespace A017930.P1664266094449112466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000225 (3 * n)) + 1

end

end A017930.P1664266094449112466

namespace A017930

/-- `floor(sqrt(A000225(3*n)))+1` -/
def P1664266094449112466.Spec : Prop :=
  ∀ n, P1664266094449112466.a n = A017930 n

end A017930

/-! ## A017930.P8745595658110031385

`floor(sqrt(A000079(3*n)-1))+1`
-/

namespace A017930.P8745595658110031385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000079 (3 * n) - 1) + 1

end

end A017930.P8745595658110031385

namespace A017930

/-- `floor(sqrt(A000079(3*n)-1))+1` -/
def P8745595658110031385.Spec : Prop :=
  ∀ n, P8745595658110031385.a n = A017930 n

end A017930

/-! ## A017930.P12067898844016993082

`floor(sqrt(A011782(2*n+1+n)-1))+1`
-/

namespace A017930.P12067898844016993082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A011782 (2 * n + 1 + n) - 1) + 1

end

end A017930.P12067898844016993082

namespace A017930

/-- `floor(sqrt(A011782(2*n+1+n)-1))+1` -/
def P12067898844016993082.Spec : Prop :=
  ∀ n, P12067898844016993082.a n = A017930 n

end A017930

/-!
# A017931: Expansion of 1/((1-3x)(1-6x)(1-7x)).

The programs for A017931, the canonical program `A017931.P166563972816194556` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017931 has offset 0).

The definition of A017931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017931.P166563972816194556

`13*a(n-1)-42*a(n-2)+3^n` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017931

/-- `13*a(n-1)-42*a(n-2)+3^n` -/
def P166563972816194556.Spec : Prop :=
  ∀ n, P166563972816194556.a n = A017931 n

theorem P166563972816194556.correct : P166563972816194556.Spec := by
  intro n
  simp only [A017931]

end A017931

/-! ## A017931.P8818767668742623145

`(3*7^(n+2)-4*6^(n+2)+3^(n+2))/12`
-/

namespace A017931.P8818767668742623145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 7 ^ (n + 2) : ℤ) - (4 * 6 ^ (n + 2) : ℤ) + (3 ^ (n + 2) : ℤ) : ℚ) / 12

end

end A017931.P8818767668742623145

namespace A017931

/-- `(3*7^(n+2)-4*6^(n+2)+3^(n+2))/12` -/
def P8818767668742623145.Spec : Prop :=
  ∀ n, P8818767668742623145.a n = (A017931 n : ℚ)

end A017931

/-! ## A017931.P8458353914904959192

`A016137(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A017931.P8458353914904959192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016137 n + 7 * a (n - 1)

end

end A017931.P8458353914904959192

namespace A017931

/-- `A016137(n)+7*a(n-1)` -/
def P8458353914904959192.Spec : Prop :=
  ∀ n, P8458353914904959192.a n = A017931 n

end A017931

/-! ## A017931.P9950420041260513770

`A016138(n+1)-Δ[A016211(n)]`
-/

namespace A017931.P9950420041260513770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016138 (n + 1) - (f1 (n + 1) - f1 n)

end

end A017931.P9950420041260513770

namespace A017931

/-- `A016138(n+1)-Δ[A016211(n)]` -/
def P9950420041260513770.Spec : Prop :=
  ∀ n, P9950420041260513770.a n = A017931 n

end A017931

/-! ## A017931.P3258700512818961981

`A016138(n+1)-A016137(n+1)`
-/

namespace A017931.P3258700512818961981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016138 (n + 1) - A016137 (n + 1)

end

end A017931.P3258700512818961981

namespace A017931

/-- `A016138(n+1)-A016137(n+1)` -/
def P3258700512818961981.Spec : Prop :=
  ∀ n, P3258700512818961981.a n = A017931 n

end A017931

/-! ## A017931.P12727375343477093863

`∑[6*a(n-1)+A199417(n)-A007051(n)]` with `a(0)=1`
-/

namespace A017931.P12727375343477093863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1) + (A199417 n - A007051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017931.P12727375343477093863

namespace A017931

/-- `∑[6*a(n-1)+A199417(n)-A007051(n)]` -/
def P12727375343477093863.Spec : Prop :=
  ∀ n, P12727375343477093863.a n = A017931 n

end A017931

/-! ## A017931.P16423839156762648348

`A016138(n)-Δ[A016211(n)-A016138(n)]`
-/

namespace A017931.P16423839156762648348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016211 n - A016138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016138 n - (f1 (n + 1) - f1 n)

end

end A017931.P16423839156762648348

namespace A017931

/-- `A016138(n)-Δ[A016211(n)-A016138(n)]` -/
def P16423839156762648348.Spec : Prop :=
  ∀ n, P16423839156762648348.a n = A017931 n

end A017931

/-! ## A017931.P9733779442611821290

`Δ[A016212(n)-A016211(n)]`
-/

namespace A017931.P9733779442611821290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016212 n - A016211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017931.P9733779442611821290

namespace A017931

/-- `Δ[A016212(n)-A016211(n)]` -/
def P9733779442611821290.Spec : Prop :=
  ∀ n, P9733779442611821290.a n = A017931 n

end A017931

/-! ## A017931.P8491087424757591480

`Δ[∑[A016138(n)]-A016211(n)]`
-/

namespace A017931.P8491087424757591480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016138 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A016211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017931.P8491087424757591480

namespace A017931

/-- `Δ[∑[A016138(n)]-A016211(n)]` -/
def P8491087424757591480.Spec : Prop :=
  ∀ n, P8491087424757591480.a n = A017931 n

end A017931

/-!
# A017932: Expansion of 1/((1-3x)*(1-6x)*(1-8x)).

The programs for A017932, the canonical program `A017932.P9489432972625233369` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017932 has offset 0).

The definition of A017932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017932.P9489432972625233369

`14*a(n-1)-48*a(n-2)+3^n` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017932

/-- `14*a(n-1)-48*a(n-2)+3^n` -/
def P9489432972625233369.Spec : Prop :=
  ∀ n, P9489432972625233369.a n = A017932 n

theorem P9489432972625233369.correct : P9489432972625233369.Spec := by
  intro n
  simp only [A017932]

end A017932

/-! ## A017932.P1084054917182567305

`(3*8^(n+2)-5*6^(n+2)+2*3^(n+2))/30`
-/

namespace A017932.P1084054917182567305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 8 ^ (n + 2) : ℤ) - (5 * 6 ^ (n + 2) : ℤ) + (2 * 3 ^ (n + 2) : ℤ) : ℚ) / 30

end

end A017932.P1084054917182567305

namespace A017932

/-- `(3*8^(n+2)-5*6^(n+2)+2*3^(n+2))/30` -/
def P1084054917182567305.Spec : Prop :=
  ∀ n, P1084054917182567305.a n = (A017932 n : ℚ)

end A017932

/-! ## A017932.P1168450619454167631

`3^n*∑[2^n]+8*a(n-1)` with `a(0)=1`
-/

namespace A017932.P1168450619454167631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j) + 8 * a (n - 1)

end

end A017932.P1168450619454167631

namespace A017932

/-- `3^n*∑[2^n]+8*a(n-1)` -/
def P1168450619454167631.Spec : Prop :=
  ∀ n, (P1168450619454167631.a n : ℤ) = A017932 n

end A017932

/-! ## A017932.P12373231664354151860

`2*A016170(n)-A016140(n)`
-/

namespace A017932.P12373231664354151860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016170 n - A016140 n

end

end A017932.P12373231664354151860

namespace A017932

/-- `2*A016170(n)-A016140(n)` -/
def P12373231664354151860.Spec : Prop :=
  ∀ n, P12373231664354151860.a n = A017932 n

end A017932

/-! ## A017932.P6951889346434734065

`2*A016170(n)+A016140(n)*A118830(A129926(n+1))`
-/

namespace A017932.P6951889346434734065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016170 n + A016140 n * A118830 (A129926 (n + 1)).toNat

end

end A017932.P6951889346434734065

namespace A017932

/-- `2*A016170(n)+A016140(n)*A118830(A129926(n+1))` -/
def P6951889346434734065.Spec : Prop :=
  ∀ n, P6951889346434734065.a n = A017932 n

end A017932

/-!
# A017933: Expansion of 1/((1-3x)(1-6x)(1-9x)).

The programs for A017933, the canonical program `A017933.P12083879067463320320` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017933 has offset 0).

The definition of A017933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017933.P15950485110287234563

`(3^n-8*6^n+9*9^n)/2`
-/

namespace A017933.P15950485110287234563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - (8 * 6 ^ n : ℤ) + (9 * 9 ^ n : ℤ) : ℚ) / 2

end

end A017933.P15950485110287234563

namespace A017933

/-- `(3^n-8*6^n+9*9^n)/2` -/
def P15950485110287234563.Spec : Prop :=
  ∀ n, P15950485110287234563.a n = (A017933 n : ℚ)

end A017933

/-! ## A017933.P12083879067463320320

`15*a(n-1)-54*a(n-2)+3^n` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017933

/-- `15*a(n-1)-54*a(n-2)+3^n` -/
def P12083879067463320320.Spec : Prop :=
  ∀ n, P12083879067463320320.a n = A017933 n

theorem P12083879067463320320.correct : P12083879067463320320.Spec := by
  intro n
  simp only [A017933]

end A017933

/-! ## A017933.P8952521093094201737

`3^n*A000392(n+3)`
-/

namespace A017933.P8952521093094201737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000392 (n + 3)

end

end A017933.P8952521093094201737

namespace A017933

/-- `3^n*A000392(n+3)` -/
def P8952521093094201737.Spec : Prop :=
  ∀ n, P8952521093094201737.a n = A017933 n

end A017933

/-! ## A017933.P10120168946343437530

`3^n*∑[A001047(n+1)]`
-/

namespace A017933.P10120168946343437530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A017933.P10120168946343437530

namespace A017933

/-- `3^n*∑[A001047(n+1)]` -/
def P10120168946343437530.Spec : Prop :=
  ∀ n, P10120168946343437530.a n = A017933 n

end A017933

/-! ## A017933.P8703136898911123400

`3^(n-1)*A094033(n+3)`
-/

namespace A017933.P8703136898911123400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A094033 (n + 3) : ℚ)

end

end A017933.P8703136898911123400

namespace A017933

/-- `3^(n-1)*A094033(n+3)` -/
def P8703136898911123400.Spec : Prop :=
  ∀ n, P8703136898911123400.a n = (A017933 n : ℚ)

end A017933

/-! ## A017933.P8993852799204619023

`A016137(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A017933.P8993852799204619023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016137 n + 9 * a (n - 1)

end

end A017933.P8993852799204619023

namespace A017933

/-- `A016137(n)+9*a(n-1)` -/
def P8993852799204619023.Spec : Prop :=
  ∀ n, P8993852799204619023.a n = A017933 n

end A017933

/-! ## A017933.P13898610623337939894

`∑[∑[A027649(n)]]*A000244(n)`
-/

namespace A017933.P13898610623337939894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A017933.P13898610623337939894

namespace A017933

/-- `∑[∑[A027649(n)]]*A000244(n)` -/
def P13898610623337939894.Spec : Prop :=
  ∀ n, P13898610623337939894.a n = A017933 n

end A017933

/-! ## A017933.P16439607324869029431

`∑[A001047(n+1)]*A000244(n)`
-/

namespace A017933.P16439607324869029431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A017933.P16439607324869029431

namespace A017933

/-- `∑[A001047(n+1)]*A000244(n)` -/
def P16439607324869029431.Spec : Prop :=
  ∀ n, P16439607324869029431.a n = A017933 n

end A017933

/-! ## A017933.P2440710418416031834

`A000392(n+3)*A056449(2*n)`
-/

namespace A017933.P2440710418416031834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 3) * A056449 (2 * n)

end

end A017933.P2440710418416031834

namespace A017933

/-- `A000392(n+3)*A056449(2*n)` -/
def P2440710418416031834.Spec : Prop :=
  ∀ n, P2440710418416031834.a n = A017933 n

end A017933

/-! ## A017933.P3198276998972474736

`A028243(n+3)/2*A000244(n)`
-/

namespace A017933.P3198276998972474736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028243 (n + 3) : ℚ) / 2 * (A000244 n : ℚ)

end

end A017933.P3198276998972474736

namespace A017933

/-- `A028243(n+3)/2*A000244(n)` -/
def P3198276998972474736.Spec : Prop :=
  ∀ n, P3198276998972474736.a n = (A017933 n : ℚ)

end A017933

/-! ## A017933.P7401378399799712421

`A028243(n+3)/4*A008776(n)`
-/

namespace A017933.P7401378399799712421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028243 (n + 3) : ℚ) / 4 * (A008776 n : ℚ)

end

end A017933.P7401378399799712421

namespace A017933

/-- `A028243(n+3)/4*A008776(n)` -/
def P7401378399799712421.Spec : Prop :=
  ∀ n, P7401378399799712421.a n = (A017933 n : ℚ)

end A017933

/-! ## A017933.P9360168381788742812

`(A053156(n+2)-A000079(n+1))*A000244(n)`
-/

namespace A017933.P9360168381788742812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053156 (n + 2) - A000079 (n + 1)) * A000244 n

end

end A017933.P9360168381788742812

namespace A017933

/-- `(A053156(n+2)-A000079(n+1))*A000244(n)` -/
def P9360168381788742812.Spec : Prop :=
  ∀ n, P9360168381788742812.a n = A017933 n

end A017933

/-! ## A017933.P15465235343802710470

`(A007051(n+2)-A000079(n+2))*A000244(n)`
-/

namespace A017933.P15465235343802710470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007051 (n + 2) - A000079 (n + 2)) * A000244 n

end

end A017933.P15465235343802710470

namespace A017933

/-- `(A007051(n+2)-A000079(n+2))*A000244(n)` -/
def P15465235343802710470.Spec : Prop :=
  ∀ n, P15465235343802710470.a n = A017933 n

end A017933

/-!
# A017934: Powers of sqrt(10) rounded down.

The programs for A017934, the canonical program `A017934.P2786931500845398224` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017934 has offset 0).

The definition of A017934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017934.P2786931500845398224

`floor(sqrt(10^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017934

/-- `floor(sqrt(10^n))` -/
def P2786931500845398224.Spec : Prop :=
  ∀ n, (P2786931500845398224.a n : ℤ) = A017934 n

theorem P2786931500845398224.correct : P2786931500845398224.Spec := by
  intro n
  simp only [A017934]

end A017934

/-! ## A017934.P17533823888262284146

`ceil(sqrt(10)^n)-n%2`
-/

namespace A017934.P17533823888262284146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (10 : ℝ) ^ n⌉ - ((n % 2 : ℕ) : ℤ)

end

end A017934.P17533823888262284146

namespace A017934

/-- `ceil(sqrt(10)^n)-n%2` -/
def P17533823888262284146.Spec : Prop :=
  ∀ n, P17533823888262284146.a n = A017934 n

end A017934

/-! ## A017934.P4287306453440547596

`A018072(2*n)`
-/

namespace A017934.P4287306453440547596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018072 (2 * n)

end

end A017934.P4287306453440547596

namespace A017934

/-- `A018072(2*n)` -/
def P4287306453440547596.Spec : Prop :=
  ∀ n, P4287306453440547596.a n = A017934 n

end A017934

/-! ## A017934.P11490683883755180649

`A017936(n+1)-and(1, n)`
-/

namespace A017934.P11490683883755180649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017936 (n + 1) - (Nat.land 1 n : ℤ)

end

end A017934.P11490683883755180649

namespace A017934

/-- `A017936(n+1)-and(1, n)` -/
def P11490683883755180649.Spec : Prop :=
  ∀ n, P11490683883755180649.a n = A017934 n

end A017934

/-! ## A017934.P326380050076515567

`ceil(sqrt(10)^n)-A000035(n)`
-/

namespace A017934.P326380050076515567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (10 : ℝ) ^ n⌉ - A000035 n

end

end A017934.P326380050076515567

namespace A017934

/-- `ceil(sqrt(10)^n)-A000035(n)` -/
def P326380050076515567.Spec : Prop :=
  ∀ n, P326380050076515567.a n = A017934 n

end A017934

/-! ## A017934.P5205858168083199516

`record[A018072(n)^(-1)^n]`
-/

namespace A017934.P5205858168083199516
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018072 n : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017934.P5205858168083199516

namespace A017934

/-- `record[A018072(n)^(-1)^n]` -/
def P5205858168083199516.Spec : Prop :=
  ∀ n, P5205858168083199516.a n = (A017934 n : ℚ)

end A017934

/-! ## A017934.P12016492395688581207

`record[A018072((n+1)/2^val(n+1, 2)-1)]`
-/

namespace A017934.P12016492395688581207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018072 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017934.P12016492395688581207

namespace A017934

/-- `record[A018072((n+1)/2^val(n+1, 2)-1)]` -/
def P12016492395688581207.Spec : Prop :=
  ∀ n, P12016492395688581207.a n = A017934 n

end A017934

/-! ## A017934.P8320978413181871926

`A018074(2*n)-A166486(n²)`
-/

namespace A017934.P8320978413181871926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018074 (2 * n) - A166486 (n ^ 2)

end

end A017934.P8320978413181871926

namespace A017934

/-- `A018074(2*n)-A166486(n²)` -/
def P8320978413181871926.Spec : Prop :=
  ∀ n, P8320978413181871926.a n = A017934 n

end A017934

/-! ## A017934.P9836980561113872479

`A017936(n+1)-Δ[A004526(n)]`
-/

namespace A017934.P9836980561113872479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017936 (n + 1) - (f1 (n + 1) - f1 n)

end

end A017934.P9836980561113872479

namespace A017934

/-- `A017936(n+1)-Δ[A004526(n)]` -/
def P9836980561113872479.Spec : Prop :=
  ∀ n, P9836980561113872479.a n = A017934 n

end A017934

/-! ## A017934.P14026410663377484944

`A017936(n+1)-Δ[A008619(n)]`
-/

namespace A017934.P14026410663377484944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017936 (n + 1) - (f1 (n + 1) - f1 n)

end

end A017934.P14026410663377484944

namespace A017934

/-- `A017936(n+1)-Δ[A008619(n)]` -/
def P14026410663377484944.Spec : Prop :=
  ∀ n, P14026410663377484944.a n = A017934 n

end A017934

/-! ## A017934.P18322182595214946179

`A017936(n+1)-char[A093178(n)]`
-/

namespace A017934.P18322182595214946179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017936 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017934.P18322182595214946179

namespace A017934

/-- `A017936(n+1)-char[A093178(n)]` -/
def P18322182595214946179.Spec : Prop :=
  ∀ n, P18322182595214946179.a n = A017934 n

end A017934

/-! ## A017934.P3953154798127058241

`A130080(A016777(n))-Δ[A008619(n)]`
-/

namespace A017934.P3953154798127058241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (A016777 n).toNat - (f1 (n + 1) - f1 n)

end

end A017934.P3953154798127058241

namespace A017934

/-- `A130080(A016777(n))-Δ[A008619(n)]` -/
def P3953154798127058241.Spec : Prop :=
  ∀ n, P3953154798127058241.a n = A017934 n

end A017934

/-! ## A017934.P14252047269411053758

`A018074(2*n)-A166486(2*n+1)*A166486(2*n)`
-/

namespace A017934.P14252047269411053758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018074 (2 * n) - A166486 (2 * n + 1) * A166486 (2 * n)

end

end A017934.P14252047269411053758

namespace A017934

/-- `A018074(2*n)-A166486(2*n+1)*A166486(2*n)` -/
def P14252047269411053758.Spec : Prop :=
  ∀ n, P14252047269411053758.a n = A017934 n

end A017934

/-! ## A017934.P9644343466689670963

`ceil(sqrt(A003617(n+1)))-1`
-/

namespace A017934.P9644343466689670963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A003617 (n + 1) : ℝ)⌉ - 1

end

end A017934.P9644343466689670963

namespace A017934

/-- `ceil(sqrt(A003617(n+1)))-1` -/
def P9644343466689670963.Spec : Prop :=
  ∀ n, P9644343466689670963.a n = A017934 n

end A017934

/-! ## A017934.P2591315177746432745

`ceil(sqrt(A155594(n)+1))-1`
-/

namespace A017934.P2591315177746432745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A155594 n + 1 : ℝ)⌉ - 1

end

end A017934.P2591315177746432745

namespace A017934

/-- `ceil(sqrt(A155594(n)+1))-1` -/
def P2591315177746432745.Spec : Prop :=
  ∀ n, P2591315177746432745.a n = A017934 n

end A017934

/-!
# A017935: Powers of sqrt(10) rounded to nearest integer.

The programs for A017935, the canonical program `A017935.P14683990616673394281` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017935 has offset 0).

The definition of A017935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017935.P14683990616673394281

`round(sqrt(10)^n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017935

/-- `round(sqrt(10)^n)` -/
def P14683990616673394281.Spec : Prop :=
  ∀ n, P14683990616673394281.a n = A017935 n

theorem P14683990616673394281.correct : P14683990616673394281.Spec := by
  intro n
  simp only [A017935]

end A017935

/-! ## A017935.P4414068203598075035

`A018073(2*n)`
-/

namespace A017935.P4414068203598075035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018073 (2 * n)

end

end A017935.P4414068203598075035

namespace A017935

/-- `A018073(2*n)` -/
def P4414068203598075035.Spec : Prop :=
  ∀ n, P4414068203598075035.a n = A017935 n

end A017935

/-! ## A017935.P10465245981800043411

`floor(A035071(n)/2)`
-/

namespace A017935.P10465245981800043411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035071 n : ℚ) / 2⌋

end

end A017935.P10465245981800043411

namespace A017935

/-- `floor(A035071(n)/2)` -/
def P10465245981800043411.Spec : Prop :=
  ∀ n, P10465245981800043411.a n = A017935 n

end A017935

/-! ## A017935.P9824264246088381918

`ceil(2*sqrt(10)^n)-A017936(n+1)`
-/

namespace A017935.P9824264246088381918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (10 : ℝ) ^ n⌉ - A017936 (n + 1)

end

end A017935.P9824264246088381918

namespace A017935

/-- `ceil(2*sqrt(10)^n)-A017936(n+1)` -/
def P9824264246088381918.Spec : Prop :=
  ∀ n, P9824264246088381918.a n = A017935 n

end A017935

/-! ## A017935.P10914864278966289628

`abs(A017936(n+1)-A035071(n))`
-/

namespace A017935.P10914864278966289628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A017936 (n + 1) - A035071 n|

end

end A017935.P10914864278966289628

namespace A017935

/-- `abs(A017936(n+1)-A035071(n))` -/
def P10914864278966289628.Spec : Prop :=
  ∀ n, P10914864278966289628.a n = A017935 n

end A017935

/-! ## A017935.P13945351332290606322

`A035071(n)-(A018072(2*n)+and(1, n))`
-/

namespace A017935.P13945351332290606322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035071 n - (A018072 (2 * n) + (Nat.land 1 n : ℤ))

end

end A017935.P13945351332290606322

namespace A017935

/-- `A035071(n)-(A018072(2*n)+and(1, n))` -/
def P13945351332290606322.Spec : Prop :=
  ∀ n, P13945351332290606322.a n = A017935 n

end A017935

/-! ## A017935.P3099570888280050023

`floor(10^n/A017934(n))`
-/

namespace A017935.P3099570888280050023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / (A017934 n : ℚ)⌋

end

end A017935.P3099570888280050023

namespace A017935

/-- `floor(10^n/A017934(n))` -/
def P3099570888280050023.Spec : Prop :=
  ∀ n, P3099570888280050023.a n = A017935 n

end A017935

/-! ## A017935.P8112558178086884873

`record[round(sqrt(A054841(n+2)))]`
-/

namespace A017935.P8112558178086884873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A054841 (n + 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017935.P8112558178086884873

namespace A017935

/-- `record[round(sqrt(A054841(n+2)))]` -/
def P8112558178086884873.Spec : Prop :=
  ∀ n, P8112558178086884873.a n = A017935 n

end A017935

/-! ## A017935.P14417721831318274324

`floor((2*sqrt(A011557(n))+1)/2)`
-/

namespace A017935.P14417721831318274324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * Real.sqrt (A011557 n : ℝ) + 1) / 2⌋

end

end A017935.P14417721831318274324

namespace A017935

/-- `floor((2*sqrt(A011557(n))+1)/2)` -/
def P14417721831318274324.Spec : Prop :=
  ∀ n, P14417721831318274324.a n = A017935 n

end A017935

/-! ## A017935.P11890651563747794054

`ceil(A011557(n)/A017936(n+1))`
-/

namespace A017935.P11890651563747794054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A011557 n : ℚ) / (A017936 (n + 1) : ℚ)⌉

end

end A017935.P11890651563747794054

namespace A017935

/-- `ceil(A011557(n)/A017936(n+1))` -/
def P11890651563747794054.Spec : Prop :=
  ∀ n, P11890651563747794054.a n = A017935 n

end A017935

/-! ## A017935.P1426317475958142535

`ceil(A017934(2*n)/A017936(n+1))`
-/

namespace A017935.P1426317475958142535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017934 (2 * n) : ℚ) / (A017936 (n + 1) : ℚ)⌉

end

end A017935.P1426317475958142535

namespace A017935

/-- `ceil(A017934(2*n)/A017936(n+1))` -/
def P1426317475958142535.Spec : Prop :=
  ∀ n, P1426317475958142535.a n = A017935 n

end A017935

/-! ## A017935.P8162997402004558797

`ceil(A017934(2*n)/A018074(2*n))`
-/

namespace A017935.P8162997402004558797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017934 (2 * n) : ℚ) / (A018074 (2 * n) : ℚ)⌉

end

end A017935.P8162997402004558797

namespace A017935

/-- `ceil(A017934(2*n)/A018074(2*n))` -/
def P8162997402004558797.Spec : Prop :=
  ∀ n, P8162997402004558797.a n = A017935 n

end A017935

/-! ## A017935.P5422393467466059192

`round(sqrt(A050621(n+1)))%A050621(n+1)`
-/

namespace A017935.P5422393467466059192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A050621 (n + 1) : ℝ))) (A050621 (n + 1))

end

end A017935.P5422393467466059192

namespace A017935

/-- `round(sqrt(A050621(n+1)))%A050621(n+1)` -/
def P5422393467466059192.Spec : Prop :=
  ∀ n, P5422393467466059192.a n = A017935 n

end A017935

/-! ## A017935.P17061071160519649703

`ceil(A017936(2*n+1)/A017936(n+1))`
-/

namespace A017935.P17061071160519649703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017936 (2 * n + 1) : ℚ) / (A017936 (n + 1) : ℚ)⌉

end

end A017935.P17061071160519649703

namespace A017935

/-- `ceil(A017936(2*n+1)/A017936(n+1))` -/
def P17061071160519649703.Spec : Prop :=
  ∀ n, P17061071160519649703.a n = A017935 n

end A017935

/-! ## A017935.P232354678914629015

`ceil(floor(sqrt(A198970(n)))/2)`
-/

namespace A017935.P232354678914629015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.sqrt (A198970 n) : ℚ) / 2⌉

end

end A017935.P232354678914629015

namespace A017935

/-- `ceil(floor(sqrt(A198970(n)))/2)` -/
def P232354678914629015.Spec : Prop :=
  ∀ n, P232354678914629015.a n = A017935 n

end A017935

/-!
# A017936: Smallest number whose square has n digits.

The programs for A017936, the canonical program `A017936.P10589171404178341206` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017936 has offset 1).

The definition of A017936 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017936.P10589171404178341206

`ceil(sqrt(10^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017936

/-- `ceil(sqrt(10^n))` -/
def P10589171404178341206.Spec : Prop :=
  ∀ n, P10589171404178341206.a n = A017936 (n + 1)

theorem P10589171404178341206.correct : P10589171404178341206.Spec := by
  intro n
  simp only [A017936, Nat.add_sub_cancel]

end A017936

/-! ## A017936.P9901257307522402071

`floor(10^(n/2))+n%2`
-/

namespace A017936.P9901257307522402071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋ + ((n % 2 : ℕ) : ℤ)

end

end A017936.P9901257307522402071

namespace A017936

/-- `floor(10^(n/2))+n%2` -/
def P9901257307522402071.Spec : Prop :=
  ∀ n, P9901257307522402071.a n = A017936 (n + 1)

end A017936

/-! ## A017936.P11437790399832156086

`record[log2(gcd(2, n))*ceil(10^(n/4))]`
-/

namespace A017936.P11437790399832156086
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (⌈(10 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉ : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017936.P11437790399832156086

namespace A017936

/-- `record[log2(gcd(2, n))*ceil(10^(n/4))]` -/
def P11437790399832156086.Spec : Prop :=
  ∀ n, P11437790399832156086.a n = (A017936 (n + 1) : ℝ)

end A017936

/-! ## A017936.P106213729983992348

`A018074(2*n)`
-/

namespace A017936.P106213729983992348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018074 (2 * n)

end

end A017936.P106213729983992348

namespace A017936

/-- `A018074(2*n)` -/
def P106213729983992348.Spec : Prop :=
  ∀ n, P106213729983992348.a n = A017936 (n + 1)

end A017936

/-! ## A017936.P11027013577847675628

`A130080(3*n+1)`
-/

namespace A017936.P11027013577847675628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (3 * n + 1)

end

end A017936.P11027013577847675628

namespace A017936

/-- `A130080(3*n+1)` -/
def P11027013577847675628.Spec : Prop :=
  ∀ n, P11027013577847675628.a n = A017936 (n + 1)

end A017936

/-! ## A017936.P6781550147279363022

`A130082(4*n+1)`
-/

namespace A017936.P6781550147279363022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (4 * n + 1)

end

end A017936.P6781550147279363022

namespace A017936

/-- `A130082(4*n+1)` -/
def P6781550147279363022.Spec : Prop :=
  ∀ n, P6781550147279363022.a n = A017936 (n + 1)

end A017936

/-! ## A017936.P3677295205258354765

`A130084(5*n+1)`
-/

namespace A017936.P3677295205258354765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130084 (5 * n + 1)

end

end A017936.P3677295205258354765

namespace A017936

/-- `A130084(5*n+1)` -/
def P3677295205258354765.Spec : Prop :=
  ∀ n, P3677295205258354765.a n = A017936 (n + 1)

end A017936

/-! ## A017936.P12416872228079109483

`A018072(2*n)+and(1, n)`
-/

namespace A017936.P12416872228079109483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018072 (2 * n) + (Nat.land 1 n : ℤ)

end

end A017936.P12416872228079109483

namespace A017936

/-- `A018072(2*n)+and(1, n)` -/
def P12416872228079109483.Spec : Prop :=
  ∀ n, P12416872228079109483.a n = A017936 (n + 1)

end A017936

/-! ## A017936.P7988156282219679261

`A049415(n)+a(n-1)` with `a(0)=1`
-/

namespace A017936.P7988156282219679261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049415 n + a (n - 1)

end

end A017936.P7988156282219679261

namespace A017936

/-- `A049415(n)+a(n-1)` -/
def P7988156282219679261.Spec : Prop :=
  ∀ n, P7988156282219679261.a n = A017936 (n + 1)

end A017936

/-! ## A017936.P1800114504681651512

`A017934(n)+A000035(n)`
-/

namespace A017936.P1800114504681651512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 n + A000035 n

end

end A017936.P1800114504681651512

namespace A017936

/-- `A017934(n)+A000035(n)` -/
def P1800114504681651512.Spec : Prop :=
  ∀ n, P1800114504681651512.a n = A017936 (n + 1)

end A017936

/-! ## A017936.P12844127712243735205

`A000034(n)+A017934(n)-1`
-/

namespace A017936.P12844127712243735205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (A017934 n - 1)

end

end A017936.P12844127712243735205

namespace A017936

/-- `A000034(n)+A017934(n)-1` -/
def P12844127712243735205.Spec : Prop :=
  ∀ n, P12844127712243735205.a n = A017936 (n + 1)

end A017936

/-! ## A017936.P15799859072592515313

`A018072(2*n)+A166486(n²)`
-/

namespace A017936.P15799859072592515313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018072 (2 * n) + A166486 (n ^ 2)

end

end A017936.P15799859072592515313

namespace A017936

/-- `A018072(2*n)+A166486(n²)` -/
def P15799859072592515313.Spec : Prop :=
  ∀ n, P15799859072592515313.a n = A017936 (n + 1)

end A017936

/-! ## A017936.P1775079456856399404

`A166486(2*n)+A018072(2*n)`
-/

namespace A017936.P1775079456856399404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A018072 (2 * n)

end

end A017936.P1775079456856399404

namespace A017936

/-- `A166486(2*n)+A018072(2*n)` -/
def P1775079456856399404.Spec : Prop :=
  ∀ n, P1775079456856399404.a n = A017936 (n + 1)

end A017936

/-! ## A017936.P13352872161082161275

`round(A035071(n)/2)`
-/

namespace A017936.P13352872161082161275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A035071 n : ℚ) / 2)

end

end A017936.P13352872161082161275

namespace A017936

/-- `round(A035071(n)/2)` -/
def P13352872161082161275.Spec : Prop :=
  ∀ n, P13352872161082161275.a n = A017936 (n + 1)

end A017936

/-! ## A017936.P6554917753793890029

`A035071(n)-A017935(n)`
-/

namespace A017936.P6554917753793890029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035071 n - A017935 n

end

end A017936.P6554917753793890029

namespace A017936

/-- `A035071(n)-A017935(n)` -/
def P6554917753793890029.Spec : Prop :=
  ∀ n, P6554917753793890029.a n = A017936 (n + 1)

end A017936

/-! ## A017936.P16918180782618903417

`A286508(n)%A049415(n+1)`
-/

namespace A017936.P16918180782618903417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286508 n) (A049415 (n + 1))

end

end A017936.P16918180782618903417

namespace A017936

/-- `A286508(n)%A049415(n+1)` -/
def P16918180782618903417.Spec : Prop :=
  ∀ n, P16918180782618903417.a n = A017936 (n + 1)

end A017936

/-! ## A017936.P3424546270501273194

`A049416(n+1)+1-A049415(n+1)`
-/

namespace A017936.P3424546270501273194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049416 (n + 1) + (1 - A049415 (n + 1))

end

end A017936.P3424546270501273194

namespace A017936

/-- `A049416(n+1)+1-A049415(n+1)` -/
def P3424546270501273194.Spec : Prop :=
  ∀ n, P3424546270501273194.a n = A017936 (n + 1)

end A017936

/-! ## A017936.P7419906568203616009

`A017934(n+1)+A017934(n)-A049416(n+1)`
-/

namespace A017936.P7419906568203616009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (n + 1) + (A017934 n - A049416 (n + 1))

end

end A017936.P7419906568203616009

namespace A017936

/-- `A017934(n+1)+A017934(n)-A049416(n+1)` -/
def P7419906568203616009.Spec : Prop :=
  ∀ n, P7419906568203616009.a n = A017936 (n + 1)

end A017936

/-! ## A017936.P5955483518766677090

`sqrt(A061432(n+1))`
-/

namespace A017936.P5955483518766677090
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061432 (n + 1) : ℝ)

end

end A017936.P5955483518766677090

namespace A017936

/-- `sqrt(A061432(n+1))` -/
def P5955483518766677090.Spec : Prop :=
  ∀ n, P5955483518766677090.a n = (A017936 (n + 1) : ℝ)

end A017936

/-! ## A017936.P1836011355963280000

`floor(sqrt(A002283(n)))+1`
-/

namespace A017936.P1836011355963280000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002283 n) + 1

end

end A017936.P1836011355963280000

namespace A017936

/-- `floor(sqrt(A002283(n)))+1` -/
def P1836011355963280000.Spec : Prop :=
  ∀ n, P1836011355963280000.a n = A017936 (n + 1)

end A017936

/-!
# A017937: Powers of sqrt(11) rounded down.

The programs for A017937, the canonical program `A017937.P13320950827206059659` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017937 has offset 0).

The definition of A017937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017937.P13320950827206059659

`floor(sqrt(11^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017937

/-- `floor(sqrt(11^n))` -/
def P13320950827206059659.Spec : Prop :=
  ∀ n, (P13320950827206059659.a n : ℤ) = A017937 n

theorem P13320950827206059659.correct : P13320950827206059659.Spec := by
  intro n
  simp only [A017937]

end A017937

/-! ## A017937.P5741817239744950517

`A018075(2*n)`
-/

namespace A017937.P5741817239744950517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018075 (2 * n)

end

end A017937.P5741817239744950517

namespace A017937

/-- `A018075(2*n)` -/
def P5741817239744950517.Spec : Prop :=
  ∀ n, P5741817239744950517.a n = A017937 n

end A017937

/-! ## A017937.P9533911458221940415

`A017939(n)-n%2`
-/

namespace A017937.P9533911458221940415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017939 n - ((n % 2 : ℕ) : ℤ)

end

end A017937.P9533911458221940415

namespace A017937

/-- `A017939(n)-n%2` -/
def P9533911458221940415.Spec : Prop :=
  ∀ n, P9533911458221940415.a n = A017937 n

end A017937

/-! ## A017937.P11894119100997606055

`A017939(n)-A000035(n)`
-/

namespace A017937.P11894119100997606055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017939 n - A000035 n

end

end A017937.P11894119100997606055

namespace A017937

/-- `A017939(n)-A000035(n)` -/
def P11894119100997606055.Spec : Prop :=
  ∀ n, P11894119100997606055.a n = A017937 n

end A017937

/-! ## A017937.P308600611461692169

`A017939(n)-Δ[A004526(n)]`
-/

namespace A017937.P308600611461692169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017939 n - (f1 (n + 1) - f1 n)

end

end A017937.P308600611461692169

namespace A017937

/-- `A017939(n)-Δ[A004526(n)]` -/
def P308600611461692169.Spec : Prop :=
  ∀ n, P308600611461692169.a n = A017937 n

end A017937

/-! ## A017937.P12091565194688917345

`A017939(n)-Δ[A008619(n)]`
-/

namespace A017937.P12091565194688917345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017939 n - (f1 (n + 1) - f1 n)

end

end A017937.P12091565194688917345

namespace A017937

/-- `A017939(n)-Δ[A008619(n)]` -/
def P12091565194688917345.Spec : Prop :=
  ∀ n, P12091565194688917345.a n = A017937 n

end A017937

/-! ## A017937.P8935925873680984626

`A017939(n)-char[A008288(n)]`
-/

namespace A017937.P8935925873680984626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017939 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017937.P8935925873680984626

namespace A017937

/-- `A017939(n)-char[A008288(n)]` -/
def P8935925873680984626.Spec : Prop :=
  ∀ n, P8935925873680984626.a n = A017937 n

end A017937

/-! ## A017937.P12523824229125212917

`A018077(2*n)-A166486(n²)`
-/

namespace A017937.P12523824229125212917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018077 (2 * n) - A166486 (n ^ 2)

end

end A017937.P12523824229125212917

namespace A017937

/-- `A018077(2*n)-A166486(n²)` -/
def P12523824229125212917.Spec : Prop :=
  ∀ n, P12523824229125212917.a n = A017937 n

end A017937

/-! ## A017937.P11199195530048399032

`A017939(n)-char[A003961(n+1)]`
-/

namespace A017937.P11199195530048399032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017939 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017937.P11199195530048399032

namespace A017937

/-- `A017939(n)-char[A003961(n+1)]` -/
def P11199195530048399032.Spec : Prop :=
  ∀ n, P11199195530048399032.a n = A017937 n

end A017937

/-! ## A017937.P16667485102906974254

`A017939(n)-A167295(A167295(n+1)+1)`
-/

namespace A017937.P16667485102906974254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017939 n - A167295 (A167295 (n + 1) + 1).toNat

end

end A017937.P16667485102906974254

namespace A017937

/-- `A017939(n)-A167295(A167295(n+1)+1)` -/
def P16667485102906974254.Spec : Prop :=
  ∀ n, P16667485102906974254.a n = A017937 n

end A017937

/-! ## A017937.P3038969185704118503

`A018063(2*n)+A018077(2*n)-A018065(2*n)`
-/

namespace A017937.P3038969185704118503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018063 (2 * n) + (A018077 (2 * n) - A018065 (2 * n))

end

end A017937.P3038969185704118503

namespace A017937

/-- `A018063(2*n)+A018077(2*n)-A018065(2*n)` -/
def P3038969185704118503.Spec : Prop :=
  ∀ n, P3038969185704118503.a n = A017937 n

end A017937

/-! ## A017937.P5973170900372388399

`A018072(2*n)+A018077(2*n)-A018074(2*n)`
-/

namespace A017937.P5973170900372388399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018072 (2 * n) + (A018077 (2 * n) - A018074 (2 * n))

end

end A017937.P5973170900372388399

namespace A017937

/-- `A018072(2*n)+A018077(2*n)-A018074(2*n)` -/
def P5973170900372388399.Spec : Prop :=
  ∀ n, P5973170900372388399.a n = A017937 n

end A017937

/-! ## A017937.P16784639023045580888

`A018077(2*n)-A166486(2*n+1)*A166486(2*n)`
-/

namespace A017937.P16784639023045580888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018077 (2 * n) - A166486 (2 * n + 1) * A166486 (2 * n)

end

end A017937.P16784639023045580888

namespace A017937

/-- `A018077(2*n)-A166486(2*n+1)*A166486(2*n)` -/
def P16784639023045580888.Spec : Prop :=
  ∀ n, P16784639023045580888.a n = A017937 n

end A017937

/-! ## A017937.P2453720416198040442

`A018077(2*n)+A018093(2*n)-A018095(2*n)`
-/

namespace A017937.P2453720416198040442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018077 (2 * n) + (A018093 (2 * n) - A018095 (2 * n))

end

end A017937.P2453720416198040442

namespace A017937

/-- `A018077(2*n)+A018093(2*n)-A018095(2*n)` -/
def P2453720416198040442.Spec : Prop :=
  ∀ n, P2453720416198040442.a n = A017937 n

end A017937

/-!
# A017938: Powers of sqrt(11) rounded to nearest integer.

The programs for A017938, the canonical program `A017938.P5449101172350679803` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017938 has offset 0).

The definition of A017938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017938.P5449101172350679803

`round(sqrt(11)^n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017938

/-- `round(sqrt(11)^n)` -/
def P5449101172350679803.Spec : Prop :=
  ∀ n, P5449101172350679803.a n = A017938 n

theorem P5449101172350679803.correct : P5449101172350679803.Spec := by
  intro n
  simp only [A017938]

end A017938

/-! ## A017938.P4064126862374591121

`A018076(2*n)`
-/

namespace A017938.P4064126862374591121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018076 (2 * n)

end

end A017938.P4064126862374591121

namespace A017938

/-- `A018076(2*n)` -/
def P4064126862374591121.Spec : Prop :=
  ∀ n, P4064126862374591121.a n = A017938 n

end A017938

/-! ## A017938.P11811795945108695657

`round(sqrt(A001020(n)))%A002011(n)`
-/

namespace A017938.P11811795945108695657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001020 n : ℝ))) (A002011 n)

end

end A017938.P11811795945108695657

namespace A017938

/-- `round(sqrt(A001020(n)))%A002011(n)` -/
def P11811795945108695657.Spec : Prop :=
  ∀ n, P11811795945108695657.a n = A017938 n

end A017938

/-! ## A017938.P8741929709536705582

`floor(A017937(2*n)/A017937(n))`
-/

namespace A017938.P8741929709536705582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017937 (2 * n) : ℚ) / (A017937 n : ℚ)⌋

end

end A017938.P8741929709536705582

namespace A017938

/-- `floor(A017937(2*n)/A017937(n))` -/
def P8741929709536705582.Spec : Prop :=
  ∀ n, P8741929709536705582.a n = A017938 n

end A017938

/-! ## A017938.P18213786049102994308

`ceil(A017939(2*n)/A017939(n))`
-/

namespace A017938.P18213786049102994308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017939 (2 * n) : ℚ) / (A017939 n : ℚ)⌉

end

end A017938.P18213786049102994308

namespace A017938

/-- `ceil(A017939(2*n)/A017939(n))` -/
def P18213786049102994308.Spec : Prop :=
  ∀ n, P18213786049102994308.a n = A017938 n

end A017938

/-!
# A017939: Powers of sqrt(11) rounded up.

The programs for A017939, the canonical program `A017939.P1779623224888557858` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017939 has offset 0).

The definition of A017939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017939.P1779623224888557858

`ceil(sqrt(11^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017939

/-- `ceil(sqrt(11^n))` -/
def P1779623224888557858.Spec : Prop :=
  ∀ n, P1779623224888557858.a n = A017939 n

theorem P1779623224888557858.correct : P1779623224888557858.Spec := by
  intro n
  simp only [A017939]

end A017939

/-! ## A017939.P17201367539913869773

`A018077(2*n)`
-/

namespace A017939.P17201367539913869773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018077 (2 * n)

end

end A017939.P17201367539913869773

namespace A017939

/-- `A018077(2*n)` -/
def P17201367539913869773.Spec : Prop :=
  ∀ n, P17201367539913869773.a n = A017939 n

end A017939

/-! ## A017939.P7553975619281236019

`A017937(n)+n%2`
-/

namespace A017939.P7553975619281236019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017937 n + ((n % 2 : ℕ) : ℤ)

end

end A017939.P7553975619281236019

namespace A017939

/-- `A017937(n)+n%2` -/
def P7553975619281236019.Spec : Prop :=
  ∀ n, P7553975619281236019.a n = A017939 n

end A017939

/-! ## A017939.P9518042313814513040

`A017937(n)+A000035(n)`
-/

namespace A017939.P9518042313814513040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017937 n + A000035 n

end

end A017939.P9518042313814513040

namespace A017939

/-- `A017937(n)+A000035(n)` -/
def P9518042313814513040.Spec : Prop :=
  ∀ n, P9518042313814513040.a n = A017939 n

end A017939

/-! ## A017939.P11786725560498202450

`A017937(n)+Δ[A004526(n)]`
-/

namespace A017939.P11786725560498202450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017937 n + (f1 (n + 1) - f1 n)

end

end A017939.P11786725560498202450

namespace A017939

/-- `A017937(n)+Δ[A004526(n)]` -/
def P11786725560498202450.Spec : Prop :=
  ∀ n, P11786725560498202450.a n = A017939 n

end A017939

/-! ## A017939.P10812804780514806611

`A018075(2*n)+A166486(n²)`
-/

namespace A017939.P10812804780514806611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018075 (2 * n) + A166486 (n ^ 2)

end

end A017939.P10812804780514806611

namespace A017939

/-- `A018075(2*n)+A166486(n²)` -/
def P10812804780514806611.Spec : Prop :=
  ∀ n, P10812804780514806611.a n = A017939 n

end A017939

/-! ## A017939.P1441157311703626763

`A166486(2*n)+A018075(2*n)`
-/

namespace A017939.P1441157311703626763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A018075 (2 * n)

end

end A017939.P1441157311703626763

namespace A017939

/-- `A166486(2*n)+A018075(2*n)` -/
def P1441157311703626763.Spec : Prop :=
  ∀ n, P1441157311703626763.a n = A017939 n

end A017939

/-! ## A017939.P10537998873560641380

`A124625(A124625(n))+A017937(n)`
-/

namespace A017939.P10537998873560641380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A124625 n).toNat + A017937 n

end

end A017939.P10537998873560641380

namespace A017939

/-- `A124625(A124625(n))+A017937(n)` -/
def P10537998873560641380.Spec : Prop :=
  ∀ n, P10537998873560641380.a n = A017939 n

end A017939

/-! ## A017939.P10681672927773752683

`A017937(n)-A057428(A135481(n))`
-/

namespace A017939.P10681672927773752683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017937 n - A057428 (A135481 n).toNat

end

end A017939.P10681672927773752683

namespace A017939

/-- `A017937(n)-A057428(A135481(n))` -/
def P10681672927773752683.Spec : Prop :=
  ∀ n, P10681672927773752683.a n = A017939 n

end A017939

/-! ## A017939.P18368966350851136954

`A135481(A135481(n)²)+A017937(n)`
-/

namespace A017939.P18368966350851136954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A135481 n ^ 2).toNat + A017937 n

end

end A017939.P18368966350851136954

namespace A017939

/-- `A135481(A135481(n)²)+A017937(n)` -/
def P18368966350851136954.Spec : Prop :=
  ∀ n, P18368966350851136954.a n = A017939 n

end A017939

/-! ## A017939.P4921318222928829480

`A135481(n*A135481(n))+A017937(n)`
-/

namespace A017939.P4921318222928829480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 ((n : ℤ) * A135481 n).toNat + A017937 n

end

end A017939.P4921318222928829480

namespace A017939

/-- `A135481(n*A135481(n))+A017937(n)` -/
def P4921318222928829480.Spec : Prop :=
  ∀ n, P4921318222928829480.a n = A017939 n

end A017939

/-! ## A017939.P1524135017615009287

`A057353(Δ[A057353(2*n)])+A018075(2*n)`
-/

namespace A017939.P1524135017615009287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (f1 (n + 1) - f1 n).toNat + A018075 (2 * n)

end

end A017939.P1524135017615009287

namespace A017939

/-- `A057353(Δ[A057353(2*n)])+A018075(2*n)` -/
def P1524135017615009287.Spec : Prop :=
  ∀ n, P1524135017615009287.a n = A017939 n

end A017939

/-! ## A017939.P10529305572235406160

`A018065(2*n)+A018075(2*n)-A018063(2*n)`
-/

namespace A017939.P10529305572235406160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018065 (2 * n) + (A018075 (2 * n) - A018063 (2 * n))

end

end A017939.P10529305572235406160

namespace A017939

/-- `A018065(2*n)+A018075(2*n)-A018063(2*n)` -/
def P10529305572235406160.Spec : Prop :=
  ∀ n, P10529305572235406160.a n = A017939 n

end A017939

/-! ## A017939.P7572695137831737923

`A018068(2*n)+A018075(2*n)-A018066(2*n)`
-/

namespace A017939.P7572695137831737923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018068 (2 * n) + (A018075 (2 * n) - A018066 (2 * n))

end

end A017939.P7572695137831737923

namespace A017939

/-- `A018068(2*n)+A018075(2*n)-A018066(2*n)` -/
def P7572695137831737923.Spec : Prop :=
  ∀ n, P7572695137831737923.a n = A017939 n

end A017939

/-! ## A017939.P6080309887788939594

`A018074(2*n)+A018075(2*n)-A018072(2*n)`
-/

namespace A017939.P6080309887788939594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018074 (2 * n) + (A018075 (2 * n) - A018072 (2 * n))

end

end A017939.P6080309887788939594

namespace A017939

/-- `A018074(2*n)+A018075(2*n)-A018072(2*n)` -/
def P6080309887788939594.Spec : Prop :=
  ∀ n, P6080309887788939594.a n = A017939 n

end A017939

/-! ## A017939.P3913631398337791927

`A174296(2*n+1)+A018075(2*n)-A174296(n+1)`
-/

namespace A017939.P3913631398337791927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 (2 * n + 1) + (A018075 (2 * n) - A174296 (n + 1))

end

end A017939.P3913631398337791927

namespace A017939

/-- `A174296(2*n+1)+A018075(2*n)-A174296(n+1)` -/
def P3913631398337791927.Spec : Prop :=
  ∀ n, P3913631398337791927.a n = A017939 n

end A017939

/-! ## A017939.P7134411650314221505

`A057353(2*n+1)+A018075(2*n)-A057353(2*n)`
-/

namespace A017939.P7134411650314221505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * n + 1) + (A018075 (2 * n) - A057353 (2 * n))

end

end A017939.P7134411650314221505

namespace A017939

/-- `A057353(2*n+1)+A018075(2*n)-A057353(2*n)` -/
def P7134411650314221505.Spec : Prop :=
  ∀ n, P7134411650314221505.a n = A017939 n

end A017939

/-! ## A017939.P1955648078128669681

`A135481(A000982(n))+A017937(n)`
-/

namespace A017939.P1955648078128669681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A000982 n).toNat + A017937 n

end

end A017939.P1955648078128669681

namespace A017939

/-- `A135481(A000982(n))+A017937(n)` -/
def P1955648078128669681.Spec : Prop :=
  ∀ n, P1955648078128669681.a n = A017939 n

end A017939

/-! ## A017939.P13271922724959800367

`A135481(n²)+A017937(n)`
-/

namespace A017939.P13271922724959800367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (n ^ 2) + A017937 n

end

end A017939.P13271922724959800367

namespace A017939

/-- `A135481(n²)+A017937(n)` -/
def P13271922724959800367.Spec : Prop :=
  ∀ n, P13271922724959800367.a n = A017939 n

end A017939

/-!
# A017940: Powers of sqrt(12) rounded down.

The programs for A017940, the canonical program `A017940.P16374725668855636944` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017940 has offset 0).

The definition of A017940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017940.P16374725668855636944

`floor(sqrt(12^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017940

/-- `floor(sqrt(12^n))` -/
def P16374725668855636944.Spec : Prop :=
  ∀ n, (P16374725668855636944.a n : ℤ) = A017940 n

theorem P16374725668855636944.correct : P16374725668855636944.Spec := by
  intro n
  simp only [A017940]

end A017940

/-! ## A017940.P11318574121587609608

`A018078(2*n)`
-/

namespace A017940.P11318574121587609608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018078 (2 * n)

end

end A017940.P11318574121587609608

namespace A017940

/-- `A018078(2*n)` -/
def P11318574121587609608.Spec : Prop :=
  ∀ n, P11318574121587609608.a n = A017940 n

end A017940

/-! ## A017940.P8443520486358878110

`A017942(n)-A000035(n)`
-/

namespace A017940.P8443520486358878110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017942 n - A000035 n

end

end A017940.P8443520486358878110

namespace A017940

/-- `A017942(n)-A000035(n)` -/
def P8443520486358878110.Spec : Prop :=
  ∀ n, P8443520486358878110.a n = A017940 n

end A017940

/-! ## A017940.P8710062361666214469

`A017942(n)-Δ[A008619(n)]`
-/

namespace A017940.P8710062361666214469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017942 n - (f1 (n + 1) - f1 n)

end

end A017940.P8710062361666214469

namespace A017940

/-- `A017942(n)-Δ[A008619(n)]` -/
def P8710062361666214469.Spec : Prop :=
  ∀ n, P8710062361666214469.a n = A017940 n

end A017940

/-! ## A017940.P17455549177073939989

`A017942(n)-char[A005408(n)]`
-/

namespace A017940.P17455549177073939989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017942 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017940.P17455549177073939989

namespace A017940

/-- `A017942(n)-char[A005408(n)]` -/
def P17455549177073939989.Spec : Prop :=
  ∀ n, P17455549177073939989.a n = A017940 n

end A017940

/-! ## A017940.P4806375787761837197

`A017942(n)-A059841(n+1)`
-/

namespace A017940.P4806375787761837197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017942 n - A059841 (n + 1)

end

end A017940.P4806375787761837197

namespace A017940

/-- `A017942(n)-A059841(n+1)` -/
def P4806375787761837197.Spec : Prop :=
  ∀ n, P4806375787761837197.a n = A017940 n

end A017940

/-! ## A017940.P12187699533077815445

`A017942(n)-A021913(2*n)`
-/

namespace A017940.P12187699533077815445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017942 n - A021913 (2 * n)

end

end A017940.P12187699533077815445

namespace A017940

/-- `A017942(n)-A021913(2*n)` -/
def P12187699533077815445.Spec : Prop :=
  ∀ n, P12187699533077815445.a n = A017940 n

end A017940

/-! ## A017940.P10257286146578617685

`A018080(2*n)-A166486(n²)`
-/

namespace A017940.P10257286146578617685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018080 (2 * n) - A166486 (n ^ 2)

end

end A017940.P10257286146578617685

namespace A017940

/-- `A018080(2*n)-A166486(n²)` -/
def P10257286146578617685.Spec : Prop :=
  ∀ n, P10257286146578617685.a n = A017940 n

end A017940

/-! ## A017940.P3591507818823091531

`A017942(n)+A028242(n)-A008619(n)`
-/

namespace A017940.P3591507818823091531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017942 n + (A028242 n - A008619 n)

end

end A017940.P3591507818823091531

namespace A017940

/-- `A017942(n)+A028242(n)-A008619(n)` -/
def P3591507818823091531.Spec : Prop :=
  ∀ n, P3591507818823091531.a n = A017940 n

end A017940

/-! ## A017940.P10891004968857593177

`A018060(2*n)+A018080(2*n)-A018062(2*n)`
-/

namespace A017940.P10891004968857593177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018060 (2 * n) + (A018080 (2 * n) - A018062 (2 * n))

end

end A017940.P10891004968857593177

namespace A017940

/-- `A018060(2*n)+A018080(2*n)-A018062(2*n)` -/
def P10891004968857593177.Spec : Prop :=
  ∀ n, P10891004968857593177.a n = A017940 n

end A017940

/-! ## A017940.P4978366613886936967

`A018063(2*n)+A018080(2*n)-A018065(2*n)`
-/

namespace A017940.P4978366613886936967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018063 (2 * n) + (A018080 (2 * n) - A018065 (2 * n))

end

end A017940.P4978366613886936967

namespace A017940

/-- `A018063(2*n)+A018080(2*n)-A018065(2*n)` -/
def P4978366613886936967.Spec : Prop :=
  ∀ n, P4978366613886936967.a n = A017940 n

end A017940

/-! ## A017940.P10754842011225903064

`A018075(2*n)+A018080(2*n)-A018077(2*n)`
-/

namespace A017940.P10754842011225903064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018075 (2 * n) + (A018080 (2 * n) - A018077 (2 * n))

end

end A017940.P10754842011225903064

namespace A017940

/-- `A018075(2*n)+A018080(2*n)-A018077(2*n)` -/
def P10754842011225903064.Spec : Prop :=
  ∀ n, P10754842011225903064.a n = A017940 n

end A017940

/-! ## A017940.P6128510021507618992

`A018080(2*n)-A166486(2*n+1)*A166486(2*n)`
-/

namespace A017940.P6128510021507618992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018080 (2 * n) - A166486 (2 * n + 1) * A166486 (2 * n)

end

end A017940.P6128510021507618992

namespace A017940

/-- `A018080(2*n)-A166486(2*n+1)*A166486(2*n)` -/
def P6128510021507618992.Spec : Prop :=
  ∀ n, P6128510021507618992.a n = A017940 n

end A017940

/-!
# A017941: Powers of sqrt(12) rounded to nearest integer.

The programs for A017941, the canonical program `A017941.P6984830912706819860` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017941 has offset 0).

The definition of A017941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017941.P6984830912706819860

`round(sqrt(12)^n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017941

/-- `round(sqrt(12)^n)` -/
def P6984830912706819860.Spec : Prop :=
  ∀ n, P6984830912706819860.a n = A017941 n

theorem P6984830912706819860.correct : P6984830912706819860.Spec := by
  intro n
  simp only [A017941]

end A017941

/-! ## A017941.P8789463034569317981

`A018079(2*n)`
-/

namespace A017941.P8789463034569317981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018079 (2 * n)

end

end A017941.P8789463034569317981

namespace A017941

/-- `A018079(2*n)` -/
def P8789463034569317981.Spec : Prop :=
  ∀ n, P8789463034569317981.a n = A017941 n

end A017941

/-! ## A017941.P4234542129849803572

`record[A018079(n%4+n)]`
-/

namespace A017941.P4234542129849803572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018079 (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017941.P4234542129849803572

namespace A017941

/-- `record[A018079(n%4+n)]` -/
def P4234542129849803572.Spec : Prop :=
  ∀ n, P4234542129849803572.a n = A017941 n

end A017941

/-! ## A017941.P1916185150832260426

`record[A018079(n--n%4)]`
-/

namespace A017941.P1916185150832260426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018079 ((n : ℤ) - Int.tmod (-(n : ℤ)) 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017941.P1916185150832260426

namespace A017941

/-- `record[A018079(n--n%4)]` -/
def P1916185150832260426.Spec : Prop :=
  ∀ n, P1916185150832260426.a n = A017941 n

end A017941

/-! ## A017941.P447871234832096322

`ceil(A017942(2*n)/A017942(n))`
-/

namespace A017941.P447871234832096322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017942 (2 * n) : ℚ) / (A017942 n : ℚ)⌉

end

end A017941.P447871234832096322

namespace A017941

/-- `ceil(A017942(2*n)/A017942(n))` -/
def P447871234832096322.Spec : Prop :=
  ∀ n, P447871234832096322.a n = A017941 n

end A017941

/-!
# A017942: Powers of sqrt(12) rounded up.

The programs for A017942, the canonical program `A017942.P3996894579897601799` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017942 has offset 0).

The definition of A017942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017942.P3996894579897601799

`ceil(sqrt(12^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017942

/-- `ceil(sqrt(12^n))` -/
def P3996894579897601799.Spec : Prop :=
  ∀ n, P3996894579897601799.a n = A017942 n

theorem P3996894579897601799.correct : P3996894579897601799.Spec := by
  intro n
  simp only [A017942]

end A017942

/-! ## A017942.P7264127720641522689

`record[gcd((n%2)^n, ceil(12^(n/4)))]`
-/

namespace A017942.P7264127720641522689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((n % 2) ^ n : ℕ) : ℤ) ⌈(12 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017942.P7264127720641522689

namespace A017942

/-- `record[gcd((n%2)^n, ceil(12^(n/4)))]` -/
def P7264127720641522689.Spec : Prop :=
  ∀ n, (P7264127720641522689.a n : ℤ) = A017942 n

end A017942

/-! ## A017942.P1984689753791152002

`A018080(2*n)`
-/

namespace A017942.P1984689753791152002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018080 (2 * n)

end

end A017942.P1984689753791152002

namespace A017942

/-- `A018080(2*n)` -/
def P1984689753791152002.Spec : Prop :=
  ∀ n, P1984689753791152002.a n = A017942 n

end A017942

/-! ## A017942.P8699287439800598506

`A017940(n)+n%2`
-/

namespace A017942.P8699287439800598506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017940 n + ((n % 2 : ℕ) : ℤ)

end

end A017942.P8699287439800598506

namespace A017942

/-- `A017940(n)+n%2` -/
def P8699287439800598506.Spec : Prop :=
  ∀ n, P8699287439800598506.a n = A017942 n

end A017942

/-! ## A017942.P10803700754086155123

`A017940(n)+A000035(n)`
-/

namespace A017942.P10803700754086155123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017940 n + A000035 n

end

end A017942.P10803700754086155123

namespace A017942

/-- `A017940(n)+A000035(n)` -/
def P10803700754086155123.Spec : Prop :=
  ∀ n, P10803700754086155123.a n = A017942 n

end A017942

/-! ## A017942.P17903666875362378958

`A017940(n)+log2(A000034(n))`
-/

namespace A017942.P17903666875362378958
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017940 n : ℝ) + Real.logb 2 (A000034 n : ℝ)

end

end A017942.P17903666875362378958

namespace A017942

/-- `A017940(n)+log2(A000034(n))` -/
def P17903666875362378958.Spec : Prop :=
  ∀ n, P17903666875362378958.a n = (A017942 n : ℝ)

end A017942

/-! ## A017942.P4122363468969012376

`A017940(n)+Δ[A004526(n)]`
-/

namespace A017942.P4122363468969012376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017940 n + (f1 (n + 1) - f1 n)

end

end A017942.P4122363468969012376

namespace A017942

/-- `A017940(n)+Δ[A004526(n)]` -/
def P4122363468969012376.Spec : Prop :=
  ∀ n, P4122363468969012376.a n = A017942 n

end A017942

/-! ## A017942.P10573278518299074839

`A017940(n)+Δ[A008619(n)]`
-/

namespace A017942.P10573278518299074839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017940 n + (f1 (n + 1) - f1 n)

end

end A017942.P10573278518299074839

namespace A017942

/-- `A017940(n)+Δ[A008619(n)]` -/
def P10573278518299074839.Spec : Prop :=
  ∀ n, P10573278518299074839.a n = A017942 n

end A017942

/-! ## A017942.P4523612566333798937

`A017940(n)+char[A093178(n)]`
-/

namespace A017942.P4523612566333798937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017940 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017942.P4523612566333798937

namespace A017942

/-- `A017940(n)+char[A093178(n)]` -/
def P4523612566333798937.Spec : Prop :=
  ∀ n, P4523612566333798937.a n = A017942 n

end A017942

/-! ## A017942.P12173242400220112503

`A059841(n+1)+A017940(n)`
-/

namespace A017942.P12173242400220112503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + A017940 n

end

end A017942.P12173242400220112503

namespace A017942

/-- `A059841(n+1)+A017940(n)` -/
def P12173242400220112503.Spec : Prop :=
  ∀ n, P12173242400220112503.a n = A017942 n

end A017942

/-! ## A017942.P9289213861348832709

`1-(A059841(n)-A017940(n))`
-/

namespace A017942.P9289213861348832709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A059841 n - A017940 n)

end

end A017942.P9289213861348832709

namespace A017942

/-- `1-(A059841(n)-A017940(n))` -/
def P9289213861348832709.Spec : Prop :=
  ∀ n, P9289213861348832709.a n = A017942 n

end A017942

/-! ## A017942.P6300354208385879669

`A018078(2*n)+A000035(n)`
-/

namespace A017942.P6300354208385879669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018078 (2 * n) + A000035 n

end

end A017942.P6300354208385879669

namespace A017942

/-- `A018078(2*n)+A000035(n)` -/
def P6300354208385879669.Spec : Prop :=
  ∀ n, P6300354208385879669.a n = A017942 n

end A017942

/-! ## A017942.P8816764057698941275

`A018078(2*n)+A166486(n²)`
-/

namespace A017942.P8816764057698941275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018078 (2 * n) + A166486 (n ^ 2)

end

end A017942.P8816764057698941275

namespace A017942

/-- `A018078(2*n)+A166486(n²)` -/
def P8816764057698941275.Spec : Prop :=
  ∀ n, P8816764057698941275.a n = A017942 n

end A017942

/-! ## A017942.P13151770655792261233

`A166486(2*n)+A018078(2*n)`
-/

namespace A017942.P13151770655792261233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A018078 (2 * n)

end

end A017942.P13151770655792261233

namespace A017942

/-- `A166486(2*n)+A018078(2*n)` -/
def P13151770655792261233.Spec : Prop :=
  ∀ n, P13151770655792261233.a n = A017942 n

end A017942

/-! ## A017942.P17652395062080386539

`∪[A017940(2*n+1)+1, A017940(2*n)]`
-/

namespace A017942.P17652395062080386539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017940 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017940 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A017942.P17652395062080386539

namespace A017942

/-- `∪[A017940(2*n+1)+1, A017940(2*n)]` -/
def P17652395062080386539.Spec : Prop :=
  ∀ n, (P17652395062080386539.a n : ℤ) = A017942 n

end A017942

/-! ## A017942.P635517110951113036

`A018065(2*n)+A018078(2*n)-A018063(2*n)`
-/

namespace A017942.P635517110951113036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018065 (2 * n) + (A018078 (2 * n) - A018063 (2 * n))

end

end A017942.P635517110951113036

namespace A017942

/-- `A018065(2*n)+A018078(2*n)-A018063(2*n)` -/
def P635517110951113036.Spec : Prop :=
  ∀ n, P635517110951113036.a n = A017942 n

end A017942

/-! ## A017942.P16094034356487488007

`A018068(2*n)+A018078(2*n)-A018066(2*n)`
-/

namespace A017942.P16094034356487488007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018068 (2 * n) + (A018078 (2 * n) - A018066 (2 * n))

end

end A017942.P16094034356487488007

namespace A017942

/-- `A018068(2*n)+A018078(2*n)-A018066(2*n)` -/
def P16094034356487488007.Spec : Prop :=
  ∀ n, P16094034356487488007.a n = A017942 n

end A017942

/-!
# A017943: Powers of sqrt(13) rounded down.

The programs for A017943, the canonical program `A017943.P13793515004937900677` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017943 has offset 0).

The definition of A017943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017943.P13793515004937900677

`floor(13^(n/2))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017943

/-- `floor(13^(n/2))` -/
def P13793515004937900677.Spec : Prop :=
  ∀ n, P13793515004937900677.a n = A017943 n

theorem P13793515004937900677.correct : P13793515004937900677.Spec := by
  intro n
  simp only [A017943]

end A017943

/-! ## A017943.P5664374180215357806

`A018081(2*n)`
-/

namespace A017943.P5664374180215357806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018081 (2 * n)

end

end A017943.P5664374180215357806

namespace A017943

/-- `A018081(2*n)` -/
def P5664374180215357806.Spec : Prop :=
  ∀ n, P5664374180215357806.a n = A017943 n

end A017943

/-! ## A017943.P16186862469593853894

`A017945(n)-n%2`
-/

namespace A017943.P16186862469593853894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017945 n - ((n % 2 : ℕ) : ℤ)

end

end A017943.P16186862469593853894

namespace A017943

/-- `A017945(n)-n%2` -/
def P16186862469593853894.Spec : Prop :=
  ∀ n, P16186862469593853894.a n = A017943 n

end A017943

/-! ## A017943.P8283752433662073449

`A017945(n)-A000035(n)`
-/

namespace A017943.P8283752433662073449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017945 n - A000035 n

end

end A017943.P8283752433662073449

namespace A017943

/-- `A017945(n)-A000035(n)` -/
def P8283752433662073449.Spec : Prop :=
  ∀ n, P8283752433662073449.a n = A017943 n

end A017943

/-! ## A017943.P7755588909217103621

`A017945(n)-Δ[A004526(n)]`
-/

namespace A017943.P7755588909217103621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017945 n - (f1 (n + 1) - f1 n)

end

end A017943.P7755588909217103621

namespace A017943

/-- `A017945(n)-Δ[A004526(n)]` -/
def P7755588909217103621.Spec : Prop :=
  ∀ n, P7755588909217103621.a n = A017943 n

end A017943

/-! ## A017943.P10757612631047577957

`A017945(n)-Δ[A008619(n)]`
-/

namespace A017943.P10757612631047577957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017945 n - (f1 (n + 1) - f1 n)

end

end A017943.P10757612631047577957

namespace A017943

/-- `A017945(n)-Δ[A008619(n)]` -/
def P10757612631047577957.Spec : Prop :=
  ∀ n, P10757612631047577957.a n = A017943 n

end A017943

/-! ## A017943.P13962235165970480414

`A017945(n)-char[A005408(n)]`
-/

namespace A017943.P13962235165970480414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017945 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017943.P13962235165970480414

namespace A017943

/-- `A017945(n)-char[A005408(n)]` -/
def P13962235165970480414.Spec : Prop :=
  ∀ n, P13962235165970480414.a n = A017943 n

end A017943

/-! ## A017943.P2365197167748907841

`A018083(2*n)-A000035(n)`
-/

namespace A017943.P2365197167748907841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018083 (2 * n) - A000035 n

end

end A017943.P2365197167748907841

namespace A017943

/-- `A018083(2*n)-A000035(n)` -/
def P2365197167748907841.Spec : Prop :=
  ∀ n, P2365197167748907841.a n = A017943 n

end A017943

/-! ## A017943.P6042836904703146703

`A017945(n)-val(A003479(n), 2)`
-/

namespace A017943.P6042836904703146703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017945 n - (SequenceMachineLib.valuation (A003479 n).toNat 2 : ℤ)

end

end A017943.P6042836904703146703

namespace A017943

/-- `A017945(n)-val(A003479(n), 2)` -/
def P6042836904703146703.Spec : Prop :=
  ∀ n, P6042836904703146703.a n = A017943 n

end A017943

/-! ## A017943.P17646656769590508647

`A018083(2*n)-A166486(n²)`
-/

namespace A017943.P17646656769590508647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018083 (2 * n) - A166486 (n ^ 2)

end

end A017943.P17646656769590508647

namespace A017943

/-- `A018083(2*n)-A166486(n²)` -/
def P17646656769590508647.Spec : Prop :=
  ∀ n, P17646656769590508647.a n = A017943 n

end A017943

/-! ## A017943.P17162967493773777580

`A017945(n)-char[A000265(n+1)]`
-/

namespace A017943.P17162967493773777580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017945 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017943.P17162967493773777580

namespace A017943

/-- `A017945(n)-char[A000265(n+1)]` -/
def P17162967493773777580.Spec : Prop :=
  ∀ n, P17162967493773777580.a n = A017943 n

end A017943

/-! ## A017943.P14560726725376397639

`A017945(n)-char[A135765(n+1)]`
-/

namespace A017943.P14560726725376397639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135765 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017945 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017943.P14560726725376397639

namespace A017943

/-- `A017945(n)-char[A135765(n+1)]` -/
def P14560726725376397639.Spec : Prop :=
  ∀ n, P14560726725376397639.a n = A017943 n

end A017943

/-! ## A017943.P1656594748130288286

`A018083(2*n)-A075553(2*n)²`
-/

namespace A017943.P1656594748130288286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018083 (2 * n) - A075553 (2 * n) ^ 2

end

end A017943.P1656594748130288286

namespace A017943

/-- `A018083(2*n)-A075553(2*n)²` -/
def P1656594748130288286.Spec : Prop :=
  ∀ n, P1656594748130288286.a n = A017943 n

end A017943

/-! ## A017943.P5837309995730532126

`A017945(n)-char[A000267(A002378(n))]`
-/

namespace A017943.P5837309995730532126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A002378 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017945 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017943.P5837309995730532126

namespace A017943

/-- `A017945(n)-char[A000267(A002378(n))]` -/
def P5837309995730532126.Spec : Prop :=
  ∀ n, P5837309995730532126.a n = A017943 n

end A017943

/-! ## A017943.P14476970899891518676

`A018063(2*n)+A018083(2*n)-A018065(2*n)`
-/

namespace A017943.P14476970899891518676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018063 (2 * n) + (A018083 (2 * n) - A018065 (2 * n))

end

end A017943.P14476970899891518676

namespace A017943

/-- `A018063(2*n)+A018083(2*n)-A018065(2*n)` -/
def P14476970899891518676.Spec : Prop :=
  ∀ n, P14476970899891518676.a n = A017943 n

end A017943

/-! ## A017943.P5021080462439664419

`A018083(2*n)+A075553(2*n+1)*A075553(2*n)`
-/

namespace A017943.P5021080462439664419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018083 (2 * n) + A075553 (2 * n + 1) * A075553 (2 * n)

end

end A017943.P5021080462439664419

namespace A017943

/-- `A018083(2*n)+A075553(2*n+1)*A075553(2*n)` -/
def P5021080462439664419.Spec : Prop :=
  ∀ n, P5021080462439664419.a n = A017943 n

end A017943

/-! ## A017943.P11514550442918650011

`A018083(2*n)-A166486(2*n+1)*A166486(2*n)`
-/

namespace A017943.P11514550442918650011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018083 (2 * n) - A166486 (2 * n + 1) * A166486 (2 * n)

end

end A017943.P11514550442918650011

namespace A017943

/-- `A018083(2*n)-A166486(2*n+1)*A166486(2*n)` -/
def P11514550442918650011.Spec : Prop :=
  ∀ n, P11514550442918650011.a n = A017943 n

end A017943

/-! ## A017943.P1919169475862326384

`A018083(2*n)+A018084(2*n)-A018086(2*n)`
-/

namespace A017943.P1919169475862326384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018083 (2 * n) + (A018084 (2 * n) - A018086 (2 * n))

end

end A017943.P1919169475862326384

namespace A017943

/-- `A018083(2*n)+A018084(2*n)-A018086(2*n)` -/
def P1919169475862326384.Spec : Prop :=
  ∀ n, P1919169475862326384.a n = A017943 n

end A017943

/-! ## A017943.P12765880971165647388

`A017945(n)-A046978(n²)`
-/

namespace A017943.P12765880971165647388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017945 n - A046978 (n ^ 2)

end

end A017943.P12765880971165647388

namespace A017943

/-- `A017945(n)-A046978(n²)` -/
def P12765880971165647388.Spec : Prop :=
  ∀ n, P12765880971165647388.a n = A017943 n

end A017943

/-! ## A017943.P1289592150366688405

`A018083(2*n)-A075553(n²)`
-/

namespace A017943.P1289592150366688405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018083 (2 * n) - A075553 (n ^ 2)

end

end A017943.P1289592150366688405

namespace A017943

/-- `A018083(2*n)-A075553(n²)` -/
def P1289592150366688405.Spec : Prop :=
  ∀ n, P1289592150366688405.a n = A017943 n

end A017943

/-!
# A017944: Powers of sqrt(13) rounded to nearest integer.

The programs for A017944, the canonical program `A017944.P1513595564302998042` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017944 has offset 0).

The definition of A017944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017944.P1513595564302998042

`round(sqrt(13)^n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017944

/-- `round(sqrt(13)^n)` -/
def P1513595564302998042.Spec : Prop :=
  ∀ n, P1513595564302998042.a n = A017944 n

theorem P1513595564302998042.correct : P1513595564302998042.Spec := by
  intro n
  simp only [A017944]

end A017944

/-! ## A017944.P11712847062114180973

`A018082(2*n)`
-/

namespace A017944.P11712847062114180973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018082 (2 * n)

end

end A017944.P11712847062114180973

namespace A017944

/-- `A018082(2*n)` -/
def P11712847062114180973.Spec : Prop :=
  ∀ n, P11712847062114180973.a n = A017944 n

end A017944

/-! ## A017944.P9501348475276712844

`record[A018082(and(n, n+1))]`
-/

namespace A017944.P9501348475276712844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018082 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017944.P9501348475276712844

namespace A017944

/-- `record[A018082(and(n, n+1))]` -/
def P9501348475276712844.Spec : Prop :=
  ∀ n, P9501348475276712844.a n = A017944 n

end A017944

/-! ## A017944.P14152955907592374400

`record[A018082(n-A083912(n+1))]`
-/

namespace A017944.P14152955907592374400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018082 ((n : ℤ) - A083912 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017944.P14152955907592374400

namespace A017944

/-- `record[A018082(n-A083912(n+1))]` -/
def P14152955907592374400.Spec : Prop :=
  ∀ n, P14152955907592374400.a n = A017944 n

end A017944

/-! ## A017944.P16331976458557947835

`record[gcd(A018082(n), A083912(n+1))]`
-/

namespace A017944.P16331976458557947835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018082 n) (A083912 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017944.P16331976458557947835

namespace A017944

/-- `record[gcd(A018082(n), A083912(n+1))]` -/
def P16331976458557947835.Spec : Prop :=
  ∀ n, (P16331976458557947835.a n : ℤ) = A017944 n

end A017944

/-! ## A017944.P13746525228967126346

`record[A018082(n)/A018082(A083912(n+1)²)]`
-/

namespace A017944.P13746525228967126346
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018082 n : ℚ) / (A018082 (A083912 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017944.P13746525228967126346

namespace A017944

/-- `record[A018082(n)/A018082(A083912(n+1)²)]` -/
def P13746525228967126346.Spec : Prop :=
  ∀ n, P13746525228967126346.a n = (A017944 n : ℚ)

end A017944

/-! ## A017944.P16200191368344843057

`floor(A017943(2*n)/A017943(n))`
-/

namespace A017944.P16200191368344843057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017943 (2 * n) : ℚ) / (A017943 n : ℚ)⌋

end

end A017944.P16200191368344843057

namespace A017944

/-- `floor(A017943(2*n)/A017943(n))` -/
def P16200191368344843057.Spec : Prop :=
  ∀ n, P16200191368344843057.a n = A017944 n

end A017944

/-! ## A017944.P9349620188389770022

`ceil(A017945(2*n)/A017945(n))`
-/

namespace A017944.P9349620188389770022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017945 (2 * n) : ℚ) / (A017945 n : ℚ)⌉

end

end A017944.P9349620188389770022

namespace A017944

/-- `ceil(A017945(2*n)/A017945(n))` -/
def P9349620188389770022.Spec : Prop :=
  ∀ n, P9349620188389770022.a n = A017944 n

end A017944

/-! ## A017944.P17698233885960697583

`ceil(A017943(2*n)/A018083(2*n))`
-/

namespace A017944.P17698233885960697583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017943 (2 * n) : ℚ) / (A018083 (2 * n) : ℚ)⌉

end

end A017944.P17698233885960697583

namespace A017944

/-- `ceil(A017943(2*n)/A018083(2*n))` -/
def P17698233885960697583.Spec : Prop :=
  ∀ n, P17698233885960697583.a n = A017944 n

end A017944

/-!
# A017945: Powers of sqrt(13) rounded up.

The programs for A017945, the canonical program `A017945.P1346838137632415498` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017945 has offset 0).

The definition of A017945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017945.P1346838137632415498

`ceil(sqrt(13^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017945

/-- `ceil(sqrt(13^n))` -/
def P1346838137632415498.Spec : Prop :=
  ∀ n, P1346838137632415498.a n = A017945 n

theorem P1346838137632415498.correct : P1346838137632415498.Spec := by
  intro n
  simp only [A017945]

end A017945

/-! ## A017945.P8975477426662700313

`A018083(2*n)`
-/

namespace A017945.P8975477426662700313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018083 (2 * n)

end

end A017945.P8975477426662700313

namespace A017945

/-- `A018083(2*n)` -/
def P8975477426662700313.Spec : Prop :=
  ∀ n, P8975477426662700313.a n = A017945 n

end A017945

/-! ## A017945.P18262209795722051270

`A017943(n)+n%2`
-/

namespace A017945.P18262209795722051270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017943 n + ((n % 2 : ℕ) : ℤ)

end

end A017945.P18262209795722051270

namespace A017945

/-- `A017943(n)+n%2` -/
def P18262209795722051270.Spec : Prop :=
  ∀ n, P18262209795722051270.a n = A017945 n

end A017945

/-! ## A017945.P6987428872707208538

`A017943(n)+A000035(n)`
-/

namespace A017945.P6987428872707208538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017943 n + A000035 n

end

end A017945.P6987428872707208538

namespace A017945

/-- `A017943(n)+A000035(n)` -/
def P6987428872707208538.Spec : Prop :=
  ∀ n, P6987428872707208538.a n = A017945 n

end A017945

/-! ## A017945.P2018736996686610417

`A017943(n)+Δ[A004526(n)]`
-/

namespace A017945.P2018736996686610417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017943 n + (f1 (n + 1) - f1 n)

end

end A017945.P2018736996686610417

namespace A017945

/-- `A017943(n)+Δ[A004526(n)]` -/
def P2018736996686610417.Spec : Prop :=
  ∀ n, P2018736996686610417.a n = A017945 n

end A017945

/-! ## A017945.P11031659857617810151

`A017943(n)+Δ[A008619(n)]`
-/

namespace A017945.P11031659857617810151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017943 n + (f1 (n + 1) - f1 n)

end

end A017945.P11031659857617810151

namespace A017945

/-- `A017943(n)+Δ[A008619(n)]` -/
def P11031659857617810151.Spec : Prop :=
  ∀ n, P11031659857617810151.a n = A017945 n

end A017945

/-! ## A017945.P7682053071943795458

`A017943(n)+char[A005408(n)]`
-/

namespace A017945.P7682053071943795458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017943 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017945.P7682053071943795458

namespace A017945

/-- `A017943(n)+char[A005408(n)]` -/
def P7682053071943795458.Spec : Prop :=
  ∀ n, P7682053071943795458.a n = A017945 n

end A017945

/-! ## A017945.P3063539463653040170

`A018081(2*n)+A000035(n)`
-/

namespace A017945.P3063539463653040170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018081 (2 * n) + A000035 n

end

end A017945.P3063539463653040170

namespace A017945

/-- `A018081(2*n)+A000035(n)` -/
def P3063539463653040170.Spec : Prop :=
  ∀ n, P3063539463653040170.a n = A017945 n

end A017945

/-! ## A017945.P2970429704619786742

`A018081(2*n)+A166486(n²)`
-/

namespace A017945.P2970429704619786742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018081 (2 * n) + A166486 (n ^ 2)

end

end A017945.P2970429704619786742

namespace A017945

/-- `A018081(2*n)+A166486(n²)` -/
def P2970429704619786742.Spec : Prop :=
  ∀ n, P2970429704619786742.a n = A017945 n

end A017945

/-! ## A017945.P18180164395391181571

`A166486(2*n)+A018081(2*n)`
-/

namespace A017945.P18180164395391181571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A018081 (2 * n)

end

end A017945.P18180164395391181571

namespace A017945

/-- `A166486(2*n)+A018081(2*n)` -/
def P18180164395391181571.Spec : Prop :=
  ∀ n, P18180164395391181571.a n = A017945 n

end A017945

/-! ## A017945.P1776984088606621694

`A018065(2*n)+A018081(2*n)-A018063(2*n)`
-/

namespace A017945.P1776984088606621694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018065 (2 * n) + (A018081 (2 * n) - A018063 (2 * n))

end

end A017945.P1776984088606621694

namespace A017945

/-- `A018065(2*n)+A018081(2*n)-A018063(2*n)` -/
def P1776984088606621694.Spec : Prop :=
  ∀ n, P1776984088606621694.a n = A017945 n

end A017945

/-! ## A017945.P14215535389282095782

`A018081(2*n)+A018101(2*n)-A018099(2*n)`
-/

namespace A017945.P14215535389282095782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018081 (2 * n) + (A018101 (2 * n) - A018099 (2 * n))

end

end A017945.P14215535389282095782

namespace A017945

/-- `A018081(2*n)+A018101(2*n)-A018099(2*n)` -/
def P14215535389282095782.Spec : Prop :=
  ∀ n, P14215535389282095782.a n = A017945 n

end A017945

/-!
# A017946: Powers of sqrt(14) rounded down.

The programs for A017946, the canonical program `A017946.P6063358024097126326` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017946 has offset 0).

The definition of A017946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017946.P6063358024097126326

`floor(sqrt(14^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017946

/-- `floor(sqrt(14^n))` -/
def P6063358024097126326.Spec : Prop :=
  ∀ n, (P6063358024097126326.a n : ℤ) = A017946 n

theorem P6063358024097126326.correct : P6063358024097126326.Spec := by
  intro n
  simp only [A017946]

end A017946

/-! ## A017946.P3250146267367498110

`A018084(2*n)`
-/

namespace A017946.P3250146267367498110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018084 (2 * n)

end

end A017946.P3250146267367498110

namespace A017946

/-- `A018084(2*n)` -/
def P3250146267367498110.Spec : Prop :=
  ∀ n, P3250146267367498110.a n = A017946 n

end A017946

/-! ## A017946.P6638509967071586019

`A018086(2*n)-and(1, n)`
-/

namespace A017946.P6638509967071586019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018086 (2 * n) - (Nat.land 1 n : ℤ)

end

end A017946.P6638509967071586019

namespace A017946

/-- `A018086(2*n)-and(1, n)` -/
def P6638509967071586019.Spec : Prop :=
  ∀ n, P6638509967071586019.a n = A017946 n

end A017946

/-! ## A017946.P3084617016844410702

`A017948(n)-Δ[floor(n/2)]`
-/

namespace A017946.P3084617016844410702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017948 n - (f1 (n + 1) - f1 n)

end

end A017946.P3084617016844410702

namespace A017946

/-- `A017948(n)-Δ[floor(n/2)]` -/
def P3084617016844410702.Spec : Prop :=
  ∀ n, P3084617016844410702.a n = A017946 n

end A017946

/-! ## A017946.P15194699463968557826

`record[A018084((n-1)^(n%2))]`
-/

namespace A017946.P15194699463968557826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018084 (((n : ℤ) - 1) ^ (n % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017946.P15194699463968557826

namespace A017946

/-- `record[A018084((n-1)^(n%2))]` -/
def P15194699463968557826.Spec : Prop :=
  ∀ n, P15194699463968557826.a n = A017946 n

end A017946

/-! ## A017946.P12359872108656976578

`A018086(2*n)-A166486(n²)`
-/

namespace A017946.P12359872108656976578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018086 (2 * n) - A166486 (n ^ 2)

end

end A017946.P12359872108656976578

namespace A017946

/-- `A018086(2*n)-A166486(n²)` -/
def P12359872108656976578.Spec : Prop :=
  ∀ n, P12359872108656976578.a n = A017946 n

end A017946

/-! ## A017946.P7436406054170638323

`A018063(2*n)+A018086(2*n)-A018065(2*n)`
-/

namespace A017946.P7436406054170638323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018063 (2 * n) + (A018086 (2 * n) - A018065 (2 * n))

end

end A017946.P7436406054170638323

namespace A017946

/-- `A018063(2*n)+A018086(2*n)-A018065(2*n)` -/
def P7436406054170638323.Spec : Prop :=
  ∀ n, P7436406054170638323.a n = A017946 n

end A017946

/-! ## A017946.P4252356311142197160

`A018072(2*n)+A018086(2*n)-A018074(2*n)`
-/

namespace A017946.P4252356311142197160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018072 (2 * n) + (A018086 (2 * n) - A018074 (2 * n))

end

end A017946.P4252356311142197160

namespace A017946

/-- `A018072(2*n)+A018086(2*n)-A018074(2*n)` -/
def P4252356311142197160.Spec : Prop :=
  ∀ n, P4252356311142197160.a n = A017946 n

end A017946

/-! ## A017946.P907436341273549645

`A018075(2*n)+A018086(2*n)-A018077(2*n)`
-/

namespace A017946.P907436341273549645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018075 (2 * n) + (A018086 (2 * n) - A018077 (2 * n))

end

end A017946.P907436341273549645

namespace A017946

/-- `A018075(2*n)+A018086(2*n)-A018077(2*n)` -/
def P907436341273549645.Spec : Prop :=
  ∀ n, P907436341273549645.a n = A017946 n

end A017946

/-! ## A017946.P5418199902244347087

`A018086(2*n)-A166486(2*n+1)*A166486(2*n)`
-/

namespace A017946.P5418199902244347087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018086 (2 * n) - A166486 (2 * n + 1) * A166486 (2 * n)

end

end A017946.P5418199902244347087

namespace A017946

/-- `A018086(2*n)-A166486(2*n+1)*A166486(2*n)` -/
def P5418199902244347087.Spec : Prop :=
  ∀ n, P5418199902244347087.a n = A017946 n

end A017946

/-!
# A017947: Powers of sqrt(14) rounded to nearest integer.

The programs for A017947, the canonical program `A017947.P32567246775280054` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017947 has offset 0).

The definition of A017947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017947.P32567246775280054

`round(sqrt(14)^n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017947

/-- `round(sqrt(14)^n)` -/
def P32567246775280054.Spec : Prop :=
  ∀ n, P32567246775280054.a n = A017947 n

theorem P32567246775280054.correct : P32567246775280054.Spec := by
  intro n
  simp only [A017947]

end A017947

/-! ## A017947.P16386883103359964880

`A018085(2*n)`
-/

namespace A017947.P16386883103359964880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018085 (2 * n)

end

end A017947.P16386883103359964880

namespace A017947

/-- `A018085(2*n)` -/
def P16386883103359964880.Spec : Prop :=
  ∀ n, P16386883103359964880.a n = A017947 n

end A017947

/-! ## A017947.P4740216027375315266

`record[A018085(and(n, n+1))]`
-/

namespace A017947.P4740216027375315266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018085 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017947.P4740216027375315266

namespace A017947

/-- `record[A018085(and(n, n+1))]` -/
def P4740216027375315266.Spec : Prop :=
  ∀ n, P4740216027375315266.a n = A017947 n

end A017947

/-! ## A017947.P98174096488628094

`xor(1, xor(1, A018085(n+n)))`
-/

namespace A017947.P98174096488628094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A018085 (n + n)))

end

end A017947.P98174096488628094

namespace A017947

/-- `xor(1, xor(1, A018085(n+n)))` -/
def P98174096488628094.Spec : Prop :=
  ∀ n, P98174096488628094.a n = A017947 n

end A017947

/-! ## A017947.P12455525547225299485

`record[A018085(A014681(n))]`
-/

namespace A017947.P12455525547225299485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018085 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017947.P12455525547225299485

namespace A017947

/-- `record[A018085(A014681(n))]` -/
def P12455525547225299485.Spec : Prop :=
  ∀ n, P12455525547225299485.a n = A017947 n

end A017947

/-! ## A017947.P5743859770699403097

`record[A018085(A083220(n))]`
-/

namespace A017947.P5743859770699403097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018085 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017947.P5743859770699403097

namespace A017947

/-- `record[A018085(A083220(n))]` -/
def P5743859770699403097.Spec : Prop :=
  ∀ n, P5743859770699403097.a n = A017947 n

end A017947

/-! ## A017947.P12520245779287674977

`floor(A017946(2*n)/A017946(n))`
-/

namespace A017947.P12520245779287674977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017946 (2 * n) : ℚ) / (A017946 n : ℚ)⌋

end

end A017947.P12520245779287674977

namespace A017947

/-- `floor(A017946(2*n)/A017946(n))` -/
def P12520245779287674977.Spec : Prop :=
  ∀ n, P12520245779287674977.a n = A017947 n

end A017947

/-! ## A017947.P13976099218118390519

`ceil(A017948(2*n)/A017948(n))`
-/

namespace A017947.P13976099218118390519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017948 (2 * n) : ℚ) / (A017948 n : ℚ)⌉

end

end A017947.P13976099218118390519

namespace A017947

/-- `ceil(A017948(2*n)/A017948(n))` -/
def P13976099218118390519.Spec : Prop :=
  ∀ n, P13976099218118390519.a n = A017947 n

end A017947

/-! ## A017947.P6132850502233845221

`ceil(A017946(2*n)/A018086(2*n))`
-/

namespace A017947.P6132850502233845221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017946 (2 * n) : ℚ) / (A018086 (2 * n) : ℚ)⌉

end

end A017947.P6132850502233845221

namespace A017947

/-- `ceil(A017946(2*n)/A018086(2*n))` -/
def P6132850502233845221.Spec : Prop :=
  ∀ n, P6132850502233845221.a n = A017947 n

end A017947

/-!
# A017948: Powers of sqrt(14) rounded up.

The programs for A017948, the canonical program `A017948.P14549424571590619429` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017948 has offset 0).

The definition of A017948 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017948.P14549424571590619429

`ceil(sqrt(14^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017948

/-- `ceil(sqrt(14^n))` -/
def P14549424571590619429.Spec : Prop :=
  ∀ n, P14549424571590619429.a n = A017948 n

theorem P14549424571590619429.correct : P14549424571590619429.Spec := by
  intro n
  simp only [A017948]

end A017948

/-! ## A017948.P2887911832625567196

`floor(sqrt(14)^n)+n%2`
-/

namespace A017948.P2887911832625567196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (14 : ℝ) ^ n⌋ + ((n % 2 : ℕ) : ℤ)

end

end A017948.P2887911832625567196

namespace A017948

/-- `floor(sqrt(14)^n)+n%2` -/
def P2887911832625567196.Spec : Prop :=
  ∀ n, P2887911832625567196.a n = A017948 n

end A017948

/-! ## A017948.P3944526225623241348

`floor(sqrt(14)^n)+and(1, n)`
-/

namespace A017948.P3944526225623241348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (14 : ℝ) ^ n⌋ + (Nat.land 1 n : ℤ)

end

end A017948.P3944526225623241348

namespace A017948

/-- `floor(sqrt(14)^n)+and(1, n)` -/
def P3944526225623241348.Spec : Prop :=
  ∀ n, P3944526225623241348.a n = A017948 n

end A017948

/-! ## A017948.P16960235411319479094

`A018086(2*n)`
-/

namespace A017948.P16960235411319479094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018086 (2 * n)

end

end A017948.P16960235411319479094

namespace A017948

/-- `A018086(2*n)` -/
def P16960235411319479094.Spec : Prop :=
  ∀ n, P16960235411319479094.a n = A017948 n

end A017948

/-! ## A017948.P14778641042159926655

`record[A018086(and(n, n+1))]`
-/

namespace A017948.P14778641042159926655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018086 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017948.P14778641042159926655

namespace A017948

/-- `record[A018086(and(n, n+1))]` -/
def P14778641042159926655.Spec : Prop :=
  ∀ n, P14778641042159926655.a n = A017948 n

end A017948

/-! ## A017948.P104352393107781332

`A017946(n)+A000035(n)`
-/

namespace A017948.P104352393107781332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017946 n + A000035 n

end

end A017948.P104352393107781332

namespace A017948

/-- `A017946(n)+A000035(n)` -/
def P104352393107781332.Spec : Prop :=
  ∀ n, P104352393107781332.a n = A017948 n

end A017948

/-! ## A017948.P3534734320595410086

`A017946(n)+A134452(n)²`
-/

namespace A017948.P3534734320595410086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017946 n + A134452 n ^ 2

end

end A017948.P3534734320595410086

namespace A017948

/-- `A017946(n)+A134452(n)²` -/
def P3534734320595410086.Spec : Prop :=
  ∀ n, P3534734320595410086.a n = A017948 n

end A017948

/-! ## A017948.P1991841677860083697

`A017946(n)+Δ[A004526(n)]`
-/

namespace A017948.P1991841677860083697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017946 n + (f1 (n + 1) - f1 n)

end

end A017948.P1991841677860083697

namespace A017948

/-- `A017946(n)+Δ[A004526(n)]` -/
def P1991841677860083697.Spec : Prop :=
  ∀ n, P1991841677860083697.a n = A017948 n

end A017948

/-! ## A017948.P13833278986878757619

`A017946(n)+Δ[A008619(n)]`
-/

namespace A017948.P13833278986878757619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017946 n + (f1 (n + 1) - f1 n)

end

end A017948.P13833278986878757619

namespace A017948

/-- `A017946(n)+Δ[A008619(n)]` -/
def P13833278986878757619.Spec : Prop :=
  ∀ n, P13833278986878757619.a n = A017948 n

end A017948

/-! ## A017948.P12687351696336460646

`A017946(n)+char[A005408(n)]`
-/

namespace A017948.P12687351696336460646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017946 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017948.P12687351696336460646

namespace A017948

/-- `A017946(n)+char[A005408(n)]` -/
def P12687351696336460646.Spec : Prop :=
  ∀ n, P12687351696336460646.a n = A017948 n

end A017948

/-! ## A017948.P2484192498486294168

`A018084(2*n)+A166486(n²)`
-/

namespace A017948.P2484192498486294168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018084 (2 * n) + A166486 (n ^ 2)

end

end A017948.P2484192498486294168

namespace A017948

/-- `A018084(2*n)+A166486(n²)` -/
def P2484192498486294168.Spec : Prop :=
  ∀ n, P2484192498486294168.a n = A017948 n

end A017948

/-! ## A017948.P16566681445478069882

`A166486(2*n)+A018084(2*n)`
-/

namespace A017948.P16566681445478069882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A018084 (2 * n)

end

end A017948.P16566681445478069882

namespace A017948

/-- `A166486(2*n)+A018084(2*n)` -/
def P16566681445478069882.Spec : Prop :=
  ∀ n, P16566681445478069882.a n = A017948 n

end A017948

/-! ## A017948.P6955615021393664255

`A018065(2*n)+A018084(2*n)-A018063(2*n)`
-/

namespace A017948.P6955615021393664255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018065 (2 * n) + (A018084 (2 * n) - A018063 (2 * n))

end

end A017948.P6955615021393664255

namespace A017948

/-- `A018065(2*n)+A018084(2*n)-A018063(2*n)` -/
def P6955615021393664255.Spec : Prop :=
  ∀ n, P6955615021393664255.a n = A017948 n

end A017948

/-! ## A017948.P17123360221041895384

`A018084(2*n)+A018101(2*n)-A018099(2*n)`
-/

namespace A017948.P17123360221041895384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018084 (2 * n) + (A018101 (2 * n) - A018099 (2 * n))

end

end A017948.P17123360221041895384

namespace A017948

/-- `A018084(2*n)+A018101(2*n)-A018099(2*n)` -/
def P17123360221041895384.Spec : Prop :=
  ∀ n, P17123360221041895384.a n = A017948 n

end A017948

/-! ## A017948.P3761011273700268554

`A017946(n)+A007814(n²+1)`
-/

namespace A017948.P3761011273700268554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017946 n + A007814 (n ^ 2 + 1)

end

end A017948.P3761011273700268554

namespace A017948

/-- `A017946(n)+A007814(n²+1)` -/
def P3761011273700268554.Spec : Prop :=
  ∀ n, P3761011273700268554.a n = A017948 n

end A017948

/-!
# A017949: Powers of sqrt(15) rounded down.

The programs for A017949, the canonical program `A017949.P14583680733829456344` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017949 has offset 0).

The definition of A017949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017949.P14583680733829456344

`floor(sqrt(15^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017949

/-- `floor(sqrt(15^n))` -/
def P14583680733829456344.Spec : Prop :=
  ∀ n, (P14583680733829456344.a n : ℤ) = A017949 n

theorem P14583680733829456344.correct : P14583680733829456344.Spec := by
  intro n
  simp only [A017949]

end A017949

/-! ## A017949.P13470094462827783863

`ceil(sqrt(15)^n)-and(1, n)`
-/

namespace A017949.P13470094462827783863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (15 : ℝ) ^ n⌉ - (Nat.land 1 n : ℤ)

end

end A017949.P13470094462827783863

namespace A017949

/-- `ceil(sqrt(15)^n)-and(1, n)` -/
def P13470094462827783863.Spec : Prop :=
  ∀ n, P13470094462827783863.a n = A017949 n

end A017949

/-! ## A017949.P11583827976338391027

`A018087(2*n)`
-/

namespace A017949.P11583827976338391027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018087 (2 * n)

end

end A017949.P11583827976338391027

namespace A017949

/-- `A018087(2*n)` -/
def P11583827976338391027.Spec : Prop :=
  ∀ n, P11583827976338391027.a n = A017949 n

end A017949

/-! ## A017949.P1342585051494134605

`A017951(n)-n%2`
-/

namespace A017949.P1342585051494134605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017951 n - ((n % 2 : ℕ) : ℤ)

end

end A017949.P1342585051494134605

namespace A017949

/-- `A017951(n)-n%2` -/
def P1342585051494134605.Spec : Prop :=
  ∀ n, P1342585051494134605.a n = A017949 n

end A017949

/-! ## A017949.P4675673480873354383

`A017951(n)-A000035(n)`
-/

namespace A017949.P4675673480873354383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017951 n - A000035 n

end

end A017949.P4675673480873354383

namespace A017949

/-- `A017951(n)-A000035(n)` -/
def P4675673480873354383.Spec : Prop :=
  ∀ n, P4675673480873354383.a n = A017949 n

end A017949

/-! ## A017949.P8838703666666448457

`A017951(n)-Δ[A008619(n)]`
-/

namespace A017949.P8838703666666448457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017951 n - (f1 (n + 1) - f1 n)

end

end A017949.P8838703666666448457

namespace A017949

/-- `A017951(n)-Δ[A008619(n)]` -/
def P8838703666666448457.Spec : Prop :=
  ∀ n, P8838703666666448457.a n = A017949 n

end A017949

/-! ## A017949.P17051248394158495673

`A018089(2*n)-A000035(n)`
-/

namespace A017949.P17051248394158495673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018089 (2 * n) - A000035 n

end

end A017949.P17051248394158495673

namespace A017949

/-- `A018089(2*n)-A000035(n)` -/
def P17051248394158495673.Spec : Prop :=
  ∀ n, P17051248394158495673.a n = A017949 n

end A017949

/-! ## A017949.P9865823656008322185

`A017951(n)-Δ[abs(A127365(n))]`
-/

namespace A017949.P9865823656008322185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127365 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017951 n - (f1 (n + 1) - f1 n)

end

end A017949.P9865823656008322185

namespace A017949

/-- `A017951(n)-Δ[abs(A127365(n))]` -/
def P9865823656008322185.Spec : Prop :=
  ∀ n, P9865823656008322185.a n = A017949 n

end A017949

/-! ## A017949.P13921701096633898509

`A018089(2*n)-A166486(n²)`
-/

namespace A017949.P13921701096633898509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018089 (2 * n) - A166486 (n ^ 2)

end

end A017949.P13921701096633898509

namespace A017949

/-- `A018089(2*n)-A166486(n²)` -/
def P13921701096633898509.Spec : Prop :=
  ∀ n, P13921701096633898509.a n = A017949 n

end A017949

/-! ## A017949.P15316280846866529173

`A017951(n)-Δ[A109613(n)/2]`
-/

namespace A017949.P15316280846866529173
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109613 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017951 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A017949.P15316280846866529173

namespace A017949

/-- `A017951(n)-Δ[A109613(n)/2]` -/
def P15316280846866529173.Spec : Prop :=
  ∀ n, P15316280846866529173.a n = (A017949 n : ℚ)

end A017949

/-! ## A017949.P7946541909115717180

`A017951(n)-A341839(Δ[A109613(n)])`
-/

namespace A017949.P7946541909115717180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017951 n - A341839 (f1 (n + 1) - f1 n).toNat

end

end A017949.P7946541909115717180

namespace A017949

/-- `A017951(n)-A341839(Δ[A109613(n)])` -/
def P7946541909115717180.Spec : Prop :=
  ∀ n, P7946541909115717180.a n = A017949 n

end A017949

/-! ## A017949.P12548415726073551666

`A017951(n)-A001221(A006519(n+1))`
-/

namespace A017949.P12548415726073551666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017951 n - A001221 (A006519 (n + 1)).toNat

end

end A017949.P12548415726073551666

namespace A017949

/-- `A017951(n)-A001221(A006519(n+1))` -/
def P12548415726073551666.Spec : Prop :=
  ∀ n, P12548415726073551666.a n = A017949 n

end A017949

/-! ## A017949.P15858362176535984277

`A018063(2*n)+A018089(2*n)-A018065(2*n)`
-/

namespace A017949.P15858362176535984277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018063 (2 * n) + (A018089 (2 * n) - A018065 (2 * n))

end

end A017949.P15858362176535984277

namespace A017949

/-- `A018063(2*n)+A018089(2*n)-A018065(2*n)` -/
def P15858362176535984277.Spec : Prop :=
  ∀ n, P15858362176535984277.a n = A017949 n

end A017949

/-! ## A017949.P7052214221758260441

`A018089(2*n)-A166486(2*n+1)*A166486(2*n)`
-/

namespace A017949.P7052214221758260441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018089 (2 * n) - A166486 (2 * n + 1) * A166486 (2 * n)

end

end A017949.P7052214221758260441

namespace A017949

/-- `A018089(2*n)-A166486(2*n+1)*A166486(2*n)` -/
def P7052214221758260441.Spec : Prop :=
  ∀ n, P7052214221758260441.a n = A017949 n

end A017949

/-! ## A017949.P18067121993992300584

`∪[A017951(2*n+1)-1, A017951(2*n)]`
-/

namespace A017949.P18067121993992300584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017951 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017951 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A017949.P18067121993992300584

namespace A017949

/-- `∪[A017951(2*n+1)-1, A017951(2*n)]` -/
def P18067121993992300584.Spec : Prop :=
  ∀ n, (P18067121993992300584.a n : ℤ) = A017949 n

end A017949

/-!
# A017950: Powers of sqrt(15) rounded to nearest integer.

The programs for A017950, the canonical program `A017950.P15998525358839181329` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017950 has offset 0).

The definition of A017950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017950.P15998525358839181329

`round(sqrt(15)^n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017950

/-- `round(sqrt(15)^n)` -/
def P15998525358839181329.Spec : Prop :=
  ∀ n, P15998525358839181329.a n = A017950 n

theorem P15998525358839181329.correct : P15998525358839181329.Spec := by
  intro n
  simp only [A017950]

end A017950

/-! ## A017950.P11699082642346262215

`A018088(2*n)`
-/

namespace A017950.P11699082642346262215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018088 (2 * n)

end

end A017950.P11699082642346262215

namespace A017950

/-- `A018088(2*n)` -/
def P11699082642346262215.Spec : Prop :=
  ∀ n, P11699082642346262215.a n = A017950 n

end A017950

/-! ## A017950.P1219899669138747445

`record[A018088(and(n, n-1))]`
-/

namespace A017950.P1219899669138747445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018088 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017950.P1219899669138747445

namespace A017950

/-- `record[A018088(and(n, n-1))]` -/
def P1219899669138747445.Spec : Prop :=
  ∀ n, P1219899669138747445.a n = A017950 n

end A017950

/-! ## A017950.P12199092884535880630

`record[A018088(n)/A033999(n+2)]`
-/

namespace A017950.P12199092884535880630
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018088 n : ℚ) / (A033999 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017950.P12199092884535880630

namespace A017950

/-- `record[A018088(n)/A033999(n+2)]` -/
def P12199092884535880630.Spec : Prop :=
  ∀ n, P12199092884535880630.a n = (A017950 n : ℚ)

end A017950

/-! ## A017950.P8638523644269142758

`A018088(A004277(n))-A000007(n)`
-/

namespace A017950.P8638523644269142758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018088 (A004277 n).toNat - A000007 n

end

end A017950.P8638523644269142758

namespace A017950

/-- `A018088(A004277(n))-A000007(n)` -/
def P8638523644269142758.Spec : Prop :=
  ∀ n, P8638523644269142758.a n = A017950 n

end A017950

/-! ## A017950.P17781855905266903767

`A018088(A005843(n))%A005059(n+2)`
-/

namespace A017950.P17781855905266903767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018088 (A005843 n).toNat) (A005059 (n + 2))

end

end A017950.P17781855905266903767

namespace A017950

/-- `A018088(A005843(n))%A005059(n+2)` -/
def P17781855905266903767.Spec : Prop :=
  ∀ n, P17781855905266903767.a n = A017950 n

end A017950

/-! ## A017950.P12016843852156707183

`ceil(A001024(n)/A017951(n))`
-/

namespace A017950.P12016843852156707183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001024 n : ℚ) / (A017951 n : ℚ)⌉

end

end A017950.P12016843852156707183

namespace A017950

/-- `ceil(A001024(n)/A017951(n))` -/
def P12016843852156707183.Spec : Prop :=
  ∀ n, P12016843852156707183.a n = A017950 n

end A017950

/-! ## A017950.P3387420977462005375

`ceil(A017951(2*n)/A017951(n))`
-/

namespace A017950.P3387420977462005375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017951 (2 * n) : ℚ) / (A017951 n : ℚ)⌉

end

end A017950.P3387420977462005375

namespace A017950

/-- `ceil(A017951(2*n)/A017951(n))` -/
def P3387420977462005375.Spec : Prop :=
  ∀ n, P3387420977462005375.a n = A017950 n

end A017950

/-! ## A017950.P14503952045857423396

`ceil(A017949(2*n)/A018089(2*n))`
-/

namespace A017950.P14503952045857423396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017949 (2 * n) : ℚ) / (A018089 (2 * n) : ℚ)⌉

end

end A017950.P14503952045857423396

namespace A017950

/-- `ceil(A017949(2*n)/A018089(2*n))` -/
def P14503952045857423396.Spec : Prop :=
  ∀ n, P14503952045857423396.a n = A017950 n

end A017950

/-! ## A017950.P6004913192544648291

`floor(sqrt(A018087(2*n)+A017949(2*n)))`
-/

namespace A017950.P6004913192544648291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018087 (2 * n) + A017949 (2 * n))

end

end A017950.P6004913192544648291

namespace A017950

/-- `floor(sqrt(A018087(2*n)+A017949(2*n)))` -/
def P6004913192544648291.Spec : Prop :=
  ∀ n, P6004913192544648291.a n = A017950 n

end A017950

/-!
# A017951: Powers of sqrt(15) rounded up.

The programs for A017951, the canonical program `A017951.P4743721663244329506` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017951 has offset 0).

The definition of A017951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017951.P4743721663244329506

`ceil(sqrt(15^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017951

/-- `ceil(sqrt(15^n))` -/
def P4743721663244329506.Spec : Prop :=
  ∀ n, P4743721663244329506.a n = A017951 n

theorem P4743721663244329506.correct : P4743721663244329506.Spec := by
  intro n
  simp only [A017951]

end A017951

/-! ## A017951.P12942048810740802805

`floor(15^(n/2))+n%2`
-/

namespace A017951.P12942048810740802805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(15 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋ + ((n % 2 : ℕ) : ℤ)

end

end A017951.P12942048810740802805

namespace A017951

/-- `floor(15^(n/2))+n%2` -/
def P12942048810740802805.Spec : Prop :=
  ∀ n, P12942048810740802805.a n = A017951 n

end A017951

/-! ## A017951.P3845173181098151058

`record[log2(gcd(2, n))*ceil(15^(n/4))]`
-/

namespace A017951.P3845173181098151058
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (⌈(15 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉ : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017951.P3845173181098151058

namespace A017951

/-- `record[log2(gcd(2, n))*ceil(15^(n/4))]` -/
def P3845173181098151058.Spec : Prop :=
  ∀ n, P3845173181098151058.a n = (A017951 n : ℝ)

end A017951

/-! ## A017951.P4078160105353810371

`A018089(2*n)`
-/

namespace A017951.P4078160105353810371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018089 (2 * n)

end

end A017951.P4078160105353810371

namespace A017951

/-- `A018089(2*n)` -/
def P4078160105353810371.Spec : Prop :=
  ∀ n, P4078160105353810371.a n = A017951 n

end A017951

/-! ## A017951.P11598553789899595635

`A017949(n)+and(1, n)`
-/

namespace A017951.P11598553789899595635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017949 n + (Nat.land 1 n : ℤ)

end

end A017951.P11598553789899595635

namespace A017951

/-- `A017949(n)+and(1, n)` -/
def P11598553789899595635.Spec : Prop :=
  ∀ n, P11598553789899595635.a n = A017951 n

end A017951

/-! ## A017951.P13658471269836139320

`A017949(n)+A000035(n)`
-/

namespace A017951.P13658471269836139320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017949 n + A000035 n

end

end A017951.P13658471269836139320

namespace A017951

/-- `A017949(n)+A000035(n)` -/
def P13658471269836139320.Spec : Prop :=
  ∀ n, P13658471269836139320.a n = A017951 n

end A017951

/-! ## A017951.P6655507316796372893

`A017949(n)+Δ[A004526(n)]`
-/

namespace A017951.P6655507316796372893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017949 n + (f1 (n + 1) - f1 n)

end

end A017951.P6655507316796372893

namespace A017951

/-- `A017949(n)+Δ[A004526(n)]` -/
def P6655507316796372893.Spec : Prop :=
  ∀ n, P6655507316796372893.a n = A017951 n

end A017951

/-! ## A017951.P3513682504876739852

`A017949(n)+char[A005408(n)]`
-/

namespace A017951.P3513682504876739852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017949 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017951.P3513682504876739852

namespace A017951

/-- `A017949(n)+char[A005408(n)]` -/
def P3513682504876739852.Spec : Prop :=
  ∀ n, P3513682504876739852.a n = A017951 n

end A017951

/-! ## A017951.P11078573629782886472

`A059841(n+1)+A017949(n)`
-/

namespace A017951.P11078573629782886472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + A017949 n

end

end A017951.P11078573629782886472

namespace A017951

/-- `A059841(n+1)+A017949(n)` -/
def P11078573629782886472.Spec : Prop :=
  ∀ n, P11078573629782886472.a n = A017951 n

end A017951

/-! ## A017951.P7235713448284616987

`1-(A059841(n)-A017949(n))`
-/

namespace A017951.P7235713448284616987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A059841 n - A017949 n)

end

end A017951.P7235713448284616987

namespace A017951

/-- `1-(A059841(n)-A017949(n))` -/
def P7235713448284616987.Spec : Prop :=
  ∀ n, P7235713448284616987.a n = A017951 n

end A017951

/-! ## A017951.P1692711414219202502

`A018087(2*n)+A000035(n)`
-/

namespace A017951.P1692711414219202502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018087 (2 * n) + A000035 n

end

end A017951.P1692711414219202502

namespace A017951

/-- `A018087(2*n)+A000035(n)` -/
def P1692711414219202502.Spec : Prop :=
  ∀ n, P1692711414219202502.a n = A017951 n

end A017951

/-! ## A017951.P8043933677470987547

`A018087(2*n)+A166486(n²)`
-/

namespace A017951.P8043933677470987547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018087 (2 * n) + A166486 (n ^ 2)

end

end A017951.P8043933677470987547

namespace A017951

/-- `A018087(2*n)+A166486(n²)` -/
def P8043933677470987547.Spec : Prop :=
  ∀ n, P8043933677470987547.a n = A017951 n

end A017951

/-! ## A017951.P3213610138670186017

`A059841(n+1)+A018087(2*n)`
-/

namespace A017951.P3213610138670186017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + A018087 (2 * n)

end

end A017951.P3213610138670186017

namespace A017951

/-- `A059841(n+1)+A018087(2*n)` -/
def P3213610138670186017.Spec : Prop :=
  ∀ n, P3213610138670186017.a n = A017951 n

end A017951

/-! ## A017951.P709968099549276857

`A166486(2*n)+A018087(2*n)`
-/

namespace A017951.P709968099549276857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A018087 (2 * n)

end

end A017951.P709968099549276857

namespace A017951

/-- `A166486(2*n)+A018087(2*n)` -/
def P709968099549276857.Spec : Prop :=
  ∀ n, P709968099549276857.a n = A017951 n

end A017951

/-! ## A017951.P1993661177366686296

`∪[A017949(2*n+1)+1, A017949(2*n)]`
-/

namespace A017951.P1993661177366686296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017949 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017949 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A017951.P1993661177366686296

namespace A017951

/-- `∪[A017949(2*n+1)+1, A017949(2*n)]` -/
def P1993661177366686296.Spec : Prop :=
  ∀ n, (P1993661177366686296.a n : ℤ) = A017951 n

end A017951

/-! ## A017951.P4158610424132952836

`A018087(2*n)+A018101(2*n)-A018099(2*n)`
-/

namespace A017951.P4158610424132952836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018087 (2 * n) + (A018101 (2 * n) - A018099 (2 * n))

end

end A017951.P4158610424132952836

namespace A017951

/-- `A018087(2*n)+A018101(2*n)-A018099(2*n)` -/
def P4158610424132952836.Spec : Prop :=
  ∀ n, P4158610424132952836.a n = A017951 n

end A017951

/-!
# A017952: Expansion of 1/((1-3x)*(1-6x)*(1-10x)).

The programs for A017952, the canonical program `A017952.P15788919180846246640` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017952 has offset 0).

The definition of A017952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017952.P15788919180846246640

`16*a(n-1)-60*a(n-2)+3^n` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017952

/-- `16*a(n-1)-60*a(n-2)+3^n` -/
def P15788919180846246640.Spec : Prop :=
  ∀ n, P15788919180846246640.a n = A017952 n

theorem P15788919180846246640.correct : P15788919180846246640.Spec := by
  intro n
  simp only [A017952]

end A017952

/-! ## A017952.P12164899399094726694

`(3*10^(n+2)-7*6^(n+2)+4*3^(n+2))/84`
-/

namespace A017952.P12164899399094726694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 10 ^ (n + 2) : ℤ) - (7 * 6 ^ (n + 2) : ℤ) + (4 * 3 ^ (n + 2) : ℤ) : ℚ) / 84

end

end A017952.P12164899399094726694

namespace A017952

/-- `(3*10^(n+2)-7*6^(n+2)+4*3^(n+2))/84` -/
def P12164899399094726694.Spec : Prop :=
  ∀ n, P12164899399094726694.a n = (A017952 n : ℚ)

end A017952

/-! ## A017952.P5856672625795277845

`or(1, Δ[A080248(A167614(n+1))])`
-/

namespace A017952.P5856672625795277845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080248 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A017952.P5856672625795277845

namespace A017952

/-- `or(1, Δ[A080248(A167614(n+1))])` -/
def P5856672625795277845.Spec : Prop :=
  ∀ n, P5856672625795277845.a n = A017952 n

end A017952

/-! ## A017952.P1498261579523981755

`Δ[A080248(A167614(n+1))+A057427(n)]`
-/

namespace A017952.P1498261579523981755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080248 (A167614 (n + 1)).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017952.P1498261579523981755

namespace A017952

/-- `Δ[A080248(A167614(n+1))+A057427(n)]` -/
def P1498261579523981755.Spec : Prop :=
  ∀ n, P1498261579523981755.a n = A017952 n

end A017952

/-! ## A017952.P3569273490924203173

`Δ[A080248(A167614(n+1))-A057428(n)]`
-/

namespace A017952.P3569273490924203173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080248 (A167614 (n + 1)).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017952.P3569273490924203173

namespace A017952

/-- `Δ[A080248(A167614(n+1))-A057428(n)]` -/
def P3569273490924203173.Spec : Prop :=
  ∀ n, P3569273490924203173.a n = A017952 n

end A017952

/-!
# A017953: Expansion of 1/((1-3x)*(1-6x)*(1-11x)).

The programs for A017953, the canonical program `A017953.P7732588772335147797` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017953 has offset 0).

The definition of A017953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017953.P7732588772335147797

`17*a(n-1)-66*a(n-2)+3^n` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017953

/-- `17*a(n-1)-66*a(n-2)+3^n` -/
def P7732588772335147797.Spec : Prop :=
  ∀ n, P7732588772335147797.a n = A017953 n

theorem P7732588772335147797.correct : P7732588772335147797.Spec := by
  intro n
  simp only [A017953]

end A017953

/-! ## A017953.P2930664446733967916

`(3*11^(n+2)-8*6^(n+2)+5*3^(n+2))/120`
-/

namespace A017953.P2930664446733967916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 11 ^ (n + 2) : ℤ) - (8 * 6 ^ (n + 2) : ℤ) + (5 * 3 ^ (n + 2) : ℤ) : ℚ) / 120

end

end A017953.P2930664446733967916

namespace A017953

/-- `(3*11^(n+2)-8*6^(n+2)+5*3^(n+2))/120` -/
def P2930664446733967916.Spec : Prop :=
  ∀ n, P2930664446733967916.a n = (A017953 n : ℚ)

end A017953

/-! ## A017953.P13744284518753512206

`11*a(n-1)+3^n*A126646(n)` with `a(0)=1`
-/

namespace A017953.P13744284518753512206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  11 * a (n - 1) + (3 ^ n : ℤ) * A126646 n

end

end A017953.P13744284518753512206

namespace A017953

/-- `11*a(n-1)+3^n*A126646(n)` -/
def P13744284518753512206.Spec : Prop :=
  ∀ n, P13744284518753512206.a n = A017953 n

end A017953

/-! ## A017953.P1935270164940363752

`2*A016174(n)-A016146(n)`
-/

namespace A017953.P1935270164940363752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016174 n - A016146 n

end

end A017953.P1935270164940363752

namespace A017953

/-- `2*A016174(n)-A016146(n)` -/
def P1935270164940363752.Spec : Prop :=
  ∀ n, P1935270164940363752.a n = A017953 n

end A017953

/-! ## A017953.P2613577087668871902

`2*A016216(n)-A016211(n)`
-/

namespace A017953.P2613577087668871902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016216 n - A016211 n

end

end A017953.P2613577087668871902

namespace A017953

/-- `2*A016216(n)-A016211(n)` -/
def P2613577087668871902.Spec : Prop :=
  ∀ n, P2613577087668871902.a n = A017953 n

end A017953

/-!
# A017954: Expansion of 1/((1-3x)*(1-6x)*(1-12x)).

The programs for A017954, the canonical program `A017954.P3533787156802275984` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017954 has offset 0).

The definition of A017954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017954.P3533787156802275984

`18*a(n-1)-72*a(n-2)+3^n` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017954

/-- `18*a(n-1)-72*a(n-2)+3^n` -/
def P3533787156802275984.Spec : Prop :=
  ∀ n, P3533787156802275984.a n = A017954 n

theorem P3533787156802275984.correct : P3533787156802275984.Spec := by
  intro n
  simp only [A017954]

end A017954

/-! ## A017954.P5760998760577471533

`(12^(n+2)-3*6^(n+2)+2*3^(n+2))/54`
-/

namespace A017954.P5760998760577471533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 2) : ℤ) - (3 * 6 ^ (n + 2) : ℤ) + (2 * 3 ^ (n + 2) : ℤ) : ℚ) / 54

end

end A017954.P5760998760577471533

namespace A017954

/-- `(12^(n+2)-3*6^(n+2)+2*3^(n+2))/54` -/
def P5760998760577471533.Spec : Prop :=
  ∀ n, P5760998760577471533.a n = (A017954 n : ℚ)

end A017954

/-! ## A017954.P10745655870367466377

`3^n*A171477(n)`
-/

namespace A017954.P10745655870367466377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A171477 n

end

end A017954.P10745655870367466377

namespace A017954

/-- `3^n*A171477(n)` -/
def P10745655870367466377.Spec : Prop :=
  ∀ n, P10745655870367466377.a n = A017954 n

end A017954

/-! ## A017954.P1890628837952995871

`A016175(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A017954.P1890628837952995871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016175 n + 3 * a (n - 1)

end

end A017954.P1890628837952995871

namespace A017954

/-- `A016175(n)+3*a(n-1)` -/
def P1890628837952995871.Spec : Prop :=
  ∀ n, P1890628837952995871.a n = A017954 n

end A017954

/-! ## A017954.P15444586305149211620

`or(1, ∑[A171476(n)]*A000244(n))`
-/

namespace A017954.P15444586305149211620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n)

end

end A017954.P15444586305149211620

namespace A017954

/-- `or(1, ∑[A171476(n)]*A000244(n))` -/
def P15444586305149211620.Spec : Prop :=
  ∀ n, P15444586305149211620.a n = A017954 n

end A017954

/-! ## A017954.P2585971504234866179

`∑[A171476(n)]*A000244(n)-(n-A005843(n))-n`
-/

namespace A017954.P2585971504234866179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n - ((n : ℤ) - A005843 n) - (n : ℤ)

end

end A017954.P2585971504234866179

namespace A017954

/-- `∑[A171476(n)]*A000244(n)-(n-A005843(n))-n` -/
def P2585971504234866179.Spec : Prop :=
  ∀ n, P2585971504234866179.a n = A017954 n

end A017954

/-!
# A017955: Powers of sqrt(17) rounded down.

The programs for A017955, the canonical program `A017955.P9984987457799614466` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017955 has offset 0).

The definition of A017955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017955.P9984987457799614466

`floor(sqrt(17^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017955

/-- `floor(sqrt(17^n))` -/
def P9984987457799614466.Spec : Prop :=
  ∀ n, (P9984987457799614466.a n : ℤ) = A017955 n

theorem P9984987457799614466.correct : P9984987457799614466.Spec := by
  intro n
  simp only [A017955]

end A017955

/-! ## A017955.P321562119270106443

`ceil(sqrt(17)^n)-n%2`
-/

namespace A017955.P321562119270106443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (17 : ℝ) ^ n⌉ - ((n % 2 : ℕ) : ℤ)

end

end A017955.P321562119270106443

namespace A017955

/-- `ceil(sqrt(17)^n)-n%2` -/
def P321562119270106443.Spec : Prop :=
  ∀ n, P321562119270106443.a n = A017955 n

end A017955

/-! ## A017955.P12270590835546450180

`A018093(2*n)`
-/

namespace A017955.P12270590835546450180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018093 (2 * n)

end

end A017955.P12270590835546450180

namespace A017955

/-- `A018093(2*n)` -/
def P12270590835546450180.Spec : Prop :=
  ∀ n, P12270590835546450180.a n = A017955 n

end A017955

/-! ## A017955.P14551495213876264282

`A017957(n)-and(1, n)`
-/

namespace A017955.P14551495213876264282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017957 n - (Nat.land 1 n : ℤ)

end

end A017955.P14551495213876264282

namespace A017955

/-- `A017957(n)-and(1, n)` -/
def P14551495213876264282.Spec : Prop :=
  ∀ n, P14551495213876264282.a n = A017955 n

end A017955

/-! ## A017955.P12724193107378154512

`A017957(n)-A000035(n)`
-/

namespace A017955.P12724193107378154512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017957 n - A000035 n

end

end A017955.P12724193107378154512

namespace A017955

/-- `A017957(n)-A000035(n)` -/
def P12724193107378154512.Spec : Prop :=
  ∀ n, P12724193107378154512.a n = A017955 n

end A017955

/-! ## A017955.P15863832150645859755

`A017957(n)-Δ[A008619(n)]`
-/

namespace A017955.P15863832150645859755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017957 n - (f1 (n + 1) - f1 n)

end

end A017955.P15863832150645859755

namespace A017955

/-- `A017957(n)-Δ[A008619(n)]` -/
def P15863832150645859755.Spec : Prop :=
  ∀ n, P15863832150645859755.a n = A017955 n

end A017955

/-! ## A017955.P10570645667253535602

`A017957(n)-char[A109128(n)]`
-/

namespace A017955.P10570645667253535602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017957 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017955.P10570645667253535602

namespace A017955

/-- `A017957(n)-char[A109128(n)]` -/
def P10570645667253535602.Spec : Prop :=
  ∀ n, P10570645667253535602.a n = A017955 n

end A017955

/-! ## A017955.P16535264645453377139

`A018095(2*n)-A166486(n²)`
-/

namespace A017955.P16535264645453377139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018095 (2 * n) - A166486 (n ^ 2)

end

end A017955.P16535264645453377139

namespace A017955

/-- `A018095(2*n)-A166486(n²)` -/
def P16535264645453377139.Spec : Prop :=
  ∀ n, P16535264645453377139.a n = A017955 n

end A017955

/-! ## A017955.P7403611958448034953

`A017957(n)-Δ[A110654(n+1)]`
-/

namespace A017955.P7403611958448034953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017957 n - (f1 (n + 1) - f1 n)

end

end A017955.P7403611958448034953

namespace A017955

/-- `A017957(n)-Δ[A110654(n+1)]` -/
def P7403611958448034953.Spec : Prop :=
  ∀ n, P7403611958448034953.a n = A017955 n

end A017955

/-! ## A017955.P11873860531980267428

`A017957(n)-char[A000265(n+1)]`
-/

namespace A017955.P11873860531980267428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017957 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017955.P11873860531980267428

namespace A017955

/-- `A017957(n)-char[A000265(n+1)]` -/
def P11873860531980267428.Spec : Prop :=
  ∀ n, P11873860531980267428.a n = A017955 n

end A017955

/-! ## A017955.P8981510293587704760

`A018095(2*n)-A057353(Δ[A057353(2*n)])`
-/

namespace A017955.P8981510293587704760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018095 (2 * n) - A057353 (f1 (n + 1) - f1 n).toNat

end

end A017955.P8981510293587704760

namespace A017955

/-- `A018095(2*n)-A057353(Δ[A057353(2*n)])` -/
def P8981510293587704760.Spec : Prop :=
  ∀ n, P8981510293587704760.a n = A017955 n

end A017955

/-! ## A017955.P14883520914703815411

`A018075(2*n)+A018095(2*n)-A018077(2*n)`
-/

namespace A017955.P14883520914703815411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018075 (2 * n) + (A018095 (2 * n) - A018077 (2 * n))

end

end A017955.P14883520914703815411

namespace A017955

/-- `A018075(2*n)+A018095(2*n)-A018077(2*n)` -/
def P14883520914703815411.Spec : Prop :=
  ∀ n, P14883520914703815411.a n = A017955 n

end A017955

/-! ## A017955.P5639861807022809608

`A018078(2*n)+A018095(2*n)-A018080(2*n)`
-/

namespace A017955.P5639861807022809608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018078 (2 * n) + (A018095 (2 * n) - A018080 (2 * n))

end

end A017955.P5639861807022809608

namespace A017955

/-- `A018078(2*n)+A018095(2*n)-A018080(2*n)` -/
def P5639861807022809608.Spec : Prop :=
  ∀ n, P5639861807022809608.a n = A017955 n

end A017955

/-! ## A017955.P16866998367343970560

`A018095(2*n)+A057353(2*n)-A057353(2*n+1)`
-/

namespace A017955.P16866998367343970560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018095 (2 * n) + (A057353 (2 * n) - A057353 (2 * n + 1))

end

end A017955.P16866998367343970560

namespace A017955

/-- `A018095(2*n)+A057353(2*n)-A057353(2*n+1)` -/
def P16866998367343970560.Spec : Prop :=
  ∀ n, P16866998367343970560.a n = A017955 n

end A017955

/-! ## A017955.P7186371792438103370

`A018095(2*n)-A166486(2*n+1)*A166486(2*n)`
-/

namespace A017955.P7186371792438103370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018095 (2 * n) - A166486 (2 * n + 1) * A166486 (2 * n)

end

end A017955.P7186371792438103370

namespace A017955

/-- `A018095(2*n)-A166486(2*n+1)*A166486(2*n)` -/
def P7186371792438103370.Spec : Prop :=
  ∀ n, P7186371792438103370.a n = A017955 n

end A017955

/-! ## A017955.P728930732396693570

`∪[A017957(2*n+1)-1, A017957(2*n)]`
-/

namespace A017955.P728930732396693570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017957 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017957 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A017955.P728930732396693570

namespace A017955

/-- `∪[A017957(2*n+1)-1, A017957(2*n)]` -/
def P728930732396693570.Spec : Prop :=
  ∀ n, (P728930732396693570.a n : ℤ) = A017955 n

end A017955

/-! ## A017955.P10830997466076659562

`A018095(2*n)+A018108(2*n)-A018110(2*n)`
-/

namespace A017955.P10830997466076659562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018095 (2 * n) + (A018108 (2 * n) - A018110 (2 * n))

end

end A017955.P10830997466076659562

namespace A017955

/-- `A018095(2*n)+A018108(2*n)-A018110(2*n)` -/
def P10830997466076659562.Spec : Prop :=
  ∀ n, P10830997466076659562.a n = A017955 n

end A017955

/-!
# A017956: Powers of sqrt(17) rounded to nearest integer.

The programs for A017956, the canonical program `A017956.P6177832784213659451` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017956 has offset 0).

The definition of A017956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017956.P6177832784213659451

`round(sqrt(17)^n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017956

/-- `round(sqrt(17)^n)` -/
def P6177832784213659451.Spec : Prop :=
  ∀ n, P6177832784213659451.a n = A017956 n

theorem P6177832784213659451.correct : P6177832784213659451.Spec := by
  intro n
  simp only [A017956]

end A017956

/-! ## A017956.P3730279652648731284

`A018094(2*n)`
-/

namespace A017956.P3730279652648731284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018094 (2 * n)

end

end A017956.P3730279652648731284

namespace A017956

/-- `A018094(2*n)` -/
def P3730279652648731284.Spec : Prop :=
  ∀ n, P3730279652648731284.a n = A017956 n

end A017956

/-! ## A017956.P1202441195301730884

`record[A018094(and(n, n+1))]`
-/

namespace A017956.P1202441195301730884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018094 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017956.P1202441195301730884

namespace A017956

/-- `record[A018094(and(n, n+1))]` -/
def P1202441195301730884.Spec : Prop :=
  ∀ n, P1202441195301730884.a n = A017956 n

end A017956

/-! ## A017956.P5531643020772185906

`record[round(17^(n/4))*A033999(n)]`
-/

namespace A017956.P5531643020772185906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((17 : ℝ) ^ ((n : ℚ) / 4 : ℝ)) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017956.P5531643020772185906

namespace A017956

/-- `record[round(17^(n/4))*A033999(n)]` -/
def P5531643020772185906.Spec : Prop :=
  ∀ n, P5531643020772185906.a n = A017956 n

end A017956

/-! ## A017956.P15169058541071406828

`record[and(round(17^(n/4)), A062157(n+2))]`
-/

namespace A017956.P15169058541071406828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((17 : ℝ) ^ ((n : ℚ) / 4 : ℝ))) (A062157 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017956.P15169058541071406828

namespace A017956

/-- `record[and(round(17^(n/4)), A062157(n+2))]` -/
def P15169058541071406828.Spec : Prop :=
  ∀ n, P15169058541071406828.a n = A017956 n

end A017956

/-! ## A017956.P10857740139963205867

`record[A018094(A237420(n))]`
-/

namespace A017956.P10857740139963205867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018094 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017956.P10857740139963205867

namespace A017956

/-- `record[A018094(A237420(n))]` -/
def P10857740139963205867.Spec : Prop :=
  ∀ n, P10857740139963205867.a n = A017956 n

end A017956

/-! ## A017956.P2712753680577311220

`floor(A017955(2*n)/A017955(n))`
-/

namespace A017956.P2712753680577311220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017955 (2 * n) : ℚ) / (A017955 n : ℚ)⌋

end

end A017956.P2712753680577311220

namespace A017956

/-- `floor(A017955(2*n)/A017955(n))` -/
def P2712753680577311220.Spec : Prop :=
  ∀ n, P2712753680577311220.a n = A017956 n

end A017956

/-! ## A017956.P2864472544802223360

`ceil(A017957(2*n)/A017957(n))`
-/

namespace A017956.P2864472544802223360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017957 (2 * n) : ℚ) / (A017957 n : ℚ)⌉

end

end A017956.P2864472544802223360

namespace A017956

/-- `ceil(A017957(2*n)/A017957(n))` -/
def P2864472544802223360.Spec : Prop :=
  ∀ n, P2864472544802223360.a n = A017956 n

end A017956

/-! ## A017956.P5487091627012923049

`floor(A017957(2*n)/A018093(2*n))`
-/

namespace A017956.P5487091627012923049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017957 (2 * n) : ℚ) / (A018093 (2 * n) : ℚ)⌋

end

end A017956.P5487091627012923049

namespace A017956

/-- `floor(A017957(2*n)/A018093(2*n))` -/
def P5487091627012923049.Spec : Prop :=
  ∀ n, P5487091627012923049.a n = A017956 n

end A017956

/-!
# A017957: Powers of sqrt(17) rounded up.

The programs for A017957, the canonical program `A017957.P5148408155058597547` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017957 has offset 0).

The definition of A017957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017957.P5148408155058597547

`ceil(sqrt(17^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017957

/-- `ceil(sqrt(17^n))` -/
def P5148408155058597547.Spec : Prop :=
  ∀ n, P5148408155058597547.a n = A017957 n

theorem P5148408155058597547.correct : P5148408155058597547.Spec := by
  intro n
  simp only [A017957]

end A017957

/-! ## A017957.P12588705140778882543

`A018095(2*n)`
-/

namespace A017957.P12588705140778882543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018095 (2 * n)

end

end A017957.P12588705140778882543

namespace A017957

/-- `A018095(2*n)` -/
def P12588705140778882543.Spec : Prop :=
  ∀ n, P12588705140778882543.a n = A017957 n

end A017957

/-! ## A017957.P17435905666239427980

`A017955(n)+and(1, n)`
-/

namespace A017957.P17435905666239427980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017955 n + (Nat.land 1 n : ℤ)

end

end A017957.P17435905666239427980

namespace A017957

/-- `A017955(n)+and(1, n)` -/
def P17435905666239427980.Spec : Prop :=
  ∀ n, P17435905666239427980.a n = A017957 n

end A017957

/-! ## A017957.P2710185919848302850

`∑[A062157(n)]+floor(17^(n/2))`
-/

namespace A017957.P2710185919848302850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊(17 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋

end

end A017957.P2710185919848302850

namespace A017957

/-- `∑[A062157(n)]+floor(17^(n/2))` -/
def P2710185919848302850.Spec : Prop :=
  ∀ n, P2710185919848302850.a n = A017957 n

end A017957

/-! ## A017957.P3247018775557809751

`A017955(n)+A000035(n)`
-/

namespace A017957.P3247018775557809751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017955 n + A000035 n

end

end A017957.P3247018775557809751

namespace A017957

/-- `A017955(n)+A000035(n)` -/
def P3247018775557809751.Spec : Prop :=
  ∀ n, P3247018775557809751.a n = A017957 n

end A017957

/-! ## A017957.P11552460748006317523

`A017955(n)+∑[A062157(n)]`
-/

namespace A017957.P11552460748006317523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017955 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017957.P11552460748006317523

namespace A017957

/-- `A017955(n)+∑[A062157(n)]` -/
def P11552460748006317523.Spec : Prop :=
  ∀ n, P11552460748006317523.a n = A017957 n

end A017957

/-! ## A017957.P11554341717956675577

`A017955(n)+Δ[A004526(n)]`
-/

namespace A017957.P11554341717956675577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017955 n + (f1 (n + 1) - f1 n)

end

end A017957.P11554341717956675577

namespace A017957

/-- `A017955(n)+Δ[A004526(n)]` -/
def P11554341717956675577.Spec : Prop :=
  ∀ n, P11554341717956675577.a n = A017957 n

end A017957

/-! ## A017957.P13178980259515563825

`A017955(n)+Δ[A008619(n)]`
-/

namespace A017957.P13178980259515563825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017955 n + (f1 (n + 1) - f1 n)

end

end A017957.P13178980259515563825

namespace A017957

/-- `A017955(n)+Δ[A008619(n)]` -/
def P13178980259515563825.Spec : Prop :=
  ∀ n, P13178980259515563825.a n = A017957 n

end A017957

/-! ## A017957.P9268729935755647604

`A018093(2*n)+A166486(n²)`
-/

namespace A017957.P9268729935755647604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018093 (2 * n) + A166486 (n ^ 2)

end

end A017957.P9268729935755647604

namespace A017957

/-- `A018093(2*n)+A166486(n²)` -/
def P9268729935755647604.Spec : Prop :=
  ∀ n, P9268729935755647604.a n = A017957 n

end A017957

/-! ## A017957.P13502171852886281427

`round(A017955(n)-A033999(n)/2)`
-/

namespace A017957.P13502171852886281427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A017955 n : ℚ) - (A033999 n : ℚ) / 2)

end

end A017957.P13502171852886281427

namespace A017957

/-- `round(A017955(n)-A033999(n)/2)` -/
def P13502171852886281427.Spec : Prop :=
  ∀ n, P13502171852886281427.a n = A017957 n

end A017957

/-! ## A017957.P1393614116084696477

`A017955(n)+char[A003961(n+1)]`
-/

namespace A017957.P1393614116084696477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017955 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017957.P1393614116084696477

namespace A017957

/-- `A017955(n)+char[A003961(n+1)]` -/
def P1393614116084696477.Spec : Prop :=
  ∀ n, P1393614116084696477.a n = A017957 n

end A017957

/-! ## A017957.P8297539035193177141

`A166486(2*n)+A018093(2*n)`
-/

namespace A017957.P8297539035193177141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A018093 (2 * n)

end

end A017957.P8297539035193177141

namespace A017957

/-- `A166486(2*n)+A018093(2*n)` -/
def P8297539035193177141.Spec : Prop :=
  ∀ n, P8297539035193177141.a n = A017957 n

end A017957

/-! ## A017957.P8376104085127987788

`A057353(Δ[A057353(2*n)])+A018093(2*n)`
-/

namespace A017957.P8376104085127987788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (f1 (n + 1) - f1 n).toNat + A018093 (2 * n)

end

end A017957.P8376104085127987788

namespace A017957

/-- `A057353(Δ[A057353(2*n)])+A018093(2*n)` -/
def P8376104085127987788.Spec : Prop :=
  ∀ n, P8376104085127987788.a n = A017957 n

end A017957

/-! ## A017957.P13811571810872618189

`A057353(2*n+1)+A018093(2*n)-A057353(2*n)`
-/

namespace A017957.P13811571810872618189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * n + 1) + (A018093 (2 * n) - A057353 (2 * n))

end

end A017957.P13811571810872618189

namespace A017957

/-- `A057353(2*n+1)+A018093(2*n)-A057353(2*n)` -/
def P13811571810872618189.Spec : Prop :=
  ∀ n, P13811571810872618189.a n = A017957 n

end A017957

/-! ## A017957.P1192134457583676671

`A018093(2*n)+A018101(2*n)-A018099(2*n)`
-/

namespace A017957.P1192134457583676671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018093 (2 * n) + (A018101 (2 * n) - A018099 (2 * n))

end

end A017957.P1192134457583676671

namespace A017957

/-- `A018093(2*n)+A018101(2*n)-A018099(2*n)` -/
def P1192134457583676671.Spec : Prop :=
  ∀ n, P1192134457583676671.a n = A017957 n

end A017957

/-! ## A017957.P739217371754066445

`A018093(2*n)+A018110(2*n)-A018108(2*n)`
-/

namespace A017957.P739217371754066445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018093 (2 * n) + (A018110 (2 * n) - A018108 (2 * n))

end

end A017957.P739217371754066445

namespace A017957

/-- `A018093(2*n)+A018110(2*n)-A018108(2*n)` -/
def P739217371754066445.Spec : Prop :=
  ∀ n, P739217371754066445.a n = A017957 n

end A017957

/-!
# A017958: Powers of sqrt(18) rounded down.

The programs for A017958, the canonical program `A017958.P2527308695026847057` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017958 has offset 0).

The definition of A017958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017958.P2527308695026847057

`floor(sqrt(18^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017958

/-- `floor(sqrt(18^n))` -/
def P2527308695026847057.Spec : Prop :=
  ∀ n, (P2527308695026847057.a n : ℤ) = A017958 n

theorem P2527308695026847057.correct : P2527308695026847057.Spec := by
  intro n
  simp only [A017958]

end A017958

/-! ## A017958.P12387196506461771309

`A018096(2*n)`
-/

namespace A017958.P12387196506461771309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018096 (2 * n)

end

end A017958.P12387196506461771309

namespace A017958

/-- `A018096(2*n)` -/
def P12387196506461771309.Spec : Prop :=
  ∀ n, P12387196506461771309.a n = A017958 n

end A017958

/-! ## A017958.P8483735659943319387

`A017960(n)-n%2`
-/

namespace A017958.P8483735659943319387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017960 n - ((n % 2 : ℕ) : ℤ)

end

end A017958.P8483735659943319387

namespace A017958

/-- `A017960(n)-n%2` -/
def P8483735659943319387.Spec : Prop :=
  ∀ n, P8483735659943319387.a n = A017958 n

end A017958

/-! ## A017958.P17031416655603741476

`A017960(n)-A000035(n)`
-/

namespace A017958.P17031416655603741476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017960 n - A000035 n

end

end A017958.P17031416655603741476

namespace A017958

/-- `A017960(n)-A000035(n)` -/
def P17031416655603741476.Spec : Prop :=
  ∀ n, P17031416655603741476.a n = A017958 n

end A017958

/-! ## A017958.P15234747872170830290

`A017960(n)-Δ[A004526(n)]`
-/

namespace A017958.P15234747872170830290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017960 n - (f1 (n + 1) - f1 n)

end

end A017958.P15234747872170830290

namespace A017958

/-- `A017960(n)-Δ[A004526(n)]` -/
def P15234747872170830290.Spec : Prop :=
  ∀ n, P15234747872170830290.a n = A017958 n

end A017958

/-! ## A017958.P6164887670712435702

`A017960(n)-Δ[A008619(n)]`
-/

namespace A017958.P6164887670712435702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017960 n - (f1 (n + 1) - f1 n)

end

end A017958.P6164887670712435702

namespace A017958

/-- `A017960(n)-Δ[A008619(n)]` -/
def P6164887670712435702.Spec : Prop :=
  ∀ n, P6164887670712435702.a n = A017958 n

end A017958

/-! ## A017958.P5242402788677525448

`A018098(2*n)-A000035(n)`
-/

namespace A017958.P5242402788677525448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018098 (2 * n) - A000035 n

end

end A017958.P5242402788677525448

namespace A017958

/-- `A018098(2*n)-A000035(n)` -/
def P5242402788677525448.Spec : Prop :=
  ∀ n, P5242402788677525448.a n = A017958 n

end A017958

/-! ## A017958.P6716570464872246006

`A018098(2*n)-A166486(n²)`
-/

namespace A017958.P6716570464872246006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018098 (2 * n) - A166486 (n ^ 2)

end

end A017958.P6716570464872246006

namespace A017958

/-- `A018098(2*n)-A166486(n²)` -/
def P6716570464872246006.Spec : Prop :=
  ∀ n, P6716570464872246006.a n = A017958 n

end A017958

/-! ## A017958.P6078694214042210612

`A018098(2*n)-A166486(2*n+1)*A166486(2*n)`
-/

namespace A017958.P6078694214042210612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018098 (2 * n) - A166486 (2 * n + 1) * A166486 (2 * n)

end

end A017958.P6078694214042210612

namespace A017958

/-- `A018098(2*n)-A166486(2*n+1)*A166486(2*n)` -/
def P6078694214042210612.Spec : Prop :=
  ∀ n, P6078694214042210612.a n = A017958 n

end A017958

/-! ## A017958.P15635716884321807554

`A018098(2*n)+A018105(2*n)-A018107(2*n)`
-/

namespace A017958.P15635716884321807554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018098 (2 * n) + (A018105 (2 * n) - A018107 (2 * n))

end

end A017958.P15635716884321807554

namespace A017958

/-- `A018098(2*n)+A018105(2*n)-A018107(2*n)` -/
def P15635716884321807554.Spec : Prop :=
  ∀ n, P15635716884321807554.a n = A017958 n

end A017958

/-!
# A017959: Powers of sqrt(18) rounded to nearest integer.

The programs for A017959, the canonical program `A017959.P15740402028586738101` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017959 has offset 0).

The definition of A017959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017959.P15740402028586738101

`round(sqrt(18)^n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017959

/-- `round(sqrt(18)^n)` -/
def P15740402028586738101.Spec : Prop :=
  ∀ n, P15740402028586738101.a n = A017959 n

theorem P15740402028586738101.correct : P15740402028586738101.Spec := by
  intro n
  simp only [A017959]

end A017959

/-! ## A017959.P18039762387905846682

`record[round(18^(n/4))/(-1)^n]`
-/

namespace A017959.P18039762387905846682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((18 : ℝ) ^ ((n : ℚ) / 4 : ℝ)) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017959.P18039762387905846682

namespace A017959

/-- `record[round(18^(n/4))/(-1)^n]` -/
def P18039762387905846682.Spec : Prop :=
  ∀ n, P18039762387905846682.a n = (A017959 n : ℚ)

end A017959

/-! ## A017959.P10063998630138676466

`A018097(2*n)`
-/

namespace A017959.P10063998630138676466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018097 (2 * n)

end

end A017959.P10063998630138676466

namespace A017959

/-- `A018097(2*n)` -/
def P10063998630138676466.Spec : Prop :=
  ∀ n, P10063998630138676466.a n = A017959 n

end A017959

/-! ## A017959.P6720452393405162708

`floor(A001027(n)/A017958(n))`
-/

namespace A017959.P6720452393405162708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001027 n : ℚ) / (A017958 n : ℚ)⌋

end

end A017959.P6720452393405162708

namespace A017959

/-- `floor(A001027(n)/A017958(n))` -/
def P6720452393405162708.Spec : Prop :=
  ∀ n, P6720452393405162708.a n = A017959 n

end A017959

/-! ## A017959.P12694020348586881400

`ceil(A001027(n)/A017960(n))`
-/

namespace A017959.P12694020348586881400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001027 n : ℚ) / (A017960 n : ℚ)⌉

end

end A017959.P12694020348586881400

namespace A017959

/-- `ceil(A001027(n)/A017960(n))` -/
def P12694020348586881400.Spec : Prop :=
  ∀ n, P12694020348586881400.a n = A017959 n

end A017959

/-! ## A017959.P9436753551206154631

`floor(A017958(2*n)/A017958(n))`
-/

namespace A017959.P9436753551206154631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017958 (2 * n) : ℚ) / (A017958 n : ℚ)⌋

end

end A017959.P9436753551206154631

namespace A017959

/-- `floor(A017958(2*n)/A017958(n))` -/
def P9436753551206154631.Spec : Prop :=
  ∀ n, P9436753551206154631.a n = A017959 n

end A017959

/-! ## A017959.P1980339376243022028

`ceil(A017960(2*n)/A017960(n))`
-/

namespace A017959.P1980339376243022028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017960 (2 * n) : ℚ) / (A017960 n : ℚ)⌉

end

end A017959.P1980339376243022028

namespace A017959

/-- `ceil(A017960(2*n)/A017960(n))` -/
def P1980339376243022028.Spec : Prop :=
  ∀ n, P1980339376243022028.a n = A017959 n

end A017959

/-! ## A017959.P15835786278815212754

`floor(A017960(2*n)/A018096(2*n))`
-/

namespace A017959.P15835786278815212754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017960 (2 * n) : ℚ) / (A018096 (2 * n) : ℚ)⌋

end

end A017959.P15835786278815212754

namespace A017959

/-- `floor(A017960(2*n)/A018096(2*n))` -/
def P15835786278815212754.Spec : Prop :=
  ∀ n, P15835786278815212754.a n = A017959 n

end A017959

/-!
# A017960: Powers of sqrt(18) rounded up.

The programs for A017960, the canonical program `A017960.P17529597812179164494` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017960 has offset 0).

The definition of A017960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017960.P17529597812179164494

`ceil(sqrt(18^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017960

/-- `ceil(sqrt(18^n))` -/
def P17529597812179164494.Spec : Prop :=
  ∀ n, P17529597812179164494.a n = A017960 n

theorem P17529597812179164494.correct : P17529597812179164494.Spec := by
  intro n
  simp only [A017960]

end A017960

/-! ## A017960.P16976699428597499252

`floor(sqrt(18)^n)+n%2`
-/

namespace A017960.P16976699428597499252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (18 : ℝ) ^ n⌋ + ((n % 2 : ℕ) : ℤ)

end

end A017960.P16976699428597499252

namespace A017960

/-- `floor(sqrt(18)^n)+n%2` -/
def P16976699428597499252.Spec : Prop :=
  ∀ n, P16976699428597499252.a n = A017960 n

end A017960

/-! ## A017960.P12015729240422927994

`A018098(2*n)`
-/

namespace A017960.P12015729240422927994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018098 (2 * n)

end

end A017960.P12015729240422927994

namespace A017960

/-- `A018098(2*n)` -/
def P12015729240422927994.Spec : Prop :=
  ∀ n, P12015729240422927994.a n = A017960 n

end A017960

/-! ## A017960.P3690303739605939672

`A017958(n)+A000035(n)`
-/

namespace A017960.P3690303739605939672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017958 n + A000035 n

end

end A017960.P3690303739605939672

namespace A017960

/-- `A017958(n)+A000035(n)` -/
def P3690303739605939672.Spec : Prop :=
  ∀ n, P3690303739605939672.a n = A017960 n

end A017960

/-! ## A017960.P4778100873068408709

`A017958(n)+A010873(n²)`
-/

namespace A017960.P4778100873068408709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017958 n + A010873 (n ^ 2)

end

end A017960.P4778100873068408709

namespace A017960

/-- `A017958(n)+A010873(n²)` -/
def P4778100873068408709.Spec : Prop :=
  ∀ n, P4778100873068408709.a n = A017960 n

end A017960

/-! ## A017960.P13525524036040777196

`A017958(n)+Δ[A004526(n)]`
-/

namespace A017960.P13525524036040777196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017958 n + (f1 (n + 1) - f1 n)

end

end A017960.P13525524036040777196

namespace A017960

/-- `A017958(n)+Δ[A004526(n)]` -/
def P13525524036040777196.Spec : Prop :=
  ∀ n, P13525524036040777196.a n = A017960 n

end A017960

/-! ## A017960.P4370941798828181828

`A017958(n)+Δ[A008619(n)]`
-/

namespace A017960.P4370941798828181828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017958 n + (f1 (n + 1) - f1 n)

end

end A017960.P4370941798828181828

namespace A017960

/-- `A017958(n)+Δ[A008619(n)]` -/
def P4370941798828181828.Spec : Prop :=
  ∀ n, P4370941798828181828.a n = A017960 n

end A017960

/-! ## A017960.P15266277363060694425

`A017958(n)+char[A005408(n)]`
-/

namespace A017960.P15266277363060694425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017958 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017960.P15266277363060694425

namespace A017960

/-- `A017958(n)+char[A005408(n)]` -/
def P15266277363060694425.Spec : Prop :=
  ∀ n, P15266277363060694425.a n = A017960 n

end A017960

/-! ## A017960.P11334813988070625283

`A000034(n)+A017958(n)-1`
-/

namespace A017960.P11334813988070625283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (A017958 n - 1)

end

end A017960.P11334813988070625283

namespace A017960

/-- `A000034(n)+A017958(n)-1` -/
def P11334813988070625283.Spec : Prop :=
  ∀ n, P11334813988070625283.a n = A017960 n

end A017960

/-! ## A017960.P1730481548429031443

`A018096(2*n)+A166486(n²)`
-/

namespace A017960.P1730481548429031443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018096 (2 * n) + A166486 (n ^ 2)

end

end A017960.P1730481548429031443

namespace A017960

/-- `A018096(2*n)+A166486(n²)` -/
def P1730481548429031443.Spec : Prop :=
  ∀ n, P1730481548429031443.a n = A017960 n

end A017960

/-! ## A017960.P2775273096927742072

`A166486(2*n)+A018096(2*n)`
-/

namespace A017960.P2775273096927742072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A018096 (2 * n)

end

end A017960.P2775273096927742072

namespace A017960

/-- `A166486(2*n)+A018096(2*n)` -/
def P2775273096927742072.Spec : Prop :=
  ∀ n, P2775273096927742072.a n = A017960 n

end A017960

/-! ## A017960.P16760431005086955370

`A018095(2*n)+A018096(2*n)-A018093(2*n)`
-/

namespace A017960.P16760431005086955370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018095 (2 * n) + (A018096 (2 * n) - A018093 (2 * n))

end

end A017960.P16760431005086955370

namespace A017960

/-- `A018095(2*n)+A018096(2*n)-A018093(2*n)` -/
def P16760431005086955370.Spec : Prop :=
  ∀ n, P16760431005086955370.a n = A017960 n

end A017960

/-! ## A017960.P11370938689173975651

`A018096(2*n)+A018110(2*n)-A018108(2*n)`
-/

namespace A017960.P11370938689173975651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018096 (2 * n) + (A018110 (2 * n) - A018108 (2 * n))

end

end A017960.P11370938689173975651

namespace A017960

/-- `A018096(2*n)+A018110(2*n)-A018108(2*n)` -/
def P11370938689173975651.Spec : Prop :=
  ∀ n, P11370938689173975651.a n = A017960 n

end A017960

/-! ## A017960.P16430263446770332300

`A017958(n)-(1-A000034(n²))`
-/

namespace A017960.P16430263446770332300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017958 n - (1 - A000034 (n ^ 2))

end

end A017960.P16430263446770332300

namespace A017960

/-- `A017958(n)-(1-A000034(n²))` -/
def P16430263446770332300.Spec : Prop :=
  ∀ n, P16430263446770332300.a n = A017960 n

end A017960

/-!
# A017961: Powers of sqrt(19) rounded down.

The programs for A017961, the canonical program `A017961.P10892891714077674605` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017961 has offset 0).

The definition of A017961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017961.P10892891714077674605

`floor(sqrt(19^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017961

/-- `floor(sqrt(19^n))` -/
def P10892891714077674605.Spec : Prop :=
  ∀ n, (P10892891714077674605.a n : ℤ) = A017961 n

theorem P10892891714077674605.correct : P10892891714077674605.Spec := by
  intro n
  simp only [A017961]

end A017961

/-! ## A017961.P15493447004236467553

`A018099(2*n)`
-/

namespace A017961.P15493447004236467553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018099 (2 * n)

end

end A017961.P15493447004236467553

namespace A017961

/-- `A018099(2*n)` -/
def P15493447004236467553.Spec : Prop :=
  ∀ n, P15493447004236467553.a n = A017961 n

end A017961

/-! ## A017961.P13428079751065279462

`A017963(n)-and(1, n)`
-/

namespace A017961.P13428079751065279462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017963 n - (Nat.land 1 n : ℤ)

end

end A017961.P13428079751065279462

namespace A017961

/-- `A017963(n)-and(1, n)` -/
def P13428079751065279462.Spec : Prop :=
  ∀ n, P13428079751065279462.a n = A017961 n

end A017961

/-! ## A017961.P10468058695102310933

`A018101(2*n)-and(1, n)`
-/

namespace A017961.P10468058695102310933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018101 (2 * n) - (Nat.land 1 n : ℤ)

end

end A017961.P10468058695102310933

namespace A017961

/-- `A018101(2*n)-and(1, n)` -/
def P10468058695102310933.Spec : Prop :=
  ∀ n, P10468058695102310933.a n = A017961 n

end A017961

/-! ## A017961.P5319986135965322195

`A017963(n)-A000035(n)`
-/

namespace A017961.P5319986135965322195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017963 n - A000035 n

end

end A017961.P5319986135965322195

namespace A017961

/-- `A017963(n)-A000035(n)` -/
def P5319986135965322195.Spec : Prop :=
  ∀ n, P5319986135965322195.a n = A017961 n

end A017961

/-! ## A017961.P11341393369137743005

`A017963(n)-Δ[A008619(n)]`
-/

namespace A017961.P11341393369137743005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017963 n - (f1 (n + 1) - f1 n)

end

end A017961.P11341393369137743005

namespace A017961

/-- `A017963(n)-Δ[A008619(n)]` -/
def P11341393369137743005.Spec : Prop :=
  ∀ n, P11341393369137743005.a n = A017961 n

end A017961

/-! ## A017961.P16451946504711608773

`A017963(n)-char[A099375(n)]`
-/

namespace A017961.P16451946504711608773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017963 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017961.P16451946504711608773

namespace A017961

/-- `A017963(n)-char[A099375(n)]` -/
def P16451946504711608773.Spec : Prop :=
  ∀ n, P16451946504711608773.a n = A017961 n

end A017961

/-! ## A017961.P178064878780799236

`A018101(2*n)-A166486(n²)`
-/

namespace A017961.P178064878780799236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018101 (2 * n) - A166486 (n ^ 2)

end

end A017961.P178064878780799236

namespace A017961

/-- `A018101(2*n)-A166486(n²)` -/
def P178064878780799236.Spec : Prop :=
  ∀ n, P178064878780799236.a n = A017961 n

end A017961

/-! ## A017961.P15255708058352909216

`A018101(2*n)-A059841(n+1)`
-/

namespace A017961.P15255708058352909216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018101 (2 * n) - A059841 (n + 1)

end

end A017961.P15255708058352909216

namespace A017961

/-- `A018101(2*n)-A059841(n+1)` -/
def P15255708058352909216.Spec : Prop :=
  ∀ n, P15255708058352909216.a n = A017961 n

end A017961

/-! ## A017961.P15090705011191394967

`A018101(2*n)-A046978(2*n)²`
-/

namespace A017961.P15090705011191394967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018101 (2 * n) - A046978 (2 * n) ^ 2

end

end A017961.P15090705011191394967

namespace A017961

/-- `A018101(2*n)-A046978(2*n)²` -/
def P15090705011191394967.Spec : Prop :=
  ∀ n, P15090705011191394967.a n = A017961 n

end A017961

/-! ## A017961.P10255482923541082839

`A008619(n)+A017963(n)-A008619(n+1)`
-/

namespace A017961.P10255482923541082839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (A017963 n - A008619 (n + 1))

end

end A017961.P10255482923541082839

namespace A017961

/-- `A008619(n)+A017963(n)-A008619(n+1)` -/
def P10255482923541082839.Spec : Prop :=
  ∀ n, P10255482923541082839.a n = A017961 n

end A017961

/-! ## A017961.P1836182293461064443

`A018101(2*n)-A057353(Δ[A057353(2*n)])`
-/

namespace A017961.P1836182293461064443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018101 (2 * n) - A057353 (f1 (n + 1) - f1 n).toNat

end

end A017961.P1836182293461064443

namespace A017961

/-- `A018101(2*n)-A057353(Δ[A057353(2*n)])` -/
def P1836182293461064443.Spec : Prop :=
  ∀ n, P1836182293461064443.a n = A017961 n

end A017961

/-! ## A017961.P8059746641534531186

`A018087(2*n)+A018101(2*n)-A018089(2*n)`
-/

namespace A017961.P8059746641534531186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018087 (2 * n) + (A018101 (2 * n) - A018089 (2 * n))

end

end A017961.P8059746641534531186

namespace A017961

/-- `A018087(2*n)+A018101(2*n)-A018089(2*n)` -/
def P8059746641534531186.Spec : Prop :=
  ∀ n, P8059746641534531186.a n = A017961 n

end A017961

/-! ## A017961.P12151840602063872394

`A018101(2*n)+A057353(2*n)-A057353(2*n+1)`
-/

namespace A017961.P12151840602063872394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018101 (2 * n) + (A057353 (2 * n) - A057353 (2 * n + 1))

end

end A017961.P12151840602063872394

namespace A017961

/-- `A018101(2*n)+A057353(2*n)-A057353(2*n+1)` -/
def P12151840602063872394.Spec : Prop :=
  ∀ n, P12151840602063872394.a n = A017961 n

end A017961

/-! ## A017961.P11726104136931317224

`A018101(2*n)-A166486(2*n+1)*A166486(2*n)`
-/

namespace A017961.P11726104136931317224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018101 (2 * n) - A166486 (2 * n + 1) * A166486 (2 * n)

end

end A017961.P11726104136931317224

namespace A017961

/-- `A018101(2*n)-A166486(2*n+1)*A166486(2*n)` -/
def P11726104136931317224.Spec : Prop :=
  ∀ n, P11726104136931317224.a n = A017961 n

end A017961

/-! ## A017961.P2572596544190948822

`A018101(2*n)-A046978(n²)`
-/

namespace A017961.P2572596544190948822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018101 (2 * n) - A046978 (n ^ 2)

end

end A017961.P2572596544190948822

namespace A017961

/-- `A018101(2*n)-A046978(n²)` -/
def P2572596544190948822.Spec : Prop :=
  ∀ n, P2572596544190948822.a n = A017961 n

end A017961

/-!
# A017962: Powers of sqrt(19) rounded to nearest integer.

The programs for A017962, the canonical program `A017962.P18158187199415792782` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017962 has offset 0).

The definition of A017962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017962.P18158187199415792782

`round(sqrt(19)^n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017962

/-- `round(sqrt(19)^n)` -/
def P18158187199415792782.Spec : Prop :=
  ∀ n, P18158187199415792782.a n = A017962 n

theorem P18158187199415792782.correct : P18158187199415792782.Spec := by
  intro n
  simp only [A017962]

end A017962

/-! ## A017962.P1230806987550665595

`record[(-1)^n*round(19^(n/4))]`
-/

namespace A017962.P1230806987550665595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * SequenceMachineLib.roundAway ((19 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017962.P1230806987550665595

namespace A017962

/-- `record[(-1)^n*round(19^(n/4))]` -/
def P1230806987550665595.Spec : Prop :=
  ∀ n, P1230806987550665595.a n = A017962 n

end A017962

/-! ## A017962.P12645122081940152273

`A018100(2*n)`
-/

namespace A017962.P12645122081940152273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018100 (2 * n)

end

end A017962.P12645122081940152273

namespace A017962

/-- `A018100(2*n)` -/
def P12645122081940152273.Spec : Prop :=
  ∀ n, P12645122081940152273.a n = A017962 n

end A017962

/-! ## A017962.P16208574929480081571

`floor(A017961(2*n)/A017961(n))`
-/

namespace A017962.P16208574929480081571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017961 (2 * n) : ℚ) / (A017961 n : ℚ)⌋

end

end A017962.P16208574929480081571

namespace A017962

/-- `floor(A017961(2*n)/A017961(n))` -/
def P16208574929480081571.Spec : Prop :=
  ∀ n, P16208574929480081571.a n = A017962 n

end A017962

/-! ## A017962.P5643958413645273892

`ceil(A017963(2*n)/A017963(n))`
-/

namespace A017962.P5643958413645273892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017963 (2 * n) : ℚ) / (A017963 n : ℚ)⌉

end

end A017962.P5643958413645273892

namespace A017962

/-- `ceil(A017963(2*n)/A017963(n))` -/
def P5643958413645273892.Spec : Prop :=
  ∀ n, P5643958413645273892.a n = A017962 n

end A017962

/-! ## A017962.P17341507474843456709

`floor(A017963(2*n)/A018099(2*n))`
-/

namespace A017962.P17341507474843456709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017963 (2 * n) : ℚ) / (A018099 (2 * n) : ℚ)⌋

end

end A017962.P17341507474843456709

namespace A017962

/-- `floor(A017963(2*n)/A018099(2*n))` -/
def P17341507474843456709.Spec : Prop :=
  ∀ n, P17341507474843456709.a n = A017962 n

end A017962

/-! ## A017962.P3238068103065029625

`ceil(A017961(2*n)/A018101(2*n))`
-/

namespace A017962.P3238068103065029625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017961 (2 * n) : ℚ) / (A018101 (2 * n) : ℚ)⌉

end

end A017962.P3238068103065029625

namespace A017962

/-- `ceil(A017961(2*n)/A018101(2*n))` -/
def P3238068103065029625.Spec : Prop :=
  ∀ n, P3238068103065029625.a n = A017962 n

end A017962

/-!
# A017963: Powers of sqrt(19) rounded up.

The programs for A017963, the canonical program `A017963.P8816144771398755226` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017963 has offset 0).

The definition of A017963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017963.P8816144771398755226

`ceil(sqrt(19^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017963

/-- `ceil(sqrt(19^n))` -/
def P8816144771398755226.Spec : Prop :=
  ∀ n, P8816144771398755226.a n = A017963 n

theorem P8816144771398755226.correct : P8816144771398755226.Spec := by
  intro n
  simp only [A017963]

end A017963

/-! ## A017963.P14559548544262779055

`floor(sqrt(19)^n)+n%2`
-/

namespace A017963.P14559548544262779055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (19 : ℝ) ^ n⌋ + ((n % 2 : ℕ) : ℤ)

end

end A017963.P14559548544262779055

namespace A017963

/-- `floor(sqrt(19)^n)+n%2` -/
def P14559548544262779055.Spec : Prop :=
  ∀ n, P14559548544262779055.a n = A017963 n

end A017963

/-! ## A017963.P16232748426932882231

`A018101(2*n)`
-/

namespace A017963.P16232748426932882231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018101 (2 * n)

end

end A017963.P16232748426932882231

namespace A017963

/-- `A018101(2*n)` -/
def P16232748426932882231.Spec : Prop :=
  ∀ n, P16232748426932882231.a n = A017963 n

end A017963

/-! ## A017963.P638371193873225151

`A017961(n)+and(1, n)`
-/

namespace A017963.P638371193873225151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017961 n + (Nat.land 1 n : ℤ)

end

end A017963.P638371193873225151

namespace A017963

/-- `A017961(n)+and(1, n)` -/
def P638371193873225151.Spec : Prop :=
  ∀ n, P638371193873225151.a n = A017963 n

end A017963

/-! ## A017963.P521775570525737813

`A018099(2*n)+and(1, n)`
-/

namespace A017963.P521775570525737813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018099 (2 * n) + (Nat.land 1 n : ℤ)

end

end A017963.P521775570525737813

namespace A017963

/-- `A018099(2*n)+and(1, n)` -/
def P521775570525737813.Spec : Prop :=
  ∀ n, P521775570525737813.a n = A017963 n

end A017963

/-! ## A017963.P1814112620644806841

`A017961(n)+A000035(n)`
-/

namespace A017963.P1814112620644806841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017961 n + A000035 n

end

end A017963.P1814112620644806841

namespace A017963

/-- `A017961(n)+A000035(n)` -/
def P1814112620644806841.Spec : Prop :=
  ∀ n, P1814112620644806841.a n = A017963 n

end A017963

/-! ## A017963.P11062260890821874861

`A017961(n)+Δ[A004526(n)]`
-/

namespace A017963.P11062260890821874861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017961 n + (f1 (n + 1) - f1 n)

end

end A017963.P11062260890821874861

namespace A017963

/-- `A017961(n)+Δ[A004526(n)]` -/
def P11062260890821874861.Spec : Prop :=
  ∀ n, P11062260890821874861.a n = A017963 n

end A017963

/-! ## A017963.P9324737667750377694

`A017961(n)+Δ[A008619(n)]`
-/

namespace A017963.P9324737667750377694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017961 n + (f1 (n + 1) - f1 n)

end

end A017963.P9324737667750377694

namespace A017963

/-- `A017961(n)+Δ[A008619(n)]` -/
def P9324737667750377694.Spec : Prop :=
  ∀ n, P9324737667750377694.a n = A017963 n

end A017963

/-! ## A017963.P17566029481376933168

`A017961(n)+char[A005408(n)]`
-/

namespace A017963.P17566029481376933168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017961 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017963.P17566029481376933168

namespace A017963

/-- `A017961(n)+char[A005408(n)]` -/
def P17566029481376933168.Spec : Prop :=
  ∀ n, P17566029481376933168.a n = A017963 n

end A017963

/-! ## A017963.P7792389861050978687

`A059841(n+1)+A017961(n)`
-/

namespace A017963.P7792389861050978687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + A017961 n

end

end A017963.P7792389861050978687

namespace A017963

/-- `A059841(n+1)+A017961(n)` -/
def P7792389861050978687.Spec : Prop :=
  ∀ n, P7792389861050978687.a n = A017963 n

end A017963

/-! ## A017963.P17450761373171787975

`1-(A059841(n)-A017961(n))`
-/

namespace A017963.P17450761373171787975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A059841 n - A017961 n)

end

end A017963.P17450761373171787975

namespace A017963

/-- `1-(A059841(n)-A017961(n))` -/
def P17450761373171787975.Spec : Prop :=
  ∀ n, P17450761373171787975.a n = A017963 n

end A017963

/-! ## A017963.P8500917321508272763

`A018099(2*n)+A166486(n²)`
-/

namespace A017963.P8500917321508272763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018099 (2 * n) + A166486 (n ^ 2)

end

end A017963.P8500917321508272763

namespace A017963

/-- `A018099(2*n)+A166486(n²)` -/
def P8500917321508272763.Spec : Prop :=
  ∀ n, P8500917321508272763.a n = A017963 n

end A017963

/-! ## A017963.P9921024064840669292

`A017961(n)+char[A268670(n+1)]`
-/

namespace A017963.P9921024064840669292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268670 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017961 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017963.P9921024064840669292

namespace A017963

/-- `A017961(n)+char[A268670(n+1)]` -/
def P9921024064840669292.Spec : Prop :=
  ∀ n, P9921024064840669292.a n = A017963 n

end A017963

/-! ## A017963.P8730898282343789544

`A166486(2*n)+A018099(2*n)`
-/

namespace A017963.P8730898282343789544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A018099 (2 * n)

end

end A017963.P8730898282343789544

namespace A017963

/-- `A166486(2*n)+A018099(2*n)` -/
def P8730898282343789544.Spec : Prop :=
  ∀ n, P8730898282343789544.a n = A017963 n

end A017963

/-! ## A017963.P15755274706218167697

`A057353(Δ[A057353(2*n)])+A018099(2*n)`
-/

namespace A017963.P15755274706218167697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (f1 (n + 1) - f1 n).toNat + A018099 (2 * n)

end

end A017963.P15755274706218167697

namespace A017963

/-- `A057353(Δ[A057353(2*n)])+A018099(2*n)` -/
def P15755274706218167697.Spec : Prop :=
  ∀ n, P15755274706218167697.a n = A017963 n

end A017963

/-! ## A017963.P4243326646881134001

`A018107(2*n)+A018099(2*n)-A018105(2*n)`
-/

namespace A017963.P4243326646881134001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018107 (2 * n) + A018099 (2 * n) - A018105 (2 * n)

end

end A017963.P4243326646881134001

namespace A017963

/-- `A018107(2*n)+A018099(2*n)-A018105(2*n)` -/
def P4243326646881134001.Spec : Prop :=
  ∀ n, P4243326646881134001.a n = A017963 n

end A017963

/-! ## A017963.P11781844771630895901

`A018099(2*n)+A018110(2*n)-A018108(2*n)`
-/

namespace A017963.P11781844771630895901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018099 (2 * n) + (A018110 (2 * n) - A018108 (2 * n))

end

end A017963.P11781844771630895901

namespace A017963

/-- `A018099(2*n)+A018110(2*n)-A018108(2*n)` -/
def P11781844771630895901.Spec : Prop :=
  ∀ n, P11781844771630895901.a n = A017963 n

end A017963

/-!
# A017964: Powers of sqrt(20) rounded down.

The programs for A017964, the canonical program `A017964.P8214688072289645585` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017964 has offset 0).

The definition of A017964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017964.P8214688072289645585

`floor(sqrt(20^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017964

/-- `floor(sqrt(20^n))` -/
def P8214688072289645585.Spec : Prop :=
  ∀ n, (P8214688072289645585.a n : ℤ) = A017964 n

theorem P8214688072289645585.correct : P8214688072289645585.Spec := by
  intro n
  simp only [A017964]

end A017964

/-! ## A017964.P6187244422775889849

`A018102(2*n)`
-/

namespace A017964.P6187244422775889849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018102 (2 * n)

end

end A017964.P6187244422775889849

namespace A017964

/-- `A018102(2*n)` -/
def P6187244422775889849.Spec : Prop :=
  ∀ n, P6187244422775889849.a n = A017964 n

end A017964

/-! ## A017964.P1822245045260814482

`A017966(n)-and(1, n)`
-/

namespace A017964.P1822245045260814482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017966 n - (Nat.land 1 n : ℤ)

end

end A017964.P1822245045260814482

namespace A017964

/-- `A017966(n)-and(1, n)` -/
def P1822245045260814482.Spec : Prop :=
  ∀ n, P1822245045260814482.a n = A017964 n

end A017964

/-! ## A017964.P12049564129466922176

`A017966(n)-A000035(n)`
-/

namespace A017964.P12049564129466922176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017966 n - A000035 n

end

end A017964.P12049564129466922176

namespace A017964

/-- `A017966(n)-A000035(n)` -/
def P12049564129466922176.Spec : Prop :=
  ∀ n, P12049564129466922176.a n = A017964 n

end A017964

/-! ## A017964.P5507723739972188717

`A017966(n)-Δ[A004526(n)]`
-/

namespace A017964.P5507723739972188717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017966 n - (f1 (n + 1) - f1 n)

end

end A017964.P5507723739972188717

namespace A017964

/-- `A017966(n)-Δ[A004526(n)]` -/
def P5507723739972188717.Spec : Prop :=
  ∀ n, P5507723739972188717.a n = A017964 n

end A017964

/-! ## A017964.P9133376504970646162

`A017966(n)-Δ[A008619(n)]`
-/

namespace A017964.P9133376504970646162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017966 n - (f1 (n + 1) - f1 n)

end

end A017964.P9133376504970646162

namespace A017964

/-- `A017966(n)-Δ[A008619(n)]` -/
def P9133376504970646162.Spec : Prop :=
  ∀ n, P9133376504970646162.a n = A017964 n

end A017964

/-! ## A017964.P12503504021272056866

`A018104(2*n)-A000035(n)`
-/

namespace A017964.P12503504021272056866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018104 (2 * n) - A000035 n

end

end A017964.P12503504021272056866

namespace A017964

/-- `A018104(2*n)-A000035(n)` -/
def P12503504021272056866.Spec : Prop :=
  ∀ n, P12503504021272056866.a n = A017964 n

end A017964

/-! ## A017964.P7645476665626472570

`A017966(n)-char[record[A004442(n)]]`
-/

namespace A017964.P7645476665626472570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017966 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017964.P7645476665626472570

namespace A017964

/-- `A017966(n)-char[record[A004442(n)]]` -/
def P7645476665626472570.Spec : Prop :=
  ∀ n, P7645476665626472570.a n = A017964 n

end A017964

/-! ## A017964.P7955628947482106791

`A018104(2*n)-A166486(n²)`
-/

namespace A017964.P7955628947482106791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018104 (2 * n) - A166486 (n ^ 2)

end

end A017964.P7955628947482106791

namespace A017964

/-- `A018104(2*n)-A166486(n²)` -/
def P7955628947482106791.Spec : Prop :=
  ∀ n, P7955628947482106791.a n = A017964 n

end A017964

/-! ## A017964.P16239560773836771628

`A017966(n)-char[A004442(2*n)]`
-/

namespace A017964.P16239560773836771628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017966 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017964.P16239560773836771628

namespace A017964

/-- `A017966(n)-char[A004442(2*n)]` -/
def P16239560773836771628.Spec : Prop :=
  ∀ n, P16239560773836771628.a n = A017964 n

end A017964

/-! ## A017964.P7013442370804033624

`A017966(n)-A060576(A006519(n+1))`
-/

namespace A017964.P7013442370804033624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017966 n - A060576 (A006519 (n + 1)).toNat

end

end A017964.P7013442370804033624

namespace A017964

/-- `A017966(n)-A060576(A006519(n+1))` -/
def P7013442370804033624.Spec : Prop :=
  ∀ n, P7013442370804033624.a n = A017964 n

end A017964

/-! ## A017964.P3984473939488589191

`A018099(2*n)+A018104(2*n)-A018101(2*n)`
-/

namespace A017964.P3984473939488589191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018099 (2 * n) + (A018104 (2 * n) - A018101 (2 * n))

end

end A017964.P3984473939488589191

namespace A017964

/-- `A018099(2*n)+A018104(2*n)-A018101(2*n)` -/
def P3984473939488589191.Spec : Prop :=
  ∀ n, P3984473939488589191.a n = A017964 n

end A017964

/-! ## A017964.P3522405873197083485

`A018104(2*n)-A166486(2*n+1)*A166486(2*n)`
-/

namespace A017964.P3522405873197083485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018104 (2 * n) - A166486 (2 * n + 1) * A166486 (2 * n)

end

end A017964.P3522405873197083485

namespace A017964

/-- `A018104(2*n)-A166486(2*n+1)*A166486(2*n)` -/
def P3522405873197083485.Spec : Prop :=
  ∀ n, P3522405873197083485.a n = A017964 n

end A017964

/-! ## A017964.P3566736556252912827

`A018104(2*n)+A018111(2*n)-A018113(2*n)`
-/

namespace A017964.P3566736556252912827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018104 (2 * n) + (A018111 (2 * n) - A018113 (2 * n))

end

end A017964.P3566736556252912827

namespace A017964

/-- `A018104(2*n)+A018111(2*n)-A018113(2*n)` -/
def P3566736556252912827.Spec : Prop :=
  ∀ n, P3566736556252912827.a n = A017964 n

end A017964

/-!
# A017965: Powers of sqrt(20) rounded to nearest integer.

The programs for A017965, the canonical program `A017965.P577559006634562251` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017965 has offset 0).

The definition of A017965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017965.P577559006634562251

`round(sqrt(20)^n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017965

/-- `round(sqrt(20)^n)` -/
def P577559006634562251.Spec : Prop :=
  ∀ n, P577559006634562251.a n = A017965 n

theorem P577559006634562251.correct : P577559006634562251.Spec := by
  intro n
  simp only [A017965]

end A017965

/-! ## A017965.P7481316585639327444

`A018103(2*n)`
-/

namespace A017965.P7481316585639327444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018103 (2 * n)

end

end A017965.P7481316585639327444

namespace A017965

/-- `A018103(2*n)` -/
def P7481316585639327444.Spec : Prop :=
  ∀ n, P7481316585639327444.a n = A017965 n

end A017965

/-! ## A017965.P8542383503135526157

`gcd(round(20^(n/2)), A000038(n))`
-/

namespace A017965.P8542383503135526157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((20 : ℝ) ^ ((n : ℚ) / 2 : ℝ))) (A000038 n)

end

end A017965.P8542383503135526157

namespace A017965

/-- `gcd(round(20^(n/2)), A000038(n))` -/
def P8542383503135526157.Spec : Prop :=
  ∀ n, (P8542383503135526157.a n : ℤ) = A017965 n

end A017965

/-! ## A017965.P553834627278883600

`A000007(A008458(n))+round((20^(n/4))²)`
-/

namespace A017965.P553834627278883600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A008458 n).toNat + SequenceMachineLib.roundAway (((20 : ℝ) ^ ((n : ℚ) / 4 : ℝ)) ^ 2)

end

end A017965.P553834627278883600

namespace A017965

/-- `A000007(A008458(n))+round((20^(n/4))²)` -/
def P553834627278883600.Spec : Prop :=
  ∀ n, P553834627278883600.a n = A017965 n

end A017965

/-! ## A017965.P7223931411528126582

`A000007(A008486(n))+round((20^(n/4))²)`
-/

namespace A017965.P7223931411528126582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A008486 n).toNat + SequenceMachineLib.roundAway (((20 : ℝ) ^ ((n : ℚ) / 4 : ℝ)) ^ 2)

end

end A017965.P7223931411528126582

namespace A017965

/-- `A000007(A008486(n))+round((20^(n/4))²)` -/
def P7223931411528126582.Spec : Prop :=
  ∀ n, P7223931411528126582.a n = A017965 n

end A017965

/-! ## A017965.P1400584386175374136

`A000007(A077255(n+1))+round((20^(n/4))²)`
-/

namespace A017965.P1400584386175374136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A077255 (n + 1)).toNat + SequenceMachineLib.roundAway (((20 : ℝ) ^ ((n : ℚ) / 4 : ℝ)) ^ 2)

end

end A017965.P1400584386175374136

namespace A017965

/-- `A000007(A077255(n+1))+round((20^(n/4))²)` -/
def P1400584386175374136.Spec : Prop :=
  ∀ n, P1400584386175374136.a n = A017965 n

end A017965

/-! ## A017965.P11400713485676728057

`A000007(A085079(n+1))+round(20^(n/2))`
-/

namespace A017965.P11400713485676728057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A085079 (n + 1)).toNat + SequenceMachineLib.roundAway ((20 : ℝ) ^ ((n : ℚ) / 2 : ℝ))

end

end A017965.P11400713485676728057

namespace A017965

/-- `A000007(A085079(n+1))+round(20^(n/2))` -/
def P11400713485676728057.Spec : Prop :=
  ∀ n, P11400713485676728057.a n = A017965 n

end A017965

/-! ## A017965.P5981693872919871084

`ceil(A017966(2*n)/A017966(n))`
-/

namespace A017965.P5981693872919871084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017966 (2 * n) : ℚ) / (A017966 n : ℚ)⌉

end

end A017965.P5981693872919871084

namespace A017965

/-- `ceil(A017966(2*n)/A017966(n))` -/
def P5981693872919871084.Spec : Prop :=
  ∀ n, P5981693872919871084.a n = A017965 n

end A017965

/-! ## A017965.P14782660545767984900

`ceil(A017964(2*n)/A018104(2*n))`
-/

namespace A017965.P14782660545767984900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017964 (2 * n) : ℚ) / (A018104 (2 * n) : ℚ)⌉

end

end A017965.P14782660545767984900

namespace A017965

/-- `ceil(A017964(2*n)/A018104(2*n))` -/
def P14782660545767984900.Spec : Prop :=
  ∀ n, P14782660545767984900.a n = A017965 n

end A017965

/-!
# A017966: Powers of sqrt(20) rounded up.

The programs for A017966, the canonical program `A017966.P140310431696499413` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017966 has offset 0).

The definition of A017966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017966.P140310431696499413

`ceil(sqrt(20^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017966

/-- `ceil(sqrt(20^n))` -/
def P140310431696499413.Spec : Prop :=
  ∀ n, P140310431696499413.a n = A017966 n

theorem P140310431696499413.correct : P140310431696499413.Spec := by
  intro n
  simp only [A017966]

end A017966

/-! ## A017966.P16821858176053827684

`A018104(2*n)`
-/

namespace A017966.P16821858176053827684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018104 (2 * n)

end

end A017966.P16821858176053827684

namespace A017966

/-- `A018104(2*n)` -/
def P16821858176053827684.Spec : Prop :=
  ∀ n, P16821858176053827684.a n = A017966 n

end A017966

/-! ## A017966.P18353039868913074340

`A018102(2*n)+and(1, n)`
-/

namespace A017966.P18353039868913074340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018102 (2 * n) + (Nat.land 1 n : ℤ)

end

end A017966.P18353039868913074340

namespace A017966

/-- `A018102(2*n)+and(1, n)` -/
def P18353039868913074340.Spec : Prop :=
  ∀ n, P18353039868913074340.a n = A017966 n

end A017966

/-! ## A017966.P2403716052117065121

`A017964(n)+A000035(n)`
-/

namespace A017966.P2403716052117065121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017964 n + A000035 n

end

end A017966.P2403716052117065121

namespace A017966

/-- `A017964(n)+A000035(n)` -/
def P2403716052117065121.Spec : Prop :=
  ∀ n, P2403716052117065121.a n = A017966 n

end A017966

/-! ## A017966.P3522847949634353553

`A098725(n²)+A017964(n)`
-/

namespace A017966.P3522847949634353553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 (n ^ 2) + A017964 n

end

end A017966.P3522847949634353553

namespace A017966

/-- `A098725(n²)+A017964(n)` -/
def P3522847949634353553.Spec : Prop :=
  ∀ n, P3522847949634353553.a n = A017966 n

end A017966

/-! ## A017966.P17639093824256987031

`A017964(n)+Δ[A004526(n)]`
-/

namespace A017966.P17639093824256987031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017964 n + (f1 (n + 1) - f1 n)

end

end A017966.P17639093824256987031

namespace A017966

/-- `A017964(n)+Δ[A004526(n)]` -/
def P17639093824256987031.Spec : Prop :=
  ∀ n, P17639093824256987031.a n = A017966 n

end A017966

/-! ## A017966.P3333031092511778291

`A017964(n)+Δ[A008619(n)]`
-/

namespace A017966.P3333031092511778291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017964 n + (f1 (n + 1) - f1 n)

end

end A017966.P3333031092511778291

namespace A017966

/-- `A017964(n)+Δ[A008619(n)]` -/
def P3333031092511778291.Spec : Prop :=
  ∀ n, P3333031092511778291.a n = A017966 n

end A017966

/-! ## A017966.P15084217495635849385

`A017964(n)+char[A005408(n)]`
-/

namespace A017966.P15084217495635849385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017964 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017966.P15084217495635849385

namespace A017966

/-- `A017964(n)+char[A005408(n)]` -/
def P15084217495635849385.Spec : Prop :=
  ∀ n, P15084217495635849385.a n = A017966 n

end A017966

/-! ## A017966.P6188054019786723303

`A017964(n)+char[A093178(n)]`
-/

namespace A017966.P6188054019786723303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017964 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017966.P6188054019786723303

namespace A017966

/-- `A017964(n)+char[A093178(n)]` -/
def P6188054019786723303.Spec : Prop :=
  ∀ n, P6188054019786723303.a n = A017966 n

end A017966

/-! ## A017966.P454395094544100896

`A017964(n)+n-A052928(n)`
-/

namespace A017966.P454395094544100896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017964 n + ((n : ℤ) - A052928 n)

end

end A017966.P454395094544100896

namespace A017966

/-- `A017964(n)+n-A052928(n)` -/
def P454395094544100896.Spec : Prop :=
  ∀ n, P454395094544100896.a n = A017966 n

end A017966

/-! ## A017966.P4886422366054516291

`A018102(2*n)+A166486(n²)`
-/

namespace A017966.P4886422366054516291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018102 (2 * n) + A166486 (n ^ 2)

end

end A017966.P4886422366054516291

namespace A017966

/-- `A018102(2*n)+A166486(n²)` -/
def P4886422366054516291.Spec : Prop :=
  ∀ n, P4886422366054516291.a n = A017966 n

end A017966

/-! ## A017966.P18291173667266456263

`A166486(2*n)+A018102(2*n)`
-/

namespace A017966.P18291173667266456263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A018102 (2 * n)

end

end A017966.P18291173667266456263

namespace A017966

/-- `A166486(2*n)+A018102(2*n)` -/
def P18291173667266456263.Spec : Prop :=
  ∀ n, P18291173667266456263.a n = A017966 n

end A017966

/-! ## A017966.P5007956870255312433

`A017964(n)+A004868((n+1)/A026741(n+1))`
-/

namespace A017966.P5007956870255312433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017964 n + A004868 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A026741 (n + 1) : ℚ))).toNat

end

end A017966.P5007956870255312433

namespace A017966

/-- `A017964(n)+A004868((n+1)/A026741(n+1))` -/
def P5007956870255312433.Spec : Prop :=
  ∀ n, P5007956870255312433.a n = A017966 n

end A017966

/-! ## A017966.P14266476006747206972

`A018102(2*n)+A018107(2*n)-A018105(2*n)`
-/

namespace A017966.P14266476006747206972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018102 (2 * n) + (A018107 (2 * n) - A018105 (2 * n))

end

end A017966.P14266476006747206972

namespace A017966

/-- `A018102(2*n)+A018107(2*n)-A018105(2*n)` -/
def P14266476006747206972.Spec : Prop :=
  ∀ n, P14266476006747206972.a n = A017966 n

end A017966

/-! ## A017966.P14528793606791625274

`A018102(2*n)+A018113(2*n)-A018111(2*n)`
-/

namespace A017966.P14528793606791625274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018102 (2 * n) + (A018113 (2 * n) - A018111 (2 * n))

end

end A017966.P14528793606791625274

namespace A017966

/-- `A018102(2*n)+A018113(2*n)-A018111(2*n)` -/
def P14528793606791625274.Spec : Prop :=
  ∀ n, P14528793606791625274.a n = A017966 n

end A017966

/-!
# A017967: Powers of sqrt(21) rounded down.

The programs for A017967, the canonical program `A017967.P17121751743321943625` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017967 has offset 0).

The definition of A017967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017967.P17121751743321943625

`floor(sqrt(21^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017967

/-- `floor(sqrt(21^n))` -/
def P17121751743321943625.Spec : Prop :=
  ∀ n, (P17121751743321943625.a n : ℤ) = A017967 n

theorem P17121751743321943625.correct : P17121751743321943625.Spec := by
  intro n
  simp only [A017967]

end A017967

/-! ## A017967.P7643062296012946981

`A018105(2*n)`
-/

namespace A017967.P7643062296012946981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018105 (2 * n)

end

end A017967.P7643062296012946981

namespace A017967

/-- `A018105(2*n)` -/
def P7643062296012946981.Spec : Prop :=
  ∀ n, P7643062296012946981.a n = A017967 n

end A017967

/-! ## A017967.P9625102018948426605

`A017969(n)-n%2`
-/

namespace A017967.P9625102018948426605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017969 n - ((n % 2 : ℕ) : ℤ)

end

end A017967.P9625102018948426605

namespace A017967

/-- `A017969(n)-n%2` -/
def P9625102018948426605.Spec : Prop :=
  ∀ n, P9625102018948426605.a n = A017967 n

end A017967

/-! ## A017967.P8169006009556390736

`record[A018105(and(n, n+1))]`
-/

namespace A017967.P8169006009556390736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018105 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017967.P8169006009556390736

namespace A017967

/-- `record[A018105(and(n, n+1))]` -/
def P8169006009556390736.Spec : Prop :=
  ∀ n, P8169006009556390736.a n = A017967 n

end A017967

/-! ## A017967.P571542084678134178

`A018107(2*n)-and(1, n)`
-/

namespace A017967.P571542084678134178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018107 (2 * n) - (Nat.land 1 n : ℤ)

end

end A017967.P571542084678134178

namespace A017967

/-- `A018107(2*n)-and(1, n)` -/
def P571542084678134178.Spec : Prop :=
  ∀ n, P571542084678134178.a n = A017967 n

end A017967

/-! ## A017967.P10374921424775050810

`record[A018105(A014681(n))]`
-/

namespace A017967.P10374921424775050810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018105 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017967.P10374921424775050810

namespace A017967

/-- `record[A018105(A014681(n))]` -/
def P10374921424775050810.Spec : Prop :=
  ∀ n, P10374921424775050810.a n = A017967 n

end A017967

/-! ## A017967.P11007644372133036787

`A017969(n)-A000035(n)`
-/

namespace A017967.P11007644372133036787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017969 n - A000035 n

end

end A017967.P11007644372133036787

namespace A017967

/-- `A017969(n)-A000035(n)` -/
def P11007644372133036787.Spec : Prop :=
  ∀ n, P11007644372133036787.a n = A017967 n

end A017967

/-! ## A017967.P3233336803114469294

`A017969(n)-Δ[A004526(n)]`
-/

namespace A017967.P3233336803114469294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017969 n - (f1 (n + 1) - f1 n)

end

end A017967.P3233336803114469294

namespace A017967

/-- `A017969(n)-Δ[A004526(n)]` -/
def P3233336803114469294.Spec : Prop :=
  ∀ n, P3233336803114469294.a n = A017967 n

end A017967

/-! ## A017967.P6448729180324037083

`record[A018105(n)/A282738(n)]`
-/

namespace A017967.P6448729180324037083
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018105 n : ℚ) / (A282738 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017967.P6448729180324037083

namespace A017967

/-- `record[A018105(n)/A282738(n)]` -/
def P6448729180324037083.Spec : Prop :=
  ∀ n, P6448729180324037083.a n = (A017967 n : ℚ)

end A017967

/-! ## A017967.P16446620304570524575

`record[gcd(A018105(n), A138364(n))]`
-/

namespace A017967.P16446620304570524575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018105 n) (A138364 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017967.P16446620304570524575

namespace A017967

/-- `record[gcd(A018105(n), A138364(n))]` -/
def P16446620304570524575.Spec : Prop :=
  ∀ n, (P16446620304570524575.a n : ℤ) = A017967 n

end A017967

/-! ## A017967.P8091672381069594264

`A018107(2*n)-A166486(n²)`
-/

namespace A017967.P8091672381069594264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018107 (2 * n) - A166486 (n ^ 2)

end

end A017967.P8091672381069594264

namespace A017967

/-- `A018107(2*n)-A166486(n²)` -/
def P8091672381069594264.Spec : Prop :=
  ∀ n, P8091672381069594264.a n = A017967 n

end A017967

/-! ## A017967.P13116815757614910757

`A018107(2*n)+A018099(2*n)-A018101(2*n)`
-/

namespace A017967.P13116815757614910757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018107 (2 * n) + A018099 (2 * n) - A018101 (2 * n)

end

end A017967.P13116815757614910757

namespace A017967

/-- `A018107(2*n)+A018099(2*n)-A018101(2*n)` -/
def P13116815757614910757.Spec : Prop :=
  ∀ n, P13116815757614910757.a n = A017967 n

end A017967

/-! ## A017967.P11033626953310511657

`A018107(2*n)+A018102(2*n)-A018104(2*n)`
-/

namespace A017967.P11033626953310511657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018107 (2 * n) + A018102 (2 * n) - A018104 (2 * n)

end

end A017967.P11033626953310511657

namespace A017967

/-- `A018107(2*n)+A018102(2*n)-A018104(2*n)` -/
def P11033626953310511657.Spec : Prop :=
  ∀ n, P11033626953310511657.a n = A017967 n

end A017967

/-! ## A017967.P647809899331753893

`A018107(2*n)-A166486(2*n+1)*A166486(2*n)`
-/

namespace A017967.P647809899331753893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018107 (2 * n) - A166486 (2 * n + 1) * A166486 (2 * n)

end

end A017967.P647809899331753893

namespace A017967

/-- `A018107(2*n)-A166486(2*n+1)*A166486(2*n)` -/
def P647809899331753893.Spec : Prop :=
  ∀ n, P647809899331753893.a n = A017967 n

end A017967

/-! ## A017967.P16910437362722532968

`A018107(2*n)+A018111(2*n)-A018113(2*n)`
-/

namespace A017967.P16910437362722532968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018107 (2 * n) + (A018111 (2 * n) - A018113 (2 * n))

end

end A017967.P16910437362722532968

namespace A017967

/-- `A018107(2*n)+A018111(2*n)-A018113(2*n)` -/
def P16910437362722532968.Spec : Prop :=
  ∀ n, P16910437362722532968.a n = A017967 n

end A017967

/-!
# A017968: Powers of sqrt(21) rounded to nearest integer.

The programs for A017968, the canonical program `A017968.P3313262516108285858` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017968 has offset 0).

The definition of A017968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017968.P3313262516108285858

`round(sqrt(21)^n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017968

/-- `round(sqrt(21)^n)` -/
def P3313262516108285858.Spec : Prop :=
  ∀ n, P3313262516108285858.a n = A017968 n

theorem P3313262516108285858.correct : P3313262516108285858.Spec := by
  intro n
  simp only [A017968]

end A017968

/-! ## A017968.P11659296260189693244

`A018106(2*n)`
-/

namespace A017968.P11659296260189693244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018106 (2 * n)

end

end A017968.P11659296260189693244

namespace A017968

/-- `A018106(2*n)` -/
def P11659296260189693244.Spec : Prop :=
  ∀ n, P11659296260189693244.a n = A017968 n

end A017968

/-! ## A017968.P17239479276934096479

`round(21^(n/2))*A001222(A002313(n+1))`
-/

namespace A017968.P17239479276934096479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((21 : ℝ) ^ ((n : ℚ) / 2 : ℝ)) * A001222 (A002313 (n + 1)).toNat

end

end A017968.P17239479276934096479

namespace A017968

/-- `round(21^(n/2))*A001222(A002313(n+1))` -/
def P17239479276934096479.Spec : Prop :=
  ∀ n, P17239479276934096479.a n = A017968 n

end A017968

/-! ## A017968.P15576259186346096117

`A008683(A135784(n+1))+round(21^(n/2))`
-/

namespace A017968.P15576259186346096117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A135784 (n + 1)).toNat + SequenceMachineLib.roundAway ((21 : ℝ) ^ ((n : ℚ) / 2 : ℝ))

end

end A017968.P15576259186346096117

namespace A017968

/-- `A008683(A135784(n+1))+round(21^(n/2))` -/
def P15576259186346096117.Spec : Prop :=
  ∀ n, P15576259186346096117.a n = A017968 n

end A017968

/-! ## A017968.P8569818698189193679

`floor(A017967(2*n)/A017967(n))`
-/

namespace A017968.P8569818698189193679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017967 (2 * n) : ℚ) / (A017967 n : ℚ)⌋

end

end A017968.P8569818698189193679

namespace A017968

/-- `floor(A017967(2*n)/A017967(n))` -/
def P8569818698189193679.Spec : Prop :=
  ∀ n, P8569818698189193679.a n = A017968 n

end A017968

/-! ## A017968.P1038675187924332155

`ceil(A017969(2*n)/A017969(n))`
-/

namespace A017968.P1038675187924332155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017969 (2 * n) : ℚ) / (A017969 n : ℚ)⌉

end

end A017968.P1038675187924332155

namespace A017968

/-- `ceil(A017969(2*n)/A017969(n))` -/
def P1038675187924332155.Spec : Prop :=
  ∀ n, P1038675187924332155.a n = A017968 n

end A017968

/-! ## A017968.P5231674086966296917

`ceil(A017967(2*n)/A018107(2*n))`
-/

namespace A017968.P5231674086966296917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017967 (2 * n) : ℚ) / (A018107 (2 * n) : ℚ)⌉

end

end A017968.P5231674086966296917

namespace A017968

/-- `ceil(A017967(2*n)/A018107(2*n))` -/
def P5231674086966296917.Spec : Prop :=
  ∀ n, P5231674086966296917.a n = A017968 n

end A017968

/-!
# A017969: Powers of sqrt(21) rounded up.

The programs for A017969, the canonical program `A017969.P7362430290746515714` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017969 has offset 0).

The definition of A017969 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017969.P7362430290746515714

`ceil(sqrt(21^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017969

/-- `ceil(sqrt(21^n))` -/
def P7362430290746515714.Spec : Prop :=
  ∀ n, P7362430290746515714.a n = A017969 n

theorem P7362430290746515714.correct : P7362430290746515714.Spec := by
  intro n
  simp only [A017969]

end A017969

/-! ## A017969.P4438965200608505690

`floor(21^(n/2))+n%2`
-/

namespace A017969.P4438965200608505690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(21 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋ + ((n % 2 : ℕ) : ℤ)

end

end A017969.P4438965200608505690

namespace A017969

/-- `floor(21^(n/2))+n%2` -/
def P4438965200608505690.Spec : Prop :=
  ∀ n, P4438965200608505690.a n = A017969 n

end A017969

/-! ## A017969.P15528914480058422524

`char[or(1, n)]+floor(21^(n/2))`
-/

namespace A017969.P15528914480058422524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌊(21 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋

end

end A017969.P15528914480058422524

namespace A017969

/-- `char[or(1, n)]+floor(21^(n/2))` -/
def P15528914480058422524.Spec : Prop :=
  ∀ n, P15528914480058422524.a n = A017969 n

end A017969

/-! ## A017969.P7116029809378990646

`A018107(2*n)`
-/

namespace A017969.P7116029809378990646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018107 (2 * n)

end

end A017969.P7116029809378990646

namespace A017969

/-- `A018107(2*n)` -/
def P7116029809378990646.Spec : Prop :=
  ∀ n, P7116029809378990646.a n = A017969 n

end A017969

/-! ## A017969.P5504230692520042194

`A017967(n)+and(1, n)`
-/

namespace A017969.P5504230692520042194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017967 n + (Nat.land 1 n : ℤ)

end

end A017969.P5504230692520042194

namespace A017969

/-- `A017967(n)+and(1, n)` -/
def P5504230692520042194.Spec : Prop :=
  ∀ n, P5504230692520042194.a n = A017969 n

end A017969

/-! ## A017969.P1849351256053207590

`A018105(2*n)+and(1, n)`
-/

namespace A017969.P1849351256053207590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018105 (2 * n) + (Nat.land 1 n : ℤ)

end

end A017969.P1849351256053207590

namespace A017969

/-- `A018105(2*n)+and(1, n)` -/
def P1849351256053207590.Spec : Prop :=
  ∀ n, P1849351256053207590.a n = A017969 n

end A017969

/-! ## A017969.P3072639732220244087

`A017967(n)+A000035(n)`
-/

namespace A017969.P3072639732220244087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017967 n + A000035 n

end

end A017969.P3072639732220244087

namespace A017969

/-- `A017967(n)+A000035(n)` -/
def P3072639732220244087.Spec : Prop :=
  ∀ n, P3072639732220244087.a n = A017969 n

end A017969

/-! ## A017969.P3645710610751544229

`A017967(n)+Δ[A004526(n)]`
-/

namespace A017969.P3645710610751544229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017967 n + (f1 (n + 1) - f1 n)

end

end A017969.P3645710610751544229

namespace A017969

/-- `A017967(n)+Δ[A004526(n)]` -/
def P3645710610751544229.Spec : Prop :=
  ∀ n, P3645710610751544229.a n = A017969 n

end A017969

/-! ## A017969.P1971556456603097471

`A017967(n)+Δ[A008619(n)]`
-/

namespace A017969.P1971556456603097471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017967 n + (f1 (n + 1) - f1 n)

end

end A017969.P1971556456603097471

namespace A017969

/-- `A017967(n)+Δ[A008619(n)]` -/
def P1971556456603097471.Spec : Prop :=
  ∀ n, P1971556456603097471.a n = A017969 n

end A017969

/-! ## A017969.P1523026817946621425

`A017967(n)+char[A005408(n)]`
-/

namespace A017969.P1523026817946621425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017967 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017969.P1523026817946621425

namespace A017969

/-- `A017967(n)+char[A005408(n)]` -/
def P1523026817946621425.Spec : Prop :=
  ∀ n, P1523026817946621425.a n = A017969 n

end A017969

/-! ## A017969.P1955529935600636319

`A017967(n)+char[A109613(n)]`
-/

namespace A017969.P1955529935600636319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017967 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017969.P1955529935600636319

namespace A017969

/-- `A017967(n)+char[A109613(n)]` -/
def P1955529935600636319.Spec : Prop :=
  ∀ n, P1955529935600636319.a n = A017969 n

end A017969

/-! ## A017969.P5439680169822997143

`A018105(2*n)+A000035(n)`
-/

namespace A017969.P5439680169822997143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018105 (2 * n) + A000035 n

end

end A017969.P5439680169822997143

namespace A017969

/-- `A018105(2*n)+A000035(n)` -/
def P5439680169822997143.Spec : Prop :=
  ∀ n, P5439680169822997143.a n = A017969 n

end A017969

/-! ## A017969.P5109607164881070067

`A018105(2*n)+A166486(n²)`
-/

namespace A017969.P5109607164881070067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018105 (2 * n) + A166486 (n ^ 2)

end

end A017969.P5109607164881070067

namespace A017969

/-- `A018105(2*n)+A166486(n²)` -/
def P5109607164881070067.Spec : Prop :=
  ∀ n, P5109607164881070067.a n = A017969 n

end A017969

/-! ## A017969.P10567199989650900348

`A166486(2*n)+A018105(2*n)`
-/

namespace A017969.P10567199989650900348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A018105 (2 * n)

end

end A017969.P10567199989650900348

namespace A017969

/-- `A166486(2*n)+A018105(2*n)` -/
def P10567199989650900348.Spec : Prop :=
  ∀ n, P10567199989650900348.a n = A017969 n

end A017969

/-! ## A017969.P1831580410025279470

`A018105(2*n)+A046978(2*n)²`
-/

namespace A017969.P1831580410025279470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018105 (2 * n) + A046978 (2 * n) ^ 2

end

end A017969.P1831580410025279470

namespace A017969

/-- `A018105(2*n)+A046978(2*n)²` -/
def P1831580410025279470.Spec : Prop :=
  ∀ n, P1831580410025279470.a n = A017969 n

end A017969

/-! ## A017969.P15922631858308161907

`A038189(2*n+1)+A018105(2*n)`
-/

namespace A017969.P15922631858308161907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (2 * n + 1) + A018105 (2 * n)

end

end A017969.P15922631858308161907

namespace A017969

/-- `A038189(2*n+1)+A018105(2*n)` -/
def P15922631858308161907.Spec : Prop :=
  ∀ n, P15922631858308161907.a n = A017969 n

end A017969

/-! ## A017969.P14433272470949381193

`A018101(2*n)+A018105(2*n)-A018099(2*n)`
-/

namespace A017969.P14433272470949381193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018101 (2 * n) + (A018105 (2 * n) - A018099 (2 * n))

end

end A017969.P14433272470949381193

namespace A017969

/-- `A018101(2*n)+A018105(2*n)-A018099(2*n)` -/
def P14433272470949381193.Spec : Prop :=
  ∀ n, P14433272470949381193.a n = A017969 n

end A017969

/-! ## A017969.P8194129798242609310

`A018104(2*n)+A018105(2*n)-A018102(2*n)`
-/

namespace A017969.P8194129798242609310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018104 (2 * n) + (A018105 (2 * n) - A018102 (2 * n))

end

end A017969.P8194129798242609310

namespace A017969

/-- `A018104(2*n)+A018105(2*n)-A018102(2*n)` -/
def P8194129798242609310.Spec : Prop :=
  ∀ n, P8194129798242609310.a n = A017969 n

end A017969

/-! ## A017969.P16841296080581675179

`A018105(2*n)+A018113(2*n)-A018111(2*n)`
-/

namespace A017969.P16841296080581675179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018105 (2 * n) + (A018113 (2 * n) - A018111 (2 * n))

end

end A017969.P16841296080581675179

namespace A017969

/-- `A018105(2*n)+A018113(2*n)-A018111(2*n)` -/
def P16841296080581675179.Spec : Prop :=
  ∀ n, P16841296080581675179.a n = A017969 n

end A017969

/-! ## A017969.P16136541064537857793

`A018105(2*n)+A046978(n²)`
-/

namespace A017969.P16136541064537857793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018105 (2 * n) + A046978 (n ^ 2)

end

end A017969.P16136541064537857793

namespace A017969

/-- `A018105(2*n)+A046978(n²)` -/
def P16136541064537857793.Spec : Prop :=
  ∀ n, P16136541064537857793.a n = A017969 n

end A017969

/-!
# A017970: Powers of sqrt(22) rounded down.

The programs for A017970, the canonical program `A017970.P2286175100179775483` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017970 has offset 0).

The definition of A017970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017970.P2286175100179775483

`floor(sqrt(22^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017970

/-- `floor(sqrt(22^n))` -/
def P2286175100179775483.Spec : Prop :=
  ∀ n, (P2286175100179775483.a n : ℤ) = A017970 n

theorem P2286175100179775483.correct : P2286175100179775483.Spec := by
  intro n
  simp only [A017970]

end A017970

/-! ## A017970.P12681672277460016734

`A018108(2*n)`
-/

namespace A017970.P12681672277460016734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018108 (2 * n)

end

end A017970.P12681672277460016734

namespace A017970

/-- `A018108(2*n)` -/
def P12681672277460016734.Spec : Prop :=
  ∀ n, P12681672277460016734.a n = A017970 n

end A017970

/-! ## A017970.P8677196143820877082

`A017972(n)-n%2`
-/

namespace A017970.P8677196143820877082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017972 n - ((n % 2 : ℕ) : ℤ)

end

end A017970.P8677196143820877082

namespace A017970

/-- `A017972(n)-n%2` -/
def P8677196143820877082.Spec : Prop :=
  ∀ n, P8677196143820877082.a n = A017970 n

end A017970

/-! ## A017970.P6231465479430628720

`A017972(n)-A000035(n)`
-/

namespace A017970.P6231465479430628720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017972 n - A000035 n

end

end A017970.P6231465479430628720

namespace A017970

/-- `A017972(n)-A000035(n)` -/
def P6231465479430628720.Spec : Prop :=
  ∀ n, P6231465479430628720.a n = A017970 n

end A017970

/-! ## A017970.P1816427404694379179

`A017972(n)-Δ[A004526(n)]`
-/

namespace A017970.P1816427404694379179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017972 n - (f1 (n + 1) - f1 n)

end

end A017970.P1816427404694379179

namespace A017970

/-- `A017972(n)-Δ[A004526(n)]` -/
def P1816427404694379179.Spec : Prop :=
  ∀ n, P1816427404694379179.a n = A017970 n

end A017970

/-! ## A017970.P2232402160976060505

`A017972(n)-Δ[A008619(n)]`
-/

namespace A017970.P2232402160976060505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017972 n - (f1 (n + 1) - f1 n)

end

end A017970.P2232402160976060505

namespace A017970

/-- `A017972(n)-Δ[A008619(n)]` -/
def P2232402160976060505.Spec : Prop :=
  ∀ n, P2232402160976060505.a n = A017970 n

end A017970

/-! ## A017970.P7710555229669880975

`A017972(n)-char[A005408(n)]`
-/

namespace A017970.P7710555229669880975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017972 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017970.P7710555229669880975

namespace A017970

/-- `A017972(n)-char[A005408(n)]` -/
def P7710555229669880975.Spec : Prop :=
  ∀ n, P7710555229669880975.a n = A017970 n

end A017970

/-! ## A017970.P6310998959777949979

`A018110(2*n)-A000035(n)`
-/

namespace A017970.P6310998959777949979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018110 (2 * n) - A000035 n

end

end A017970.P6310998959777949979

namespace A017970

/-- `A018110(2*n)-A000035(n)` -/
def P6310998959777949979.Spec : Prop :=
  ∀ n, P6310998959777949979.a n = A017970 n

end A017970

/-! ## A017970.P6925093363140576089

`A018110(2*n)-A166486(n²)`
-/

namespace A017970.P6925093363140576089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018110 (2 * n) - A166486 (n ^ 2)

end

end A017970.P6925093363140576089

namespace A017970

/-- `A018110(2*n)-A166486(n²)` -/
def P6925093363140576089.Spec : Prop :=
  ∀ n, P6925093363140576089.a n = A017970 n

end A017970

/-! ## A017970.P2138433839439348959

`A018093(2*n)+A018110(2*n)-A018095(2*n)`
-/

namespace A017970.P2138433839439348959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018093 (2 * n) + (A018110 (2 * n) - A018095 (2 * n))

end

end A017970.P2138433839439348959

namespace A017970

/-- `A018093(2*n)+A018110(2*n)-A018095(2*n)` -/
def P2138433839439348959.Spec : Prop :=
  ∀ n, P2138433839439348959.a n = A017970 n

end A017970

/-! ## A017970.P561332829993418668

`A018110(2*n)-A166486(2*n+1)*A166486(2*n)`
-/

namespace A017970.P561332829993418668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018110 (2 * n) - A166486 (2 * n + 1) * A166486 (2 * n)

end

end A017970.P561332829993418668

namespace A017970

/-- `A018110(2*n)-A166486(2*n+1)*A166486(2*n)` -/
def P561332829993418668.Spec : Prop :=
  ∀ n, P561332829993418668.a n = A017970 n

end A017970

/-!
# A017971: Powers of sqrt(22) rounded to nearest integer.

The programs for A017971, the canonical program `A017971.P4030443112695631511` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017971 has offset 0).

The definition of A017971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017971.P4030443112695631511

`round(sqrt(22)^n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017971

/-- `round(sqrt(22)^n)` -/
def P4030443112695631511.Spec : Prop :=
  ∀ n, P4030443112695631511.a n = A017971 n

theorem P4030443112695631511.correct : P4030443112695631511.Spec := by
  intro n
  simp only [A017971]

end A017971

/-! ## A017971.P16077879523350729298

`A018109(2*n)`
-/

namespace A017971.P16077879523350729298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018109 (2 * n)

end

end A017971.P16077879523350729298

namespace A017971

/-- `A018109(2*n)` -/
def P16077879523350729298.Spec : Prop :=
  ∀ n, P16077879523350729298.a n = A017971 n

end A017971

/-! ## A017971.P13826877873775099225

`record[A018109(and(n, n-1))]`
-/

namespace A017971.P13826877873775099225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018109 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017971.P13826877873775099225

namespace A017971

/-- `record[A018109(and(n, n-1))]` -/
def P13826877873775099225.Spec : Prop :=
  ∀ n, P13826877873775099225.a n = A017971 n

end A017971

/-! ## A017971.P13487898728113528020

`record[round(22^(n/4))*A033999(n)]`
-/

namespace A017971.P13487898728113528020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((22 : ℝ) ^ ((n : ℚ) / 4 : ℝ)) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017971.P13487898728113528020

namespace A017971

/-- `record[round(22^(n/4))*A033999(n)]` -/
def P13487898728113528020.Spec : Prop :=
  ∀ n, P13487898728113528020.a n = A017971 n

end A017971

/-! ## A017971.P14218070275791979062

`record[A018109(n)/A033999(n)]`
-/

namespace A017971.P14218070275791979062
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018109 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017971.P14218070275791979062

namespace A017971

/-- `record[A018109(n)/A033999(n)]` -/
def P14218070275791979062.Spec : Prop :=
  ∀ n, P14218070275791979062.a n = (A017971 n : ℚ)

end A017971

/-! ## A017971.P2015670031824438120

`A018109(A004277(n))-A000007(n)`
-/

namespace A017971.P2015670031824438120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018109 (A004277 n).toNat - A000007 n

end

end A017971.P2015670031824438120

namespace A017971

/-- `A018109(A004277(n))-A000007(n)` -/
def P2015670031824438120.Spec : Prop :=
  ∀ n, P2015670031824438120.a n = A017971 n

end A017971

/-! ## A017971.P13404389426200291425

`A018109(A005843(n))%A005059(n+2)`
-/

namespace A017971.P13404389426200291425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018109 (A005843 n).toNat) (A005059 (n + 2))

end

end A017971.P13404389426200291425

namespace A017971

/-- `A018109(A005843(n))%A005059(n+2)` -/
def P13404389426200291425.Spec : Prop :=
  ∀ n, P13404389426200291425.a n = A017971 n

end A017971

/-! ## A017971.P561582595154304555

`floor(A017970(2*n)/A017970(n))`
-/

namespace A017971.P561582595154304555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017970 (2 * n) : ℚ) / (A017970 n : ℚ)⌋

end

end A017971.P561582595154304555

namespace A017971

/-- `floor(A017970(2*n)/A017970(n))` -/
def P561582595154304555.Spec : Prop :=
  ∀ n, P561582595154304555.a n = A017971 n

end A017971

/-! ## A017971.P14635819244689730647

`ceil(A017972(2*n)/A017972(n))`
-/

namespace A017971.P14635819244689730647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017972 (2 * n) : ℚ) / (A017972 n : ℚ)⌉

end

end A017971.P14635819244689730647

namespace A017971

/-- `ceil(A017972(2*n)/A017972(n))` -/
def P14635819244689730647.Spec : Prop :=
  ∀ n, P14635819244689730647.a n = A017971 n

end A017971

/-!
# A017972: Powers of sqrt(22) rounded up.

The programs for A017972, the canonical program `A017972.P17522841527677559939` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017972 has offset 0).

The definition of A017972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017972.P17522841527677559939

`ceil(sqrt(22^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017972

/-- `ceil(sqrt(22^n))` -/
def P17522841527677559939.Spec : Prop :=
  ∀ n, P17522841527677559939.a n = A017972 n

theorem P17522841527677559939.correct : P17522841527677559939.Spec := by
  intro n
  simp only [A017972]

end A017972

/-! ## A017972.P2324516940720048031

`A018110(2*n)`
-/

namespace A017972.P2324516940720048031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018110 (2 * n)

end

end A017972.P2324516940720048031

namespace A017972

/-- `A018110(2*n)` -/
def P2324516940720048031.Spec : Prop :=
  ∀ n, P2324516940720048031.a n = A017972 n

end A017972

/-! ## A017972.P13114481990879675481

`A017970(n)+n%2`
-/

namespace A017972.P13114481990879675481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017970 n + ((n % 2 : ℕ) : ℤ)

end

end A017972.P13114481990879675481

namespace A017972

/-- `A017970(n)+n%2` -/
def P13114481990879675481.Spec : Prop :=
  ∀ n, P13114481990879675481.a n = A017972 n

end A017972

/-! ## A017972.P16977972774032839874

`A017970(n)+A000035(n)`
-/

namespace A017972.P16977972774032839874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017970 n + A000035 n

end

end A017972.P16977972774032839874

namespace A017972

/-- `A017970(n)+A000035(n)` -/
def P16977972774032839874.Spec : Prop :=
  ∀ n, P16977972774032839874.a n = A017972 n

end A017972

/-! ## A017972.P13181143081225950100

`A017970(n)+Δ[A004526(n)]`
-/

namespace A017972.P13181143081225950100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017970 n + (f1 (n + 1) - f1 n)

end

end A017972.P13181143081225950100

namespace A017972

/-- `A017970(n)+Δ[A004526(n)]` -/
def P13181143081225950100.Spec : Prop :=
  ∀ n, P13181143081225950100.a n = A017972 n

end A017972

/-! ## A017972.P10028096142145499618

`A017970(n)+Δ[A008619(n)]`
-/

namespace A017972.P10028096142145499618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017970 n + (f1 (n + 1) - f1 n)

end

end A017972.P10028096142145499618

namespace A017972

/-- `A017970(n)+Δ[A008619(n)]` -/
def P10028096142145499618.Spec : Prop :=
  ∀ n, P10028096142145499618.a n = A017972 n

end A017972

/-! ## A017972.P1897010786020246215

`A017970(n)+char[A005408(n)]`
-/

namespace A017972.P1897010786020246215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017970 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017972.P1897010786020246215

namespace A017972

/-- `A017970(n)+char[A005408(n)]` -/
def P1897010786020246215.Spec : Prop :=
  ∀ n, P1897010786020246215.a n = A017972 n

end A017972

/-! ## A017972.P10829203892916958259

`A017970(n)+char[A109613(n)]`
-/

namespace A017972.P10829203892916958259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017970 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017972.P10829203892916958259

namespace A017972

/-- `A017970(n)+char[A109613(n)]` -/
def P10829203892916958259.Spec : Prop :=
  ∀ n, P10829203892916958259.a n = A017972 n

end A017972

/-! ## A017972.P13693390277070318421

`A018108(2*n)+A000035(n)`
-/

namespace A017972.P13693390277070318421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018108 (2 * n) + A000035 n

end

end A017972.P13693390277070318421

namespace A017972

/-- `A018108(2*n)+A000035(n)` -/
def P13693390277070318421.Spec : Prop :=
  ∀ n, P13693390277070318421.a n = A017972 n

end A017972

/-! ## A017972.P10983492585449232516

`A018108(2*n)+A166486(n²)`
-/

namespace A017972.P10983492585449232516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018108 (2 * n) + A166486 (n ^ 2)

end

end A017972.P10983492585449232516

namespace A017972

/-- `A018108(2*n)+A166486(n²)` -/
def P10983492585449232516.Spec : Prop :=
  ∀ n, P10983492585449232516.a n = A017972 n

end A017972

/-! ## A017972.P14862251430374066260

`round(A017970(n)-A033999(n)/2)`
-/

namespace A017972.P14862251430374066260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A017970 n : ℚ) - (A033999 n : ℚ) / 2)

end

end A017972.P14862251430374066260

namespace A017972

/-- `round(A017970(n)-A033999(n)/2)` -/
def P14862251430374066260.Spec : Prop :=
  ∀ n, P14862251430374066260.a n = A017972 n

end A017972

/-! ## A017972.P15023828396023487988

`A166486(2*n)+A018108(2*n)`
-/

namespace A017972.P15023828396023487988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A018108 (2 * n)

end

end A017972.P15023828396023487988

namespace A017972

/-- `A166486(2*n)+A018108(2*n)` -/
def P15023828396023487988.Spec : Prop :=
  ∀ n, P15023828396023487988.a n = A017972 n

end A017972

/-! ## A017972.P16963819163577808294

`A018095(2*n)+A018108(2*n)-A018093(2*n)`
-/

namespace A017972.P16963819163577808294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018095 (2 * n) + (A018108 (2 * n) - A018093 (2 * n))

end

end A017972.P16963819163577808294

namespace A017972

/-- `A018095(2*n)+A018108(2*n)-A018093(2*n)` -/
def P16963819163577808294.Spec : Prop :=
  ∀ n, P16963819163577808294.a n = A017972 n

end A017972

/-! ## A017972.P6282012044776993290

`A018101(2*n)+A018108(2*n)-A018099(2*n)`
-/

namespace A017972.P6282012044776993290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018101 (2 * n) + (A018108 (2 * n) - A018099 (2 * n))

end

end A017972.P6282012044776993290

namespace A017972

/-- `A018101(2*n)+A018108(2*n)-A018099(2*n)` -/
def P6282012044776993290.Spec : Prop :=
  ∀ n, P6282012044776993290.a n = A017972 n

end A017972

/-! ## A017972.P12938534057301325235

`A168181(A005563(n))+A017970(n)`
-/

namespace A017972.P12938534057301325235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 (A005563 n).toNat + A017970 n

end

end A017972.P12938534057301325235

namespace A017972

/-- `A168181(A005563(n))+A017970(n)` -/
def P12938534057301325235.Spec : Prop :=
  ∀ n, P12938534057301325235.a n = A017972 n

end A017972

/-!
# A017973: Powers of sqrt(23) rounded down.

The programs for A017973, the canonical program `A017973.P5626673355597780268` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017973 has offset 0).

The definition of A017973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017973.P5626673355597780268

`floor(sqrt(23^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017973

/-- `floor(sqrt(23^n))` -/
def P5626673355597780268.Spec : Prop :=
  ∀ n, (P5626673355597780268.a n : ℤ) = A017973 n

theorem P5626673355597780268.correct : P5626673355597780268.Spec := by
  intro n
  simp only [A017973]

end A017973

/-! ## A017973.P15272950503661589316

`A018111(2*n)`
-/

namespace A017973.P15272950503661589316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018111 (2 * n)

end

end A017973.P15272950503661589316

namespace A017973

/-- `A018111(2*n)` -/
def P15272950503661589316.Spec : Prop :=
  ∀ n, P15272950503661589316.a n = A017973 n

end A017973

/-! ## A017973.P9317265965489195067

`A017975(n)-n%2`
-/

namespace A017973.P9317265965489195067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017975 n - ((n % 2 : ℕ) : ℤ)

end

end A017973.P9317265965489195067

namespace A017973

/-- `A017975(n)-n%2` -/
def P9317265965489195067.Spec : Prop :=
  ∀ n, P9317265965489195067.a n = A017973 n

end A017973

/-! ## A017973.P11744939702206611198

`A017975(n)-A000035(n)`
-/

namespace A017973.P11744939702206611198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017975 n - A000035 n

end

end A017973.P11744939702206611198

namespace A017973

/-- `A017975(n)-A000035(n)` -/
def P11744939702206611198.Spec : Prop :=
  ∀ n, P11744939702206611198.a n = A017973 n

end A017973

/-! ## A017973.P10369513058360941635

`A017975(n)-Δ[A004526(n)]`
-/

namespace A017973.P10369513058360941635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017975 n - (f1 (n + 1) - f1 n)

end

end A017973.P10369513058360941635

namespace A017973

/-- `A017975(n)-Δ[A004526(n)]` -/
def P10369513058360941635.Spec : Prop :=
  ∀ n, P10369513058360941635.a n = A017973 n

end A017973

/-! ## A017973.P14802872888335486762

`A017975(n)-Δ[A008619(n)]`
-/

namespace A017973.P14802872888335486762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017975 n - (f1 (n + 1) - f1 n)

end

end A017973.P14802872888335486762

namespace A017973

/-- `A017975(n)-Δ[A008619(n)]` -/
def P14802872888335486762.Spec : Prop :=
  ∀ n, P14802872888335486762.a n = A017973 n

end A017973

/-! ## A017973.P801967579639501288

`A017975(n)-char[A005408(n)]`
-/

namespace A017973.P801967579639501288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017975 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017973.P801967579639501288

namespace A017973

/-- `A017975(n)-char[A005408(n)]` -/
def P801967579639501288.Spec : Prop :=
  ∀ n, P801967579639501288.a n = A017973 n

end A017973

/-! ## A017973.P10740747119146558223

`A017975(n)-char[A093178(n)]`
-/

namespace A017973.P10740747119146558223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017975 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017973.P10740747119146558223

namespace A017973

/-- `A017975(n)-char[A093178(n)]` -/
def P10740747119146558223.Spec : Prop :=
  ∀ n, P10740747119146558223.a n = A017973 n

end A017973

/-! ## A017973.P14766112694694293405

`A018113(2*n)-A000035(n)`
-/

namespace A017973.P14766112694694293405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018113 (2 * n) - A000035 n

end

end A017973.P14766112694694293405

namespace A017973

/-- `A018113(2*n)-A000035(n)` -/
def P14766112694694293405.Spec : Prop :=
  ∀ n, P14766112694694293405.a n = A017973 n

end A017973

/-! ## A017973.P15921668576512841617

`A018113(2*n)-A166486(n²)`
-/

namespace A017973.P15921668576512841617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018113 (2 * n) - A166486 (n ^ 2)

end

end A017973.P15921668576512841617

namespace A017973

/-- `A018113(2*n)-A166486(n²)` -/
def P15921668576512841617.Spec : Prop :=
  ∀ n, P15921668576512841617.a n = A017973 n

end A017973

/-! ## A017973.P7549804138988269320

`A017975(n)-Δ[A008615(3*n)]`
-/

namespace A017973.P7549804138988269320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017975 n - (f1 (n + 1) - f1 n)

end

end A017973.P7549804138988269320

namespace A017973

/-- `A017975(n)-Δ[A008615(3*n)]` -/
def P7549804138988269320.Spec : Prop :=
  ∀ n, P7549804138988269320.a n = A017973 n

end A017973

/-! ## A017973.P11755568840126698778

`A017975(n)-char[A003961(n+1)]`
-/

namespace A017973.P11755568840126698778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017975 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017973.P11755568840126698778

namespace A017973

/-- `A017975(n)-char[A003961(n+1)]` -/
def P11755568840126698778.Spec : Prop :=
  ∀ n, P11755568840126698778.a n = A017973 n

end A017973

/-! ## A017973.P15593866509616312732

`A017975(n)-A008615(Δ[A028242(n)]²)`
-/

namespace A017973.P15593866509616312732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017975 n - A008615 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A017973.P15593866509616312732

namespace A017973

/-- `A017975(n)-A008615(Δ[A028242(n)]²)` -/
def P15593866509616312732.Spec : Prop :=
  ∀ n, P15593866509616312732.a n = A017973 n

end A017973

/-! ## A017973.P2352775167893421236

`A017975(n)-A265755(Δ[A028242(n)]²)`
-/

namespace A017973.P2352775167893421236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017975 n - A265755 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A017973.P2352775167893421236

namespace A017973

/-- `A017975(n)-A265755(Δ[A028242(n)]²)` -/
def P2352775167893421236.Spec : Prop :=
  ∀ n, P2352775167893421236.a n = A017973 n

end A017973

/-! ## A017973.P3371584453632373905

`A018093(2*n)+A018113(2*n)-A018095(2*n)`
-/

namespace A017973.P3371584453632373905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018093 (2 * n) + (A018113 (2 * n) - A018095 (2 * n))

end

end A017973.P3371584453632373905

namespace A017973

/-- `A018093(2*n)+A018113(2*n)-A018095(2*n)` -/
def P3371584453632373905.Spec : Prop :=
  ∀ n, P3371584453632373905.a n = A017973 n

end A017973

/-! ## A017973.P3458460164986504758

`A018114(2*n)+A018113(2*n)-A018116(2*n)`
-/

namespace A017973.P3458460164986504758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018114 (2 * n) + A018113 (2 * n) - A018116 (2 * n)

end

end A017973.P3458460164986504758

namespace A017973

/-- `A018114(2*n)+A018113(2*n)-A018116(2*n)` -/
def P3458460164986504758.Spec : Prop :=
  ∀ n, P3458460164986504758.a n = A017973 n

end A017973

/-!
# A017974: Powers of sqrt(23) rounded to nearest integer.

The programs for A017974, the canonical program `A017974.P17644686889605105599` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017974 has offset 0).

The definition of A017974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017974.P17644686889605105599

`round(sqrt(23)^n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017974

/-- `round(sqrt(23)^n)` -/
def P17644686889605105599.Spec : Prop :=
  ∀ n, P17644686889605105599.a n = A017974 n

theorem P17644686889605105599.correct : P17644686889605105599.Spec := by
  intro n
  simp only [A017974]

end A017974

/-! ## A017974.P14931550071912686131

`A018112(2*n)`
-/

namespace A017974.P14931550071912686131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018112 (2 * n)

end

end A017974.P14931550071912686131

namespace A017974

/-- `A018112(2*n)` -/
def P14931550071912686131.Spec : Prop :=
  ∀ n, P14931550071912686131.a n = A017974 n

end A017974

/-! ## A017974.P14711795748661141609

`record[A018112(and(n, n-1))]`
-/

namespace A017974.P14711795748661141609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018112 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017974.P14711795748661141609

namespace A017974

/-- `record[A018112(and(n, n-1))]` -/
def P14711795748661141609.Spec : Prop :=
  ∀ n, P14711795748661141609.a n = A017974 n

end A017974

/-! ## A017974.P9084023564711108381

`record[A018112(A000096(n)%(n+1))]`
-/

namespace A017974.P9084023564711108381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018112 (Int.tmod (A000096 n) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017974.P9084023564711108381

namespace A017974

/-- `record[A018112(A000096(n)%(n+1))]` -/
def P9084023564711108381.Spec : Prop :=
  ∀ n, P9084023564711108381.a n = A017974 n

end A017974

/-! ## A017974.P18431136985179110499

`A018112(A004277(n))-A000007(n)`
-/

namespace A017974.P18431136985179110499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018112 (A004277 n).toNat - A000007 n

end

end A017974.P18431136985179110499

namespace A017974

/-- `A018112(A004277(n))-A000007(n)` -/
def P18431136985179110499.Spec : Prop :=
  ∀ n, P18431136985179110499.a n = A017974 n

end A017974

/-! ## A017974.P7253458789073909891

`A018112(A005843(n))%A005059(n+2)`
-/

namespace A017974.P7253458789073909891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018112 (A005843 n).toNat) (A005059 (n + 2))

end

end A017974.P7253458789073909891

namespace A017974

/-- `A018112(A005843(n))%A005059(n+2)` -/
def P7253458789073909891.Spec : Prop :=
  ∀ n, P7253458789073909891.a n = A017974 n

end A017974

/-! ## A017974.P5807292847322548563

`floor(A017973(2*n)/A017973(n))`
-/

namespace A017974.P5807292847322548563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017973 (2 * n) : ℚ) / (A017973 n : ℚ)⌋

end

end A017974.P5807292847322548563

namespace A017974

/-- `floor(A017973(2*n)/A017973(n))` -/
def P5807292847322548563.Spec : Prop :=
  ∀ n, P5807292847322548563.a n = A017974 n

end A017974

/-! ## A017974.P4358784626688257273

`ceil(A017975(2*n)/A017975(n))`
-/

namespace A017974.P4358784626688257273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017975 (2 * n) : ℚ) / (A017975 n : ℚ)⌉

end

end A017974.P4358784626688257273

namespace A017974

/-- `ceil(A017975(2*n)/A017975(n))` -/
def P4358784626688257273.Spec : Prop :=
  ∀ n, P4358784626688257273.a n = A017974 n

end A017974

/-! ## A017974.P13946656267551258426

`floor(A017975(2*n)/A018111(2*n))`
-/

namespace A017974.P13946656267551258426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017975 (2 * n) : ℚ) / (A018111 (2 * n) : ℚ)⌋

end

end A017974.P13946656267551258426

namespace A017974

/-- `floor(A017975(2*n)/A018111(2*n))` -/
def P13946656267551258426.Spec : Prop :=
  ∀ n, P13946656267551258426.a n = A017974 n

end A017974

/-!
# A017975: Powers of sqrt(23) rounded up.

The programs for A017975, the canonical program `A017975.P14785410818165074267` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017975 has offset 0).

The definition of A017975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017975.P14785410818165074267

`ceil(sqrt(23^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017975

/-- `ceil(sqrt(23^n))` -/
def P14785410818165074267.Spec : Prop :=
  ∀ n, P14785410818165074267.a n = A017975 n

theorem P14785410818165074267.correct : P14785410818165074267.Spec := by
  intro n
  simp only [A017975]

end A017975

/-! ## A017975.P1953779650505233673

`floor(23^(n/2))+n%2`
-/

namespace A017975.P1953779650505233673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(23 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋ + ((n % 2 : ℕ) : ℤ)

end

end A017975.P1953779650505233673

namespace A017975

/-- `floor(23^(n/2))+n%2` -/
def P1953779650505233673.Spec : Prop :=
  ∀ n, P1953779650505233673.a n = A017975 n

end A017975

/-! ## A017975.P10349253963983729212

`A018113(2*n)`
-/

namespace A017975.P10349253963983729212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018113 (2 * n)

end

end A017975.P10349253963983729212

namespace A017975

/-- `A018113(2*n)` -/
def P10349253963983729212.Spec : Prop :=
  ∀ n, P10349253963983729212.a n = A017975 n

end A017975

/-! ## A017975.P6861257561897251093

`A017973(n)+A000035(n)`
-/

namespace A017975.P6861257561897251093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017973 n + A000035 n

end

end A017975.P6861257561897251093

namespace A017975

/-- `A017973(n)+A000035(n)` -/
def P6861257561897251093.Spec : Prop :=
  ∀ n, P6861257561897251093.a n = A017975 n

end A017975

/-! ## A017975.P11810431800824979574

`A017973(n)+Δ[A008619(n)]`
-/

namespace A017975.P11810431800824979574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017973 n + (f1 (n + 1) - f1 n)

end

end A017975.P11810431800824979574

namespace A017975

/-- `A017973(n)+Δ[A008619(n)]` -/
def P11810431800824979574.Spec : Prop :=
  ∀ n, P11810431800824979574.a n = A017975 n

end A017975

/-! ## A017975.P10528919792035801176

`A017973(n)+char[A005408(n)]`
-/

namespace A017975.P10528919792035801176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017973 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017975.P10528919792035801176

namespace A017975

/-- `A017973(n)+char[A005408(n)]` -/
def P10528919792035801176.Spec : Prop :=
  ∀ n, P10528919792035801176.a n = A017975 n

end A017975

/-! ## A017975.P7303496208013202622

`A017973(n)+char[A093178(n)]`
-/

namespace A017975.P7303496208013202622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017973 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017975.P7303496208013202622

namespace A017975

/-- `A017973(n)+char[A093178(n)]` -/
def P7303496208013202622.Spec : Prop :=
  ∀ n, P7303496208013202622.a n = A017975 n

end A017975

/-! ## A017975.P16995774560747578453

`A018111(2*n)+A000035(n)`
-/

namespace A017975.P16995774560747578453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018111 (2 * n) + A000035 n

end

end A017975.P16995774560747578453

namespace A017975

/-- `A018111(2*n)+A000035(n)` -/
def P16995774560747578453.Spec : Prop :=
  ∀ n, P16995774560747578453.a n = A017975 n

end A017975

/-! ## A017975.P8905529862486236606

`A018111(2*n)+A166486(n²)`
-/

namespace A017975.P8905529862486236606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018111 (2 * n) + A166486 (n ^ 2)

end

end A017975.P8905529862486236606

namespace A017975

/-- `A018111(2*n)+A166486(n²)` -/
def P8905529862486236606.Spec : Prop :=
  ∀ n, P8905529862486236606.a n = A017975 n

end A017975

/-! ## A017975.P18225719088784036017

`A017973(n)+char[A003961(n+1)]`
-/

namespace A017975.P18225719088784036017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017973 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017975.P18225719088784036017

namespace A017975

/-- `A017973(n)+char[A003961(n+1)]` -/
def P18225719088784036017.Spec : Prop :=
  ∀ n, P18225719088784036017.a n = A017975 n

end A017975

/-! ## A017975.P752363807961828093

`A166486(2*n)+A018111(2*n)`
-/

namespace A017975.P752363807961828093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A018111 (2 * n)

end

end A017975.P752363807961828093

namespace A017975

/-- `A166486(2*n)+A018111(2*n)` -/
def P752363807961828093.Spec : Prop :=
  ∀ n, P752363807961828093.a n = A017975 n

end A017975

/-! ## A017975.P2292619190866354036

`A018111(2*n)+A046978(2*n)²`
-/

namespace A017975.P2292619190866354036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018111 (2 * n) + A046978 (2 * n) ^ 2

end

end A017975.P2292619190866354036

namespace A017975

/-- `A018111(2*n)+A046978(2*n)²` -/
def P2292619190866354036.Spec : Prop :=
  ∀ n, P2292619190866354036.a n = A017975 n

end A017975

/-! ## A017975.P9734721564671305835

`A102679(Δ[A228137(n+1)])+A017973(n)`
-/

namespace A017975.P9734721564671305835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (f1 (n + 1) - f1 n).toNat + A017973 n

end

end A017975.P9734721564671305835

namespace A017975

/-- `A102679(Δ[A228137(n+1)])+A017973(n)` -/
def P9734721564671305835.Spec : Prop :=
  ∀ n, P9734721564671305835.a n = A017975 n

end A017975

/-! ## A017975.P9590353554780305696

`A018104(2*n)+A018111(2*n)-A018102(2*n)`
-/

namespace A017975.P9590353554780305696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018104 (2 * n) + (A018111 (2 * n) - A018102 (2 * n))

end

end A017975.P9590353554780305696

namespace A017975

/-- `A018104(2*n)+A018111(2*n)-A018102(2*n)` -/
def P9590353554780305696.Spec : Prop :=
  ∀ n, P9590353554780305696.a n = A017975 n

end A017975

/-! ## A017975.P4412970090467293185

`A018111(2*n)+A046978(n²)`
-/

namespace A017975.P4412970090467293185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018111 (2 * n) + A046978 (n ^ 2)

end

end A017975.P4412970090467293185

namespace A017975

/-- `A018111(2*n)+A046978(n²)` -/
def P4412970090467293185.Spec : Prop :=
  ∀ n, P4412970090467293185.a n = A017975 n

end A017975

/-!
# A017976: Powers of sqrt(24) rounded down.

The programs for A017976, the canonical program `A017976.P14997319104183218160` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017976 has offset 0).

The definition of A017976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017976.P14997319104183218160

`floor(sqrt(24^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017976

/-- `floor(sqrt(24^n))` -/
def P14997319104183218160.Spec : Prop :=
  ∀ n, (P14997319104183218160.a n : ℤ) = A017976 n

theorem P14997319104183218160.correct : P14997319104183218160.Spec := by
  intro n
  simp only [A017976]

end A017976

/-! ## A017976.P15112431350752347339

`A018114(2*n)`
-/

namespace A017976.P15112431350752347339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018114 (2 * n)

end

end A017976.P15112431350752347339

namespace A017976

/-- `A018114(2*n)` -/
def P15112431350752347339.Spec : Prop :=
  ∀ n, P15112431350752347339.a n = A017976 n

end A017976

/-! ## A017976.P2598089230452346982

`A017978(n)-A000035(n)`
-/

namespace A017976.P2598089230452346982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017978 n - A000035 n

end

end A017976.P2598089230452346982

namespace A017976

/-- `A017978(n)-A000035(n)` -/
def P2598089230452346982.Spec : Prop :=
  ∀ n, P2598089230452346982.a n = A017976 n

end A017976

/-! ## A017976.P8423443579105815379

`A017978(n)-Δ[A004526(n)]`
-/

namespace A017976.P8423443579105815379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017978 n - (f1 (n + 1) - f1 n)

end

end A017976.P8423443579105815379

namespace A017976

/-- `A017978(n)-Δ[A004526(n)]` -/
def P8423443579105815379.Spec : Prop :=
  ∀ n, P8423443579105815379.a n = A017976 n

end A017976

/-! ## A017976.P3288518190371670075

`A017978(n)-Δ[A008619(n)]`
-/

namespace A017976.P3288518190371670075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017978 n - (f1 (n + 1) - f1 n)

end

end A017976.P3288518190371670075

namespace A017976

/-- `A017978(n)-Δ[A008619(n)]` -/
def P3288518190371670075.Spec : Prop :=
  ∀ n, P3288518190371670075.a n = A017976 n

end A017976

/-! ## A017976.P17031851236079712173

`A017978(n)-char[A093178(n)]`
-/

namespace A017976.P17031851236079712173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017978 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017976.P17031851236079712173

namespace A017976

/-- `A017978(n)-char[A093178(n)]` -/
def P17031851236079712173.Spec : Prop :=
  ∀ n, P17031851236079712173.a n = A017976 n

end A017976

/-! ## A017976.P9060978049201076127

`A018116(2*n)-A000035(n)`
-/

namespace A017976.P9060978049201076127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018116 (2 * n) - A000035 n

end

end A017976.P9060978049201076127

namespace A017976

/-- `A018116(2*n)-A000035(n)` -/
def P9060978049201076127.Spec : Prop :=
  ∀ n, P9060978049201076127.a n = A017976 n

end A017976

/-! ## A017976.P18093794960728900672

`A018116(2*n)-A166486(n²)`
-/

namespace A017976.P18093794960728900672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018116 (2 * n) - A166486 (n ^ 2)

end

end A017976.P18093794960728900672

namespace A017976

/-- `A018116(2*n)-A166486(n²)` -/
def P18093794960728900672.Spec : Prop :=
  ∀ n, P18093794960728900672.a n = A017976 n

end A017976

/-! ## A017976.P16827259410071285494

`A017978(n)-A014577(A017341(n))`
-/

namespace A017976.P16827259410071285494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017978 n - A014577 (A017341 n).toNat

end

end A017976.P16827259410071285494

namespace A017976

/-- `A017978(n)-A014577(A017341(n))` -/
def P16827259410071285494.Spec : Prop :=
  ∀ n, P16827259410071285494.a n = A017976 n

end A017976

/-! ## A017976.P17005215631908992101

`A018116(2*n)-A057353(Δ[A057353(2*n)])`
-/

namespace A017976.P17005215631908992101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018116 (2 * n) - A057353 (f1 (n + 1) - f1 n).toNat

end

end A017976.P17005215631908992101

namespace A017976

/-- `A018116(2*n)-A057353(Δ[A057353(2*n)])` -/
def P17005215631908992101.Spec : Prop :=
  ∀ n, P17005215631908992101.a n = A017976 n

end A017976

/-! ## A017976.P5126925236069966040

`A018093(2*n)+A018116(2*n)-A018095(2*n)`
-/

namespace A017976.P5126925236069966040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018093 (2 * n) + (A018116 (2 * n) - A018095 (2 * n))

end

end A017976.P5126925236069966040

namespace A017976

/-- `A018093(2*n)+A018116(2*n)-A018095(2*n)` -/
def P5126925236069966040.Spec : Prop :=
  ∀ n, P5126925236069966040.a n = A017976 n

end A017976

/-! ## A017976.P5373796135366427003

`A018108(2*n)+A018116(2*n)-A018110(2*n)`
-/

namespace A017976.P5373796135366427003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018108 (2 * n) + (A018116 (2 * n) - A018110 (2 * n))

end

end A017976.P5373796135366427003

namespace A017976

/-- `A018108(2*n)+A018116(2*n)-A018110(2*n)` -/
def P5373796135366427003.Spec : Prop :=
  ∀ n, P5373796135366427003.a n = A017976 n

end A017976

/-! ## A017976.P10005847818598190446

`A018116(2*n)+A057353(2*n)-A057353(2*n+1)`
-/

namespace A017976.P10005847818598190446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018116 (2 * n) + (A057353 (2 * n) - A057353 (2 * n + 1))

end

end A017976.P10005847818598190446

namespace A017976

/-- `A018116(2*n)+A057353(2*n)-A057353(2*n+1)` -/
def P10005847818598190446.Spec : Prop :=
  ∀ n, P10005847818598190446.a n = A017976 n

end A017976

/-! ## A017976.P5072966566171781611

`A018116(2*n)-A166486(2*n+1)*A166486(2*n)`
-/

namespace A017976.P5072966566171781611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018116 (2 * n) - A166486 (2 * n + 1) * A166486 (2 * n)

end

end A017976.P5072966566171781611

namespace A017976

/-- `A018116(2*n)-A166486(2*n+1)*A166486(2*n)` -/
def P5072966566171781611.Spec : Prop :=
  ∀ n, P5072966566171781611.a n = A017976 n

end A017976

/-!
# A017977: Powers of sqrt(24) rounded to nearest integer.

The programs for A017977, the canonical program `A017977.P6768353009805850750` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017977 has offset 0).

The definition of A017977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017977.P6768353009805850750

`round(sqrt(24)^n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017977

/-- `round(sqrt(24)^n)` -/
def P6768353009805850750.Spec : Prop :=
  ∀ n, P6768353009805850750.a n = A017977 n

theorem P6768353009805850750.correct : P6768353009805850750.Spec := by
  intro n
  simp only [A017977]

end A017977

/-! ## A017977.P7569345660896164801

`A018115(2*n)`
-/

namespace A017977.P7569345660896164801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018115 (2 * n)

end

end A017977.P7569345660896164801

namespace A017977

/-- `A018115(2*n)` -/
def P7569345660896164801.Spec : Prop :=
  ∀ n, P7569345660896164801.a n = A017977 n

end A017977

/-! ## A017977.P12933104584821880161

`record[A018115(n)^((n+1)%2)]`
-/

namespace A017977.P12933104584821880161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018115 n ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017977.P12933104584821880161

namespace A017977

/-- `record[A018115(n)^((n+1)%2)]` -/
def P12933104584821880161.Spec : Prop :=
  ∀ n, P12933104584821880161.a n = A017977 n

end A017977

/-! ## A017977.P11127442941288750173

`record[A018115(Δ[A127944(n)])]`
-/

namespace A017977.P11127442941288750173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127944 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018115 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017977.P11127442941288750173

namespace A017977

/-- `record[A018115(Δ[A127944(n)])]` -/
def P11127442941288750173.Spec : Prop :=
  ∀ n, P11127442941288750173.a n = A017977 n

end A017977

/-! ## A017977.P71941272407347819

`record[A018115(n)/A033999(n)]`
-/

namespace A017977.P71941272407347819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018115 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017977.P71941272407347819

namespace A017977

/-- `record[A018115(n)/A033999(n)]` -/
def P71941272407347819.Spec : Prop :=
  ∀ n, P71941272407347819.a n = (A017977 n : ℚ)

end A017977

/-! ## A017977.P16316282950272406639

`record[A018115(n)/A000034(n)²]`
-/

namespace A017977.P16316282950272406639
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018115 n : ℚ) / (A000034 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017977.P16316282950272406639

namespace A017977

/-- `record[A018115(n)/A000034(n)²]` -/
def P16316282950272406639.Spec : Prop :=
  ∀ n, P16316282950272406639.a n = (A017977 n : ℚ)

end A017977

/-! ## A017977.P8642858422738021195

`ceil(A009968(n)/A017978(n))`
-/

namespace A017977.P8642858422738021195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A009968 n : ℚ) / (A017978 n : ℚ)⌉

end

end A017977.P8642858422738021195

namespace A017977

/-- `ceil(A009968(n)/A017978(n))` -/
def P8642858422738021195.Spec : Prop :=
  ∀ n, P8642858422738021195.a n = A017977 n

end A017977

/-! ## A017977.P1276957116928800803

`ceil(A017978(2*n)/A017978(n))`
-/

namespace A017977.P1276957116928800803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017978 (2 * n) : ℚ) / (A017978 n : ℚ)⌉

end

end A017977.P1276957116928800803

namespace A017977

/-- `ceil(A017978(2*n)/A017978(n))` -/
def P1276957116928800803.Spec : Prop :=
  ∀ n, P1276957116928800803.a n = A017977 n

end A017977

/-! ## A017977.P511460303725781113

`floor(sqrt(A018114(2*n)+A017976(2*n)))`
-/

namespace A017977.P511460303725781113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018114 (2 * n) + A017976 (2 * n))

end

end A017977.P511460303725781113

namespace A017977

/-- `floor(sqrt(A018114(2*n)+A017976(2*n)))` -/
def P511460303725781113.Spec : Prop :=
  ∀ n, P511460303725781113.a n = A017977 n

end A017977

/-! ## A017977.P11360923438818272462

`floor(sqrt(A018114(2*n)+A017978(2*n)))`
-/

namespace A017977.P11360923438818272462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018114 (2 * n) + A017978 (2 * n))

end

end A017977.P11360923438818272462

namespace A017977

/-- `floor(sqrt(A018114(2*n)+A017978(2*n)))` -/
def P11360923438818272462.Spec : Prop :=
  ∀ n, P11360923438818272462.a n = A017977 n

end A017977

/-!
# A017978: Powers of sqrt(24) rounded up.

The programs for A017978, the canonical program `A017978.P7810504544621147641` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017978 has offset 0).

The definition of A017978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017978.P7810504544621147641

`ceil(sqrt(24^n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017978

/-- `ceil(sqrt(24^n))` -/
def P7810504544621147641.Spec : Prop :=
  ∀ n, P7810504544621147641.a n = A017978 n

theorem P7810504544621147641.correct : P7810504544621147641.Spec := by
  intro n
  simp only [A017978]

end A017978

/-! ## A017978.P10117293530588583461

`A018116(2*n)`
-/

namespace A017978.P10117293530588583461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018116 (2 * n)

end

end A017978.P10117293530588583461

namespace A017978

/-- `A018116(2*n)` -/
def P10117293530588583461.Spec : Prop :=
  ∀ n, P10117293530588583461.a n = A017978 n

end A017978

/-! ## A017978.P11840463125269371163

`A017976(n)+n%2`
-/

namespace A017978.P11840463125269371163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017976 n + ((n % 2 : ℕ) : ℤ)

end

end A017978.P11840463125269371163

namespace A017978

/-- `A017976(n)+n%2` -/
def P11840463125269371163.Spec : Prop :=
  ∀ n, P11840463125269371163.a n = A017978 n

end A017978

/-! ## A017978.P13062400849481007042

`A098725(n²)+A017976(n)`
-/

namespace A017978.P13062400849481007042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 (n ^ 2) + A017976 n

end

end A017978.P13062400849481007042

namespace A017978

/-- `A098725(n²)+A017976(n)` -/
def P13062400849481007042.Spec : Prop :=
  ∀ n, P13062400849481007042.a n = A017978 n

end A017978

/-! ## A017978.P16380647257740480728

`A017976(n)+Δ[A004526(n)]`
-/

namespace A017978.P16380647257740480728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017976 n + (f1 (n + 1) - f1 n)

end

end A017978.P16380647257740480728

namespace A017978

/-- `A017976(n)+Δ[A004526(n)]` -/
def P16380647257740480728.Spec : Prop :=
  ∀ n, P16380647257740480728.a n = A017978 n

end A017978

/-! ## A017978.P197908068466972265

`A017976(n)+Δ[A008619(n)]`
-/

namespace A017978.P197908068466972265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017976 n + (f1 (n + 1) - f1 n)

end

end A017978.P197908068466972265

namespace A017978

/-- `A017976(n)+Δ[A008619(n)]` -/
def P197908068466972265.Spec : Prop :=
  ∀ n, P197908068466972265.a n = A017978 n

end A017978

/-! ## A017978.P2529495123015675714

`A017976(n)+char[A005408(n)]`
-/

namespace A017978.P2529495123015675714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017976 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017978.P2529495123015675714

namespace A017978

/-- `A017976(n)+char[A005408(n)]` -/
def P2529495123015675714.Spec : Prop :=
  ∀ n, P2529495123015675714.a n = A017978 n

end A017978

/-! ## A017978.P1218046116681685916

`A018114(2*n)+A166486(n²)`
-/

namespace A017978.P1218046116681685916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018114 (2 * n) + A166486 (n ^ 2)

end

end A017978.P1218046116681685916

namespace A017978

/-- `A018114(2*n)+A166486(n²)` -/
def P1218046116681685916.Spec : Prop :=
  ∀ n, P1218046116681685916.a n = A017978 n

end A017978

/-! ## A017978.P18077144917838754741

`A017976(n)+char[A000265(n+1)]`
-/

namespace A017978.P18077144917838754741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017976 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017978.P18077144917838754741

namespace A017978

/-- `A017976(n)+char[A000265(n+1)]` -/
def P18077144917838754741.Spec : Prop :=
  ∀ n, P18077144917838754741.a n = A017978 n

end A017978

/-! ## A017978.P17209007830729510493

`A166486(2*n)+A018114(2*n)`
-/

namespace A017978.P17209007830729510493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n) + A018114 (2 * n)

end

end A017978.P17209007830729510493

namespace A017978

/-- `A166486(2*n)+A018114(2*n)` -/
def P17209007830729510493.Spec : Prop :=
  ∀ n, P17209007830729510493.a n = A017978 n

end A017978

/-! ## A017978.P18411545639834585713

`A018114(2*n)+A046978(2*n)²`
-/

namespace A017978.P18411545639834585713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018114 (2 * n) + A046978 (2 * n) ^ 2

end

end A017978.P18411545639834585713

namespace A017978

/-- `A018114(2*n)+A046978(2*n)²` -/
def P18411545639834585713.Spec : Prop :=
  ∀ n, P18411545639834585713.a n = A017978 n

end A017978

/-! ## A017978.P3512040779885182419

`A018101(2*n)+A018114(2*n)-A018099(2*n)`
-/

namespace A017978.P3512040779885182419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018101 (2 * n) + (A018114 (2 * n) - A018099 (2 * n))

end

end A017978.P3512040779885182419

namespace A017978

/-- `A018101(2*n)+A018114(2*n)-A018099(2*n)` -/
def P3512040779885182419.Spec : Prop :=
  ∀ n, P3512040779885182419.a n = A017978 n

end A017978

/-! ## A017978.P12808748884881320324

`A018114(2*n)+A046978(2*n+1)*A046978(2*n)`
-/

namespace A017978.P12808748884881320324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018114 (2 * n) + A046978 (2 * n + 1) * A046978 (2 * n)

end

end A017978.P12808748884881320324

namespace A017978

/-- `A018114(2*n)+A046978(2*n+1)*A046978(2*n)` -/
def P12808748884881320324.Spec : Prop :=
  ∀ n, P12808748884881320324.a n = A017978 n

end A017978

/-! ## A017978.P5157171706288132888

`A018114(2*n)+A046978(n²)`
-/

namespace A017978.P5157171706288132888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018114 (2 * n) + A046978 (n ^ 2)

end

end A017978.P5157171706288132888

namespace A017978

/-- `A018114(2*n)+A046978(n²)` -/
def P5157171706288132888.Spec : Prop :=
  ∀ n, P5157171706288132888.a n = A017978 n

end A017978

/-!
# A017979: Powers of cube root of 2 rounded down.

The programs for A017979, the canonical program `A017979.P8622892110208432116` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017979 has offset 0).

The definition of A017979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017979.P8622892110208432116

`A017981(n)-n²%3`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A017979

/-- `A017981(n)-n²%3` -/
def P8622892110208432116.Spec : Prop :=
  ∀ n, P8622892110208432116.a n = A017979 n

theorem P8622892110208432116.correct : P8622892110208432116.Spec := by
  intro n
  simp only [A017979]

end A017979

/-! ## A017979.P13292246854677064953

`A017981(n)-A011655(n)`
-/

namespace A017979.P13292246854677064953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n - A011655 n

end

end A017979.P13292246854677064953

namespace A017979

/-- `A017981(n)-A011655(n)` -/
def P13292246854677064953.Spec : Prop :=
  ∀ n, P13292246854677064953.a n = A017979 n

end A017979

/-! ## A017979.P10408608170221883201

`A017981(n)-Δ[A004523(n)]`
-/

namespace A017979.P10408608170221883201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n - (f1 (n + 1) - f1 n)

end

end A017979.P10408608170221883201

namespace A017979

/-- `A017981(n)-Δ[A004523(n)]` -/
def P10408608170221883201.Spec : Prop :=
  ∀ n, P10408608170221883201.a n = A017979 n

end A017979

/-! ## A017979.P16903439758441380714

`A017981(n)-char[A001651(n+1)]`
-/

namespace A017979.P16903439758441380714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017979.P16903439758441380714

namespace A017979

/-- `A017981(n)-char[A001651(n+1)]` -/
def P16903439758441380714.Spec : Prop :=
  ∀ n, P16903439758441380714.a n = A017979 n

end A017979

/-! ## A017979.P15161897212566077624

`A017981(n)-A077958(A077958(n)/A017981(n))`
-/

namespace A017979.P15161897212566077624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n - A077958 (SequenceMachineLib.roundAway ((A077958 n : ℚ) / (A017981 n : ℚ))).toNat

end

end A017979.P15161897212566077624

namespace A017979

/-- `A017981(n)-A077958(A077958(n)/A017981(n))` -/
def P15161897212566077624.Spec : Prop :=
  ∀ n, P15161897212566077624.a n = A017979 n

end A017979

/-! ## A017979.P16020627065201564222

`floor(sqrt(A017985(n)))`
-/

namespace A017979.P16020627065201564222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A017985 n)

end

end A017979.P16020627065201564222

namespace A017979

/-- `floor(sqrt(A017985(n)))` -/
def P16020627065201564222.Spec : Prop :=
  ∀ n, P16020627065201564222.a n = A017979 n

end A017979

/-! ## A017979.P11237979586627117710

`floor(sqrt(A017986(n)))`
-/

namespace A017979.P11237979586627117710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A017986 n)

end

end A017979.P11237979586627117710

namespace A017979

/-- `floor(sqrt(A017986(n)))` -/
def P11237979586627117710.Spec : Prop :=
  ∀ n, P11237979586627117710.a n = A017979 n

end A017979

/-! ## A017979.P7249197126076076385

`floor(sqrt(A017987(n)))`
-/

namespace A017979.P7249197126076076385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A017987 n)

end

end A017979.P7249197126076076385

namespace A017979

/-- `floor(sqrt(A017987(n)))` -/
def P7249197126076076385.Spec : Prop :=
  ∀ n, P7249197126076076385.a n = A017979 n

end A017979

/-! ## A017979.P12165374367308749930

`floor(sqrt(A017980(2*n)))`
-/

namespace A017979.P12165374367308749930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A017980 (2 * n))

end

end A017979.P12165374367308749930

namespace A017979

/-- `floor(sqrt(A017980(2*n)))` -/
def P12165374367308749930.Spec : Prop :=
  ∀ n, P12165374367308749930.a n = A017979 n

end A017979

/-! ## A017979.P16744969416322988320

`floor(sqrt(A017981(2*n)))`
-/

namespace A017979.P16744969416322988320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A017981 (2 * n))

end

end A017979.P16744969416322988320

namespace A017979

/-- `floor(sqrt(A017981(2*n)))` -/
def P16744969416322988320.Spec : Prop :=
  ∀ n, P16744969416322988320.a n = A017979 n

end A017979

/-! ## A017979.P9344654931547131827

`floor(root(A000051(n), 3))`
-/

namespace A017979.P9344654931547131827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000051 n : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A017979.P9344654931547131827

namespace A017979

/-- `floor(root(A000051(n), 3))` -/
def P9344654931547131827.Spec : Prop :=
  ∀ n, P9344654931547131827.a n = A017979 n

end A017979

/-! ## A017979.P7439625406908303035

`floor(root(A062709(n), 3))`
-/

namespace A017979.P7439625406908303035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062709 n : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A017979.P7439625406908303035

namespace A017979

/-- `floor(root(A062709(n), 3))` -/
def P7439625406908303035.Spec : Prop :=
  ∀ n, P7439625406908303035.a n = A017979 n

end A017979

/-! ## A017979.P10002542432732810879

`floor(sqrt(sqrt(A018021(n))))`
-/

namespace A017979.P10002542432732810879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A018021 n : ℝ))⌋

end

end A017979.P10002542432732810879

namespace A017979

/-- `floor(sqrt(sqrt(A018021(n))))` -/
def P10002542432732810879.Spec : Prop :=
  ∀ n, P10002542432732810879.a n = A017979 n

end A017979

/-! ## A017979.P12078765605079800214

`floor(sqrt(sqrt(A018022(n))))`
-/

namespace A017979.P12078765605079800214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A018022 n : ℝ))⌋

end

end A017979.P12078765605079800214

namespace A017979

/-- `floor(sqrt(sqrt(A018022(n))))` -/
def P12078765605079800214.Spec : Prop :=
  ∀ n, P12078765605079800214.a n = A017979 n

end A017979

/-! ## A017979.P927041088811544155

`floor(sqrt(sqrt(A018023(n))))`
-/

namespace A017979.P927041088811544155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A018023 n : ℝ))⌋

end

end A017979.P927041088811544155

namespace A017979

/-- `floor(sqrt(sqrt(A018023(n))))` -/
def P927041088811544155.Spec : Prop :=
  ∀ n, P927041088811544155.a n = A017979 n

end A017979

/-! ## A017979.P3287933794395662311

`floor(root(A001576(n), 6))`
-/

namespace A017979.P3287933794395662311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001576 n : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A017979.P3287933794395662311

namespace A017979

/-- `floor(root(A001576(n), 6))` -/
def P3287933794395662311.Spec : Prop :=
  ∀ n, P3287933794395662311.a n = A017979 n

end A017979

/-! ## A017979.P13705101047442645613

`floor(root(A052539(n), 6))`
-/

namespace A017979.P13705101047442645613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052539 n : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A017979.P13705101047442645613

namespace A017979

/-- `floor(root(A052539(n), 6))` -/
def P13705101047442645613.Spec : Prop :=
  ∀ n, P13705101047442645613.a n = A017979 n

end A017979

/-! ## A017979.P1523531862473112420

`floor(root(A343176(n), 6))`
-/

namespace A017979.P1523531862473112420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A343176 n : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A017979.P1523531862473112420

namespace A017979

/-- `floor(root(A343176(n), 6))` -/
def P1523531862473112420.Spec : Prop :=
  ∀ n, P1523531862473112420.a n = A017979 n

end A017979

/-!
# A017980: Powers of cube root of 2 rounded to nearest integer.

The programs for A017980, the canonical program `A017980.P8070788069916850451` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017980 has offset 0).

The definition of A017980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017980.P8070788069916850451

`A017979(n+3)-A017979(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A017980

/-- `A017979(n+3)-A017979(n)` -/
def P8070788069916850451.Spec : Prop :=
  ∀ n, P8070788069916850451.a n = A017980 n

theorem P8070788069916850451.correct : P8070788069916850451.Spec := by
  intro n
  simp only [A017980]

end A017980

/-! ## A017980.P6298371213991445816

`A017981(n+3)-A017981(n)`
-/

namespace A017980.P6298371213991445816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 (n + 3) - A017981 n

end

end A017980.P6298371213991445816

namespace A017980

/-- `A017981(n+3)-A017981(n)` -/
def P6298371213991445816.Spec : Prop :=
  ∀ n, P6298371213991445816.a n = A017980 n

end A017980

/-! ## A017980.P17414973496449537531

`round(sqrt(A017987(n)))`
-/

namespace A017980.P17414973496449537531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A017987 n : ℝ))

end

end A017980.P17414973496449537531

namespace A017980

/-- `round(sqrt(A017987(n)))` -/
def P17414973496449537531.Spec : Prop :=
  ∀ n, P17414973496449537531.a n = A017980 n

end A017980

/-! ## A017980.P15919345365037373418

`round(sqrt(A017981(2*n)))`
-/

namespace A017980.P15919345365037373418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A017981 (2 * n) : ℝ))

end

end A017980.P15919345365037373418

namespace A017980

/-- `round(sqrt(A017981(2*n)))` -/
def P15919345365037373418.Spec : Prop :=
  ∀ n, P15919345365037373418.a n = A017980 n

end A017980

/-! ## A017980.P16910210412143205029

`floor(A017985(n)/floor(sqrt(2^(2*n/3))))`
-/

namespace A017980.P16910210412143205029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017985 n : ℚ) / (⌊Real.sqrt ((2 : ℝ) ^ ((2 * n : ℚ) / 3 : ℝ))⌋ : ℚ)⌋

end

end A017980.P16910210412143205029

namespace A017980

/-- `floor(A017985(n)/floor(sqrt(2^(2*n/3))))` -/
def P16910210412143205029.Spec : Prop :=
  ∀ n, P16910210412143205029.a n = A017980 n

end A017980

/-! ## A017980.P2698945724688991205

`floor(A017979(2*n)/floor(sqrt(2^(2*n/3))))`
-/

namespace A017980.P2698945724688991205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017979 (2 * n) : ℚ) / (⌊Real.sqrt ((2 : ℝ) ^ ((2 * n : ℚ) / 3 : ℝ))⌋ : ℚ)⌋

end

end A017980.P2698945724688991205

namespace A017980

/-- `floor(A017979(2*n)/floor(sqrt(2^(2*n/3))))` -/
def P2698945724688991205.Spec : Prop :=
  ∀ n, P2698945724688991205.a n = A017980 n

end A017980

/-! ## A017980.P13274612322564116545

`ceil(A017987(n)/A017981(n))`
-/

namespace A017980.P13274612322564116545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017987 n : ℚ) / (A017981 n : ℚ)⌉

end

end A017980.P13274612322564116545

namespace A017980

/-- `ceil(A017987(n)/A017981(n))` -/
def P13274612322564116545.Spec : Prop :=
  ∀ n, P13274612322564116545.a n = A017980 n

end A017980

/-! ## A017980.P8411551126251080216

`ceil(A017981(2*n)/A017981(n))`
-/

namespace A017980.P8411551126251080216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017981 (2 * n) : ℚ) / (A017981 n : ℚ)⌉

end

end A017980.P8411551126251080216

namespace A017980

/-- `ceil(A017981(2*n)/A017981(n))` -/
def P8411551126251080216.Spec : Prop :=
  ∀ n, P8411551126251080216.a n = A017980 n

end A017980

/-! ## A017980.P1474605260499190218

`round(root(2^n, 3))`
-/

namespace A017980.P1474605260499190218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℝ) ^ (1 / (3 : ℝ)))

end

end A017980.P1474605260499190218

namespace A017980

/-- `round(root(2^n, 3))` -/
def P1474605260499190218.Spec : Prop :=
  ∀ n, P1474605260499190218.a n = A017980 n

end A017980

/-!
# A017981: Powers of cube root of 2 rounded up.

The programs for A017981, the canonical program `A017981.P5662669907479920218` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017981 has offset 0).

The definition of A017981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017981.P5662669907479920218

`ceil(root(2, 3)^n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017981

/-- `ceil(root(2, 3)^n)` -/
def P5662669907479920218.Spec : Prop :=
  ∀ n, P5662669907479920218.a n = A017981 n

theorem P5662669907479920218.correct : P5662669907479920218.Spec := by
  intro n
  simp only [A017981]

end A017981

/-! ## A017981.P13922745432954051502

`A017979(n)+A011655(n)`
-/

namespace A017981.P13922745432954051502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 n + A011655 n

end

end A017981.P13922745432954051502

namespace A017981

/-- `A017979(n)+A011655(n)` -/
def P13922745432954051502.Spec : Prop :=
  ∀ n, P13922745432954051502.a n = A017981 n

end A017981

/-! ## A017981.P1626986034351784301

`A017979(n)+Δ[A004523(n)]`
-/

namespace A017981.P1626986034351784301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 n + (f1 (n + 1) - f1 n)

end

end A017981.P1626986034351784301

namespace A017981

/-- `A017979(n)+Δ[A004523(n)]` -/
def P1626986034351784301.Spec : Prop :=
  ∀ n, P1626986034351784301.a n = A017981 n

end A017981

/-! ## A017981.P2972671771973949947

`A017979(n)+char[A166517(n)]`
-/

namespace A017981.P2972671771973949947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017981.P2972671771973949947

namespace A017981

/-- `A017979(n)+char[A166517(n)]` -/
def P2972671771973949947.Spec : Prop :=
  ∀ n, P2972671771973949947.a n = A017981 n

end A017981

/-! ## A017981.P8729689992369612112

`A097325(2*n)+A017979(n)`
-/

namespace A017981.P8729689992369612112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n) + A017979 n

end

end A017981.P8729689992369612112

namespace A017981

/-- `A097325(2*n)+A017979(n)` -/
def P8729689992369612112.Spec : Prop :=
  ∀ n, P8729689992369612112.a n = A017981 n

end A017981

/-! ## A017981.P1584165401727551463

`A017979(n)+char[A001651(n+1)]`
-/

namespace A017981.P1584165401727551463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017981.P1584165401727551463

namespace A017981

/-- `A017979(n)+char[A001651(n+1)]` -/
def P1584165401727551463.Spec : Prop :=
  ∀ n, P1584165401727551463.a n = A017981 n

end A017981

/-! ## A017981.P3038312338498411906

`A017979(n)+A000035(A002487(n))`
-/

namespace A017981.P3038312338498411906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 n + A000035 (A002487 n).toNat

end

end A017981.P3038312338498411906

namespace A017981

/-- `A017979(n)+A000035(A002487(n))` -/
def P3038312338498411906.Spec : Prop :=
  ∀ n, P3038312338498411906.a n = A017981 n

end A017981

/-! ## A017981.P4528897817740090802

`A017979(n)+A000035(A004396(n))`
-/

namespace A017981.P4528897817740090802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 n + A000035 (A004396 n).toNat

end

end A017981.P4528897817740090802

namespace A017981

/-- `A017979(n)+A000035(A004396(n))` -/
def P4528897817740090802.Spec : Prop :=
  ∀ n, P4528897817740090802.a n = A017981 n

end A017981

/-! ## A017981.P17262033707948690296

`A017979(n)+A000035(A092942(n))`
-/

namespace A017981.P17262033707948690296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 n + A000035 (A092942 n).toNat

end

end A017981.P17262033707948690296

namespace A017981

/-- `A017979(n)+A000035(A092942(n))` -/
def P17262033707948690296.Spec : Prop :=
  ∀ n, P17262033707948690296.a n = A017981 n

end A017981

/-! ## A017981.P4858202154939251897

`A077958(A077958(n)/A017979(n))+A017979(n)`
-/

namespace A017981.P4858202154939251897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 (SequenceMachineLib.roundAway ((A077958 n : ℚ) / (A017979 n : ℚ))).toNat + A017979 n

end

end A017981.P4858202154939251897

namespace A017981

/-- `A077958(A077958(n)/A017979(n))+A017979(n)` -/
def P4858202154939251897.Spec : Prop :=
  ∀ n, P4858202154939251897.a n = A017981 n

end A017981

/-! ## A017981.P10025739609374560987

`floor(sqrt(A017987(n)-1))+1`
-/

namespace A017981.P10025739609374560987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A017987 n - 1) + 1

end

end A017981.P10025739609374560987

namespace A017981

/-- `floor(sqrt(A017987(n)-1))+1` -/
def P10025739609374560987.Spec : Prop :=
  ∀ n, P10025739609374560987.a n = A017981 n

end A017981

/-!
# A017982: Powers of cube root of 3 rounded down.

The programs for A017982, the canonical program `A017982.P15637322331268037130` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017982 has offset 0).

The definition of A017982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017982.P15637322331268037130

`floor(3^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017982

/-- `floor(3^(n/3))` -/
def P15637322331268037130.Spec : Prop :=
  ∀ n, P15637322331268037130.a n = A017982 n

theorem P15637322331268037130.correct : P15637322331268037130.Spec := by
  intro n
  simp only [A017982]

end A017982

/-! ## A017982.P17884229450684592625

`A017984(n)-n²%3`
-/

namespace A017982.P17884229450684592625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017984 n - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A017982.P17884229450684592625

namespace A017982

/-- `A017984(n)-n²%3` -/
def P17884229450684592625.Spec : Prop :=
  ∀ n, P17884229450684592625.a n = A017982 n

end A017982

/-! ## A017982.P4882710708938149498

`A017984(n)-A011655(n)`
-/

namespace A017982.P4882710708938149498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017984 n - A011655 n

end

end A017982.P4882710708938149498

namespace A017982

/-- `A017984(n)-A011655(n)` -/
def P4882710708938149498.Spec : Prop :=
  ∀ n, P4882710708938149498.a n = A017982 n

end A017982

/-! ## A017982.P5251272848793082275

`A017984(n)-Δ[A002264(2*n)]`
-/

namespace A017982.P5251272848793082275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017984 n - (f1 (n + 1) - f1 n)

end

end A017982.P5251272848793082275

namespace A017982

/-- `A017984(n)-Δ[A002264(2*n)]` -/
def P5251272848793082275.Spec : Prop :=
  ∀ n, P5251272848793082275.a n = A017982 n

end A017982

/-! ## A017982.P1423652988728805280

`A017979(n)+A017984(n)-A017981(n)`
-/

namespace A017982.P1423652988728805280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 n + (A017984 n - A017981 n)

end

end A017982.P1423652988728805280

namespace A017982

/-- `A017979(n)+A017984(n)-A017981(n)` -/
def P1423652988728805280.Spec : Prop :=
  ∀ n, P1423652988728805280.a n = A017982 n

end A017982

/-!
# A017983: Powers of cube root of 3 rounded to nearest integer.

The programs for A017983, the canonical program `A017983.P1771809161547523124` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017983 has offset 0).

The definition of A017983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017983.P1771809161547523124

`round(3^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017983

/-- `round(3^(n/3))` -/
def P1771809161547523124.Spec : Prop :=
  ∀ n, P1771809161547523124.a n = A017983 n

theorem P1771809161547523124.correct : P1771809161547523124.Spec := by
  intro n
  simp only [A017983]

end A017983

/-! ## A017983.P17999342601708780879

`ceil(A018000(n)/A017984(n))`
-/

namespace A017983.P17999342601708780879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018000 n : ℚ) / (A017984 n : ℚ)⌉

end

end A017983.P17999342601708780879

namespace A017983

/-- `ceil(A018000(n)/A017984(n))` -/
def P17999342601708780879.Spec : Prop :=
  ∀ n, P17999342601708780879.a n = A017983 n

end A017983

/-! ## A017983.P17684062221084207714

`ceil(A018001(n)/A017984(n))`
-/

namespace A017983.P17684062221084207714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018001 n : ℚ) / (A017984 n : ℚ)⌉

end

end A017983.P17684062221084207714

namespace A017983

/-- `ceil(A018001(n)/A017984(n))` -/
def P17684062221084207714.Spec : Prop :=
  ∀ n, P17684062221084207714.a n = A017983 n

end A017983

/-! ## A017983.P6274045219329143245

`round(sqrt(A018000(n)))%A013655(n)`
-/

namespace A017983.P6274045219329143245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A018000 n : ℝ))) (A013655 n)

end

end A017983.P6274045219329143245

namespace A017983

/-- `round(sqrt(A018000(n)))%A013655(n)` -/
def P6274045219329143245.Spec : Prop :=
  ∀ n, P6274045219329143245.a n = A017983 n

end A017983

/-! ## A017983.P15112101846303953830

`A000038(n+1)+round(sqrt(A018000(n)))`
-/

namespace A017983.P15112101846303953830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + SequenceMachineLib.roundAway (Real.sqrt (A018000 n : ℝ))

end

end A017983.P15112101846303953830

namespace A017983

/-- `A000038(n+1)+round(sqrt(A018000(n)))` -/
def P15112101846303953830.Spec : Prop :=
  ∀ n, P15112101846303953830.a n = A017983 n

end A017983

/-! ## A017983.P15609022553638789930

`round(sqrt(A018000(n)))*A000034(2*n)`
-/

namespace A017983.P15609022553638789930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018000 n : ℝ)) * A000034 (2 * n)

end

end A017983.P15609022553638789930

namespace A017983

/-- `round(sqrt(A018000(n)))*A000034(2*n)` -/
def P15609022553638789930.Spec : Prop :=
  ∀ n, P15609022553638789930.a n = A017983 n

end A017983

/-! ## A017983.P18293865497559947867

`round(sqrt(A018001(n)))%A022359(n+1)`
-/

namespace A017983.P18293865497559947867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A018001 n : ℝ))) (A022359 (n + 1))

end

end A017983.P18293865497559947867

namespace A017983

/-- `round(sqrt(A018001(n)))%A022359(n+1)` -/
def P18293865497559947867.Spec : Prop :=
  ∀ n, P18293865497559947867.a n = A017983 n

end A017983

/-!
# A017984: Powers of cube root of 3 rounded up.

The programs for A017984, the canonical program `A017984.P9301343140417999525` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017984 has offset 0).

The definition of A017984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017984.P2601261032222300401

`ceil(3^(n/3))`
-/

namespace A017984.P2601261032222300401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

end

end A017984.P2601261032222300401

namespace A017984

/-- `ceil(3^(n/3))` -/
def P2601261032222300401.Spec : Prop :=
  ∀ n, P2601261032222300401.a n = A017984 n

end A017984

/-! ## A017984.P9301343140417999525

`A017982(n)+n²%3`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A017984

/-- `A017982(n)+n²%3` -/
def P9301343140417999525.Spec : Prop :=
  ∀ n, P9301343140417999525.a n = A017984 n

theorem P9301343140417999525.correct : P9301343140417999525.Spec := by
  intro n
  simp only [A017984]

end A017984

/-! ## A017984.P6149893544223617377

`A017982(n)+A011655(n)`
-/

namespace A017984.P6149893544223617377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017982 n + A011655 n

end

end A017984.P6149893544223617377

namespace A017984

/-- `A017982(n)+A011655(n)` -/
def P6149893544223617377.Spec : Prop :=
  ∀ n, P6149893544223617377.a n = A017984 n

end A017984

/-! ## A017984.P5739508637041948538

`A017982(n)+Δ[A004523(n)]`
-/

namespace A017984.P5739508637041948538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017982 n + (f1 (n + 1) - f1 n)

end

end A017984.P5739508637041948538

namespace A017984

/-- `A017982(n)+Δ[A004523(n)]` -/
def P5739508637041948538.Spec : Prop :=
  ∀ n, P5739508637041948538.a n = A017984 n

end A017984

/-! ## A017984.P15322973152716282464

`A017982(n)+char[A166517(n)]`
-/

namespace A017984.P15322973152716282464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017982 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017984.P15322973152716282464

namespace A017984

/-- `A017982(n)+char[A166517(n)]` -/
def P15322973152716282464.Spec : Prop :=
  ∀ n, P15322973152716282464.a n = A017984 n

end A017984

/-! ## A017984.P3976403546919916643

`A097325(2*n)+A017982(n)`
-/

namespace A017984.P3976403546919916643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n) + A017982 n

end

end A017984.P3976403546919916643

namespace A017984

/-- `A097325(2*n)+A017982(n)` -/
def P3976403546919916643.Spec : Prop :=
  ∀ n, P3976403546919916643.a n = A017984 n

end A017984

/-! ## A017984.P477134274546342869

`A017982(n)+A000035(A002487(n))`
-/

namespace A017984.P477134274546342869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017982 n + A000035 (A002487 n).toNat

end

end A017984.P477134274546342869

namespace A017984

/-- `A017982(n)+A000035(A002487(n))` -/
def P477134274546342869.Spec : Prop :=
  ∀ n, P477134274546342869.a n = A017984 n

end A017984

/-! ## A017984.P1645809217135331687

`A017982(n)+A000035(A004396(n))`
-/

namespace A017984.P1645809217135331687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017982 n + A000035 (A004396 n).toNat

end

end A017984.P1645809217135331687

namespace A017984

/-- `A017982(n)+A000035(A004396(n))` -/
def P1645809217135331687.Spec : Prop :=
  ∀ n, P1645809217135331687.a n = A017984 n

end A017984

/-! ## A017984.P18137668950470234484

`A017982(n)+A000035(A092942(n))`
-/

namespace A017984.P18137668950470234484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017982 n + A000035 (A092942 n).toNat

end

end A017984.P18137668950470234484

namespace A017984

/-- `A017982(n)+A000035(A092942(n))` -/
def P18137668950470234484.Spec : Prop :=
  ∀ n, P18137668950470234484.a n = A017984 n

end A017984

/-! ## A017984.P3946924393833113088

`A017981(n)+A017982(n)-A017979(n)`
-/

namespace A017984.P3946924393833113088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n + (A017982 n - A017979 n)

end

end A017984.P3946924393833113088

namespace A017984

/-- `A017981(n)+A017982(n)-A017979(n)` -/
def P3946924393833113088.Spec : Prop :=
  ∀ n, P3946924393833113088.a n = A017984 n

end A017984

/-! ## A017984.P15906561439264791373

`A017982(n)+A018026(n)-A018024(n)`
-/

namespace A017984.P15906561439264791373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017982 n + (A018026 n - A018024 n)

end

end A017984.P15906561439264791373

namespace A017984

/-- `A017982(n)+A018026(n)-A018024(n)` -/
def P15906561439264791373.Spec : Prop :=
  ∀ n, P15906561439264791373.a n = A017984 n

end A017984

/-!
# A017985: Powers of cube root of 4 rounded down.

The programs for A017985, the canonical program `A017985.P1637897509349652819` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017985 has offset 0).

The definition of A017985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017985.P6814853341117156520

`A017979(2*n)`
-/

namespace A017985.P6814853341117156520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 (2 * n)

end

end A017985.P6814853341117156520

namespace A017985

/-- `A017979(2*n)` -/
def P6814853341117156520.Spec : Prop :=
  ∀ n, P6814853341117156520.a n = A017985 n

end A017985

/-! ## A017985.P3343873291177418010

`A017987(n)-n²%3`
-/

namespace A017985.P3343873291177418010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017987 n - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A017985.P3343873291177418010

namespace A017985

/-- `A017987(n)-n²%3` -/
def P3343873291177418010.Spec : Prop :=
  ∀ n, P3343873291177418010.a n = A017985 n

end A017985

/-! ## A017985.P1869652606442384276

`A017987(n)-A011655(n)`
-/

namespace A017985.P1869652606442384276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017987 n - A011655 n

end

end A017985.P1869652606442384276

namespace A017985

/-- `A017987(n)-A011655(n)` -/
def P1869652606442384276.Spec : Prop :=
  ∀ n, P1869652606442384276.a n = A017985 n

end A017985

/-! ## A017985.P12701294479391513939

`A017987(n)-Δ[A004523(n)]`
-/

namespace A017985.P12701294479391513939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017987 n - (f1 (n + 1) - f1 n)

end

end A017985.P12701294479391513939

namespace A017985

/-- `A017987(n)-Δ[A004523(n)]` -/
def P12701294479391513939.Spec : Prop :=
  ∀ n, P12701294479391513939.a n = A017985 n

end A017985

/-! ## A017985.P16380953231287391672

`A017987(n)+A079978(n)-1`
-/

namespace A017985.P16380953231287391672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017987 n + (A079978 n - 1)

end

end A017985.P16380953231287391672

namespace A017985

/-- `A017987(n)+A079978(n)-1` -/
def P16380953231287391672.Spec : Prop :=
  ∀ n, P16380953231287391672.a n = A017985 n

end A017985

/-! ## A017985.P1637897509349652819

`A017981(2*n)-A011655(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A017985

/-- `A017981(2*n)-A011655(n)` -/
def P1637897509349652819.Spec : Prop :=
  ∀ n, P1637897509349652819.a n = A017985 n

theorem P1637897509349652819.correct : P1637897509349652819.Spec := by
  intro n
  simp only [A017985]

end A017985

/-! ## A017985.P5655818700808333698

`A017981(2*n)-Δ[A004523(n)]`
-/

namespace A017985.P5655818700808333698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 (2 * n) - (f1 (n + 1) - f1 n)

end

end A017985.P5655818700808333698

namespace A017985

/-- `A017981(2*n)-Δ[A004523(n)]` -/
def P5655818700808333698.Spec : Prop :=
  ∀ n, P5655818700808333698.a n = A017985 n

end A017985

/-! ## A017985.P4271132187235475316

`A017979(n)+A017987(n)-A017981(n)`
-/

namespace A017985.P4271132187235475316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 n + (A017987 n - A017981 n)

end

end A017985.P4271132187235475316

namespace A017985

/-- `A017979(n)+A017987(n)-A017981(n)` -/
def P4271132187235475316.Spec : Prop :=
  ∀ n, P4271132187235475316.a n = A017985 n

end A017985

/-! ## A017985.P11687522921682759829

`floor(sqrt(A018021(n)))`
-/

namespace A017985.P11687522921682759829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018021 n)

end

end A017985.P11687522921682759829

namespace A017985

/-- `floor(sqrt(A018021(n)))` -/
def P11687522921682759829.Spec : Prop :=
  ∀ n, P11687522921682759829.a n = A017985 n

end A017985

/-! ## A017985.P8249969138410498102

`floor(sqrt(A018022(n)))`
-/

namespace A017985.P8249969138410498102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018022 n)

end

end A017985.P8249969138410498102

namespace A017985

/-- `floor(sqrt(A018022(n)))` -/
def P8249969138410498102.Spec : Prop :=
  ∀ n, P8249969138410498102.a n = A017985 n

end A017985

/-! ## A017985.P10172160566919928756

`floor(sqrt(A018023(n)))`
-/

namespace A017985.P10172160566919928756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018023 n)

end

end A017985.P10172160566919928756

namespace A017985

/-- `floor(sqrt(A018023(n)))` -/
def P10172160566919928756.Spec : Prop :=
  ∀ n, P10172160566919928756.a n = A017985 n

end A017985

/-! ## A017985.P10194419985344243401

`floor(sqrt(A017986(2*n)))`
-/

namespace A017985.P10194419985344243401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A017986 (2 * n))

end

end A017985.P10194419985344243401

namespace A017985

/-- `floor(sqrt(A017986(2*n)))` -/
def P10194419985344243401.Spec : Prop :=
  ∀ n, P10194419985344243401.a n = A017985 n

end A017985

/-! ## A017985.P12330372991958856391

`floor(sqrt(A017987(2*n)))`
-/

namespace A017985.P12330372991958856391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A017987 (2 * n))

end

end A017985.P12330372991958856391

namespace A017985

/-- `floor(sqrt(A017987(2*n)))` -/
def P12330372991958856391.Spec : Prop :=
  ∀ n, P12330372991958856391.a n = A017985 n

end A017985

/-! ## A017985.P4950591748318677448

`floor(A017986(2*n)/A017986(n))`
-/

namespace A017985.P4950591748318677448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017986 (2 * n) : ℚ) / (A017986 n : ℚ)⌋

end

end A017985.P4950591748318677448

namespace A017985

/-- `floor(A017986(2*n)/A017986(n))` -/
def P4950591748318677448.Spec : Prop :=
  ∀ n, P4950591748318677448.a n = A017985 n

end A017985

/-! ## A017985.P922762071518332709

`A017987(n)+A018024(n)-A018026(n)`
-/

namespace A017985.P922762071518332709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017987 n + (A018024 n - A018026 n)

end

end A017985.P922762071518332709

namespace A017985

/-- `A017987(n)+A018024(n)-A018026(n)` -/
def P922762071518332709.Spec : Prop :=
  ∀ n, P922762071518332709.a n = A017985 n

end A017985

/-! ## A017985.P18339423720731321298

`floor((4^n+1)^(1/3))`
-/

namespace A017985.P18339423720731321298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n + 1 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋

end

end A017985.P18339423720731321298

namespace A017985

/-- `floor((4^n+1)^(1/3))` -/
def P18339423720731321298.Spec : Prop :=
  ∀ n, P18339423720731321298.a n = A017985 n

end A017985

/-!
# A017986: Powers of cube root of 4 rounded to nearest integer.

The programs for A017986, the canonical program `A017986.P4285738452838893498` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017986 has offset 0).

The definition of A017986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017986.P4285738452838893498

`round(4^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017986

/-- `round(4^(n/3))` -/
def P4285738452838893498.Spec : Prop :=
  ∀ n, P4285738452838893498.a n = A017986 n

theorem P4285738452838893498.correct : P4285738452838893498.Spec := by
  intro n
  simp only [A017986]

end A017986

/-! ## A017986.P11331147522746009546

`A017980(2*n)`
-/

namespace A017986.P11331147522746009546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017980 (2 * n)

end

end A017986.P11331147522746009546

namespace A017986

/-- `A017980(2*n)` -/
def P11331147522746009546.Spec : Prop :=
  ∀ n, P11331147522746009546.a n = A017986 n

end A017986

/-! ## A017986.P9276550134457144532

`A017979(2*n+3)-A017985(n)`
-/

namespace A017986.P9276550134457144532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 (2 * n + 3) - A017985 n

end

end A017986.P9276550134457144532

namespace A017986

/-- `A017979(2*n+3)-A017985(n)` -/
def P9276550134457144532.Spec : Prop :=
  ∀ n, P9276550134457144532.a n = A017986 n

end A017986

/-! ## A017986.P9463473880184430038

`A017981(2*n+3)-A017987(n)`
-/

namespace A017986.P9463473880184430038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 (2 * n + 3) - A017987 n

end

end A017986.P9463473880184430038

namespace A017986

/-- `A017981(2*n+3)-A017987(n)` -/
def P9463473880184430038.Spec : Prop :=
  ∀ n, P9463473880184430038.a n = A017986 n

end A017986

/-! ## A017986.P6815025796103527807

`A017979(2*n+3)-A017979(2*n)`
-/

namespace A017986.P6815025796103527807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 (2 * n + 3) - A017979 (2 * n)

end

end A017986.P6815025796103527807

namespace A017986

/-- `A017979(2*n+3)-A017979(2*n)` -/
def P6815025796103527807.Spec : Prop :=
  ∀ n, P6815025796103527807.a n = A017986 n

end A017986

/-! ## A017986.P16941501553230213201

`A017981(2*n+3)-A017981(2*n)`
-/

namespace A017986.P16941501553230213201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 (2 * n + 3) - A017981 (2 * n)

end

end A017986.P16941501553230213201

namespace A017986

/-- `A017981(2*n+3)-A017981(2*n)` -/
def P16941501553230213201.Spec : Prop :=
  ∀ n, P16941501553230213201.a n = A017986 n

end A017986

/-! ## A017986.P13311215755643315857

`ceil(A018023(n)/A017987(n))`
-/

namespace A017986.P13311215755643315857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018023 n : ℚ) / (A017987 n : ℚ)⌉

end

end A017986.P13311215755643315857

namespace A017986

/-- `ceil(A018023(n)/A017987(n))` -/
def P13311215755643315857.Spec : Prop :=
  ∀ n, P13311215755643315857.a n = A017986 n

end A017986

/-! ## A017986.P1140419249057868679

`floor(A017985(2*n)/A017985(n))`
-/

namespace A017986.P1140419249057868679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017985 (2 * n) : ℚ) / (A017985 n : ℚ)⌋

end

end A017986.P1140419249057868679

namespace A017986

/-- `floor(A017985(2*n)/A017985(n))` -/
def P1140419249057868679.Spec : Prop :=
  ∀ n, P1140419249057868679.a n = A017986 n

end A017986

/-! ## A017986.P18322250752332496836

`ceil(A017987(2*n)/A017987(n))`
-/

namespace A017986.P18322250752332496836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017987 (2 * n) : ℚ) / (A017987 n : ℚ)⌉

end

end A017986.P18322250752332496836

namespace A017986

/-- `ceil(A017987(2*n)/A017987(n))` -/
def P18322250752332496836.Spec : Prop :=
  ∀ n, P18322250752332496836.a n = A017986 n

end A017986

/-!
# A017987: Powers of cube root of 4 rounded up.

The programs for A017987, the canonical program `A017987.P11170690977755083932` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017987 has offset 0).

The definition of A017987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017987.P11170690977755083932

`A017981(2*n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A017987

/-- `A017981(2*n)` -/
def P11170690977755083932.Spec : Prop :=
  ∀ n, P11170690977755083932.a n = A017987 n

theorem P11170690977755083932.correct : P11170690977755083932.Spec := by
  intro n
  simp only [A017987]

end A017987

/-! ## A017987.P12147447303901577432

`A017985(n)+A011655(n)`
-/

namespace A017987.P12147447303901577432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017985 n + A011655 n

end

end A017987.P12147447303901577432

namespace A017987

/-- `A017985(n)+A011655(n)` -/
def P12147447303901577432.Spec : Prop :=
  ∀ n, P12147447303901577432.a n = A017987 n

end A017987

/-! ## A017987.P7595201324563362792

`A017985(n)+1-A079978(n)`
-/

namespace A017987.P7595201324563362792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017985 n + (1 - A079978 n)

end

end A017987.P7595201324563362792

namespace A017987

/-- `A017985(n)+1-A079978(n)` -/
def P7595201324563362792.Spec : Prop :=
  ∀ n, P7595201324563362792.a n = A017987 n

end A017987

/-! ## A017987.P12184778291365498372

`A017979(2*n)+A011655(n)`
-/

namespace A017987.P12184778291365498372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 (2 * n) + A011655 n

end

end A017987.P12184778291365498372

namespace A017987

/-- `A017979(2*n)+A011655(n)` -/
def P12184778291365498372.Spec : Prop :=
  ∀ n, P12184778291365498372.a n = A017987 n

end A017987

/-! ## A017987.P3025623009436653031

`A017979(2*n)+Δ[A004523(n)]`
-/

namespace A017987.P3025623009436653031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 (2 * n) + (f1 (n + 1) - f1 n)

end

end A017987.P3025623009436653031

namespace A017987

/-- `A017979(2*n)+Δ[A004523(n)]` -/
def P3025623009436653031.Spec : Prop :=
  ∀ n, P3025623009436653031.a n = A017987 n

end A017987

/-! ## A017987.P16888232122177070633

`record[A017981(n)/A006519(n+1)]`
-/

namespace A017987.P16888232122177070633
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017981 n : ℚ) / (A006519 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017987.P16888232122177070633

namespace A017987

/-- `record[A017981(n)/A006519(n+1)]` -/
def P16888232122177070633.Spec : Prop :=
  ∀ n, P16888232122177070633.a n = (A017987 n : ℚ)

end A017987

/-! ## A017987.P11597661664477120281

`A017979(2*n)+char[A166517(n)]`
-/

namespace A017987.P11597661664477120281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 (2 * n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017987.P11597661664477120281

namespace A017987

/-- `A017979(2*n)+char[A166517(n)]` -/
def P11597661664477120281.Spec : Prop :=
  ∀ n, P11597661664477120281.a n = A017987 n

end A017987

/-! ## A017987.P5387381319197725979

`A097325(2*n)+A017979(2*n)`
-/

namespace A017987.P5387381319197725979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n) + A017979 (2 * n)

end

end A017987.P5387381319197725979

namespace A017987

/-- `A097325(2*n)+A017979(2*n)` -/
def P5387381319197725979.Spec : Prop :=
  ∀ n, P5387381319197725979.a n = A017987 n

end A017987

/-! ## A017987.P7296631308300484713

`A017979(2*n)+A000035(A002487(n))`
-/

namespace A017987.P7296631308300484713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 (2 * n) + A000035 (A002487 n).toNat

end

end A017987.P7296631308300484713

namespace A017987

/-- `A017979(2*n)+A000035(A002487(n))` -/
def P7296631308300484713.Spec : Prop :=
  ∀ n, P7296631308300484713.a n = A017987 n

end A017987

/-! ## A017987.P11150420271220151090

`A017979(2*n)+A000035(A004396(n))`
-/

namespace A017987.P11150420271220151090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 (2 * n) + A000035 (A004396 n).toNat

end

end A017987.P11150420271220151090

namespace A017987

/-- `A017979(2*n)+A000035(A004396(n))` -/
def P11150420271220151090.Spec : Prop :=
  ∀ n, P11150420271220151090.a n = A017987 n

end A017987

/-! ## A017987.P17561107054397989265

`A017979(2*n)+A000035(A092942(n))`
-/

namespace A017987.P17561107054397989265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 (2 * n) + A000035 (A092942 n).toNat

end

end A017987.P17561107054397989265

namespace A017987

/-- `A017979(2*n)+A000035(A092942(n))` -/
def P17561107054397989265.Spec : Prop :=
  ∀ n, P17561107054397989265.a n = A017987 n

end A017987

/-! ## A017987.P8182407200427250205

`A017981(n)+A017985(n)-A017979(n)`
-/

namespace A017987.P8182407200427250205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n + (A017985 n - A017979 n)

end

end A017987.P8182407200427250205

namespace A017987

/-- `A017981(n)+A017985(n)-A017979(n)` -/
def P8182407200427250205.Spec : Prop :=
  ∀ n, P8182407200427250205.a n = A017987 n

end A017987

/-! ## A017987.P13979068424251976952

`A004523(2*n+1)+A017979(2*n)-A004523(2*n)`
-/

namespace A017987.P13979068424251976952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (2 * n + 1) + (A017979 (2 * n) - A004523 (2 * n))

end

end A017987.P13979068424251976952

namespace A017987

/-- `A004523(2*n+1)+A017979(2*n)-A004523(2*n)` -/
def P13979068424251976952.Spec : Prop :=
  ∀ n, P13979068424251976952.a n = A017987 n

end A017987

/-! ## A017987.P15562808320359924852

`ceil(sqrt(floor(2^(4*n/3))))`
-/

namespace A017987.P15562808320359924852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (⌊(2 : ℝ) ^ (4 * ((n : ℚ) / 3) : ℝ)⌋ : ℝ)⌉

end

end A017987.P15562808320359924852

namespace A017987

/-- `ceil(sqrt(floor(2^(4*n/3))))` -/
def P15562808320359924852.Spec : Prop :=
  ∀ n, P15562808320359924852.a n = A017987 n

end A017987

/-! ## A017987.P14443648694837810297

`A017985(n)+A018026(n)-A018024(n)`
-/

namespace A017987.P14443648694837810297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017985 n + (A018026 n - A018024 n)

end

end A017987.P14443648694837810297

namespace A017987

/-- `A017985(n)+A018026(n)-A018024(n)` -/
def P14443648694837810297.Spec : Prop :=
  ∀ n, P14443648694837810297.a n = A017987 n

end A017987

/-!
# A017988: Powers of cube root of 5 rounded down.

The programs for A017988, the canonical program `A017988.P3597403592851603370` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017988 has offset 0).

The definition of A017988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017988.P1431343537982081045

`A017990(n)-n²%3`
-/

namespace A017988.P1431343537982081045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017990 n - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A017988.P1431343537982081045

namespace A017988

/-- `A017990(n)-n²%3` -/
def P1431343537982081045.Spec : Prop :=
  ∀ n, P1431343537982081045.a n = A017988 n

end A017988

/-! ## A017988.P16396822597064330165

`A017990(n)-A011655(n)`
-/

namespace A017988.P16396822597064330165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017990 n - A011655 n

end

end A017988.P16396822597064330165

namespace A017988

/-- `A017990(n)-A011655(n)` -/
def P16396822597064330165.Spec : Prop :=
  ∀ n, P16396822597064330165.a n = A017988 n

end A017988

/-! ## A017988.P4212243057809995846

`A017990(n)-Δ[A004523(n)]`
-/

namespace A017988.P4212243057809995846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017990 n - (f1 (n + 1) - f1 n)

end

end A017988.P4212243057809995846

namespace A017988

/-- `A017990(n)-Δ[A004523(n)]` -/
def P4212243057809995846.Spec : Prop :=
  ∀ n, P4212243057809995846.a n = A017988 n

end A017988

/-! ## A017988.P8876826356661969081

`A017990(n)-char[A166517(n)]`
-/

namespace A017988.P8876826356661969081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017990 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017988.P8876826356661969081

namespace A017988

/-- `A017990(n)-char[A166517(n)]` -/
def P8876826356661969081.Spec : Prop :=
  ∀ n, P8876826356661969081.a n = A017988 n

end A017988

/-! ## A017988.P1256056196995304900

`A017990(n)-A097325(2*n)`
-/

namespace A017988.P1256056196995304900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017990 n - A097325 (2 * n)

end

end A017988.P1256056196995304900

namespace A017988

/-- `A017990(n)-A097325(2*n)` -/
def P1256056196995304900.Spec : Prop :=
  ∀ n, P1256056196995304900.a n = A017988 n

end A017988

/-! ## A017988.P7843069564676559519

`A017990(n)-Δ[A004396(n+1)]`
-/

namespace A017988.P7843069564676559519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017990 n - (f1 (n + 1) - f1 n)

end

end A017988.P7843069564676559519

namespace A017988

/-- `A017990(n)-Δ[A004396(n+1)]` -/
def P7843069564676559519.Spec : Prop :=
  ∀ n, P7843069564676559519.a n = A017988 n

end A017988

/-! ## A017988.P11584349192983289479

`A017990(n)-A000035(A002487(n))`
-/

namespace A017988.P11584349192983289479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017990 n - A000035 (A002487 n).toNat

end

end A017988.P11584349192983289479

namespace A017988

/-- `A017990(n)-A000035(A002487(n))` -/
def P11584349192983289479.Spec : Prop :=
  ∀ n, P11584349192983289479.a n = A017988 n

end A017988

/-! ## A017988.P7882465117961063295

`A017990(n)-A000035(A004396(n))`
-/

namespace A017988.P7882465117961063295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017990 n - A000035 (A004396 n).toNat

end

end A017988.P7882465117961063295

namespace A017988

/-- `A017990(n)-A000035(A004396(n))` -/
def P7882465117961063295.Spec : Prop :=
  ∀ n, P7882465117961063295.a n = A017988 n

end A017988

/-! ## A017988.P5129641928855245354

`A017990(n)-A000035(A092942(n))`
-/

namespace A017988.P5129641928855245354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017990 n - A000035 (A092942 n).toNat

end

end A017988.P5129641928855245354

namespace A017988

/-- `A017990(n)-A000035(A092942(n))` -/
def P5129641928855245354.Spec : Prop :=
  ∀ n, P5129641928855245354.a n = A017988 n

end A017988

/-! ## A017988.P7657899729746215716

`A017979(n)+A017990(n)-A017981(n)`
-/

namespace A017988.P7657899729746215716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 n + (A017990 n - A017981 n)

end

end A017988.P7657899729746215716

namespace A017988

/-- `A017979(n)+A017990(n)-A017981(n)` -/
def P7657899729746215716.Spec : Prop :=
  ∀ n, P7657899729746215716.a n = A017988 n

end A017988

/-! ## A017988.P3597403592851603370

`floor(sqrt(5^(2*n/3)))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017988

/-- `floor(sqrt(5^(2*n/3)))` -/
def P3597403592851603370.Spec : Prop :=
  ∀ n, P3597403592851603370.a n = A017988 n

theorem P3597403592851603370.correct : P3597403592851603370.Spec := by
  intro n
  simp only [A017988]

end A017988

/-!
# A017989: Powers of cube root of 5 rounded to nearest integer.

The programs for A017989, the canonical program `A017989.P13177169515701887306` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017989 has offset 0).

The definition of A017989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017989.P13177169515701887306

`round(sqrt(5^(2*n/3)))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017989

/-- `round(sqrt(5^(2*n/3)))` -/
def P13177169515701887306.Spec : Prop :=
  ∀ n, P13177169515701887306.a n = A017989 n

theorem P13177169515701887306.correct : P13177169515701887306.Spec := by
  intro n
  simp only [A017989]

end A017989

/-! ## A017989.P301980775416269851

`ceil(A017990(2*n)/A017990(n))`
-/

namespace A017989.P301980775416269851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017990 (2 * n) : ℚ) / (A017990 n : ℚ)⌉

end

end A017989.P301980775416269851

namespace A017989

/-- `ceil(A017990(2*n)/A017990(n))` -/
def P301980775416269851.Spec : Prop :=
  ∀ n, P301980775416269851.a n = A017989 n

end A017989

/-! ## A017989.P10735141363164618971

`round(5^(n/3))%A163063(n)`
-/

namespace A017989.P10735141363164618971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((5 : ℝ) ^ ((n : ℚ) / 3 : ℝ))) (A163063 n)

end

end A017989.P10735141363164618971

namespace A017989

/-- `round(5^(n/3))%A163063(n)` -/
def P10735141363164618971.Spec : Prop :=
  ∀ n, P10735141363164618971.a n = A017989 n

end A017989

/-! ## A017989.P4222864775171513072

`record[round(root(A097756(n+1), 3))]`
-/

namespace A017989.P4222864775171513072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A097756 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017989.P4222864775171513072

namespace A017989

/-- `record[round(root(A097756(n+1), 3))]` -/
def P4222864775171513072.Spec : Prop :=
  ∀ n, P4222864775171513072.a n = A017989 n

end A017989

/-! ## A017989.P5533764678120160095

`record[round(root(A191702(n+1), 3))]`
-/

namespace A017989.P5533764678120160095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A191702 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017989.P5533764678120160095

namespace A017989

/-- `record[round(root(A191702(n+1), 3))]` -/
def P5533764678120160095.Spec : Prop :=
  ∀ n, P5533764678120160095.a n = A017989 n

end A017989

/-!
# A017990: Powers of cube root of 5 rounded up.

The programs for A017990, the canonical program `A017990.P6936312708764945254` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017990 has offset 0).

The definition of A017990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017990.P6936312708764945254

`A017988(n)+n²%3`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A017990

/-- `A017988(n)+n²%3` -/
def P6936312708764945254.Spec : Prop :=
  ∀ n, P6936312708764945254.a n = A017990 n

theorem P6936312708764945254.correct : P6936312708764945254.Spec := by
  intro n
  simp only [A017990]

end A017990

/-! ## A017990.P7871463276677958594

`A017988(n)+A011655(n)`
-/

namespace A017990.P7871463276677958594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017988 n + A011655 n

end

end A017990.P7871463276677958594

namespace A017990

/-- `A017988(n)+A011655(n)` -/
def P7871463276677958594.Spec : Prop :=
  ∀ n, P7871463276677958594.a n = A017990 n

end A017990

/-! ## A017990.P6898544110803282472

`A017988(n)+Δ[A004523(n)]`
-/

namespace A017990.P6898544110803282472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017988 n + (f1 (n + 1) - f1 n)

end

end A017990.P6898544110803282472

namespace A017990

/-- `A017988(n)+Δ[A004523(n)]` -/
def P6898544110803282472.Spec : Prop :=
  ∀ n, P6898544110803282472.a n = A017990 n

end A017990

/-! ## A017990.P15942748366349354585

`A017988(n)+char[A166517(n)]`
-/

namespace A017990.P15942748366349354585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017988 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017990.P15942748366349354585

namespace A017990

/-- `A017988(n)+char[A166517(n)]` -/
def P15942748366349354585.Spec : Prop :=
  ∀ n, P15942748366349354585.a n = A017990 n

end A017990

/-! ## A017990.P5545444414558748493

`A097325(2*n)+A017988(n)`
-/

namespace A017990.P5545444414558748493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n) + A017988 n

end

end A017990.P5545444414558748493

namespace A017990

/-- `A097325(2*n)+A017988(n)` -/
def P5545444414558748493.Spec : Prop :=
  ∀ n, P5545444414558748493.a n = A017990 n

end A017990

/-! ## A017990.P6361428161712372925

`A017988(n)+A000035(A002487(n))`
-/

namespace A017990.P6361428161712372925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017988 n + A000035 (A002487 n).toNat

end

end A017990.P6361428161712372925

namespace A017990

/-- `A017988(n)+A000035(A002487(n))` -/
def P6361428161712372925.Spec : Prop :=
  ∀ n, P6361428161712372925.a n = A017990 n

end A017990

/-! ## A017990.P17729331695172587222

`A017988(n)+A000035(A004396(n))`
-/

namespace A017990.P17729331695172587222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017988 n + A000035 (A004396 n).toNat

end

end A017990.P17729331695172587222

namespace A017990

/-- `A017988(n)+A000035(A004396(n))` -/
def P17729331695172587222.Spec : Prop :=
  ∀ n, P17729331695172587222.a n = A017990 n

end A017990

/-! ## A017990.P12858361668435923233

`A017988(n)+A000035(A092942(n))`
-/

namespace A017990.P12858361668435923233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017988 n + A000035 (A092942 n).toNat

end

end A017990.P12858361668435923233

namespace A017990

/-- `A017988(n)+A000035(A092942(n))` -/
def P12858361668435923233.Spec : Prop :=
  ∀ n, P12858361668435923233.a n = A017990 n

end A017990

/-! ## A017990.P4376669752777187203

`A017981(n)+A017988(n)-A017979(n)`
-/

namespace A017990.P4376669752777187203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n + (A017988 n - A017979 n)

end

end A017990.P4376669752777187203

namespace A017990

/-- `A017981(n)+A017988(n)-A017979(n)` -/
def P4376669752777187203.Spec : Prop :=
  ∀ n, P4376669752777187203.a n = A017990 n

end A017990

/-! ## A017990.P17574246958999242589

`A017988(n)+A010872(n*A010872(n))`
-/

namespace A017990.P17574246958999242589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017988 n + A010872 ((n : ℤ) * A010872 n).toNat

end

end A017990.P17574246958999242589

namespace A017990

/-- `A017988(n)+A010872(n*A010872(n))` -/
def P17574246958999242589.Spec : Prop :=
  ∀ n, P17574246958999242589.a n = A017990 n

end A017990

/-! ## A017990.P968110727808468025

`ceil(sqrt(5^(2*n/3)))`
-/

namespace A017990.P968110727808468025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((5 : ℝ) ^ ((2 * n : ℚ) / 3 : ℝ))⌉

end

end A017990.P968110727808468025

namespace A017990

/-- `ceil(sqrt(5^(2*n/3)))` -/
def P968110727808468025.Spec : Prop :=
  ∀ n, P968110727808468025.a n = A017990 n

end A017990

/-! ## A017990.P10054826643943914269

`A017988(n)+A010872(n²)`
-/

namespace A017990.P10054826643943914269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017988 n + A010872 (n ^ 2)

end

end A017990.P10054826643943914269

namespace A017990

/-- `A017988(n)+A010872(n²)` -/
def P10054826643943914269.Spec : Prop :=
  ∀ n, P10054826643943914269.a n = A017990 n

end A017990

/-!
# A017991: Powers of cube root of 6 rounded down.

The programs for A017991, the canonical program `A017991.P6982630282778706373` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017991 has offset 0).

The definition of A017991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017991.P4537738179611064387

`A017993(n)-n²%3`
-/

namespace A017991.P4537738179611064387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017993 n - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A017991.P4537738179611064387

namespace A017991

/-- `A017993(n)-n²%3` -/
def P4537738179611064387.Spec : Prop :=
  ∀ n, P4537738179611064387.a n = A017991 n

end A017991

/-! ## A017991.P59093462442339958

`A017993(n)-A011655(n)`
-/

namespace A017991.P59093462442339958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017993 n - A011655 n

end

end A017991.P59093462442339958

namespace A017991

/-- `A017993(n)-A011655(n)` -/
def P59093462442339958.Spec : Prop :=
  ∀ n, P59093462442339958.a n = A017991 n

end A017991

/-! ## A017991.P2589468292310500339

`A017993(n)-Δ[A004523(n)]`
-/

namespace A017991.P2589468292310500339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017993 n - (f1 (n + 1) - f1 n)

end

end A017991.P2589468292310500339

namespace A017991

/-- `A017993(n)-Δ[A004523(n)]` -/
def P2589468292310500339.Spec : Prop :=
  ∀ n, P2589468292310500339.a n = A017991 n

end A017991

/-! ## A017991.P3270344214565896598

`A017993(n)-char[A166517(n)]`
-/

namespace A017991.P3270344214565896598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017993 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017991.P3270344214565896598

namespace A017991

/-- `A017993(n)-char[A166517(n)]` -/
def P3270344214565896598.Spec : Prop :=
  ∀ n, P3270344214565896598.a n = A017991 n

end A017991

/-! ## A017991.P11697728178945360833

`A017993(n)-A097325(2*n)`
-/

namespace A017991.P11697728178945360833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017993 n - A097325 (2 * n)

end

end A017991.P11697728178945360833

namespace A017991

/-- `A017993(n)-A097325(2*n)` -/
def P11697728178945360833.Spec : Prop :=
  ∀ n, P11697728178945360833.a n = A017991 n

end A017991

/-! ## A017991.P13241175988188730470

`A017993(n)-char[A001651(n+1)]`
-/

namespace A017991.P13241175988188730470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017993 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017991.P13241175988188730470

namespace A017991

/-- `A017993(n)-char[A001651(n+1)]` -/
def P13241175988188730470.Spec : Prop :=
  ∀ n, P13241175988188730470.a n = A017991 n

end A017991

/-! ## A017991.P7771681670031599046

`A017993(n)-and(1, A042965(n+1))`
-/

namespace A017991.P7771681670031599046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017993 n - Int.land 1 (A042965 (n + 1))

end

end A017991.P7771681670031599046

namespace A017991

/-- `A017993(n)-and(1, A042965(n+1))` -/
def P7771681670031599046.Spec : Prop :=
  ∀ n, P7771681670031599046.a n = A017991 n

end A017991

/-! ## A017991.P10757015095390438822

`A017993(n)-A000035(A002487(n))`
-/

namespace A017991.P10757015095390438822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017993 n - A000035 (A002487 n).toNat

end

end A017991.P10757015095390438822

namespace A017991

/-- `A017993(n)-A000035(A002487(n))` -/
def P10757015095390438822.Spec : Prop :=
  ∀ n, P10757015095390438822.a n = A017991 n

end A017991

/-! ## A017991.P3227213971075497202

`A017993(n)-A000035(A004396(n))`
-/

namespace A017991.P3227213971075497202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017993 n - A000035 (A004396 n).toNat

end

end A017991.P3227213971075497202

namespace A017991

/-- `A017993(n)-A000035(A004396(n))` -/
def P3227213971075497202.Spec : Prop :=
  ∀ n, P3227213971075497202.a n = A017991 n

end A017991

/-! ## A017991.P13793635439250168107

`A017993(n)-A000035(A092942(n))`
-/

namespace A017991.P13793635439250168107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017993 n - A000035 (A092942 n).toNat

end

end A017991.P13793635439250168107

namespace A017991

/-- `A017993(n)-A000035(A092942(n))` -/
def P13793635439250168107.Spec : Prop :=
  ∀ n, P13793635439250168107.a n = A017991 n

end A017991

/-! ## A017991.P13450811612854230386

`A017979(n)+A017993(n)-A017981(n)`
-/

namespace A017991.P13450811612854230386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 n + (A017993 n - A017981 n)

end

end A017991.P13450811612854230386

namespace A017991

/-- `A017979(n)+A017993(n)-A017981(n)` -/
def P13450811612854230386.Spec : Prop :=
  ∀ n, P13450811612854230386.a n = A017991 n

end A017991

/-! ## A017991.P6982630282778706373

`floor(sqrt(6^(2*n/3)))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017991

/-- `floor(sqrt(6^(2*n/3)))` -/
def P6982630282778706373.Spec : Prop :=
  ∀ n, P6982630282778706373.a n = A017991 n

theorem P6982630282778706373.correct : P6982630282778706373.Spec := by
  intro n
  simp only [A017991]

end A017991

/-!
# A017992: Powers of cube root of 6 rounded to nearest integer.

The programs for A017992, the canonical program `A017992.P7080197699977789945` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017992 has offset 0).

The definition of A017992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 386 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017992.P7080197699977789945

`round(6^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017992

/-- `round(6^(n/3))` -/
def P7080197699977789945.Spec : Prop :=
  ∀ n, P7080197699977789945.a n = A017992 n

theorem P7080197699977789945.correct : P7080197699977789945.Spec := by
  intro n
  simp only [A017992]

end A017992

/-! ## A017992.P1598462328906687500

`ceil(A017993(2*n)/A017993(n))`
-/

namespace A017992.P1598462328906687500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017993 (2 * n) : ℚ) / (A017993 n : ℚ)⌉

end

end A017992.P1598462328906687500

namespace A017992

/-- `ceil(A017993(2*n)/A017993(n))` -/
def P1598462328906687500.Spec : Prop :=
  ∀ n, P1598462328906687500.a n = A017992 n

end A017992

/-! ## A017992.P3107523455748665479

`round(root(A000400(n), 3))%A042188(n)`
-/

namespace A017992.P3107523455748665479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000400 n : ℝ) ^ (1 / (3 : ℝ)))) (A042188 n)

end

end A017992.P3107523455748665479

namespace A017992

/-- `round(root(A000400(n), 3))%A042188(n)` -/
def P3107523455748665479.Spec : Prop :=
  ∀ n, P3107523455748665479.a n = A017992 n

end A017992

/-! ## A017992.P17893856098026600409

`round(root(A000400(n), 3))*A166486(2*n+3)`
-/

namespace A017992.P17893856098026600409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000400 n : ℝ) ^ (1 / (3 : ℝ))) * A166486 (2 * n + 3)

end

end A017992.P17893856098026600409

namespace A017992

/-- `round(root(A000400(n), 3))*A166486(2*n+3)` -/
def P17893856098026600409.Spec : Prop :=
  ∀ n, P17893856098026600409.a n = A017992 n

end A017992

/-!
# A017993: Powers of cube root of 6 rounded up.

The programs for A017993, the canonical program `A017993.P3313661977526285217` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017993 has offset 0).

The definition of A017993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 386 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017993.P3313661977526285217

`A017991(n)+A011655(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A017993

/-- `A017991(n)+A011655(n)` -/
def P3313661977526285217.Spec : Prop :=
  ∀ n, P3313661977526285217.a n = A017993 n

theorem P3313661977526285217.correct : P3313661977526285217.Spec := by
  intro n
  simp only [A017993]

end A017993

/-! ## A017993.P12315656083178635041

`A017991(n)+Δ[A004523(n)]`
-/

namespace A017993.P12315656083178635041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017991 n + (f1 (n + 1) - f1 n)

end

end A017993.P12315656083178635041

namespace A017993

/-- `A017991(n)+Δ[A004523(n)]` -/
def P12315656083178635041.Spec : Prop :=
  ∀ n, P12315656083178635041.a n = A017993 n

end A017993

/-! ## A017993.P7057048112772369236

`A017991(n)+char[A166517(n)]`
-/

namespace A017993.P7057048112772369236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017991 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017993.P7057048112772369236

namespace A017993

/-- `A017991(n)+char[A166517(n)]` -/
def P7057048112772369236.Spec : Prop :=
  ∀ n, P7057048112772369236.a n = A017993 n

end A017993

/-! ## A017993.P18381111652860403887

`A097325(2*n)+A017991(n)`
-/

namespace A017993.P18381111652860403887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n) + A017991 n

end

end A017993.P18381111652860403887

namespace A017993

/-- `A097325(2*n)+A017991(n)` -/
def P18381111652860403887.Spec : Prop :=
  ∀ n, P18381111652860403887.a n = A017993 n

end A017993

/-! ## A017993.P1722122125144273977

`A017991(n)+and(1, A000045(n))`
-/

namespace A017993.P1722122125144273977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017991 n + Int.land 1 (A000045 n)

end

end A017993.P1722122125144273977

namespace A017993

/-- `A017991(n)+and(1, A000045(n))` -/
def P1722122125144273977.Spec : Prop :=
  ∀ n, P1722122125144273977.a n = A017993 n

end A017993

/-! ## A017993.P8886271289486364909

`A017991(n)+A000035(A002487(n))`
-/

namespace A017993.P8886271289486364909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017991 n + A000035 (A002487 n).toNat

end

end A017993.P8886271289486364909

namespace A017993

/-- `A017991(n)+A000035(A002487(n))` -/
def P8886271289486364909.Spec : Prop :=
  ∀ n, P8886271289486364909.a n = A017993 n

end A017993

/-! ## A017993.P16579896139750844484

`A017991(n)+A000035(A004396(n))`
-/

namespace A017993.P16579896139750844484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017991 n + A000035 (A004396 n).toNat

end

end A017993.P16579896139750844484

namespace A017993

/-- `A017991(n)+A000035(A004396(n))` -/
def P16579896139750844484.Spec : Prop :=
  ∀ n, P16579896139750844484.a n = A017993 n

end A017993

/-! ## A017993.P11572806167261738419

`A017991(n)+A000035(A092942(n))`
-/

namespace A017993.P11572806167261738419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017991 n + A000035 (A092942 n).toNat

end

end A017993.P11572806167261738419

namespace A017993

/-- `A017991(n)+A000035(A092942(n))` -/
def P11572806167261738419.Spec : Prop :=
  ∀ n, P11572806167261738419.a n = A017993 n

end A017993

/-! ## A017993.P13298336542403231514

`A017981(n)+A017991(n)-A017979(n)`
-/

namespace A017993.P13298336542403231514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n + (A017991 n - A017979 n)

end

end A017993.P13298336542403231514

namespace A017993

/-- `A017981(n)+A017991(n)-A017979(n)` -/
def P13298336542403231514.Spec : Prop :=
  ∀ n, P13298336542403231514.a n = A017993 n

end A017993

/-! ## A017993.P13320061365227829364

`A017991(n)+A018026(n)-A018024(n)`
-/

namespace A017993.P13320061365227829364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017991 n + (A018026 n - A018024 n)

end

end A017993.P13320061365227829364

namespace A017993

/-- `A017991(n)+A018026(n)-A018024(n)` -/
def P13320061365227829364.Spec : Prop :=
  ∀ n, P13320061365227829364.a n = A017993 n

end A017993

/-! ## A017993.P13943508715588654605

`A017991(n)+and(1, A001906(n))`
-/

namespace A017993.P13943508715588654605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017991 n + Int.land 1 (A001906 n)

end

end A017993.P13943508715588654605

namespace A017993

/-- `A017991(n)+and(1, A001906(n))` -/
def P13943508715588654605.Spec : Prop :=
  ∀ n, P13943508715588654605.a n = A017993 n

end A017993

/-! ## A017993.P10310228860531558493

`ceil(sqrt(6^(2*n/3)))`
-/

namespace A017993.P10310228860531558493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((6 : ℝ) ^ ((2 * n : ℚ) / 3 : ℝ))⌉

end

end A017993.P10310228860531558493

namespace A017993

/-- `ceil(sqrt(6^(2*n/3)))` -/
def P10310228860531558493.Spec : Prop :=
  ∀ n, P10310228860531558493.a n = A017993 n

end A017993

/-!
# A017994: Powers of cube root of 7 rounded down.

The programs for A017994, the canonical program `A017994.P5264065172002727403` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017994 has offset 0).

The definition of A017994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017994.P5264065172002727403

`floor(7^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017994

/-- `floor(7^(n/3))` -/
def P5264065172002727403.Spec : Prop :=
  ∀ n, P5264065172002727403.a n = A017994 n

theorem P5264065172002727403.correct : P5264065172002727403.Spec := by
  intro n
  simp only [A017994]

end A017994

/-! ## A017994.P16963807772373971967

`A017996(n)-n²%3`
-/

namespace A017994.P16963807772373971967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017996 n - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A017994.P16963807772373971967

namespace A017994

/-- `A017996(n)-n²%3` -/
def P16963807772373971967.Spec : Prop :=
  ∀ n, P16963807772373971967.a n = A017994 n

end A017994

/-! ## A017994.P4862305282550394906

`A017996(n)-A011655(n)`
-/

namespace A017994.P4862305282550394906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017996 n - A011655 n

end

end A017994.P4862305282550394906

namespace A017994

/-- `A017996(n)-A011655(n)` -/
def P4862305282550394906.Spec : Prop :=
  ∀ n, P4862305282550394906.a n = A017994 n

end A017994

/-! ## A017994.P11261346427889272840

`A017996(n)-Δ[A004523(n)]`
-/

namespace A017994.P11261346427889272840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017996 n - (f1 (n + 1) - f1 n)

end

end A017994.P11261346427889272840

namespace A017994

/-- `A017996(n)-Δ[A004523(n)]` -/
def P11261346427889272840.Spec : Prop :=
  ∀ n, P11261346427889272840.a n = A017994 n

end A017994

/-! ## A017994.P5999790771518601655

`A017996(n)-char[A166517(n)]`
-/

namespace A017994.P5999790771518601655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017996 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017994.P5999790771518601655

namespace A017994

/-- `A017996(n)-char[A166517(n)]` -/
def P5999790771518601655.Spec : Prop :=
  ∀ n, P5999790771518601655.a n = A017994 n

end A017994

/-! ## A017994.P1120547487386923660

`A017996(n)-A097325(2*n)`
-/

namespace A017994.P1120547487386923660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017996 n - A097325 (2 * n)

end

end A017994.P1120547487386923660

namespace A017994

/-- `A017996(n)-A097325(2*n)` -/
def P1120547487386923660.Spec : Prop :=
  ∀ n, P1120547487386923660.a n = A017994 n

end A017994

/-! ## A017994.P8653737920108579426

`A017996(n)-and(1, A000045(n))`
-/

namespace A017994.P8653737920108579426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017996 n - Int.land 1 (A000045 n)

end

end A017994.P8653737920108579426

namespace A017994

/-- `A017996(n)-and(1, A000045(n))` -/
def P8653737920108579426.Spec : Prop :=
  ∀ n, P8653737920108579426.a n = A017994 n

end A017994

/-! ## A017994.P12201175569758503842

`A017996(n)-Δ[A004396(n+1)]`
-/

namespace A017994.P12201175569758503842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017996 n - (f1 (n + 1) - f1 n)

end

end A017994.P12201175569758503842

namespace A017994

/-- `A017996(n)-Δ[A004396(n+1)]` -/
def P12201175569758503842.Spec : Prop :=
  ∀ n, P12201175569758503842.a n = A017994 n

end A017994

/-! ## A017994.P13015118632742926304

`A017996(n)-A000035(A002487(n))`
-/

namespace A017994.P13015118632742926304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017996 n - A000035 (A002487 n).toNat

end

end A017994.P13015118632742926304

namespace A017994

/-- `A017996(n)-A000035(A002487(n))` -/
def P13015118632742926304.Spec : Prop :=
  ∀ n, P13015118632742926304.a n = A017994 n

end A017994

/-! ## A017994.P4012816739979212515

`A017996(n)-A000035(A004396(n))`
-/

namespace A017994.P4012816739979212515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017996 n - A000035 (A004396 n).toNat

end

end A017994.P4012816739979212515

namespace A017994

/-- `A017996(n)-A000035(A004396(n))` -/
def P4012816739979212515.Spec : Prop :=
  ∀ n, P4012816739979212515.a n = A017994 n

end A017994

/-! ## A017994.P15468776036962583206

`A017996(n)-A000035(A092942(n))`
-/

namespace A017994.P15468776036962583206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017996 n - A000035 (A092942 n).toNat

end

end A017994.P15468776036962583206

namespace A017994

/-- `A017996(n)-A000035(A092942(n))` -/
def P15468776036962583206.Spec : Prop :=
  ∀ n, P15468776036962583206.a n = A017994 n

end A017994

/-! ## A017994.P5321412122326176207

`A017979(n)+A017996(n)-A017981(n)`
-/

namespace A017994.P5321412122326176207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 n + (A017996 n - A017981 n)

end

end A017994.P5321412122326176207

namespace A017994

/-- `A017979(n)+A017996(n)-A017981(n)` -/
def P5321412122326176207.Spec : Prop :=
  ∀ n, P5321412122326176207.a n = A017994 n

end A017994

/-!
# A017995: Powers of cube root of 7 rounded to nearest integer.

The programs for A017995, the canonical program `A017995.P10481796493008747646` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017995 has offset 0).

The definition of A017995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017995.P10481796493008747646

`round(7^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017995

/-- `round(7^(n/3))` -/
def P10481796493008747646.Spec : Prop :=
  ∀ n, P10481796493008747646.a n = A017995 n

theorem P10481796493008747646.correct : P10481796493008747646.Spec := by
  intro n
  simp only [A017995]

end A017995

/-! ## A017995.P13533234161407684968

`ceil(A017996(2*n)/A017996(n))`
-/

namespace A017995.P13533234161407684968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017996 (2 * n) : ℚ) / (A017996 n : ℚ)⌉

end

end A017995.P13533234161407684968

namespace A017995

/-- `ceil(A017996(2*n)/A017996(n))` -/
def P13533234161407684968.Spec : Prop :=
  ∀ n, P13533234161407684968.a n = A017995 n

end A017995

/-! ## A017995.P1900591701941504608

`round(root(A000420(n), 3)-sin(11))-1`
-/

namespace A017995.P1900591701941504608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000420 n : ℝ) ^ (1 / (3 : ℝ)) - Real.sin (11 : ℝ)) - 1

end

end A017995.P1900591701941504608

namespace A017995

/-- `round(root(A000420(n), 3)-sin(11))-1` -/
def P1900591701941504608.Spec : Prop :=
  ∀ n, P1900591701941504608.a n = A017995 n

end A017995

/-! ## A017995.P684393071942229047

`round(root(7^n, 3))*A000034(2*n)`
-/

namespace A017995.P684393071942229047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((7 ^ n : ℝ) ^ (1 / (3 : ℝ))) * A000034 (2 * n)

end

end A017995.P684393071942229047

namespace A017995

/-- `round(root(7^n, 3))*A000034(2*n)` -/
def P684393071942229047.Spec : Prop :=
  ∀ n, P684393071942229047.a n = A017995 n

end A017995

/-!
# A017996: Powers of cube root of 7 rounded up.

The programs for A017996, the canonical program `A017996.P14283704290407302258` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017996 has offset 0).

The definition of A017996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A017996.P2142182680780140048

`ceil(7^(n/3))`
-/

namespace A017996.P2142182680780140048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(7 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

end

end A017996.P2142182680780140048

namespace A017996

/-- `ceil(7^(n/3))` -/
def P2142182680780140048.Spec : Prop :=
  ∀ n, P2142182680780140048.a n = A017996 n

end A017996

/-! ## A017996.P14283704290407302258

`A017994(n)+n²%3`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A017996

/-- `A017994(n)+n²%3` -/
def P14283704290407302258.Spec : Prop :=
  ∀ n, P14283704290407302258.a n = A017996 n

theorem P14283704290407302258.correct : P14283704290407302258.Spec := by
  intro n
  simp only [A017996]

end A017996

/-! ## A017996.P15323816348615110315

`A017994(n)+A011655(n)`
-/

namespace A017996.P15323816348615110315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017994 n + A011655 n

end

end A017996.P15323816348615110315

namespace A017996

/-- `A017994(n)+A011655(n)` -/
def P15323816348615110315.Spec : Prop :=
  ∀ n, P15323816348615110315.a n = A017996 n

end A017996

/-! ## A017996.P13254705444902371065

`A017994(n)+Δ[A004523(n)]`
-/

namespace A017996.P13254705444902371065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017994 n + (f1 (n + 1) - f1 n)

end

end A017996.P13254705444902371065

namespace A017996

/-- `A017994(n)+Δ[A004523(n)]` -/
def P13254705444902371065.Spec : Prop :=
  ∀ n, P13254705444902371065.a n = A017996 n

end A017996

/-! ## A017996.P7995858682341741836

`A017994(n)+char[A166517(n)]`
-/

namespace A017996.P7995858682341741836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017994 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A017996.P7995858682341741836

namespace A017996

/-- `A017994(n)+char[A166517(n)]` -/
def P7995858682341741836.Spec : Prop :=
  ∀ n, P7995858682341741836.a n = A017996 n

end A017996

/-! ## A017996.P12683831637870660983

`A097325(2*n)+A017994(n)`
-/

namespace A017996.P12683831637870660983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n) + A017994 n

end

end A017996.P12683831637870660983

namespace A017996

/-- `A097325(2*n)+A017994(n)` -/
def P12683831637870660983.Spec : Prop :=
  ∀ n, P12683831637870660983.a n = A017996 n

end A017996

/-! ## A017996.P7344721786051467185

`A017994(n)+A000035(A002487(n))`
-/

namespace A017996.P7344721786051467185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017994 n + A000035 (A002487 n).toNat

end

end A017996.P7344721786051467185

namespace A017996

/-- `A017994(n)+A000035(A002487(n))` -/
def P7344721786051467185.Spec : Prop :=
  ∀ n, P7344721786051467185.a n = A017996 n

end A017996

/-! ## A017996.P10823771830151496904

`A017994(n)+A000035(A004396(n))`
-/

namespace A017996.P10823771830151496904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017994 n + A000035 (A004396 n).toNat

end

end A017996.P10823771830151496904

namespace A017996

/-- `A017994(n)+A000035(A004396(n))` -/
def P10823771830151496904.Spec : Prop :=
  ∀ n, P10823771830151496904.a n = A017996 n

end A017996

/-! ## A017996.P55142298327649550

`A017994(n)+A000035(A092942(n))`
-/

namespace A017996.P55142298327649550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017994 n + A000035 (A092942 n).toNat

end

end A017996.P55142298327649550

namespace A017996

/-- `A017994(n)+A000035(A092942(n))` -/
def P55142298327649550.Spec : Prop :=
  ∀ n, P55142298327649550.a n = A017996 n

end A017996

/-! ## A017996.P10242658956577309894

`A017994(n)+A000035(A066481(n+3))`
-/

namespace A017996.P10242658956577309894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017994 n + A000035 (A066481 (n + 3)).toNat

end

end A017996.P10242658956577309894

namespace A017996

/-- `A017994(n)+A000035(A066481(n+3))` -/
def P10242658956577309894.Spec : Prop :=
  ∀ n, P10242658956577309894.a n = A017996 n

end A017996

/-! ## A017996.P15614497888321091206

`A017981(n)+A017994(n)-A017979(n)`
-/

namespace A017996.P15614497888321091206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n + (A017994 n - A017979 n)

end

end A017996.P15614497888321091206

namespace A017996

/-- `A017981(n)+A017994(n)-A017979(n)` -/
def P15614497888321091206.Spec : Prop :=
  ∀ n, P15614497888321091206.a n = A017996 n

end A017996

/-! ## A017996.P11010084145781942967

`A017994(n)+A018026(n)-A018024(n)`
-/

namespace A017996.P11010084145781942967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017994 n + (A018026 n - A018024 n)

end

end A017996.P11010084145781942967

namespace A017996

/-- `A017994(n)+A018026(n)-A018024(n)` -/
def P11010084145781942967.Spec : Prop :=
  ∀ n, P11010084145781942967.a n = A017996 n

end A017996

/-!
# A017997: Expansion of 1/((1-3x)*(1-7x)*(1-8x)).

The programs for A017997, the canonical program `A017997.P9953440653974165169` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017997 has offset 0).

The definition of A017997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017997.P9953440653974165169

`15*a(n-1)-56*a(n-2)+3^n` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017997

/-- `15*a(n-1)-56*a(n-2)+3^n` -/
def P9953440653974165169.Spec : Prop :=
  ∀ n, P9953440653974165169.a n = A017997 n

theorem P9953440653974165169.correct : P9953440653974165169.Spec := by
  intro n
  simp only [A017997]

end A017997

/-! ## A017997.P12328040025401259003

`(4*8^(n+2)-5*7^(n+2)+3^(n+2))/20`
-/

namespace A017997.P12328040025401259003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 8 ^ (n + 2) : ℤ) - (5 * 7 ^ (n + 2) : ℤ) + (3 ^ (n + 2) : ℤ) : ℚ) / 20

end

end A017997.P12328040025401259003

namespace A017997

/-- `(4*8^(n+2)-5*7^(n+2)+3^(n+2))/20` -/
def P12328040025401259003.Spec : Prop :=
  ∀ n, P12328040025401259003.a n = (A017997 n : ℚ)

end A017997

/-! ## A017997.P16288800123692330815

`A016140(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A017997.P16288800123692330815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016140 n + 7 * a (n - 1)

end

end A017997.P16288800123692330815

namespace A017997

/-- `A016140(n)+7*a(n-1)` -/
def P16288800123692330815.Spec : Prop :=
  ∀ n, P16288800123692330815.a n = A017997 n

end A017997

/-! ## A017997.P3967296314892042165

`Δ[A016214(n)-A016212(n)]`
-/

namespace A017997.P3967296314892042165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016214 n - A016212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017997.P3967296314892042165

namespace A017997

/-- `Δ[A016214(n)-A016212(n)]` -/
def P3967296314892042165.Spec : Prop :=
  ∀ n, P3967296314892042165.a n = A017997 n

end A017997

/-! ## A017997.P375472778502078329

`2*A017932(n)-A017931(n)`
-/

namespace A017997.P375472778502078329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017932 n - A017931 n

end

end A017997.P375472778502078329

namespace A017997

/-- `2*A017932(n)-A017931(n)` -/
def P375472778502078329.Spec : Prop :=
  ∀ n, P375472778502078329.a n = A017997 n

end A017997

/-! ## A017997.P18271974988648662364

`A016140(n+1)-A016138(n+1)`
-/

namespace A017997.P18271974988648662364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016140 (n + 1) - A016138 (n + 1)

end

end A017997.P18271974988648662364

namespace A017997

/-- `A016140(n+1)-A016138(n+1)` -/
def P18271974988648662364.Spec : Prop :=
  ∀ n, P18271974988648662364.a n = A017997 n

end A017997

/-!
# A017998: Expansion of 1/((1-3x)*(1-7x)*(1-9x)).

The programs for A017998, the canonical program `A017998.P9021511614960488624` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017998 has offset 0).

The definition of A017998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017998.P9021511614960488624

`16*a(n-1)-63*a(n-2)+3^n` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017998

/-- `16*a(n-1)-63*a(n-2)+3^n` -/
def P9021511614960488624.Spec : Prop :=
  ∀ n, P9021511614960488624.a n = A017998 n

theorem P9021511614960488624.correct : P9021511614960488624.Spec := by
  intro n
  simp only [A017998]

end A017998

/-! ## A017998.P13536447089620502430

`(2*9^(n+2)-3*7^(n+2)+3^(n+2))/24`
-/

namespace A017998.P13536447089620502430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 9 ^ (n + 2) : ℤ) - (3 * 7 ^ (n + 2) : ℤ) + (3 ^ (n + 2) : ℤ) : ℚ) / 24

end

end A017998.P13536447089620502430

namespace A017998

/-- `(2*9^(n+2)-3*7^(n+2)+3^(n+2))/24` -/
def P13536447089620502430.Spec : Prop :=
  ∀ n, P13536447089620502430.a n = (A017998 n : ℚ)

end A017998

/-! ## A017998.P1570914448218544074

`A016142(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A017998.P1570914448218544074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016142 n + 7 * a (n - 1)

end

end A017998.P1570914448218544074

namespace A017998

/-- `A016142(n)+7*a(n-1)` -/
def P1570914448218544074.Spec : Prop :=
  ∀ n, P1570914448218544074.a n = A017998 n

end A017998

/-! ## A017998.P1234410580191086419

`A016138(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A017998.P1234410580191086419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016138 n + 9 * a (n - 1)

end

end A017998.P1234410580191086419

namespace A017998

/-- `A016138(n)+9*a(n-1)` -/
def P1234410580191086419.Spec : Prop :=
  ∀ n, P1234410580191086419.a n = A017998 n

end A017998

/-! ## A017998.P6605846306484709377

`3*a(n-1)+A016178(n)*A057427(n)` with `a(0)=1`
-/

namespace A017998.P6605846306484709377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + A016178 n * A057427 n

end

end A017998.P6605846306484709377

namespace A017998

/-- `3*a(n-1)+A016178(n)*A057427(n)` -/
def P6605846306484709377.Spec : Prop :=
  ∀ n, P6605846306484709377.a n = A017998 n

end A017998

/-!
# A017999: Expansion of 1/((1-3x)*(1-7x)*(1-10x)).

The programs for A017999, the canonical program `A017999.P12480200348350311107` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017999 has offset 0).

The definition of A017999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017999.P12480200348350311107

`17*a(n-1)-70*a(n-2)+3^n` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017999

/-- `17*a(n-1)-70*a(n-2)+3^n` -/
def P12480200348350311107.Spec : Prop :=
  ∀ n, P12480200348350311107.a n = A017999 n

theorem P12480200348350311107.correct : P12480200348350311107.Spec := by
  intro n
  simp only [A017999]

end A017999

/-! ## A017999.P2703686055791390820

`(4*10^(n+2)-7^(n+3)+3^(n+3))/84`
-/

namespace A017999.P2703686055791390820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 10 ^ (n + 2) : ℤ) - (7 ^ (n + 3) : ℤ) + (3 ^ (n + 3) : ℤ) : ℚ) / 84

end

end A017999.P2703686055791390820

namespace A017999

/-- `(4*10^(n+2)-7^(n+3)+3^(n+3))/84` -/
def P2703686055791390820.Spec : Prop :=
  ∀ n, P2703686055791390820.a n = (A017999 n : ℚ)

end A017999

/-! ## A017999.P10421483027776494867

`A016181(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A017999.P10421483027776494867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016181 n + 3 * a (n - 1)

end

end A017999.P10421483027776494867

namespace A017999

/-- `A016181(n)+3*a(n-1)` -/
def P10421483027776494867.Spec : Prop :=
  ∀ n, P10421483027776494867.a n = A017999 n

end A017999

/-! ## A017999.P3913714757868966218

`A016145(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A017999.P3913714757868966218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016145 n + 7 * a (n - 1)

end

end A017999.P3913714757868966218

namespace A017999

/-- `A016145(n)+7*a(n-1)` -/
def P3913714757868966218.Spec : Prop :=
  ∀ n, P3913714757868966218.a n = A017999 n

end A017999

/-! ## A017999.P17627892053797243070

`A016138(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A017999.P17627892053797243070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016138 n + 10 * a (n - 1)

end

end A017999.P17627892053797243070

namespace A017999

/-- `A016138(n)+10*a(n-1)` -/
def P17627892053797243070.Spec : Prop :=
  ∀ n, P17627892053797243070.a n = A017999 n

end A017999

