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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C049
import Seq.B000.C050
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A186400: Numbers k such that there are 8 primes between 100*k and 100*k + 99.

The programs for A186400, the canonical program `A186400.P11758599787224733223` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186400 has offset 1).

The definition of A186400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1821 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186400.P11758599787224733223

`eq[8, A038822(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A186400

/-- `eq[8, A038822(n)]` -/
def P11758599787224733223.Spec : Prop :=
  ∀ n, (P11758599787224733223.a n : ℤ) = A186400 (n + 1)

theorem P11758599787224733223.correct : P11758599787224733223.Spec := by
  intro n
  simp only [A186400, Nat.add_sub_cancel]

end A186400

/-! ## A186400.P15722160759602590146

`eq[8, A298009(n+1)%50]`
-/

namespace A186400.P15722160759602590146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298009 (n + 1)) 50

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186400.P15722160759602590146

namespace A186400

/-- `eq[8, A298009(n+1)%50]` -/
def P15722160759602590146.Spec : Prop :=
  ∀ n, (P15722160759602590146.a n : ℤ) = A186400 (n + 1)

end A186400

/-! ## A186400.P3890136000064333436

`eq[4, A298009(n+1)-A102439(n)]`
-/

namespace A186400.P3890136000064333436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A102439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186400.P3890136000064333436

namespace A186400

/-- `eq[4, A298009(n+1)-A102439(n)]` -/
def P3890136000064333436.Spec : Prop :=
  ∀ n, (P3890136000064333436.a n : ℤ) = A186400 (n + 1)

end A186400

/-! ## A186400.P8883726128475539174

`eq[8, A028505(n+1)%A028505(A000038(n)+n)]`
-/

namespace A186400.P8883726128475539174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028505 (n + 1)) (A028505 (A000038 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186400.P8883726128475539174

namespace A186400

/-- `eq[8, A028505(n+1)%A028505(A000038(n)+n)]` -/
def P8883726128475539174.Spec : Prop :=
  ∀ n, (P8883726128475539174.a n : ℤ) = A186400 (n + 1)

end A186400

/-! ## A186400.P16380374469112875580

`eq[8, A298009(n+1)-A008607(A008586(n))]`
-/

namespace A186400.P16380374469112875580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A008607 (A008586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186400.P16380374469112875580

namespace A186400

/-- `eq[8, A298009(n+1)-A008607(A008586(n))]` -/
def P16380374469112875580.Spec : Prop :=
  ∀ n, (P16380374469112875580.a n : ℤ) = A186400 (n + 1)

end A186400

/-!
# A186401: Numbers k such that there are 9 primes between 100*k and 100*k + 99.

The programs for A186401, the canonical program `A186401.P4089262343024343082` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186401 has offset 1).

The definition of A186401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1554 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186401.P4089262343024343082

`eq[9, A038822(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A186401

/-- `eq[9, A038822(n)]` -/
def P4089262343024343082.Spec : Prop :=
  ∀ n, (P4089262343024343082.a n : ℤ) = A186401 (n + 1)

theorem P4089262343024343082.correct : P4089262343024343082.Spec := by
  intro n
  simp only [A186401, Nat.add_sub_cancel]

end A186401

/-! ## A186401.P1010040611309499392

`eq[9, A298009(n+1)%50]`
-/

namespace A186401.P1010040611309499392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298009 (n + 1)) 50

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186401.P1010040611309499392

namespace A186401

/-- `eq[9, A298009(n+1)%50]` -/
def P1010040611309499392.Spec : Prop :=
  ∀ n, (P1010040611309499392.a n : ℤ) = A186401 (n + 1)

end A186401

/-! ## A186401.P3746785010453588278

`eq[5, A298009(n+1)-A102439(n)]`
-/

namespace A186401.P3746785010453588278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A102439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186401.P3746785010453588278

namespace A186401

/-- `eq[5, A298009(n+1)-A102439(n)]` -/
def P3746785010453588278.Spec : Prop :=
  ∀ n, (P3746785010453588278.a n : ℤ) = A186401 (n + 1)

end A186401

/-! ## A186401.P6387544313492206938

`eq[9, A028505(n+1)%A028505(A000038(n)+n)]`
-/

namespace A186401.P6387544313492206938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028505 (n + 1)) (A028505 (A000038 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186401.P6387544313492206938

namespace A186401

/-- `eq[9, A028505(n+1)%A028505(A000038(n)+n)]` -/
def P6387544313492206938.Spec : Prop :=
  ∀ n, (P6387544313492206938.a n : ℤ) = A186401 (n + 1)

end A186401

/-! ## A186401.P2452415424488218550

`eq[9, A298009(n+1)-A008607(A008586(n))]`
-/

namespace A186401.P2452415424488218550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A008607 (A008586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186401.P2452415424488218550

namespace A186401

/-- `eq[9, A298009(n+1)-A008607(A008586(n))]` -/
def P2452415424488218550.Spec : Prop :=
  ∀ n, (P2452415424488218550.a n : ℤ) = A186401 (n + 1)

end A186401

/-! ## A186401.P14707939164524014147

`eq[9, A298009(n+1)-A008592(A008592(n))]`
-/

namespace A186401.P14707939164524014147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A008592 (A008592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186401.P14707939164524014147

namespace A186401

/-- `eq[9, A298009(n+1)-A008592(A008592(n))]` -/
def P14707939164524014147.Spec : Prop :=
  ∀ n, (P14707939164524014147.a n : ℤ) = A186401 (n + 1)

end A186401

/-!
# A186402: Numbers k such that there are 10 primes between 100*k and 100*k + 99.

The programs for A186402, the canonical program `A186402.P7756721520341911561` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186402 has offset 1).

The definition of A186402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186402.P7756721520341911561

`eq[10, A038822(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A186402

/-- `eq[10, A038822(n)]` -/
def P7756721520341911561.Spec : Prop :=
  ∀ n, (P7756721520341911561.a n : ℤ) = A186402 (n + 1)

theorem P7756721520341911561.correct : P7756721520341911561.Spec := by
  intro n
  simp only [A186402, Nat.add_sub_cancel]

end A186402

/-! ## A186402.P17793416470220927299

`eq[10, gcd(10, A298009(n+1))]`
-/

namespace A186402.P17793416470220927299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A298009 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A186402.P17793416470220927299

namespace A186402

/-- `eq[10, gcd(10, A298009(n+1))]` -/
def P17793416470220927299.Spec : Prop :=
  ∀ n, (P17793416470220927299.a n : ℤ) = A186402 (n + 1)

end A186402

/-! ## A186402.P11978514184042673480

`eq[6, A298009(n+1)-A102439(n)]`
-/

namespace A186402.P11978514184042673480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A102439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186402.P11978514184042673480

namespace A186402

/-- `eq[6, A298009(n+1)-A102439(n)]` -/
def P11978514184042673480.Spec : Prop :=
  ∀ n, (P11978514184042673480.a n : ℤ) = A186402 (n + 1)

end A186402

/-! ## A186402.P3084310131244312902

`eq[A298009(n+1)%10, A000038(n)]`
-/

namespace A186402.P3084310131244312902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298009 (n + 1)) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A186402.P3084310131244312902

namespace A186402

/-- `eq[A298009(n+1)%10, A000038(n)]` -/
def P3084310131244312902.Spec : Prop :=
  ∀ n, (P3084310131244312902.a n : ℤ) = A186402 (n + 1)

end A186402

/-! ## A186402.P13507969627029137437

`eq[10, A028505(n+1)%A028505(A000038(n)+n)]`
-/

namespace A186402.P13507969627029137437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028505 (n + 1)) (A028505 (A000038 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186402.P13507969627029137437

namespace A186402

/-- `eq[10, A028505(n+1)%A028505(A000038(n)+n)]` -/
def P13507969627029137437.Spec : Prop :=
  ∀ n, (P13507969627029137437.a n : ℤ) = A186402 (n + 1)

end A186402

/-!
# A186403: Numbers k such that there are 11 primes between 100*k and 100*k + 99.

The programs for A186403, the canonical program `A186403.P16845647133054184679` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186403 has offset 1).

The definition of A186403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186403.P16845647133054184679

`eq[11, A038822(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A186403

/-- `eq[11, A038822(n)]` -/
def P16845647133054184679.Spec : Prop :=
  ∀ n, (P16845647133054184679.a n : ℤ) = A186403 (n + 1)

theorem P16845647133054184679.correct : P16845647133054184679.Spec := by
  intro n
  simp only [A186403, Nat.add_sub_cancel]

end A186403

/-! ## A186403.P18135091416171226026

`eq[11, A298009(n+1)%20]`
-/

namespace A186403.P18135091416171226026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298009 (n + 1)) 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186403.P18135091416171226026

namespace A186403

/-- `eq[11, A298009(n+1)%20]` -/
def P18135091416171226026.Spec : Prop :=
  ∀ n, (P18135091416171226026.a n : ℤ) = A186403 (n + 1)

end A186403

/-! ## A186403.P11496254454045864273

`eq[7, A298009(n+1)-A102439(n)]`
-/

namespace A186403.P11496254454045864273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A102439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186403.P11496254454045864273

namespace A186403

/-- `eq[7, A298009(n+1)-A102439(n)]` -/
def P11496254454045864273.Spec : Prop :=
  ∀ n, (P11496254454045864273.a n : ℤ) = A186403 (n + 1)

end A186403

/-! ## A186403.P16361894534334384483

`eq[11, A028505(n+1)%A028505(A000038(n)+n)]`
-/

namespace A186403.P16361894534334384483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028505 (n + 1)) (A028505 (A000038 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186403.P16361894534334384483

namespace A186403

/-- `eq[11, A028505(n+1)%A028505(A000038(n)+n)]` -/
def P16361894534334384483.Spec : Prop :=
  ∀ n, (P16361894534334384483.a n : ℤ) = A186403 (n + 1)

end A186403

/-! ## A186403.P538013213540654142

`eq[11, A298009(n+1)-A008607(A008586(n))]`
-/

namespace A186403.P538013213540654142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A008607 (A008586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186403.P538013213540654142

namespace A186403

/-- `eq[11, A298009(n+1)-A008607(A008586(n))]` -/
def P538013213540654142.Spec : Prop :=
  ∀ n, (P538013213540654142.a n : ℤ) = A186403 (n + 1)

end A186403

/-! ## A186403.P4267537603214051767

`eq[11, A298009(n+1)-A008592(A008592(n))]`
-/

namespace A186403.P4267537603214051767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A008592 (A008592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186403.P4267537603214051767

namespace A186403

/-- `eq[11, A298009(n+1)-A008592(A008592(n))]` -/
def P4267537603214051767.Spec : Prop :=
  ∀ n, (P4267537603214051767.a n : ℤ) = A186403 (n + 1)

end A186403

/-!
# A186404: Numbers k such that there are 12 primes between 100*k and 100*k + 99.

The programs for A186404, the canonical program `A186404.P8566508972377476060` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186404 has offset 1).

The definition of A186404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186404.P8566508972377476060

`eq[12, A038822(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A186404

/-- `eq[12, A038822(n)]` -/
def P8566508972377476060.Spec : Prop :=
  ∀ n, (P8566508972377476060.a n : ℤ) = A186404 (n + 1)

theorem P8566508972377476060.correct : P8566508972377476060.Spec := by
  intro n
  simp only [A186404, Nat.add_sub_cancel]

end A186404

/-! ## A186404.P12148478011568579317

`eq[12, A298009(n+1)%20]`
-/

namespace A186404.P12148478011568579317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298009 (n + 1)) 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186404.P12148478011568579317

namespace A186404

/-- `eq[12, A298009(n+1)%20]` -/
def P12148478011568579317.Spec : Prop :=
  ∀ n, (P12148478011568579317.a n : ℤ) = A186404 (n + 1)

end A186404

/-! ## A186404.P4818060728537853895

`eq[8, A298009(n+1)-A102439(n)]`
-/

namespace A186404.P4818060728537853895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A102439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186404.P4818060728537853895

namespace A186404

/-- `eq[8, A298009(n+1)-A102439(n)]` -/
def P4818060728537853895.Spec : Prop :=
  ∀ n, (P4818060728537853895.a n : ℤ) = A186404 (n + 1)

end A186404

/-! ## A186404.P11590581839746030350

`eq[12, A028505(n+1)%A028505(A000038(n)+n)]`
-/

namespace A186404.P11590581839746030350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028505 (n + 1)) (A028505 (A000038 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186404.P11590581839746030350

namespace A186404

/-- `eq[12, A028505(n+1)%A028505(A000038(n)+n)]` -/
def P11590581839746030350.Spec : Prop :=
  ∀ n, (P11590581839746030350.a n : ℤ) = A186404 (n + 1)

end A186404

/-! ## A186404.P6910067386395938298

`eq[12, A298009(n+1)-A008607(A008586(n))]`
-/

namespace A186404.P6910067386395938298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A008607 (A008586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186404.P6910067386395938298

namespace A186404

/-- `eq[12, A298009(n+1)-A008607(A008586(n))]` -/
def P6910067386395938298.Spec : Prop :=
  ∀ n, (P6910067386395938298.a n : ℤ) = A186404 (n + 1)

end A186404

/-!
# A186405: Numbers k such that there are 13 primes between 100*k and 100*k + 99.

The programs for A186405, the canonical program `A186405.P8956491586801803310` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186405 has offset 1).

The definition of A186405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186405.P8956491586801803310

`eq[13, A038822(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A186405

/-- `eq[13, A038822(n)]` -/
def P8956491586801803310.Spec : Prop :=
  ∀ n, (P8956491586801803310.a n : ℤ) = A186405 (n + 1)

theorem P8956491586801803310.correct : P8956491586801803310.Spec := by
  intro n
  simp only [A186405, Nat.add_sub_cancel]

end A186405

/-! ## A186405.P8498471484630964482

`eq[13, A298009(n+1)%20]`
-/

namespace A186405.P8498471484630964482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298009 (n + 1)) 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186405.P8498471484630964482

namespace A186405

/-- `eq[13, A298009(n+1)%20]` -/
def P8498471484630964482.Spec : Prop :=
  ∀ n, (P8498471484630964482.a n : ℤ) = A186405 (n + 1)

end A186405

/-! ## A186405.P4172724835595960328

`eq[9, A298009(n+1)-A102439(n)]`
-/

namespace A186405.P4172724835595960328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A102439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186405.P4172724835595960328

namespace A186405

/-- `eq[9, A298009(n+1)-A102439(n)]` -/
def P4172724835595960328.Spec : Prop :=
  ∀ n, (P4172724835595960328.a n : ℤ) = A186405 (n + 1)

end A186405

/-! ## A186405.P10600482261512835905

`eq[13, A028505(n+1)%A028505(A000038(n)+n)]`
-/

namespace A186405.P10600482261512835905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028505 (n + 1)) (A028505 (A000038 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186405.P10600482261512835905

namespace A186405

/-- `eq[13, A028505(n+1)%A028505(A000038(n)+n)]` -/
def P10600482261512835905.Spec : Prop :=
  ∀ n, (P10600482261512835905.a n : ℤ) = A186405 (n + 1)

end A186405

/-! ## A186405.P9315877462786830230

`eq[13, A298009(n+1)-A008607(A008586(n))]`
-/

namespace A186405.P9315877462786830230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A008607 (A008586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186405.P9315877462786830230

namespace A186405

/-- `eq[13, A298009(n+1)-A008607(A008586(n))]` -/
def P9315877462786830230.Spec : Prop :=
  ∀ n, (P9315877462786830230.a n : ℤ) = A186405 (n + 1)

end A186405

/-!
# A186406: Numbers k such that there are 14 primes between 100*k and 100*k + 99.

The programs for A186406, there is no canonical definition to state claims against.
-/

/-! ## A186406.P13350776752051354428

`eq[14, A038822(n)]`
-/

namespace A186406.P13350776752051354428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186406.P13350776752051354428

/-! ## A186406.P12727107546611582888

`eq[14, A298009(n+1)%20]`
-/

namespace A186406.P12727107546611582888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298009 (n + 1)) 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186406.P12727107546611582888

/-! ## A186406.P13440754154780539944

`eq[10, A298009(n+1)-A102439(n)]`
-/

namespace A186406.P13440754154780539944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A102439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186406.P13440754154780539944

/-! ## A186406.P7753362712537200033

`lt[10, A292977(A298009(n+1)-A102439(n)+4)]`
-/

namespace A186406.P7753362712537200033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292977 (A298009 (n + 1) - A102439 n + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186406.P7753362712537200033

/-! ## A186406.P2019151636976720859

`eq[14, A028505(n+1)%A028505(A000038(n)+n)]`
-/

namespace A186406.P2019151636976720859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028505 (n + 1)) (A028505 (A000038 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186406.P2019151636976720859

/-!
# A186407: Numbers k such that there are 15 primes between 100*k and 100*k + 99.

The programs for A186407, there is no canonical definition to state claims against.
-/

/-! ## A186407.P3551545399467468363

`eq[15, A038822(n)]`
-/

namespace A186407.P3551545399467468363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186407.P3551545399467468363

/-! ## A186407.P16265202805422551799

`eq[15, A298009(n+1)%50]`
-/

namespace A186407.P16265202805422551799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298009 (n + 1)) 50

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186407.P16265202805422551799

/-! ## A186407.P2094180731294406813

`eq[11, A298009(n+1)-A102439(n)]`
-/

namespace A186407.P2094180731294406813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A102439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186407.P2094180731294406813

/-! ## A186407.P9483236958697574942

`eq[15, A028505(n+1)%A028505(A000038(n)+n)]`
-/

namespace A186407.P9483236958697574942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028505 (n + 1)) (A028505 (A000038 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186407.P9483236958697574942

/-! ## A186407.P2088077287807066131

`eq[16, Δ[A000720(A008706(20*n))]+1]`
-/

namespace A186407.P2088077287807066131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008706 (20 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186407.P2088077287807066131

/-!
# A186408: Numbers k such that there are 16 primes between 100*k and 100*k + 99.

The programs for A186408, there is no canonical definition to state claims against.
-/

/-! ## A186408.P18351021981458619225

`eq[16, A038822(n)]`
-/

namespace A186408.P18351021981458619225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186408.P18351021981458619225

/-! ## A186408.P16166467243666650026

`eq[16, A298009(n+1)%20]`
-/

namespace A186408.P16166467243666650026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298009 (n + 1)) 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186408.P16166467243666650026

/-! ## A186408.P10379158705044478310

`eq[16, ((A298009(n-log2(1/2))%50)^(3/6))²]`
-/

namespace A186408.P10379158705044478310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Int.tmod (A298009 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat) 50 : ℝ) ^ ((3 : ℚ) / 6 : ℝ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A186408.P10379158705044478310

/-! ## A186408.P5209425048835916365

`lt[6, A001222(A038822(n)²)]`
-/

namespace A186408.P5209425048835916365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A038822 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186408.P5209425048835916365

/-!
# A186409: Total number of parts in all partitions of prime(n).

The programs for A186409, there is no canonical definition to state claims against.
-/

/-! ## A186409.P15271486942264596781

`A006128(A000040(n+1))`
-/

namespace A186409.P15271486942264596781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (A000040 (n + 1)).toNat

end

end A186409.P15271486942264596781

/-! ## A186409.P5646705580467346346

`A006128(p?[comp[n²]])`
-/

namespace A186409.P5646705580467346346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A186409.P5646705580467346346

/-! ## A186409.P4408662030039676925

`A006128(A049551(n+1))`
-/

namespace A186409.P4408662030039676925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (A049551 (n + 1)).toNat

end

end A186409.P4408662030039676925

/-! ## A186409.P102328867144069845

`A006128(A049569(n+1))`
-/

namespace A186409.P102328867144069845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (A049569 (n + 1)).toNat

end

end A186409.P102328867144069845

/-! ## A186409.P14523253020380108640

`A006128(A050260(n+1))`
-/

namespace A186409.P14523253020380108640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (A050260 (n + 1)).toNat

end

end A186409.P14523253020380108640

/-!
# A186410: Number of "ON" cells at n-th stage of three-dimensional version of the cellular automaton A183060 using cubes.

The programs for A186410, there is no canonical definition to state claims against.
-/

/-! ## A186410.P18354882423653853813

`∑[A186411(n)]`
-/

namespace A186410.P18354882423653853813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186410.P18354882423653853813

/-! ## A186410.P8500546244653978837

`A186411(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A186410.P8500546244653978837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A186411 n + a (A023443 n).toNat

end

end A186410.P8500546244653978837

/-! ## A186410.P6986593754580981848

`A230980(A000040(a(n-1)))+A186411(n)` with `a(0)=0, a(1)=1`
-/

namespace A186410.P6986593754580981848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A230980 (A000040 (a (n - 1)).toNat).toNat + A186411 n

end

end A186410.P6986593754580981848

/-!
# A186411: First differences of A186410.

The programs for A186411, there is no canonical definition to state claims against.
-/

/-! ## A186411.P13059434987042652580

`Δ[A186410(log2(ceil(2^(n-1))))]`
-/

namespace A186411.P13059434987042652580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186410 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186411.P13059434987042652580

/-! ## A186411.P16109570336105646663

`Δ[∑{e}[ceil(2^(n-1)), A186410(#)]]`
-/

namespace A186411.P16109570336105646663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A186410 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186411.P16109570336105646663

/-!
# A186412: Sum of all parts in the n-th region of the set of partitions of j, if 1<=n<=A000041(j).

The programs for A186412, there is no canonical definition to state claims against.
-/

/-! ## A186412.P16289162345187231402

`Δ[A182244(A028310(n))%(n+1)²]`
-/

namespace A186412.P16289162345187231402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182244 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186412.P16289162345187231402

/-! ## A186412.P4820828949203894088

`A028310(Δ[A182244(A028310(n))])`
-/

namespace A186412.P4820828949203894088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182244 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A186412.P4820828949203894088

/-! ## A186412.P10528614477931332193

`A182244(n+1)-∪[A182244(n+1), A066186(n)]`
-/

namespace A186412.P10528614477931332193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182244 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A186412.P10528614477931332193

/-! ## A186412.P368131891443117494

`Δ[A210990(n)]-A207779(n+1)`
-/

namespace A186412.P368131891443117494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A207779 (n + 1)

end

end A186412.P368131891443117494

/-! ## A186412.P8360357961375118380

`A194437(A210692(n+1)+1+n)`
-/

namespace A186412.P8360357961375118380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194437 (A210692 (n + 1) + 1 + (n : ℤ)).toNat

end

end A186412.P8360357961375118380

/-!
# A186413: a(n) is the number of odd primes p < prime(n)^2 such that prime(n)# + p is prime with prime(n)# primorial of prime(n).

The programs for A186413, there is no canonical definition to state claims against.
-/

/-! ## A186413.P17898536266493552566

`A174023(n+1)-A010051(A038711(n+1)+1)`
-/

namespace A186413.P17898536266493552566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174023 (n + 1) - A010051 (A038711 (n + 1) + 1).toNat

end

end A186413.P17898536266493552566

/-!
# A186414: a(n) = binomial(2n,n)^3/(n+1)^2.

The programs for A186414, the canonical program `A186414.P17279928848865601261` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186414 has offset 0).

The definition of A186414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186414.P17279928848865601261

`C(2*n, n)^3/(n+1)²`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186414

/-- `C(2*n, n)^3/(n+1)²` -/
def P17279928848865601261.Spec : Prop :=
  ∀ n, P17279928848865601261.a n = (A186414 n : ℚ)

end A186414

/-! ## A186414.P14616183319429043904

`(C(2*n, n)/(n+1))²*C(2*n, n)`
-/

namespace A186414.P14616183319429043904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)) ^ 2 * (Nat.choose (2 * n) n : ℚ)

end

end A186414.P14616183319429043904

namespace A186414

/-- `(C(2*n, n)/(n+1))²*C(2*n, n)` -/
def P14616183319429043904.Spec : Prop :=
  ∀ n, P14616183319429043904.a n = (A186414 n : ℚ)

end A186414

/-! ## A186414.P16641480389674113133

`(n+1)*A033536(n)`
-/

namespace A186414.P16641480389674113133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033536 n

end

end A186414.P16641480389674113133

namespace A186414

/-- `(n+1)*A033536(n)` -/
def P16641480389674113133.Spec : Prop :=
  ∀ n, P16641480389674113133.a n = A186414 n

end A186414

/-! ## A186414.P3483809854244999639

`(n+1)*A000108(n)^3`
-/

namespace A186414.P3483809854244999639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n ^ 3

end

end A186414.P3483809854244999639

namespace A186414

/-- `(n+1)*A000108(n)^3` -/
def P3483809854244999639.Spec : Prop :=
  ∀ n, P3483809854244999639.a n = A186414 n

end A186414

/-! ## A186414.P9782707344185587647

`(n+1)*A120588(n+1)^3`
-/

namespace A186414.P9782707344185587647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A120588 (n + 1) ^ 3

end

end A186414.P9782707344185587647

namespace A186414

/-- `(n+1)*A120588(n+1)^3` -/
def P9782707344185587647.Spec : Prop :=
  ∀ n, P9782707344185587647.a n = A186414 n

end A186414

/-! ## A186414.P8264452490172072743

`A000108(n)*A000888(n)`
-/

namespace A186414.P8264452490172072743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000888 n

end

end A186414.P8264452490172072743

namespace A186414

/-- `A000108(n)*A000888(n)` -/
def P8264452490172072743.Spec : Prop :=
  ∀ n, P8264452490172072743.a n = A186414 n

end A186414

/-! ## A186414.P3779541097166319282

`A000108(n)²*A000984(n)`
-/

namespace A186414.P3779541097166319282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n ^ 2 * A000984 n

end

end A186414.P3779541097166319282

namespace A186414

/-- `A000108(n)²*A000984(n)` -/
def P3779541097166319282.Spec : Prop :=
  ∀ n, P3779541097166319282.a n = A186414 n

end A186414

/-! ## A186414.P14225155837385200529

`A168491(n)²*A000984(n)`
-/

namespace A186414.P14225155837385200529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n ^ 2 * A000984 n

end

end A186414.P14225155837385200529

namespace A186414

/-- `A168491(n)²*A000984(n)` -/
def P14225155837385200529.Spec : Prop :=
  ∀ n, P14225155837385200529.a n = A186414 n

end A186414

/-! ## A186414.P16252001365078703946

`A001246(n)*A001405(2*n)`
-/

namespace A186414.P16252001365078703946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001246 n * A001405 (2 * n)

end

end A186414.P16252001365078703946

namespace A186414

/-- `A001246(n)*A001405(2*n)` -/
def P16252001365078703946.Spec : Prop :=
  ∀ n, P16252001365078703946.a n = A186414 n

end A186414

/-! ## A186414.P10581623756853262657

`A000108(n)²*record[A126869(n)]`
-/

namespace A186414.P10581623756853262657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186414.P10581623756853262657

namespace A186414

/-- `A000108(n)²*record[A126869(n)]` -/
def P10581623756853262657.Spec : Prop :=
  ∀ n, P10581623756853262657.a n = A186414 n

end A186414

/-!
# A186415: a(n) = binomial(2n,n)^3/(n+1).

The programs for A186415, the canonical program `A186415.P15094829752616771025` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186415 has offset 0).

The definition of A186415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186415.P15094829752616771025

`A000888(n)*A000984(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186415

/-- `A000888(n)*A000984(n)` -/
def P15094829752616771025.Spec : Prop :=
  ∀ n, P15094829752616771025.a n = A186415 n

theorem P15094829752616771025.correct : P15094829752616771025.Spec := by
  intro n
  simp only [A186415]

end A186415

/-! ## A186415.P590363061419345902

`C(2*n, n)^3/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186415.P590363061419345902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n ^ 3 : ℚ) / (n + 1 : ℚ)

end

end A186415.P590363061419345902

namespace A186415

/-- `C(2*n, n)^3/(n+1)` -/
def P590363061419345902.Spec : Prop :=
  ∀ n, P590363061419345902.a n = (A186415 n : ℚ)

end A186415

/-! ## A186415.P1637522083569067901

`(n+1)*A186414(n)`
-/

namespace A186415.P1637522083569067901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A186414 n

end

end A186415.P1637522083569067901

namespace A186415

/-- `(n+1)*A186414(n)` -/
def P1637522083569067901.Spec : Prop :=
  ∀ n, P1637522083569067901.a n = A186415 n

end A186415

/-! ## A186415.P4428111537853785174

`(n+1)²*A033536(n)`
-/

namespace A186415.P4428111537853785174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A033536 n

end

end A186415.P4428111537853785174

namespace A186415

/-- `(n+1)²*A033536(n)` -/
def P4428111537853785174.Spec : Prop :=
  ∀ n, P4428111537853785174.a n = A186415 n

end A186415

/-! ## A186415.P7615268086183424164

`(n+1)²*A000108(n)^3`
-/

namespace A186415.P7615268086183424164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A000108 n ^ 3

end

end A186415.P7615268086183424164

namespace A186415

/-- `(n+1)²*A000108(n)^3` -/
def P7615268086183424164.Spec : Prop :=
  ∀ n, P7615268086183424164.a n = A186415 n

end A186415

/-! ## A186415.P1781617400628250699

`abs(C(2*n, n)²*A168491(n))`
-/

namespace A186415.P1781617400628250699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (2 * n) n ^ 2 : ℤ) * A168491 n|

end

end A186415.P1781617400628250699

namespace A186415

/-- `abs(C(2*n, n)²*A168491(n))` -/
def P1781617400628250699.Spec : Prop :=
  ∀ n, P1781617400628250699.a n = A186415 n

end A186415

/-! ## A186415.P9443133876738809541

`(A120304(n)+2)*C(2*n, n)²`
-/

namespace A186415.P9443133876738809541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120304 n + 2) * (Nat.choose (2 * n) n ^ 2 : ℤ)

end

end A186415.P9443133876738809541

namespace A186415

/-- `(A120304(n)+2)*C(2*n, n)²` -/
def P9443133876738809541.Spec : Prop :=
  ∀ n, P9443133876738809541.a n = A186415 n

end A186415

/-! ## A186415.P16619109258082456825

`C(2*n, n)²*A028303(2*n)`
-/

namespace A186415.P16619109258082456825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n ^ 2 : ℤ) * A028303 (2 * n)

end

end A186415.P16619109258082456825

namespace A186415

/-- `C(2*n, n)²*A028303(2*n)` -/
def P16619109258082456825.Spec : Prop :=
  ∀ n, P16619109258082456825.a n = A186415 n

end A186415

/-! ## A186415.P12481394443228690646

`C(2*n, n)²*A126120(2*n)`
-/

namespace A186415.P12481394443228690646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n ^ 2 : ℤ) * A126120 (2 * n)

end

end A186415.P12481394443228690646

namespace A186415

/-- `C(2*n, n)²*A126120(2*n)` -/
def P12481394443228690646.Spec : Prop :=
  ∀ n, P12481394443228690646.a n = A186415 n

end A186415

/-! ## A186415.P16760245561204087283

`(A246604(n)+n)*C(2*n, n)²`
-/

namespace A186415.P16760245561204087283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A246604 n + (n : ℤ)) * (Nat.choose (2 * n) n ^ 2 : ℤ)

end

end A186415.P16760245561204087283

namespace A186415

/-- `(A246604(n)+n)*C(2*n, n)²` -/
def P16760245561204087283.Spec : Prop :=
  ∀ n, P16760245561204087283.a n = A186415 n

end A186415

/-!
# A186416: a(n) = binomial(2n,n)^4/(n+1)^3.

The programs for A186416, the canonical program `A186416.P3937847066975652994` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186416 has offset 0).

The definition of A186416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186416.P3937847066975652994

`A000108(n)^3*A000984(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186416

/-- `A000108(n)^3*A000984(n)` -/
def P3937847066975652994.Spec : Prop :=
  ∀ n, P3937847066975652994.a n = A186416 n

theorem P3937847066975652994.correct : P3937847066975652994.Spec := by
  intro n
  simp only [A186416]

end A186416

/-! ## A186416.P16560310362781802492

`C(2*n, n)^4/(n+1)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186416.P16560310362781802492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n ^ 4 : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A186416.P16560310362781802492

namespace A186416

/-- `C(2*n, n)^4/(n+1)^3` -/
def P16560310362781802492.Spec : Prop :=
  ∀ n, P16560310362781802492.a n = (A186416 n : ℚ)

end A186416

/-! ## A186416.P475163726737932182

`(n+1)*(C(2*n+1, n)/(2*n+1))²²`
-/

namespace A186416.P475163726737932182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((Nat.choose (2 * n + 1) n : ℚ) / (2 * n + 1 : ℚ)) ^ 2) ^ 2

end

end A186416.P475163726737932182

namespace A186416

/-- `(n+1)*(C(2*n+1, n)/(2*n+1))²²` -/
def P475163726737932182.Spec : Prop :=
  ∀ n, P475163726737932182.a n = (A186416 n : ℚ)

end A186416

/-! ## A186416.P16048088797837663610

`(n+1)*A001246(n)²`
-/

namespace A186416.P16048088797837663610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001246 n ^ 2

end

end A186416.P16048088797837663610

namespace A186416

/-- `(n+1)*A001246(n)²` -/
def P16048088797837663610.Spec : Prop :=
  ∀ n, P16048088797837663610.a n = A186416 n

end A186416

/-! ## A186416.P11746133702096313559

`(n+1)*A000108(n)²²`
-/

namespace A186416.P11746133702096313559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000108 n ^ 2) ^ 2

