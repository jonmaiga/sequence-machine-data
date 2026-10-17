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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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

/-!
# A164400: Number of binary strings of length n with no substrings equal to 0001 or 1100.

The programs for A164400, there is no canonical definition to state claims against.
-/

/-! ## A164400.P7739452028441071893

`∑[ceil(A001519(2*n+1)/A243853(3*n+2))]`
-/

namespace A164400.P7739452028441071893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001519 (2 * n + 1) : ℚ) / (A243853 (3 * n + 2) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164400.P7739452028441071893

/-! ## A164400.P15792396195419658124

`∑[A003059(A006342(n))]`
-/

namespace A164400.P15792396195419658124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A006342 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164400.P15792396195419658124

/-! ## A164400.P2281035964411668336

`∑[A000194(A116409(n))]`
-/

namespace A164400.P2281035964411668336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A116409 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164400.P2281035964411668336

/-! ## A164400.P12988183273942204385

`∑[A000196(A178778(n))]`
-/

namespace A164400.P12988183273942204385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A178778 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164400.P12988183273942204385

/-! ## A164400.P10870694311517126928

`∑[A225687(A179176(n))]`
-/

namespace A164400.P10870694311517126928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A179176 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164400.P10870694311517126928

/-!
# A164401: Number of binary strings of length n with no substrings equal to 0010 or 0101.

The programs for A164401, the canonical program `A164401.P9074182780316539144` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164401 has offset 0).

The definition of A164401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164401.P9074182780316539144

`2*a(n-1)-a(n-2)+a(n-3)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=14, a(5)=25`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164401

/-- `2*a(n-1)-a(n-2)+a(n-3)+a(n-6)` -/
def P9074182780316539144.Spec : Prop :=
  ∀ n, P9074182780316539144.a n = A164401 n

theorem P9074182780316539144.correct : P9074182780316539144.Spec := by
  intro n
  simp only [A164401]

end A164401

/-! ## A164401.P1011118333426373021

`A238644(n+2)+A238644(n+4)`
-/

namespace A164401.P1011118333426373021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238644 (n + 2) + A238644 (n + 4)

end

end A164401.P1011118333426373021

namespace A164401

/-- `A238644(n+2)+A238644(n+4)` -/
def P1011118333426373021.Spec : Prop :=
  ∀ n, P1011118333426373021.a n = A164401 n

end A164401

/-! ## A164401.P7356059378576624897

`∑[A225687(A088352(n)²)]`
-/

namespace A164401.P7356059378576624897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A088352 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164401.P7356059378576624897

namespace A164401

/-- `∑[A225687(A088352(n)²)]` -/
def P7356059378576624897.Spec : Prop :=
  ∀ n, P7356059378576624897.a n = A164401 n

end A164401

/-! ## A164401.P3895365404485933725

`∑[A068330(A068634(n+2))]`
-/

namespace A164401.P3895365404485933725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068330 (A068634 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164401.P3895365404485933725

namespace A164401

/-- `∑[A068330(A068634(n+2))]` -/
def P3895365404485933725.Spec : Prop :=
  ∀ n, P3895365404485933725.a n = A164401 n

end A164401

/-! ## A164401.P18335064645089696576

`A375815(A052975(n))`
-/

namespace A164401.P18335064645089696576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375815 (A052975 n).toNat

end

end A164401.P18335064645089696576

namespace A164401

/-- `A375815(A052975(n))` -/
def P18335064645089696576.Spec : Prop :=
  ∀ n, P18335064645089696576.a n = A164401 n

end A164401

/-!
# A164402: Number of binary strings of length n with no substrings equal to 0010 or 0110.

The programs for A164402, the canonical program `A164402.P3635009239224654016` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164402 has offset 0).

The definition of A164402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164402.P3635009239224654016

`2*a(n-1)-2*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164402

/-- `2*a(n-1)-2*a(n-3)+2*a(n-4)` -/
def P3635009239224654016.Spec : Prop :=
  ∀ n, P3635009239224654016.a n = A164402 n

theorem P3635009239224654016.correct : P3635009239224654016.Spec := by
  intro n
  simp only [A164402]

end A164402

/-! ## A164402.P6276739244263634224

`Δ[A164404(n+6)]%A164404(n+4)`
-/

namespace A164402.P6276739244263634224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164404 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A164404 (n + 4))

end

end A164402.P6276739244263634224

namespace A164402

/-- `Δ[A164404(n+6)]%A164404(n+4)` -/
def P6276739244263634224.Spec : Prop :=
  ∀ n, P6276739244263634224.a n = A164402 n

end A164402

/-! ## A164402.P4519258765459622103

`(A164404(n+7)-A164404(n+6))%A164404(n+4)`
-/

namespace A164402.P4519258765459622103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164404 (n + 7) - A164404 (n + 6)) (A164404 (n + 4))

end

end A164402.P4519258765459622103

namespace A164402

/-- `(A164404(n+7)-A164404(n+6))%A164404(n+4)` -/
def P4519258765459622103.Spec : Prop :=
  ∀ n, P4519258765459622103.a n = A164402 n

end A164402

/-! ## A164402.P15422479917452858717

`A293137(A026165(n))+∑{p}[n+1, gcd(n, #)]`
-/

namespace A164402.P15422479917452858717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A026165 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)

end

end A164402.P15422479917452858717

namespace A164402

/-- `A293137(A026165(n))+∑{p}[n+1, gcd(n, #)]` -/
def P15422479917452858717.Spec : Prop :=
  ∀ n, P15422479917452858717.a n = A164402 n

end A164402

/-!
# A164403: Number of binary strings of length n with no substrings equal to 0010 or 1001.

The programs for A164403, there is no canonical definition to state claims against.
-/

/-! ## A164403.P8338050607486636433

`A195181(A329838(a(n-1)))` with `a(0)=14`
-/

namespace A164403.P8338050607486636433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A195181 (A329838 (a (n - 1)).toNat).toNat

end

end A164403.P8338050607486636433

/-! ## A164403.P3716606223735656466

`A121901(A184189(n+1))`
-/

namespace A164403.P3716606223735656466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121901 (A184189 (n + 1)).toNat

end

end A164403.P3716606223735656466

/-! ## A164403.P16354253131758653448

`A121901(A209546(n+1)-1)`
-/

namespace A164403.P16354253131758653448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121901 (A209546 (n + 1) - 1).toNat

end

end A164403.P16354253131758653448

/-!
# A164404: Number of binary strings of length n with no substrings equal to 0010 or 1011.

The programs for A164404, the canonical program `A164404.P8510783320141564040` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164404 has offset 4).

The definition of A164404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164404.P8510783320141564040

`(A164402(n+2)+A164402(n+5))/2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164404

/-- `(A164402(n+2)+A164402(n+5))/2` -/
def P8510783320141564040.Spec : Prop :=
  ∀ n, P8510783320141564040.a n = (A164404 (n + 4) : ℚ)

end A164404

/-! ## A164404.P14281491926653213726

`A006370(A164402(n+2)+A164402(n+5))`
-/

namespace A164404.P14281491926653213726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A164402 (n + 2) + A164402 (n + 5)).toNat

end

end A164404.P14281491926653213726

namespace A164404

/-- `A006370(A164402(n+2)+A164402(n+5))` -/
def P14281491926653213726.Spec : Prop :=
  ∀ n, P14281491926653213726.a n = A164404 (n + 4)

end A164404

/-! ## A164404.P11095864044320139907

`A213908(a(n-1))` with `a(0)=14`
-/

namespace A164404.P11095864044320139907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A213908 (a (n - 1)).toNat

end

end A164404.P11095864044320139907

namespace A164404

/-- `A213908(a(n-1))` -/
def P11095864044320139907.Spec : Prop :=
  ∀ n, P11095864044320139907.a n = A164404 (n + 4)

end A164404

/-! ## A164404.P10042672969473790647

`A227568(A115992(n))+A164408(n+4)`
-/

namespace A164404.P10042672969473790647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A115992 n).toNat + A164408 (n + 4)

end

end A164404.P10042672969473790647

namespace A164404

/-- `A227568(A115992(n))+A164408(n+4)` -/
def P10042672969473790647.Spec : Prop :=
  ∀ n, P10042672969473790647.a n = A164404 (n + 4)

end A164404

/-!
# A164405: Number of binary strings of length n with no substrings equal to 0010 or 1100.

The programs for A164405, the canonical program `A164405.P13494739047571857953` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164405 has offset 0).

The definition of A164405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164405.P13494739047571857953

`2*a(n-1)-a(n-3)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=14, a(5)=24`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164405

/-- `2*a(n-1)-a(n-3)+a(n-6)` -/
def P13494739047571857953.Spec : Prop :=
  ∀ n, P13494739047571857953.a n = A164405 n

theorem P13494739047571857953.correct : P13494739047571857953.Spec := by
  intro n
  simp only [A164405]

end A164405

/-! ## A164405.P5471543559706176556

`A100196(∑[A292460(n)+A051164(n)])`
-/

namespace A164405.P5471543559706176556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 n + A051164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164405.P5471543559706176556

namespace A164405

/-- `A100196(∑[A292460(n)+A051164(n)])` -/
def P5471543559706176556.Spec : Prop :=
  ∀ n, P5471543559706176556.a n = A164405 n

end A164405

/-! ## A164405.P9309585540596192579

`A100196(A290519(n)+A163271(n+1))`
-/

namespace A164405.P9309585540596192579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A290519 n + A163271 (n + 1)).toNat

end

end A164405.P9309585540596192579

namespace A164405

/-- `A100196(A290519(n)+A163271(n+1))` -/
def P9309585540596192579.Spec : Prop :=
  ∀ n, P9309585540596192579.a n = A164405 n

end A164405

/-! ## A164405.P15655236460099420844

`A094192(A333106(n))-1`
-/

namespace A164405.P15655236460099420844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094192 (A333106 n).toNat - 1

end

end A164405.P15655236460099420844

namespace A164405

/-- `A094192(A333106(n))-1` -/
def P15655236460099420844.Spec : Prop :=
  ∀ n, P15655236460099420844.a n = A164405 n

end A164405

/-! ## A164405.P11231022010504011439

`∑[A000196(A215340(n+2))]`
-/

namespace A164405.P11231022010504011439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A215340 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164405.P11231022010504011439

namespace A164405

/-- `∑[A000196(A215340(n+2))]` -/
def P11231022010504011439.Spec : Prop :=
  ∀ n, P11231022010504011439.a n = A164405 n

end A164405

/-!
# A164406: Number of binary strings of length n with no substrings equal to 0011 or 0101.

The programs for A164406, the canonical program `A164406.P600747503632810465` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164406 has offset 0).

The definition of A164406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 588 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164406.P600747503632810465

`A291725(n)-A068921(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164406

/-- `A291725(n)-A068921(n)` -/
def P600747503632810465.Spec : Prop :=
  ∀ n, P600747503632810465.a n = A164406 n

theorem P600747503632810465.correct : P600747503632810465.Spec := by
  intro n
  simp only [A164406]

end A164406

/-! ## A164406.P17779021290634755323

`A291725(n)-A000930(n+1)`
-/

namespace A164406.P17779021290634755323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291725 n - A000930 (n + 1)

end

end A164406.P17779021290634755323

namespace A164406

/-- `A291725(n)-A000930(n+1)` -/
def P17779021290634755323.Spec : Prop :=
  ∀ n, P17779021290634755323.a n = A164406 n

end A164406

/-! ## A164406.P7538438548563679437

`A164505(n+4)-A164505(n+8)%A164505(n+6)`
-/

namespace A164406.P7538438548563679437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164505 (n + 4) - Int.tmod (A164505 (n + 8)) (A164505 (n + 6))

end

end A164406.P7538438548563679437

namespace A164406

/-- `A164505(n+4)-A164505(n+8)%A164505(n+6)` -/
def P7538438548563679437.Spec : Prop :=
  ∀ n, P7538438548563679437.a n = A164406 n

end A164406

/-! ## A164406.P1746531243059976824

`A291725(n)-A170935(n)/A000930(n)`
-/

namespace A164406.P1746531243059976824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291725 n : ℚ) - (A170935 n : ℚ) / (A000930 n : ℚ)

end

end A164406.P1746531243059976824

namespace A164406

/-- `A291725(n)-A170935(n)/A000930(n)` -/
def P1746531243059976824.Spec : Prop :=
  ∀ n, P1746531243059976824.a n = (A164406 n : ℚ)

end A164406

/-! ## A164406.P8143654893537335470

`record[A143361(A133263(n))]-A068921(n)`
-/

namespace A164406.P8143654893537335470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143361 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A068921 n

end

end A164406.P8143654893537335470

namespace A164406

/-- `record[A143361(A133263(n))]-A068921(n)` -/
def P8143654893537335470.Spec : Prop :=
  ∀ n, P8143654893537335470.a n = A164406 n

end A164406

/-! ## A164406.P1213693458460061605

`record[A143361(A238531(n))]-A068921(n)`
-/

namespace A164406.P1213693458460061605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143361 (A238531 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A068921 n

end

end A164406.P1213693458460061605

namespace A164406

/-- `record[A143361(A238531(n))]-A068921(n)` -/
def P1213693458460061605.Spec : Prop :=
  ∀ n, P1213693458460061605.a n = A164406 n

end A164406

/-! ## A164406.P16388127040577856527

`A143361(A133263(n+2))-A068921(n)`
-/

namespace A164406.P16388127040577856527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143361 (A133263 (n + 2)).toNat - A068921 n

end

end A164406.P16388127040577856527

namespace A164406

/-- `A143361(A133263(n+2))-A068921(n)` -/
def P16388127040577856527.Spec : Prop :=
  ∀ n, P16388127040577856527.a n = A164406 n

end A164406

/-! ## A164406.P16570772595542840705

`A143361(A133263(n+2))-A000930(n+1)`
-/

namespace A164406.P16570772595542840705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143361 (A133263 (n + 2)).toNat - A000930 (n + 1)

end

end A164406.P16570772595542840705

namespace A164406

/-- `A143361(A133263(n+2))-A000930(n+1)` -/
def P16570772595542840705.Spec : Prop :=
  ∀ n, P16570772595542840705.a n = A164406 n

end A164406

/-! ## A164406.P10852038165410308438

`A143361(A133263(n+2))-A135851(n+6)`
-/

namespace A164406.P10852038165410308438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143361 (A133263 (n + 2)).toNat - A135851 (n + 6)

end

end A164406.P10852038165410308438

namespace A164406

/-- `A143361(A133263(n+2))-A135851(n+6)` -/
def P10852038165410308438.Spec : Prop :=
  ∀ n, P10852038165410308438.a n = A164406 n

end A164406

/-!
# A164407: Number of binary strings of length n with no substrings equal to 0000 0001 or 0010.

The programs for A164407, the canonical program `A164407.P9971242313005730117` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164407 has offset 4).

The definition of A164407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164407.P16152494923629625036

`A181532(n)+A164409(n+4)`
-/

namespace A164407.P16152494923629625036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181532 n + A164409 (n + 4)

end

end A164407.P16152494923629625036

namespace A164407

/-- `A181532(n)+A164409(n+4)` -/
def P16152494923629625036.Spec : Prop :=
  ∀ n, P16152494923629625036.a n = A164407 (n + 4)

end A164407

/-! ## A164407.P9971242313005730117

`A060945(n+1)+A005251(n+7)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164407

/-- `A060945(n+1)+A005251(n+7)` -/
def P9971242313005730117.Spec : Prop :=
  ∀ n, P9971242313005730117.a n = A164407 (n + 4)

theorem P9971242313005730117.correct : P9971242313005730117.Spec := by
  intro n
  simp only [A164407, Nat.add_sub_cancel]

end A164407

/-! ## A164407.P14045840763815145225

`A017818(A103517(n+6))-A017818(2*n+1)`
-/

namespace A164407.P14045840763815145225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (A103517 (n + 6)).toNat - A017818 (2 * n + 1)

end

end A164407.P14045840763815145225

namespace A164407

/-- `A017818(A103517(n+6))-A017818(2*n+1)` -/
def P14045840763815145225.Spec : Prop :=
  ∀ n, P14045840763815145225.a n = A164407 (n + 4)

end A164407

/-! ## A164407.P7672143457780497892

`A017818(A005843(n+7))-A017818(2*n+1)`
-/

namespace A164407.P7672143457780497892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (A005843 (n + 7)).toNat - A017818 (2 * n + 1)

end

end A164407.P7672143457780497892

namespace A164407

/-- `A017818(A005843(n+7))-A017818(2*n+1)` -/
def P7672143457780497892.Spec : Prop :=
  ∀ n, P7672143457780497892.a n = A164407 (n + 4)

end A164407

/-! ## A164407.P17184883088773562795

`A060945(n+1)+A060945(n+2)+A060945(n+5)`
-/

namespace A164407.P17184883088773562795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 (n + 1) + (A060945 (n + 2) + A060945 (n + 5))

end

end A164407.P17184883088773562795

namespace A164407

/-- `A060945(n+1)+A060945(n+2)+A060945(n+5)` -/
def P17184883088773562795.Spec : Prop :=
  ∀ n, P17184883088773562795.a n = A164407 (n + 4)

end A164407

/-!
# A164408: Number of binary strings of length n with no substrings equal to 0000 0001 or 0011.

The programs for A164408, the canonical program `A164408.P13401702195576236781` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164408 has offset 0).

The definition of A164408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 423 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164408.P13401702195576236781

`2*(a(n-2)+a(n-3))-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=13`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164408

/-- `2*(a(n-2)+a(n-3))-a(n-5)` -/
def P13401702195576236781.Spec : Prop :=
  ∀ n, P13401702195576236781.a n = A164408 n

theorem P13401702195576236781.correct : P13401702195576236781.Spec := by
  intro n
  simp only [A164408]

end A164408

/-! ## A164408.P9123149072599473192

`A162920(n)-a(n-1)` with `a(0)=1`
-/

namespace A164408.P9123149072599473192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162920 n - a (n - 1)

end

end A164408.P9123149072599473192

namespace A164408

/-- `A162920(n)-a(n-1)` -/
def P9123149072599473192.Spec : Prop :=
  ∀ n, P9123149072599473192.a n = A164408 n

end A164408

/-! ## A164408.P4344929217728155877

`A135431(n+1)+A135431(n)-A116201(n)`
-/

namespace A164408.P4344929217728155877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135431 (n + 1) + (A135431 n - A116201 n)

end

end A164408.P4344929217728155877

namespace A164408

/-- `A135431(n+1)+A135431(n)-A116201(n)` -/
def P4344929217728155877.Spec : Prop :=
  ∀ n, P4344929217728155877.a n = A164408 n

end A164408

/-! ## A164408.P14627762222748735725

`A116732(n+1)+A135431(n+1)+A116732(n)`
-/

namespace A164408.P14627762222748735725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116732 (n + 1) + (A135431 (n + 1) + A116732 n)

end

end A164408.P14627762222748735725

namespace A164408

/-- `A116732(n+1)+A135431(n+1)+A116732(n)` -/
def P14627762222748735725.Spec : Prop :=
  ∀ n, P14627762222748735725.a n = A164408 n

end A164408

/-! ## A164408.P12418117890362505378

`A298810(Δ[n²])/3`
-/

namespace A164408.P12418117890362505378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298810 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A164408.P12418117890362505378

namespace A164408

/-- `A298810(Δ[n²])/3` -/
def P12418117890362505378.Spec : Prop :=
  ∀ n, P12418117890362505378.a n = (A164408 n : ℚ)

end A164408

/-! ## A164408.P4337030322285668777

`record[A298810(n)/A298810(A260738(n+1))]`
-/

namespace A164408.P4337030322285668777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298810 n : ℚ) / (A298810 (A260738 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164408.P4337030322285668777

namespace A164408

/-- `record[A298810(n)/A298810(A260738(n+1))]` -/
def P4337030322285668777.Spec : Prop :=
  ∀ n, P4337030322285668777.a n = (A164408 n : ℚ)

end A164408

/-!
# A164409: Number of binary strings of length n with no substrings equal to 0000 0001 or 0100.

The programs for A164409, the canonical program `A164409.P3755803672503472147` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164409 has offset 4).

The definition of A164409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164409.P3755803672503472147

`A117374(2*(n+4))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164409

/-- `A117374(2*(n+4))` -/
def P3755803672503472147.Spec : Prop :=
  ∀ n, P3755803672503472147.a n = A164409 (n + 4)

theorem P3755803672503472147.correct : P3755803672503472147.Spec := by
  intro n
  simp only [A164409, Nat.add_sub_cancel]

end A164409

/-! ## A164409.P4673694466799637215

`abs(Δ[A078065(n+2)])`
-/

namespace A164409.P4673694466799637215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078065 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A164409.P4673694466799637215

namespace A164409

/-- `abs(Δ[A078065(n+2)])` -/
def P4673694466799637215.Spec : Prop :=
  ∀ n, P4673694466799637215.a n = A164409 (n + 4)

end A164409

/-! ## A164409.P11371331618096392223

`A164494(n+4)-A005251(n)`
-/

namespace A164409.P11371331618096392223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164494 (n + 4) - A005251 n

end

end A164409.P11371331618096392223

namespace A164409

/-- `A164494(n+4)-A005251(n)` -/
def P11371331618096392223.Spec : Prop :=
  ∀ n, P11371331618096392223.a n = A164409 (n + 4)

end A164409

/-! ## A164409.P10139996426252596439

`A164407(n+4)-A181532(n)`
-/

namespace A164409.P10139996426252596439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164407 (n + 4) - A181532 n

end

end A164409.P10139996426252596439

namespace A164409

/-- `A164407(n+4)-A181532(n)` -/
def P10139996426252596439.Spec : Prop :=
  ∀ n, P10139996426252596439.a n = A164409 (n + 4)

end A164409

/-! ## A164409.P11401387004466299875

`A010901(n+2)+A005251(n+2)`
-/

namespace A164409.P11401387004466299875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010901 (n + 2) + A005251 (n + 2)

end

end A164409.P11401387004466299875

namespace A164409

/-- `A010901(n+2)+A005251(n+2)` -/
def P11401387004466299875.Spec : Prop :=
  ∀ n, P11401387004466299875.a n = A164409 (n + 4)

end A164409

/-! ## A164409.P864358734904430343

`2*A010901(n+1)-A005314(n+1)`
-/

namespace A164409.P864358734904430343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010901 (n + 1) - A005314 (n + 1)

end

end A164409.P864358734904430343

namespace A164409

/-- `2*A010901(n+1)-A005314(n+1)` -/
def P864358734904430343.Spec : Prop :=
  ∀ n, P864358734904430343.a n = A164409 (n + 4)

end A164409

/-! ## A164409.P663031337865925063

`A077855(n+3)+A052954(2*(n+1))`
-/

namespace A164409.P663031337865925063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077855 (n + 3) + A052954 (2 * (n + 1))

end

end A164409.P663031337865925063

namespace A164409

/-- `A077855(n+3)+A052954(2*(n+1))` -/
def P663031337865925063.Spec : Prop :=
  ∀ n, P663031337865925063.a n = A164409 (n + 4)

end A164409

/-! ## A164409.P13312233012497619293

`A134816(2*n+1)+A020720(2*(n+1))`
-/

namespace A164409.P13312233012497619293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * n + 1) + A020720 (2 * (n + 1))

end

end A164409.P13312233012497619293

namespace A164409

/-- `A134816(2*n+1)+A020720(2*(n+1))` -/
def P13312233012497619293.Spec : Prop :=
  ∀ n, P13312233012497619293.a n = A164409 (n + 4)

end A164409

/-! ## A164409.P5959752284438931985

`A182097(2*(n+1))+A020720(2*(n+1))`
-/

namespace A164409.P5959752284438931985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * (n + 1)) + A020720 (2 * (n + 1))

end

end A164409.P5959752284438931985

namespace A164409

/-- `A182097(2*(n+1))+A020720(2*(n+1))` -/
def P5959752284438931985.Spec : Prop :=
  ∀ n, P5959752284438931985.a n = A164409 (n + 4)

end A164409

/-! ## A164409.P11968103743763538369

`A084338(2*(n+1))+A084338(A020739(n+1))`
-/

namespace A164409.P11968103743763538369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (2 * (n + 1)) + A084338 (A020739 (n + 1)).toNat