end

end A186416.P11746133702096313559

namespace A186416

/-- `(n+1)*A000108(n)²²` -/
def P11746133702096313559.Spec : Prop :=
  ∀ n, P11746133702096313559.a n = A186416 n

end A186416

/-!
# A186417: The number of unlabeled graphs on n nodes with degree of 1 or 2.

The programs for A186417, there is no canonical definition to state claims against.
-/

/-! ## A186417.P9389044428993671036

`and(A083329(n), A333161(A133263(n)))`
-/

namespace A186417.P9389044428993671036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083329 n) (A333161 (A133263 n).toNat)

end

end A186417.P9389044428993671036

/-! ## A186417.P15844890272890663981

`A333161(A133263(n))-A055029(2*n)`
-/

namespace A186417.P15844890272890663981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333161 (A133263 n).toNat - A055029 (2 * n)

end

end A186417.P15844890272890663981

/-! ## A186417.P104571022106635802

`lcm(A134323(n+1), A333161(A133263(n)))`
-/

namespace A186417.P104571022106635802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A134323 (n + 1)) (A333161 (A133263 n).toNat)

end

end A186417.P104571022106635802

/-! ## A186417.P17382190012803183478

`A333161(A133263(n))-A000007(A007599(n))`
-/

namespace A186417.P17382190012803183478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333161 (A133263 n).toNat - A000007 (A007599 n).toNat

end

end A186417.P17382190012803183478

/-! ## A186417.P16528650003587633443

`A333161(A133263(n))-A000007(A123108(n))`
-/

namespace A186417.P16528650003587633443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333161 (A133263 n).toNat - A000007 (A123108 n).toNat

end

end A186417.P16528650003587633443

/-!
# A186418: a(n) = binomial(2*n,n)^4/(n + 1)^2.

The programs for A186418, the canonical program `A186418.P15252346451880445830` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186418 has offset 0).

The definition of A186418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186418.P15252346451880445830

`C(2*n, n)^4/(n+1)²`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186418

/-- `C(2*n, n)^4/(n+1)²` -/
def P15252346451880445830.Spec : Prop :=
  ∀ n, P15252346451880445830.a n = (A186418 n : ℚ)

end A186418

/-! ## A186418.P256139788060574173

`(C(2*n, n)²/(n+1))²`
-/

namespace A186418.P256139788060574173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) n ^ 2 : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A186418.P256139788060574173

namespace A186418

/-- `(C(2*n, n)²/(n+1))²` -/
def P256139788060574173.Spec : Prop :=
  ∀ n, P256139788060574173.a n = (A186418 n : ℚ)

end A186418

/-! ## A186418.P679503342374510110

`(C(2*n, n)/sqrt(n+1))^4`
-/

namespace A186418.P679503342374510110
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) n : ℝ) / Real.sqrt (n + 1 : ℝ)) ^ 4

end

end A186418.P679503342374510110

namespace A186418

/-- `(C(2*n, n)/sqrt(n+1))^4` -/
def P679503342374510110.Spec : Prop :=
  ∀ n, P679503342374510110.a n = (A186418 n : ℝ)

end A186418

/-! ## A186418.P17940687740858714654

`A000888(n)²`
-/

namespace A186418.P17940687740858714654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000888 n ^ 2

end

end A186418.P17940687740858714654

namespace A186418

/-- `A000888(n)²` -/
def P17940687740858714654.Spec : Prop :=
  ∀ n, P17940687740858714654.a n = A186418 n

end A186418

/-! ## A186418.P420424594063985124

`(n+1)*A186416(n)`
-/

namespace A186418.P420424594063985124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A186416 n

end

end A186418.P420424594063985124

namespace A186418

/-- `(n+1)*A186416(n)` -/
def P420424594063985124.Spec : Prop :=
  ∀ n, P420424594063985124.a n = A186418 n

end A186418

/-!
# A186419: a(n) = binomial(2*n,n)^4/(n + 1).

The programs for A186419, the canonical program `A186419.P17494307921442992007` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186419 has offset 0).

The definition of A186419 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186419.P17494307921442992007

`C(2*n, n)^4/(n+1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186419

/-- `C(2*n, n)^4/(n+1)` -/
def P17494307921442992007.Spec : Prop :=
  ∀ n, P17494307921442992007.a n = (A186419 n : ℚ)

end A186419

/-! ## A186419.P17995986492991712321

`C(2*n, n)²²/(n+1)`
-/

namespace A186419.P17995986492991712321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) n ^ 2) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A186419.P17995986492991712321

namespace A186419

/-- `C(2*n, n)²²/(n+1)` -/
def P17995986492991712321.Spec : Prop :=
  ∀ n, P17995986492991712321.a n = (A186419 n : ℚ)

end A186419

/-! ## A186419.P12054833245444437621

`(n+1)*A186418(n)`
-/

namespace A186419.P12054833245444437621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A186418 n

end

end A186419.P12054833245444437621

namespace A186419

/-- `(n+1)*A186418(n)` -/
def P12054833245444437621.Spec : Prop :=
  ∀ n, P12054833245444437621.a n = A186419 n

end A186419

/-! ## A186419.P1239692333519615996

`A186420(n)/(n+1)`
-/

namespace A186419.P1239692333519615996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186420 n : ℚ) / (n + 1 : ℚ)

end

end A186419.P1239692333519615996

namespace A186419

/-- `A186420(n)/(n+1)` -/
def P1239692333519615996.Spec : Prop :=
  ∀ n, P1239692333519615996.a n = (A186419 n : ℚ)

end A186419

/-! ## A186419.P12654552657866020236

`(n+1)*A000888(n)²`
-/

namespace A186419.P12654552657866020236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000888 n ^ 2

end

end A186419.P12654552657866020236

namespace A186419

/-- `(n+1)*A000888(n)²` -/
def P12654552657866020236.Spec : Prop :=
  ∀ n, P12654552657866020236.a n = A186419 n

end A186419

/-!
# A186420: a(n) = binomial(2n,n)^4.

The programs for A186420, the canonical program `A186420.P1265678038235373033` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186420 has offset 0).

The definition of A186420 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n, n)^4` (program `A186420.P1265678038235373033`, by `A186420.P1265678038235373033.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186420.P1265678038235373033

`C(2*n, n)^4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186420

/-- `C(2*n, n)^4` -/
def P1265678038235373033.Spec : Prop :=
  ∀ n, (P1265678038235373033.a n : ℤ) = A186420 n

theorem P1265678038235373033.correct : P1265678038235373033.Spec := by
  intro n
  simp only [A186420]

end A186420

/-! ## A186420.P10304265513462547972

`A002894(n)²`
-/

namespace A186420.P10304265513462547972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002894 n ^ 2

end

end A186420.P10304265513462547972

namespace A186420

/-- `A002894(n)²` -/
def P10304265513462547972.Spec : Prop :=
  ∀ n, P10304265513462547972.a n = A186420 n

theorem P10304265513462547972.correct : P10304265513462547972.Spec := by
  intro n
  simp only [A186420, Nat.add_sub_cancel, A186420.P10304265513462547972.a, A186420.P1265678038235373033.a, A002894, A002894.P13776530332623719589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A186420

/-! ## A186420.P7335052010094580828

`A000984(n)^4`
-/

namespace A186420.P7335052010094580828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n ^ 4

end

end A186420.P7335052010094580828

namespace A186420

/-- `A000984(n)^4` -/
def P7335052010094580828.Spec : Prop :=
  ∀ n, P7335052010094580828.a n = A186420 n

theorem P7335052010094580828.correct : P7335052010094580828.Spec := by
  intro n
  simp only [A186420, Nat.add_sub_cancel, A186420.P7335052010094580828.a, A186420.P1265678038235373033.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A186420

/-! ## A186420.P13399833259446441111

`C(2*n, n)²²`
-/

namespace A186420.P13399833259446441111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n ^ 2) ^ 2

end

end A186420.P13399833259446441111

namespace A186420

/-- `C(2*n, n)²²` -/
def P13399833259446441111.Spec : Prop :=
  ∀ n, (P13399833259446441111.a n : ℤ) = A186420 n

theorem P13399833259446441111.correct : P13399833259446441111.Spec := by
  intro n
  simp only [A186420, Nat.add_sub_cancel, A186420.P13399833259446441111.a, A186420.P1265678038235373033.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A186420

/-! ## A186420.P7617350455576511469

`(2/n-4)^4*a(n-1)` with `a(0)=1`
-/

namespace A186420.P7617350455576511469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 / (n : ℚ) - 4) ^ 4 * a (n - 1)

end

end A186420.P7617350455576511469

namespace A186420

/-- `(2/n-4)^4*a(n-1)` -/
def P7617350455576511469.Spec : Prop :=
  ∀ n, P7617350455576511469.a n = (A186420 n : ℚ)

end A186420

/-!
# A186421: Even numbers interleaved with repeated odd numbers.

The programs for A186421, the canonical program `A186421.P9488022011537186981` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186421 has offset 0).

The definition of A186421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186421.P9624923258964128603

`ogf((x+2x^2+2x^4+x^5)/(1-x^2-x^4+x^6))`
-/

namespace A186421.P9624923258964128603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 0, 2, 1] [1, 0, -1, 0, -1, 0, 1] n

end

end A186421.P9624923258964128603

namespace A186421

/-- `ogf((x+2x^2+2x^4+x^5)/(1-x^2-x^4+x^6))` -/
def P9624923258964128603.Spec : Prop :=
  ∀ n, P9624923258964128603.a n = A186421 n

end A186421

/-! ## A186421.P9488022011537186981

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=4, a(5)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186421

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P9488022011537186981.Spec : Prop :=
  ∀ n, P9488022011537186981.a n = A186421 n

theorem P9488022011537186981.correct : P9488022011537186981.Spec := by
  intro n
  simp only [A186421]

end A186421

/-! ## A186421.P11458735185183303389

`n-(1-(-1)^n)*(n+(-1)^(n*(n+1)/2))/4`
-/

namespace A186421.P11458735185183303389
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - (1 - (-1) ^ n : ℝ) * ((n : ℝ) + (-1 : ℝ) ^ ((n * (n + 1) : ℚ) / 2 : ℝ)) / 4

end

end A186421.P11458735185183303389

namespace A186421

/-- `n-(1-(-1)^n)*(n+(-1)^(n*(n+1)/2))/4` -/
def P11458735185183303389.Spec : Prop :=
  ∀ n, P11458735185183303389.a n = (A186421 n : ℝ)

end A186421

/-! ## A186421.P7124218874684384091

`lcm(2, n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A186421.P7124218874684384091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Int.lcm 2 ((n : ℤ) - 1) : ℤ) - a (n - 2)

end

end A186421.P7124218874684384091

namespace A186421

/-- `lcm(2, n-1)-a(n-2)` -/
def P7124218874684384091.Spec : Prop :=
  ∀ n, P7124218874684384091.a n = A186421 n

end A186421

/-! ## A186421.P7445706118466002680

`n+1-or(1, ∑[n]%(n+1))`
-/

namespace A186421.P7445706118466002680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.lor 1 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) : ℤ)

end

end A186421.P7445706118466002680

namespace A186421

/-- `n+1-or(1, ∑[n]%(n+1))` -/
def P7445706118466002680.Spec : Prop :=
  ∀ n, P7445706118466002680.a n = A186421 n

end A186421

/-! ## A186421.P6666667151177968636

`or(n%2, floor(n/(n%2+1)))`
-/

namespace A186421.P6666667151177968636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋

end

end A186421.P6666667151177968636

namespace A186421

/-- `or(n%2, floor(n/(n%2+1)))` -/
def P6666667151177968636.Spec : Prop :=
  ∀ n, P6666667151177968636.a n = A186421 n

end A186421

/-! ## A186421.P14216072077067822214

`(n-1)*gcd(2, n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A186421.P14216072077067822214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - 1) * (Nat.gcd 2 n : ℤ) - a (n - 2)

end

end A186421.P14216072077067822214

namespace A186421

/-- `(n-1)*gcd(2, n)-a(n-2)` -/
def P14216072077067822214.Spec : Prop :=
  ∀ n, P14216072077067822214.a n = A186421 n

end A186421

/-! ## A186421.P14171920493530715799

`a(n-2)+(gcd(4, a(n-1))+1)%3` with `a(0)=0, a(1)=1`
-/

namespace A186421.P14171920493530715799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (Nat.gcd 4 (a (n - 1)) + 1) % 3

end

end A186421.P14171920493530715799

namespace A186421

/-- `a(n-2)+(gcd(4, a(n-1))+1)%3` -/
def P14171920493530715799.Spec : Prop :=
  ∀ n, (P14171920493530715799.a n : ℤ) = A186421 n

end A186421

/-! ## A186421.P7686806894492451452

`gcd(2, n)*A004525(n)`
-/

namespace A186421.P7686806894492451452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A004525 n

end

end A186421.P7686806894492451452

namespace A186421

/-- `gcd(2, n)*A004525(n)` -/
def P7686806894492451452.Spec : Prop :=
  ∀ n, P7686806894492451452.a n = A186421 n

end A186421

/-! ## A186421.P1703026182166493862

`floor(A166514(n)+n/2)`
-/

namespace A186421.P1703026182166493862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166514 n : ℚ) + (n : ℚ) / 2⌋

end

end A186421.P1703026182166493862

namespace A186421

/-- `floor(A166514(n)+n/2)` -/
def P1703026182166493862.Spec : Prop :=
  ∀ n, P1703026182166493862.a n = A186421 n

end A186421

/-! ## A186421.P6525045968550663157

`A023443(A212831(n+1))`
-/

namespace A186421.P6525045968550663157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A212831 (n + 1)).toNat

end

end A186421.P6525045968550663157

namespace A186421

/-- `A023443(A212831(n+1))` -/
def P6525045968550663157.Spec : Prop :=
  ∀ n, P6525045968550663157.a n = A186421 n

end A186421

/-! ## A186421.P11739177858505107661

`A004525(n)*A040001(n)`
-/

namespace A186421.P11739177858505107661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n * A040001 n

end

end A186421.P11739177858505107661

namespace A186421

/-- `A004525(n)*A040001(n)` -/
def P11739177858505107661.Spec : Prop :=
  ∀ n, P11739177858505107661.a n = A186421 n

end A186421

/-! ## A186421.P10853449114085965860

`A004525(n)*A134451(n)`
-/

namespace A186421.P10853449114085965860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n * A134451 n

end

end A186421.P10853449114085965860

namespace A186421

/-- `A004525(n)*A134451(n)` -/
def P10853449114085965860.Spec : Prop :=
  ∀ n, P10853449114085965860.a n = A186421 n

end A186421

/-! ## A186421.P1120602680081599688

`A195160(n)%A293990(n)`
-/

namespace A186421.P1120602680081599688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195160 n) (A293990 n)

end

end A186421.P1120602680081599688

namespace A186421

/-- `A195160(n)%A293990(n)` -/
def P1120602680081599688.Spec : Prop :=
  ∀ n, P1120602680081599688.a n = A186421 n

end A186421

/-! ## A186421.P8878117526933134369

`lcm(A004525(n), A009531(n))`
-/

namespace A186421.P8878117526933134369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004525 n) (A009531 n)

end

end A186421.P8878117526933134369

namespace A186421

/-- `lcm(A004525(n), A009531(n))` -/
def P8878117526933134369.Spec : Prop :=
  ∀ n, (P8878117526933134369.a n : ℤ) = A186421 n

end A186421

/-! ## A186421.P17092092997147639547

`A007588(n)%A047596(n+1)`
-/

namespace A186421.P17092092997147639547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007588 n) (A047596 (n + 1))

end

end A186421.P17092092997147639547

namespace A186421

/-- `A007588(n)%A047596(n+1)` -/
def P17092092997147639547.Spec : Prop :=
  ∀ n, P17092092997147639547.a n = A186421 n

end A186421

/-! ## A186421.P6509644673754473983

`A347365(n)%A235700(n+1)`
-/

namespace A186421.P6509644673754473983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347365 n) (A235700 (n + 1))

end

end A186421.P6509644673754473983

namespace A186421

/-- `A347365(n)%A235700(n+1)` -/
def P6509644673754473983.Spec : Prop :=
  ∀ n, P6509644673754473983.a n = A186421 n

end A186421

/-! ## A186421.P2623220882444441252

`xor(A135481(n), A240828(n+1))`
-/

namespace A186421.P2623220882444441252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A135481 n) (A240828 (n + 1))

end

end A186421.P2623220882444441252

namespace A186421

/-- `xor(A135481(n), A240828(n+1))` -/
def P2623220882444441252.Spec : Prop :=
  ∀ n, P2623220882444441252.a n = A186421 n

end A186421

/-! ## A186421.P960976144839042553

`A047445(n+1)%A063914(n+1)`
-/

namespace A186421.P960976144839042553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047445 (n + 1)) (A063914 (n + 1))

end

end A186421.P960976144839042553

namespace A186421

/-- `A047445(n+1)%A063914(n+1)` -/
def P960976144839042553.Spec : Prop :=
  ∀ n, P960976144839042553.a n = A186421 n

end A186421

/-! ## A186421.P3913860793583706004

`A047493(n+1)%A080512(n+1)`
-/

namespace A186421.P3913860793583706004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047493 (n + 1)) (A080512 (n + 1))

end

end A186421.P3913860793583706004

namespace A186421

/-- `A047493(n+1)%A080512(n+1)` -/
def P3913860793583706004.Spec : Prop :=
  ∀ n, P3913860793583706004.a n = A186421 n

end A186421

/-!
# A186422: First differences of A186421.

The programs for A186422, the canonical program `A186422.P9834622977751955722` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186422 has offset 0).

The definition of A186422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186422.P8395937860711673209

`ogf((1+2x+2x^3+x^4)/(1+x-x^4-x^5))`
-/

namespace A186422.P8395937860711673209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, 2, 1] [1, 1, 0, 0, -1, -1] n

end

end A186422.P8395937860711673209

namespace A186422

/-- `ogf((1+2x+2x^3+x^4)/(1+x-x^4-x^5))` -/
def P8395937860711673209.Spec : Prop :=
  ∀ n, P8395937860711673209.a n = A186422 n

end A186422

/-! ## A186422.P9834622977751955722

`A186421(n+1)-A186421(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186422

/-- `A186421(n+1)-A186421(n)` -/
def P9834622977751955722.Spec : Prop :=
  ∀ n, P9834622977751955722.a n = A186422 n

theorem P9834622977751955722.correct : P9834622977751955722.Spec := by
  intro n
  simp only [A186422]

end A186422

/-! ## A186422.P13046680762219248073

`or(1, ∑[-(n*(-1)^n)])`
-/

namespace A186422.P13046680762219248073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186422.P13046680762219248073

namespace A186422

/-- `or(1, ∑[-(n*(-1)^n)])` -/
def P13046680762219248073.Spec : Prop :=
  ∀ n, P13046680762219248073.a n = A186422 n

end A186422

/-! ## A186422.P5504449126652491836

`2-or(1, Δ[lcm(2, n)/2])`
-/

namespace A186422.P5504449126652491836
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.lor 1 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A186422.P5504449126652491836

namespace A186422

/-- `2-or(1, Δ[lcm(2, n)/2])` -/
def P5504449126652491836.Spec : Prop :=
  ∀ n, P5504449126652491836.a n = A186422 n

end A186422

/-! ## A186422.P2802291762629450838

`(gcd(4, n)+1)%3-a(n-1)` with `a(0)=1`
-/

namespace A186422.P2802291762629450838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((Nat.gcd 4 n + 1) % 3 : ℕ) : ℤ) - a (n - 1)

end

end A186422.P2802291762629450838

namespace A186422

/-- `(gcd(4, n)+1)%3-a(n-1)` -/
def P2802291762629450838.Spec : Prop :=
  ∀ n, P2802291762629450838.a n = A186422 n

end A186422

/-! ## A186422.P10009308123092658402

`Δ[or(n%2, floor(n/(n%2+1)))]`
-/

namespace A186422.P10009308123092658402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186422.P10009308123092658402

namespace A186422

/-- `Δ[or(n%2, floor(n/(n%2+1)))]` -/
def P10009308123092658402.Spec : Prop :=
  ∀ n, P10009308123092658402.a n = A186422 n

end A186422

/-! ## A186422.P1315500570783116116

`2-(a(n-1)+and(4, n²)/2)` with `a(0)=1`
-/

namespace A186422.P1315500570783116116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 - (a (n - 1) + (Nat.land 4 (n ^ 2) : ℚ) / 2)

end

end A186422.P1315500570783116116

namespace A186422

/-- `2-(a(n-1)+and(4, n²)/2)` -/
def P1315500570783116116.Spec : Prop :=
  ∀ n, P1315500570783116116.a n = (A186422 n : ℚ)

end A186422

/-! ## A186422.P13854135432859201643

`2%xor(2, xor(n, -n))-a(n-1)` with `a(0)=1`
-/

namespace A186422.P13854135432859201643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod 2 (Int.xor 2 (Int.xor (n : ℤ) (-(n : ℤ)))) - a (n - 1)

end

end A186422.P13854135432859201643

namespace A186422

/-- `2%xor(2, xor(n, -n))-a(n-1)` -/
def P13854135432859201643.Spec : Prop :=
  ∀ n, P13854135432859201643.a n = A186422 n

end A186422

/-! ## A186422.P4824801995392520115

`(n-n^3)%4+2-a(n-1)` with `a(0)=1`
-/

namespace A186422.P4824801995392520115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod ((n : ℤ) - (n ^ 3 : ℤ)) 4 + (2 - a (n - 1))

end

end A186422.P4824801995392520115

namespace A186422

/-- `(n-n^3)%4+2-a(n-1)` -/
def P4824801995392520115.Spec : Prop :=
  ∀ n, P4824801995392520115.a n = A186422 n

end A186422

/-! ## A186422.P16982924723859183643

`2-(a(n-1)+and(2, and(n, n+1)))` with `a(0)=1`
-/

namespace A186422.P16982924723859183643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (a (n - 1) + (Nat.land 2 (Nat.land n (n + 1)) : ℤ))

end

end A186422.P16982924723859183643

namespace A186422

/-- `2-(a(n-1)+and(2, and(n, n+1)))` -/
def P16982924723859183643.Spec : Prop :=
  ∀ n, P16982924723859183643.a n = A186422 n

end A186422

/-! ## A186422.P6668138283046590510

`a(n-4)+a(n-5)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=3, a(4)=-1`
-/

namespace A186422.P6668138283046590510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, 3, -1] fun n a =>
  a (n - 4) + (a (n - 5) - a (n - 1))

end

end A186422.P6668138283046590510

namespace A186422

/-- `a(n-4)+a(n-5)-a(n-1)` -/
def P6668138283046590510.Spec : Prop :=
  ∀ n, P6668138283046590510.a n = A186422 n

end A186422

/-! ## A186422.P12131382703513544263

`Δ[A186421(n)]`
-/

namespace A186422.P12131382703513544263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186422.P12131382703513544263

namespace A186422

/-- `Δ[A186421(n)]` -/
def P12131382703513544263.Spec : Prop :=
  ∀ n, P12131382703513544263.a n = A186422 n

theorem P12131382703513544263.correct : P12131382703513544263.Spec := by
  intro n
  simp only [A186422, Nat.add_sub_cancel, A186422.P12131382703513544263.f1, A186422.P12131382703513544263.a, A186422.P9834622977751955722.a, SequenceMachineLib.memo_apply]

end A186422

/-! ## A186422.P3174953792248062458

`(n+3-A199398(n+1))/2`
-/

namespace A186422.P3174953792248062458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - A199398 (n + 1) : ℚ) / 2

end

end A186422.P3174953792248062458

namespace A186422

/-- `(n+3-A199398(n+1))/2` -/
def P3174953792248062458.Spec : Prop :=
  ∀ n, P3174953792248062458.a n = (A186422 n : ℚ)

end A186422

/-! ## A186422.P6428946752053564658

`A296063(A187180(n+1))`
-/

namespace A186422.P6428946752053564658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296063 (A187180 (n + 1)).toNat

end

end A186422.P6428946752053564658

namespace A186422

/-- `A296063(A187180(n+1))` -/
def P6428946752053564658.Spec : Prop :=
  ∀ n, P6428946752053564658.a n = A186422 n

end A186422

/-! ## A186422.P14476751431543971570

`A080513(n)-A003815(n)`
-/

namespace A186422.P14476751431543971570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n - A003815 n

end

end A186422.P14476751431543971570

namespace A186422

/-- `A080513(n)-A003815(n)` -/
def P14476751431543971570.Spec : Prop :=
  ∀ n, P14476751431543971570.a n = A186422 n

end A186422

/-! ## A186422.P1562951239628542510

`A133872(n+1)+A001057(n)`
-/

namespace A186422.P1562951239628542510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (n + 1) + A001057 n

end

end A186422.P1562951239628542510

namespace A186422

/-- `A133872(n+1)+A001057(n)` -/
def P1562951239628542510.Spec : Prop :=
  ∀ n, P1562951239628542510.a n = A186422 n

end A186422

/-! ## A186422.P11587677011534820327

`A099392(n+1)-A250108(n+1)`
-/

namespace A186422.P11587677011534820327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (n + 1) - A250108 (n + 1)

end

end A186422.P11587677011534820327

namespace A186422

/-- `A099392(n+1)-A250108(n+1)` -/
def P11587677011534820327.Spec : Prop :=
  ∀ n, P11587677011534820327.a n = A186422 n

end A186422

/-! ## A186422.P10212693217913534829

`A162330(n+1)-A193356(n+1)`
-/

namespace A186422.P10212693217913534829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162330 (n + 1) - A193356 (n + 1)

end

end A186422.P10212693217913534829

namespace A186422

/-- `A162330(n+1)-A193356(n+1)` -/
def P10212693217913534829.Spec : Prop :=
  ∀ n, P10212693217913534829.a n = A186422 n

end A186422

/-! ## A186422.P11684322129161326148

`1-(A130472(n)+A000035(A110654(n)))`
-/

namespace A186422.P11684322129161326148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A130472 n + A000035 (A110654 n).toNat)

end

end A186422.P11684322129161326148

namespace A186422

/-- `1-(A130472(n)+A000035(A110654(n)))` -/
def P11684322129161326148.Spec : Prop :=
  ∀ n, P11684322129161326148.a n = A186422 n

end A186422

/-! ## A186422.P3630943642746268148

`Δ[A212831(n+1)]`
-/

namespace A186422.P3630943642746268148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186422.P3630943642746268148

namespace A186422

/-- `Δ[A212831(n+1)]` -/
def P3630943642746268148.Spec : Prop :=
  ∀ n, P3630943642746268148.a n = A186422 n

end A186422

/-!
# A186423: Partial sums of A186421.

The programs for A186423, the canonical program `A186423.P7734216048992605812` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186423 has offset 0).

The definition of A186423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186423.P17942165224495906846

`ogf((x+2x^2+2x^4+x^5)/(1-x-x^2+x^3-x^4+x^5+x^6-x^7))`
-/

namespace A186423.P17942165224495906846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 0, 2, 1] [1, -1, -1, 1, -1, 1, 1, -1] n

end

end A186423.P17942165224495906846

namespace A186423

/-- `ogf((x+2x^2+2x^4+x^5)/(1-x-x^2+x^3-x^4+x^5+x^6-x^7))` -/
def P17942165224495906846.Spec : Prop :=
  ∀ n, P17942165224495906846.a n = A186423 n

end A186423

/-! ## A186423.P7734216048992605812

`(6*n*(n+1)+3+(-1)^n*(2*n+1)-4*A087960(n))/16`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186423

/-- `(6*n*(n+1)+3+(-1)^n*(2*n+1)-4*A087960(n))/16` -/
def P7734216048992605812.Spec : Prop :=
  ∀ n, P7734216048992605812.a n = (A186423 n : ℚ)

end A186423

/-! ## A186423.P5338273736484554021

`round(comp[3*n]²/6)`
-/

namespace A186423.P5338273736484554021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 : ℚ) / 6)

end

end A186423.P5338273736484554021

namespace A186423

/-- `round(comp[3*n]²/6)` -/
def P5338273736484554021.Spec : Prop :=
  ∀ n, P5338273736484554021.a n = A186423 n

end A186423

/-! ## A186423.P16871114759699363742

`ceil(∑[n/gcd(2, n+1)])`
-/

namespace A186423.P16871114759699363742
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A186423.P16871114759699363742

namespace A186423

/-- `ceil(∑[n/gcd(2, n+1)])` -/
def P16871114759699363742.Spec : Prop :=
  ∀ n, P16871114759699363742.a n = A186423 n

end A186423

/-! ## A186423.P1992302761430780007

`ceil(∑[lcm(n, ∑[n])/(n+1)])`
-/

namespace A186423.P1992302761430780007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A186423.P1992302761430780007

namespace A186423

/-- `ceil(∑[lcm(n, ∑[n])/(n+1)])` -/
def P1992302761430780007.Spec : Prop :=
  ∀ n, P1992302761430780007.a n = A186423 n

end A186423

/-! ## A186423.P3238561741188327847

`ceil(∑[-(n*or(n, -2))]/2)`
-/

namespace A186423.P3238561741188327847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.lor (n : ℤ) (-2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A186423.P3238561741188327847

namespace A186423

/-- `ceil(∑[-(n*or(n, -2))]/2)` -/
def P3238561741188327847.Spec : Prop :=
  ∀ n, P3238561741188327847.a n = A186423 n

end A186423

/-! ## A186423.P18045497625157207381

`∑[lcm(2, 1-n)-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A186423.P18045497625157207381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (Int.lcm 2 (1 - (n : ℤ)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186423.P18045497625157207381

namespace A186423

/-- `∑[lcm(2, 1-n)-a(n-2)]` -/
def P18045497625157207381.Spec : Prop :=
  ∀ n, P18045497625157207381.a n = A186423 n

end A186423

/-! ## A186423.P8839738814597243458

`ceil(∑[n*((n+1)%2+1)]/2)`
-/

namespace A186423.P8839738814597243458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 1) % 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌉

end

end A186423.P8839738814597243458

namespace A186423

/-- `ceil(∑[n*((n+1)%2+1)]/2)` -/
def P8839738814597243458.Spec : Prop :=
  ∀ n, P8839738814597243458.a n = A186423 n

end A186423

/-! ## A186423.P9248861214356116189

`ceil(∑[n*(or(1, n)-(n-1))]/2)`
-/

namespace A186423.P9248861214356116189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.lor 1 n : ℤ) - ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A186423.P9248861214356116189

namespace A186423

/-- `ceil(∑[n*(or(1, n)-(n-1))]/2)` -/
def P9248861214356116189.Spec : Prop :=
  ∀ n, P9248861214356116189.a n = A186423 n

end A186423

/-! ## A186423.P3518509838936490564

`∑[n+1-or(1, ∑[n]%(n+1))]`
-/

namespace A186423.P3518509838936490564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.lor 1 ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186423.P3518509838936490564

namespace A186423

/-- `∑[n+1-or(1, ∑[n]%(n+1))]` -/
def P3518509838936490564.Spec : Prop :=
  ∀ n, P3518509838936490564.a n = A186423 n

end A186423

/-! ## A186423.P8148666103058397331

`ceil(record[n²%3*floor(n²/3)]/2)`
-/

namespace A186423.P8148666103058397331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 % 3 : ℕ) : ℤ) * ⌊(n ^ 2 : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌉

end

end A186423.P8148666103058397331

namespace A186423

/-- `ceil(record[n²%3*floor(n²/3)]/2)` -/
def P8148666103058397331.Spec : Prop :=
  ∀ n, P8148666103058397331.a n = A186423 n

end A186423

/-! ## A186423.P10656969436416654222

`∑[A186421(n)]`
-/

namespace A186423.P10656969436416654222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186423.P10656969436416654222

namespace A186423

/-- `∑[A186421(n)]` -/
def P10656969436416654222.Spec : Prop :=
  ∀ n, P10656969436416654222.a n = A186423 n

end A186423

/-! ## A186423.P3723670404918409278

`floor(A257083(n)/2)`
-/

namespace A186423.P3723670404918409278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A257083 n : ℚ) / 2⌋

end

end A186423.P3723670404918409278

namespace A186423

/-- `floor(A257083(n)/2)` -/
def P3723670404918409278.Spec : Prop :=
  ∀ n, P3723670404918409278.a n = A186423 n

end A186423

/-! ## A186423.P14650580546426640158

`ceil(∑[n/A000034(n)])`
-/

namespace A186423.P14650580546426640158
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A186423.P14650580546426640158

namespace A186423

/-- `ceil(∑[n/A000034(n)])` -/
def P14650580546426640158.Spec : Prop :=
  ∀ n, P14650580546426640158.a n = A186423 n

end A186423

/-! ## A186423.P17483646095924839328

`ceil(A001082(n+1)/2)`
-/

namespace A186423.P17483646095924839328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001082 (n + 1) : ℚ) / 2⌉

end

end A186423.P17483646095924839328

namespace A186423

/-- `ceil(A001082(n+1)/2)` -/
def P17483646095924839328.Spec : Prop :=
  ∀ n, P17483646095924839328.a n = A186423 n

end A186423

/-! ## A186423.P4045257336124478329

`∑[A212831(n+1)-1]`
-/

namespace A186423.P4045257336124478329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186423.P4045257336124478329

namespace A186423

/-- `∑[A212831(n+1)-1]` -/
def P4045257336124478329.Spec : Prop :=
  ∀ n, P4045257336124478329.a n = A186423 n

end A186423

/-! ## A186423.P2442154578660639554

`∑[gcd(2, n)*A004525(n)]`
-/

namespace A186423.P2442154578660639554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186423.P2442154578660639554

namespace A186423

/-- `∑[gcd(2, n)*A004525(n)]` -/
def P2442154578660639554.Spec : Prop :=
  ∀ n, P2442154578660639554.a n = A186423 n

end A186423

/-! ## A186423.P4890308835302046549

`A166515(n)+A002620(n)`
-/

namespace A186423.P4890308835302046549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166515 n + A002620 n

end

end A186423.P4890308835302046549

namespace A186423

/-- `A166515(n)+A002620(n)` -/
def P4890308835302046549.Spec : Prop :=
  ∀ n, P4890308835302046549.a n = A186423 n

end A186423

/-! ## A186423.P1252211679032461955

`A211539(n)+A110655(n)`
-/

namespace A186423.P1252211679032461955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211539 n + A110655 n

end

end A186423.P1252211679032461955

namespace A186423

/-- `A211539(n)+A110655(n)` -/
def P1252211679032461955.Spec : Prop :=
  ∀ n, P1252211679032461955.a n = A186423 n

end A186423

/-! ## A186423.P9377546142813323107

`A396812(n)+A004526(n)`
-/

namespace A186423.P9377546142813323107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396812 n + A004526 n

end

end A186423.P9377546142813323107

namespace A186423

/-- `A396812(n)+A004526(n)` -/
def P9377546142813323107.Spec : Prop :=
  ∀ n, P9377546142813323107.a n = A186423 n

end A186423

/-!
# A186424: Odd terms in A186423.

The programs for A186424, the canonical program `A186424.P2229524194530108926` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186424 has offset 0).

The definition of A186424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186424.P2436616549515763155

`ogf((1+2x+6x^2+2x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A186424.P2436616549515763155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 6, 2, 1] [1, -1, -2, 2, 1, -1] n

end

end A186424.P2436616549515763155

namespace A186424

/-- `ogf((1+2x+6x^2+2x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P2436616549515763155.Spec : Prop :=
  ∀ n, P2436616549515763155.a n = A186424 n

end A186424

/-! ## A186424.P2229524194530108926

`3*(1+2*n+2*n²)/4+(-1)^n*(1+2*n)/4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186424

/-- `3*(1+2*n+2*n²)/4+(-1)^n*(1+2*n)/4` -/
def P2229524194530108926.Spec : Prop :=
  ∀ n, P2229524194530108926.a n = (A186424 n : ℚ)

end A186424

/-! ## A186424.P12146876788712980054

`∑[2*n*gcd(2, n)]+1`
-/

namespace A186424.P12146876788712980054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A186424.P12146876788712980054

namespace A186424

/-- `∑[2*n*gcd(2, n)]+1` -/
def P12146876788712980054.Spec : Prop :=
  ∀ n, (P12146876788712980054.a n : ℤ) = A186424 n

end A186424

/-! ## A186424.P1111135226554572559

`∑[n*gcd(4, a(n-2))]` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A186424.P1111135226554572559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8] fun n f1 =>
  n * Nat.gcd 4 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186424.P1111135226554572559

namespace A186424

/-- `∑[n*gcd(4, a(n-2))]` -/
def P1111135226554572559.Spec : Prop :=
  ∀ n, (P1111135226554572559.a n : ℤ) = A186424 n

end A186424

/-! ## A186424.P6013665078254306758

`∑[2*n*a((n+1)%2)]` with `a(0)=1`
-/

namespace A186424.P6013665078254306758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (n * f1 ((n + 1) % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186424.P6013665078254306758

namespace A186424

/-- `∑[2*n*a((n+1)%2)]` -/
def P6013665078254306758.Spec : Prop :=
  ∀ n, (P6013665078254306758.a n : ℤ) = A186424 n

end A186424

/-! ## A186424.P6721873771313186630

`∑[2*n*a(and(1, n+1))]` with `a(0)=1`
-/

namespace A186424.P6721873771313186630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * n * f1 (Nat.land 1 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186424.P6721873771313186630

namespace A186424

/-- `∑[2*n*a(and(1, n+1))]` -/
def P6721873771313186630.Spec : Prop :=
  ∀ n, (P6721873771313186630.a n : ℤ) = A186424 n

end A186424

/-! ## A186424.P8176786522374631365

`∑[2*n*a(and(1, n-1)²)]` with `a(0)=1`
-/

namespace A186424.P8176786522374631365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * n * f1 (Int.land 1 ((n : ℤ) - 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186424.P8176786522374631365

namespace A186424

/-- `∑[2*n*a(and(1, n-1)²)]` -/
def P8176786522374631365.Spec : Prop :=
  ∀ n, (P8176786522374631365.a n : ℤ) = A186424 n

end A186424

/-! ## A186424.P13296439321311941492

`a(n-1)+(2*n)²/lcm(2, n)` with `a(0)=1`
-/

namespace A186424.P13296439321311941492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((2 * n) ^ 2 : ℚ) / (Nat.lcm 2 n : ℚ)

end

end A186424.P13296439321311941492

namespace A186424

/-- `a(n-1)+(2*n)²/lcm(2, n)` -/
def P13296439321311941492.Spec : Prop :=
  ∀ n, P13296439321311941492.a n = (A186424 n : ℚ)

end A186424

/-! ## A186424.P17112256032232321750

`a(n-1)+2*n*(2-n%2)` with `a(0)=1`
-/

namespace A186424.P17112256032232321750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n : ℤ) * (2 - ((n % 2 : ℕ) : ℤ))

end

end A186424.P17112256032232321750

namespace A186424

/-- `a(n-1)+2*n*(2-n%2)` -/
def P17112256032232321750.Spec : Prop :=
  ∀ n, P17112256032232321750.a n = A186424 n

end A186424

/-! ## A186424.P6047273614485224318

`∑[C(2*n+1, and(1, n+1))]+n²`
-/

namespace A186424.P6047273614485224318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (Nat.land 1 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A186424.P6047273614485224318

namespace A186424

/-- `∑[C(2*n+1, and(1, n+1))]+n²` -/
def P6047273614485224318.Spec : Prop :=
  ∀ n, (P6047273614485224318.a n : ℤ) = A186424 n

end A186424

/-! ## A186424.P3601091385081804015

`(A298039(n)+2)/3`
-/

namespace A186424.P3601091385081804015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298039 n + 2 : ℚ) / 3

end

end A186424.P3601091385081804015

namespace A186424

/-- `(A298039(n)+2)/3` -/
def P3601091385081804015.Spec : Prop :=
  ∀ n, P3601091385081804015.a n = (A186424 n : ℚ)

end A186424

/-! ## A186424.P9468003960392784225

`∪[A080859(n), A126587(n+1)]`
-/

namespace A186424.P9468003960392784225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080859 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186424.P9468003960392784225

namespace A186424

/-- `∪[A080859(n), A126587(n+1)]` -/
def P9468003960392784225.Spec : Prop :=
  ∀ n, (P9468003960392784225.a n : ℤ) = A186424 n

end A186424

/-! ## A186424.P1141590752620078888

`A237516(n+1)%A193868(n+1)`
-/

namespace A186424.P1141590752620078888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237516 (n + 1)) (A193868 (n + 1))

end

end A186424.P1141590752620078888

namespace A186424

/-- `A237516(n+1)%A193868(n+1)` -/
def P1141590752620078888.Spec : Prop :=
  ∀ n, P1141590752620078888.a n = A186424 n

end A186424

/-! ## A186424.P8888083616740444433

`A375352(n+1)%A106232(n+1)`
-/

namespace A186424.P8888083616740444433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375352 (n + 1)) (A106232 (n + 1))

end

end A186424.P8888083616740444433

namespace A186424

/-- `A375352(n+1)%A106232(n+1)` -/
def P8888083616740444433.Spec : Prop :=
  ∀ n, P8888083616740444433.a n = A186424 n

end A186424

/-! ## A186424.P15634913932109207176

`Δ[n*A000982(n)]`
-/

namespace A186424.P15634913932109207176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186424.P15634913932109207176

namespace A186424

/-- `Δ[n*A000982(n)]` -/
def P15634913932109207176.Spec : Prop :=
  ∀ n, P15634913932109207176.a n = A186424 n

end A186424

/-! ## A186424.P5355594816029706001

`A071619(A001651(n+1))`
-/

namespace A186424.P5355594816029706001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (A001651 (n + 1)).toNat

end

end A186424.P5355594816029706001

namespace A186424

/-- `A071619(A001651(n+1))` -/
def P5355594816029706001.Spec : Prop :=
  ∀ n, P5355594816029706001.a n = A186424 n

end A186424

/-! ## A186424.P9916261513526968809

`∩[A071619(n), A194069(n+1)]`
-/

namespace A186424.P9916261513526968809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186424.P9916261513526968809

namespace A186424

/-- `∩[A071619(n), A194069(n+1)]` -/
def P9916261513526968809.Spec : Prop :=
  ∀ n, (P9916261513526968809.a n : ℤ) = A186424 n

end A186424

/-! ## A186424.P7078267108796270941

`A186423(A042963(n+1))`
-/

namespace A186424.P7078267108796270941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186423 (A042963 (n + 1)).toNat

end

end A186424.P7078267108796270941

namespace A186424

/-- `A186423(A042963(n+1))` -/
def P7078267108796270941.Spec : Prop :=
  ∀ n, P7078267108796270941.a n = A186424 n

end A186424

/-! ## A186424.P9061606083421524789

`A186423(A109613(n)+n)`
-/

namespace A186424.P9061606083421524789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186423 (A109613 n + (n : ℤ)).toNat

end

end A186424.P9061606083421524789

namespace A186424

/-- `A186423(A109613(n)+n)` -/
def P9061606083421524789.Spec : Prop :=
  ∀ n, P9061606083421524789.a n = A186424 n

end A186424

/-! ## A186424.P13881285504730415246

`∩[A186423(n), A194069(n+1)]`
-/

namespace A186424.P13881285504730415246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186423 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186424.P13881285504730415246

namespace A186424

/-- `∩[A186423(n), A194069(n+1)]` -/
def P13881285504730415246.Spec : Prop :=
  ∀ n, (P13881285504730415246.a n : ℤ) = A186424 n

end A186424

/-!
# A186425: Antidiagonal sums of A179748.

The programs for A186425, there is no canonical definition to state claims against.
-/

/-! ## A186425.P12402553560140505471

`∑[A186426(n+1)]`
-/

namespace A186425.P12402553560140505471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186425.P12402553560140505471

/-! ## A186425.P5574356200248796058

`∑[A008930(n)-Δ[Δ[A008930(n)]]]`
-/

namespace A186425.P5574356200248796058
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008930 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008930 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186425.P5574356200248796058

/-! ## A186425.P4901216447770606851

`A186426(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A186425.P4901216447770606851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186426 (n + 1) + a (A023443 n).toNat

end

end A186425.P4901216447770606851

/-! ## A186425.P3405294059328863078

`∑[A008930(n+1)+Δ[-A008930(n+1)]]`
-/

namespace A186425.P3405294059328863078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008930 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008930 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186425.P3405294059328863078

/-! ## A186425.P15080778603326504516

`a(n-1)+A186426(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A186425.P15080778603326504516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A186426 (n + 1) + A000007 n)

end

end A186425.P15080778603326504516

/-!
# A186426: Antidiagonal sums of A177517.

The programs for A186426, there is no canonical definition to state claims against.
-/

/-! ## A186426.P15984329687350502275

`A008930(n)-Δ[Δ[A008930(n)]]`
-/

namespace A186426.P15984329687350502275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008930 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008930 n - (f1 (n + 1) - f1 n)

end

end A186426.P15984329687350502275

/-! ## A186426.P16187836439502959680

`A008930(n+1)+Δ[-A008930(n+1)]`
-/

namespace A186426.P16187836439502959680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008930 (n + 1) + (f1 (n + 1) - f1 n)

end

end A186426.P16187836439502959680

/-! ## A186426.P2906530121622262321

`A008930(n+1)+A008930(n+1)-A008930(n+2)`
-/

namespace A186426.P2906530121622262321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008930 (n + 1) + (A008930 (n + 1) - A008930 (n + 2))

end

end A186426.P2906530121622262321

/-! ## A186426.P16060889842577269484

`Δ[A186425(A028310(n))%(2^n)]`
-/

namespace A186426.P16060889842577269484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186425 (A028310 n).toNat) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186426.P16060889842577269484

/-! ## A186426.P16613705677634835435

`A000007(n)+Δ[A186425(A028310(n))]`
-/

namespace A186426.P16613705677634835435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186425 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A186426.P16613705677634835435

/-!
# A186428: a(n) = sigma(n^2) modulo sigma(n).

The programs for A186428, the canonical program `A186428.P2147351856514783823` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186428 has offset 1).

The definition of A186428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186428.P2147351856514783823

`A065764(n+1)%A000203(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A186428

/-- `A065764(n+1)%A000203(n+1)` -/
def P2147351856514783823.Spec : Prop :=
  ∀ n, P2147351856514783823.a n = A186428 (n + 1)

theorem P2147351856514783823.correct : P2147351856514783823.Spec := by
  intro n
  simp only [A186428, Nat.add_sub_cancel]

end A186428

/-! ## A186428.P14018845530931211809

`A000203((n+1)²)%A000203(n+1)`
-/

namespace A186428.P14018845530931211809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 ((n + 1) ^ 2)) (A000203 (n + 1))

end

end A186428.P14018845530931211809

namespace A186428

/-- `A000203((n+1)²)%A000203(n+1)` -/
def P14018845530931211809.Spec : Prop :=
  ∀ n, P14018845530931211809.a n = A186428 (n + 1)

end A186428

/-! ## A186428.P5443654439328701240

`A086156(n+1)%A000203(n+1)`
-/

namespace A186428.P5443654439328701240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086156 (n + 1)) (A000203 (n + 1))

end

end A186428.P5443654439328701240

namespace A186428

/-- `A086156(n+1)%A000203(n+1)` -/
def P5443654439328701240.Spec : Prop :=
  ∀ n, P5443654439328701240.a n = A186428 (n + 1)

end A186428

/-! ## A186428.P2240458423652796486

`A320059(n+1)%A000203(n+1)`
-/

namespace A186428.P2240458423652796486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320059 (n + 1)) (A000203 (n + 1))

end

end A186428.P2240458423652796486

namespace A186428

/-- `A320059(n+1)%A000203(n+1)` -/
def P2240458423652796486.Spec : Prop :=
  ∀ n, P2240458423652796486.a n = A186428 (n + 1)

end A186428

/-! ## A186428.P746568168554400079

`(A086156(n+1)+A064987(n+1))%A143348(n+1)`
-/

namespace A186428.P746568168554400079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086156 (n + 1) + A064987 (n + 1)) (A143348 (n + 1))

end

end A186428.P746568168554400079

namespace A186428

/-- `(A086156(n+1)+A064987(n+1))%A143348(n+1)` -/
def P746568168554400079.Spec : Prop :=
  ∀ n, P746568168554400079.a n = A186428 (n + 1)

end A186428

/-! ## A186428.P10077908009192216638

`A076401(A340698(n+1))%A143348(n+1)`
-/

namespace A186428.P10077908009192216638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076401 (A340698 (n + 1)).toNat) (A143348 (n + 1))

end

end A186428.P10077908009192216638

namespace A186428

/-- `A076401(A340698(n+1))%A143348(n+1)` -/
def P10077908009192216638.Spec : Prop :=
  ∀ n, P10077908009192216638.a n = A186428 (n + 1)

end A186428

/-! ## A186428.P6429322312866197154

`∑{d}[(n+1)², #]%∑{d}[n+1, #]`
-/

namespace A186428.P6429322312866197154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % (∑ d ∈ Nat.divisors (f2 n), d)

end

end A186428.P6429322312866197154

namespace A186428

/-- `∑{d}[(n+1)², #]%∑{d}[n+1, #]` -/
def P6429322312866197154.Spec : Prop :=
  ∀ n, (P6429322312866197154.a n : ℤ) = A186428 (n + 1)

end A186428

/-!
# A186429: Numbers k such that sum_{i=1..k} d(i)^2 is a square c^2, where d(i) is the number of divisors of i.

The programs for A186429, there is no canonical definition to state claims against.
-/

/-! ## A186429.P2852316547315411413

`eq[1, A002828(A061502(n+1))]+1`
-/

namespace A186429.P2852316547315411413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A061502 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A186429.P2852316547315411413

/-!
# A186430: Generalized Pascal triangle associated with the set of primes.

The programs for A186430, there is no canonical definition to state claims against.
-/

/-! ## A186430.P7643629273912674507

`A278524(A322220(n))`
-/

namespace A186430.P7643629273912674507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278524 (A322220 n).toNat

end

end A186430.P7643629273912674507

/-! ## A186430.P2642147299328681332

`A316272(8^A109042(n))`
-/

namespace A186430.P2642147299328681332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316272 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A109042 n : ℤ))).toNat

end

end A186430.P2642147299328681332

/-! ## A186430.P14652237662545888332

`∏{p}[A022174(n), A010246(#)]`
-/

namespace A186430.P14652237662545888332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A010246 p

end

end A186430.P14652237662545888332

/-! ## A186430.P11185969818049867989

`A094307(∏{p}[A174125(n), #])`
-/

namespace A186430.P11185969818049867989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094307 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A186430.P11185969818049867989

/-! ## A186430.P4957589958061286239

`∏{p}[A256890(n), A103360(#)]`
-/

namespace A186430.P4957589958061286239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A103360 p

end

end A186430.P4957589958061286239

/-!
# A186431: Row sums of A186430.

The programs for A186431, there is no canonical definition to state claims against.
-/

/-! ## A186431.P8046996593343856243

`A066839(A354288(n))+A000045(n)`
-/