end

end A164409.P11968103743763538369

namespace A164409

/-- `A084338(2*(n+1))+A084338(A020739(n+1))` -/
def P11968103743763538369.Spec : Prop :=
  ∀ n, P11968103743763538369.a n = A164409 (n + 4)

end A164409

/-! ## A164409.P2983646291812242913

`Δ[A005314(n+1)+A005314(n+6)]`
-/

namespace A164409.P2983646291812242913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (n + 1) + A005314 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164409.P2983646291812242913

namespace A164409

/-- `Δ[A005314(n+1)+A005314(n+6)]` -/
def P2983646291812242913.Spec : Prop :=
  ∀ n, P2983646291812242913.a n = A164409 (n + 4)

end A164409

/-!
# A164410: Number of binary strings of length n with no substrings equal to 0000 0001 or 0101.

The programs for A164410, the canonical program `A164410.P18148346622489512535` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164410 has offset 4).

The definition of A164410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 432 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164410.P18148346622489512535

`A303714(n+3)+A303714(n+4)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164410

/-- `A303714(n+3)+A303714(n+4)` -/
def P18148346622489512535.Spec : Prop :=
  ∀ n, P18148346622489512535.a n = A164410 (n + 4)

theorem P18148346622489512535.correct : P18148346622489512535.Spec := by
  intro n
  simp only [A164410, Nat.add_sub_cancel]

end A164410

/-! ## A164410.P14684338401634626263

`A164399(n+4)-A003479(n)`
-/

namespace A164410.P14684338401634626263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164399 (n + 4) - A003479 n

end

end A164410.P14684338401634626263

namespace A164410

/-- `A164399(n+4)-A003479(n)` -/
def P14684338401634626263.Spec : Prop :=
  ∀ n, P14684338401634626263.a n = A164410 (n + 4)

end A164410

/-! ## A164410.P15239137240741132290

`A164395(n+4)-A164395(n)`
-/

namespace A164410.P15239137240741132290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164395 (n + 4) - A164395 n

end

end A164410.P15239137240741132290

namespace A164410

/-- `A164395(n+4)-A164395(n)` -/
def P15239137240741132290.Spec : Prop :=
  ∀ n, P15239137240741132290.a n = A164410 (n + 4)

end A164410

/-! ## A164410.P5440910017103376646

`A164399(n+4)-∑[A077949(n)]`
-/

namespace A164410.P5440910017103376646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164399 (n + 4) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164410.P5440910017103376646

namespace A164410

/-- `A164399(n+4)-∑[A077949(n)]` -/
def P5440910017103376646.Spec : Prop :=
  ∀ n, P5440910017103376646.a n = A164410 (n + 4)

end A164410

/-! ## A164410.P6407284368348626040

`A003476(n+6)-A003476(n+2)`
-/

namespace A164410.P6407284368348626040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 6) - A003476 (n + 2)

end

end A164410.P6407284368348626040

namespace A164410

/-- `A003476(n+6)-A003476(n+2)` -/
def P6407284368348626040.Spec : Prop :=
  ∀ n, P6407284368348626040.a n = A164410 (n + 4)

end A164410

/-! ## A164410.P2175790820388650377

`Δ[A289260(n+4)]`
-/

namespace A164410.P2175790820388650377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289260 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164410.P2175790820388650377

namespace A164410

/-- `Δ[A289260(n+4)]` -/
def P2175790820388650377.Spec : Prop :=
  ∀ n, P2175790820388650377.a n = A164410 (n + 4)

end A164410

/-! ## A164410.P12925755102060613729

`Δ[abs(A279780(n+4))]`
-/

namespace A164410.P12925755102060613729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279780 (n + 4)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164410.P12925755102060613729

namespace A164410

/-- `Δ[abs(A279780(n+4))]` -/
def P12925755102060613729.Spec : Prop :=
  ∀ n, P12925755102060613729.a n = A164410 (n + 4)

end A164410

/-!
# A164411: Number of binary strings of length n with no substrings equal to 0000, 0001, or 0110.

The programs for A164411, the canonical program `A164411.P5870386763254250035` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164411 has offset 0).

The definition of A164411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164411.P5870386763254250035

`A340215(n+4)-2*A340215(n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164411

/-- `A340215(n+4)-2*A340215(n+2)` -/
def P5870386763254250035.Spec : Prop :=
  ∀ n, P5870386763254250035.a n = A164411 n

theorem P5870386763254250035.correct : P5870386763254250035.Spec := by
  intro n
  simp only [A164411]

end A164411

/-! ## A164411.P14487363136620124691

`A020718(n)-A020718(n+6)%A340217(n+7)`
-/

namespace A164411.P14487363136620124691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020718 n - Int.tmod (A020718 (n + 6)) (A340217 (n + 7))

end

end A164411.P14487363136620124691

namespace A164411

/-- `A020718(n)-A020718(n+6)%A340217(n+7)` -/
def P14487363136620124691.Spec : Prop :=
  ∀ n, P14487363136620124691.a n = A164411 n

end A164411

/-! ## A164411.P4919375939828554931

`5*A340217(n+7)-A340217(n+10)`
-/

namespace A164411.P4919375939828554931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A340217 (n + 7) - A340217 (n + 10)

end

end A164411.P4919375939828554931

namespace A164411

/-- `5*A340217(n+7)-A340217(n+10)` -/
def P4919375939828554931.Spec : Prop :=
  ∀ n, P4919375939828554931.a n = A164411 n

end A164411

/-! ## A164411.P14296103821508164474

`A340215(n+4)-A005843(A340215(n+2))`
-/

namespace A164411.P14296103821508164474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340215 (n + 4) - A005843 (A340215 (n + 2)).toNat

end

end A164411.P14296103821508164474

namespace A164411

/-- `A340215(n+4)-A005843(A340215(n+2))` -/
def P14296103821508164474.Spec : Prop :=
  ∀ n, P14296103821508164474.a n = A164411 n

end A164411

/-!
# A164412: Number of binary strings of length n with no substrings equal to 0000 0001 or 0111.

The programs for A164412, the canonical program `A164412.P16406330314494169784` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164412 has offset 4).

The definition of A164412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164412.P3500626189389507838

`A266339(n+2)+4`
-/

namespace A164412.P3500626189389507838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266339 (n + 2) + 4

end

end A164412.P3500626189389507838

namespace A164412

/-- `A266339(n+2)+4` -/
def P3500626189389507838.Spec : Prop :=
  ∀ n, P3500626189389507838.a n = A164412 (n + 4)

end A164412

/-! ## A164412.P16101084138071241280

`A173714(n+6)-1`
-/

namespace A164412.P16101084138071241280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 (n + 6) - 1

end

end A164412.P16101084138071241280

namespace A164412

/-- `A173714(n+6)-1` -/
def P16101084138071241280.Spec : Prop :=
  ∀ n, P16101084138071241280.a n = A164412 (n + 4)

end A164412

/-! ## A164412.P16406330314494169784

`A094103(2*n+9)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164412

/-- `A094103(2*n+9)` -/
def P16406330314494169784.Spec : Prop :=
  ∀ n, P16406330314494169784.a n = A164412 (n + 4)

theorem P16406330314494169784.correct : P16406330314494169784.Spec := by
  intro n
  simp only [A164412, Nat.add_sub_cancel]

end A164412

/-! ## A164412.P17916165400970519812

`A164397(n+4)-A164397(n)`
-/

namespace A164412.P17916165400970519812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164397 (n + 4) - A164397 n

end

end A164412.P17916165400970519812

namespace A164412

/-- `A164397(n+4)-A164397(n)` -/
def P17916165400970519812.Spec : Prop :=
  ∀ n, P17916165400970519812.a n = A164412 (n + 4)

end A164412

/-! ## A164412.P13809574399520152925

`A260952(A007318(∑[n]))+A173714(n+6)`
-/

namespace A164412.P13809574399520152925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260952 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A173714 (n + 6)

end

end A164412.P13809574399520152925

namespace A164412

/-- `A260952(A007318(∑[n]))+A173714(n+6)` -/
def P13809574399520152925.Spec : Prop :=
  ∀ n, P13809574399520152925.a n = A164412 (n + 4)

end A164412

/-!
# A164413: Number of binary strings of length n with no substrings equal to 0000, 0001 or 1001.

The programs for A164413, the canonical program `A164413.P9155242093717820697` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164413 has offset 0).

The definition of A164413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164413.P9155242093717820697

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=13, a(5)=22, a(6)=36`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164413

/-- `a(n-1)+a(n-2)` -/
def P9155242093717820697.Spec : Prop :=
  ∀ n, (P9155242093717820697.a n : ℤ) = A164413 n

theorem P9155242093717820697.correct : P9155242093717820697.Spec := by
  intro n
  simp only [A164413]

end A164413

/-! ## A164413.P10572532816614302536

`ceil(A192960(2*n)/A020701(n))`
-/

namespace A164413.P10572532816614302536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A192960 (2 * n) : ℚ) / (A020701 n : ℚ)⌉

end

end A164413.P10572532816614302536

namespace A164413

/-- `ceil(A192960(2*n)/A020701(n))` -/
def P10572532816614302536.Spec : Prop :=
  ∀ n, P10572532816614302536.a n = A164413 n

end A164413

/-! ## A164413.P10176935312593674017

`ceil(A179991(2*n+1)/A169985(n+2))`
-/

namespace A164413.P10176935312593674017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A179991 (2 * n + 1) : ℚ) / (A169985 (n + 2) : ℚ)⌉

end

end A164413.P10176935312593674017

namespace A164413

/-- `ceil(A179991(2*n+1)/A169985(n+2))` -/
def P10176935312593674017.Spec : Prop :=
  ∀ n, P10176935312593674017.a n = A164413 n

end A164413

/-! ## A164413.P17795314982765218247

`floor(A104161(2*(n+1))/A000071(n+4))`
-/

namespace A164413.P17795314982765218247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A104161 (2 * (n + 1)) : ℚ) / (A000071 (n + 4) : ℚ)⌋

end

end A164413.P17795314982765218247

namespace A164413

/-- `floor(A104161(2*(n+1))/A000071(n+4))` -/
def P17795314982765218247.Spec : Prop :=
  ∀ n, P17795314982765218247.a n = A164413 n

end A164413

/-! ## A164413.P17332154795810686447

`round(A179991(2*(n+1))/A169985(n+3))`
-/

namespace A164413.P17332154795810686447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A179991 (2 * (n + 1)) : ℚ) / (A169985 (n + 3) : ℚ))

end

end A164413.P17332154795810686447

namespace A164413

/-- `round(A179991(2*(n+1))/A169985(n+3))` -/
def P17332154795810686447.Spec : Prop :=
  ∀ n, P17332154795810686447.a n = A164413 n

end A164413

/-! ## A164413.P13699278751916638626

`round(A005592(n)/A001077(n)*A005592(n))`
-/

namespace A164413.P13699278751916638626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005592 n : ℚ) / (A001077 n : ℚ) * (A005592 n : ℚ))

end

end A164413.P13699278751916638626

namespace A164413

/-- `round(A005592(n)/A001077(n)*A005592(n))` -/
def P13699278751916638626.Spec : Prop :=
  ∀ n, P13699278751916638626.a n = A164413 n

end A164413

/-! ## A164413.P3201874555304322466

`round(A005592(n)²/A001077(n))`
-/

namespace A164413.P3201874555304322466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005592 n ^ 2 : ℚ) / (A001077 n : ℚ))

end

end A164413.P3201874555304322466

namespace A164413

/-- `round(A005592(n)²/A001077(n))` -/
def P3201874555304322466.Spec : Prop :=
  ∀ n, P3201874555304322466.a n = A164413 n

end A164413

/-!
# A164414: Number of binary strings of length n with no substrings equal to 0000, 0001, or 1010.

The programs for A164414, there is no canonical definition to state claims against.
-/

/-! ## A164414.P2388149440574909027

`A000006(A290890(n)+A164413(n))`
-/

namespace A164414.P2388149440574909027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A290890 n + A164413 n).toNat

end

end A164414.P2388149440574909027

/-! ## A164414.P5588696132525481066

`A265359(A325124(n)+A005773(n))`
-/

namespace A164414.P5588696132525481066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (A325124 n + A005773 n).toNat

end

end A164414.P5588696132525481066

/-! ## A164414.P7583578823123789300

`A276581(∑[A160999(n)])`
-/

namespace A164414.P7583578823123789300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164414.P7583578823123789300

/-! ## A164414.P14586735269235620193

`A172471(floor(sqrt(A333679(2*(n+2)))))`
-/

namespace A164414.P14586735269235620193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Int.sqrt (A333679 (2 * (n + 2)))).toNat

end

end A164414.P14586735269235620193

/-! ## A164414.P6157278715564248877

`A172471(A006456(3*(n+1))+floor((n/2)²))`
-/

namespace A164414.P6157278715564248877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A006456 (3 * (n + 1)) + ⌊((n : ℚ) / 2) ^ 2⌋).toNat

end

end A164414.P6157278715564248877

/-!
# A164415: Number of binary strings of length n with no substrings equal to 0000, 0001, or 1100.

The programs for A164415, there is no canonical definition to state claims against.
-/

/-! ## A164415.P4348833979444006033

`A226190(A164402(n+1))`
-/

namespace A164415.P4348833979444006033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A164402 (n + 1)).toNat

end

end A164415.P4348833979444006033

/-! ## A164415.P14316412972743071336

`A164509(n)+A151755(A002522(n))`
-/

namespace A164415.P14316412972743071336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164509 n + A151755 (A002522 n).toNat

end

end A164415.P14316412972743071336

/-! ## A164415.P11212427533207223893

`A164509(n)+A078926(A078918(n+1))`
-/

namespace A164415.P11212427533207223893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164509 n + A078926 (A078918 (n + 1)).toNat

end

end A164415.P11212427533207223893

/-! ## A164415.P753217498250087346

`A185284(A056503(n+1))+A164509(n)`
-/

namespace A164415.P753217498250087346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A056503 (n + 1)).toNat + A164509 n

end

end A164415.P753217498250087346

/-! ## A164415.P7184560990870537728

`A164509(n)+A057427(A238921(n+1))`
-/

namespace A164415.P7184560990870537728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164509 n + A057427 (A238921 (n + 1)).toNat

end

end A164415.P7184560990870537728

/-!
# A164416: Number of binary strings of length n with no substrings equal to 0000 0001 or 1111.

The programs for A164416, the canonical program `A164416.P2577009813336469056` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164416 has offset 4).

The definition of A164416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 414 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164416.P2577009813336469056

`A164391(n+4)-A164391(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A164416

/-- `A164391(n+4)-A164391(n)` -/
def P2577009813336469056.Spec : Prop :=
  ∀ n, P2577009813336469056.a n = A164416 (n + 4)

theorem P2577009813336469056.correct : P2577009813336469056.Spec := by
  intro n
  simp only [A164416, Nat.add_sub_cancel]

end A164416

/-! ## A164416.P16211207542508717837

`A123908(n+3)+A123908(n+5)`
-/

namespace A164416.P16211207542508717837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123908 (n + 3) + A123908 (n + 5)

end

end A164416.P16211207542508717837

namespace A164416

/-- `A123908(n+3)+A123908(n+5)` -/
def P16211207542508717837.Spec : Prop :=
  ∀ n, P16211207542508717837.a n = A164416 (n + 4)

end A164416

/-! ## A164416.P4708232581370061338

`A164391(n+4)+A164391(n)/A057428(2*n+3)`
-/

namespace A164416.P4708232581370061338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164391 (n + 4) : ℚ) + (A164391 n : ℚ) / (A057428 (2 * n + 3) : ℚ)

end

end A164416.P4708232581370061338

namespace A164416

/-- `A164391(n+4)+A164391(n)/A057428(2*n+3)` -/
def P4708232581370061338.Spec : Prop :=
  ∀ n, P4708232581370061338.a n = (A164416 (n + 4) : ℚ)

end A164416

/-!
# A164417: Number of binary strings of length n with no substrings equal to 0000, 0010, or 0100.

The programs for A164417, there is no canonical definition to state claims against.
-/

/-! ## A164417.P10044404858833437972

`A063712(or(1, A030186(n)))`
-/

namespace A164417.P10044404858833437972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063712 (Int.lor 1 (A030186 n)).toNat

end

end A164417.P10044404858833437972

/-! ## A164417.P9700616830859631813

`A063712(A030186(n)+floor(n/3))`
-/

namespace A164417.P9700616830859631813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063712 (A030186 n + ⌊(n : ℚ) / 3⌋).toNat

end

end A164417.P9700616830859631813

/-! ## A164417.P7359256444167344439

`A018173(n)+A001221(A178446(n))`
-/

namespace A164417.P7359256444167344439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018173 n + A001221 (A178446 n).toNat

end

end A164417.P7359256444167344439

/-! ## A164417.P9132861406642833355

`A325473(n)+A127428(A218600(n))`
-/

namespace A164417.P9132861406642833355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 n + A127428 (A218600 n).toNat

end

end A164417.P9132861406642833355

/-! ## A164417.P11995986803888327017

`A257639(A296000(n))+A122294(n)`
-/

namespace A164417.P11995986803888327017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A296000 n).toNat + A122294 n

end

end A164417.P11995986803888327017

/-!
# A164418: Number of binary strings of length n with no substrings equal to 0000 0010 or 0101.

The programs for A164418, the canonical program `A164418.P13987918611985411480` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164418 has offset 4).

The definition of A164418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 414 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164418.P13987918611985411480

`A189593(n+6)+A189593(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164418

/-- `A189593(n+6)+A189593(n+1)` -/
def P13987918611985411480.Spec : Prop :=
  ∀ n, P13987918611985411480.a n = A164418 (n + 4)

theorem P13987918611985411480.correct : P13987918611985411480.Spec := by
  intro n
  simp only [A164418, Nat.add_sub_cancel]

end A164418

/-! ## A164418.P2506837446912492342

`A164494(n+4)-A265519(A131577(n))`
-/

namespace A164418.P2506837446912492342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164494 (n + 4) - A265519 (A131577 n).toNat

end

end A164418.P2506837446912492342

namespace A164418

/-- `A164494(n+4)-A265519(A131577(n))` -/
def P2506837446912492342.Spec : Prop :=
  ∀ n, P2506837446912492342.a n = A164418 (n + 4)

end A164418

/-! ## A164418.P12832351892539447775

`A233583(A334636(n+1)+A164477(n+4))`
-/

namespace A164418.P12832351892539447775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A334636 (n + 1) + A164477 (n + 4)).toNat

end

end A164418.P12832351892539447775

namespace A164418

/-- `A233583(A334636(n+1)+A164477(n+4))` -/
def P12832351892539447775.Spec : Prop :=
  ∀ n, P12832351892539447775.a n = A164418 (n + 4)

end A164418

/-!
# A164419: Number of binary strings of length n with no substrings equal to 0000, 0010, or 0110.

The programs for A164419, there is no canonical definition to state claims against.
-/

/-! ## A164419.P2004057073644590196

`A000267(A088305(n+1))-A289410(2*(n+1))`
-/

namespace A164419.P2004057073644590196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A088305 (n + 1)).toNat - A289410 (2 * (n + 1))

end

end A164419.P2004057073644590196

/-! ## A164419.P194163101224123182

`∑[A122921(A018042(n)+1)]`
-/

namespace A164419.P194163101224123182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A018042 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164419.P194163101224123182

/-! ## A164419.P9390180553915380043

`∑[A122921(A018043(n)+1)]`
-/

namespace A164419.P9390180553915380043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A018043 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164419.P9390180553915380043

/-! ## A164419.P17861770117494591534

`∑[A005185(record[A319149(n+1)])]`
-/

namespace A164419.P17861770117494591534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319149 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164419.P17861770117494591534

/-! ## A164419.P14958326729445943682

`A090223(n)+A002024(A019308(n))`
-/

namespace A164419.P14958326729445943682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n + A002024 (A019308 n).toNat

end

end A164419.P14958326729445943682

/-!
# A164420: Number of binary strings of length n with no substrings equal to 0000, 0010, or 0111.

The programs for A164420, the canonical program `A164420.P13663796949390325508` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164420 has offset 0).

The definition of A164420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 536 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164420.P13663796949390325508

`∑[A047084(n+2)-A047084(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A164420

/-- `∑[A047084(n+2)-A047084(n)]` -/
def P13663796949390325508.Spec : Prop :=
  ∀ n, P13663796949390325508.a n = A164420 n

theorem P13663796949390325508.correct : P13663796949390325508.Spec := by
  intro n
  simp only [A164420]

end A164420

/-! ## A164420.P12749756189107760227

`A047084(n+1)+A047084(n+2)-2`
-/

namespace A164420.P12749756189107760227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047084 (n + 1) + (A047084 (n + 2) - 2)

end

end A164420.P12749756189107760227

namespace A164420

/-- `A047084(n+1)+A047084(n+2)-2` -/
def P12749756189107760227.Spec : Prop :=
  ∀ n, P12749756189107760227.a n = A164420 n

end A164420

/-! ## A164420.P15329363595187224033

`∑[A001462(A156258(n+1)+A000975(n))]`
-/

namespace A164420.P15329363595187224033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A156258 (n + 1) + A000975 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164420.P15329363595187224033

namespace A164420

/-- `∑[A001462(A156258(n+1)+A000975(n))]` -/
def P15329363595187224033.Spec : Prop :=
  ∀ n, P15329363595187224033.a n = A164420 n

end A164420

/-! ## A164420.P7267936869420707477

`A172471(A072863(n)+A000225(n))`
-/

namespace A164420.P7267936869420707477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A072863 n + A000225 n).toNat

end

end A164420.P7267936869420707477

namespace A164420

/-- `A172471(A072863(n)+A000225(n))` -/
def P7267936869420707477.Spec : Prop :=
  ∀ n, P7267936869420707477.a n = A164420 n

end A164420

/-! ## A164420.P1290517185369110891

`∑[A259899(∑[A292460(n)])]`
-/

namespace A164420.P1290517185369110891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164420.P1290517185369110891

namespace A164420

/-- `∑[A259899(∑[A292460(n)])]` -/
def P1290517185369110891.Spec : Prop :=
  ∀ n, P1290517185369110891.a n = A164420 n

end A164420

/-!
# A164421: Number of binary strings of length n with no substrings equal to 0000 0010 or 1001.

The programs for A164421, the canonical program `A164421.P12875825263820570006` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164421 has offset 4).

The definition of A164421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 427 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164421.P12875825263820570006

`A340217(n+1)+A340217(n+5)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164421

/-- `A340217(n+1)+A340217(n+5)` -/
def P12875825263820570006.Spec : Prop :=
  ∀ n, P12875825263820570006.a n = A164421 (n + 4)

theorem P12875825263820570006.correct : P12875825263820570006.Spec := by
  intro n
  simp only [A164421, Nat.add_sub_cancel]

end A164421

/-! ## A164421.P2659768102955376898

`A340215(n+6)-A340215(n+1)`
-/

namespace A164421.P2659768102955376898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340215 (n + 6) - A340215 (n + 1)

end

end A164421.P2659768102955376898

namespace A164421

/-- `A340215(n+6)-A340215(n+1)` -/
def P2659768102955376898.Spec : Prop :=
  ∀ n, P2659768102955376898.a n = A164421 (n + 4)

end A164421

/-! ## A164421.P62459263099615987

`Δ[A020718(n+3)-A020718(n+1)]`
-/

namespace A164421.P62459263099615987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020718 (n + 3) - A020718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164421.P62459263099615987

namespace A164421

/-- `Δ[A020718(n+3)-A020718(n+1)]` -/
def P62459263099615987.Spec : Prop :=
  ∀ n, P62459263099615987.a n = A164421 (n + 4)

end A164421

/-! ## A164421.P2504394311274039014

`Δ[Δ[A020718(n+1)+A020718(n+2)]]`
-/

namespace A164421.P2504394311274039014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020718 (n + 1) + A020718 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164421.P2504394311274039014

namespace A164421

/-- `Δ[Δ[A020718(n+1)+A020718(n+2)]]` -/
def P2504394311274039014.Spec : Prop :=
  ∀ n, P2504394311274039014.a n = A164421 (n + 4)

end A164421

/-!
# A164422: Number of binary strings of length n with no substrings equal to 0000 0010 or 1010.