namespace A186431.P8046996593343856243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (A354288 n).toNat + A000045 n

end

end A186431.P8046996593343856243

/-!
# A186432: Triangle associated with the set S of squares {0,1,4,9,16,...}.

The programs for A186432, there is no canonical definition to state claims against.
-/

/-! ## A186432.P17692885191956884801

`Δ[∪[2*n, n²+1+n]]*A086645(n)`
-/

namespace A186432.P17692885191956884801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A086645 n

end

end A186432.P17692885191956884801

/-! ## A186432.P2957689627122437892

`A132046(eq[0, A155998(n)])`
-/

namespace A186432.P2957689627122437892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186432.P2957689627122437892

/-! ## A186432.P16605620136043888250

`A086645(n)*A154325(n)`
-/

namespace A186432.P16605620136043888250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 n * A154325 n

end

end A186432.P16605620136043888250

/-! ## A186432.P1571480654937075383

`A132046(comp[A132118(n+1)])`
-/

namespace A186432.P1571480654937075383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132118 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A186432.P1571480654937075383

/-! ## A186432.P3752591408136262960

`A132046(A185868(n+1)-1)`
-/

namespace A186432.P3752591408136262960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 (A185868 (n + 1) - 1).toNat

end

end A186432.P3752591408136262960

/-! ## A186432.P14686940607084110214

`A020639(A100631(n))*A086645(n)`
-/

namespace A186432.P14686940607084110214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A100631 n).toNat * A086645 n

end

end A186432.P14686940607084110214

/-! ## A186432.P10558929504374407783

`A020639(A102413(n))*A086645(n)`
-/

namespace A186432.P10558929504374407783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A102413 n).toNat * A086645 n

end

end A186432.P10558929504374407783

/-! ## A186432.P18342906315550756873

`A006530(A144464(n))*A086645(n)`
-/

namespace A186432.P18342906315550756873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A144464 n).toNat * A086645 n

end

end A186432.P18342906315550756873

/-! ## A186432.P16980567856786458930

`A020639(A157528(n))*A086645(n)`
-/

namespace A186432.P16980567856786458930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157528 n).toNat * A086645 n

end

end A186432.P16980567856786458930

/-! ## A186432.P9726966152376428964

`A020639(A157635(n))*A086645(n)`
-/

namespace A186432.P9726966152376428964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157635 n).toNat * A086645 n

end

end A186432.P9726966152376428964

/-!
# A186434: Number of isosceles triangles that can be formed from the n^2 points of n X n grid of points (or geoboard).

The programs for A186434, there is no canonical definition to state claims against.
-/

/-! ## A186434.P579742059519852100

`4*A271908(n+1)`
-/

namespace A186434.P579742059519852100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A271908 (n + 1)

end

end A186434.P579742059519852100

/-! ## A186434.P10234737768383808645

`A187452(n+1)+A190318(n+1)+A190317(n+1)`
-/

namespace A186434.P10234737768383808645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187452 (n + 1) + (A190318 (n + 1) + A190317 (n + 1))

end

end A186434.P10234737768383808645

/-! ## A186434.P13146406472837717870

`A271910(∑[4*n]+1)`
-/

namespace A186434.P13146406472837717870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271910 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186434.P13146406472837717870

/-! ## A186434.P7119512418818606241

`lcm(2, A271910((n+1)²+n²))`
-/

namespace A186434.P7119512418818606241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A271910 ((n + 1) ^ 2 + n ^ 2))

end

end A186434.P7119512418818606241

/-! ## A186434.P1065767797890512629

`and(-2, A271910(A001844(n)))`
-/

namespace A186434.P1065767797890512629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A271910 (A001844 n).toNat)

end

end A186434.P1065767797890512629

/-!
# A186436: Smallest number that equals n times its last digit, or 0 if no such number exists.

The programs for A186436, there is no canonical definition to state claims against.
-/

/-! ## A186436.P16578335992746352864

`(n+1)*(10/gcd(10, n))%10`
-/

namespace A186436.P16578335992746352864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (SequenceMachineLib.roundAway (10 / (Nat.gcd 10 n : ℚ))) 10

end

end A186436.P16578335992746352864

/-! ## A186436.P15877853739074384665

`(n+1)*A296420(n)%10`
-/

namespace A186436.P15877853739074384665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A296420 n) 10

end

end A186436.P15877853739074384665

/-! ## A186436.P17498370216992489499

`(n+1)*A337084(A069747(n+1))`
-/

namespace A186436.P17498370216992489499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A337084 (A069747 (n + 1)).toNat

end

end A186436.P17498370216992489499

/-! ## A186436.P1737272715395871110

`A038365(n+1)*A337084(A082216(n+1))`
-/

namespace A186436.P1737272715395871110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038365 (n + 1) * A337084 (A082216 (n + 1)).toNat

end

end A186436.P1737272715395871110

/-! ## A186436.P7280507835444481657

`A077342(n+1)*A337084(A082216(n+1))`
-/

namespace A186436.P7280507835444481657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077342 (n + 1) * A337084 (A082216 (n + 1)).toNat

end

end A186436.P7280507835444481657

/-!
# A186437: Maximal number of squarings in an evaluation scheme for x^n achieving the minimal number of operations.

The programs for A186437, there is no canonical definition to state claims against.
-/

/-! ## A186437.P9265875709854004631

`A000523(n+1)-A025469(A348129(n))`
-/

namespace A186437.P9265875709854004631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) - A025469 (A348129 n).toNat

end

end A186437.P9265875709854004631

/-! ## A186437.P12748338261782298226

`A070939(n+1)-A354579(A375123(2*n+1))`
-/

namespace A186437.P12748338261782298226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A354579 (A375123 (2 * n + 1)).toNat

end

end A186437.P12748338261782298226

/-! ## A186437.P1090409479294660704

`(A070939(n+1)-A275216(n))%p?[A010005(n)]`
-/

namespace A186437.P1090409479294660704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (n + 1) - A275216 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A186437.P1090409479294660704

/-! ## A186437.P12104388073299629329

`(A070939(n+1)-A275216(n))*A057427(A339623(n+1))`
-/

namespace A186437.P12104388073299629329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070939 (n + 1) - A275216 n) * A057427 (A339623 (n + 1)).toNat

end

end A186437.P12104388073299629329

/-! ## A186437.P9169041931082589079

`A033265(A005408(n)*A124778(n))`
-/

namespace A186437.P9169041931082589079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (A005408 n * A124778 n).toNat

end

end A186437.P9169041931082589079

/-!
# A186438: Positive numbers whose squares end in two identical digits.

The programs for A186438, the canonical program `A186438.P16064976804736151569` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186438 has offset 1).

The definition of A186438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186438.P16064976804736151569

`ogf((10+2x+8x^2+10x^3+8x^4+2x^5+10x^6)/(1-x-x^7+x^8))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186438

/-- `ogf((10+2x+8x^2+10x^3+8x^4+2x^5+10x^6)/(1-x-x^7+x^8))` -/
def P16064976804736151569.Spec : Prop :=
  ∀ n, P16064976804736151569.a n = A186438 (n + 1)

theorem P16064976804736151569.correct : P16064976804736151569.Spec := by
  intro n
  simp only [A186438, Nat.add_sub_cancel]

end A186438

/-! ## A186438.P17703164575577997569

`∪[A186439(n+1), A346678(n+1)]`
-/

namespace A186438.P17703164575577997569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186438.P17703164575577997569

namespace A186438

/-- `∪[A186439(n+1), A346678(n+1)]` -/
def P17703164575577997569.Spec : Prop :=
  ∀ n, (P17703164575577997569.a n : ℤ) = A186438 (n + 1)

end A186438

/-! ## A186438.P12226398244809538945

`lt[9, A052500(n²)]`
-/

namespace A186438.P12226398244809538945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052500 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186438.P12226398244809538945

namespace A186438

/-- `lt[9, A052500(n²)]` -/
def P12226398244809538945.Spec : Prop :=
  ∀ n, (P12226398244809538945.a n : ℤ) = A186438 (n + 1)

end A186438

/-! ## A186438.P8859566684109301895

`lt[88, A052484(n²)]`
-/

namespace A186438.P8859566684109301895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  88

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052484 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186438.P8859566684109301895

namespace A186438

/-- `lt[88, A052484(n²)]` -/
def P8859566684109301895.Spec : Prop :=
  ∀ n, (P8859566684109301895.a n : ℤ) = A186438 (n + 1)

end A186438

/-!
# A186439: Numbers whose squares end in three identical digits.

The programs for A186439, the canonical program `A186439.P12064815718434708004` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186439 has offset 1).

The definition of A186439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186439.P12064815718434708004

`a(n-7)+500` with `a(0)=38, a(1)=100, a(2)=200, a(3)=300, a(4)=400, a(5)=462, a(6)=500`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186439

/-- `a(n-7)+500` -/
def P12064815718434708004.Spec : Prop :=
  ∀ n, (P12064815718434708004.a n : ℤ) = A186439 (n + 1)

theorem P12064815718434708004.correct : P12064815718434708004.Spec := by
  intro n
  simp only [A186439, Nat.add_sub_cancel]

end A186439

/-! ## A186439.P18417082452675437539

`ogf((38+62x+100x^2+100x^3+100x^4+62x^5+38x^6)/(1-x-x^7+x^8))`
-/

namespace A186439.P18417082452675437539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [38, 62, 100, 100, 100, 62, 38] [1, -1, 0, 0, 0, 0, 0, -1, 1] n

end

end A186439.P18417082452675437539

namespace A186439

/-- `ogf((38+62x+100x^2+100x^3+100x^4+62x^5+38x^6)/(1-x-x^7+x^8))` -/
def P18417082452675437539.Spec : Prop :=
  ∀ n, P18417082452675437539.a n = A186439 (n + 1)

end A186439

/-!
# A186440: Number of prime divisors (counted with multiplicity) of n such that the primitive irreducible trinomial x^n + x^k + 1 is a primitive irreducible polynomial (mod 2) for some k with 0 < k < n (A073726).

The programs for A186440, there is no canonical definition to state claims against.
-/

/-! ## A186440.P9789907183623046245

`A001222(A073726(n+1))`
-/

namespace A186440.P9789907183623046245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A073726 (n + 1)).toNat

end

end A186440.P9789907183623046245

/-! ## A186440.P2198297425027932168

`∑{e}[A073726(n+1), #]`
-/

namespace A186440.P2198297425027932168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073726 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A186440.P2198297425027932168

/-! ## A186440.P10640691634259595997

`A001222(A194125(n+1))%A163466(n)²`
-/

namespace A186440.P10640691634259595997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A194125 (n + 1)).toNat) (A163466 n ^ 2)

end

end A186440.P10640691634259595997

/-! ## A186440.P15835046250283402117

`A001222(A194125(n+1))*A358680(A163466(n)²)`
-/

namespace A186440.P15835046250283402117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A194125 (n + 1)).toNat * A358680 (A163466 n ^ 2).toNat

end

end A186440.P15835046250283402117

/-! ## A186440.P8805194269346222020

`A001222(A194125(n+1))/A001221(A163466(n)²)`
-/

namespace A186440.P8805194269346222020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A194125 (n + 1)).toNat : ℚ) / (A001221 (A163466 n ^ 2).toNat : ℚ)

end

end A186440.P8805194269346222020

/-!
# A186441: Number of n-vertex knight's tours on the 8x8 chessboard summed over all choices for the starting position.

The programs for A186441, there is no canonical definition to state claims against.
-/

/-! ## A186441.P5860031226612890719

`A186851(A052905(n+3))`
-/

namespace A186441.P5860031226612890719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (A052905 (n + 3)).toNat

end

end A186441.P5860031226612890719

/-! ## A186441.P18071133771150818198

`A186851(eq[3, A219347(n)])`
-/

namespace A186441.P18071133771150818198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186441.P18071133771150818198

/-! ## A186441.P7841331949226021998

`A186851(eq[5, A193592(n)])`
-/

namespace A186441.P7841331949226021998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186441.P7841331949226021998

/-! ## A186441.P2965320508874226611

`A186851(eq[8, A258709(n)])`
-/

namespace A186441.P2965320508874226611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186441.P2965320508874226611

/-!
# A186442: In base 2, excess of lunar sum of lunar divisors of n over number of lunar divisors of n.

The programs for A186442, there is no canonical definition to state claims against.
-/

/-! ## A186442.P8868045209299312203

`A087416(n+1)-A087029(n+1)`
-/

namespace A186442.P8868045209299312203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087416 (n + 1) - A087029 (n + 1)

end

end A186442.P8868045209299312203

/-!
# A186443: Records in A087029.

The programs for A186443, there is no canonical definition to state claims against.
-/

/-! ## A186443.P14230106865793394213

`record[A087029(n+1)]`
-/

namespace A186443.P14230106865793394213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186443.P14230106865793394213

/-! ## A186443.P14763814891120195343

`record[A186951(n+1)]`
-/

namespace A186443.P14763814891120195343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186443.P14763814891120195343

/-! ## A186443.P2859879516487212971

`A186951(A075426(n))`
-/

namespace A186443.P2859879516487212971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186951 (A075426 n).toNat

end

end A186443.P2859879516487212971

/-! ## A186443.P8777709125690718243

`A186951(A075427(n))`
-/

namespace A186443.P8777709125690718243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186951 (A075427 n).toNat

end

end A186443.P8777709125690718243

/-! ## A186443.P12169725785323245569

`A087029(A094026(n+1))`
-/

namespace A186443.P12169725785323245569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087029 (A094026 (n + 1)).toNat

end

end A186443.P12169725785323245569

/-!
# A186444: The count of numbers <= n for which 3 is an infinitary divisor.

The programs for A186444, the canonical program `A186444.P10702459444175966171` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186444 has offset 1).

The definition of A186444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186444.P10702459444175966171

`floor((n+1)/3)-a(floor((n+1)/3)-1)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186444

/-- `floor((n+1)/3)-a(floor((n+1)/3)-1)` -/
def P10702459444175966171.Spec : Prop :=
  ∀ n, P10702459444175966171.a n = A186444 (n + 1)

theorem P10702459444175966171.correct : P10702459444175966171.Spec := by
  intro n
  simp only [A186444, Nat.add_sub_cancel]

end A186444

/-! ## A186444.P4437379836336284233

`∑[val(n+1, 3)%2]`
-/

namespace A186444.P4437379836336284233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 3 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186444.P4437379836336284233

namespace A186444

/-- `∑[val(n+1, 3)%2]` -/
def P4437379836336284233.Spec : Prop :=
  ∀ n, (P4437379836336284233.a n : ℤ) = A186444 (n + 1)

end A186444

/-! ## A186444.P12057451501689379367

`∑[and(1, val(n+1, 3))]`
-/

namespace A186444.P12057451501689379367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (n + 1) 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186444.P12057451501689379367

namespace A186444

/-- `∑[and(1, val(n+1, 3))]` -/
def P12057451501689379367.Spec : Prop :=
  ∀ n, (P12057451501689379367.a n : ℤ) = A186444 (n + 1)

end A186444

/-! ## A186444.P12872429754486952863

`∑[2-gcd(2, val(n+1, 3))]`
-/

namespace A186444.P12872429754486952863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 (SequenceMachineLib.valuation (n + 1) 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186444.P12872429754486952863

namespace A186444

/-- `∑[2-gcd(2, val(n+1, 3))]` -/
def P12872429754486952863.Spec : Prop :=
  ∀ n, P12872429754486952863.a n = A186444 (n + 1)

end A186444

/-! ## A186444.P8092596029459294749

`∑[val(∏{p}[val(n+1, 3)+1, #], 2)]`
-/

namespace A186444.P8092596029459294749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 3 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186444.P8092596029459294749

namespace A186444

/-- `∑[val(∏{p}[val(n+1, 3)+1, #], 2)]` -/
def P8092596029459294749.Spec : Prop :=
  ∀ n, (P8092596029459294749.a n : ℤ) = A186444 (n + 1)

end A186444

/-! ## A186444.P16198580111837604382

`∑[A182581(n+1)]`
-/

namespace A186444.P16198580111837604382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186444.P16198580111837604382

namespace A186444

/-- `∑[A182581(n+1)]` -/
def P16198580111837604382.Spec : Prop :=
  ∀ n, P16198580111837604382.a n = A186444 (n + 1)

end A186444

/-! ## A186444.P10052834499261911570

`∑[abs(A163533(n+1))]`
-/

namespace A186444.P10052834499261911570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163533 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186444.P10052834499261911570

namespace A186444

/-- `∑[abs(A163533(n+1))]` -/
def P10052834499261911570.Spec : Prop :=
  ∀ n, P10052834499261911570.a n = A186444 (n + 1)

end A186444

/-! ## A186444.P15549376704974755229

`∑[and(1, Δ[A054861(n)])]`
-/

namespace A186444.P15549376704974755229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186444.P15549376704974755229

namespace A186444

/-- `∑[and(1, Δ[A054861(n)])]` -/
def P15549376704974755229.Spec : Prop :=
  ∀ n, P15549376704974755229.a n = A186444 (n + 1)

end A186444

/-! ## A186444.P13066091189341311174

`∑[1-A014578(n+1)]`
-/

namespace A186444.P13066091189341311174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186444.P13066091189341311174

namespace A186444

/-- `∑[1-A014578(n+1)]` -/
def P13066091189341311174.Spec : Prop :=
  ∀ n, P13066091189341311174.a n = A186444 (n + 1)

end A186444

/-! ## A186444.P7434707731373585352

`∑[A014578(3*(n+1))]`
-/

namespace A186444.P7434707731373585352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186444.P7434707731373585352

namespace A186444

/-- `∑[A014578(3*(n+1))]` -/
def P7434707731373585352.Spec : Prop :=
  ∀ n, P7434707731373585352.a n = A186444 (n + 1)

end A186444

/-! ## A186444.P14952605968795609626

`∑[val(A007913(n+1), 3)]`
-/

namespace A186444.P14952605968795609626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007913 (n + 1)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186444.P14952605968795609626

namespace A186444

/-- `∑[val(A007913(n+1), 3)]` -/
def P14952605968795609626.Spec : Prop :=
  ∀ n, (P14952605968795609626.a n : ℤ) = A186444 (n + 1)

end A186444

/-! ## A186444.P188854182473614345

`∑[and(1, A007949(n+1))]`
-/

namespace A186444.P188854182473614345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007949 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186444.P188854182473614345

namespace A186444

/-- `∑[and(1, A007949(n+1))]` -/
def P188854182473614345.Spec : Prop :=
  ∀ n, P188854182473614345.a n = A186444 (n + 1)

end A186444

/-! ## A186444.P11466974951278354517

`∑[and(1, A088838(n+1))]`
-/

namespace A186444.P11466974951278354517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A088838 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186444.P11466974951278354517

namespace A186444

/-- `∑[and(1, A088838(n+1))]` -/
def P11466974951278354517.Spec : Prop :=
  ∀ n, P11466974951278354517.a n = A186444 (n + 1)

end A186444

/-! ## A186444.P16113023186880007007

`∑[1-abs(Δ[A163528(n)])]`
-/

namespace A186444.P16113023186880007007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186444.P16113023186880007007

namespace A186444

/-- `∑[1-abs(Δ[A163528(n)])]` -/
def P16113023186880007007.Spec : Prop :=
  ∀ n, P16113023186880007007.a n = A186444 (n + 1)

end A186444

/-! ## A186444.P3680581796487087300

`1-A050294(n+1)+n`
-/

namespace A186444.P3680581796487087300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A050294 (n + 1) + (n : ℤ)

end

end A186444.P3680581796487087300

namespace A186444

/-- `1-A050294(n+1)+n` -/
def P3680581796487087300.Spec : Prop :=
  ∀ n, P3680581796487087300.a n = A186444 (n + 1)

end A186444

/-! ## A186444.P8639363252460383692

`∑[1-abs(A163532(n+1))]`
-/

namespace A186444.P8639363252460383692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A163532 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186444.P8639363252460383692

namespace A186444

/-- `∑[1-abs(A163532(n+1))]` -/
def P8639363252460383692.Spec : Prop :=
  ∀ n, P8639363252460383692.a n = A186444 (n + 1)

end A186444

/-! ## A186444.P10329956029135712150

`∑[A163532(3*(n+1))²]`
-/

namespace A186444.P10329956029135712150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 (3 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186444.P10329956029135712150

namespace A186444

/-- `∑[A163532(3*(n+1))²]` -/
def P10329956029135712150.Spec : Prop :=
  ∀ n, P10329956029135712150.a n = A186444 (n + 1)

end A186444

/-! ## A186444.P4762463208224037944

`∑[gcd(2, A051064(n+1))-1]`
-/

namespace A186444.P4762463208224037944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A051064 (n + 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186444.P4762463208224037944

namespace A186444

/-- `∑[gcd(2, A051064(n+1))-1]` -/
def P4762463208224037944.Spec : Prop :=
  ∀ n, P4762463208224037944.a n = A186444 (n + 1)

end A186444

/-! ## A186444.P11275495891328005738

`A000027(n+1)%A050294(n+1)`
-/

namespace A186444.P11275495891328005738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A050294 (n + 1))

end

end A186444.P11275495891328005738

namespace A186444

/-- `A000027(n+1)%A050294(n+1)` -/
def P11275495891328005738.Spec : Prop :=
  ∀ n, P11275495891328005738.a n = A186444 (n + 1)

end A186444

/-!
# A186445: The number of partitions of n in which the first part is at least four times larger than the second part.

The programs for A186445, there is no canonical definition to state claims against.
-/

/-! ## A186445.P17850452753782076945

`∑[A185325(n)]`
-/

namespace A186445.P17850452753782076945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186445.P17850452753782076945

/-! ## A186445.P2230712219584291666

`∑[A026798(n+5)]`
-/

namespace A186445.P2230712219584291666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186445.P2230712219584291666

/-! ## A186445.P3526403265531691902

`A185325(char[6]+n)+a(n-1)` with `a(0)=1`
-/

namespace A186445.P3526403265531691902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A185325 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A186445.P3526403265531691902

/-! ## A186445.P13790516340703507336

`∑[A008484(n)-A026797(abs(1-n)+1)]`
-/

namespace A186445.P13790516340703507336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n - A026797 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186445.P13790516340703507336

/-! ## A186445.P8543388032376760074

`∑[A026798(A020710(n))*A060576(n)]`
-/

namespace A186445.P8543388032376760074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 (A020710 n).toNat * A060576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186445.P8543388032376760074

/-! ## A186445.P14270245898345422518

`A026797(n+1)+∑[A008484(n)-A026797(n+1)]`
-/

namespace A186445.P14270245898345422518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n - A026797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026797 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186445.P14270245898345422518

/-! ## A186445.P10196685063666268572

`∑[A026794(A167499(n+3))]`
-/

namespace A186445.P10196685063666268572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A167499 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186445.P10196685063666268572

/-! ## A186445.P782213769946234126

`∑[A026794(A155212(n)+13)]`
-/

namespace A186445.P782213769946234126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A155212 n + 13).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186445.P782213769946234126

/-! ## A186445.P12687657710085023151

`∑[A026794(A056000(n)+15)]`
-/

namespace A186445.P12687657710085023151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A056000 n + 15).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186445.P12687657710085023151

/-! ## A186445.P13636299515546075967

`∑[A026794(A000124(n+4)+4)]`
-/

namespace A186445.P13636299515546075967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A000124 (n + 4) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186445.P13636299515546075967

/-! ## A186445.P14344811621516634161

`∑[A026794(A000217(n+4)+5)]`
-/

namespace A186445.P14344811621516634161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A000217 (n + 4) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186445.P14344811621516634161

/-! ## A186445.P696314299572328834

`∑[A026794(A055998(n+2)+8)]`
-/

namespace A186445.P696314299572328834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A055998 (n + 2) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186445.P696314299572328834

/-! ## A186445.P10606950895191202316

`∑[A303810(Δ[A264443(n)])]`
-/

namespace A186445.P10606950895191202316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303810 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186445.P10606950895191202316

/-!
# A186446: Expansion of 1/(1 - 7*x + 2*x^2).

The programs for A186446, the canonical program `A186446.P8770449267148380804` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186446 has offset 0).

The definition of A186446 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-7x+2x^2))` (program `A186446.P8770449267148380804`, by `A186446.P8770449267148380804.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186446.P8770449267148380804

`ogf(1/(1-7x+2x^2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186446

/-- `ogf(1/(1-7x+2x^2))` -/
def P8770449267148380804.Spec : Prop :=
  ∀ n, P8770449267148380804.a n = A186446 n

theorem P8770449267148380804.correct : P8770449267148380804.Spec := by
  intro n
  simp only [A186446]

end A186446

/-! ## A186446.P9354498782445816369

`7*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A186446.P9354498782445816369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  7 * a (n - 1) - 2 * a (n - 2)

end

end A186446.P9354498782445816369

namespace A186446

/-- `7*a(n-1)-2*a(n-2)` -/
def P9354498782445816369.Spec : Prop :=
  ∀ n, P9354498782445816369.a n = A186446 n

end A186446

/-! ## A186446.P4169464970034905611

`((7+sqrt(41))^(1+n)-(7-sqrt(41))^(1+n))/(2^(1+n)*sqrt(41))`
-/

namespace A186446.P4169464970034905611
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((7 + Real.sqrt (41 : ℝ)) ^ (1 + n) - (7 - Real.sqrt (41 : ℝ)) ^ (1 + n)) / ((2 ^ (1 + n) : ℝ) * Real.sqrt (41 : ℝ))

end

end A186446.P4169464970034905611

namespace A186446

/-- `((7+sqrt(41))^(1+n)-(7-sqrt(41))^(1+n))/(2^(1+n)*sqrt(41))` -/
def P4169464970034905611.Spec : Prop :=
  ∀ n, P4169464970034905611.a n = (A186446 n : ℝ)

end A186446

/-! ## A186446.P9137171757491598326

`∑[A122074(n)]`
-/

namespace A186446.P9137171757491598326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186446.P9137171757491598326

namespace A186446

/-- `∑[A122074(n)]` -/
def P9137171757491598326.Spec : Prop :=
  ∀ n, P9137171757491598326.a n = A186446 n

end A186446

/-! ## A186446.P9808807171234342751

`a(n-1)+A122074(n)+A000007(n+1)` with `a(0)=1`
-/

namespace A186446.P9808807171234342751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A122074 n + A000007 (n + 1))

end

end A186446.P9808807171234342751

namespace A186446

/-- `a(n-1)+A122074(n)+A000007(n+1)` -/
def P9808807171234342751.Spec : Prop :=
  ∀ n, P9808807171234342751.a n = A186446 n

end A186446

/-! ## A186446.P10406487118991138945

`a(n-1)+A122074(n)*A178334(n)` with `a(0)=1`
-/

namespace A186446.P10406487118991138945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A122074 n * A178334 n

end

end A186446.P10406487118991138945

namespace A186446

/-- `a(n-1)+A122074(n)*A178334(n)` -/
def P10406487118991138945.Spec : Prop :=
  ∀ n, P10406487118991138945.a n = A186446 n

end A186446

/-! ## A186446.P9234426794173987176

`floor((a(n-1)²-2)/a(n-2))` with `a(0)=1, a(1)=7`
-/

namespace A186446.P9234426794173987176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  ⌊(a (n - 1) ^ 2 - 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A186446.P9234426794173987176

namespace A186446

/-- `floor((a(n-1)²-2)/a(n-2))` -/
def P9234426794173987176.Spec : Prop :=
  ∀ n, P9234426794173987176.a n = A186446 n

end A186446

/-!
# A186447: a(n)=a(floor(n/3)+a(n-1)*floor(n/4)) XOR a(floor(n/2)).

The programs for A186447, there is no canonical definition to state claims against.
-/

/-! ## A186447.P15813098005300452348

`A120944(A162886(2*(n+1)))%2`
-/

namespace A186447.P15813098005300452348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120944 (A162886 (2 * (n + 1))).toNat) 2

end

end A186447.P15813098005300452348

/-! ## A186447.P3439296221425846622

`A374769(A374760(n)+A374740(3*n+4))`
-/

namespace A186447.P3439296221425846622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374769 (A374760 n + A374740 (3 * n + 4)).toNat

end

end A186447.P3439296221425846622

/-! ## A186447.P11364631400658277014

`A285255(A298882(n+1)+∑[A079542(n+1)])`
-/

namespace A186447.P11364631400658277014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285255 (A298882 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186447.P11364631400658277014

/-! ## A186447.P1095535285029293851

`A071030(A115719(n+1)+A061601(n+1))`
-/

namespace A186447.P1095535285029293851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071030 (A115719 (n + 1) + A061601 (n + 1)).toNat

end

end A186447.P1095535285029293851

/-!
# A186448: E.g.f. A(x) satisfies 2*A(x) = x*(1 + A(x) + exp(A(x))).

The programs for A186448, there is no canonical definition to state claims against.
-/

/-! ## A186448.P742493081682461463

`A229046(∑[ceil(sqrt(n))!!])`
-/

namespace A186448.P742493081682461463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial ⌈Real.sqrt (n : ℝ)⌉.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229046 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186448.P742493081682461463

/-!
# A186449: Numbers k such that k! + 2^k - 1 is prime.

The programs for A186449, there is no canonical definition to state claims against.
-/

/-! ## A186449.P3289162897360407405

`∑[A102087(a(n-1))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A186449.P3289162897360407405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 2] fun n f1 =>
  A102087 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186449.P3289162897360407405

/-! ## A186449.P16877143445789807041

`∑[ceil(A338255(n+1)/(n+1))]-3`
-/

namespace A186449.P16877143445789807041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A338255 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A186449.P16877143445789807041

/-! ## A186449.P16728844160784178606

`∑[A000088(a(n-1)+a(n-2)-n²%3)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A186449.P16728844160784178606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  A000088 (f1 (n - 1) + (f1 (n - 2) - ((n ^ 2 % 3 : ℕ) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186449.P16728844160784178606

/-!
# A186450: Primes of the form k! + 2^k - 1.

The programs for A186450, there is no canonical definition to state claims against.
-/

/-! ## A186450.P13137089153739726677

`record[A139023(n+1)]`
-/

namespace A186450.P13137089153739726677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186450.P13137089153739726677

/-!
# A186451: E.g.f. A(x) satisfies A(x)=exp(x*A(x))*(1+x*A(x))/(1-x*A(x)-x^2*A(x)^2).

The programs for A186451, there is no canonical definition to state claims against.
-/

/-! ## A186451.P14405086308557055247

`A144066(n)+A139600(A296122(3*n))`
-/

namespace A186451.P14405086308557055247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144066 n + A139600 (A296122 (3 * n)).toNat

end

end A186451.P14405086308557055247

/-!
# A186453: Number of (n+1)X(n+1) binary arrays with every 2X2 subblock commuting with each of its horizontal and vertical 2X2 subblock neighbors.

The programs for A186453, there is no canonical definition to state claims against.
-/

/-! ## A186453.P11220293482287378519

`A186462(∑[4*n]+1)`
-/

namespace A186453.P11220293482287378519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186453.P11220293482287378519

/-! ## A186453.P11559811344613136390

`record[A186462(A152271(n²))]`
-/

namespace A186453.P11559811344613136390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186453.P11559811344613136390

/-! ## A186453.P13389678584620744007

`record[A186462(A003602((n+1)²))]`
-/

namespace A186453.P13389678584620744007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A003602 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186453.P13389678584620744007

/-! ## A186453.P10286449953715896085

`lcm((-1)^n, A186462(A001844(n)))`
-/

namespace A186453.P10286449953715896085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A186462 (A001844 n).toNat)

end

end A186453.P10286449953715896085

/-! ## A186453.P4021912855664923460

`record[gcd(A114327(n), A186462(n+1))]`
-/

namespace A186453.P4021912855664923460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A186462 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186453.P4021912855664923460

/-!
# A186454: Number of (n+1) X 2 binary arrays with every 2 X 2 subblock commuting with each of its horizontal and vertical 2 X 2 subblock neighbors.

The programs for A186454, the canonical program `A186454.P6162941445843379776` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186454 has offset 1).

The definition of A186454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 549 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186454.P9957892305425180423

`ogf((16-11x+9x^3-6x^4-3x^5+2x^6+x^7)/(1-2x+2x^3-2x^4+x^5))`
-/

namespace A186454.P9957892305425180423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, -11, 0, 9, -6, -3, 2, 1] [1, -2, 0, 2, -2, 1] n

end

end A186454.P9957892305425180423

namespace A186454

/-- `ogf((16-11x+9x^3-6x^4-3x^5+2x^6+x^7)/(1-2x+2x^3-2x^4+x^5))` -/
def P9957892305425180423.Spec : Prop :=
  ∀ n, P9957892305425180423.a n = A186454 (n + 1)

end A186454

/-! ## A186454.P6162941445843379776

`2*a(n-1)-2*a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=16, a(1)=21, a(2)=42, a(3)=61, a(4)=106, a(5)=151, a(6)=245, a(7)=359`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186454

/-- `2*a(n-1)-2*a(n-3)+2*a(n-4)-a(n-5)` -/
def P6162941445843379776.Spec : Prop :=
  ∀ n, P6162941445843379776.a n = A186454 (n + 1)

theorem P6162941445843379776.correct : P6162941445843379776.Spec := by
  intro n
  simp only [A186454, Nat.add_sub_cancel]

end A186454

/-! ## A186454.P2557606378710039040

`A187363(∑[n+1])`
-/

namespace A186454.P2557606378710039040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187363 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186454.P2557606378710039040

namespace A186454

/-- `A187363(∑[n+1])` -/
def P2557606378710039040.Spec : Prop :=
  ∀ n, P2557606378710039040.a n = A186454 (n + 1)

end A186454

/-! ## A186454.P18323810281745186866

`record[A187363(A000217(A282510(n+1)))]`
-/

namespace A186454.P18323810281745186866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187363 (A000217 (A282510 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186454.P18323810281745186866

namespace A186454

/-- `record[A187363(A000217(A282510(n+1)))]` -/
def P18323810281745186866.Spec : Prop :=
  ∀ n, P18323810281745186866.a n = A186454 (n + 1)

end A186454

/-! ## A186454.P3553919185899960231

`A186462(∑[n]+1)`
-/

namespace A186454.P3553919185899960231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186454.P3553919185899960231

namespace A186454

/-- `A186462(∑[n]+1)` -/
def P3553919185899960231.Spec : Prop :=
  ∀ n, P3553919185899960231.a n = A186454 (n + 1)

end A186454

/-! ## A186454.P10171944072281206761

`record[A186462(A056534(n+1))]`
-/

namespace A186454.P10171944072281206761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186454.P10171944072281206761

namespace A186454

/-- `record[A186462(A056534(n+1))]` -/
def P10171944072281206761.Spec : Prop :=
  ∀ n, P10171944072281206761.a n = A186454 (n + 1)

end A186454

/-! ## A186454.P14672580051046495854

`record[A186462(A114091(n+1))]`
-/

namespace A186454.P14672580051046495854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186454.P14672580051046495854

namespace A186454

/-- `record[A186462(A114091(n+1))]` -/
def P14672580051046495854.Spec : Prop :=
  ∀ n, P14672580051046495854.a n = A186454 (n + 1)

end A186454

/-! ## A186454.P954750762282226673

`record[A186462(A246276(n+1))]`
-/

namespace A186454.P954750762282226673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186454.P954750762282226673

namespace A186454

/-- `record[A186462(A246276(n+1))]` -/
def P954750762282226673.Spec : Prop :=
  ∀ n, P954750762282226673.a n = A186454 (n + 1)

end A186454

/-! ## A186454.P11259580171424841699

`record[A186462(A249742(n+1))]`
-/

namespace A186454.P11259580171424841699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186454.P11259580171424841699

namespace A186454

/-- `record[A186462(A249742(n+1))]` -/
def P11259580171424841699.Spec : Prop :=
  ∀ n, P11259580171424841699.a n = A186454 (n + 1)

end A186454

/-! ## A186454.P10008872261965031508

`or(char[1], A186462(A000124(n)))`
-/

namespace A186454.P10008872261965031508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186462 (A000124 n).toNat)

end

end A186454.P10008872261965031508

namespace A186454

/-- `or(char[1], A186462(A000124(n)))` -/
def P10008872261965031508.Spec : Prop :=
  ∀ n, P10008872261965031508.a n = A186454 (n + 1)

end A186454

/-!
# A186455: Number of (n+1) X 3 binary arrays with every 2 X 2 subblock commuting with each of its horizontal and vertical 2 X 2 subblock neighbors.

The programs for A186455, the canonical program `A186455.P3458631046843386350` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186455 has offset 1).

The definition of A186455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 548 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186455.P4672844829876065514

`ogf((21-12x-9x^2+28x^3-30x^4+4x^5+2x^6+4x^7)/(1-2x+2x^3-2x^4+x^5))`
-/

namespace A186455.P4672844829876065514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [21, -12, -9, 28, -30, 4, 2, 4] [1, -2, 0, 2, -2, 1] n

end

end A186455.P4672844829876065514

namespace A186455

/-- `ogf((21-12x-9x^2+28x^3-30x^4+4x^5+2x^6+4x^7)/(1-2x+2x^3-2x^4+x^5))` -/
def P4672844829876065514.Spec : Prop :=
  ∀ n, P4672844829876065514.a n = A186455 (n + 1)

end A186455

/-! ## A186455.P3458631046843386350

`2*a(n-1)-2*a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=21, a(1)=30, a(2)=51, a(3)=88, a(4)=128, a(5)=197, a(6)=292, a(7)=457`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186455

/-- `2*a(n-1)-2*a(n-3)+2*a(n-4)-a(n-5)` -/
def P3458631046843386350.Spec : Prop :=
  ∀ n, P3458631046843386350.a n = A186455 (n + 1)

theorem P3458631046843386350.correct : P3458631046843386350.Spec := by
  intro n
  simp only [A186455, Nat.add_sub_cancel]

end A186455

/-! ## A186455.P15538742831834821122

`A190023(∑[n+1])`
-/

namespace A186455.P15538742831834821122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190023 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186455.P15538742831834821122

namespace A186455

/-- `A190023(∑[n+1])` -/
def P15538742831834821122.Spec : Prop :=
  ∀ n, P15538742831834821122.a n = A186455 (n + 1)

end A186455

/-! ## A186455.P18036844217020353817

`A186462(∑[n+1]+2)`
-/

namespace A186455.P18036844217020353817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186455.P18036844217020353817

namespace A186455

/-- `A186462(∑[n+1]+2)` -/
def P18036844217020353817.Spec : Prop :=
  ∀ n, P18036844217020353817.a n = A186455 (n + 1)

end A186455

/-! ## A186455.P15395628609909061265

`record[root(A190023(n+1), A130321(n))]`
-/

namespace A186455.P15395628609909061265
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A190023 (n + 1) : ℝ) ^ (1 / (A130321 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186455.P15395628609909061265

namespace A186455

/-- `record[root(A190023(n+1), A130321(n))]` -/
def P15395628609909061265.Spec : Prop :=
  ∀ n, P15395628609909061265.a n = (A186455 (n + 1) : ℝ)

end A186455

/-! ## A186455.P11924920664304036672

`record[gcd(A025581(n), A190023(n+1))]`
-/

namespace A186455.P11924920664304036672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A190023 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186455.P11924920664304036672

namespace A186455

/-- `record[gcd(A025581(n), A190023(n+1))]` -/
def P11924920664304036672.Spec : Prop :=
  ∀ n, (P11924920664304036672.a n : ℤ) = A186455 (n + 1)

end A186455

/-! ## A186455.P16938238016648831636

`record[root(A190023(n+1), A004736(n+1))]`
-/

namespace A186455.P16938238016648831636
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A190023 (n + 1) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186455.P16938238016648831636

namespace A186455

/-- `record[root(A190023(n+1), A004736(n+1))]` -/
def P16938238016648831636.Spec : Prop :=
  ∀ n, P16938238016648831636.a n = (A186455 (n + 1) : ℝ)

end A186455

/-! ## A186455.P2345639544715109230

`record[A190023(n+1)^(A057944(n+1)-n)]`
-/

namespace A186455.P2345639544715109230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190023 (n + 1) : ℚ) ^ (A057944 (n + 1) - (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186455.P2345639544715109230

namespace A186455

/-- `record[A190023(n+1)^(A057944(n+1)-n)]` -/
def P2345639544715109230.Spec : Prop :=
  ∀ n, P2345639544715109230.a n = (A186455 (n + 1) : ℚ)

end A186455

/-! ## A186455.P10132727130599158726

`record[A186462(A249742(2*(n+1))-1)]`
-/

namespace A186455.P10132727130599158726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A249742 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186455.P10132727130599158726

namespace A186455

/-- `record[A186462(A249742(2*(n+1))-1)]` -/
def P10132727130599158726.Spec : Prop :=
  ∀ n, P10132727130599158726.a n = A186455 (n + 1)

end A186455

/-! ## A186455.P14677939752719904002

`lcm(A020985(n), A186462(A034856(n+1)+1))`
-/

namespace A186455.P14677939752719904002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A186462 (A034856 (n + 1) + 1).toNat)

end

end A186455.P14677939752719904002

namespace A186455

/-- `lcm(A020985(n), A186462(A034856(n+1)+1))` -/
def P14677939752719904002.Spec : Prop :=
  ∀ n, (P14677939752719904002.a n : ℤ) = A186455 (n + 1)

end A186455

/-!
# A186456: Number of (n+1) X 4 binary arrays with every 2 X 2 subblock commuting with each of its horizontal and vertical 2 X 2 subblock neighbors.

The programs for A186456, the canonical program `A186456.P6682010603589511950` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186456 has offset 1).

The definition of A186456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 547 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186456.P6682010603589511950

`ogf((42-33x+9x^2+24x^3-36x^4-16x^5+19x^6-7x^7+16x^8)/(1-2x+2x^3-2x^4+x^5))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186456

/-- `ogf((42-33x+9x^2+24x^3-36x^4-16x^5+19x^6-7x^7+16x^8)/(1-2x+2x^3-2x^4+x^5))` -/
def P6682010603589511950.Spec : Prop :=
  ∀ n, P6682010603589511950.a n = A186456 (n + 1)

theorem P6682010603589511950.correct : P6682010603589511950.Spec := by
  intro n
  simp only [A186456, Nat.add_sub_cancel]

end A186456

/-! ## A186456.P14009351766017241501

`A186462(∑[n+2]+4)`
-/

namespace A186456.P14009351766017241501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186456.P14009351766017241501

namespace A186456

/-- `A186462(∑[n+2]+4)` -/
def P14009351766017241501.Spec : Prop :=
  ∀ n, P14009351766017241501.a n = A186456 (n + 1)

end A186456

/-! ## A186456.P14707230118943198037

`or(2, A186462(A167614(n+1)))`
-/

namespace A186456.P14707230118943198037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A186462 (A167614 (n + 1)).toNat)

end

end A186456.P14707230118943198037

namespace A186456

/-- `or(2, A186462(A167614(n+1)))` -/
def P14707230118943198037.Spec : Prop :=
  ∀ n, P14707230118943198037.a n = A186456 (n + 1)

end A186456

/-! ## A186456.P11418565163987856216

`or(2, A186462(A167499(n)+n))`
-/

namespace A186456.P11418565163987856216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A186462 (A167499 n + (n : ℤ)).toNat)

end

end A186456.P11418565163987856216

namespace A186456

/-- `or(2, A186462(A167499(n)+n))` -/
def P11418565163987856216.Spec : Prop :=
  ∀ n, P11418565163987856216.a n = A186456 (n + 1)

end A186456

/-! ## A186456.P10454470799439066810

`or(2, A186462(A034856(n+1)+5))`
-/

namespace A186456.P10454470799439066810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A186462 (A034856 (n + 1) + 5).toNat)

end

end A186456.P10454470799439066810

namespace A186456

/-- `or(2, A186462(A034856(n+1)+5))` -/
def P10454470799439066810.Spec : Prop :=
  ∀ n, P10454470799439066810.a n = A186456 (n + 1)

end A186456

/-! ## A186456.P9598488400386781809

`A186462(A055998(n)+6)+and(2, n²)`
-/

namespace A186456.P9598488400386781809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A055998 n + 6).toNat + (Nat.land 2 (n ^ 2) : ℤ)

end

end A186456.P9598488400386781809

namespace A186456

/-- `A186462(A055998(n)+6)+and(2, n²)` -/
def P9598488400386781809.Spec : Prop :=
  ∀ n, P9598488400386781809.a n = A186456 (n + 1)

end A186456

/-! ## A186456.P15172979208888285286

`lcm(A020985(n), A186462(A034856(n+1)+5))`
-/

namespace A186456.P15172979208888285286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A186462 (A034856 (n + 1) + 5).toNat)

end

end A186456.P15172979208888285286

namespace A186456

/-- `lcm(A020985(n), A186462(A034856(n+1)+5))` -/
def P15172979208888285286.Spec : Prop :=
  ∀ n, (P15172979208888285286.a n : ℤ) = A186456 (n + 1)

end A186456

/-! ## A186456.P15078454551591730047

`A014963(12*n+6)*A186462(A167614(n+1))`
-/

namespace A186456.P15078454551591730047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A186462 (A167614 (n + 1)).toNat

end

end A186456.P15078454551591730047

namespace A186456

/-- `A014963(12*n+6)*A186462(A167614(n+1))` -/
def P15078454551591730047.Spec : Prop :=
  ∀ n, P15078454551591730047.a n = A186456 (n + 1)

end A186456

/-! ## A186456.P16891189243832003054

`A186462(A167614(n+1))+C(n, A000040(n+1))`
-/

namespace A186456.P16891189243832003054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A167614 (n + 1)).toNat + (Nat.choose n (A000040 (n + 1)).toNat : ℤ)

end

end A186456.P16891189243832003054

namespace A186456

/-- `A186462(A167614(n+1))+C(n, A000040(n+1))` -/
def P16891189243832003054.Spec : Prop :=
  ∀ n, P16891189243832003054.a n = A186456 (n + 1)

end A186456

/-! ## A186456.P5288494404553275071

`A186462(A167614(n+1))+A001222(C(2, n+2)!)`
-/

namespace A186456.P5288494404553275071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A167614 (n + 1)).toNat + A001222 (Nat.factorial (Nat.choose 2 (n + 2)))

end

end A186456.P5288494404553275071

namespace A186456

/-- `A186462(A167614(n+1))+A001222(C(2, n+2)!)` -/
def P5288494404553275071.Spec : Prop :=
  ∀ n, P5288494404553275071.a n = A186456 (n + 1)

end A186456

/-!
# A186457: Number of (n+1) X 5 binary arrays with every 2 X 2 subblock commuting with each of its horizontal and vertical 2 X 2 subblock neighbors.

The programs for A186457, there is no canonical definition to state claims against.
-/

/-! ## A186457.P9499899981940400809

`A186462(∑[n+3]+7)`
-/

namespace A186457.P9499899981940400809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186457.P9499899981940400809

/-! ## A186457.P985702209230502726

`record[A186462(A000217(abs(2-n))+4)]`
-/

namespace A186457.P985702209230502726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A000217 |2 - (n : ℤ)|.toNat + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186457.P985702209230502726

/-! ## A186457.P3927538776341703266

`abs(1-A186462(A052905(n)+9))+1`
-/

namespace A186457.P3927538776341703266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A186462 (A052905 n + 9).toNat| + 1

end

end A186457.P3927538776341703266

/-! ## A186457.P17251887629406135682

`abs(1-A186462(A055999(n)+10))+1`
-/

namespace A186457.P17251887629406135682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A186462 (A055999 n + 10).toNat| + 1

end

end A186457.P17251887629406135682

/-! ## A186457.P5108969089950591658

`or(char[9], A186462(A000217(n+3)+4))`
-/

namespace A186457.P5108969089950591658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186462 (A000217 (n + 3) + 4).toNat)

end

end A186457.P5108969089950591658

/-! ## A186457.P4066982903430626927

`abs(1-A186462(A167614(n+2)+1))+1`
-/

namespace A186457.P4066982903430626927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A186462 (A167614 (n + 2) + 1).toNat| + 1

end

end A186457.P4066982903430626927

/-! ## A186457.P10425617175990633228

`A007318(C(2, n))*A186462(A000217(n+3)+4)`
-/

namespace A186457.P10425617175990633228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A186462 (A000217 (n + 3) + 4).toNat

end

end A186457.P10425617175990633228

/-! ## A186457.P10776210212962184658

`A000040(n+2)%2*A186462(A000217(n+3)+4)`
-/

namespace A186457.P10776210212962184658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A186462 (A000217 (n + 3) + 4).toNat

end

end A186457.P10776210212962184658

/-! ## A186457.P16653715484356400179

`A000045(or(n, -2)+3)*A186462(A000217(n+3)+4)`
-/

namespace A186457.P16653715484356400179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.lor (n : ℤ) (-2) + 3).toNat * A186462 (A000217 (n + 3) + 4).toNat

end

end A186457.P16653715484356400179

/-! ## A186457.P15866980039499942838

`A189174(∑[n+1])`
-/

namespace A186457.P15866980039499942838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189174 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186457.P15866980039499942838

/-!
# A186458: Number of (n+1) X 6 binary arrays with every 2 X 2 subblock commuting with each of its horizontal and vertical 2 X 2 subblock neighbors.

The programs for A186458, there is no canonical definition to state claims against.
-/

/-! ## A186458.P2566832453779146532

`A186462(∑[n+4]+11)`
-/

namespace A186458.P2566832453779146532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A186458.P2566832453779146532

/-! ## A186458.P7122716367469761511

`xor(1, xor(1, A186462(A056000(n)+15)))`
-/

namespace A186458.P7122716367469761511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A186462 (A056000 n + 15).toNat))

end

end A186458.P7122716367469761511

/-! ## A186458.P14938666978685233975

`abs(1-A186462(A000217(n+4)+5))+1`
-/

namespace A186458.P14938666978685233975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A186462 (A000217 (n + 4) + 5).toNat| + 1

end

end A186458.P14938666978685233975

/-! ## A186458.P3580004290203865306

`or(A000038(n), A186462(A167499(n+3)))`
-/

namespace A186458.P3580004290203865306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A186462 (A167499 (n + 3)).toNat)

end

end A186458.P3580004290203865306

/-! ## A186458.P16106101463761759852

`lcm(A054977(n), A186462(A056000(n)+15))`
-/

namespace A186458.P16106101463761759852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A186462 (A056000 n + 15).toNat)

end

end A186458.P16106101463761759852

/-! ## A186458.P13792422485378336294

`abs(1-A186462(A046691(n+3)))+1`
-/

namespace A186458.P13792422485378336294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A186462 (A046691 (n + 3)).toNat| + 1

end

end A186458.P13792422485378336294

/-! ## A186458.P10447596959231640907

`∏{e}[A000040(n+1), A186462(A046691(n+3))^#]`
-/

namespace A186458.P10447596959231640907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A186462 (A046691 (n + 3)).toNat ^ Nat.factorization (f1 n).natAbs p

end

end A186458.P10447596959231640907

/-! ## A186458.P6318425119140463495

`A188837(∑[n+1])`
-/

namespace A186458.P6318425119140463495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188837 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186458.P6318425119140463495

/-!
# A186459: Number of (n+1) X 7 binary arrays with every 2 X 2 subblock commuting with each of its horizontal and vertical 2 X 2 subblock neighbors.

The programs for A186459, there is no canonical definition to state claims against.
-/

/-! ## A186459.P16736426230684736050

`A186462(A166136(n+4))`
-/

namespace A186459.P16736426230684736050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A166136 (n + 4)).toNat

end

end A186459.P16736426230684736050

/-! ## A186459.P9963598999882436927

`A186462(A056115(n)+21)`
-/

namespace A186459.P9963598999882436927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A056115 n + 21).toNat

end

end A186459.P9963598999882436927

/-! ## A186459.P1230136306501344051

`A186462(A167499(n+4)+1)`
-/

namespace A186459.P1230136306501344051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A167499 (n + 4) + 1).toNat

end

end A186459.P1230136306501344051

/-! ## A186459.P17418131006857782510

`A186462(A167614(n+4)+3)`
-/

namespace A186459.P17418131006857782510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A167614 (n + 4) + 3).toNat

end

end A186459.P17418131006857782510

/-! ## A186459.P13982533859106679510

`A186462(A133263(n+5)+4)`
-/

namespace A186459.P13982533859106679510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A133263 (n + 5) + 4).toNat

end

end A186459.P13982533859106679510

/-! ## A186459.P7978556172377257005

`A186462(A000124(n+5)+5)`
-/

namespace A186459.P7978556172377257005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A000124 (n + 5) + 5).toNat

end

end A186459.P7978556172377257005

/-! ## A186459.P244160372555832313

`A186462(A000096(n+4)+7)`
-/

namespace A186459.P244160372555832313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A000096 (n + 4) + 7).toNat

end

end A186459.P244160372555832313

/-! ## A186459.P5975803784623940988

`A186462(A000217(n+5)+6)`
-/

namespace A186459.P5975803784623940988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A000217 (n + 5) + 6).toNat

end

end A186459.P5975803784623940988

/-! ## A186459.P13502981554512566427

`A186462(A034856(n+4)+8)`
-/

namespace A186459.P13502981554512566427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A034856 (n + 4) + 8).toNat

end

end A186459.P13502981554512566427

/-! ## A186459.P15896315916932587484

`A186462(A161680(n+6)+6)`
-/

namespace A186459.P15896315916932587484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A161680 (n + 6) + 6).toNat

end

end A186459.P15896315916932587484

/-!
# A186460: Number of (n+1) X 8 binary arrays with every 2 X 2 subblock commuting with each of its horizontal and vertical 2 X 2 subblock neighbors.

The programs for A186460, there is no canonical definition to state claims against.
-/

/-! ## A186460.P15201099029364800639

`A186462(∑[n+6]+22)`
-/

namespace A186460.P15201099029364800639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A186460.P15201099029364800639

/-! ## A186460.P1807002838516556551

`or(char[3], A186462(A000217(n+6)+7))`
-/

namespace A186460.P1807002838516556551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186462 (A000217 (n + 6) + 7).toNat)

end

end A186460.P1807002838516556551

/-! ## A186460.P6270472530509951264

`record[A186462(A000217(abs(1-n)+4)+7)]`
-/

namespace A186460.P6270472530509951264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A000217 (|1 - (n : ℤ)| + 4).toNat + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186460.P6270472530509951264

/-! ## A186460.P4681533060979320227

`abs(1-A186462(A167499(n+5)+2))+1`
-/

namespace A186460.P4681533060979320227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A186462 (A167499 (n + 5) + 2).toNat| + 1

end

end A186460.P4681533060979320227

/-! ## A186460.P6164397018446072160

`abs(2-A186462(A000096(n+5)+8))+2`
-/

namespace A186460.P6164397018446072160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A186462 (A000096 (n + 5) + 8).toNat| + 2

end

end A186460.P6164397018446072160

/-! ## A186460.P8646983161398194234

`A007318(C(2, n))*A186462(A000217(n+6)+7)`
-/

namespace A186460.P8646983161398194234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A186462 (A000217 (n + 6) + 7).toNat

end

end A186460.P8646983161398194234

/-! ## A186460.P17153861151269749164

`A186462(A000217(n+6)+7)%A000045(n+14)`
-/

namespace A186460.P17153861151269749164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186462 (A000217 (n + 6) + 7).toNat) (A000045 (n + 14))

end

end A186460.P17153861151269749164

/-! ## A186460.P382864677260481493

`A186462(A000217(n+6)+7)+A008683(8*(n+1))`
-/

namespace A186460.P382864677260481493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A000217 (n + 6) + 7).toNat + A008683 (8 * (n + 1))

end

end A186460.P382864677260481493

/-! ## A186460.P77003623195692459

`A014963(4*n+10)*A186462(A000096(n+5)+8)`
-/

namespace A186460.P77003623195692459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 10) * A186462 (A000096 (n + 5) + 8).toNat

end

end A186460.P77003623195692459

/-! ## A186460.P1840165339951299324

`A000041(C(2, n+2))*A186462(A000217(n+6)+7)`
-/

namespace A186460.P1840165339951299324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A186462 (A000217 (n + 6) + 7).toNat

end

end A186460.P1840165339951299324