The programs for A164422, the canonical program `A164422.P17038356559560906086` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164422 has offset 4).

The definition of A164422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164422.P17038356559560906086

`A000570(n+6)+Δ[A000570(n+3)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164422

/-- `A000570(n+6)+Δ[A000570(n+3)]` -/
def P17038356559560906086.Spec : Prop :=
  ∀ n, P17038356559560906086.a n = A164422 (n + 4)

theorem P17038356559560906086.correct : P17038356559560906086.Spec := by
  intro n
  simp only [A164422, Nat.add_sub_cancel]

end A164422

/-! ## A164422.P17062916940938358840

`A322389(A001519(n))+A164423(n+4)`
-/

namespace A164422.P17062916940938358840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322389 (A001519 n).toNat + A164423 (n + 4)

end

end A164422.P17062916940938358840

namespace A164422

/-- `A322389(A001519(n))+A164423(n+4)` -/
def P17062916940938358840.Spec : Prop :=
  ∀ n, P17062916940938358840.a n = A164422 (n + 4)

end A164422

/-!
# A164423: Number of binary strings of length n with no substrings equal to 0000 0010 or 1100.

The programs for A164423, there is no canonical definition to state claims against.
-/

/-! ## A164423.P10161877740712099837

`A164501(n+4)-A001222(A319481(n+1))`
-/

namespace A164423.P10161877740712099837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164501 (n + 4) - A001222 (A319481 (n + 1)).toNat

end

end A164423.P10161877740712099837

/-!
# A164424: Number of binary strings of length n with no substrings equal to 0000 0010 or 1101.

The programs for A164424, there is no canonical definition to state claims against.
-/

/-! ## A164424.P17053406057727136416

`A104103(A200865(n+2)-1)+n`
-/

namespace A164424.P17053406057727136416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (A200865 (n + 2) - 1).toNat + (n : ℤ)

end

end A164424.P17053406057727136416

/-! ## A164424.P13234119567515959249

`A020722(∑[A175089(a(n-1))-1])` with `a(0)=5`
-/

namespace A164424.P13234119567515959249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A175089 (f1 (n - 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020722 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164424.P13234119567515959249

/-! ## A164424.P2112161033726854041

`A164467(n+4)+A130702(3*n+1)%2+n`
-/

namespace A164424.P2112161033726854041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164467 (n + 4) + (Int.tmod (A130702 (3 * n + 1)) 2 + (n : ℤ))

end

end A164424.P2112161033726854041

/-! ## A164424.P13014421062513925974

`A164467(n+4)+A001222(A000351(n))`
-/

namespace A164424.P13014421062513925974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164467 (n + 4) + A001222 (A000351 n).toNat

end

end A164424.P13014421062513925974

/-!
# A164425: Number of binary strings of length n with no substrings equal to 0000 0010 or 1111.

The programs for A164425, there is no canonical definition to state claims against.
-/

/-! ## A164425.P9757526233291152058

`A210608(A001405(n))+A164440(n+4)`
-/

namespace A164425.P9757526233291152058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210608 (A001405 n).toNat + A164440 (n + 4)

end

end A164425.P9757526233291152058

/-! ## A164425.P3670004057095451646

`A210608(A001405(n))+A164506(n+4)`
-/

namespace A164425.P3670004057095451646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210608 (A001405 n).toNat + A164506 (n + 4)

end

end A164425.P3670004057095451646

/-! ## A164425.P8269466854480646110

`A164495(n+4)-A170980(A120588(n))`
-/

namespace A164425.P8269466854480646110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164495 (n + 4) - A170980 (A120588 n).toNat

end

end A164425.P8269466854480646110

/-!
# A164426: Number of binary strings of length n with no substrings equal to 0000 0011 or 0101.

The programs for A164426, the canonical program `A164426.P11073829202015276493` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164426 has offset 4).

The definition of A164426 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164426.P11073829202015276493

`a(n-1)+2*a(n-3)-a(n-5)-a(n-6)-a(n-7)` with `a(0)=13, a(1)=21, a(2)=34, a(3)=53, a(4)=81, a(5)=124, a(6)=188`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164426

/-- `a(n-1)+2*a(n-3)-a(n-5)-a(n-6)-a(n-7)` -/
def P11073829202015276493.Spec : Prop :=
  ∀ n, P11073829202015276493.a n = A164426 (n + 4)

theorem P11073829202015276493.correct : P11073829202015276493.Spec := by
  intro n
  simp only [A164426, Nat.add_sub_cancel]

end A164426

/-! ## A164426.P9747843687287739489

`A375815(A250733(n+1))`
-/

namespace A164426.P9747843687287739489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375815 (A250733 (n + 1)).toNat

end

end A164426.P9747843687287739489

namespace A164426

/-- `A375815(A250733(n+1))` -/
def P9747843687287739489.Spec : Prop :=
  ∀ n, P9747843687287739489.a n = A164426 (n + 4)

end A164426

/-!
# A164427: Number of binary strings of length n with no substrings equal to 0000 0011 or 0110.

The programs for A164427, there is no canonical definition to state claims against.
-/

/-! ## A164427.P2714023317090659865

`∑[∑{e}[n+1, #]]+A164435(n+4)^(A355615(n+1)%2)-n`
-/

namespace A164427.P2714023317090659865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + ((A164435 (n + 4) : ℚ) ^ (Int.tmod (A355615 (n + 1)) 2 : ℤ) - (n : ℚ))

end

end A164427.P2714023317090659865

/-! ## A164427.P2236624257776992347

`A121854(A018038(n+3))-A325325(n)`
-/

namespace A164427.P2236624257776992347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 (A018038 (n + 3)).toNat - A325325 n

end

end A164427.P2236624257776992347

/-! ## A164427.P17469540047422499357

`A205852(A204716(n+1))-A095179(n+1)`
-/

namespace A164427.P17469540047422499357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205852 (A204716 (n + 1)).toNat - A095179 (n + 1)

end

end A164427.P17469540047422499357

/-!
# A164428: Number of binary strings of length n with no substrings equal to 0000, 0011, or 1001.

The programs for A164428, there is no canonical definition to state claims against.
-/

/-! ## A164428.P18348243320924693600

`A243283(A354109(n+1)+A001792(n))`
-/

namespace A164428.P18348243320924693600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A354109 (n + 1) + A001792 n).toNat

end

end A164428.P18348243320924693600

/-! ## A164428.P15486025473378452714

`∑[A137734(A127912(n))]`
-/

namespace A164428.P15486025473378452714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A127912 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164428.P15486025473378452714

/-! ## A164428.P4211709515756882674

`A226143(A122595(n+1))`
-/

namespace A164428.P4211709515756882674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (A122595 (n + 1)).toNat

end

end A164428.P4211709515756882674

/-! ## A164428.P3788406335224606589

`A082447(A318901(n+6))`
-/

namespace A164428.P3788406335224606589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A318901 (n + 6)).toNat

end

end A164428.P3788406335224606589

/-! ## A164428.P1165239572136620955

`∑[A137734(Δ[A105696(n)])]`
-/

namespace A164428.P1165239572136620955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105696 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164428.P1165239572136620955

/-!
# A164429: Number of binary strings of length n with no substrings equal to 0000, 0011, or 1011.

The programs for A164429, the canonical program `A164429.P13915276554889762475` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164429 has offset 0).

The definition of A164429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164429.P13915276554889762475

`a(n-1)+a(n-3)+4` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=13`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164429

/-- `a(n-1)+a(n-3)+4` -/
def P13915276554889762475.Spec : Prop :=
  ∀ n, (P13915276554889762475.a n : ℤ) = A164429 n

theorem P13915276554889762475.correct : P13915276554889762475.Spec := by
  intro n
  simp only [A164429]

end A164429

/-! ## A164429.P16549654914357609811

`∑[A179070(n+2)-char[2]]`
-/

namespace A164429.P16549654914357609811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 2) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164429.P16549654914357609811

namespace A164429

/-- `∑[A179070(n+2)-char[2]]` -/
def P16549654914357609811.Spec : Prop :=
  ∀ n, P16549654914357609811.a n = A164429 n

end A164429

/-! ## A164429.P5906611487002320338

`∑[A003410(n)]-record[A226916(n)]`
-/

namespace A164429.P5906611487002320338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A164429.P5906611487002320338

namespace A164429

/-- `∑[A003410(n)]-record[A226916(n)]` -/
def P5906611487002320338.Spec : Prop :=
  ∀ n, P5906611487002320338.a n = A164429 n

end A164429

/-! ## A164429.P1456309646686927025

`∑[A266678(n)+A196382(n+1)]`
-/

namespace A164429.P1456309646686927025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266678 n + A196382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164429.P1456309646686927025

namespace A164429

/-- `∑[A266678(n)+A196382(n+1)]` -/
def P1456309646686927025.Spec : Prop :=
  ∀ n, P1456309646686927025.a n = A164429 n

end A164429

/-! ## A164429.P6154201756727339539

`∑[A097333(n+2)-A226275(n)]`
-/

namespace A164429.P6154201756727339539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 (n + 2) - A226275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164429.P6154201756727339539

namespace A164429

/-- `∑[A097333(n+2)-A226275(n)]` -/
def P6154201756727339539.Spec : Prop :=
  ∀ n, P6154201756727339539.a n = A164429 n

end A164429

/-! ## A164429.P17816908826713774151

`∑[A226136(n+1)-record[A226916(n)]]`
-/

namespace A164429.P17816908826713774151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226136 (n + 1) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164429.P17816908826713774151

namespace A164429

/-- `∑[A226136(n+1)-record[A226916(n)]]` -/
def P17816908826713774151.Spec : Prop :=
  ∀ n, P17816908826713774151.a n = A164429 n

end A164429

/-! ## A164429.P1621357190284878540

`record[A179070(n+1)-4%A097333(n)]`
-/

namespace A164429.P1621357190284878540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 1) - Int.tmod 4 (A097333 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164429.P1621357190284878540

namespace A164429

/-- `record[A179070(n+1)-4%A097333(n)]` -/
def P1621357190284878540.Spec : Prop :=
  ∀ n, P1621357190284878540.a n = A164429 n

end A164429

/-! ## A164429.P3594532291010913134

`A008619(A004280(n+1))+∑[A196382(n+1)]`
-/

namespace A164429.P3594532291010913134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004280 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164429.P3594532291010913134

namespace A164429

/-- `A008619(A004280(n+1))+∑[A196382(n+1)]` -/
def P3594532291010913134.Spec : Prop :=
  ∀ n, P3594532291010913134.a n = A164429 n

end A164429

/-!
# A164430: Number of binary strings of length n with no substrings equal to 0000 0011 or 1100.

The programs for A164430, there is no canonical definition to state claims against.
-/

/-! ## A164430.P16283342545216514658

`A164495(n+4)-A010051(A001831(n+1))`
-/

namespace A164430.P16283342545216514658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164495 (n + 4) - A010051 (A001831 (n + 1)).toNat

end

end A164430.P16283342545216514658

/-! ## A164430.P4659085994656649519

`A164495(n+4)-A024362(A321350(n+1))`
-/

namespace A164430.P4659085994656649519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164495 (n + 4) - A024362 (A321350 (n + 1)).toNat

end

end A164430.P4659085994656649519

/-!
# A164431: Number of binary strings of length n with no substrings equal to 0000, 0011 or 1101.

The programs for A164431, there is no canonical definition to state claims against.
-/

/-! ## A164431.P3569287396318936480

`A074198(A054963(n))`
-/

namespace A164431.P3569287396318936480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074198 (A054963 n).toNat

end

end A164431.P3569287396318936480

/-! ## A164431.P15532377891326153670

`A333255(n+1)+A002024(ceil(3^(n-1)))`
-/

namespace A164431.P15532377891326153670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333255 (n + 1) + A002024 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A164431.P15532377891326153670

/-! ## A164431.P12888269886883670150

`A003056(A058877(n+1)+A000084(n+1))`
-/

namespace A164431.P12888269886883670150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A058877 (n + 1) + A000084 (n + 1)).toNat

end

end A164431.P12888269886883670150

/-! ## A164431.P9553554301707041499

`A088141(A000334(n+1))`
-/

namespace A164431.P9553554301707041499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A000334 (n + 1)).toNat

end

end A164431.P9553554301707041499

/-! ## A164431.P14853348479341221954

`A135664(A227808(n+1))`
-/

namespace A164431.P14853348479341221954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A227808 (n + 1 + 11)).toNat

end

end A164431.P14853348479341221954

/-!
# A164432: Number of binary strings of length n with no substrings equal to 0000 0101 or 0110.

The programs for A164432, there is no canonical definition to state claims against.
-/

/-! ## A164432.P15842503526552213500

`A164459(n+4)-A001222(A192936(n))`
-/

namespace A164432.P15842503526552213500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164459 (n + 4) - A001222 (A192936 n).toNat

end

end A164432.P15842503526552213500

/-! ## A164432.P14035798229951060228

`A164496(n+4)-A001221(A192936(n))`
-/

namespace A164432.P14035798229951060228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164496 (n + 4) - A001221 (A192936 n).toNat

end

end A164432.P14035798229951060228

/-!
# A164433: Number of binary strings of length n with no substrings equal to 0000 0101 or 0111.

The programs for A164433, there is no canonical definition to state claims against.
-/

/-! ## A164433.P8593187419957656566

`A164481(n+4)+A080679(A000153(n))`
-/

namespace A164433.P8593187419957656566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164481 (n + 4) + A080679 (A000153 n).toNat

end

end A164433.P8593187419957656566

/-! ## A164433.P6868643149592442890

`∑[A311699(p?[A100100(n)])]`
-/

namespace A164433.P6868643149592442890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311699 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164433.P6868643149592442890

/-!
# A164434: Number of binary strings of length n with no substrings equal to 0000 0101 or 1010.

The programs for A164434, the canonical program `A164434.P10380527050027693516` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164434 has offset 4).

The definition of A164434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164434.P10380527050027693516

`a(n-1)+2*a(n-3)+a(n-4)-a(n-6)-a(n-7)` with `a(0)=13, a(1)=23, a(2)=40, a(3)=70, a(4)=122, a(5)=213, a(6)=372`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164434

/-- `a(n-1)+2*a(n-3)+a(n-4)-a(n-6)-a(n-7)` -/
def P10380527050027693516.Spec : Prop :=
  ∀ n, P10380527050027693516.a n = A164434 (n + 4)

theorem P10380527050027693516.correct : P10380527050027693516.Spec := by
  intro n
  simp only [A164434, Nat.add_sub_cancel]

end A164434

/-! ## A164434.P11813981174059145821

`A233583(Δ[A301789(n+1)])`
-/

namespace A164434.P11813981174059145821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (f1 (n + 1) - f1 n).toNat

end

end A164434.P11813981174059145821

namespace A164434

/-- `A233583(Δ[A301789(n+1)])` -/
def P11813981174059145821.Spec : Prop :=
  ∀ n, P11813981174059145821.a n = A164434 (n + 4)

end A164434

/-! ## A164434.P260528768556555517

`Δ[A301789(A032555(n+1))]-1`
-/

namespace A164434.P260528768556555517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301789 (A032555 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A164434.P260528768556555517

namespace A164434

/-- `Δ[A301789(A032555(n+1))]-1` -/
def P260528768556555517.Spec : Prop :=
  ∀ n, P260528768556555517.a n = A164434 (n + 4)

end A164434

/-!
# A164435: Number of binary strings of length n with no substrings equal to 0000 0101 or 1011.

The programs for A164435, there is no canonical definition to state claims against.
-/

/-! ## A164435.P8040128996206081870

`A010923(n)-A009194(A176828(n))`
-/

namespace A164435.P8040128996206081870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010923 n - A009194 (A176828 n).toNat

end

end A164435.P8040128996206081870

/-! ## A164435.P741688783839508169

`A073188(A186121(n+2))`
-/

namespace A164435.P741688783839508169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A186121 (n + 2)).toNat

end

end A164435.P741688783839508169

/-!
# A164436: Number of binary strings of length n with no substrings equal to 0000 0101 or 1110.

The programs for A164436, there is no canonical definition to state claims against.
-/

/-! ## A164436.P3504262859607926359

`Δ[A021013(n+3)]-A010051(A241483(n+1))`
-/

namespace A164436.P3504262859607926359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021013 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010051 (A241483 (n + 1)).toNat

end

end A164436.P3504262859607926359

/-! ## A164436.P5099105671655352415

`A055086(A200880(n+2))`
-/

namespace A164436.P5099105671655352415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A200880 (n + 2)).toNat

end

end A164436.P5099105671655352415

/-! ## A164436.P12915772639220384338

`A055086(2*A329707(n+4))`
-/

namespace A164436.P12915772639220384338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (2 * A329707 (n + 4)).toNat

end

end A164436.P12915772639220384338

/-!
# A164437: Number of binary strings of length n with no substrings equal to 0000, 0101, or 1111.

The programs for A164437, there is no canonical definition to state claims against.
-/

/-! ## A164437.P6191727486083918749

`A055086(Δ[A173611(n)])`
-/

namespace A164437.P6191727486083918749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (f1 (n + 1) - f1 n).toNat

end

end A164437.P6191727486083918749

/-! ## A164437.P9465110627103186374

`∑[A137735(∑[A001853(n+1)])]`
-/

namespace A164437.P9465110627103186374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001853 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164437.P9465110627103186374

/-! ## A164437.P119067303102142979

`∑[A137734(A127912(n))]-char[9]`
-/

namespace A164437.P119067303102142979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A127912 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A164437.P119067303102142979

/-! ## A164437.P11061118996038155563

`A226143(A122595(n+1))-char[9]`
-/

namespace A164437.P11061118996038155563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (A122595 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A164437.P11061118996038155563

/-! ## A164437.P16095617474942731650

`A082447(A318901(n+6))-char[9]`
-/

namespace A164437.P16095617474942731650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A318901 (n + 6)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A164437.P16095617474942731650

/-!
# A164438: Number of binary strings of length n with no substrings equal to 0000 0110 or 0111.

The programs for A164438, the canonical program `A164438.P11898394778015943007` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164438 has offset 4).

The definition of A164438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164438.P11898394778015943007

`A023435(n+8)-3`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164438

/-- `A023435(n+8)-3` -/
def P11898394778015943007.Spec : Prop :=
  ∀ n, P11898394778015943007.a n = A164438 (n + 4)

theorem P11898394778015943007.correct : P11898394778015943007.Spec := by
  intro n
  simp only [A164438, Nat.add_sub_cancel]

end A164438

/-! ## A164438.P14814223585324050443

`∑[A013979(n+7)]+8`
-/

namespace A164438.P14814223585324050443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A164438.P14814223585324050443

namespace A164438

/-- `∑[A013979(n+7)]+8` -/
def P14814223585324050443.Spec : Prop :=
  ∀ n, P14814223585324050443.a n = A164438 (n + 4)

end A164438

/-! ## A164438.P2630513289857265939

`∑[A107458(n+11)]+8`
-/

namespace A164438.P2630513289857265939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A164438.P2630513289857265939

namespace A164438

/-- `∑[A107458(n+11)]+8` -/
def P2630513289857265939.Spec : Prop :=
  ∀ n, P2630513289857265939.a n = A164438 (n + 4)

end A164438

/-! ## A164438.P12459623434672900833

`A164464(n+4)+A023435(n)`
-/

namespace A164438.P12459623434672900833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164464 (n + 4) + A023435 n

end

end A164438.P12459623434672900833

namespace A164438

/-- `A164464(n+4)+A023435(n)` -/
def P12459623434672900833.Spec : Prop :=
  ∀ n, P12459623434672900833.a n = A164438 (n + 4)

end A164438

/-! ## A164438.P3543228289623381718

`A164464(n+4)+A219977(2*n+1)+A013979(n+2)`
-/

namespace A164438.P3543228289623381718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164464 (n + 4) + (A219977 (2 * n + 1) + A013979 (n + 2))

end

end A164438.P3543228289623381718

namespace A164438

/-- `A164464(n+4)+A219977(2*n+1)+A013979(n+2)` -/
def P3543228289623381718.Spec : Prop :=
  ∀ n, P3543228289623381718.a n = A164438 (n + 4)

end A164438

/-!
# A164439: Number of binary strings of length n with no substrings equal to 0000 0110 or 1001.

The programs for A164439, there is no canonical definition to state claims against.
-/

/-! ## A164439.P11260275821280001543

`A121855(A010915(n+1))`
-/

namespace A164439.P11260275821280001543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 (A010915 (n + 1)).toNat

end

end A164439.P11260275821280001543

/-! ## A164439.P9322387390962642407

`A022308(n+4)-A001222(A002110(n))`
-/

namespace A164439.P9322387390962642407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 (n + 4) - A001222 (A002110 n).toNat

end

end A164439.P9322387390962642407

/-! ## A164439.P2500271884860149061

`A000285(n+4)-A000120(A001045(2*(n+1)))`
-/

namespace A164439.P2500271884860149061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (n + 4) - A000120 (A001045 (2 * (n + 1))).toNat

end

end A164439.P2500271884860149061

/-!
# A164440: Number of binary strings of length n with no substrings equal to 0000 0110 or 1011.

The programs for A164440, the canonical program `A164440.P1856277761140627068` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164440 has offset 4).

The definition of A164440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164440.P1856277761140627068

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` with `a(0)=13, a(1)=22, a(2)=37, a(3)=62, a(4)=104`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164440

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` -/
def P1856277761140627068.Spec : Prop :=
  ∀ n, P1856277761140627068.a n = A164440 (n + 4)

theorem P1856277761140627068.correct : P1856277761140627068.Spec := by
  intro n
  simp only [A164440, Nat.add_sub_cancel]

end A164440

/-! ## A164440.P6806037196774425800

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=13, a(1)=22`
-/

namespace A164440.P6806037196774425800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 22] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A164440.P6806037196774425800

namespace A164440

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P6806037196774425800.Spec : Prop :=
  ∀ n, P6806037196774425800.a n = A164440 (n + 4)

end A164440

/-! ## A164440.P849179692132123587

`A120400(n+4)+A120400(n+5)`
-/

namespace A164440.P849179692132123587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120400 (n + 4) + A120400 (n + 5)

end

end A164440.P849179692132123587

namespace A164440

/-- `A120400(n+4)+A120400(n+5)` -/
def P849179692132123587.Spec : Prop :=
  ∀ n, P849179692132123587.a n = A164440 (n + 4)

end A164440

/-! ## A164440.P8247277759680453286

`round(a(n-1)²/a(n-2))` with `a(0)=13, a(1)=22`
-/

namespace A164440.P8247277759680453286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 22] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A164440.P8247277759680453286

namespace A164440

/-- `round(a(n-1)²/a(n-2))` -/
def P8247277759680453286.Spec : Prop :=
  ∀ n, P8247277759680453286.a n = A164440 (n + 4)

end A164440

/-!
# A164441: Number of binary strings of length n with no substrings equal to 0000, 0110, or 1111.

The programs for A164441, there is no canonical definition to state claims against.
-/

/-! ## A164441.P2775026270183527199

`A001462(∑[∑[A249512(n)]])`
-/

namespace A164441.P2775026270183527199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249512 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164441.P2775026270183527199

/-! ## A164441.P11675820200868141119

`A193832(A002026(n+2))-A132272(n)`
-/

namespace A164441.P11675820200868141119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A002026 (n + 2)).toNat - A132272 n

end

end A164441.P11675820200868141119

/-! ## A164441.P16277439798066867760

`A103128(A018033(n))+A000045(n)`
-/

namespace A164441.P16277439798066867760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A018033 n).toNat + A000045 n

end

end A164441.P16277439798066867760

/-! ## A164441.P11651850852737701334

`A001611(n)+A103128(A018033(n))-1`
-/

namespace A164441.P11651850852737701334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (A103128 (A018033 n).toNat - 1)

end

end A164441.P11651850852737701334

/-! ## A164441.P3326262397993737329

`A103128(A018033(n))+Δ[A001611(n+1)]`
-/

namespace A164441.P3326262397993737329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A018033 n).toNat + (f1 (n + 1) - f1 n)

end

end A164441.P3326262397993737329

/-!
# A164442: Number of binary strings of length n with no substrings equal to 0000 0111 or 1001.

The programs for A164442, there is no canonical definition to state claims against.
-/

/-! ## A164442.P11344976693792191513

`A185284(A000124(n))+A164499(n+4)`
-/

namespace A164442.P11344976693792191513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000124 n).toNat + A164499 (n + 4)

end

end A164442.P11344976693792191513

/-! ## A164442.P7393802165910064848

`A164499(n+4)+A010059(A327644(n))`
-/

namespace A164442.P7393802165910064848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164499 (n + 4) + A010059 (A327644 n).toNat

end

end A164442.P7393802165910064848

/-! ## A164442.P13072762655053972976

`A186747(A308822(n))+A164499(n+4)`
-/

namespace A164442.P13072762655053972976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186747 (A308822 n).toNat + A164499 (n + 4)

end

end A164442.P13072762655053972976

/-! ## A164442.P5884887056363666118

`xor(A151755(A164508(n)), A164499(n+4))`
-/

namespace A164442.P5884887056363666118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151755 (A164508 n).toNat) (A164499 (n + 4))

end

end A164442.P5884887056363666118

/-!
# A164443: Number of binary strings of length n with no substrings equal to 0000, 0111 or 1110.

The programs for A164443, there is no canonical definition to state claims against.
-/

/-! ## A164443.P5337141395297406288

`A185283(A238531(n)+A029858(n+1))`
-/

namespace A164443.P5337141395297406288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A238531 n + A029858 (n + 1)).toNat

end

end A164443.P5337141395297406288

/-! ## A164443.P1914185833497935959

`floor(sqrt(A349166(3^n)))`
-/

namespace A164443.P1914185833497935959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A349166 (3 ^ n))

end

end A164443.P1914185833497935959

/-! ## A164443.P7840656290414524536

`A188429(A005956(n+5))`
-/

namespace A164443.P7840656290414524536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188429 (A005956 (n + 5)).toNat

end

end A164443.P7840656290414524536

/-! ## A164443.P8379318754594973361

`A006670(A257674(n))+n`
-/

namespace A164443.P8379318754594973361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 (A257674 n).toNat + (n : ℤ)

end

end A164443.P8379318754594973361

/-! ## A164443.P5045649849030436859

`A226763(A095681(n)+n²)`
-/

namespace A164443.P5045649849030436859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226763 (A095681 n + (n ^ 2 : ℤ)).toNat

end

end A164443.P5045649849030436859

/-!
# A164444: Number of binary strings of length n with no substrings equal to 0000 1001 or 1011.

The programs for A164444, there is no canonical definition to state claims against.
-/

/-! ## A164444.P17588794379916646895

`A003056(49*(A137531(n)+1))`
-/

namespace A164444.P17588794379916646895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (49 * (A137531 n + 1)).toNat

end

end A164444.P17588794379916646895

/-! ## A164444.P1076082460295888094

`A070083(A006012(n+3)+A005897(n))`
-/

namespace A164444.P1076082460295888094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070083 (A006012 (n + 3) + A005897 n).toNat

end

end A164444.P1076082460295888094

/-!
# A164445: Number of binary strings of length n with no substrings equal to 0001 0010 or 0100.

The programs for A164445, there is no canonical definition to state claims against.
-/

/-! ## A164445.P3874319974146330830

`A249728(∑[floor(ϕ²*a(n-1))])` with `a(0)=41, a(1)=62`
-/

namespace A164445.P3874319974146330830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [41, 62] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164445.P3874319974146330830

/-! ## A164445.P4859667282658118088

`A249728(∑[floor(ϕ*ϕ*a(n-1))])` with `a(0)=41, a(1)=62`
-/

namespace A164445.P4859667282658118088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [41, 62] fun n f1 =>
  ⌊Real.goldenRatio * (Real.goldenRatio * (f1 (n - 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164445.P4859667282658118088

/-!
# A164446: Number of binary strings of length n with no substrings equal to 0001 0010 or 0101.

The programs for A164446, there is no canonical definition to state claims against.
-/

/-! ## A164446.P16322134283827037285

`A176839(A000111(n))+A164472(n+4)`
-/

namespace A164446.P16322134283827037285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176839 (A000111 n).toNat + A164472 (n + 4)

end

end A164446.P16322134283827037285

/-! ## A164446.P15388790311038153785

`A336263(∑[char[or(2, n)+1]]+2^n)`
-/

namespace A164446.P15388790311038153785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336263 (∑ j ∈ Finset.range (n + 1), f1 j + 2 ^ n)

end

end A164446.P15388790311038153785

/-!
# A164447: Number of binary strings of length n with no substrings equal to 0001 0010 or 0110.

The programs for A164447, the canonical program `A164447.P16929820992422671722` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164447 has offset 4).

The definition of A164447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164447.P16929820992422671722

`record[A272912(n+13)]-A088911(n+4)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164447

/-- `record[A272912(n+13)]-A088911(n+4)` -/
def P16929820992422671722.Spec : Prop :=
  ∀ n, P16929820992422671722.a n = A164447 (n + 4)

theorem P16929820992422671722.correct : P16929820992422671722.Spec := by
  intro n
  simp only [A164447, Nat.add_sub_cancel]

end A164447

/-! ## A164447.P5643898610861276599

`A000071(n+7)+A001924(n+2)%2`
-/

namespace A164447.P5643898610861276599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 7) + Int.tmod (A001924 (n + 2)) 2

end

end A164447.P5643898610861276599

namespace A164447

/-- `A000071(n+7)+A001924(n+2)%2` -/
def P5643898610861276599.Spec : Prop :=
  ∀ n, P5643898610861276599.a n = A164447 (n + 4)

end A164447

/-! ## A164447.P2098760177781380075

`A212804(n+8)-Δ[A008615(n+5)]²`
-/

namespace A164447.P2098760177781380075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 8) - (f1 (n + 1) - f1 n) ^ 2

end

end A164447.P2098760177781380075

namespace A164447

/-- `A212804(n+8)-Δ[A008615(n+5)]²` -/
def P2098760177781380075.Spec : Prop :=
  ∀ n, P2098760177781380075.a n = A164447 (n + 4)

end A164447

/-! ## A164447.P14987230237154237940

`A212804(n+8)-A000035(A002264(n+1))`
-/

namespace A164447.P14987230237154237940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 8) - A000035 (A002264 (n + 1)).toNat

end

end A164447.P14987230237154237940

namespace A164447

/-- `A212804(n+8)-A000035(A002264(n+1))` -/
def P14987230237154237940.Spec : Prop :=
  ∀ n, P14987230237154237940.a n = A164447 (n + 4)

end A164447

/-! ## A164447.P7518880338643669166

`A000071(n+7)+and(1, A192951(n+2))`
-/

namespace A164447.P7518880338643669166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 7) + Int.land 1 (A192951 (n + 2))

end

end A164447.P7518880338643669166

namespace A164447

/-- `A000071(n+7)+and(1, A192951(n+2))` -/
def P7518880338643669166.Spec : Prop :=
  ∀ n, P7518880338643669166.a n = A164447 (n + 4)

end A164447

/-! ## A164447.P6618638206961698578

`or(1, A001924(n+5))-A001924(n+4)`
-/

namespace A164447.P6618638206961698578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001924 (n + 5)) - A001924 (n + 4)

end

end A164447.P6618638206961698578

namespace A164447

/-- `or(1, A001924(n+5))-A001924(n+4)` -/
def P6618638206961698578.Spec : Prop :=
  ∀ n, P6618638206961698578.a n = A164447 (n + 4)

end A164447

/-! ## A164447.P5034399699209202975

`Δ[A000071(n+8)]-∑[A131531(n+1)]`
-/

namespace A164447.P5034399699209202975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A164447.P5034399699209202975

namespace A164447

/-- `Δ[A000071(n+8)]-∑[A131531(n+1)]` -/
def P5034399699209202975.Spec : Prop :=
  ∀ n, P5034399699209202975.a n = A164447 (n + 4)

end A164447

/-! ## A164447.P7431444009523430351

`A000975(n+6)-(A113405(n+8)-A140096(n+7))`
-/

namespace A164447.P7431444009523430351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 6) - (A113405 (n + 8) - A140096 (n + 7))

end

end A164447.P7431444009523430351

namespace A164447

/-- `A000975(n+6)-(A113405(n+8)-A140096(n+7))` -/
def P7431444009523430351.Spec : Prop :=
  ∀ n, P7431444009523430351.a n = A164447 (n + 4)

end A164447

/-!
# A164448: Number of binary strings of length n with no substrings equal to 0001 0010 or 0111.

The programs for A164448, the canonical program `A164448.P17168225305762406650` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164448 has offset 4).

The definition of A164448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164448.P17168225305762406650

`A164464(n+4)+∑[A023435(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164448

/-- `A164464(n+4)+∑[A023435(n)]` -/
def P17168225305762406650.Spec : Prop :=
  ∀ n, P17168225305762406650.a n = A164448 (n + 4)

theorem P17168225305762406650.correct : P17168225305762406650.Spec := by
  intro n
  simp only [A164448, Nat.add_sub_cancel]

end A164448

/-! ## A164448.P11178049819130097570

`∑[A023435(n)]+A164316(n+6)-3`
-/

namespace A164448.P11178049819130097570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A164316 (n + 6) - 3)

end

end A164448.P11178049819130097570

namespace A164448

/-- `∑[A023435(n)]+A164316(n+6)-3` -/
def P11178049819130097570.Spec : Prop :=
  ∀ n, P11178049819130097570.a n = A164448 (n + 4)

end A164448

/-! ## A164448.P14528065897759829509

`∑[A023435(n)]+∑[A164316(n+3)]+8`
-/

namespace A164448.P14528065897759829509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164316 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j + 8)

end

end A164448.P14528065897759829509

namespace A164448

/-- `∑[A023435(n)]+∑[A164316(n+3)]+8` -/
def P14528065897759829509.Spec : Prop :=
  ∀ n, P14528065897759829509.a n = A164448 (n + 4)

end A164448

/-! ## A164448.P1721181570669032325

`A164438(n+4)+∑[A023435(n)]-A023435(n)`
-/

namespace A164448.P1721181570669032325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164438 (n + 4) + (∑ j ∈ Finset.range (n + 1), f1 j - A023435 n)

end

end A164448.P1721181570669032325

namespace A164448

/-- `A164438(n+4)+∑[A023435(n)]-A023435(n)` -/
def P1721181570669032325.Spec : Prop :=
  ∀ n, P1721181570669032325.a n = A164448 (n + 4)

end A164448

/-! ## A164448.P16311972989137185189

`∑[A023435(n)]+A068921(n+3)-(3-A068921(n+7))`
-/

namespace A164448.P16311972989137185189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A068921 (n + 3) - (3 - A068921 (n + 7)))

end

end A164448.P16311972989137185189

namespace A164448

/-- `∑[A023435(n)]+A068921(n+3)-(3-A068921(n+7))` -/
def P16311972989137185189.Spec : Prop :=
  ∀ n, P16311972989137185189.a n = A164448 (n + 4)

end A164448

/-! ## A164448.P8936299320301659337

`∑[A023435(n)]+A000930(n+4)+A000930(n+8)-3`
-/

namespace A164448.P8936299320301659337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A000930 (n + 4) + (A000930 (n + 8) - 3))

end

end A164448.P8936299320301659337

namespace A164448

/-- `∑[A023435(n)]+A000930(n+4)+A000930(n+8)-3` -/
def P8936299320301659337.Spec : Prop :=
  ∀ n, P8936299320301659337.a n = A164448 (n + 4)

end A164448

/-! ## A164448.P15306720689590962622

`∑[A023435(n)]+A135851(n+13)+A135851(n+9)-3`
-/

namespace A164448.P15306720689590962622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A135851 (n + 13) + (A135851 (n + 9) - 3))

end

end A164448.P15306720689590962622

namespace A164448

/-- `∑[A023435(n)]+A135851(n+13)+A135851(n+9)-3` -/
def P15306720689590962622.Spec : Prop :=
  ∀ n, P15306720689590962622.a n = A164448 (n + 4)

end A164448

/-!
# A164449: Number of binary strings of length n with no substrings equal to 0001 0010 or 1010.

The programs for A164449, the canonical program `A164449.P9687608175749677541` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164449 has offset 4).

The definition of A164449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164449.P13622229945600511566

`A164462(n+4)+A074677(n)`
-/

namespace A164449.P13622229945600511566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164462 (n + 4) + A074677 n

end

end A164449.P13622229945600511566

namespace A164449

/-- `A164462(n+4)+A074677(n)` -/
def P13622229945600511566.Spec : Prop :=
  ∀ n, P13622229945600511566.a n = A164449 (n + 4)

end A164449

/-! ## A164449.P9687608175749677541

`A097083(n+2)+A000032(n+5)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164449

/-- `A097083(n+2)+A000032(n+5)` -/
def P9687608175749677541.Spec : Prop :=
  ∀ n, P9687608175749677541.a n = A164449 (n + 4)

theorem P9687608175749677541.correct : P9687608175749677541.Spec := by
  intro n
  simp only [A164449, Nat.add_sub_cancel]

end A164449

/-! ## A164449.P1862325254994132937

`A097083(n+2)+A000204(n+5)`
-/

namespace A164449.P1862325254994132937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097083 (n + 2) + A000204 (n + 5)

end

end A164449.P1862325254994132937

namespace A164449

/-- `A097083(n+2)+A000204(n+5)` -/
def P1862325254994132937.Spec : Prop :=
  ∀ n, P1862325254994132937.a n = A164449 (n + 4)

end A164449

/-! ## A164449.P6277548020801415854

`A097083(n+6)-(A006498(n+2)+A006498(n))`
-/

namespace A164449.P6277548020801415854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097083 (n + 6) - (A006498 (n + 2) + A006498 n)

end

end A164449.P6277548020801415854

namespace A164449

/-- `A097083(n+6)-(A006498(n+2)+A006498(n))` -/
def P6277548020801415854.Spec : Prop :=
  ∀ n, P6277548020801415854.a n = A164449 (n + 4)

end A164449

/-! ## A164449.P10070013699639934187

`floor(A264080(n+4)/A000204(n+4))`
-/

namespace A164449.P10070013699639934187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264080 (n + 4) : ℚ) / (A000204 (n + 4) : ℚ)⌋

end

end A164449.P10070013699639934187

namespace A164449

/-- `floor(A264080(n+4)/A000204(n+4))` -/
def P10070013699639934187.Spec : Prop :=
  ∀ n, P10070013699639934187.a n = A164449 (n + 4)

end A164449

/-!
# A164450: Number of binary strings of length n with no substrings equal to 0001 0010 or 1011.

The programs for A164450, there is no canonical definition to state claims against.
-/

/-! ## A164450.P7029990674150596695

`A110654(n)+A289077(n+3)+2`
-/

namespace A164450.P7029990674150596695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + (A289077 (n + 3) + 2)

end

end A164450.P7029990674150596695

/-! ## A164450.P16716158596978626996

`A289077(n+3)+A140106(n+7)`
-/

namespace A164450.P16716158596978626996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289077 (n + 3) + A140106 (n + 7)

end

end A164450.P16716158596978626996

/-! ## A164450.P10986456348887331434

`A004526(n+1)+A289077(n+3)+2`
-/

namespace A164450.P10986456348887331434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + (A289077 (n + 3) + 2)

end

end A164450.P10986456348887331434

/-! ## A164450.P8365080331962871228

`A007494(n)+A289077(n+3)+2-n`
-/

namespace A164450.P8365080331962871228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n + (A289077 (n + 3) + 2 - (n : ℤ))

end

end A164450.P8365080331962871228

/-! ## A164450.P2644784230709116859

`A289077(n+3)+2-(A008619(n)+A001478(n+1))`
-/

namespace A164450.P2644784230709116859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289077 (n + 3) + 2 - (A008619 n + A001478 (n + 1))

end

end A164450.P2644784230709116859

/-! ## A164450.P2715897542442175378

`A008621(n+1)+A289077(n+3)+A008621(n+3)`
-/

namespace A164450.P2715897542442175378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (n + 1) + (A289077 (n + 3) + A008621 (n + 3))

end

end A164450.P2715897542442175378

/-!
# A164451: Number of binary strings of length n with no substrings equal to 0001 0010 or 1100.

The programs for A164451, there is no canonical definition to state claims against.
-/

/-! ## A164451.P14551548581861105785

`A001462(A159340(n+4))+2`
-/

namespace A164451.P14551548581861105785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A159340 (n + 4)).toNat + 2

end

end A164451.P14551548581861105785

/-! ## A164451.P8157338756702995101

`∑[A325913(A325909(a(n-1)))]` with `a(0)=13, a(1)=8, a(2)=13`
-/

namespace A164451.P8157338756702995101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13, 8, 13] fun n f1 =>
  A325913 (A325909 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164451.P8157338756702995101

/-! ## A164451.P15007754984621071748

`A164492(n+4)+A005088(A265975(n))`
-/

namespace A164451.P15007754984621071748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164492 (n + 4) + A005088 (A265975 n).toNat

end

end A164451.P15007754984621071748

/-!
# A164452: Number of binary strings of length n with no substrings equal to 0001 0010 or 1101.

The programs for A164452, the canonical program `A164452.P3000043555096228233` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164452 has offset 4).

The definition of A164452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 705 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164452.P3000043555096228233

`A048590(n+2)+A048590(n+4)-(n+16)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164452

/-- `A048590(n+2)+A048590(n+4)-(n+16)` -/
def P3000043555096228233.Spec : Prop :=
  ∀ n, P3000043555096228233.a n = A164452 (n + 4)

theorem P3000043555096228233.correct : P3000043555096228233.Spec := by
  intro n
  simp only [A164452, Nat.add_sub_cancel]

end A164452

/-! ## A164452.P9025920515659592110

`A176839(A000111(n))+A164458(n+4)`
-/

namespace A164452.P9025920515659592110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176839 (A000111 n).toNat + A164458 (n + 4)

end

end A164452.P9025920515659592110

namespace A164452

/-- `A176839(A000111(n))+A164458(n+4)` -/
def P9025920515659592110.Spec : Prop :=
  ∀ n, P9025920515659592110.a n = A164452 (n + 4)

end A164452

/-! ## A164452.P9902286459905616716

`A110592(A133434(n+1))+A000070(n+4)`
-/

namespace A164452.P9902286459905616716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A133434 (n + 1)).toNat + A000070 (n + 4)

end

end A164452.P9902286459905616716

namespace A164452

/-- `A110592(A133434(n+1))+A000070(n+4)` -/
def P9902286459905616716.Spec : Prop :=
  ∀ n, P9902286459905616716.a n = A164452 (n + 4)

end A164452

/-!
# A164453: Number of binary strings of length n with no substrings equal to 0001 0011 or 0100.

The programs for A164453, the canonical program `A164453.P12160442601266819930` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164453 has offset 4).

The definition of A164453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 436 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164453.P12160442601266819930

`Δ[Δ[A164440(n+9)]]%A164440(n+5)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164453

/-- `Δ[Δ[A164440(n+9)]]%A164440(n+5)` -/
def P12160442601266819930.Spec : Prop :=
  ∀ n, P12160442601266819930.a n = A164453 (n + 4)

theorem P12160442601266819930.correct : P12160442601266819930.Spec := by
  intro n
  simp only [A164453, Nat.add_sub_cancel]

end A164453

/-! ## A164453.P10922742326108573677

`A164440(n+10)%(A164440(n+11)%A164440(n+9))`
-/

namespace A164453.P10922742326108573677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164440 (n + 10)) (Int.tmod (A164440 (n + 11)) (A164440 (n + 9)))

end

end A164453.P10922742326108573677

namespace A164453

/-- `A164440(n+10)%(A164440(n+11)%A164440(n+9))` -/
def P10922742326108573677.Spec : Prop :=
  ∀ n, P10922742326108573677.a n = A164453 (n + 4)

end A164453

/-! ## A164453.P14695542689276101603

`A274399(A164451(n+4))`
-/

namespace A164453.P14695542689276101603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (A164451 (n + 4)).toNat

end

end A164453.P14695542689276101603

namespace A164453

/-- `A274399(A164451(n+4))` -/
def P14695542689276101603.Spec : Prop :=
  ∀ n, P14695542689276101603.a n = A164453 (n + 4)

end A164453

/-!
# A164454: Number of binary strings of length n with no substrings equal to 0001 0011 or 0101.

The programs for A164454, the canonical program `A164454.P16577046448962556385` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164454 has offset 4).

The definition of A164454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164454.P16577046448962556385

`A048626(n+3)-(A004396(n)+6)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164454

/-- `A048626(n+3)-(A004396(n)+6)` -/
def P16577046448962556385.Spec : Prop :=
  ∀ n, P16577046448962556385.a n = A164454 (n + 4)

theorem P16577046448962556385.correct : P16577046448962556385.Spec := by
  intro n
  simp only [A164454, Nat.add_sub_cancel]

end A164454

/-! ## A164454.P3289049101901362235

`A050228(n+4)+A002264(n+7)`
-/

namespace A164454.P3289049101901362235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050228 (n + 4) + A002264 (n + 7)

end

end A164454.P3289049101901362235

namespace A164454

/-- `A050228(n+4)+A002264(n+7)` -/
def P3289049101901362235.Spec : Prop :=
  ∀ n, P3289049101901362235.a n = A164454 (n + 4)

end A164454

/-! ## A164454.P13093839586922718739

`A000930(n+9)-(A004396(n)+6)`
-/

namespace A164454.P13093839586922718739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 9) - (A004396 n + 6)

end

end A164454.P13093839586922718739

namespace A164454

/-- `A000930(n+9)-(A004396(n)+6)` -/
def P13093839586922718739.Spec : Prop :=
  ∀ n, P13093839586922718739.a n = A164454 (n + 4)

end A164454

/-! ## A164454.P16175698988294012198

`A000930(n+9)-A274616(n+9)`
-/

namespace A164454.P16175698988294012198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 9) - A274616 (n + 9)

end

end A164454.P16175698988294012198

namespace A164454

/-- `A000930(n+9)-A274616(n+9)` -/
def P16175698988294012198.Spec : Prop :=
  ∀ n, P16175698988294012198.a n = A164454 (n + 4)

end A164454

/-! ## A164454.P8344141073573385953

`A020745(n+4)-Δ[A000212(n+7)]`
-/

namespace A164454.P8344141073573385953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (n + 4) - (f1 (n + 1) - f1 n)

end

end A164454.P8344141073573385953

namespace A164454

/-- `A020745(n+4)-Δ[A000212(n+7)]` -/
def P8344141073573385953.Spec : Prop :=
  ∀ n, P8344141073573385953.a n = A164454 (n + 4)

end A164454

/-! ## A164454.P11754591288719879346

`A020745(n+4)+A000212(n+7)-A000212(n+8)`
-/

namespace A164454.P11754591288719879346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (n + 4) + (A000212 (n + 7) - A000212 (n + 8))

end

end A164454.P11754591288719879346

namespace A164454

/-- `A020745(n+4)+A000212(n+7)-A000212(n+8)` -/
def P11754591288719879346.Spec : Prop :=
  ∀ n, P11754591288719879346.a n = A164454 (n + 4)

end A164454

/-! ## A164454.P8701202946631610316

`A000930(n+9)-(A002264(n+8)+A002264(n)+4)`
-/

namespace A164454.P8701202946631610316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 9) - (A002264 (n + 8) + (A002264 n + 4))

end

end A164454.P8701202946631610316

namespace A164454

/-- `A000930(n+9)-(A002264(n+8)+A002264(n)+4)` -/
def P8701202946631610316.Spec : Prop :=
  ∀ n, P8701202946631610316.a n = A164454 (n + 4)

end A164454

/-! ## A164454.P63845175456856237

`Δ[A020745(n+6)]-(A004396(n)+6)`
-/

namespace A164454.P63845175456856237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A004396 n + 6)

end

end A164454.P63845175456856237

namespace A164454

/-- `Δ[A020745(n+6)]-(A004396(n)+6)` -/
def P63845175456856237.Spec : Prop :=
  ∀ n, P63845175456856237.a n = A164454 (n + 4)

end A164454

/-! ## A164454.P4996082025747174779

`Δ[A048589(n+6)]-(A004396(n)+6)`
-/

namespace A164454.P4996082025747174779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048589 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A004396 n + 6)