/-!
# A186461: Number of (n+1) X 9 binary arrays with every 2 X 2 subblock commuting with each of its horizontal and vertical 2 X 2 subblock neighbors.

The programs for A186461, there is no canonical definition to state claims against.
-/

/-! ## A186461.P16228387587741262452

`A186462(A167614(n+6)+5)`
-/

namespace A186461.P16228387587741262452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A167614 (n + 6) + 5).toNat

end

end A186461.P16228387587741262452

/-! ## A186461.P4548277783049364943

`A186462(A000124(n+7)+7)`
-/

namespace A186461.P4548277783049364943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A000124 (n + 7) + 7).toNat

end

end A186461.P4548277783049364943

/-! ## A186461.P8081240268050115087

`A186462(A000096(n+6)+9)`
-/

namespace A186461.P8081240268050115087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A000096 (n + 6) + 9).toNat

end

end A186461.P8081240268050115087

/-! ## A186461.P11860928134286583494

`A186462(A000217(n+7)+8)`
-/

namespace A186461.P11860928134286583494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A000217 (n + 7) + 8).toNat

end

end A186461.P11860928134286583494

/-! ## A186461.P16369313684583935510

`A186462(A161680(n+8)+8)`
-/

namespace A186461.P16369313684583935510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A161680 (n + 8) + 8).toNat

end

end A186461.P16369313684583935510

/-! ## A186461.P12365494408931364607

`A186462(A155212(n+5)-(2*n+1))`
-/

namespace A186461.P12365494408931364607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A155212 (n + 5) - (2 * n + 1 : ℤ)).toNat

end

end A186461.P12365494408931364607

/-! ## A186461.P2052275530520055932

`A186462(A133263(n+9)-11-2*n)`
-/

namespace A186461.P2052275530520055932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A133263 (n + 9) - 11 - (2 * n : ℤ)).toNat

end

end A186461.P2052275530520055932

/-! ## A186461.P14520108754240390973

`A186462(A238531(n+6)+A005408(n+9))`
-/

namespace A186461.P14520108754240390973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A238531 (n + 6) + A005408 (n + 9)).toNat

end

end A186461.P14520108754240390973

/-! ## A186461.P7323409351366076890

`A186462(A166136(n+9)-A016777(n+8))`
-/

namespace A186461.P7323409351366076890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A166136 (n + 9) - A016777 (n + 8)).toNat

end

end A186461.P7323409351366076890

/-! ## A186461.P3029425017761030197

`A186462(A374009(n+1))`
-/

namespace A186461.P3029425017761030197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186462 (A374009 (n + 1)).toNat

end

end A186461.P3029425017761030197

/-!
# A186463: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock commuting with each of its horizontal and vertical 2X2 subblock neighbors.

The programs for A186463, there is no canonical definition to state claims against.
-/

/-! ## A186463.P9861777693051520000

`A186472(∑[4*n]+1)`
-/

namespace A186463.P9861777693051520000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186463.P9861777693051520000

/-! ## A186463.P5109002820672722456

`lcm(3, A186472(A001844(n)))`
-/

namespace A186463.P5109002820672722456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A186472 (A001844 n).toNat)

end

end A186463.P5109002820672722456

/-! ## A186463.P7816109136920419532

`record[A186472(A330613(n+1))]`
-/

namespace A186463.P7816109136920419532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186463.P7816109136920419532

/-! ## A186463.P7946067311762918417

`A326679(n)+A186472(A001844(n))`
-/

namespace A186463.P7946067311762918417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326679 n + A186472 (A001844 n).toNat

end

end A186463.P7946067311762918417

/-! ## A186463.P13174440248629318700

`A007318(∑[n])*A186472(A001844(n))`
-/

namespace A186463.P13174440248629318700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A186472 (A001844 n).toNat

end

end A186463.P13174440248629318700

/-!
# A186464: Number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock commuting with each of its horizontal and vertical 2 X 2 subblock neighbors.

The programs for A186464, the canonical program `A186464.P5087458758718582718` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186464 has offset 1).

The definition of A186464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186464.P5087458758718582718

`ogf((81-79x+30x^2+54x^3-37x^4-40x^5-4x^6+26x^7-2x^8+x^9)/(1-2x-x^2+4x^3-4x^4+2x^5))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186464

/-- `ogf((81-79x+30x^2+54x^3-37x^4-40x^5-4x^6+26x^7-2x^8+x^9)/(1-2x-x^2+4x^3-4x^4+2x^5))` -/
def P5087458758718582718.Spec : Prop :=
  ∀ n, P5087458758718582718.a n = A186464 (n + 1)

theorem P5087458758718582718.correct : P5087458758718582718.Spec := by
  intro n
  simp only [A186464, Nat.add_sub_cancel]

end A186464

/-! ## A186464.P3185167706243932419

`A187363(∑[n+2])`
-/

namespace A186464.P3185167706243932419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187363 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186464.P3185167706243932419

namespace A186464

/-- `A187363(∑[n+2])` -/
def P3185167706243932419.Spec : Prop :=
  ∀ n, P3185167706243932419.a n = A186464 (n + 1)

end A186464

/-! ## A186464.P5515732619483050315

`record[A187363(A193739(n+1)+n+1)]`
-/

namespace A186464.P5515732619483050315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187363 (A193739 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186464.P5515732619483050315

namespace A186464

/-- `record[A187363(A193739(n+1)+n+1)]` -/
def P5515732619483050315.Spec : Prop :=
  ∀ n, P5515732619483050315.a n = A186464 (n + 1)

end A186464

/-! ## A186464.P2776166420409874803

`A186472(∑[n]+1)`
-/

namespace A186464.P2776166420409874803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186464.P2776166420409874803

namespace A186464

/-- `A186472(∑[n]+1)` -/
def P2776166420409874803.Spec : Prop :=
  ∀ n, P2776166420409874803.a n = A186464 (n + 1)

end A186464

/-! ## A186464.P9575600715423549084

`record[A186472(A056534(n+1))]`
-/

namespace A186464.P9575600715423549084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186464.P9575600715423549084

namespace A186464

/-- `record[A186472(A056534(n+1))]` -/
def P9575600715423549084.Spec : Prop :=
  ∀ n, P9575600715423549084.a n = A186464 (n + 1)

end A186464

/-!
# A186465: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock commuting with each of its horizontal and vertical 2 X 2 subblock neighbors.

The programs for A186465, there is no canonical definition to state claims against.
-/

/-! ## A186465.P18346779810805826825

`A190023(∑[n+2])`
-/

namespace A186465.P18346779810805826825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190023 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186465.P18346779810805826825

/-! ## A186465.P6671407401461727239

`record[A190023(A000096(A028920(n)))]`
-/

namespace A186465.P6671407401461727239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190023 (A000096 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186465.P6671407401461727239

/-! ## A186465.P8653937348678961148

`record[A190023(A000096(A263274(n)))]`
-/

namespace A186465.P8653937348678961148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190023 (A000096 (A263274 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186465.P8653937348678961148

/-! ## A186465.P4794678410845692407

`record[A190023(A000096(A286544(n)))]`
-/

namespace A186465.P4794678410845692407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190023 (A000096 (A286544 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186465.P4794678410845692407

/-! ## A186465.P9021267477792587185

`record[A190023(A000096(A300249(n+1)))]`
-/

namespace A186465.P9021267477792587185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190023 (A000096 (A300249 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186465.P9021267477792587185

/-!
# A186466: Number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock commuting with each of its horizontal and vertical 2 X 2 subblock neighbors.

The programs for A186466, there is no canonical definition to state claims against.
-/

/-! ## A186466.P15253628871076690764

`A188058(∑[n+2])`
-/

namespace A186466.P15253628871076690764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188058 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186466.P15253628871076690764

/-! ## A186466.P6672878462849498869

`A186472(∑[n+2]+4)`
-/

namespace A186466.P6672878462849498869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186466.P6672878462849498869

/-! ## A186466.P2667297085600655954

`or(char[1], A186472(A167614(n+1)))`
-/

namespace A186466.P2667297085600655954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186472 (A167614 (n + 1)).toNat)

end

end A186466.P2667297085600655954

/-! ## A186466.P12119528086196206287

`or(char[1], A186472(A152949(n+4)))`
-/

namespace A186466.P12119528086196206287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186472 (A152949 (n + 4)).toNat)

end

end A186466.P12119528086196206287

/-! ## A186466.P5025863322313216069

`A007318(C(2, n))*A186472(A152949(n+4))`
-/

namespace A186466.P5025863322313216069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A186472 (A152949 (n + 4)).toNat

end

end A186466.P5025863322313216069

/-!
# A186467: Number of (n+1) X 5 0..2 arrays with every 2 X 2 subblock commuting with each of its horizontal and vertical 2 X 2 subblock neighbors.

The programs for A186467, there is no canonical definition to state claims against.
-/

/-! ## A186467.P291629124413587786

`A189174(∑[n+2])`
-/

namespace A186467.P291629124413587786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189174 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186467.P291629124413587786

/-! ## A186467.P7553824039772814756

`record[A189174(A000096(A109785(n)))]`
-/

namespace A186467.P7553824039772814756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189174 (A000096 (A109785 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186467.P7553824039772814756

/-! ## A186467.P7747642836548018996

`record[A189174(A000096(A134478(n)))]`
-/

namespace A186467.P7747642836548018996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189174 (A000096 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186467.P7747642836548018996

/-! ## A186467.P16251501052937174297

`record[A189174(A000096(A328388(n)))]`
-/

namespace A186467.P16251501052937174297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189174 (A000096 (A328388 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186467.P16251501052937174297

/-! ## A186467.P11356278806328937891

`record[A189174(A000096(A328399(n)))]`
-/

namespace A186467.P11356278806328937891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189174 (A000096 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186467.P11356278806328937891

/-!
# A186468: Number of (n+1)X6 0..2 arrays with every 2X2 subblock commuting with each of its horizontal and vertical 2X2 subblock neighbors.

The programs for A186468, there is no canonical definition to state claims against.
-/

/-! ## A186468.P8204144027939977914

`A188837(∑[n+2])`
-/

namespace A186468.P8204144027939977914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188837 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186468.P8204144027939977914

/-! ## A186468.P6813974386039484056

`A186472(A374005(n+1))`
-/

namespace A186468.P6813974386039484056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (A374005 (n + 1)).toNat

end

end A186468.P6813974386039484056

/-! ## A186468.P3490587426170515567

`A186472(A167499(n+3))`
-/

namespace A186468.P3490587426170515567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (A167499 (n + 3)).toNat

end

end A186468.P3490587426170515567

/-! ## A186468.P11547447073626370743

`A186472(A155212(n)+13)`
-/

namespace A186468.P11547447073626370743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (A155212 n + 13).toNat

end

end A186468.P11547447073626370743

/-! ## A186468.P3382728675752226464

`A186472(A056000(n)+15)`
-/

namespace A186468.P3382728675752226464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (A056000 n + 15).toNat

end

end A186468.P3382728675752226464

/-!
# A186469: Number of (n+1) X 7 0..2 arrays with every 2 X 2 subblock commuting with each of its horizontal and vertical 2 X 2 subblock neighbors.

The programs for A186469, there is no canonical definition to state claims against.
-/

/-! ## A186469.P4277822962925660437

`A186472(∑[n+5]+16)`
-/

namespace A186469.P4277822962925660437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A186469.P4277822962925660437

/-! ## A186469.P16225967045127067705

`or(char[2], A186472(A167499(n+4)+1))`
-/

namespace A186469.P16225967045127067705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186472 (A167499 (n + 4) + 1).toNat)

end

end A186469.P16225967045127067705

/-! ## A186469.P5075029757331718045

`or(char[2], A186472(A052905(n+2)+11))`
-/

namespace A186469.P5075029757331718045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186472 (A052905 (n + 2) + 11).toNat)

end

end A186469.P5075029757331718045

/-! ## A186469.P12150135335667477484

`A186472(A166136(n+4))%A249706(n+3)`
-/

namespace A186469.P12150135335667477484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186472 (A166136 (n + 4)).toNat) (A249706 (n + 3))

end

end A186469.P12150135335667477484

/-! ## A186469.P6261143776188119244

`A007318(C(2, n))*A186472(A167499(n+4)+1)`
-/

namespace A186469.P6261143776188119244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A186472 (A167499 (n + 4) + 1).toNat

end

end A186469.P6261143776188119244

/-!
# A186470: Number of (n+1)X8 0..2 arrays with every 2X2 subblock commuting with each of its horizontal and vertical 2X2 subblock neighbors.

The programs for A186470, there is no canonical definition to state claims against.
-/

/-! ## A186470.P13896234639307268141

`A186472(A374008(n+1))`
-/

namespace A186470.P13896234639307268141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (A374008 (n + 1)).toNat

end

end A186470.P13896234639307268141

/-! ## A186470.P9331496403442416410

`A186472(A167487(n+5))`
-/

namespace A186470.P9331496403442416410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (A167487 (n + 5)).toNat

end

end A186470.P9331496403442416410

/-! ## A186470.P13229845455193760774

`A186472(A056119(n)+28)`
-/

namespace A186470.P13229845455193760774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (A056119 n + 28).toNat

end

end A186470.P13229845455193760774

/-! ## A186470.P4452804513953615523

`A186472(A000124(n+6)+6)`
-/

namespace A186470.P4452804513953615523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (A000124 (n + 6) + 6).toNat

end

end A186470.P4452804513953615523

/-! ## A186470.P2406681275470538414

`A186472(A000096(n+5)+8)`
-/

namespace A186470.P2406681275470538414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (A000096 (n + 5) + 8).toNat

end

end A186470.P2406681275470538414

/-!
# A186471: Number of (n+1)X9 0..2 arrays with every 2X2 subblock commuting with each of its horizontal and vertical 2X2 subblock neighbors.

The programs for A186471, there is no canonical definition to state claims against.
-/

/-! ## A186471.P6852908140444329599

`A186472(A374009(n+1))`
-/

namespace A186471.P6852908140444329599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (A374009 (n + 1)).toNat

end

end A186471.P6852908140444329599

/-! ## A186471.P17704604603038721511

`A186472(A167487(n+6)+1)`
-/

namespace A186471.P17704604603038721511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (A167487 (n + 6) + 1).toNat

end

end A186471.P17704604603038721511

/-! ## A186471.P13119186022345781768

`A186472(A000124(n+7)+7)`
-/

namespace A186471.P13119186022345781768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (A000124 (n + 7) + 7).toNat

end

end A186471.P13119186022345781768

/-! ## A186471.P12506647356151028420

`A186472(A000096(n+6)+9)`
-/

namespace A186471.P12506647356151028420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (A000096 (n + 6) + 9).toNat

end

end A186471.P12506647356151028420

/-! ## A186471.P6115531626522993161

`A186472(A000217(n+7)+8)`
-/

namespace A186471.P6115531626522993161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186472 (A000217 (n + 7) + 8).toNat

end

end A186471.P6115531626522993161

/-!
# A186473: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock commuting with each of its horizontal and vertical 2X2 subblock neighbors.

The programs for A186473, there is no canonical definition to state claims against.
-/

/-! ## A186473.P4920718570912223443

`A186482(∑[4*n]+1)`
-/

namespace A186473.P4920718570912223443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186473.P4920718570912223443

/-! ## A186473.P2862985490078318110

`record[A186482(A003602((n+1)²))]`
-/

namespace A186473.P2862985490078318110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A003602 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186473.P2862985490078318110

/-! ## A186473.P16410346357805239881

`A186482(A001844(n))+and(64, n)`
-/

namespace A186473.P16410346357805239881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A001844 n).toNat + (Nat.land 64 n : ℤ)

end

end A186473.P16410346357805239881

/-! ## A186473.P655567887077291

`A186482(A001844(n))+A034560(n+1)`
-/

namespace A186473.P655567887077291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A001844 n).toNat + A034560 (n + 1)

end

end A186473.P655567887077291

/-! ## A186473.P10093532188847264186

`A186482(A001844(n))+A000035(2*n)`
-/

namespace A186473.P10093532188847264186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A001844 n).toNat + A000035 (2 * n)

end

end A186473.P10093532188847264186

/-!
# A186474: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock commuting with each of its horizontal and vertical 2 X 2 subblock neighbors.

The programs for A186474, there is no canonical definition to state claims against.
-/

/-! ## A186474.P4787682367523908546

`A187363(∑[n+3]+1)`
-/

namespace A186474.P4787682367523908546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187363 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186474.P4787682367523908546

/-! ## A186474.P15502909104483878594

`A186482(∑[n]+1)`
-/

namespace A186474.P15502909104483878594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186474.P15502909104483878594

/-! ## A186474.P7303619833543115119

`lcm((-1)^n, A186482(A000124(n)))`
-/

namespace A186474.P7303619833543115119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A186482 (A000124 n).toNat)

end

end A186474.P7303619833543115119

/-! ## A186474.P13176873007126248909

`A010052(n²)*A186482(A000124(n))`
-/

namespace A186474.P13176873007126248909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n ^ 2) * A186482 (A000124 n).toNat

end

end A186474.P13176873007126248909

/-! ## A186474.P3253774662797193985

`A186482(A000124(n))*A267869(n²)`
-/

namespace A186474.P3253774662797193985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A000124 n).toNat * A267869 (n ^ 2)

end

end A186474.P3253774662797193985

/-! ## A186474.P12088710733732867509

`A186482(A000124(n))+A000007(n+1)`
-/

namespace A186474.P12088710733732867509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A000124 n).toNat + A000007 (n + 1)

end

end A186474.P12088710733732867509

/-! ## A186474.P5200157132040393613

`A186482(A000124(n))+A000038(n+1)`
-/

namespace A186474.P5200157132040393613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A000124 n).toNat + A000038 (n + 1)

end

end A186474.P5200157132040393613

/-! ## A186474.P5206038901345154400

`A186482(A000124(n))%A186476(n+1)`
-/

namespace A186474.P5206038901345154400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186482 (A000124 n).toNat) (A186476 (n + 1))

end

end A186474.P5206038901345154400

/-! ## A186474.P14929265697122283458

`A186482(A000124(n))-n*A000007(n)`
-/

namespace A186474.P14929265697122283458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A000124 n).toNat - (n : ℤ) * A000007 n

end

end A186474.P14929265697122283458

/-! ## A186474.P16782838405297573402

`A186482(A000124(n))-n*A000038(n)`
-/

namespace A186474.P16782838405297573402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A000124 n).toNat - (n : ℤ) * A000038 n

end

end A186474.P16782838405297573402

/-!
# A186475: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock commuting with each of its horizontal and vertical 2 X 2 subblock neighbors.

The programs for A186475, there is no canonical definition to state claims against.
-/

/-! ## A186475.P924087062623650733

`A190023(∑[n+3]+1)`
-/

namespace A186475.P924087062623650733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190023 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186475.P924087062623650733

/-! ## A186475.P9985552535046821503

`A186482(∑[n+1]+2)`
-/

namespace A186475.P9985552535046821503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186475.P9985552535046821503

/-! ## A186475.P3295622416942054992

`A005408(n)%2*A186482(A133263(n+1))`
-/

namespace A186475.P3295622416942054992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) 2 * A186482 (A133263 (n + 1)).toNat

end

end A186475.P3295622416942054992

/-! ## A186475.P10280025239741606145

`A186482(A133263(n+1))+char[A186482(n+2)]`
-/

namespace A186475.P10280025239741606145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A186475.P10280025239741606145

/-! ## A186475.P9764976955076657456

`A186482(A133263(n+1))*A348493(A000040(n+1))`
-/

namespace A186475.P9764976955076657456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A133263 (n + 1)).toNat * A348493 (A000040 (n + 1)).toNat

end

end A186475.P9764976955076657456

/-! ## A186475.P5073551195501496719

`A007875(A007875(n+2))*A186482(A133263(n+1))`
-/

namespace A186475.P5073551195501496719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A007875 (n + 2)).toNat * A186482 (A133263 (n + 1)).toNat

end

end A186475.P5073551195501496719

/-!
# A186476: Number of (n+1)X4 0..3 arrays with every 2X2 subblock commuting with each of its horizontal and vertical 2X2 subblock neighbors.

The programs for A186476, there is no canonical definition to state claims against.
-/

/-! ## A186476.P6617534031309247424

`A188058(∑[n+3]+1)`
-/

namespace A186476.P6617534031309247424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188058 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186476.P6617534031309247424

/-! ## A186476.P15980148928661263787

`A186482(∑[n+2]+4)`
-/

namespace A186476.P15980148928661263787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186476.P15980148928661263787

/-! ## A186476.P2108341517672756040

`lcm(A020985(n), A186482(A167614(n+1)))`
-/

namespace A186476.P2108341517672756040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A186482 (A167614 (n + 1)).toNat)

end

end A186476.P2108341517672756040

/-! ## A186476.P15143859846815932160

`or(A000038(n), A186482(A167614(n+1)))`
-/

namespace A186476.P15143859846815932160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A186482 (A167614 (n + 1)).toNat)

end

end A186476.P15143859846815932160

/-! ## A186476.P5883426173643973568

`or(A025469(n), A186482(A167614(n+1)))`
-/

namespace A186476.P5883426173643973568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 n) (A186482 (A167614 (n + 1)).toNat)

end

end A186476.P5883426173643973568

/-! ## A186476.P5424786928766782358

`A186482(A167614(n+1))%A186477(n+1)`
-/

namespace A186476.P5424786928766782358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186482 (A167614 (n + 1)).toNat) (A186477 (n + 1))

end

end A186476.P5424786928766782358

/-!
# A186477: Number of (n+1)X5 0..3 arrays with every 2X2 subblock commuting with each of its horizontal and vertical 2X2 subblock neighbors.

The programs for A186477, there is no canonical definition to state claims against.
-/

/-! ## A186477.P3585773557044088209

`A189174(∑[n+3]+1)`
-/

namespace A186477.P3585773557044088209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189174 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186477.P3585773557044088209

/-! ## A186477.P5387889353935436245

`A186482(A374004(n+1))`
-/

namespace A186477.P5387889353935436245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A374004 (n + 1)).toNat

end

end A186477.P5387889353935436245

/-! ## A186477.P13536824479633354539

`A186482(A052905(n)+9)`
-/

namespace A186477.P13536824479633354539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A052905 n + 9).toNat

end

end A186477.P13536824479633354539

/-! ## A186477.P4805800017316336051

`A186482(A167614(n+2)+1)`
-/

namespace A186477.P4805800017316336051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A167614 (n + 2) + 1).toNat

end

end A186477.P4805800017316336051

/-! ## A186477.P18365866101140727404

`A186482(A167499(n+2)-1)`
-/

namespace A186477.P18365866101140727404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A167499 (n + 2) - 1).toNat

end

end A186477.P18365866101140727404

/-! ## A186477.P9593935121399264447

`A186482(Δ[A023545(n+1)-n²])`
-/

namespace A186477.P9593935121399264447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (f1 (n + 1) - f1 n).toNat

end

end A186477.P9593935121399264447

/-! ## A186477.P10214087880821893557

`A186482(∑[n+4]+3)`
-/

namespace A186477.P10214087880821893557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A186477.P10214087880821893557

/-!
# A186478: Number of (n+1)X6 0..3 arrays with every 2X2 subblock commuting with each of its horizontal and vertical 2X2 subblock neighbors.

The programs for A186478, there is no canonical definition to state claims against.
-/

/-! ## A186478.P519903874608036345

`A188837(∑[n+3]+1)`
-/

namespace A186478.P519903874608036345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188837 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186478.P519903874608036345

/-! ## A186478.P4543115487400529611

`A186482(∑[n+4]+11)`
-/

namespace A186478.P4543115487400529611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A186478.P4543115487400529611

/-! ## A186478.P12960470965971192525

`xor(17, xor(17, A186482(A155212(n)+13)))`
-/

namespace A186478.P12960470965971192525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 17 (Int.xor 17 (A186482 (A155212 n + 13).toNat))

end

end A186478.P12960470965971192525

/-! ## A186478.P14824594408452448593

`or(A000038(n), A186482(A155212(n)+13))`
-/

namespace A186478.P14824594408452448593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A186482 (A155212 n + 13).toNat)

end

end A186478.P14824594408452448593

/-! ## A186478.P8363651062284658751

`A057427(n+1)*A186482(A155212(n)+13)`
-/

namespace A186478.P8363651062284658751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A186482 (A155212 n + 13).toNat

end

end A186478.P8363651062284658751

/-! ## A186478.P2611079111038518910

`or(A000038(n), A186482(A000124(n+4)+4))`
-/

namespace A186478.P2611079111038518910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A186482 (A000124 (n + 4) + 4).toNat)

end

end A186478.P2611079111038518910

/-! ## A186478.P15666403421683245623

`A186482(A000124(n+4)+4)%A186481(n+1)`
-/

namespace A186478.P15666403421683245623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186482 (A000124 (n + 4) + 4).toNat) (A186481 (n + 1))

end

end A186478.P15666403421683245623

/-! ## A186478.P5982615487906417311

`or(A072792(n), A186482(A000217(n+5)-4))`
-/

namespace A186478.P5982615487906417311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072792 n) (A186482 (A000217 (n + 5) - 4).toNat)

end

end A186478.P5982615487906417311

/-!
# A186479: Number of (n+1)X7 0..3 arrays with every 2X2 subblock commuting with each of its horizontal and vertical 2X2 subblock neighbors.

The programs for A186479, there is no canonical definition to state claims against.
-/

/-! ## A186479.P1567104651817347353

`A186482(A374007(n+1))`
-/

namespace A186479.P1567104651817347353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A374007 (n + 1)).toNat

end

end A186479.P1567104651817347353

/-! ## A186479.P14199279527485117286

`A186482(A000124(n+5)+5)`
-/

namespace A186479.P14199279527485117286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A000124 (n + 5) + 5).toNat

end

end A186479.P14199279527485117286

/-! ## A186479.P10454377721521775592

`A186482(A000217(n+5)+6)`
-/

namespace A186479.P10454377721521775592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A000217 (n + 5) + 6).toNat

end

end A186479.P10454377721521775592

/-! ## A186479.P17070289460691419973

`A186482(A052905(n+3))`
-/

namespace A186479.P17070289460691419973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A052905 (n + 3)).toNat

end

end A186479.P17070289460691419973

/-! ## A186479.P7235613644810207875

`A186482(Δ[Δ[A006504(n+1)]])`
-/

namespace A186479.P7235613644810207875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (f1 (n + 1) - f1 n).toNat

end

end A186479.P7235613644810207875

/-! ## A186479.P17993210139085492989

`A186482(Δ[A023545(n+2)]-1)`
-/

namespace A186479.P17993210139085492989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (f1 (n + 1) - f1 n - 1).toNat

end

end A186479.P17993210139085492989

/-!
# A186480: Number of (n+1)X8 0..3 arrays with every 2X2 subblock commuting with each of its horizontal and vertical 2X2 subblock neighbors.

The programs for A186480, there is no canonical definition to state claims against.
-/

/-! ## A186480.P17380201521535908226

`A186482(A374008(n+1))`
-/

namespace A186480.P17380201521535908226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A374008 (n + 1)).toNat

end

end A186480.P17380201521535908226

/-! ## A186480.P10230866075570785320

`A186482(A167614(n+5)+4)`
-/

namespace A186480.P10230866075570785320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A167614 (n + 5) + 4).toNat

end

end A186480.P10230866075570785320

/-! ## A186480.P12038605578892311893

`A186482(A000217(n+6)+7)`
-/

namespace A186480.P12038605578892311893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A000217 (n + 6) + 7).toNat

end

end A186480.P12038605578892311893

/-! ## A186480.P1201532166138370604

`A186482(A055999(n+4))`
-/

namespace A186480.P1201532166138370604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A055999 (n + 4)).toNat

end

end A186480.P1201532166138370604

/-! ## A186480.P15383105466747396854

`A186482(A055998(n+5)-3)`
-/

namespace A186480.P15383105466747396854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A055998 (n + 5) - 3).toNat

end

end A186480.P15383105466747396854

/-! ## A186480.P7335314915060573482

`A186482(A046691(n+7)-A004273(n+10))`
-/

namespace A186480.P7335314915060573482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A046691 (n + 7) - A004273 (n + 10)).toNat

end

end A186480.P7335314915060573482

/-!
# A186481: Number of (n+1)X9 0..3 arrays with every 2X2 subblock commuting with each of its horizontal and vertical 2X2 subblock neighbors.

The programs for A186481, there is no canonical definition to state claims against.
-/

/-! ## A186481.P13954506856584818083

`A186482(A374009(n+1))`
-/

namespace A186481.P13954506856584818083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A374009 (n + 1)).toNat

end

end A186481.P13954506856584818083

/-! ## A186481.P5159636683561760916

`A186482(A167499(n+6)+3)`
-/

namespace A186481.P5159636683561760916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A167499 (n + 6) + 3).toNat

end

end A186481.P5159636683561760916

/-! ## A186481.P6190971330833550363

`A186482(A000217(n+7)+8)`
-/

namespace A186481.P6190971330833550363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A000217 (n + 7) + 8).toNat

end

end A186481.P6190971330833550363

/-! ## A186481.P3223819915395513051

`A186482(A055999(n+5)-1)`
-/

namespace A186481.P3223819915395513051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A055999 (n + 5) - 1).toNat

end

end A186481.P3223819915395513051

/-! ## A186481.P11941877948592953323

`A186482(A046691(n+6)-3)`
-/

namespace A186481.P11941877948592953323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A046691 (n + 6) - 3).toNat

end

end A186481.P11941877948592953323

/-! ## A186481.P1254995640010630284

`A186482(A000124(n+8)-8)`
-/

namespace A186481.P1254995640010630284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186482 (A000124 (n + 8) - 8).toNat

end

end A186481.P1254995640010630284

/-!
# A186483: Number of (n+1)X(n+1) 0..4 arrays with every 2X2 subblock commuting with each of its horizontal and vertical 2X2 subblock neighbors.

The programs for A186483, there is no canonical definition to state claims against.
-/

/-! ## A186483.P15163610621320590989

`A186484(∑[4*n]+1)`
-/

namespace A186483.P15163610621320590989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186484 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186483.P15163610621320590989

/-! ## A186483.P9022980256329085907

`A186484(A001844(n))+char[18]`
-/

namespace A186483.P9022980256329085907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186484 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A186483.P9022980256329085907

/-! ## A186483.P14463552700348930662

`record[A186484(n+1)*A214505(n)]`
-/

namespace A186483.P14463552700348930662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186484 (n + 1) * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186483.P14463552700348930662

/-! ## A186483.P3436720125719442248

`A016042(n)*A186484(A001844(n))`
-/

namespace A186483.P3436720125719442248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016042 n * A186484 (A001844 n).toNat

end

end A186483.P3436720125719442248

/-! ## A186483.P5390028482890549677

`A016056(n)*A186484(A001844(n))`
-/

namespace A186483.P5390028482890549677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016056 n * A186484 (A001844 n).toNat

end

end A186483.P5390028482890549677

/-!
# A186485: Number of (n+1) X (n+1) 0..5 arrays with every 2 X 2 subblock commuting with each of its horizontal and vertical 2 X 2 subblock neighbors.

The programs for A186485, there is no canonical definition to state claims against.
-/

/-! ## A186485.P6314750201497614540

`A186486(∑[4*n]+1)`
-/

namespace A186485.P6314750201497614540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186486 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186485.P6314750201497614540

/-! ## A186485.P10944137028349120851

`A186486(A001844(n))+A185255(n)`
-/

namespace A186485.P10944137028349120851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186486 (A001844 n).toNat + A185255 n

end

end A186485.P10944137028349120851

/-! ## A186485.P3074208070835801726

`A186486(A001844(n))+A185284(n)`
-/

namespace A186485.P3074208070835801726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186486 (A001844 n).toNat + A185284 n

end

end A186485.P3074208070835801726

/-! ## A186485.P12127542403472673675

`or(A186486(A001844(n)), A225099(n))`
-/

namespace A186485.P12127542403472673675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A186486 (A001844 n).toNat) (A225099 n)

end

end A186485.P12127542403472673675

/-!
# A186487: Number of (n+1)X(n+1) 0..6 arrays with every 2X2 subblock commuting with each of its horizontal and vertical 2X2 subblock neighbors.

The programs for A186487, there is no canonical definition to state claims against.
-/

/-! ## A186487.P15418537903429584224

`A186488(∑[4*n]+1)`
-/

namespace A186487.P15418537903429584224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186488 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186487.P15418537903429584224

/-! ## A186487.P3962066858124122738

`A186488(A001844(n))+char[27]`
-/

namespace A186487.P3962066858124122738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186488 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A186487.P3962066858124122738

/-! ## A186487.P3274818121838829084

`or(A000007(n), A186488(A001844(n)))`
-/

namespace A186487.P3274818121838829084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A186488 (A001844 n).toNat)

end

end A186487.P3274818121838829084

/-! ## A186487.P2828367400603804070

`A000034(2*n)*A186488(A001844(n))`
-/

namespace A186487.P2828367400603804070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A186488 (A001844 n).toNat

end

end A186487.P2828367400603804070

/-! ## A186487.P12509349930366725499

`A001511(or(n, 2*n+1))*A186488(A001844(n))`
-/

namespace A186487.P12509349930366725499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Nat.lor n (2 * n + 1)) * A186488 (A001844 n).toNat

end

end A186487.P12509349930366725499

/-!
# A186489: Number of (n+1)X(n+1) 0..7 arrays with every 2X2 subblock commuting with each of its horizontal and vertical 2X2 subblock neighbors.

The programs for A186489, there is no canonical definition to state claims against.
-/

/-! ## A186489.P13308375205877618667

`A186490(∑[4*n]+1)`
-/

namespace A186489.P13308375205877618667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186490 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186489.P13308375205877618667

/-! ## A186489.P11984599167571180947

`record[gcd(A114327(n), A186490(n+1))]`
-/

namespace A186489.P11984599167571180947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A186490 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186489.P11984599167571180947

/-! ## A186489.P4337277743952288593

`A186490(A001844(n))+A185284(n)`
-/

namespace A186489.P4337277743952288593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186490 (A001844 n).toNat + A185284 n

end

end A186489.P4337277743952288593

/-! ## A186489.P10351571387960431046

`lcm(A033999(n), A186490(A001844(n)))`
-/

namespace A186489.P10351571387960431046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A186490 (A001844 n).toNat)

end

end A186489.P10351571387960431046

/-! ## A186489.P5716848864054392973

`or(A066247(n+1), A186490(A001844(n)))`
-/

namespace A186489.P5716848864054392973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A066247 (n + 1)) (A186490 (A001844 n).toNat)

end

end A186489.P5716848864054392973

/-!
# A186491: Counts a family of permutations occurring in the study of squeezed states of the simple harmonic oscillator.

The programs for A186491, there is no canonical definition to state claims against.
-/

/-! ## A186491.P2703265857966793002

`2^n*A126156(n)`
-/

namespace A186491.P2703265857966793002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A126156 n

end

end A186491.P2703265857966793002

/-! ## A186491.P13034547557460485595

`lcm(A000079(n), A126156(n))`
-/

namespace A186491.P13034547557460485595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A126156 n)

end

end A186491.P13034547557460485595

/-! ## A186491.P17074164818822424372

`A126156(n)*A131577(n+1)`
-/

namespace A186491.P17074164818822424372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126156 n * A131577 (n + 1)

end

end A186491.P17074164818822424372

/-! ## A186491.P5176467409019587196

`A007283(n)*A126156(n)/3`
-/

namespace A186491.P5176467409019587196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007283 n * A126156 n : ℚ) / 3

end

end A186491.P5176467409019587196

/-! ## A186491.P6833816058745334897

`A126156(n)*A329886(A000225(n))`
-/

namespace A186491.P6833816058745334897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126156 n * A329886 (A000225 n).toNat

end

end A186491.P6833816058745334897

/-!
# A186492: Recursive triangle for calculating A186491.

The programs for A186492, the canonical program `A186492.P18104453973424042388` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186492 has offset 0).

The definition of A186492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186492.P18104453973424042388

`(2*col(n)-1)*T(n-1,k-1)+(2*col(n)+2)*T(n-1,k+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186492

/-- `(2*col(n)-1)*T(n-1,k-1)+(2*col(n)+2)*T(n-1,k+1)` -/
def P18104453973424042388.Spec : Prop :=
  ∀ n, P18104453973424042388.a n = A186492 n

theorem P18104453973424042388.correct : P18104453973424042388.Spec := by
  intro n
  simp only [A186492]

end A186492

/-! ## A186492.P14797351782400744237

`2*(T(n-1,k+1)+(T(n-1,k-1)+T(n-1,k+1))*col(n))-T(n-1,k-1)` with `a(0)=1`
-/

namespace A186492.P14797351782400744237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (SequenceMachineLib.triUpRight a n + (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUpRight a n) * (SequenceMachineLib.triCol n : ℤ)) - SequenceMachineLib.triUpLeft a n

end

end A186492.P14797351782400744237

namespace A186492

/-- `2*(T(n-1,k+1)+(T(n-1,k-1)+T(n-1,k+1))*col(n))-T(n-1,k-1)` -/
def P14797351782400744237.Spec : Prop :=
  ∀ n, P14797351782400744237.a n = A186492 n

end A186492

/-!
# A186493: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=5i and g(j)=j-th pentagonal number. Complement of A186494.

The programs for A186493, the canonical program `A186493.P15456188391736532321` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186493 has offset 1).