end

end A164454.P4996082025747174779

namespace A164454

/-- `Δ[A048589(n+6)]-(A004396(n)+6)` -/
def P4996082025747174779.Spec : Prop :=
  ∀ n, P4996082025747174779.a n = A164454 (n + 4)

end A164454

/-! ## A164454.P11184144932289509102

`Δ[A048591(n+6)]-(A004396(n)+6)`
-/

namespace A164454.P11184144932289509102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048591 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A004396 n + 6)

end

end A164454.P11184144932289509102

namespace A164454

/-- `Δ[A048591(n+6)]-(A004396(n)+6)` -/
def P11184144932289509102.Spec : Prop :=
  ∀ n, P11184144932289509102.a n = A164454 (n + 4)

end A164454

/-!
# A164455: Number of binary strings of length n with no substrings equal to 0001 0011 or 0111.

The programs for A164455, there is no canonical definition to state claims against.
-/

/-! ## A164455.P16172222159608152362

`A276571(4*A211582(n+1))`
-/

namespace A164455.P16172222159608152362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (4 * A211582 (n + 1)).toNat

end

end A164455.P16172222159608152362

/-! ## A164455.P17522384818398978541

`A054578(n+4)-A029883(A325545(3*(n+1)))`
-/

namespace A164455.P17522384818398978541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054578 (n + 4) - A029883 (A325545 (3 * (n + 1))).toNat

end

end A164455.P17522384818398978541

/-!
# A164456: Number of binary strings of length n with no substrings equal to 0001 0011 or 1000.

The programs for A164456, the canonical program `A164456.P3672447585452505969` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164456 has offset 4).

The definition of A164456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164456.P3672447585452505969

`n+9+∑[A164393(n+2)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164456

/-- `n+9+∑[A164393(n+2)]` -/
def P3672447585452505969.Spec : Prop :=
  ∀ n, P3672447585452505969.a n = A164456 (n + 4)

theorem P3672447585452505969.correct : P3672447585452505969.Spec := by
  intro n
  simp only [A164456, Nat.add_sub_cancel]

end A164456

/-! ## A164456.P1935708279065720176

`A135431(n+3)+A164393(n+3)+2`
-/

namespace A164456.P1935708279065720176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135431 (n + 3) + (A164393 (n + 3) + 2)

end

end A164456.P1935708279065720176

namespace A164456

/-- `A135431(n+3)+A164393(n+3)+2` -/
def P1935708279065720176.Spec : Prop :=
  ∀ n, P1935708279065720176.a n = A164456 (n + 4)

end A164456

/-! ## A164456.P9388665561453178366

`A116732(n+4)+A116732(n+8)+1`
-/

namespace A164456.P9388665561453178366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116732 (n + 4) + (A116732 (n + 8) + 1)

end

end A164456.P9388665561453178366

namespace A164456

/-- `A116732(n+4)+A116732(n+8)+1` -/
def P9388665561453178366.Spec : Prop :=
  ∀ n, P9388665561453178366.a n = A164456 (n + 4)

end A164456

/-! ## A164456.P16475358281817135227

`A239909(n+7)+1-A239909(n+4)`
-/

namespace A164456.P16475358281817135227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239909 (n + 7) + (1 - A239909 (n + 4))

end

end A164456.P16475358281817135227

namespace A164456

/-- `A239909(n+7)+1-A239909(n+4)` -/
def P16475358281817135227.Spec : Prop :=
  ∀ n, P16475358281817135227.a n = A164456 (n + 4)

end A164456

/-! ## A164456.P12503392193627525004

`Δ[A020750(n+2)]+1`
-/

namespace A164456.P12503392193627525004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020750 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A164456.P12503392193627525004

namespace A164456

/-- `Δ[A020750(n+2)]+1` -/
def P12503392193627525004.Spec : Prop :=
  ∀ n, P12503392193627525004.a n = A164456 (n + 4)

end A164456

/-! ## A164456.P16755584450824602700

`Δ[Δ[A164400(n+5)]]+1`
-/

namespace A164456.P16755584450824602700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164400 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A164456.P16755584450824602700

namespace A164456

/-- `Δ[Δ[A164400(n+5)]]+1` -/
def P16755584450824602700.Spec : Prop :=
  ∀ n, P16755584450824602700.a n = A164456 (n + 4)

end A164456

/-!
# A164457: Number of binary strings of length n with no substrings equal to 0001, 0011, or 1010.

The programs for A164457, the canonical program `A164457.P2348421352263541236` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164457 has offset 0).

The definition of A164457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 517 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164457.P2348421352263541236

`A286938(n)-C(2, C(n², 5))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164457

/-- `A286938(n)-C(2, C(n², 5))` -/
def P2348421352263541236.Spec : Prop :=
  ∀ n, P2348421352263541236.a n = A164457 n

theorem P2348421352263541236.correct : P2348421352263541236.Spec := by
  intro n
  simp only [A164457]

end A164457

/-! ## A164457.P12543082486024794769

`A286938(n)-A130716(n)`
-/

namespace A164457.P12543082486024794769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n - A130716 n

end

end A164457.P12543082486024794769

namespace A164457

/-- `A286938(n)-A130716(n)` -/
def P12543082486024794769.Spec : Prop :=
  ∀ n, P12543082486024794769.a n = A164457 n

end A164457

/-! ## A164457.P9506428069876047923

`A286938(n)-char[A024032(n)]`
-/

namespace A164457.P9506428069876047923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024032 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A164457.P9506428069876047923

namespace A164457

/-- `A286938(n)-char[A024032(n)]` -/
def P9506428069876047923.Spec : Prop :=
  ∀ n, P9506428069876047923.a n = A164457 n

end A164457

/-! ## A164457.P17662473020506380501

`A286938(n)-char[A060024(n)]`
-/

namespace A164457.P17662473020506380501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060024 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A164457.P17662473020506380501

namespace A164457

/-- `A286938(n)-char[A060024(n)]` -/
def P17662473020506380501.Spec : Prop :=
  ∀ n, P17662473020506380501.a n = A164457 n

end A164457

/-! ## A164457.P2096218221702790235

`A286938(n)-A000045(C(2, n))`
-/

namespace A164457.P2096218221702790235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n - A000045 (Nat.choose 2 n)

end

end A164457.P2096218221702790235

namespace A164457

/-- `A286938(n)-A000045(C(2, n))` -/
def P2096218221702790235.Spec : Prop :=
  ∀ n, P2096218221702790235.a n = A164457 n

end A164457

/-! ## A164457.P4831811726209746840

`A286938(n)-A000081(C(2, n))`
-/

namespace A164457.P4831811726209746840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n - A000081 (Nat.choose 2 n)

end

end A164457.P4831811726209746840

namespace A164457

/-- `A286938(n)-A000081(C(2, n))` -/
def P4831811726209746840.Spec : Prop :=
  ∀ n, P4831811726209746840.a n = A164457 n

end A164457

/-! ## A164457.P5363072109034943147

`xor(A278105(n+1), A286938(n))`
-/

namespace A164457.P5363072109034943147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A278105 (n + 1)) (A286938 n)

end

end A164457.P5363072109034943147

namespace A164457

/-- `xor(A278105(n+1), A286938(n))` -/
def P5363072109034943147.Spec : Prop :=
  ∀ n, P5363072109034943147.a n = A164457 n

end A164457

/-! ## A164457.P1463911508712752747

`A286938(n)-char[2-A053186(n)]`
-/

namespace A164457.P1463911508712752747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A053186 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A164457.P1463911508712752747

namespace A164457

/-- `A286938(n)-char[2-A053186(n)]` -/
def P1463911508712752747.Spec : Prop :=
  ∀ n, P1463911508712752747.a n = A164457 n

end A164457

/-! ## A164457.P17453770658772143760

`A286938(n)-A286912(C(2, n)+1)`
-/

namespace A164457.P17453770658772143760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n - A286912 (Nat.choose 2 n + 1)

end

end A164457.P17453770658772143760

namespace A164457

/-- `A286938(n)-A286912(C(2, n)+1)` -/
def P17453770658772143760.Spec : Prop :=
  ∀ n, P17453770658772143760.a n = A164457 n

end A164457

/-! ## A164457.P4578473107702942979

`A286938(n)-char[A002321(A037536(n+1))]`
-/

namespace A164457.P4578473107702942979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A037536 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A164457.P4578473107702942979

namespace A164457

/-- `A286938(n)-char[A002321(A037536(n+1))]` -/
def P4578473107702942979.Spec : Prop :=
  ∀ n, P4578473107702942979.a n = A164457 n

end A164457

/-! ## A164457.P1498167148998605183

`A286938(n)-A023533(n²)`
-/

namespace A164457.P1498167148998605183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n - A023533 (n ^ 2)

end

end A164457.P1498167148998605183

namespace A164457

/-- `A286938(n)-A023533(n²)` -/
def P1498167148998605183.Spec : Prop :=
  ∀ n, P1498167148998605183.a n = A164457 n

end A164457

/-!
# A164458: Number of binary strings of length n with no substrings equal to 0001 0011 or 1011.

The programs for A164458, the canonical program `A164458.P637685599849046048` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164458 has offset 4).

The definition of A164458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 807 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164458.P637685599849046048

`A007307(n+13)-A020735(n+7)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164458

/-- `A007307(n+13)-A020735(n+7)` -/
def P637685599849046048.Spec : Prop :=
  ∀ n, P637685599849046048.a n = A164458 (n + 4)

theorem P637685599849046048.correct : P637685599849046048.Spec := by
  intro n
  simp only [A164458, Nat.add_sub_cancel]

end A164458

/-! ## A164458.P12913586706706068356

`A008586(n+3)+∑[∑[A007307(n+3)]]`
-/

namespace A164458.P12913586706706068356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164458.P12913586706706068356

namespace A164458

/-- `A008586(n+3)+∑[∑[A007307(n+3)]]` -/
def P12913586706706068356.Spec : Prop :=
  ∀ n, P12913586706706068356.a n = A164458 (n + 4)

end A164458

/-! ## A164458.P16343011038676445127

`A164315(n+3)+A164315(n+6)-A223134(n+5)`
-/

namespace A164458.P16343011038676445127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164315 (n + 3) + (A164315 (n + 6) - A223134 (n + 5))

end

end A164458.P16343011038676445127

namespace A164458

/-- `A164315(n+3)+A164315(n+6)-A223134(n+5)` -/
def P16343011038676445127.Spec : Prop :=
  ∀ n, P16343011038676445127.a n = A164458 (n + 4)

end A164458

/-! ## A164458.P14440083797078464233

`A096231(n+4)+A096231(n+7)-A020742(n+5)`
-/

namespace A164458.P14440083797078464233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096231 (n + 4) + (A096231 (n + 7) - A020742 (n + 5))

end

end A164458.P14440083797078464233

namespace A164458

/-- `A096231(n+4)+A096231(n+7)-A020742(n+5)` -/
def P14440083797078464233.Spec : Prop :=
  ∀ n, P14440083797078464233.a n = A164458 (n + 4)

end A164458

/-! ## A164458.P11812362554791450431

`A096231(n+4)+A096231(n+7)-A062545(n+7)`
-/

namespace A164458.P11812362554791450431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096231 (n + 4) + (A096231 (n + 7) - A062545 (n + 7))

end

end A164458.P11812362554791450431

namespace A164458

/-- `A096231(n+4)+A096231(n+7)-A062545(n+7)` -/
def P11812362554791450431.Spec : Prop :=
  ∀ n, P11812362554791450431.a n = A164458 (n + 4)

end A164458

/-! ## A164458.P18348661815605457890

`A096231(n+4)+A096231(n+7)-A005408(n+8)`
-/

namespace A164458.P18348661815605457890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096231 (n + 4) + (A096231 (n + 7) - A005408 (n + 8))

end

end A164458.P18348661815605457890

namespace A164458

/-- `A096231(n+4)+A096231(n+7)-A005408(n+8)` -/
def P18348661815605457890.Spec : Prop :=
  ∀ n, P18348661815605457890.a n = A164458 (n + 4)

end A164458

/-! ## A164458.P12221309078134731917

`A164001(n+7)+A164001(n+10)-A005408(n+8)`
-/

namespace A164458.P12221309078134731917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 7) + (A164001 (n + 10) - A005408 (n + 8))

end

end A164458.P12221309078134731917

namespace A164458

/-- `A164001(n+7)+A164001(n+10)-A005408(n+8)` -/
def P12221309078134731917.Spec : Prop :=
  ∀ n, P12221309078134731917.a n = A164458 (n + 4)

end A164458

/-!
# A164459: Number of binary strings of length n with no substrings equal to 0001 0011 or 1100.

The programs for A164459, the canonical program `A164459.P4722357969111656273` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164459 has offset 4).

The definition of A164459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164459.P4722357969111656273

`2*a(n-1)-2*a(n-4)+a(n-5)-a(n-6)+a(n-7)` with `a(0)=13, a(1)=21, a(2)=35, a(3)=58, a(4)=96, a(5)=159, a(6)=264`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164459

/-- `2*a(n-1)-2*a(n-4)+a(n-5)-a(n-6)+a(n-7)` -/
def P4722357969111656273.Spec : Prop :=
  ∀ n, P4722357969111656273.a n = A164459 (n + 4)

theorem P4722357969111656273.correct : P4722357969111656273.Spec := by
  intro n
  simp only [A164459, Nat.add_sub_cancel]

end A164459

/-! ## A164459.P18301220584207502419

`A164496(n+4)+A107846(A000142(n))`
-/

namespace A164459.P18301220584207502419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164496 (n + 4) + A107846 (A000142 n).toNat

end

end A164459.P18301220584207502419

namespace A164459

/-- `A164496(n+4)+A107846(A000142(n))` -/
def P18301220584207502419.Spec : Prop :=
  ∀ n, P18301220584207502419.a n = A164459 (n + 4)

end A164459

/-! ## A164459.P1484798852563767706

`A164496(n+4)+A107846(A012075(n))`
-/

namespace A164459.P1484798852563767706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164496 (n + 4) + A107846 (A012075 n).toNat

end

end A164459.P1484798852563767706

namespace A164459

/-- `A164496(n+4)+A107846(A012075(n))` -/
def P1484798852563767706.Spec : Prop :=
  ∀ n, P1484798852563767706.a n = A164459 (n + 4)

end A164459

/-! ## A164459.P13800165783252000762

`A164432(n+4)+A001222(A192936(n))`
-/

namespace A164459.P13800165783252000762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164432 (n + 4) + A001222 (A192936 n).toNat

end

end A164459.P13800165783252000762

namespace A164459

/-- `A164432(n+4)+A001222(A192936(n))` -/
def P13800165783252000762.Spec : Prop :=
  ∀ n, P13800165783252000762.a n = A164459 (n + 4)

end A164459

/-!
# A164460: Number of binary strings of length n with no substrings equal to 0001 0011 or 1101.

The programs for A164460, the canonical program `A164460.P12087829792596565309` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164460 has offset 4).

The definition of A164460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 560 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164460.P12087829792596565309

`A109537(n+7)+A109537(n+10)-2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164460

/-- `A109537(n+7)+A109537(n+10)-2` -/
def P12087829792596565309.Spec : Prop :=
  ∀ n, P12087829792596565309.a n = A164460 (n + 4)

theorem P12087829792596565309.correct : P12087829792596565309.Spec := by
  intro n
  simp only [A164460, Nat.add_sub_cancel]

end A164460

/-! ## A164460.P6341804368241378529

`A005041(5*A008998(n+3))`
-/

namespace A164460.P6341804368241378529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (5 * A008998 (n + 3)).toNat

end

end A164460.P6341804368241378529

namespace A164460

/-- `A005041(5*A008998(n+3))` -/
def P6341804368241378529.Spec : Prop :=
  ∀ n, P6341804368241378529.a n = A164460 (n + 4)

end A164460

/-! ## A164460.P2038306915020284849

`A164448(n+4)-A001878(A303062(n))`
-/

namespace A164460.P2038306915020284849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164448 (n + 4) - A001878 (A303062 n).toNat

end

end A164460.P2038306915020284849

namespace A164460

/-- `A164448(n+4)-A001878(A303062(n))` -/
def P2038306915020284849.Spec : Prop :=
  ∀ n, P2038306915020284849.a n = A164460 (n + 4)

end A164460

/-!
# A164461: Number of binary strings of length n with no substrings equal to 0001 0011 or 1110.

The programs for A164461, there is no canonical definition to state claims against.
-/

/-! ## A164461.P9781043287426906550

`2*Δ[A164484(n+4)]-1`
-/

namespace A164461.P9781043287426906550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164484 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - 1

end

end A164461.P9781043287426906550

/-! ## A164461.P13474965828327792308

`Δ[A001489(n)+2*A164484(n+4)]`
-/

namespace A164461.P13474965828327792308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + 2 * A164484 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164461.P13474965828327792308

/-! ## A164461.P12833432259165200384

`Δ[A001478(n+1)+2*A164484(n+4)]`
-/

namespace A164461.P12833432259165200384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + 2 * A164484 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164461.P12833432259165200384

/-! ## A164461.P16988038456510145000

`A153881(n+2)+Δ[2*A164484(n+4)]`
-/

namespace A164461.P16988038456510145000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164484 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + (f1 (n + 1) - f1 n)

end

end A164461.P16988038456510145000

/-! ## A164461.P16764935494430132230

`A339791(A014963(n+1))+Δ[2*A164484(n+4)]`
-/

namespace A164461.P16764935494430132230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164484 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339791 (A014963 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A164461.P16764935494430132230

/-! ## A164461.P5591234793206979319

`A115638(2*n+1)+Δ[2*A164484(n+4)]`
-/

namespace A164461.P5591234793206979319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164484 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A164461.P5591234793206979319

/-! ## A164461.P11812278724869112528

`A144432(∑[n+1])+Δ[2*A164484(n+4)]`
-/

namespace A164461.P11812278724869112528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164484 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144432 (∑ j ∈ Finset.range (n + 1), f1 j) + (f2 (n + 1) - f2 n)

end

end A164461.P11812278724869112528

/-!
# A164462: Number of binary strings of length n with no substrings equal to 0001 0100 or 0101.

The programs for A164462, the canonical program `A164462.P14348606007212189000` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164462 has offset 4).

The definition of A164462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164462.P14348606007212189000

`A000045(n+7)-∑[n]%2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164462

/-- `A000045(n+7)-∑[n]%2` -/
def P14348606007212189000.Spec : Prop :=
  ∀ n, P14348606007212189000.a n = A164462 (n + 4)

theorem P14348606007212189000.correct : P14348606007212189000.Spec := by
  intro n
  simp only [A164462, Nat.add_sub_cancel]

end A164462

/-! ## A164462.P9735655910814217936

`A164449(n+4)-A074677(n)`
-/

namespace A164462.P9735655910814217936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164449 (n + 4) - A074677 n

end

end A164462.P9735655910814217936

namespace A164462

/-- `A164449(n+4)-A074677(n)` -/
def P9735655910814217936.Spec : Prop :=
  ∀ n, P9735655910814217936.a n = A164462 (n + 4)

end A164462

/-! ## A164462.P11164373470448777013

`A020732(n+2)+Δ[A004525(n)]`
-/

namespace A164462.P11164373470448777013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 (n + 2) + (f1 (n + 1) - f1 n)

end

end A164462.P11164373470448777013

namespace A164462

/-- `A020732(n+2)+Δ[A004525(n)]` -/
def P11164373470448777013.Spec : Prop :=
  ∀ n, P11164373470448777013.a n = A164462 (n + 4)

end A164462

/-! ## A164462.P7861392836624005734

`A098180(n+1)+A001911(n+4)-n`
-/

namespace A164462.P7861392836624005734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 (n + 1) + (A001911 (n + 4) - (n : ℤ))

end

end A164462.P7861392836624005734

namespace A164462

/-- `A098180(n+1)+A001911(n+4)-n` -/
def P7861392836624005734.Spec : Prop :=
  ∀ n, P7861392836624005734.a n = A164462 (n + 4)

end A164462

/-! ## A164462.P4546417066522035407

`A042948(A167614(n+1))+∑[A001924(n+1)-n]`
-/

namespace A164462.P4546417066522035407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A167614 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164462.P4546417066522035407

namespace A164462

/-- `A042948(A167614(n+1))+∑[A001924(n+1)-n]` -/
def P4546417066522035407.Spec : Prop :=
  ∀ n, P4546417066522035407.a n = A164462 (n + 4)

end A164462

/-!
# A164463: Number of binary strings of length n with no substrings equal to 0001 0100 or 0110.

The programs for A164463, the canonical program `A164463.P13789395395333063195` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164463 has offset 4).

The definition of A164463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164463.P13789395395333063195

`A286311(A020715(n))+A010892(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164463

/-- `A286311(A020715(n))+A010892(n)` -/
def P13789395395333063195.Spec : Prop :=
  ∀ n, P13789395395333063195.a n = A164463 (n + 4)

theorem P13789395395333063195.correct : P13789395395333063195.Spec := by
  intro n
  simp only [A164463, Nat.add_sub_cancel]

end A164463

/-! ## A164463.P18332878289126148114

`A024490(n+3)+Δ[A024490(n+8)]`
-/

namespace A164463.P18332878289126148114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 3) + (f1 (n + 1) - f1 n)

end

end A164463.P18332878289126148114

namespace A164463

/-- `A024490(n+3)+Δ[A024490(n+8)]` -/
def P18332878289126148114.Spec : Prop :=
  ∀ n, P18332878289126148114.a n = A164463 (n + 4)

end A164463

/-! ## A164463.P11529931676221231457

`Δ[A286311(n+8)-A286311(n+6)]`
-/

namespace A164463.P11529931676221231457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286311 (n + 8) - A286311 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164463.P11529931676221231457

namespace A164463

/-- `Δ[A286311(n+8)-A286311(n+6)]` -/
def P11529931676221231457.Spec : Prop :=
  ∀ n, P11529931676221231457.a n = A164463 (n + 4)

end A164463

/-! ## A164463.P2528921165323362686

`A286350(n+8)-Δ[A286350(n+8)]`
-/

namespace A164463.P2528921165323362686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286350 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286350 (n + 8) - (f1 (n + 1) - f1 n)

end

end A164463.P2528921165323362686

namespace A164463

/-- `A286350(n+8)-Δ[A286350(n+8)]` -/
def P2528921165323362686.Spec : Prop :=
  ∀ n, P2528921165323362686.a n = A164463 (n + 4)

end A164463

/-! ## A164463.P6285199264339802361

`Δ[Δ[A286311(n+6)+A286311(n+7)]]`
-/

namespace A164463.P6285199264339802361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286311 (n + 6) + A286311 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164463.P6285199264339802361

namespace A164463

/-- `Δ[Δ[A286311(n+6)+A286311(n+7)]]` -/
def P6285199264339802361.Spec : Prop :=
  ∀ n, P6285199264339802361.a n = A164463 (n + 4)

end A164463

/-! ## A164463.P14293494839326184214

`A286311(n+10)-(A286311(n+7)+A286311(n+9))`
-/

namespace A164463.P14293494839326184214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286311 (n + 10) - (A286311 (n + 7) + A286311 (n + 9))

end

end A164463.P14293494839326184214

namespace A164463

/-- `A286311(n+10)-(A286311(n+7)+A286311(n+9))` -/
def P14293494839326184214.Spec : Prop :=
  ∀ n, P14293494839326184214.a n = A164463 (n + 4)

end A164463

/-!
# A164464: Number of binary strings of length n with no substrings equal to 0001, 0100, or 0111.

The programs for A164464, the canonical program `A164464.P12226052964285216476` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164464 has offset 4).

The definition of A164464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164464.P12226052964285216476

`a(n-1)+a(n-3)+3` with `a(0)=13, a(1)=20, a(2)=31`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164464

/-- `a(n-1)+a(n-3)+3` -/
def P12226052964285216476.Spec : Prop :=
  ∀ n, (P12226052964285216476.a n : ℤ) = A164464 (n + 4)

theorem P12226052964285216476.correct : P12226052964285216476.Spec := by
  intro n
  simp only [A164464, Nat.add_sub_cancel]

end A164464

/-! ## A164464.P14194900575013021895

`A164316(n+6)-3`
-/

namespace A164464.P14194900575013021895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164316 (n + 6) - 3

end

end A164464.P14194900575013021895

namespace A164464

/-- `A164316(n+6)-3` -/
def P14194900575013021895.Spec : Prop :=
  ∀ n, P14194900575013021895.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P16597394652232521895

`∑[A164316(n+3)]+8`
-/

namespace A164464.P16597394652232521895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164316 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A164464.P16597394652232521895

namespace A164464

/-- `∑[A164316(n+3)]+8` -/
def P16597394652232521895.Spec : Prop :=
  ∀ n, P16597394652232521895.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P14139680103523916890

`A164438(n+4)-A023435(n)`
-/

namespace A164464.P14139680103523916890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164438 (n + 4) - A023435 n

end

end A164464.P14139680103523916890

namespace A164464

/-- `A164438(n+4)-A023435(n)` -/
def P14139680103523916890.Spec : Prop :=
  ∀ n, P14139680103523916890.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P608944618922140265

`A020745(n+3)+∑[A000930(n+1)]`
-/

namespace A164464.P608944618922140265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164464.P608944618922140265

namespace A164464

/-- `A020745(n+3)+∑[A000930(n+1)]` -/
def P608944618922140265.Spec : Prop :=
  ∀ n, P608944618922140265.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P14088470162279958498

`A179070(n+8)+∑[A000930(n+2)]`
-/

namespace A164464.P14088470162279958498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 8) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164464.P14088470162279958498

namespace A164464

/-- `A179070(n+8)+∑[A000930(n+2)]` -/
def P14088470162279958498.Spec : Prop :=
  ∀ n, P14088470162279958498.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P8059885536220992478

`A068921(n+3)-(3-A068921(n+7))`
-/

namespace A164464.P8059885536220992478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 3) - (3 - A068921 (n + 7))

end

end A164464.P8059885536220992478

namespace A164464

/-- `A068921(n+3)-(3-A068921(n+7))` -/
def P8059885536220992478.Spec : Prop :=
  ∀ n, P8059885536220992478.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P433018541201228357

`A000930(n+4)+A000930(n+8)-3`
-/

namespace A164464.P433018541201228357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 4) + (A000930 (n + 8) - 3)

end

end A164464.P433018541201228357

namespace A164464

/-- `A000930(n+4)+A000930(n+8)-3` -/
def P433018541201228357.Spec : Prop :=
  ∀ n, P433018541201228357.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P6942479470515080439

`A135851(n+13)+A135851(n+9)-3`
-/

namespace A164464.P6942479470515080439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 13) + (A135851 (n + 9) - 3)

end

end A164464.P6942479470515080439

namespace A164464

/-- `A135851(n+13)+A135851(n+9)-3` -/
def P6942479470515080439.Spec : Prop :=
  ∀ n, P6942479470515080439.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P16116743151373934051

`A135851(n+13)+∑[record[A135851(n+1)]]`
-/

namespace A164464.P16116743151373934051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 13) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164464.P16116743151373934051

namespace A164464

/-- `A135851(n+13)+∑[record[A135851(n+1)]]` -/
def P16116743151373934051.Spec : Prop :=
  ∀ n, P16116743151373934051.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P838884083317389813

`A164316(n+9)%(A164316(n+8)+3)`
-/

namespace A164464.P838884083317389813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164316 (n + 9)) (A164316 (n + 8) + 3)

end

end A164464.P838884083317389813

namespace A164464

/-- `A164316(n+9)%(A164316(n+8)+3)` -/
def P838884083317389813.Spec : Prop :=
  ∀ n, P838884083317389813.a n = A164464 (n + 4)

end A164464

/-! ## A164464.P17802615870386120831

`A020711(n+12)%(A020711(n+1)+A020711(n+10))`
-/

namespace A164464.P17802615870386120831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020711 (n + 12)) (A020711 (n + 1) + A020711 (n + 10))

end

end A164464.P17802615870386120831

namespace A164464

/-- `A020711(n+12)%(A020711(n+1)+A020711(n+10))` -/
def P17802615870386120831.Spec : Prop :=
  ∀ n, P17802615870386120831.a n = A164464 (n + 4)

end A164464

/-!
# A164465: Number of binary strings of length n with no substrings equal to 0001 0100 or 1010.

The programs for A164465, there is no canonical definition to state claims against.
-/

/-! ## A164465.P2618802238093509745

`A164492(n+4)+A001222(A006125(n))`
-/

namespace A164465.P2618802238093509745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164492 (n + 4) + A001222 (A006125 n).toNat

end

end A164465.P2618802238093509745

/-!
# A164466: Number of binary strings of length n with no substrings equal to 0001, 0100, or 1011.

The programs for A164466, the canonical program `A164466.P2888521042451949652` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164466 has offset 0).

The definition of A164466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 710 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164466.P2888521042451949652

`∑[A003269(A257542(n+1))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164466

/-- `∑[A003269(A257542(n+1))]` -/
def P2888521042451949652.Spec : Prop :=
  ∀ n, P2888521042451949652.a n = A164466 n

theorem P2888521042451949652.correct : P2888521042451949652.Spec := by
  intro n
  simp only [A164466]

end A164466

/-! ## A164466.P5517813685809466864

`∑[A179184(n)+∑[A003269(n)]]`
-/

namespace A164466.P5517813685809466864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164466.P5517813685809466864

namespace A164466

/-- `∑[A179184(n)+∑[A003269(n)]]` -/
def P5517813685809466864.Spec : Prop :=
  ∀ n, P5517813685809466864.a n = A164466 n

end A164466

/-! ## A164466.P11834689079550889077

`∑[A003269(A344895(C(3, n))+n)]`
-/

namespace A164466.P11834689079550889077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (A344895 (Nat.choose 3 n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164466.P11834689079550889077

namespace A164466

/-- `∑[A003269(A344895(C(3, n))+n)]` -/
def P11834689079550889077.Spec : Prop :=
  ∀ n, P11834689079550889077.a n = A164466 n

end A164466

/-! ## A164466.P3798591626725056053

`A004280(n+1)+A145131(n)-n`
-/

namespace A164466.P3798591626725056053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1) + (A145131 n - (n : ℤ))

end

end A164466.P3798591626725056053

namespace A164466

/-- `A004280(n+1)+A145131(n)-n` -/
def P3798591626725056053.Spec : Prop :=
  ∀ n, P3798591626725056053.a n = A164466 n

end A164466

/-! ## A164466.P8737442834760387971

`∑[A267870(∑[n])+A098578(n)]`
-/

namespace A164466.P8737442834760387971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 (∑ j ∈ Finset.range (n + 1), f2 j) + A098578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164466.P8737442834760387971

namespace A164466

/-- `∑[A267870(∑[n])+A098578(n)]` -/
def P8737442834760387971.Spec : Prop :=
  ∀ n, P8737442834760387971.a n = A164466 n

end A164466

/-! ## A164466.P6754616200087810333

`A145131(n)+A130517(A133263(n))`
-/

namespace A164466.P6754616200087810333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145131 n + A130517 (A133263 n).toNat

end

end A164466.P6754616200087810333

namespace A164466

/-- `A145131(n)+A130517(A133263(n))` -/
def P6754616200087810333.Spec : Prop :=
  ∀ n, P6754616200087810333.a n = A164466 n

end A164466

/-! ## A164466.P15736813710866988469

`A145131(n)+A000196(A081350(n))`
-/

namespace A164466.P15736813710866988469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145131 n + A000196 (A081350 n).toNat

end

end A164466.P15736813710866988469

namespace A164466

/-- `A145131(n)+A000196(A081350(n))` -/
def P15736813710866988469.Spec : Prop :=
  ∀ n, P15736813710866988469.a n = A164466 n

end A164466

/-!
# A164467: Number of binary strings of length n with no substrings equal to 0001 0100 or 1101.

The programs for A164467, there is no canonical definition to state claims against.
-/

/-! ## A164467.P1401522100101970543

`A248170(A200865(n+2))`
-/

namespace A164467.P1401522100101970543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248170 (A200865 (n + 2)).toNat

end

end A164467.P1401522100101970543

/-! ## A164467.P11102706536914282126

`A104103(A200865(n+2)-1)`
-/

namespace A164467.P11102706536914282126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (A200865 (n + 2) - 1).toNat

end

end A164467.P11102706536914282126

/-! ## A164467.P1723038647079174325

`A020722(∑[A175089(a(n-1))-1])-n` with `a(0)=5`
-/

namespace A164467.P1723038647079174325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A175089 (f1 (n - 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020722 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A164467.P1723038647079174325

/-! ## A164467.P14073513185924784066

`A164424(n+4)-A001222(A000351(n))`
-/

namespace A164467.P14073513185924784066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164424 (n + 4) - A001222 (A000351 n).toNat

end

end A164467.P14073513185924784066

/-!
# A164468: Number of binary strings of length n with no substrings equal to 0001, 0100, or 1110.

The programs for A164468, the canonical program `A164468.P17099430422981162265` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164468 has offset 4).

The definition of A164468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164468.P17099430422981162265

`a(n-1)+a(n-3)+2` with `a(0)=13, a(1)=20, a(2)=30`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164468

/-- `a(n-1)+a(n-3)+2` -/
def P17099430422981162265.Spec : Prop :=
  ∀ n, (P17099430422981162265.a n : ℤ) = A164468 (n + 4)

theorem P17099430422981162265.correct : P17099430422981162265.Spec := by
  intro n
  simp only [A164468, Nat.add_sub_cancel]

end A164468

/-! ## A164468.P3110702546653765467

`A238383(2*(n+3))+2`
-/

namespace A164468.P3110702546653765467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238383 (2 * (n + 3)) + 2

end

end A164468.P3110702546653765467

namespace A164468

/-- `A238383(2*(n+3))+2` -/
def P3110702546653765467.Spec : Prop :=
  ∀ n, P3110702546653765467.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P4313448759116196596

`A020749(n+1)+A020749(n)`
-/

namespace A164468.P4313448759116196596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020749 (n + 1) + A020749 n

end

end A164468.P4313448759116196596

namespace A164468

/-- `A020749(n+1)+A020749(n)` -/
def P4313448759116196596.Spec : Prop :=
  ∀ n, P4313448759116196596.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P10929505680374995912

`A224868(n+1)+A048626(n)`
-/

namespace A164468.P10929505680374995912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224868 (n + 1) + A048626 n

end

end A164468.P10929505680374995912

namespace A164468

/-- `A224868(n+1)+A048626(n)` -/
def P10929505680374995912.Spec : Prop :=
  ∀ n, P10929505680374995912.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P4994910266382293633

`A077868(n+5)+A077868(n)`
-/

namespace A164468.P4994910266382293633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (n + 5) + A077868 n

end

end A164468.P4994910266382293633

namespace A164468

/-- `A077868(n+5)+A077868(n)` -/
def P4994910266382293633.Spec : Prop :=
  ∀ n, P4994910266382293633.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P3636217024427049121

`A020745(n+1)+A020745(n+2)`
-/

namespace A164468.P3636217024427049121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (n + 1) + A020745 (n + 2)

end

end A164468.P3636217024427049121

namespace A164468

/-- `A020745(n+1)+A020745(n+2)` -/
def P3636217024427049121.Spec : Prop :=
  ∀ n, P3636217024427049121.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P13685785271181995153

`A164464(n+4)+1-A068921(n)`
-/

namespace A164468.P13685785271181995153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164464 (n + 4) + (1 - A068921 n)

end

end A164468.P13685785271181995153

namespace A164468

/-- `A164464(n+4)+1-A068921(n)` -/
def P13685785271181995153.Spec : Prop :=
  ∀ n, P13685785271181995153.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P1512383376908579870

`A048625(n+1)+A048626(n+1)-2`
-/

namespace A164468.P1512383376908579870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048625 (n + 1) + (A048626 (n + 1) - 2)

end

end A164468.P1512383376908579870

namespace A164468

/-- `A048625(n+1)+A048626(n+1)-2` -/
def P1512383376908579870.Spec : Prop :=
  ∀ n, P1512383376908579870.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P9547540224209991529

`A020745(A020705(n))-(A020745(n)+2)`
-/

namespace A164468.P9547540224209991529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (A020705 n).toNat - (A020745 n + 2)

end

end A164468.P9547540224209991529

namespace A164468

/-- `A020745(A020705(n))-(A020745(n)+2)` -/
def P9547540224209991529.Spec : Prop :=
  ∀ n, P9547540224209991529.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P7966131995745100220

`Δ[A266353(n+3)]-2`
-/

namespace A164468.P7966131995745100220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266353 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A164468.P7966131995745100220

namespace A164468

/-- `Δ[A266353(n+3)]-2` -/
def P7966131995745100220.Spec : Prop :=
  ∀ n, P7966131995745100220.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P6771067380898315083

`floor(a(n-1)²/a(n-2))` with `a(0)=13, a(1)=20`
-/

namespace A164468.P6771067380898315083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 20] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A164468.P6771067380898315083

namespace A164468

/-- `floor(a(n-1)²/a(n-2))` -/
def P6771067380898315083.Spec : Prop :=
  ∀ n, P6771067380898315083.a n = A164468 (n + 4)

end A164468

/-! ## A164468.P7172993710629493863

`sqrt(A207069(n+5))-1`
-/

namespace A164468.P7172993710629493863
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207069 (n + 5) : ℝ) - 1

end

end A164468.P7172993710629493863

namespace A164468

/-- `sqrt(A207069(n+5))-1` -/
def P7172993710629493863.Spec : Prop :=
  ∀ n, P7172993710629493863.a n = (A164468 (n + 4) : ℝ)

end A164468

/-!
# A164469: Number of binary strings of length n with no substrings equal to 0001 0101 or 0110.

The programs for A164469, the canonical program `A164469.P5604902319045448620` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164469 has offset 4).

The definition of A164469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164469.P5604902319045448620

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)-a(n-6)` with `a(0)=13, a(1)=20, a(2)=32, a(3)=51, a(4)=81, a(5)=128`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164469

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)-a(n-6)` -/
def P5604902319045448620.Spec : Prop :=
  ∀ n, P5604902319045448620.a n = A164469 (n + 4)

theorem P5604902319045448620.correct : P5604902319045448620.Spec := by
  intro n
  simp only [A164469, Nat.add_sub_cancel]

end A164469

/-! ## A164469.P7804031781885431064

`A004273(A060961(n+6))-A060961(n+3)`
-/

namespace A164469.P7804031781885431064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A060961 (n + 6)).toNat - A060961 (n + 3)

end

end A164469.P7804031781885431064

namespace A164469

/-- `A004273(A060961(n+6))-A060961(n+3)` -/
def P7804031781885431064.Spec : Prop :=
  ∀ n, P7804031781885431064.a n = A164469 (n + 4)

end A164469

/-! ## A164469.P15367418628763886044

`A164478(n+4)+A129308(A000142(n))`
-/

namespace A164469.P15367418628763886044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164478 (n + 4) + A129308 (A000142 n).toNat

end

end A164469.P15367418628763886044

namespace A164469

/-- `A164478(n+4)+A129308(A000142(n))` -/
def P15367418628763886044.Spec : Prop :=
  ∀ n, P15367418628763886044.a n = A164469 (n + 4)

end A164469

/-!
# A164470: Number of binary strings of length n with no substrings equal to 0001 0101 or 0111.

The programs for A164470, there is no canonical definition to state claims against.
-/

/-! ## A164470.P11153248483167536715

`A339657(A239455(2*(n+1)))-A004250(n+2)`
-/

namespace A164470.P11153248483167536715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339657 (A239455 (2 * (n + 1))).toNat - A004250 (n + 2)

end

end A164470.P11153248483167536715

/-! ## A164470.P13567783947898293658

`A014963(A000312(n))+A000070(n+4)`
-/

namespace A164470.P13567783947898293658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000312 n).toNat + A000070 (n + 4)

end

end A164470.P13567783947898293658

/-!
# A164471: Number of binary strings of length n with no substrings equal to 0001 0101 or 1000.

The programs for A164471, the canonical program `A164471.P3513710247006841702` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164471 has offset 4).

The definition of A164471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 432 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164471.P3513710247006841702

`A164395(n+1)+A164395(n+3)+3`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164471

/-- `A164395(n+1)+A164395(n+3)+3` -/
def P3513710247006841702.Spec : Prop :=
  ∀ n, P3513710247006841702.a n = A164471 (n + 4)

theorem P3513710247006841702.correct : P3513710247006841702.Spec := by
  intro n
  simp only [A164471, Nat.add_sub_cancel]

end A164471

/-! ## A164471.P8201408876997854536

`A003476(n+3)+A003476(n+5)+1`
-/

namespace A164471.P8201408876997854536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 3) + (A003476 (n + 5) + 1)

end

end A164471.P8201408876997854536

namespace A164471

/-- `A003476(n+3)+A003476(n+5)+1` -/
def P8201408876997854536.Spec : Prop :=
  ∀ n, P8201408876997854536.a n = A164471 (n + 4)

end A164471

/-! ## A164471.P15845772240374296426

`(A303714(n+6)+2)/2`
-/

namespace A164471.P15845772240374296426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303714 (n + 6) + 2 : ℚ) / 2

end

end A164471.P15845772240374296426

namespace A164471

/-- `(A303714(n+6)+2)/2` -/
def P15845772240374296426.Spec : Prop :=
  ∀ n, P15845772240374296426.a n = (A164471 (n + 4) : ℚ)

end A164471

/-! ## A164471.P15155834396405682839

`Δ[Δ[A164399(n+5)]]+1`
-/

namespace A164471.P15155834396405682839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164399 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A164471.P15155834396405682839

namespace A164471

/-- `Δ[Δ[A164399(n+5)]]+1` -/
def P15155834396405682839.Spec : Prop :=
  ∀ n, P15155834396405682839.a n = A164471 (n + 4)

end A164471

/-! ## A164471.P5103054623545707670

`(A164399(n+8)-A164399(n+5))%A164399(n+6)`
-/

namespace A164471.P5103054623545707670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164399 (n + 8) - A164399 (n + 5)) (A164399 (n + 6))

end

end A164471.P5103054623545707670

namespace A164471

/-- `(A164399(n+8)-A164399(n+5))%A164399(n+6)` -/
def P5103054623545707670.Spec : Prop :=
  ∀ n, P5103054623545707670.a n = A164471 (n + 4)

end A164471

/-!
# A164472: Number of binary strings of length n with no substrings equal to 0001 0101 or 1010.

The programs for A164472, there is no canonical definition to state claims against.
-/

/-! ## A164472.P4522690123775306761

`A303837(A000051(n))+A298341(n+4)`
-/

namespace A164472.P4522690123775306761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303837 (A000051 n).toNat + A298341 (n + 4)

end

end A164472.P4522690123775306761

/-!
# A164473: Number of binary strings of length n with no substrings equal to 0001 0101 or 1011.

The programs for A164473, there is no canonical definition to state claims against.
-/

/-! ## A164473.P2039325581268652993

`A164436(n+4)+A001221(A000354(n))`
-/

namespace A164473.P2039325581268652993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164436 (n + 4) + A001221 (A000354 n).toNat

end

end A164473.P2039325581268652993

/-! ## A164473.P10920953340958632503

`A239139(A107066(n))+A000070(n+4)`
-/

namespace A164473.P10920953340958632503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239139 (A107066 n).toNat + A000070 (n + 4)

end

end A164473.P10920953340958632503

/-! ## A164473.P13825279518613535309

`A332104(A066838(n+1))+A164436(n+4)`
-/

namespace A164473.P13825279518613535309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332104 (A066838 (n + 1)).toNat + A164436 (n + 4)

end

end A164473.P13825279518613535309

/-!
# A164474: Number of binary strings of length n with no substrings equal to 0001 0101 or 1100.

The programs for A164474, the canonical program `A164474.P915032775425265953` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164474 has offset 4).

The definition of A164474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 512 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164474.P915032775425265953

`A164457(n+5)-(A286938(n+1)+A286938(n+2))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A164474

/-- `A164457(n+5)-(A286938(n+1)+A286938(n+2))` -/
def P915032775425265953.Spec : Prop :=
  ∀ n, P915032775425265953.a n = A164474 (n + 4)

theorem P915032775425265953.correct : P915032775425265953.Spec := by
  intro n
  simp only [A164474, Nat.add_sub_cancel]

end A164474

/-! ## A164474.P9958446715621303832

`A286938(n+5)-(A286938(n+1)+A286938(n+2))`
-/

namespace A164474.P9958446715621303832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 (n + 5) - (A286938 (n + 1) + A286938 (n + 2))

end

end A164474.P9958446715621303832

namespace A164474

/-- `A286938(n+5)-(A286938(n+1)+A286938(n+2))` -/
def P9958446715621303832.Spec : Prop :=
  ∀ n, P9958446715621303832.a n = A164474 (n + 4)

end A164474

/-! ## A164474.P5899370079475345882

`A331859(A057153(n+1)+A000967(n+5))`
-/

namespace A164474.P5899370079475345882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331859 (A057153 (n + 1) + A000967 (n + 5)).toNat

end

end A164474.P5899370079475345882

namespace A164474

/-- `A331859(A057153(n+1)+A000967(n+5))` -/
def P5899370079475345882.Spec : Prop :=
  ∀ n, P5899370079475345882.a n = A164474 (n + 4)

end A164474

/-! ## A164474.P11553578077908353361

`A248355(A353067(n+5)+A022552(n+1))`
-/

namespace A164474.P11553578077908353361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248355 (A353067 (n + 5) + A022552 (n + 1)).toNat

end

end A164474.P11553578077908353361

namespace A164474

/-- `A248355(A353067(n+5)+A022552(n+1))` -/
def P11553578077908353361.Spec : Prop :=
  ∀ n, P11553578077908353361.a n = A164474 (n + 4)

end A164474

/-!
# A164475: Number of binary strings of length n with no substrings equal to 0001 0101 or 1110.

The programs for A164475, there is no canonical definition to state claims against.
-/

/-! ## A164475.P4545714696308194519

`A073188(A128443(n+4)+A077847(n))`
-/

namespace A164475.P4545714696308194519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A128443 (n + 4) + A077847 n).toNat

end

end A164475.P4545714696308194519

/-! ## A164475.P14916249663334658092

`A002024(A159743(n+2))`
-/

namespace A164475.P14916249663334658092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A159743 (n + 2)).toNat

end

end A164475.P14916249663334658092

/-! ## A164475.P493678207477605904

`A194287(A304509(n+1)+1)`
-/

namespace A164475.P493678207477605904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194287 (A304509 (n + 1) + 1).toNat

end

end A164475.P493678207477605904

/-!
# A164476: Number of binary strings of length n with no substrings equal to 0001, 0110, or 0111.

The programs for A164476, the canonical program `A164476.P4927643170610596393` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164476 has offset 0).

The definition of A164476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 812 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164476.P4927643170610596393

`a(n-2)+a(n-3)+3+n` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164476

/-- `a(n-2)+a(n-3)+3+n` -/
def P4927643170610596393.Spec : Prop :=
  ∀ n, (P4927643170610596393.a n : ℤ) = A164476 n

theorem P4927643170610596393.correct : P4927643170610596393.Spec := by
  intro n
  simp only [A164476]

end A164476

/-! ## A164476.P2583578630671592180

`record[A084338(n+1)-A114637(n+1)]`
-/

namespace A164476.P2583578630671592180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (n + 1) - A114637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164476.P2583578630671592180

namespace A164476

/-- `record[A084338(n+1)-A114637(n+1)]` -/
def P2583578630671592180.Spec : Prop :=
  ∀ n, P2583578630671592180.a n = A164476 n

end A164476

/-! ## A164476.P1117261598180737373

`record[∑[A000931(n+1)]+A000931(n)-n]`
-/