The definition of A186493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186493.P15456188391736532321

`comp[∑[floor(3*n/5)+1]-1]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186493

/-- `comp[∑[floor(3*n/5)+1]-1]` -/
def P15456188391736532321.Spec : Prop :=
  ∀ n, (P15456188391736532321.a n : ℤ) = A186493 (n + 1)

theorem P15456188391736532321.correct : P15456188391736532321.Spec := by
  intro n
  simp only [A186493, Nat.add_sub_cancel]

end A186493

/-! ## A186493.P4401439853364785152

`∑[char[∑[A057355(n)]]+1]`
-/

namespace A186493.P4401439853364785152
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186493.P4401439853364785152

namespace A186493

/-- `∑[char[∑[A057355(n)]]+1]` -/
def P4401439853364785152.Spec : Prop :=
  ∀ n, (P4401439853364785152.a n : ℤ) = A186493 (n + 1)

end A186493

/-! ## A186493.P7250725837876818961

`∑[char[A227353(n+1)]+1]`
-/

namespace A186493.P7250725837876818961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227353 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186493.P7250725837876818961

namespace A186493

/-- `∑[char[A227353(n+1)]+1]` -/
def P7250725837876818961.Spec : Prop :=
  ∀ n, (P7250725837876818961.a n : ℤ) = A186493 (n + 1)

end A186493

/-! ## A186493.P2764599913862407502

`comp[∑[1-A288156(n)+n]-1]+1`
-/

namespace A186493.P2764599913862407502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A288156 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186493.P2764599913862407502

namespace A186493

/-- `comp[∑[1-A288156(n)+n]-1]+1` -/
def P2764599913862407502.Spec : Prop :=
  ∀ n, (P2764599913862407502.a n : ℤ) = A186493 (n + 1)

end A186493

/-! ## A186493.P10455714346410863225

`lt[1, A007318(A032793(n+1))]`
-/

namespace A186493.P10455714346410863225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A032793 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186493.P10455714346410863225

namespace A186493

/-- `lt[1, A007318(A032793(n+1))]` -/
def P10455714346410863225.Spec : Prop :=
  ∀ n, (P10455714346410863225.a n : ℤ) = A186493 (n + 1)

end A186493

/-! ## A186493.P9055234462754129333

`lt[1, A025581(ceil((5*n-1)/3))]`
-/

namespace A186493.P9055234462754129333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 ⌈((5 * n : ℤ) - 1 : ℚ) / 3⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186493.P9055234462754129333

namespace A186493

/-- `lt[1, A025581(ceil((5*n-1)/3))]` -/
def P9055234462754129333.Spec : Prop :=
  ∀ n, (P9055234462754129333.a n : ℤ) = A186493 (n + 1)

end A186493

/-! ## A186493.P8630614087962119279

`eq[0, A010054(A047220(n+2))]`
-/

namespace A186493.P8630614087962119279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A047220 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186493.P8630614087962119279

namespace A186493

/-- `eq[0, A010054(A047220(n+2))]` -/
def P8630614087962119279.Spec : Prop :=
  ∀ n, (P8630614087962119279.a n : ℤ) = A186493 (n + 1)

end A186493

/-! ## A186493.P6261511795507118463

`eq[1, A023532(A047212(n+1))]`
-/

namespace A186493.P6261511795507118463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A047212 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186493.P6261511795507118463

namespace A186493

/-- `eq[1, A023532(A047212(n+1))]` -/
def P6261511795507118463.Spec : Prop :=
  ∀ n, (P6261511795507118463.a n : ℤ) = A186493 (n + 1)

end A186493

/-! ## A186493.P3334981079342815657

`eq[1, A035214(A002264(5*(n+1)))]`
-/

namespace A186493.P3334981079342815657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A002264 (5 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186493.P3334981079342815657

namespace A186493

/-- `eq[1, A035214(A002264(5*(n+1)))]` -/
def P3334981079342815657.Spec : Prop :=
  ∀ n, (P3334981079342815657.a n : ℤ) = A186493 (n + 1)

end A186493

/-! ## A186493.P14828872362068572513

`lt[A025685(A025700(2*n+1)), A025657(n+1)]`
-/

namespace A186493.P14828872362068572513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025685 (A025700 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A186493.P14828872362068572513

namespace A186493

/-- `lt[A025685(A025700(2*n+1)), A025657(n+1)]` -/
def P14828872362068572513.Spec : Prop :=
  ∀ n, (P14828872362068572513.a n : ℤ) = A186493 (n + 1)

end A186493

/-!
# A186494: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=5i and g(j)=j-th pentagonal number. Complement of A186493.

The programs for A186494, the canonical program `A186494.P16170480948948959467` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186494 has offset 1).

The definition of A186494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186494.P16170480948948959467

`floor(3/5*∑[n+2])`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186494

/-- `floor(3/5*∑[n+2])` -/
def P16170480948948959467.Spec : Prop :=
  ∀ n, P16170480948948959467.a n = A186494 (n + 1)

theorem P16170480948948959467.correct : P16170480948948959467.Spec := by
  intro n
  simp only [A186494, Nat.add_sub_cancel]

end A186494

/-! ## A186494.P9542571394629617773

`round(∑[n+2]/cosh(log(3)))`
-/

namespace A186494.P9542571394629617773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.cosh (Real.log (3 : ℝ)))

end

end A186494.P9542571394629617773

namespace A186494

/-- `round(∑[n+2]/cosh(log(3)))` -/
def P9542571394629617773.Spec : Prop :=
  ∀ n, P9542571394629617773.a n = A186494 (n + 1)

end A186494

/-! ## A186494.P14732021536939983902

`∑[∑[((2-n)%5)²%3]]`
-/

namespace A186494.P14732021536939983902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (2 - (n : ℤ)) 5 ^ 2) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186494.P14732021536939983902

namespace A186494

/-- `∑[∑[((2-n)%5)²%3]]` -/
def P14732021536939983902.Spec : Prop :=
  ∀ n, P14732021536939983902.a n = A186494 (n + 1)

end A186494

/-! ## A186494.P4464786642257732488

`∑[ceil(3/(5*acot(n+1)))]`
-/

namespace A186494.P4464786642257732488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / (5 * SequenceMachineLib.acot (n + 1 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186494.P4464786642257732488

namespace A186494

/-- `∑[ceil(3/(5*acot(n+1)))]` -/
def P4464786642257732488.Spec : Prop :=
  ∀ n, P4464786642257732488.a n = A186494 (n + 1)

end A186494

/-! ## A186494.P2363838428132588102

`∑[a(n-5)+3]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A186494.P2363838428132588102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3, 4] fun n f1 =>
  f1 (n - 5) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186494.P2363838428132588102

namespace A186494

/-- `∑[a(n-5)+3]` -/
def P2363838428132588102.Spec : Prop :=
  ∀ n, (P2363838428132588102.a n : ℤ) = A186494 (n + 1)

end A186494

/-! ## A186494.P8597844849954843376

`∑[∑[a(n-5)²]]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=1, a(5)=0`
-/

namespace A186494.P8597844849954843376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 1, 1, 0] fun n f2 =>
  f2 (n - 5) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186494.P8597844849954843376

namespace A186494

/-- `∑[∑[a(n-5)²]]` -/
def P8597844849954843376.Spec : Prop :=
  ∀ n, (P8597844849954843376.a n : ℤ) = A186494 (n + 1)

end A186494

/-! ## A186494.P10914431963358198691

`∑[∑[floor(a(n-5))]]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=1, a(5)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A186494.P10914431963358198691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 1, 1, 0] fun n f2 =>
  f2 (n - 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186494.P10914431963358198691

namespace A186494

/-- `∑[∑[floor(a(n-5))]]` -/
def P10914431963358198691.Spec : Prop :=
  ∀ n, (P10914431963358198691.a n : ℤ) = A186494 (n + 1)

end A186494

/-! ## A186494.P17007025941858781246

`∑[n+1]-A008738(n)`
-/

namespace A186494.P17007025941858781246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A008738 n

end

end A186494.P17007025941858781246

namespace A186494

/-- `∑[n+1]-A008738(n)` -/
def P17007025941858781246.Spec : Prop :=
  ∀ n, P17007025941858781246.a n = A186494 (n + 1)

end A186494

/-! ## A186494.P14112526284969248793

`∑[1-A288156(n)+n]`
-/

namespace A186494.P14112526284969248793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A288156 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186494.P14112526284969248793

namespace A186494

/-- `∑[1-A288156(n)+n]` -/
def P14112526284969248793.Spec : Prop :=
  ∀ n, P14112526284969248793.a n = A186494 (n + 1)

end A186494

/-! ## A186494.P7877786485610279157

`A227353(n+1)+1+n`
-/

namespace A186494.P7877786485610279157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227353 (n + 1) + 1 + (n : ℤ)

end

end A186494.P7877786485610279157

namespace A186494

/-- `A227353(n+1)+1+n` -/
def P7877786485610279157.Spec : Prop :=
  ∀ n, P7877786485610279157.a n = A186494 (n + 1)

end A186494

/-! ## A186494.P18342262104021501274

`ceil(3*A034856(n+1)/5)`
-/

namespace A186494.P18342262104021501274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * A034856 (n + 1) : ℚ) / 5⌉

end

end A186494.P18342262104021501274

namespace A186494

/-- `ceil(3*A034856(n+1)/5)` -/
def P18342262104021501274.Spec : Prop :=
  ∀ n, P18342262104021501274.a n = A186494 (n + 1)

end A186494

/-! ## A186494.P16085443508713972795

`∑[A047488(n+1)+1-n]`
-/

namespace A186494.P16085443508713972795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047488 (n + 1) + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186494.P16085443508713972795

namespace A186494

/-- `∑[A047488(n+1)+1-n]` -/
def P16085443508713972795.Spec : Prop :=
  ∀ n, P16085443508713972795.a n = A186494 (n + 1)

end A186494

/-! ## A186494.P3767925363767867490

`(n+1)²-∑[A047367(n+1)]`
-/

namespace A186494.P3767925363767867490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186494.P3767925363767867490

namespace A186494

/-- `(n+1)²-∑[A047367(n+1)]` -/
def P3767925363767867490.Spec : Prop :=
  ∀ n, P3767925363767867490.a n = A186494 (n + 1)

end A186494

/-! ## A186494.P14386678948130236075

`∑[lcm(n+1, A006530(n+1))]-round(n²/5)`
-/

namespace A186494.P14386678948130236075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A006530 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 5)

end

end A186494.P14386678948130236075

namespace A186494

/-- `∑[lcm(n+1, A006530(n+1))]-round(n²/5)` -/
def P14386678948130236075.Spec : Prop :=
  ∀ n, P14386678948130236075.a n = A186494 (n + 1)

end A186494

/-! ## A186494.P8054880672530910035

`A000217(n+1)+A398050(n)-A398052(n)`
-/

namespace A186494.P8054880672530910035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A398050 n - A398052 n)

end

end A186494.P8054880672530910035

namespace A186494

/-- `A000217(n+1)+A398050(n)-A398052(n)` -/
def P8054880672530910035.Spec : Prop :=
  ∀ n, P8054880672530910035.a n = A186494 (n + 1)

end A186494

/-! ## A186494.P8118254084144128414

`A000217(n+1)+A398051(n)-A398053(n)`
-/

namespace A186494.P8118254084144128414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A398051 n - A398053 n)

end

end A186494.P8118254084144128414

namespace A186494

/-- `A000217(n+1)+A398051(n)-A398053(n)` -/
def P8118254084144128414.Spec : Prop :=
  ∀ n, P8118254084144128414.a n = A186494 (n + 1)

end A186494

/-! ## A186494.P13787053147983976337

`A000217(n+1)+A398052(n)-A398054(n)`
-/

namespace A186494.P13787053147983976337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A398052 n - A398054 n)

end

end A186494.P13787053147983976337

namespace A186494

/-- `A000217(n+1)+A398052(n)-A398054(n)` -/
def P13787053147983976337.Spec : Prop :=
  ∀ n, P13787053147983976337.a n = A186494 (n + 1)

end A186494

/-! ## A186494.P2373311955484854954

`∑[A057355(n+1)+1]`
-/

namespace A186494.P2373311955484854954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186494.P2373311955484854954

namespace A186494

/-- `∑[A057355(n+1)+1]` -/
def P2373311955484854954.Spec : Prop :=
  ∀ n, P2373311955484854954.a n = A186494 (n + 1)

end A186494

/-! ## A186494.P7756711732045152674

`∑[A047416(n+2)-n]`
-/

namespace A186494.P7756711732045152674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047416 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186494.P7756711732045152674

namespace A186494

/-- `∑[A047416(n+2)-n]` -/
def P7756711732045152674.Spec : Prop :=
  ∀ n, P7756711732045152674.a n = A186494 (n + 1)

end A186494

/-! ## A186494.P5991178488782359941

`∑[A047497(n+2)-(n+1)]`
-/

namespace A186494.P5991178488782359941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047497 (n + 2) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186494.P5991178488782359941

namespace A186494

/-- `∑[A047497(n+2)-(n+1)]` -/
def P5991178488782359941.Spec : Prop :=
  ∀ n, P5991178488782359941.a n = A186494 (n + 1)

end A186494

/-!
# A186495: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=5i (A008587) and g(j)=j-th pentagonal number (A000326). Complement of A186496.

The programs for A186495, the canonical program `A186495.P6875778344571436812` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186495 has offset 1).

The definition of A186495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186495.P6875778344571436812

`comp[floor(∑[n+1]-n²/5)-1]+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186495

/-- `comp[floor(∑[n+1]-n²/5)-1]+1` -/
def P6875778344571436812.Spec : Prop :=
  ∀ n, (P6875778344571436812.a n : ℤ) = A186495 (n + 1)

theorem P6875778344571436812.correct : P6875778344571436812.Spec := by
  intro n
  simp only [A186495, Nat.add_sub_cancel]

end A186495

/-! ## A186495.P5178349518706874016

`eq[char[A186496(n+1)], A000007(n)]`
-/

namespace A186495.P5178349518706874016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186496 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A186495.P5178349518706874016

namespace A186495

/-- `eq[char[A186496(n+1)], A000007(n)]` -/
def P5178349518706874016.Spec : Prop :=
  ∀ n, (P5178349518706874016.a n : ℤ) = A186495 (n + 1)

end A186495

/-! ## A186495.P17124055359973414761

`eq[char[A186496(n+1)], A000038(n)]`
-/

namespace A186495.P17124055359973414761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186496 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A186495.P17124055359973414761

namespace A186495

/-- `eq[char[A186496(n+1)], A000038(n)]` -/
def P17124055359973414761.Spec : Prop :=
  ∀ n, (P17124055359973414761.a n : ℤ) = A186495 (n + 1)

end A186495

/-! ## A186495.P17840535632790454810

`A123108(A235963(5*(n+1))+2*n+3)`
-/

namespace A186495.P17840535632790454810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A235963 (5 * (n + 1)) + (2 * n + 3 : ℤ)).toNat

end

end A186495.P17840535632790454810

namespace A186495

/-- `A123108(A235963(5*(n+1))+2*n+3)` -/
def P17840535632790454810.Spec : Prop :=
  ∀ n, P17840535632790454810.a n = A186495 (n + 1)

end A186495

/-! ## A186495.P16430154982389384715

`lt[A103627(5*n+4), A123513(A112689(10*n+8))]`
-/

namespace A186495.P16430154982389384715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (5 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123513 (A112689 (10 * n + 8)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A186495.P16430154982389384715

namespace A186495

/-- `lt[A103627(5*n+4), A123513(A112689(10*n+8))]` -/
def P16430154982389384715.Spec : Prop :=
  ∀ n, (P16430154982389384715.a n : ℤ) = A186495 (n + 1)

end A186495

/-! ## A186495.P9701352184004208000

`eq[char[A186496(n+1)], A151933(n)]`
-/

namespace A186495.P9701352184004208000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186496 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A186495.P9701352184004208000

namespace A186495

/-- `eq[char[A186496(n+1)], A151933(n)]` -/
def P9701352184004208000.Spec : Prop :=
  ∀ n, (P9701352184004208000.a n : ℤ) = A186495 (n + 1)

end A186495

/-!
# A186496: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=5i and g(j)=j-th pentagonal number. Complement of A186495.

The programs for A186496, the canonical program `A186496.P8112667603107903839` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186496 has offset 1).

The definition of A186496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186496.P8112667603107903839

`floor(∑[n+1]-n²/5)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186496

/-- `floor(∑[n+1]-n²/5)` -/
def P8112667603107903839.Spec : Prop :=
  ∀ n, P8112667603107903839.a n = A186496 (n + 1)

theorem P8112667603107903839.correct : P8112667603107903839.Spec := by
  intro n
  simp only [A186496, Nat.add_sub_cancel]

end A186496

/-! ## A186496.P7537077356175113640

`round(∑[n+1]-or(2, n²)/5)`
-/

namespace A186496.P7537077356175113640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (Nat.lor 2 (n ^ 2) : ℚ) / 5)

end

end A186496.P7537077356175113640

namespace A186496

/-- `round(∑[n+1]-or(2, n²)/5)` -/
def P7537077356175113640.Spec : Prop :=
  ∀ n, P7537077356175113640.a n = A186496 (n + 1)

end A186496

/-! ## A186496.P9655732647333871156

`∑[a(n-5)+3]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3, a(4)=3, a(5)=5`
-/

namespace A186496.P9655732647333871156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 3, 3, 5] fun n f1 =>
  f1 (n - 5) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186496.P9655732647333871156

namespace A186496

/-- `∑[a(n-5)+3]` -/
def P9655732647333871156.Spec : Prop :=
  ∀ n, (P9655732647333871156.a n : ℤ) = A186496 (n + 1)

end A186496

/-! ## A186496.P2560136407709318240

`floor(∑[n]-n²/5)-xor(n, -1)`
-/

namespace A186496.P2560136407709318240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (n ^ 2 : ℚ) / 5⌋ - Int.xor (n : ℤ) (-1)

end

end A186496.P2560136407709318240

namespace A186496

/-- `floor(∑[n]-n²/5)-xor(n, -1)` -/
def P2560136407709318240.Spec : Prop :=
  ∀ n, P2560136407709318240.a n = A186496 (n + 1)

end A186496

/-! ## A186496.P14039664009870755504

`(n+1)²-A398051(n)`
-/

namespace A186496.P14039664009870755504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A398051 n

end

end A186496.P14039664009870755504

namespace A186496

/-- `(n+1)²-A398051(n)` -/
def P14039664009870755504.Spec : Prop :=
  ∀ n, P14039664009870755504.a n = A186496 (n + 1)

end A186496

/-! ## A186496.P13196929481230284338

`∑[n+1]-A036404(n)`
-/

namespace A186496.P13196929481230284338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A036404 n

end

end A186496.P13196929481230284338

namespace A186496

/-- `∑[n+1]-A036404(n)` -/
def P13196929481230284338.Spec : Prop :=
  ∀ n, P13196929481230284338.a n = A186496 (n + 1)

end A186496

/-! ## A186496.P336415816483673401

`round(3/5*A034856(n+1))`
-/

namespace A186496.P336415816483673401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 5 * (A034856 (n + 1) : ℚ))

end

end A186496.P336415816483673401

namespace A186496

/-- `round(3/5*A034856(n+1))` -/
def P336415816483673401.Spec : Prop :=
  ∀ n, P336415816483673401.a n = A186496 (n + 1)

end A186496

/-! ## A186496.P5144999028428568573

`A398056(n)-A165900(n)`
-/

namespace A186496.P5144999028428568573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398056 n - A165900 n

end

end A186496.P5144999028428568573

namespace A186496

/-- `A398056(n)-A165900(n)` -/
def P5144999028428568573.Spec : Prop :=
  ∀ n, P5144999028428568573.a n = A186496 (n + 1)

end A186496

/-! ## A186496.P3453022524909433054

`A008738(n)+A249020(n)+n`
-/

namespace A186496.P3453022524909433054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 n + (A249020 n + (n : ℤ))

end

end A186496.P3453022524909433054

namespace A186496

/-- `A008738(n)+A249020(n)+n` -/
def P3453022524909433054.Spec : Prop :=
  ∀ n, P3453022524909433054.a n = A186496 (n + 1)

end A186496

/-! ## A186496.P1427924400044314260

`A000217(n+1)+A000217(n)-A398051(n)`
-/

namespace A186496.P1427924400044314260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 n - A398051 n)

end

end A186496.P1427924400044314260

namespace A186496

/-- `A000217(n+1)+A000217(n)-A398051(n)` -/
def P1427924400044314260.Spec : Prop :=
  ∀ n, P1427924400044314260.a n = A186496 (n + 1)

end A186496

/-! ## A186496.P5145022548463330856

`A288156(n)+A227353(n+2)`
-/

namespace A186496.P5145022548463330856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 n + A227353 (n + 2)

end

end A186496.P5145022548463330856

namespace A186496

/-- `A288156(n)+A227353(n+2)` -/
def P5145022548463330856.Spec : Prop :=
  ∀ n, P5145022548463330856.a n = A186496 (n + 1)

end A186496

/-! ## A186496.P8269145479924191743

`A227353(n+2)-A057355(n+1)+n`
-/

namespace A186496.P8269145479924191743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227353 (n + 2) - A057355 (n + 1) + (n : ℤ)

end

end A186496.P8269145479924191743

namespace A186496

/-- `A227353(n+2)-A057355(n+1)+n` -/
def P8269145479924191743.Spec : Prop :=
  ∀ n, P8269145479924191743.a n = A186496 (n + 1)

end A186496

/-! ## A186496.P12022210853450987999

`A249013(n+1)+A011858(n+3)`
-/

namespace A186496.P12022210853450987999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249013 (n + 1) + A011858 (n + 3)

end

end A186496.P12022210853450987999

namespace A186496

/-- `A249013(n+1)+A011858(n+3)` -/
def P12022210853450987999.Spec : Prop :=
  ∀ n, P12022210853450987999.a n = A186496 (n + 1)

end A186496

/-! ## A186496.P7499990709601021603

`A227353(n+2)+A002266(2*n+1)`
-/

namespace A186496.P7499990709601021603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227353 (n + 2) + A002266 (2 * n + 1)

end

end A186496.P7499990709601021603

namespace A186496

/-- `A227353(n+2)+A002266(2*n+1)` -/
def P7499990709601021603.Spec : Prop :=
  ∀ n, P7499990709601021603.a n = A186496 (n + 1)

end A186496

/-! ## A186496.P9119644970603188146

`A011858(2*n+1)+A227353(n+2)-A008738(2*n)`
-/

namespace A186496.P9119644970603188146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 (2 * n + 1) + (A227353 (n + 2) - A008738 (2 * n))

end

end A186496.P9119644970603188146

namespace A186496

/-- `A011858(2*n+1)+A227353(n+2)-A008738(2*n)` -/
def P9119644970603188146.Spec : Prop :=
  ∀ n, P9119644970603188146.a n = A186496 (n + 1)

end A186496

/-! ## A186496.P785193822633024108

`A130520(2*n+1)+A227353(n+2)-A130520(2*n)`
-/

namespace A186496.P785193822633024108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (2 * n + 1) + (A227353 (n + 2) - A130520 (2 * n))

end

end A186496.P785193822633024108

namespace A186496

/-- `A130520(2*n+1)+A227353(n+2)-A130520(2*n)` -/
def P785193822633024108.Spec : Prop :=
  ∀ n, P785193822633024108.a n = A186496 (n + 1)

end A186496

/-! ## A186496.P15650637665450627529

`A001651(A011858(n+3))`
-/

namespace A186496.P15650637665450627529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A011858 (n + 3)).toNat

end

end A186496.P15650637665450627529

namespace A186496

/-- `A001651(A011858(n+3))` -/
def P15650637665450627529.Spec : Prop :=
  ∀ n, P15650637665450627529.a n = A186496 (n + 1)

end A186496

/-! ## A186496.P2758519897759734400

`A001651(∑[A057354(n+3)])`
-/

namespace A186496.P2758519897759734400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186496.P2758519897759734400

namespace A186496

/-- `A001651(∑[A057354(n+3)])` -/
def P2758519897759734400.Spec : Prop :=
  ∀ n, P2758519897759734400.a n = A186496 (n + 1)

end A186496

/-! ## A186496.P10418434690918761975

`A001651(A000115(2*n+1))`
-/

namespace A186496.P10418434690918761975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A000115 (2 * n + 1)).toNat

end

end A186496.P10418434690918761975

namespace A186496

/-- `A001651(A000115(2*n+1))` -/
def P10418434690918761975.Spec : Prop :=
  ∀ n, P10418434690918761975.a n = A186496 (n + 1)

end A186496

/-! ## A186496.P17062283334202931523

`A057355(abs(2-∑[n+2]))+1`
-/

namespace A186496.P17062283334202931523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 |2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat + 1

end

end A186496.P17062283334202931523

namespace A186496

/-- `A057355(abs(2-∑[n+2]))+1` -/
def P17062283334202931523.Spec : Prop :=
  ∀ n, P17062283334202931523.a n = A186496 (n + 1)

end A186496

/-!
# A186497: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=3i-2 and g(j)=j-th triangular number. Complement of A186498.

The programs for A186497, the canonical program `A186497.P7946603808634787494` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186497 has offset 1).

The definition of A186497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186497.P7872407996456941158

`comp[ceil(∑[n/3-1])]`
-/

namespace A186497.P7872407996456941158
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A186497.P7872407996456941158

namespace A186497

/-- `comp[ceil(∑[n/3-1])]` -/
def P7872407996456941158.Spec : Prop :=
  ∀ n, (P7872407996456941158.a n : ℤ) = A186497 (n + 1)

end A186497

/-! ## A186497.P14377479343972436265

`comp[A008742(n)]-2`
-/

namespace A186497.P14377479343972436265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 2

end

end A186497.P14377479343972436265

namespace A186497

/-- `comp[A008742(n)]-2` -/
def P14377479343972436265.Spec : Prop :=
  ∀ n, P14377479343972436265.a n = A186497 (n + 1)

end A186497

/-! ## A186497.P14320374748970034911

`comp[A058212(n)]-2`
-/

namespace A186497.P14320374748970034911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 2

end

end A186497.P14320374748970034911

namespace A186497

/-- `comp[A058212(n)]-2` -/
def P14320374748970034911.Spec : Prop :=
  ∀ n, P14320374748970034911.a n = A186497 (n + 1)

end A186497

/-! ## A186497.P7946603808634787494

`A000703(n)-3+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186497

/-- `A000703(n)-3+n` -/
def P7946603808634787494.Spec : Prop :=
  ∀ n, P7946603808634787494.a n = A186497 (n + 1)

theorem P7946603808634787494.correct : P7946603808634787494.Spec := by
  intro n
  simp only [A186497, Nat.add_sub_cancel]

end A186497

/-! ## A186497.P11080992079103800266

`round(sqrt(A016921(n))+n)`
-/

namespace A186497.P11080992079103800266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A016921 n : ℝ) + (n : ℝ))

end

end A186497.P11080992079103800266

namespace A186497

/-- `round(sqrt(A016921(n))+n)` -/
def P11080992079103800266.Spec : Prop :=
  ∀ n, P11080992079103800266.a n = A186497 (n + 1)

end A186497

/-! ## A186497.P5696356183659263266

`round(sqrt(A016933(n))+n)`
-/

namespace A186497.P5696356183659263266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A016933 n : ℝ) + (n : ℝ))

end

end A186497.P5696356183659263266

namespace A186497

/-- `round(sqrt(A016933(n))+n)` -/
def P5696356183659263266.Spec : Prop :=
  ∀ n, P5696356183659263266.a n = A186497 (n + 1)

end A186497

/-! ## A186497.P7499322472343361889

`round(sqrt(A271114(n))+n)`
-/

namespace A186497.P7499322472343361889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A271114 n : ℝ) + (n : ℝ))

end

end A186497.P7499322472343361889

namespace A186497

/-- `round(sqrt(A271114(n))+n)` -/
def P7499322472343361889.Spec : Prop :=
  ∀ n, P7499322472343361889.a n = A186497 (n + 1)

end A186497

/-! ## A186497.P609967654666010836

`comp[A007997(n+3)]-2`
-/

namespace A186497.P609967654666010836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007997 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 2

end

end A186497.P609967654666010836

namespace A186497

/-- `comp[A007997(n+3)]-2` -/
def P609967654666010836.Spec : Prop :=
  ∀ n, P609967654666010836.a n = A186497 (n + 1)

end A186497

/-! ## A186497.P3421070839524741046

`comp[∑[A008611(n+1)]]-1`
-/

namespace A186497.P3421070839524741046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A186497.P3421070839524741046

namespace A186497

/-- `comp[∑[A008611(n+1)]]-1` -/
def P3421070839524741046.Spec : Prop :=
  ∀ n, P3421070839524741046.a n = A186497 (n + 1)

end A186497

/-! ## A186497.P11408251843153349762

`A023445(n)+A000703(n)`
-/

namespace A186497.P11408251843153349762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 n + A000703 n

end

end A186497.P11408251843153349762

namespace A186497

/-- `A023445(n)+A000703(n)` -/
def P11408251843153349762.Spec : Prop :=
  ∀ n, P11408251843153349762.a n = A186497 (n + 1)

theorem P11408251843153349762.correct : P11408251843153349762.Spec := by
  intro n
  simp only [A186497, Nat.add_sub_cancel, A186497.P11408251843153349762.a, A186497.P7946603808634787494.a, A000703, A000703.P6770051741631916341.a, A023445, A023445.P17030645253662401943.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A186497

/-! ## A186497.P4929288849018016383

`A000703(n)-A022959(n)`
-/

namespace A186497.P4929288849018016383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 n - A022959 n

end

end A186497.P4929288849018016383

namespace A186497

/-- `A000703(n)-A022959(n)` -/
def P4929288849018016383.Spec : Prop :=
  ∀ n, P4929288849018016383.a n = A186497 (n + 1)

theorem P4929288849018016383.correct : P4929288849018016383.Spec := by
  intro n
  simp only [A186497, Nat.add_sub_cancel, A186497.P4929288849018016383.a, A186497.P7946603808634787494.a, A000703, A000703.P6770051741631916341.a, A022959, A022959.P11065877920924967018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A186497

/-! ## A186497.P3534027395586872893

`A080513(A216522(2*n))+n`
-/

namespace A186497.P3534027395586872893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A216522 (2 * n)).toNat + (n : ℤ)

end

end A186497.P3534027395586872893

namespace A186497

/-- `A080513(A216522(2*n))+n` -/
def P3534027395586872893.Spec : Prop :=
  ∀ n, P3534027395586872893.a n = A186497 (n + 1)

end A186497

/-! ## A186497.P13322544304198593677

`A023445(A000703(n)+n)`
-/

namespace A186497.P13322544304198593677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A000703 n + (n : ℤ)).toNat

end

end A186497.P13322544304198593677

namespace A186497

/-- `A023445(A000703(n)+n)` -/
def P13322544304198593677.Spec : Prop :=
  ∀ n, P13322544304198593677.a n = A186497 (n + 1)

end A186497

/-! ## A186497.P8013820868442530346

`round(sqrt(A016777(2*n))+n)`
-/

namespace A186497.P8013820868442530346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A016777 (2 * n) : ℝ) + (n : ℝ))

end

end A186497.P8013820868442530346

namespace A186497

/-- `round(sqrt(A016777(2*n))+n)` -/
def P8013820868442530346.Spec : Prop :=
  ∀ n, P8013820868442530346.a n = A186497 (n + 1)

end A186497

/-! ## A186497.P5883541742248812595

`A216256(Δ[n²])+n`
-/

namespace A186497.P5883541742248812595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A186497.P5883541742248812595

namespace A186497

/-- `A216256(Δ[n²])+n` -/
def P5883541742248812595.Spec : Prop :=
  ∀ n, P5883541742248812595.a n = A186497 (n + 1)

end A186497

/-! ## A186497.P5723336305980635434

`round(sqrt(A001281(2*n+1))+n)`
-/

namespace A186497.P5723336305980635434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A001281 (2 * n + 1) : ℝ) + (n : ℝ))

end

end A186497.P5723336305980635434

namespace A186497

/-- `round(sqrt(A001281(2*n+1))+n)` -/
def P5723336305980635434.Spec : Prop :=
  ∀ n, P5723336305980635434.a n = A186497 (n + 1)

end A186497

/-! ## A186497.P4062804692921940360

`round(sqrt(A007310(2*n+1))+n)`
-/

namespace A186497.P4062804692921940360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A007310 (2 * n + 1) : ℝ) + (n : ℝ))

end

end A186497.P4062804692921940360

namespace A186497

/-- `round(sqrt(A007310(2*n+1))+n)` -/
def P4062804692921940360.Spec : Prop :=
  ∀ n, P4062804692921940360.a n = A186497 (n + 1)

end A186497

/-! ## A186497.P17342120159111248269

`round(sqrt(A047235(2*n+1))+n)`
-/

namespace A186497.P17342120159111248269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A047235 (2 * n + 1) : ℝ) + (n : ℝ))

end

end A186497.P17342120159111248269

namespace A186497

/-- `round(sqrt(A047235(2*n+1))+n)` -/
def P17342120159111248269.Spec : Prop :=
  ∀ n, P17342120159111248269.a n = A186497 (n + 1)

end A186497

/-! ## A186497.P3381369988241364127

`A004526(A036496(2*n+1))+n`
-/

namespace A186497.P3381369988241364127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036496 (2 * n + 1)).toNat + (n : ℤ)

end

end A186497.P3381369988241364127

namespace A186497

/-- `A004526(A036496(2*n+1))+n` -/
def P3381369988241364127.Spec : Prop :=
  ∀ n, P3381369988241364127.a n = A186497 (n + 1)

end A186497

/-! ## A186497.P13055208528817953432

`lt[3, A002260(3*n+7)]`
-/

namespace A186497.P13055208528817953432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (3 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186497.P13055208528817953432

namespace A186497

/-- `lt[3, A002260(3*n+7)]` -/
def P13055208528817953432.Spec : Prop :=
  ∀ n, (P13055208528817953432.a n : ℤ) = A186497 (n + 1)

end A186497

/-!
# A186498: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=3i-2 and g(j)=j-th triangular number. Complement of A186497.

The programs for A186498, the canonical program `A186498.P5223927562320651085` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186498 has offset 1).

The definition of A186498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186498.P5223927562320651085

`ceil(∑[(n+4)/3])`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A186498

/-- `ceil(∑[(n+4)/3])` -/
def P5223927562320651085.Spec : Prop :=
  ∀ n, P5223927562320651085.a n = A186498 (n + 1)

theorem P5223927562320651085.correct : P5223927562320651085.Spec := by
  intro n
  simp only [A186498, Nat.add_sub_cancel]

end A186498

/-! ## A186498.P4002218468064739371

`∑[∑[(-1)^(n%3)]+1]`
-/

namespace A186498.P4002218468064739371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186498.P4002218468064739371

namespace A186498

/-- `∑[∑[(-1)^(n%3)]+1]` -/
def P4002218468064739371.Spec : Prop :=
  ∀ n, P4002218468064739371.a n = A186498 (n + 1)

end A186498

/-! ## A186498.P3836519857516493984

`∑[a(n-3)+1]` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A186498.P3836519857516493984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2] fun n f1 =>
  f1 (n - 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186498.P3836519857516493984

namespace A186498

/-- `∑[a(n-3)+1]` -/
def P3836519857516493984.Spec : Prop :=
  ∀ n, (P3836519857516493984.a n : ℤ) = A186498 (n + 1)

end A186498

/-! ## A186498.P11240359630524386449

`∑[∑[gcd(3, ∑[n])-2]+1]`
-/

namespace A186498.P11240359630524386449
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186498.P11240359630524386449

namespace A186498

/-- `∑[∑[gcd(3, ∑[n])-2]+1]` -/
def P11240359630524386449.Spec : Prop :=
  ∀ n, P11240359630524386449.a n = A186498 (n + 1)

end A186498

/-! ## A186498.P7688378028320591774

`floor(cot(3/∑[n+4]))+1`
-/

namespace A186498.P7688378028320591774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (3 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) : ℝ)⌋ + 1

end

end A186498.P7688378028320591774

namespace A186498

/-- `floor(cot(3/∑[n+4]))+1` -/
def P7688378028320591774.Spec : Prop :=
  ∀ n, P7688378028320591774.a n = A186498 (n + 1)

end A186498

/-! ## A186498.P17419981309311929936

`∑[∑[(∑[n]+2)%3]-n]`
-/

namespace A186498.P17419981309311929936
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j + 2) % 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186498.P17419981309311929936

namespace A186498

/-- `∑[∑[(∑[n]+2)%3]-n]` -/
def P17419981309311929936.Spec : Prop :=
  ∀ n, P17419981309311929936.a n = A186498 (n + 1)

end A186498

/-! ## A186498.P4595471943135150322

`a(n-3)+3+n` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A186498.P4595471943135150322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  a (n - 3) + 3 + n

end

end A186498.P4595471943135150322

namespace A186498

/-- `a(n-3)+3+n` -/
def P4595471943135150322.Spec : Prop :=
  ∀ n, (P4595471943135150322.a n : ℤ) = A186498 (n + 1)

end A186498

/-! ## A186498.P7782159219157684284

`∑[∑[floor(a(n-3))]]` with `a(0)=2, a(1)=-1, a(2)=1, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A186498.P7782159219157684284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 1, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186498.P7782159219157684284

namespace A186498

/-- `∑[∑[floor(a(n-3))]]` -/
def P7782159219157684284.Spec : Prop :=
  ∀ n, P7782159219157684284.a n = A186498 (n + 1)

end A186498

/-! ## A186498.P9809910895217348646

`ceil(C(n+2, 2)/3)+n+1`
-/

namespace A186498.P9809910895217348646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 2) 2 : ℚ) / 3⌉ + (n + 1 : ℤ)

end

end A186498.P9809910895217348646

namespace A186498

/-- `ceil(C(n+2, 2)/3)+n+1` -/
def P9809910895217348646.Spec : Prop :=
  ∀ n, P9809910895217348646.a n = A186498 (n + 1)

end A186498

/-! ## A186498.P8024678832799056974

`∑[∑[1/a(n-3)]]` with `a(0)=2, a(1)=-1, a(2)=1, a(3)=1`
-/

namespace A186498.P8024678832799056974
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2, -1, 1, 1] fun n f2 =>
  1 / f2 (n - 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186498.P8024678832799056974

namespace A186498

/-- `∑[∑[1/a(n-3)]]` -/
def P8024678832799056974.Spec : Prop :=
  ∀ n, P8024678832799056974.a n = (A186498 (n + 1) : ℚ)

end A186498

/-! ## A186498.P13362837807739073531

`∑[∑[a(n-3)^3]]` with `a(0)=2, a(1)=-1, a(2)=1, a(3)=1`
-/

namespace A186498.P13362837807739073531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 1, 1] fun n f2 =>
  f2 (n - 3) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186498.P13362837807739073531

namespace A186498

/-- `∑[∑[a(n-3)^3]]` -/
def P13362837807739073531.Spec : Prop :=
  ∀ n, P13362837807739073531.a n = A186498 (n + 1)

end A186498

/-! ## A186498.P1108267321978683116

`n-∑[a(n-3)-1]` with `a(0)=-2, a(1)=0, a(2)=-1, a(3)=-2`
-/

namespace A186498.P1108267321978683116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 0, -1, -2] fun n f1 =>
  f1 (n - 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186498.P1108267321978683116

namespace A186498

/-- `n-∑[a(n-3)-1]` -/
def P1108267321978683116.Spec : Prop :=
  ∀ n, P1108267321978683116.a n = A186498 (n + 1)

end A186498

/-! ## A186498.P891732555330673971

`floor((C(n+3, 2)-n)/3)+n+1`
-/

namespace A186498.P891732555330673971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose (n + 3) 2 : ℤ) - (n : ℤ) : ℚ) / 3⌋ + (n : ℤ) + 1

end

end A186498.P891732555330673971

namespace A186498

/-- `floor((C(n+3, 2)-n)/3)+n+1` -/
def P891732555330673971.Spec : Prop :=
  ∀ n, P891732555330673971.a n = A186498 (n + 1)

end A186498

/-! ## A186498.P2308232268331627574

`2*n-(n-3-a(n-3))` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A186498.P2308232268331627574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - 3 - a (n - 3))

end

end A186498.P2308232268331627574

namespace A186498

/-- `2*n-(n-3-a(n-3))` -/
def P2308232268331627574.Spec : Prop :=
  ∀ n, P2308232268331627574.a n = A186498 (n + 1)

end A186498

/-! ## A186498.P10865006727189613435

`∑[A008611(n)+1]`
-/

namespace A186498.P10865006727189613435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186498.P10865006727189613435

namespace A186498

/-- `∑[A008611(n)+1]` -/
def P10865006727189613435.Spec : Prop :=
  ∀ n, P10865006727189613435.a n = A186498 (n + 1)

end A186498

/-! ## A186498.P10312882010055863990

`A186357(n+1)+1`
-/

namespace A186498.P10312882010055863990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186357 (n + 1) + 1

end

end A186498.P10312882010055863990

namespace A186498

/-- `A186357(n+1)+1` -/
def P10312882010055863990.Spec : Prop :=
  ∀ n, P10312882010055863990.a n = A186498 (n + 1)

end A186498

/-! ## A186498.P2477020155210618089

`∑[∑[A257075(n)]+1]`
-/

namespace A186498.P2477020155210618089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186498.P2477020155210618089

namespace A186498

/-- `∑[∑[A257075(n)]+1]` -/
def P2477020155210618089.Spec : Prop :=
  ∀ n, P2477020155210618089.a n = A186498 (n + 1)

end A186498

/-! ## A186498.P2231686749533610599

`A058212(n)+Δ[n²]`
-/

namespace A186498.P2231686749533610599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A186498.P2231686749533610599

namespace A186498

/-- `A058212(n)+Δ[n²]` -/
def P2231686749533610599.Spec : Prop :=
  ∀ n, P2231686749533610599.a n = A186498 (n + 1)

end A186498

/-! ## A186498.P16676972562121298406

`A008822(n)+∑[1-n]`
-/

namespace A186498.P16676972562121298406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008822 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186498.P16676972562121298406

namespace A186498

/-- `A008822(n)+∑[1-n]` -/
def P16676972562121298406.Spec : Prop :=
  ∀ n, P16676972562121298406.a n = A186498 (n + 1)

end A186498

/-! ## A186498.P4127415790872448872

`∑[A168056(n)+1-n]`
-/

namespace A186498.P4127415790872448872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 n + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186498.P4127415790872448872

namespace A186498

/-- `∑[A168056(n)+1-n]` -/
def P4127415790872448872.Spec : Prop :=
  ∀ n, P4127415790872448872.a n = A186498 (n + 1)

end A186498

/-!
# A186499: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=i^2 and g(j)=-4+5j^2. Complement of A186500.

The programs for A186499, the canonical program `A186499.P2988238181767478112` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186499 has offset 1).

The definition of A186499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186499.P2988238181767478112

`ceil(sqrt(A008812(n))+n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186499

/-- `ceil(sqrt(A008812(n))+n)` -/
def P2988238181767478112.Spec : Prop :=
  ∀ n, P2988238181767478112.a n = A186499 (n + 1)

theorem P2988238181767478112.correct : P2988238181767478112.Spec := by
  intro n
  simp only [A186499, Nat.add_sub_cancel]

end A186499

/-! ## A186499.P2127743423394731133

`ceil(sqrt(A008807(2*n))+n)`
-/

namespace A186499.P2127743423394731133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A008807 (2 * n) : ℝ) + (n : ℝ)⌉

end

end A186499.P2127743423394731133

namespace A186499

/-- `ceil(sqrt(A008807(2*n))+n)` -/
def P2127743423394731133.Spec : Prop :=
  ∀ n, P2127743423394731133.a n = A186499 (n + 1)

end A186499

/-! ## A186499.P8314817738800511417

`floor(A186511(2*(n+1))/2)`
-/

namespace A186499.P8314817738800511417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A186511 (2 * (n + 1)) : ℚ) / 2⌋

end

end A186499.P8314817738800511417

namespace A186499

/-- `floor(A186511(2*(n+1))/2)` -/
def P8314817738800511417.Spec : Prop :=
  ∀ n, P8314817738800511417.a n = A186499 (n + 1)

end A186499

/-! ## A186499.P6006024349052038985

`ceil(sqrt(A008807(2*n)))-A001489(n)`
-/

namespace A186499.P6006024349052038985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A008807 (2 * n) : ℝ)⌉ - A001489 n

end

end A186499.P6006024349052038985

namespace A186499

/-- `ceil(sqrt(A008807(2*n)))-A001489(n)` -/
def P6006024349052038985.Spec : Prop :=
  ∀ n, P6006024349052038985.a n = A186499 (n + 1)

end A186499

/-! ## A186499.P10129039153209166685

`A004525(A186515(n+1)+A186511(n+1))`
-/

namespace A186499.P10129039153209166685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A186515 (n + 1) + A186511 (n + 1)).toNat

end

end A186499.P10129039153209166685

namespace A186499

/-- `A004525(A186515(n+1)+A186511(n+1))` -/
def P10129039153209166685.Spec : Prop :=
  ∀ n, P10129039153209166685.a n = A186499 (n + 1)

end A186499

/-! ## A186499.P9194265036840644368

`A004526(A186511(2*(n+1)))`
-/

namespace A186499.P9194265036840644368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A186511 (2 * (n + 1))).toNat

end

end A186499.P9194265036840644368

namespace A186499

/-- `A004526(A186511(2*(n+1)))` -/
def P9194265036840644368.Spec : Prop :=
  ∀ n, P9194265036840644368.a n = A186499 (n + 1)

end A186499

/-! ## A186499.P7691486473325921432

`A000196(round((n+1)²/5))+n+1`
-/

namespace A186499.P7691486473325921432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / 5)).toNat + (n + 1 : ℤ)

end

end A186499.P7691486473325921432

namespace A186499

/-- `A000196(round((n+1)²/5))+n+1` -/
def P7691486473325921432.Spec : Prop :=
  ∀ n, P7691486473325921432.a n = A186499 (n + 1)

end A186499

/-! ## A186499.P5006378048381673605

`n+1+A000196(A008738(n+1))`
-/

namespace A186499.P5006378048381673605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000196 (A008738 (n + 1)).toNat

end

end A186499.P5006378048381673605

namespace A186499

/-- `n+1+A000196(A008738(n+1))` -/
def P5006378048381673605.Spec : Prop :=
  ∀ n, P5006378048381673605.a n = A186499 (n + 1)

end A186499

/-! ## A186499.P15198959931045116032

`A000196(∑[A312014(and(1, n)+n)])`
-/

namespace A186499.P15198959931045116032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312014 (Nat.land 1 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186499.P15198959931045116032

namespace A186499

/-- `A000196(∑[A312014(and(1, n)+n)])` -/
def P15198959931045116032.Spec : Prop :=
  ∀ n, P15198959931045116032.a n = A186499 (n + 1)

end A186499