namespace A164476.P1117261598180737373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (A000931 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164476.P1117261598180737373

namespace A164476

/-- `record[∑[A000931(n+1)]+A000931(n)-n]` -/
def P1117261598180737373.Spec : Prop :=
  ∀ n, P1117261598180737373.a n = A164476 n

end A164476

/-! ## A164476.P2320746352759488678

`record[A134816(n+1)+A182097(n)-(n+1)]`
-/

namespace A164476.P2320746352759488678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) + (A182097 n - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164476.P2320746352759488678

namespace A164476

/-- `record[A134816(n+1)+A182097(n)-(n+1)]` -/
def P2320746352759488678.Spec : Prop :=
  ∀ n, P2320746352759488678.a n = A164476 n

end A164476

/-! ## A164476.P9542855854084525765

`record[A084338(n+1)-A028242(A103517(n))]`
-/

namespace A164476.P9542855854084525765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (n + 1) - A028242 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164476.P9542855854084525765

namespace A164476

/-- `record[A084338(n+1)-A028242(A103517(n))]` -/
def P9542855854084525765.Spec : Prop :=
  ∀ n, P9542855854084525765.a n = A164476 n

end A164476

/-! ## A164476.P8267786811454049404

`record[A084338(A233583(n+1))+A001478(n+1)]`
-/

namespace A164476.P8267786811454049404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (A233583 (n + 1)).toNat + A001478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164476.P8267786811454049404

namespace A164476

/-- `record[A084338(A233583(n+1))+A001478(n+1)]` -/
def P8267786811454049404.Spec : Prop :=
  ∀ n, P8267786811454049404.a n = A164476 n

end A164476

/-!
# A164477: Number of binary strings of length n with no substrings equal to 0001 0110 or 1000.

The programs for A164477, the canonical program `A164477.P6655641974843971599` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164477 has offset 4).

The definition of A164477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 427 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164477.P6655641974843971599

`∑[A340215(n+4)]+8`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164477

/-- `∑[A340215(n+4)]+8` -/
def P6655641974843971599.Spec : Prop :=
  ∀ n, P6655641974843971599.a n = A164477 (n + 4)

theorem P6655641974843971599.correct : P6655641974843971599.Spec := by
  intro n
  simp only [A164477, Nat.add_sub_cancel]

end A164477

/-! ## A164477.P12296483905286382326

`A164421(n+4)+1-A340217(n+1)`
-/

namespace A164477.P12296483905286382326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164421 (n + 4) + (1 - A340217 (n + 1))

end

end A164477.P12296483905286382326

namespace A164477

/-- `A164421(n+4)+1-A340217(n+1)` -/
def P12296483905286382326.Spec : Prop :=
  ∀ n, P12296483905286382326.a n = A164477 (n + 4)

end A164477

/-! ## A164477.P16326770754828174738

`A340215(n+4)+A340217(n+4)+1`
-/

namespace A164477.P16326770754828174738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340215 (n + 4) + (A340217 (n + 4) + 1)

end

end A164477.P16326770754828174738

namespace A164477

/-- `A340215(n+4)+A340217(n+4)+1` -/
def P16326770754828174738.Spec : Prop :=
  ∀ n, P16326770754828174738.a n = A164477 (n + 4)

end A164477

/-! ## A164477.P6393106222454863219

`Δ[A020718(n+2)]+1`
-/

namespace A164477.P6393106222454863219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020718 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A164477.P6393106222454863219

namespace A164477

/-- `Δ[A020718(n+2)]+1` -/
def P6393106222454863219.Spec : Prop :=
  ∀ n, P6393106222454863219.a n = A164477 (n + 4)

end A164477

/-! ## A164477.P1892192484119100029

`A020718(n+3)+1-A020718(n+2)`
-/

namespace A164477.P1892192484119100029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020718 (n + 3) + (1 - A020718 (n + 2))

end

end A164477.P1892192484119100029

namespace A164477

/-- `A020718(n+3)+1-A020718(n+2)` -/
def P1892192484119100029.Spec : Prop :=
  ∀ n, P1892192484119100029.a n = A164477 (n + 4)

end A164477

/-!
# A164478: Number of binary strings of length n with no substrings equal to 0001 0110 or 1010.

The programs for A164478, there is no canonical definition to state claims against.
-/

/-! ## A164478.P15608056762850099895

`A225871(A102726(n+4))-n`
-/

namespace A164478.P15608056762850099895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225871 (A102726 (n + 4)).toNat - (n : ℤ)

end

end A164478.P15608056762850099895

/-! ## A164478.P16400817839729506497

`A164469(n+4)-A129308(A000142(n))`
-/

namespace A164478.P16400817839729506497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164469 (n + 4) - A129308 (A000142 n).toNat

end

end A164478.P16400817839729506497

/-! ## A164478.P11385210763187339804

`A001950(A225393(n+4)%A352229(2*n+3))`
-/

namespace A164478.P11385210763187339804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (Int.tmod (A225393 (n + 4)) (A352229 (2 * n + 3))).toNat

end

end A164478.P11385210763187339804

/-!
# A164479: Number of binary strings of length n with no substrings equal to 0001 0110 or 1011.

The programs for A164479, there is no canonical definition to state claims against.
-/

/-! ## A164479.P7992261058177106254

`A354535(A154154(n+3))-1`
-/

namespace A164479.P7992261058177106254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354535 (A154154 (n + 3)).toNat - 1

end

end A164479.P7992261058177106254

/-! ## A164479.P6891264765354848623

`A164469(n+4)+A000007(4^n)+n`
-/

namespace A164479.P6891264765354848623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164469 (n + 4) + (A000007 (4 ^ n) + (n : ℤ))

end

end A164479.P6891264765354848623

/-! ## A164479.P14357608443089207816

`A164469(n+4)^A273712(3*n+4)+n`
-/

namespace A164479.P14357608443089207816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164469 (n + 4) : ℚ) ^ (A273712 (3 * n + 4) : ℤ) + (n : ℚ)

end

end A164479.P14357608443089207816

/-!
# A164480: Number of binary strings of length n with no substrings equal to 0001, 0110 or 1100.

The programs for A164480, the canonical program `A164480.P1765826876704746153` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164480 has offset 0).

The definition of A164480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164480.P1765826876704746153

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=13, a(5)=21, a(6)=34, a(7)=55, a(8)=88`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164480

/-- `2*a(n-1)-a(n-3)` -/
def P1765826876704746153.Spec : Prop :=
  ∀ n, P1765826876704746153.a n = A164480 n

theorem P1765826876704746153.correct : P1765826876704746153.Spec := by
  intro n
  simp only [A164480]

end A164480

/-! ## A164480.P15535777222688763062

`A005041(A134438(n))+n`
-/

namespace A164480.P15535777222688763062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A134438 n).toNat + (n : ℤ)

end

end A164480.P15535777222688763062

namespace A164480

/-- `A005041(A134438(n))+n` -/
def P15535777222688763062.Spec : Prop :=
  ∀ n, P15535777222688763062.a n = A164480 n

end A164480

/-! ## A164480.P2563633915838018822

`A005041(A233320(∑[n+3]+n+3))+n`
-/

namespace A164480.P2563633915838018822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A233320 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))).toNat + (n : ℤ)

end

end A164480.P2563633915838018822

namespace A164480

/-- `A005041(A233320(∑[n+3]+n+3))+n` -/
def P2563633915838018822.Spec : Prop :=
  ∀ n, P2563633915838018822.a n = A164480 n

end A164480

/-! ## A164480.P15688967162988374913

`A225396(n+2)-A010054(A025527(n+1))`
-/

namespace A164480.P15688967162988374913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225396 (n + 2) - A010054 (A025527 (n + 1)).toNat

end

end A164480.P15688967162988374913

namespace A164480

/-- `A225396(n+2)-A010054(A025527(n+1))` -/
def P15688967162988374913.Spec : Prop :=
  ∀ n, P15688967162988374913.a n = A164480 n

end A164480

/-! ## A164480.P15320316528732586014

`A290689(n+4)-A051731(A032027(n+2))`
-/

namespace A164480.P15320316528732586014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290689 (n + 4) - A051731 (A032027 (n + 2)).toNat

end

end A164480.P15320316528732586014

namespace A164480

/-- `A290689(n+4)-A051731(A032027(n+2))` -/
def P15320316528732586014.Spec : Prop :=
  ∀ n, P15320316528732586014.a n = A164480 n

end A164480

/-!
# A164481: Number of binary strings of length n with no substrings equal to 0001 0110 or 1101.

The programs for A164481, the canonical program `A164481.P17060668803672350956` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164481 has offset 4).

The definition of A164481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164481.P17060668803672350956

`2*a(n-1)-a(n-3)-a(n-4)+2*a(n-5)-a(n-6)` with `a(0)=13, a(1)=21, a(2)=34, a(3)=53, a(4)=84, a(5)=131`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164481

/-- `2*a(n-1)-a(n-3)-a(n-4)+2*a(n-5)-a(n-6)` -/
def P17060668803672350956.Spec : Prop :=
  ∀ n, P17060668803672350956.a n = A164481 (n + 4)

theorem P17060668803672350956.correct : P17060668803672350956.Spec := by
  intro n
  simp only [A164481, Nat.add_sub_cancel]

end A164481

/-! ## A164481.P10576693586912989042

`A164433(n+4)-A080679(A000153(n))`
-/

namespace A164481.P10576693586912989042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164433 (n + 4) - A080679 (A000153 n).toNat

end

end A164481.P10576693586912989042

namespace A164481

/-- `A164433(n+4)-A080679(A000153(n))` -/
def P10576693586912989042.Spec : Prop :=
  ∀ n, P10576693586912989042.a n = A164481 (n + 4)

end A164481

/-! ## A164481.P13208360273643657647

`A164433(n+4)-A288223(A155442(n+6))`
-/

namespace A164481.P13208360273643657647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164433 (n + 4) - A288223 (A155442 (n + 6)).toNat

end

end A164481.P13208360273643657647

namespace A164481

/-- `A164433(n+4)-A288223(A155442(n+6))` -/
def P13208360273643657647.Spec : Prop :=
  ∀ n, P13208360273643657647.a n = A164481 (n + 4)

end A164481

/-!
# A164482: Number of binary strings of length n with no substrings equal to 0001, 0110, or 1110.

The programs for A164482, the canonical program `A164482.P15427782021321627337` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164482 has offset 0).

The definition of A164482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 813 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164482.P15427782021321627337

`∑[a(n-2)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=5, a(5)=7`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164482

/-- `∑[a(n-2)+a(n-3)]` -/
def P15427782021321627337.Spec : Prop :=
  ∀ n, (P15427782021321627337.a n : ℤ) = A164482 n

theorem P15427782021321627337.correct : P15427782021321627337.Spec := by
  intro n
  simp only [A164482]

end A164482

/-! ## A164482.P6802875843069346269

`∑[record[A182097(n)]]-A130130(n)`
-/

namespace A164482.P6802875843069346269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A130130 n

end

end A164482.P6802875843069346269

namespace A164482

/-- `∑[record[A182097(n)]]-A130130(n)` -/
def P6802875843069346269.Spec : Prop :=
  ∀ n, P6802875843069346269.a n = A164482 n

end A164482

/-! ## A164482.P12085665344428460727

`A289207(n)+∑[A023434(n+1)]`
-/

namespace A164482.P12085665344428460727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164482.P12085665344428460727

namespace A164482

/-- `A289207(n)+∑[A023434(n+1)]` -/
def P12085665344428460727.Spec : Prop :=
  ∀ n, P12085665344428460727.a n = A164482 n

end A164482

/-! ## A164482.P17803855264067369637

`∑[record[A000931(n)]-A171386(n+1)]`
-/

namespace A164482.P17803855264067369637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A171386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164482.P17803855264067369637

namespace A164482

/-- `∑[record[A000931(n)]-A171386(n+1)]` -/
def P17803855264067369637.Spec : Prop :=
  ∀ n, P17803855264067369637.a n = A164482 n

end A164482

/-! ## A164482.P11751703987783482866

`∑[record[A182097(n)]-A171386(n+1)]`
-/

namespace A164482.P11751703987783482866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A171386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164482.P11751703987783482866

namespace A164482

/-- `∑[record[A182097(n)]-A171386(n+1)]` -/
def P11751703987783482866.Spec : Prop :=
  ∀ n, P11751703987783482866.a n = A164482 n

end A164482

/-! ## A164482.P16805508484222777431

`∑[A164001(n+1)-A171386(n+1)]`
-/

namespace A164482.P16805508484222777431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 1) - A171386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164482.P16805508484222777431

namespace A164482

/-- `∑[A164001(n+1)-A171386(n+1)]` -/
def P16805508484222777431.Spec : Prop :=
  ∀ n, P16805508484222777431.a n = A164482 n

end A164482

/-! ## A164482.P966205824811165823

`∑[A134816(A016789(n)-A004278(n+1))]`
-/

namespace A164482.P966205824811165823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A016789 n - A004278 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164482.P966205824811165823

namespace A164482

/-- `∑[A134816(A016789(n)-A004278(n+1))]` -/
def P966205824811165823.Spec : Prop :=
  ∀ n, P966205824811165823.a n = A164482 n

end A164482

/-! ## A164482.P10667913038305172134

`∑[A164001(n+1)-A178333(A080098(n))]`
-/

namespace A164482.P10667913038305172134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 1) - A178333 (A080098 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164482.P10667913038305172134

namespace A164482

/-- `∑[A164001(n+1)-A178333(A080098(n))]` -/
def P10667913038305172134.Spec : Prop :=
  ∀ n, P10667913038305172134.a n = A164482 n

end A164482

/-! ## A164482.P6291536703784465040

`∑[A164001(n+1)-A209229(A206913(n))]`
-/

namespace A164482.P6291536703784465040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 1) - A209229 (A206913 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164482.P6291536703784465040

namespace A164482

/-- `∑[A164001(n+1)-A209229(A206913(n))]` -/
def P6291536703784465040.Spec : Prop :=
  ∀ n, P6291536703784465040.a n = A164482 n

end A164482

/-! ## A164482.P10623006931398997572

`A220885(n+3)-A023434(n+5)`
-/

namespace A164482.P10623006931398997572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220885 (n + 3) - A023434 (n + 5)

end

end A164482.P10623006931398997572

namespace A164482

/-- `A220885(n+3)-A023434(n+5)` -/
def P10623006931398997572.Spec : Prop :=
  ∀ n, P10623006931398997572.a n = A164482 n

end A164482

/-!
# A164483: Number of binary strings of length n with no substrings equal to 0001 0111 or 1010.

The programs for A164483, the canonical program `A164483.P4916964034134601224` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164483 has offset 4).

The definition of A164483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164483.P4916964034134601224

`2*a(n-1)-a(n-2)+2*a(n-3)-3*a(n-4)+a(n-6)` with `a(0)=13, a(1)=20, a(2)=30, a(3)=44, a(4)=64, a(5)=92`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164483

/-- `2*a(n-1)-a(n-2)+2*a(n-3)-3*a(n-4)+a(n-6)` -/
def P4916964034134601224.Spec : Prop :=
  ∀ n, P4916964034134601224.a n = A164483 (n + 4)

theorem P4916964034134601224.correct : P4916964034134601224.Spec := by
  intro n
  simp only [A164483, Nat.add_sub_cancel]

end A164483

/-! ## A164483.P16854212224987004386

`A321578(A211460(n+2))`
-/

namespace A164483.P16854212224987004386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321578 (A211460 (n + 2)).toNat

end

end A164483.P16854212224987004386

namespace A164483

/-- `A321578(A211460(n+2))` -/
def P16854212224987004386.Spec : Prop :=
  ∀ n, P16854212224987004386.a n = A164483 (n + 4)

end A164483

/-! ## A164483.P17975389606971482077

`A003056(96*2^n)+∑[n]`
-/

namespace A164483.P17975389606971482077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (96 * 2 ^ n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A164483.P17975389606971482077

namespace A164483

/-- `A003056(96*2^n)+∑[n]` -/
def P17975389606971482077.Spec : Prop :=
  ∀ n, P17975389606971482077.a n = A164483 (n + 4)

end A164483

/-!
# A164484: Number of binary strings of length n with no substrings equal to 0001 0111 or 1100.

The programs for A164484, there is no canonical definition to state claims against.
-/

/-! ## A164484.P11220943544939515583

`A164505(n+4)+A025469(A006131(n))`
-/

namespace A164484.P11220943544939515583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164505 (n + 4) + A025469 (A006131 n).toNat

end

end A164484.P11220943544939515583

/-! ## A164484.P10895552604415637964

`A185284(A014374(n))+A164505(n+4)`
-/

namespace A164484.P10895552604415637964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A014374 n).toNat + A164505 (n + 4)

end

end A164484.P10895552604415637964

/-! ## A164484.P17013446028486455705

`A235145(A000105(n))+A164505(n+4)`
-/

namespace A164484.P17013446028486455705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A000105 n).toNat + A164505 (n + 4)

end

end A164484.P17013446028486455705

/-! ## A164484.P15915106425538367849

`A185284(A002229(n+1))+A164505(n+4)`
-/

namespace A164484.P15915106425538367849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A002229 (n + 1)).toNat + A164505 (n + 4)

end

end A164484.P15915106425538367849

/-! ## A164484.P16224363330472429244

`A185284(A072284(n+1))+A164505(n+4)`
-/

namespace A164484.P16224363330472429244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A072284 (n + 1)).toNat + A164505 (n + 4)

end

end A164484.P16224363330472429244

/-!
# A164485: Number of binary strings of length n with no substrings equal to 0001, 1000 or 1001.

The programs for A164485, the canonical program `A164485.P12227170851971904139` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164485 has offset 4).

The definition of A164485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164485.P12227170851971904139

`2*a(n-1)-a(n-3)` with `a(0)=13, a(1)=21, a(2)=33`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164485

/-- `2*a(n-1)-a(n-3)` -/
def P12227170851971904139.Spec : Prop :=
  ∀ n, P12227170851971904139.a n = A164485 (n + 4)

theorem P12227170851971904139.correct : P12227170851971904139.Spec := by
  intro n
  simp only [A164485, Nat.add_sub_cancel]

end A164485

/-! ## A164485.P18429230887377993890

`floor(ϕ*a(n-1))` with `a(0)=13`
-/

namespace A164485.P18429230887377993890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋

end

end A164485.P18429230887377993890

namespace A164485

/-- `floor(ϕ*a(n-1))` -/
def P18429230887377993890.Spec : Prop :=
  ∀ n, P18429230887377993890.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P14160573976826096808

`a(n-1)+a(n-2)-1` with `a(0)=13, a(1)=21`
-/

namespace A164485.P14160573976826096808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 21] fun n a =>
  a (n - 1) + (a (n - 2) - 1)

end

end A164485.P14160573976826096808

namespace A164485

/-- `a(n-1)+a(n-2)-1` -/
def P14160573976826096808.Spec : Prop :=
  ∀ n, P14160573976826096808.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P5851479082844758048

`a(n-1)-(1-a(n-2))` with `a(0)=13, a(1)=21`
-/

namespace A164485.P5851479082844758048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 21] fun n a =>
  a (n - 1) - (1 - a (n - 2))

end

end A164485.P5851479082844758048

namespace A164485

/-- `a(n-1)-(1-a(n-2))` -/
def P5851479082844758048.Spec : Prop :=
  ∀ n, P5851479082844758048.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P6065179619430419181

`A022406(n+2)+2`
-/

namespace A164485.P6065179619430419181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022406 (n + 2) + 2

end

end A164485.P6065179619430419181

namespace A164485

/-- `A022406(n+2)+2` -/
def P6065179619430419181.Spec : Prop :=
  ∀ n, P6065179619430419181.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P2984890931307802026

`A022403(n+3)+2`
-/

namespace A164485.P2984890931307802026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022403 (n + 3) + 2

end

end A164485.P2984890931307802026

namespace A164485

/-- `A022403(n+3)+2` -/
def P2984890931307802026.Spec : Prop :=
  ∀ n, P2984890931307802026.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P6774700352333778206

`A355288(n+3)+2`
-/

namespace A164485.P6774700352333778206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355288 (n + 3) + 2

end

end A164485.P6774700352333778206

namespace A164485

/-- `A355288(n+3)+2` -/
def P6774700352333778206.Spec : Prop :=
  ∀ n, P6774700352333778206.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P4897355229457665847

`A192746(n+2)+4`
-/

namespace A164485.P4897355229457665847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192746 (n + 2) + 4

end

end A164485.P4897355229457665847

namespace A164485

/-- `A192746(n+2)+4` -/
def P4897355229457665847.Spec : Prop :=
  ∀ n, P4897355229457665847.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P10071061426289259709

`A204644(n+1)+5`
-/

namespace A164485.P10071061426289259709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204644 (n + 1) + 5

end

end A164485.P10071061426289259709

namespace A164485

/-- `A204644(n+1)+5` -/
def P10071061426289259709.Spec : Prop :=
  ∀ n, P10071061426289259709.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P12528405359884584787

`4*A020701(n)+1`
-/

namespace A164485.P12528405359884584787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020701 n + 1

end

end A164485.P12528405359884584787

namespace A164485

/-- `4*A020701(n)+1` -/
def P12528405359884584787.Spec : Prop :=
  ∀ n, P12528405359884584787.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P11018235730526078780

`4*A020706(n)-3`
-/

namespace A164485.P11018235730526078780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020706 n - 3

end

end A164485.P11018235730526078780

namespace A164485

/-- `4*A020706(n)-3` -/
def P11018235730526078780.Spec : Prop :=
  ∀ n, P11018235730526078780.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P12612758085213670983

`A211253(n+1)-8`
-/

namespace A164485.P12612758085213670983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211253 (n + 1) - 8

end

end A164485.P12612758085213670983

namespace A164485

/-- `A211253(n+1)-8` -/
def P12612758085213670983.Spec : Prop :=
  ∀ n, P12612758085213670983.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P6713647471534702361

`2*A090991(n+1)+1`
-/

namespace A164485.P6713647471534702361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090991 (n + 1) + 1

end

end A164485.P6713647471534702361

namespace A164485

/-- `2*A090991(n+1)+1` -/
def P6713647471534702361.Spec : Prop :=
  ∀ n, P6713647471534702361.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P6657863193206618763

`2*A054886(n+2)+1`
-/

namespace A164485.P6657863193206618763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054886 (n + 2) + 1

end

end A164485.P6657863193206618763

namespace A164485

/-- `2*A054886(n+2)+1` -/
def P6657863193206618763.Spec : Prop :=
  ∀ n, P6657863193206618763.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P10091503700264510108

`2*A078642(n+2)+1`
-/

namespace A164485.P10091503700264510108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078642 (n + 2) + 1

end

end A164485.P10091503700264510108

namespace A164485

/-- `2*A078642(n+2)+1` -/
def P10091503700264510108.Spec : Prop :=
  ∀ n, P10091503700264510108.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P7145873016689889462

`4*A020695(n+1)+1`
-/

namespace A164485.P7145873016689889462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020695 (n + 1) + 1

end

end A164485.P7145873016689889462

namespace A164485

/-- `4*A020695(n+1)+1` -/
def P7145873016689889462.Spec : Prop :=
  ∀ n, P7145873016689889462.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P10161907385090291259

`2*A068922(n+3)+1`
-/

namespace A164485.P10161907385090291259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068922 (n + 3) + 1

end

end A164485.P10161907385090291259

namespace A164485

/-- `2*A068922(n+3)+1` -/
def P10161907385090291259.Spec : Prop :=
  ∀ n, P10161907385090291259.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P8863460033639887088

`2*A001595(n+3)+3`
-/

namespace A164485.P8863460033639887088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001595 (n + 3) + 3

end

end A164485.P8863460033639887088

namespace A164485

/-- `2*A001595(n+3)+3` -/
def P8863460033639887088.Spec : Prop :=
  ∀ n, P8863460033639887088.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P16455332117242476141

`A122195(4*n+2)+2`
-/

namespace A164485.P16455332117242476141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122195 (4 * n + 2) + 2

end

end A164485.P16455332117242476141

namespace A164485

/-- `A122195(4*n+2)+2` -/
def P16455332117242476141.Spec : Prop :=
  ∀ n, P16455332117242476141.a n = A164485 (n + 4)

end A164485

/-! ## A164485.P8789367861723733914

`4*A000045(n+4)+1`
-/

namespace A164485.P8789367861723733914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (n + 4) + 1

end

end A164485.P8789367861723733914

namespace A164485

/-- `4*A000045(n+4)+1` -/
def P8789367861723733914.Spec : Prop :=
  ∀ n, P8789367861723733914.a n = A164485 (n + 4)

end A164485

/-!
# A164487: Number of binary strings of length n with no substrings equal to 0001, 1010, or 1100.

The programs for A164487, the canonical program `A164487.P18355013799103951156` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164487 has offset 0).

The definition of A164487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164487.P1988641284224178135

`A289207(n)+∑[A068921(n)]`
-/

namespace A164487.P1988641284224178135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164487.P1988641284224178135

namespace A164487

/-- `A289207(n)+∑[A068921(n)]` -/
def P1988641284224178135.Spec : Prop :=
  ∀ n, P1988641284224178135.a n = A164487 n

end A164487

/-! ## A164487.P18355013799103951156

`∑[A079981(C(2, n))+A068921(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A164487

/-- `∑[A079981(C(2, n))+A068921(n)]` -/
def P18355013799103951156.Spec : Prop :=
  ∀ n, P18355013799103951156.a n = A164487 n

theorem P18355013799103951156.correct : P18355013799103951156.Spec := by
  intro n
  simp only [A164487]

end A164487

/-! ## A164487.P9081083666452404207

`A004280(n+1)+∑[A068921(n)-1]`
-/

namespace A164487.P9081083666452404207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164487.P9081083666452404207

namespace A164487

/-- `A004280(n+1)+∑[A068921(n)-1]` -/
def P9081083666452404207.Spec : Prop :=
  ∀ n, P9081083666452404207.a n = A164487 n

end A164487

/-! ## A164487.P6011611683045757513

`A233583(n+1)+∑[A068921(n)]-2`
-/

namespace A164487.P6011611683045757513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A164487.P6011611683045757513

namespace A164487

/-- `A233583(n+1)+∑[A068921(n)]-2` -/
def P6011611683045757513.Spec : Prop :=
  ∀ n, P6011611683045757513.a n = A164487 n

end A164487

/-! ## A164487.P1727034574543968205

`∑[A254011(C(2, n))+A000930(n+1)]`
-/

namespace A164487.P1727034574543968205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (Nat.choose 2 n) + A000930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164487.P1727034574543968205

namespace A164487

/-- `∑[A254011(C(2, n))+A000930(n+1)]` -/
def P1727034574543968205.Spec : Prop :=
  ∀ n, P1727034574543968205.a n = A164487 n

end A164487

/-! ## A164487.P4450559489173103657

`∑[A068921(n)+A057427(A002264(n))]`
-/

namespace A164487.P4450559489173103657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n + A057427 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164487.P4450559489173103657

namespace A164487

/-- `∑[A068921(n)+A057427(A002264(n))]` -/
def P4450559489173103657.Spec : Prop :=
  ∀ n, P4450559489173103657.a n = A164487 n

end A164487

/-! ## A164487.P1004124146343118992

`∑[A324872(A000196(n+1))+A068921(n)]`
-/

namespace A164487.P1004124146343118992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324872 (A000196 (n + 1)).toNat + A068921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164487.P1004124146343118992

namespace A164487

/-- `∑[A324872(A000196(n+1))+A068921(n)]` -/
def P1004124146343118992.Spec : Prop :=
  ∀ n, P1004124146343118992.a n = A164487 n

end A164487

/-!
# A164488: Number of binary strings of length n with no substrings equal to 0001 1010 or 1101.

The programs for A164488, there is no canonical definition to state claims against.
-/

/-! ## A164488.P4376827157816179092

`A001462(A110286(n+2)-A018935(3*n+5))`
-/

namespace A164488.P4376827157816179092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A110286 (n + 2) - A018935 (3 * n + 5)).toNat

end

end A164488.P4376827157816179092

/-! ## A164488.P1583300116125101813

`A000267(A211582(n+2))`
-/

namespace A164488.P1583300116125101813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A211582 (n + 2)).toNat

end

end A164488.P1583300116125101813

/-! ## A164488.P10250122295930803977

`A055086(A200880(n+2))-char[6]`
-/

namespace A164488.P10250122295930803977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A200880 (n + 2)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A164488.P10250122295930803977

/-!
# A164489: Number of binary strings of length n with no substrings equal to 0001 1011 or 1100.

The programs for A164489, the canonical program `A164489.P7627719625061381392` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164489 has offset 4).

The definition of A164489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 560 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164489.P7627719625061381392

`A109537(n+10)+∑[A109537(n+3)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164489

/-- `A109537(n+10)+∑[A109537(n+3)]` -/
def P7627719625061381392.Spec : Prop :=
  ∀ n, P7627719625061381392.a n = A164489 (n + 4)

theorem P7627719625061381392.correct : P7627719625061381392.Spec := by
  intro n
  simp only [A164489, Nat.add_sub_cancel]

end A164489

/-! ## A164489.P16195931649879152373

`A073188(A250577(n+1))+3`
-/

namespace A164489.P16195931649879152373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A250577 (n + 1)).toNat + 3

end

end A164489.P16195931649879152373

namespace A164489

/-- `A073188(A250577(n+1))+3` -/
def P16195931649879152373.Spec : Prop :=
  ∀ n, P16195931649879152373.a n = A164489 (n + 4)

end A164489

/-! ## A164489.P564425542143198738

`A120141(n+1)-A124756(A011782(n))`
-/

namespace A164489.P564425542143198738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120141 (n + 1) - A124756 (A011782 n).toNat

end

end A164489.P564425542143198738

namespace A164489

/-- `A120141(n+1)-A124756(A011782(n))` -/
def P564425542143198738.Spec : Prop :=
  ∀ n, P564425542143198738.a n = A164489 (n + 4)

end A164489

/-!
# A164490: Number of binary strings of length n with no substrings equal to 0010 0011 or 0110.

The programs for A164490, the canonical program `A164490.P14874193741949125750` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164490 has offset 4).

The definition of A164490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 550 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164490.P14874193741949125750

`A130137(n+6)-(A130137(n)+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164490

/-- `A130137(n+6)-(A130137(n)+2)` -/
def P14874193741949125750.Spec : Prop :=
  ∀ n, P14874193741949125750.a n = A164490 (n + 4)

theorem P14874193741949125750.correct : P14874193741949125750.Spec := by
  intro n
  simp only [A164490, Nat.add_sub_cancel]

end A164490

/-! ## A164490.P8232974180733103967

`A198292(A291557(n)+A008619(n))`
-/

namespace A164490.P8232974180733103967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198292 (A291557 n + A008619 n).toNat

end

end A164490.P8232974180733103967

namespace A164490

/-- `A198292(A291557(n)+A008619(n))` -/
def P8232974180733103967.Spec : Prop :=
  ∀ n, P8232974180733103967.a n = A164490 (n + 4)

end A164490

/-! ## A164490.P11899710618472502196

`A198292(A291557(n)+A053644(n))`
-/

namespace A164490.P11899710618472502196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198292 (A291557 n + A053644 n).toNat

end

end A164490.P11899710618472502196

namespace A164490

/-- `A198292(A291557(n)+A053644(n))` -/
def P11899710618472502196.Spec : Prop :=
  ∀ n, P11899710618472502196.a n = A164490 (n + 4)

end A164490

/-!
# A164491: Number of binary strings of length n with no substrings equal to 0010 0100 or 1001.

The programs for A164491, the canonical program `A164491.P14143353542599236624` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164491 has offset 4).

The definition of A164491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164491.P14143353542599236624

`Δ[A079960(n+2)+A079960(n+6)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164491

/-- `Δ[A079960(n+2)+A079960(n+6)]` -/
def P14143353542599236624.Spec : Prop :=
  ∀ n, P14143353542599236624.a n = A164491 (n + 4)

theorem P14143353542599236624.correct : P14143353542599236624.Spec := by
  intro n
  simp only [A164491, Nat.add_sub_cancel]

end A164491

/-! ## A164491.P17887273345765581850

`A233583(Δ[A301789(n+1)])-A070106(A307788(n))`
-/

namespace A164491.P17887273345765581850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (f1 (n + 1) - f1 n).toNat - A070106 (A307788 n).toNat

end

end A164491.P17887273345765581850

namespace A164491

/-- `A233583(Δ[A301789(n+1)])-A070106(A307788(n))` -/
def P17887273345765581850.Spec : Prop :=
  ∀ n, P17887273345765581850.a n = A164491 (n + 4)

end A164491

/-! ## A164491.P12867637220204120667

`A233583(Δ[A301789(n+1)])-A113858(A342762(n))`
-/

namespace A164491.P12867637220204120667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (f1 (n + 1) - f1 n).toNat - A113858 (A342762 n).toNat

end

end A164491.P12867637220204120667

namespace A164491

/-- `A233583(Δ[A301789(n+1)])-A113858(A342762(n))` -/
def P12867637220204120667.Spec : Prop :=
  ∀ n, P12867637220204120667.a n = A164491 (n + 4)

end A164491

/-!
# A164492: Number of binary strings of length n with no substrings equal to 0010 0101 or 0110.

The programs for A164492, there is no canonical definition to state claims against.
-/

/-! ## A164492.P638142814714704840

`A164432(n+4)+A001221(A192936(n))-(A004273(n)-n)`
-/

namespace A164492.P638142814714704840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164432 (n + 4) + A001221 (A192936 n).toNat - (A004273 n - (n : ℤ))

end

end A164492.P638142814714704840

/-! ## A164492.P14142916028632774842

`A164459(n+4)-A107846(A000142(n))-(A004273(n)-n)`
-/

namespace A164492.P14142916028632774842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164459 (n + 4) - A107846 (A000142 n).toNat - (A004273 n - (n : ℤ))

end

end A164492.P14142916028632774842

/-!
# A164493: Number of binary strings of length n with no substrings equal to 0010 0101 or 1001.

The programs for A164493, there is no canonical definition to state claims against.
-/

/-! ## A164493.P18010120655966778551

`A164421(n+4)+A160380(A195259(n))`
-/

namespace A164493.P18010120655966778551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164421 (n + 4) + A160380 (A195259 n).toNat

end

end A164493.P18010120655966778551

/-! ## A164493.P15861109451788420637

`A326033(A164395(n))+A164421(n+4)`
-/

namespace A164493.P15861109451788420637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326033 (A164395 n).toNat + A164421 (n + 4)

end

end A164493.P15861109451788420637

/-!
# A164494: Number of binary strings of length n with no substrings equal to 0010 0101 or 1010.

The programs for A164494, the canonical program `A164494.P7691253228734499853` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164494 has offset 4).

The definition of A164494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164494.P7691253228734499853

`A137495(n+4)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A164494

/-- `A137495(n+4)` -/
def P7691253228734499853.Spec : Prop :=
  ∀ n, P7691253228734499853.a n = A164494 (n + 4)

theorem P7691253228734499853.correct : P7691253228734499853.Spec := by
  intro n
  simp only [A164494, Nat.add_sub_cancel]

end A164494

/-! ## A164494.P18008634522836662009

`A007307(2*(n+5))`
-/

namespace A164494.P18008634522836662009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (2 * (n + 5))

end

end A164494.P18008634522836662009

namespace A164494

/-- `A007307(2*(n+5))` -/
def P18008634522836662009.Spec : Prop :=
  ∀ n, P18008634522836662009.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P14136457923034853487

`A020713(n+1)+A010901(n)`
-/

namespace A164494.P14136457923034853487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020713 (n + 1) + A010901 n

end

end A164494.P14136457923034853487

namespace A164494

/-- `A020713(n+1)+A010901(n)` -/
def P14136457923034853487.Spec : Prop :=
  ∀ n, P14136457923034853487.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P692732717917553684

`A164409(n+4)+A005251(n)`
-/

namespace A164494.P692732717917553684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164409 (n + 4) + A005251 n

end

end A164494.P692732717917553684

namespace A164494

/-- `A164409(n+4)+A005251(n)` -/
def P692732717917553684.Spec : Prop :=
  ∀ n, P692732717917553684.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P3663260606940628819

`A164392(n+4)-A164392(n)`
-/

namespace A164494.P3663260606940628819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164392 (n + 4) - A164392 n

end

end A164494.P3663260606940628819

namespace A164494

/-- `A164392(n+4)-A164392(n)` -/
def P3663260606940628819.Spec : Prop :=
  ∀ n, P3663260606940628819.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P11653315241708725264

`A020713(n+1)+Δ[A020713(n)]`
-/

namespace A164494.P11653315241708725264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020713 (n + 1) + (f1 (n + 1) - f1 n)

end

end A164494.P11653315241708725264

namespace A164494

/-- `A020713(n+1)+Δ[A020713(n)]` -/
def P11653315241708725264.Spec : Prop :=
  ∀ n, P11653315241708725264.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P12040686550255662216

`A010901(n+2)+A005314(n+1)`
-/

namespace A164494.P12040686550255662216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010901 (n + 2) + A005314 (n + 1)

end

end A164494.P12040686550255662216

namespace A164494

/-- `A010901(n+2)+A005314(n+1)` -/
def P12040686550255662216.Spec : Prop :=
  ∀ n, P12040686550255662216.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P11562412033130215427

`A048587(n+2)-A018908(n+1)`
-/

namespace A164494.P11562412033130215427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048587 (n + 2) - A018908 (n + 1)

end

end A164494.P11562412033130215427

namespace A164494

/-- `A048587(n+2)-A018908(n+1)` -/
def P11562412033130215427.Spec : Prop :=
  ∀ n, P11562412033130215427.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P10393279199319039938

`A020736(n)+A020716(2*n+1)`
-/

namespace A164494.P10393279199319039938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020736 n + A020716 (2 * n + 1)

end

end A164494.P10393279199319039938

namespace A164494

/-- `A020736(n)+A020716(2*n+1)` -/
def P10393279199319039938.Spec : Prop :=
  ∀ n, P10393279199319039938.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P8665831665053600231

`A020713(n+2)-A005314(n+3)`
-/

namespace A164494.P8665831665053600231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020713 (n + 2) - A005314 (n + 3)

end

end A164494.P8665831665053600231

namespace A164494

/-- `A020713(n+2)-A005314(n+3)` -/
def P8665831665053600231.Spec : Prop :=
  ∀ n, P8665831665053600231.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P5948252625484700711

`A020713(n+1)+A077855(n+1)+1`
-/

namespace A164494.P5948252625484700711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020713 (n + 1) + (A077855 (n + 1) + 1)

end

end A164494.P5948252625484700711

namespace A164494

/-- `A020713(n+1)+A077855(n+1)+1` -/
def P5948252625484700711.Spec : Prop :=
  ∀ n, P5948252625484700711.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P3240355572637427797

`A077855(n+3)+A052954(2*n+3)`
-/

namespace A164494.P3240355572637427797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077855 (n + 3) + A052954 (2 * n + 3)

end

end A164494.P3240355572637427797

namespace A164494

/-- `A077855(n+3)+A052954(2*n+3)` -/
def P3240355572637427797.Spec : Prop :=
  ∀ n, P3240355572637427797.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P8769495729701665738

`A164409(n+4)+abs(A124745(2*n+3))`
-/

namespace A164494.P8769495729701665738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164409 (n + 4) + |A124745 (2 * n + 3)|

end

end A164494.P8769495729701665738

namespace A164494

/-- `A164409(n+4)+abs(A124745(2*n+3))` -/
def P8769495729701665738.Spec : Prop :=
  ∀ n, P8769495729701665738.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P16827572691250413774

`A134816(2*(n+1))+A020720(2*(n+1))`
-/

namespace A164494.P16827572691250413774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * (n + 1)) + A020720 (2 * (n + 1))

end

end A164494.P16827572691250413774

namespace A164494

/-- `A134816(2*(n+1))+A020720(2*(n+1))` -/
def P16827572691250413774.Spec : Prop :=
  ∀ n, P16827572691250413774.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P13719727897250289706

`A164409(n+4)+A078027(2*(n+1)+1)`
-/

namespace A164494.P13719727897250289706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164409 (n + 4) + A078027 (2 * (n + 1) + 1)

end

end A164494.P13719727897250289706

namespace A164494

/-- `A164409(n+4)+A078027(2*(n+1)+1)` -/
def P13719727897250289706.Spec : Prop :=
  ∀ n, P13719727897250289706.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P14855423364771911328

`A164001(2*(n+2))+A020720(2*n+1)`
-/

namespace A164494.P14855423364771911328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (2 * (n + 2)) + A020720 (2 * n + 1)

end

end A164494.P14855423364771911328

namespace A164494

/-- `A164001(2*(n+2))+A020720(2*n+1)` -/
def P14855423364771911328.Spec : Prop :=
  ∀ n, P14855423364771911328.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P4566527871304389654

`A182097(2*n+3)+A020720(2*(n+1))`
-/

namespace A164494.P4566527871304389654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * n + 3) + A020720 (2 * (n + 1))

end

end A164494.P4566527871304389654

namespace A164494

/-- `A182097(2*n+3)+A020720(2*(n+1))` -/
def P4566527871304389654.Spec : Prop :=
  ∀ n, P4566527871304389654.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P15483141142142588996

`A020716(2*n+3)-A023434(2*n+3)`
-/

namespace A164494.P15483141142142588996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020716 (2 * n + 3) - A023434 (2 * n + 3)

end

end A164494.P15483141142142588996

namespace A164494

/-- `A020716(2*n+3)-A023434(2*n+3)` -/
def P15483141142142588996.Spec : Prop :=
  ∀ n, P15483141142142588996.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P4753115380580086309

`A020720(2*n+1)+Δ[Δ[A020716(2*n)]]`
-/

namespace A164494.P4753115380580086309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020716 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020720 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A164494.P4753115380580086309

namespace A164494

/-- `A020720(2*n+1)+Δ[Δ[A020716(2*n)]]` -/
def P4753115380580086309.Spec : Prop :=
  ∀ n, P4753115380580086309.a n = A164494 (n + 4)

end A164494

/-! ## A164494.P16273297463885435736

`A020720(2*n+1)+Δ[Δ[A020720(2*n)]]`
-/

namespace A164494.P16273297463885435736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020720 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020720 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A164494.P16273297463885435736

namespace A164494

/-- `A020720(2*n+1)+Δ[Δ[A020720(2*n)]]` -/
def P16273297463885435736.Spec : Prop :=
  ∀ n, P16273297463885435736.a n = A164494 (n + 4)

end A164494

/-!
# A164495: Number of binary strings of length n with no substrings equal to 0010 0101 or 1011.

The programs for A164495, the canonical program `A164495.P15928502323414917915` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164495 has offset 4).

The definition of A164495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164495.P15928502323414917915

`2*a(n-1)-a(n-2)+a(n-4)+a(n-6)` with `a(0)=13, a(1)=22, a(2)=37, a(3)=62, a(4)=105, a(5)=178`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A164495

/-- `2*a(n-1)-a(n-2)+a(n-4)+a(n-6)` -/
def P15928502323414917915.Spec : Prop :=
  ∀ n, P15928502323414917915.a n = A164495 (n + 4)

theorem P15928502323414917915.correct : P15928502323414917915.Spec := by
  intro n
  simp only [A164495, Nat.add_sub_cancel]

end A164495

/-! ## A164495.P15488565056925356505

`A247911(3*a(n-1))-(n+1)` with `a(0)=13`
-/

namespace A164495.P15488565056925356505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A247911 (3 * a (n - 1)).toNat - (n + 1 : ℤ)

end

end A164495.P15488565056925356505

namespace A164495

/-- `A247911(3*a(n-1))-(n+1)` -/
def P15488565056925356505.Spec : Prop :=
  ∀ n, P15488565056925356505.a n = A164495 (n + 4)

end A164495

/-! ## A164495.P1285289256008334023

`A164423(n+4)+lt[A082513(n+1), 1]`
-/

namespace A164495.P1285289256008334023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164423 (n + 4) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A164495.P1285289256008334023

namespace A164495

/-- `A164423(n+4)+lt[A082513(n+1), 1]` -/
def P1285289256008334023.Spec : Prop :=
  ∀ n, P1285289256008334023.a n = A164495 (n + 4)

end A164495

/-! ## A164495.P17033179997356209764

`A164501(n+4)+A151755(A164509(n))`
-/

namespace A164495.P17033179997356209764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164501 (n + 4) + A151755 (A164509 n).toNat

end

end A164495.P17033179997356209764

namespace A164495

/-- `A164501(n+4)+A151755(A164509(n))` -/
def P17033179997356209764.Spec : Prop :=
  ∀ n, P17033179997356209764.a n = A164495 (n + 4)

end A164495

/-!
# A164496: Number of binary strings of length n with no substrings equal to 0010 0110 or 1001.

The programs for A164496, there is no canonical definition to state claims against.
-/

/-! ## A164496.P13811187119566116372

`A164432(n+4)+A001221(A192936(n))`
-/

namespace A164496.P13811187119566116372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164432 (n + 4) + A001221 (A192936 n).toNat

end

end A164496.P13811187119566116372

/-! ## A164496.P3822060475831482541

`A164459(n+4)-A107846(A000142(n))`
-/

namespace A164496.P3822060475831482541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164459 (n + 4) - A107846 (A000142 n).toNat

end

end A164496.P3822060475831482541

/-! ## A164496.P6119724465438917307

`A164459(n+4)-A107846(A177480(n))`
-/

namespace A164496.P6119724465438917307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164459 (n + 4) - A107846 (A177480 n).toNat

end

end A164496.P6119724465438917307

/-! ## A164496.P3072269669441241048

`A164459(n+4)+A121373(A165097(n+1))`
-/

namespace A164496.P3072269669441241048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164459 (n + 4) + A121373 (A165097 (n + 1)).toNat

end

end A164496.P3072269669441241048

/-!
# A164497: Number of binary strings of length n with no substrings equal to 0010 0110 or 1011.

The programs for A164497, there is no canonical definition to state claims against.
-/

/-! ## A164497.P13966103250479046938

`A205698(A347311(n+1))+2`
-/

namespace A164497.P13966103250479046938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205698 (A347311 (n + 1)).toNat + 2

end

end A164497.P13966103250479046938

/-! ## A164497.P514586518945998733

`A071625(A086618(n))+A022096(n+3)`
-/

namespace A164497.P514586518945998733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A086618 n).toNat + A022096 (n + 3)

end

end A164497.P514586518945998733

/-! ## A164497.P18074535019807556288

`A020706(n+3)-A353378(A074014(n+1))`
-/

namespace A164497.P18074535019807556288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 (n + 3) - A353378 (A074014 (n + 1)).toNat

end

end A164497.P18074535019807556288

/-!
# A164498: Number of binary strings of length n with no substrings equal to 0010 0110 or 1100.

The programs for A164498, there is no canonical definition to state claims against.
-/

/-! ## A164498.P2999839409394233511

`A205684(A027961(2*(n+2)))-1`
-/

namespace A164498.P2999839409394233511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205684 (A027961 (2 * (n + 2))).toNat - 1

end

end A164498.P2999839409394233511

/-! ## A164498.P5928667817754168928

`A205867(A124704(n+1))+A000217(n)`
-/

namespace A164498.P5928667817754168928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205867 (A124704 (n + 1)).toNat + A000217 n

end

end A164498.P5928667817754168928

/-! ## A164498.P15332045228725183962

`A184402(A048584(n))+A171826(n+1)`
-/

namespace A164498.P15332045228725183962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184402 (A048584 n).toNat + A171826 (n + 1)

end

end A164498.P15332045228725183962

/-!
# A164499: Number of binary strings of length n with no substrings equal to 0010 0110 or 1101.

The programs for A164499, there is no canonical definition to state claims against.
-/

/-! ## A164499.P14838210248412597756

`A164442(n+4)-A185284(A000124(n))`
-/

namespace A164499.P14838210248412597756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164442 (n + 4) - A185284 (A000124 n).toNat

end

end A164499.P14838210248412597756

/-! ## A164499.P1214517332577884051

`A164442(n+4)-A010059(A327644(n))`
-/

namespace A164499.P1214517332577884051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164442 (n + 4) - A010059 (A327644 n).toNat

end

end A164499.P1214517332577884051

/-! ## A164499.P3523392003886835586

`A164442(n+4)-A186747(A308822(n))`
-/

namespace A164499.P3523392003886835586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164442 (n + 4) - A186747 (A308822 n).toNat

end

end A164499.P3523392003886835586

/-! ## A164499.P110289734999837311

`xor(A151755(A164508(n)), A164442(n+4))`
-/

namespace A164499.P110289734999837311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151755 (A164508 n).toNat) (A164442 (n + 4))

end

end A164499.P110289734999837311

