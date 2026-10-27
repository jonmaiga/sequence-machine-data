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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C025

/-!
# A105401: a(n) is the final term of the n-th row of A106394.

The programs for A105401, there is no canonical definition to state claims against.
-/

/-! ## A105401.P4535825505116405210

`A106394(∑[A112330(n+1)])`
-/

namespace A105401.P4535825505116405210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106394 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A105401.P4535825505116405210

/-! ## A105401.P11890228061917152582

`A007948((n+2)!)/(n+2)`
-/

namespace A105401.P11890228061917152582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007948 (Nat.factorial (n + 2)) : ℚ) / (n + 2 : ℚ)

end

end A105401.P11890228061917152582

/-!
# A105402: Positive integers k such that the prime factors of sigma(k) are a subset of the prime factors of k.

The programs for A105402, the canonical program `A105402.P13031207710352222205` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105402 has offset 1).

The definition of A105402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105402.P13031207710352222205

`lt[(n+1)%A007947(A000203(n+1)), 1]+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105402

/-- `lt[(n+1)%A007947(A000203(n+1)), 1]+1` -/
def P13031207710352222205.Spec : Prop :=
  ∀ n, (P13031207710352222205.a n : ℤ) = A105402 (n + 1)

theorem P13031207710352222205.correct : P13031207710352222205.Spec := by
  intro n
  simp only [A105402, Nat.add_sub_cancel]

end A105402

/-! ## A105402.P5484509019556349233

`lt[n%A000203(A048375(n+1)), A306682(n+1)]+1`
-/

namespace A105402.P5484509019556349233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A000203 (A048375 (n + 1)).toNat)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A105402.P5484509019556349233

namespace A105402

/-- `lt[n%A000203(A048375(n+1)), A306682(n+1)]+1` -/
def P5484509019556349233.Spec : Prop :=
  ∀ n, (P5484509019556349233.a n : ℤ) = A105402 (n + 1)

end A105402

/-! ## A105402.P3011227589503194067

`∩[A333646(n+1), A367861(n+1)]`
-/

namespace A105402.P3011227589503194067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105402.P3011227589503194067

namespace A105402

/-- `∩[A333646(n+1), A367861(n+1)]` -/
def P3011227589503194067.Spec : Prop :=
  ∀ n, (P3011227589503194067.a n : ℤ) = A105402 (n + 1)

end A105402

/-!
# A105406: Indices n of primes p(n), p(n+3) such that p(n)+1 and p(n+3)+1 have the same largest prime factor.

The programs for A105406, there is no canonical definition to state claims against.
-/

/-! ## A105406.P11170246527769981256

`eq[A023509(n+1), A023509(n+4)]+1`
-/

namespace A105406.P11170246527769981256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023509 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A105406.P11170246527769981256

/-!
# A105407: Indices n of primes p(n), p(n+4) such that p(n)-1 and p(n+4)-1 have the same largest prime factor.

The programs for A105407, there is no canonical definition to state claims against.
-/

/-! ## A105407.P12582305084980865611

`eq[A070820(n+1), A070820(n+5)]+1`
-/

namespace A105407.P12582305084980865611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070820 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A105407.P12582305084980865611

/-! ## A105407.P4024882578274270487

`eq[A023503(n+2), A023503(n+6)]+2`
-/

namespace A105407.P4024882578274270487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023503 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023503 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A105407.P4024882578274270487

/-!
# A105409: Numbers k such that prime(k)-2 and prime(k+2)-2 are both primes.

The programs for A105409, the canonical program `A105409.P4388041597487079286` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105409 has offset 1).

The definition of A105409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105409.P16686000484933672284

`A226318(n+1)+1`
-/

namespace A105409.P16686000484933672284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226318 (n + 1) + 1

end

end A105409.P16686000484933672284

namespace A105409

/-- `A226318(n+1)+1` -/
def P16686000484933672284.Spec : Prop :=
  ∀ n, P16686000484933672284.a n = A105409 (n + 1)

end A105409

/-! ## A105409.P4388041597487079286

`A029707(A242881(n+1))-1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A105409

/-- `A029707(A242881(n+1))-1` -/
def P4388041597487079286.Spec : Prop :=
  ∀ n, P4388041597487079286.a n = A105409 (n + 1)

theorem P4388041597487079286.correct : P4388041597487079286.Spec := by
  intro n
  simp only [A105409, Nat.add_sub_cancel]

end A105409

/-! ## A105409.P9525033468795187641

`∩[A022884(n+1), A029707(n+1)]+1`
-/

namespace A105409.P9525033468795187641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A105409.P9525033468795187641

namespace A105409

/-- `∩[A022884(n+1), A029707(n+1)]+1` -/
def P9525033468795187641.Spec : Prop :=
  ∀ n, (P9525033468795187641.a n : ℤ) = A105409 (n + 1)

end A105409

/-! ## A105409.P4006749838817411790

`A155752(A242881(n+1))`
-/

namespace A105409.P4006749838817411790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (A242881 (n + 1)).toNat

end

end A105409.P4006749838817411790

namespace A105409

/-- `A155752(A242881(n+1))` -/
def P4006749838817411790.Spec : Prop :=
  ∀ n, P4006749838817411790.a n = A105409 (n + 1)

end A105409

/-! ## A105409.P17558644603260318660

`A107770(A242881(n+1)-1)`
-/

namespace A105409.P17558644603260318660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (A242881 (n + 1) - 1).toNat

end

end A105409.P17558644603260318660

namespace A105409

/-- `A107770(A242881(n+1)-1)` -/
def P17558644603260318660.Spec : Prop :=
  ∀ n, P17558644603260318660.a n = A105409 (n + 1)

end A105409

/-! ## A105409.P14729177610907224026

`∩[A107770(n+1), A155752(n+1)]`
-/

namespace A105409.P14729177610907224026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105409.P14729177610907224026

namespace A105409

/-- `∩[A107770(n+1), A155752(n+1)]` -/
def P14729177610907224026.Spec : Prop :=
  ∀ n, (P14729177610907224026.a n : ℤ) = A105409 (n + 1)

end A105409

/-! ## A105409.P1014598318611636993

`∩[A029707(n+1)-1, A107770(n+1)]`
-/

namespace A105409.P1014598318611636993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105409.P1014598318611636993

namespace A105409

/-- `∩[A029707(n+1)-1, A107770(n+1)]` -/
def P1014598318611636993.Spec : Prop :=
  ∀ n, (P1014598318611636993.a n : ℤ) = A105409 (n + 1)

end A105409

/-! ## A105409.P11249885056285769282

`A020725(A226318(n+1))`
-/

namespace A105409.P11249885056285769282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A226318 (n + 1)).toNat

end

end A105409.P11249885056285769282

namespace A105409

/-- `A020725(A226318(n+1))` -/
def P11249885056285769282.Spec : Prop :=
  ∀ n, P11249885056285769282.a n = A105409 (n + 1)

end A105409

/-! ## A105409.P9295257831152454520

`filter[A155752(n+1), A062301(#)]`
-/

namespace A105409.P9295257831152454520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A062301 (f1 j).toNat = 1) n)

end

end A105409.P9295257831152454520

namespace A105409

/-- `filter[A155752(n+1), A062301(#)]` -/
def P9295257831152454520.Spec : Prop :=
  ∀ n, P9295257831152454520.a n = A105409 (n + 1)

end A105409

/-! ## A105409.P17862167291821542940

`eq[A076976(n+1), A237260(n+1)]`
-/

namespace A105409.P17862167291821542940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105409.P17862167291821542940

namespace A105409

/-- `eq[A076976(n+1), A237260(n+1)]` -/
def P17862167291821542940.Spec : Prop :=
  ∀ n, (P17862167291821542940.a n : ℤ) = A105409 (n + 1)

end A105409

/-! ## A105409.P12101784093078799320

`eq[A163981(n+1), A237260(n+1)]`
-/

namespace A105409.P12101784093078799320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105409.P12101784093078799320

namespace A105409

/-- `eq[A163981(n+1), A237260(n+1)]` -/
def P12101784093078799320.Spec : Prop :=
  ∀ n, (P12101784093078799320.a n : ℤ) = A105409 (n + 1)

end A105409

/-! ## A105409.P319018356125314924

`eq[A052180(n+2), A075526(n)]+1`
-/

namespace A105409.P319018356125314924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A105409.P319018356125314924

namespace A105409

/-- `eq[A052180(n+2), A075526(n)]+1` -/
def P319018356125314924.Spec : Prop :=
  ∀ n, (P319018356125314924.a n : ℤ) = A105409 (n + 1)

end A105409

/-! ## A105409.P14937590208463735076

`eq[A075526(n), A356741(n+2)]+1`
-/

namespace A105409.P14937590208463735076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356741 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A105409.P14937590208463735076

namespace A105409

/-- `eq[A075526(n), A356741(n+2)]+1` -/
def P14937590208463735076.Spec : Prop :=
  ∀ n, (P14937590208463735076.a n : ℤ) = A105409 (n + 1)

end A105409

/-! ## A105409.P15725829716770255892

`eq[A062301(n+1), A135732(n+1)]+1`
-/

namespace A105409.P15725829716770255892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A105409.P15725829716770255892

namespace A105409

/-- `eq[A062301(n+1), A135732(n+1)]+1` -/
def P15725829716770255892.Spec : Prop :=
  ∀ n, (P15725829716770255892.a n : ℤ) = A105409 (n + 1)

end A105409

/-! ## A105409.P13712943579333209755

`eq[A046929(n+1), A162153(n+1)]+1`
-/

namespace A105409.P13712943579333209755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A105409.P13712943579333209755

namespace A105409

/-- `eq[A046929(n+1), A162153(n+1)]+1` -/
def P13712943579333209755.Spec : Prop :=
  ∀ n, (P13712943579333209755.a n : ℤ) = A105409 (n + 1)

end A105409

/-! ## A105409.P16877943067646375459

`eq[A062301(n+1), A162153(n+1)]+1`
-/

namespace A105409.P16877943067646375459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A105409.P16877943067646375459

namespace A105409

/-- `eq[A062301(n+1), A162153(n+1)]+1` -/
def P16877943067646375459.Spec : Prop :=
  ∀ n, (P16877943067646375459.a n : ℤ) = A105409 (n + 1)

end A105409

/-! ## A105409.P16676108022739592451

`eq[A062301(n+1), A176246(n+1)]+1`
-/

namespace A105409.P16676108022739592451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A105409.P16676108022739592451

namespace A105409

/-- `eq[A062301(n+1), A176246(n+1)]+1` -/
def P16676108022739592451.Spec : Prop :=
  ∀ n, (P16676108022739592451.a n : ℤ) = A105409 (n + 1)

end A105409

/-! ## A105409.P8929282112587100050

`A000720(A053778(n+1))+1`
-/

namespace A105409.P8929282112587100050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A053778 (n + 1)).toNat + 1

end

end A105409.P8929282112587100050

namespace A105409

/-- `A000720(A053778(n+1))+1` -/
def P8929282112587100050.Spec : Prop :=
  ∀ n, P8929282112587100050.a n = A105409 (n + 1)

end A105409

/-! ## A105409.P15609222138391595994

`A061395(A053778(n+1)+2)`
-/

namespace A105409.P15609222138391595994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A053778 (n + 1) + 2).toNat

end

end A105409.P15609222138391595994

namespace A105409

/-- `A061395(A053778(n+1)+2)` -/
def P15609222138391595994.Spec : Prop :=
  ∀ n, P15609222138391595994.a n = A105409 (n + 1)

end A105409

/-! ## A105409.P7762550465348022179

`A000720(p?[A022885(n+1)+2])`
-/

namespace A105409.P7762550465348022179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105409.P7762550465348022179

namespace A105409

/-- `A000720(p?[A022885(n+1)+2])` -/
def P7762550465348022179.Spec : Prop :=
  ∀ n, P7762550465348022179.a n = A105409 (n + 1)

end A105409

/-!
# A105410: Numbers k such that prime(k)-2 and prime(k+3)-2 are both primes.

The programs for A105410, the canonical program `A105410.P90063867077969444` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105410 has offset 1).

The definition of A105410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 988 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105410.P90063867077969444

`∩[A107770(n+1), A155752(n+1)-1]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A105410

/-- `∩[A107770(n+1), A155752(n+1)-1]` -/
def P90063867077969444.Spec : Prop :=
  ∀ n, (P90063867077969444.a n : ℤ) = A105410 (n + 1)

theorem P90063867077969444.correct : P90063867077969444.Spec := by
  intro n
  simp only [A105410, Nat.add_sub_cancel]

end A105410

/-! ## A105410.P11630587039466785367

`∩[A029707(n+1)-2, A107770(n+1)]`
-/

namespace A105410.P11630587039466785367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105410.P11630587039466785367

namespace A105410

/-- `∩[A029707(n+1)-2, A107770(n+1)]` -/
def P11630587039466785367.Spec : Prop :=
  ∀ n, (P11630587039466785367.a n : ℤ) = A105410 (n + 1)

end A105410

/-! ## A105410.P12917934079381600661

`A000720(A105411(n+1))+1`
-/

namespace A105410.P12917934079381600661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A105411 (n + 1)).toNat + 1

end

end A105410.P12917934079381600661

namespace A105410

/-- `A000720(A105411(n+1))+1` -/
def P12917934079381600661.Spec : Prop :=
  ∀ n, P12917934079381600661.a n = A105410 (n + 1)

end A105410

/-! ## A105410.P1813741702314297921

`A061395(A105411(n+1)+2)`
-/

namespace A105410.P1813741702314297921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A105411 (n + 1) + 2).toNat

end

end A105410.P1813741702314297921

namespace A105410

/-- `A061395(A105411(n+1)+2)` -/
def P1813741702314297921.Spec : Prop :=
  ∀ n, P1813741702314297921.a n = A105410 (n + 1)

end A105410

/-! ## A105410.P1607053880458287471

`record[A061395(A022887(n+1)+2)]`
-/

namespace A105410.P1607053880458287471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A022887 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105410.P1607053880458287471

namespace A105410

/-- `record[A061395(A022887(n+1)+2)]` -/
def P1607053880458287471.Spec : Prop :=
  ∀ n, P1607053880458287471.a n = A105410 (n + 1)

end A105410

/-! ## A105410.P720193043939724196

`A000720(p?[A022887(n+1)+2])`
-/

namespace A105410.P720193043939724196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105410.P720193043939724196

namespace A105410

/-- `A000720(p?[A022887(n+1)+2])` -/
def P720193043939724196.Spec : Prop :=
  ∀ n, P720193043939724196.a n = A105410 (n + 1)

end A105410

/-! ## A105410.P13926564106922200808

`A061395(p?[A022887(n+1)+2])`
-/

namespace A105410.P13926564106922200808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105410.P13926564106922200808

namespace A105410

/-- `A061395(p?[A022887(n+1)+2])` -/
def P13926564106922200808.Spec : Prop :=
  ∀ n, P13926564106922200808.a n = A105410 (n + 1)

end A105410

/-! ## A105410.P3123436187873579419

`A000720(p?[A007429(A022887(n+1))])`
-/

namespace A105410.P3123436187873579419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (A022887 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105410.P3123436187873579419

namespace A105410

/-- `A000720(p?[A007429(A022887(n+1))])` -/
def P3123436187873579419.Spec : Prop :=
  ∀ n, P3123436187873579419.a n = A105410 (n + 1)

end A105410

/-! ## A105410.P60728938144310365

`A304106(A105411(n+1))`
-/

namespace A105410.P60728938144310365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304106 (A105411 (n + 1)).toNat

end

end A105410.P60728938144310365

namespace A105410

/-- `A304106(A105411(n+1))` -/
def P60728938144310365.Spec : Prop :=
  ∀ n, P60728938144310365.a n = A105410 (n + 1)

end A105410

/-!
# A105411: Primes p = prime(k) such that both p+2 and prime(k+4)-2 are prime numbers.

The programs for A105411, the canonical program `A105411.P452950759705789051` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105411 has offset 1).

The definition of A105411 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105410, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A105411.P452950759705789051

`A000040(A105410(n+1)-1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A105411

/-- `A000040(A105410(n+1)-1)` -/
def P452950759705789051.Spec : Prop :=
  ∀ n, P452950759705789051.a n = A105411 (n + 1)

theorem P452950759705789051.correct : P452950759705789051.Spec := by
  intro n
  simp only [A105411, Nat.add_sub_cancel]

end A105411

/-! ## A105411.P12391003123649868956

`A089629(n%a(n-1))` with `a(0)=3`
-/

namespace A105411.P12391003123649868956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A089629 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A105411.P12391003123649868956

namespace A105411

/-- `A089629(n%a(n-1))` -/
def P12391003123649868956.Spec : Prop :=
  ∀ n, P12391003123649868956.a n = A105411 (n + 1)

end A105411

/-! ## A105411.P3861896390223455919

`∩[A001359(n+1), A022887(n+1)]`
-/

namespace A105411.P3861896390223455919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105411.P3861896390223455919

namespace A105411

/-- `∩[A001359(n+1), A022887(n+1)]` -/
def P3861896390223455919.Spec : Prop :=
  ∀ n, (P3861896390223455919.a n : ℤ) = A105411 (n + 1)

end A105411

/-! ## A105411.P3924128527243004775

`∩[A022887(n+1), A378983(n+1)]`
-/

namespace A105411.P3924128527243004775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105411.P3924128527243004775

namespace A105411

/-- `∩[A022887(n+1), A378983(n+1)]` -/
def P3924128527243004775.Spec : Prop :=
  ∀ n, (P3924128527243004775.a n : ℤ) = A105411 (n + 1)

end A105411

/-! ## A105411.P15694000979671564049

`∩[A022887(n+1), A054799(n+1)]`
-/

namespace A105411.P15694000979671564049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105411.P15694000979671564049

namespace A105411

/-- `∩[A022887(n+1), A054799(n+1)]` -/
def P15694000979671564049.Spec : Prop :=
  ∀ n, (P15694000979671564049.a n : ℤ) = A105411 (n + 1)

end A105411

/-! ## A105411.P11461037275924132790

`∩[A022887(n+1), A063700(n+1)]`
-/

namespace A105411.P11461037275924132790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105411.P11461037275924132790

namespace A105411

/-- `∩[A022887(n+1), A063700(n+1)]` -/
def P11461037275924132790.Spec : Prop :=
  ∀ n, (P11461037275924132790.a n : ℤ) = A105411 (n + 1)

end A105411

/-! ## A105411.P16947453454017181215

`∩[A022887(n+1), A124588(n+1)]`
-/

namespace A105411.P16947453454017181215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105411.P16947453454017181215

namespace A105411

/-- `∩[A022887(n+1), A124588(n+1)]` -/
def P16947453454017181215.Spec : Prop :=
  ∀ n, (P16947453454017181215.a n : ℤ) = A105411 (n + 1)

end A105411

/-! ## A105411.P6886732488119376396

`∩[A022887(n+1), A181747(n+1)]`
-/

namespace A105411.P6886732488119376396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105411.P6886732488119376396

namespace A105411

/-- `∩[A022887(n+1), A181747(n+1)]` -/
def P6886732488119376396.Spec : Prop :=
  ∀ n, (P6886732488119376396.a n : ℤ) = A105411 (n + 1)

end A105411

/-! ## A105411.P14696202525156115971

`∩[A022887(n+1), A238528(n+1)]`
-/

namespace A105411.P14696202525156115971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105411.P14696202525156115971

namespace A105411

/-- `∩[A022887(n+1), A238528(n+1)]` -/
def P14696202525156115971.Spec : Prop :=
  ∀ n, (P14696202525156115971.a n : ℤ) = A105411 (n + 1)

end A105411

/-! ## A105411.P5164081260184782911

`∩[A022887(n+1), A280255(n+1)]`
-/

namespace A105411.P5164081260184782911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105411.P5164081260184782911

namespace A105411

/-- `∩[A022887(n+1), A280255(n+1)]` -/
def P5164081260184782911.Spec : Prop :=
  ∀ n, (P5164081260184782911.a n : ℤ) = A105411 (n + 1)

end A105411

/-! ## A105411.P11136787904818135547

`∩[A022887(n+1), A063693(n+1)]`
-/

namespace A105411.P11136787904818135547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105411.P11136787904818135547

namespace A105411

/-- `∩[A022887(n+1), A063693(n+1)]` -/
def P11136787904818135547.Spec : Prop :=
  ∀ n, (P11136787904818135547.a n : ℤ) = A105411 (n + 1)

end A105411

/-! ## A105411.P16473597340084866882

`∩[A022887(n+1), A394509(n+1)]`
-/

namespace A105411.P16473597340084866882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105411.P16473597340084866882

namespace A105411

/-- `∩[A022887(n+1), A394509(n+1)]` -/
def P16473597340084866882.Spec : Prop :=
  ∀ n, (P16473597340084866882.a n : ℤ) = A105411 (n + 1)

end A105411

/-! ## A105411.P12187191448628628953

`∩[A022887(n+1), A395788(n+1)]`
-/

namespace A105411.P12187191448628628953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105411.P12187191448628628953

namespace A105411

/-- `∩[A022887(n+1), A395788(n+1)]` -/
def P12187191448628628953.Spec : Prop :=
  ∀ n, (P12187191448628628953.a n : ℤ) = A105411 (n + 1)

end A105411

/-! ## A105411.P12916665563481833166

`∩[A022887(n+1), A073534(n+1)]`
-/

namespace A105411.P12916665563481833166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105411.P12916665563481833166

namespace A105411

/-- `∩[A022887(n+1), A073534(n+1)]` -/
def P12916665563481833166.Spec : Prop :=
  ∀ n, (P12916665563481833166.a n : ℤ) = A105411 (n + 1)

end A105411

/-! ## A105411.P15528097192406952617

`∩[A022887(n+1), A280590(n+1)]`
-/

namespace A105411.P15528097192406952617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105411.P15528097192406952617

namespace A105411

/-- `∩[A022887(n+1), A280590(n+1)]` -/
def P15528097192406952617.Spec : Prop :=
  ∀ n, (P15528097192406952617.a n : ℤ) = A105411 (n + 1)

end A105411

/-! ## A105411.P3515157443906190189

`∩[A001838(n+1), A022887(n+1)]`
-/

namespace A105411.P3515157443906190189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105411.P3515157443906190189

namespace A105411

/-- `∩[A001838(n+1), A022887(n+1)]` -/
def P3515157443906190189.Spec : Prop :=
  ∀ n, (P3515157443906190189.a n : ℤ) = A105411 (n + 1)

end A105411

/-! ## A105411.P17155502800282950107

`∩[A022887(n+1), A274212(n+1)]`
-/

namespace A105411.P17155502800282950107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105411.P17155502800282950107

namespace A105411

/-- `∩[A022887(n+1), A274212(n+1)]` -/
def P17155502800282950107.Spec : Prop :=
  ∀ n, (P17155502800282950107.a n : ℤ) = A105411 (n + 1)

end A105411

/-! ## A105411.P2109011962122990034

`∩[A022887(n+1), A066147(n+1)]`
-/

namespace A105411.P2109011962122990034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105411.P2109011962122990034

namespace A105411

/-- `∩[A022887(n+1), A066147(n+1)]` -/
def P2109011962122990034.Spec : Prop :=
  ∀ n, (P2109011962122990034.a n : ℤ) = A105411 (n + 1)

end A105411

/-! ## A105411.P150834835408004656

`∩[A022887(n+1), A065873(n+1)]`
-/

namespace A105411.P150834835408004656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105411.P150834835408004656

namespace A105411

/-- `∩[A022887(n+1), A065873(n+1)]` -/
def P150834835408004656.Spec : Prop :=
  ∀ n, (P150834835408004656.a n : ℤ) = A105411 (n + 1)

end A105411

/-! ## A105411.P11443384125444427357

`∩[A022887(n+1), A072282(n+1)]`
-/

namespace A105411.P11443384125444427357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105411.P11443384125444427357

namespace A105411

/-- `∩[A022887(n+1), A072282(n+1)]` -/
def P11443384125444427357.Spec : Prop :=
  ∀ n, (P11443384125444427357.a n : ℤ) = A105411 (n + 1)

end A105411

/-!
# A105412: Primes p = prime(k) such that both p+2 and prime(k+5)-2 are prime numbers.

The programs for A105412, there is no canonical definition to state claims against.
-/

/-! ## A105412.P14281645182436309785

`∪[A089634(n+1), A136143(n+1)]`
-/

namespace A105412.P14281645182436309785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P14281645182436309785

/-! ## A105412.P8793916032036472074

`∩[A001359(n+1), A022889(n+1)]`
-/

namespace A105412.P8793916032036472074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P8793916032036472074

/-! ## A105412.P15535714072106854359

`∩[A022889(n+1), A378983(n+1)]`
-/

namespace A105412.P15535714072106854359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P15535714072106854359

/-! ## A105412.P16945902714238131800

`∩[A022889(n+1), A111166(n+1)]`
-/

namespace A105412.P16945902714238131800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P16945902714238131800

/-! ## A105412.P2654635098550945583

`∩[A022889(n+1), A054799(n+1)]`
-/

namespace A105412.P2654635098550945583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P2654635098550945583

/-! ## A105412.P3037414070185146825

`∩[A022889(n+1), A124588(n+1)]`
-/

namespace A105412.P3037414070185146825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P3037414070185146825

/-! ## A105412.P18172799462341837439

`∩[A022889(n+1), A181747(n+1)]`
-/

namespace A105412.P18172799462341837439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P18172799462341837439

/-! ## A105412.P16284022670536592205

`∩[A022889(n+1), A063700(n+1)]`
-/

namespace A105412.P16284022670536592205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P16284022670536592205

/-! ## A105412.P10457882211793212684

`∩[A022889(n+1), A280255(n+1)]`
-/

namespace A105412.P10457882211793212684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P10457882211793212684

/-! ## A105412.P9683429630813589534

`∩[A022889(n+1), A063693(n+1)]`
-/

namespace A105412.P9683429630813589534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P9683429630813589534

/-! ## A105412.P9462015705954982917

`∩[A022889(n+1), A394509(n+1)]`
-/

namespace A105412.P9462015705954982917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P9462015705954982917

/-! ## A105412.P17594181914047321012

`∩[A022889(n+1), A395788(n+1)]`
-/

namespace A105412.P17594181914047321012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P17594181914047321012

/-! ## A105412.P17260375023419849891

`∩[A022889(n+1), A073534(n+1)]`
-/

namespace A105412.P17260375023419849891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P17260375023419849891

/-! ## A105412.P17026012701326181610

`∩[A022889(n+1), A280590(n+1)]`
-/

namespace A105412.P17026012701326181610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P17026012701326181610

/-! ## A105412.P103974367623106140

`∩[A001838(n+1), A022889(n+1)]`
-/

namespace A105412.P103974367623106140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P103974367623106140

/-! ## A105412.P1500652356662185278

`∩[A022889(n+1), A274212(n+1)]`
-/

namespace A105412.P1500652356662185278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P1500652356662185278

/-! ## A105412.P16935539352945199736

`∩[A022889(n+1), A066147(n+1)]`
-/

namespace A105412.P16935539352945199736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P16935539352945199736

/-! ## A105412.P14620726787822906514

`∩[A022889(n+1), A065873(n+1)]`
-/

namespace A105412.P14620726787822906514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P14620726787822906514

/-! ## A105412.P10024885081885270842

`∩[A022889(n+1), A072282(n+1)]`
-/

namespace A105412.P10024885081885270842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P10024885081885270842

/-! ## A105412.P16872964990023569276

`∩[A022889(n+1), A067532(n+1)]`
-/

namespace A105412.P16872964990023569276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105412.P16872964990023569276

/-!
# A105413: Primes p = prime(k) such that both p+2 and prime(k+6)-2 are prime numbers.

The programs for A105413, the canonical program `A105413.P9477685925488357748` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105413 has offset 1).

The definition of A105413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105413.P989881203143409083

`p?[A008578(n+1)-A052180(n+4)]`
-/

namespace A105413.P989881203143409083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A052180 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105413.P989881203143409083

namespace A105413

/-- `p?[A008578(n+1)-A052180(n+4)]` -/
def P989881203143409083.Spec : Prop :=
  ∀ n, P989881203143409083.a n = A105413 (n + 1)

end A105413

/-! ## A105413.P10233682745953669619

`p?[A065091(n+1)-A052180(n+6)]`
-/

namespace A105413.P10233682745953669619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A052180 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105413.P10233682745953669619

namespace A105413

/-- `p?[A065091(n+1)-A052180(n+6)]` -/
def P10233682745953669619.Spec : Prop :=
  ∀ n, P10233682745953669619.a n = A105413 (n + 1)

end A105413

/-! ## A105413.P9477685925488357748

`p?[A024675(n+1)-A162153(n+6)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A105413

/-- `p?[A024675(n+1)-A162153(n+6)]` -/
def P9477685925488357748.Spec : Prop :=
  ∀ n, P9477685925488357748.a n = A105413 (n + 1)

theorem P9477685925488357748.correct : P9477685925488357748.Spec := by
  intro n
  simp only [A105413, Nat.add_sub_cancel]

end A105413

/-! ## A105413.P3331515733409291017

`p?[A046933(n+6)*A078444(n+1)]`
-/

namespace A105413.P3331515733409291017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 6) * A078444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105413.P3331515733409291017

namespace A105413

/-- `p?[A046933(n+6)*A078444(n+1)]` -/
def P3331515733409291017.Spec : Prop :=
  ∀ n, P3331515733409291017.a n = A105413 (n + 1)

end A105413

/-! ## A105413.P2168909872527155433

`p?[A040976(n+3)*A046933(n+7)]`
-/

namespace A105413.P2168909872527155433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 3) * A046933 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105413.P2168909872527155433

namespace A105413

/-- `p?[A040976(n+3)*A046933(n+7)]` -/
def P2168909872527155433.Spec : Prop :=
  ∀ n, P2168909872527155433.a n = A105413 (n + 1)

end A105413

/-!
# A105414: Primes p = prime(k) such that p+2 and prime(k+7)-2 are both prime numbers.

The programs for A105414, the canonical program `A105414.P3057525973384244371` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105414 has offset 1).

The definition of A105414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105414.P3057525973384244371

`p?[A006093(n+1)-A162153(n+5)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A105414

/-- `p?[A006093(n+1)-A162153(n+5)]` -/
def P3057525973384244371.Spec : Prop :=
  ∀ n, P3057525973384244371.a n = A105414 (n + 1)

theorem P3057525973384244371.correct : P3057525973384244371.Spec := by
  intro n
  simp only [A105414, Nat.add_sub_cancel]

end A105414

/-! ## A105414.P3472717854194336504

`p?[A024675(n+1)-A162153(n+7)]`
-/

namespace A105414.P3472717854194336504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A162153 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105414.P3472717854194336504

namespace A105414

/-- `p?[A024675(n+1)-A162153(n+7)]` -/
def P3472717854194336504.Spec : Prop :=
  ∀ n, P3472717854194336504.a n = A105414 (n + 1)

end A105414

/-! ## A105414.P3602237932231709815

`p?[A065091(n+4)-A052180(n+10)]`
-/

namespace A105414.P3602237932231709815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 4) - A052180 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105414.P3602237932231709815

namespace A105414

/-- `p?[A065091(n+4)-A052180(n+10)]` -/
def P3602237932231709815.Spec : Prop :=
  ∀ n, P3602237932231709815.a n = A105414 (n + 1)

end A105414

/-! ## A105414.P10755231224314265763

`p?[A040976(n+1)*A046933(n+6)]`
-/

namespace A105414.P10755231224314265763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) * A046933 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105414.P10755231224314265763

namespace A105414

/-- `p?[A040976(n+1)*A046933(n+6)]` -/
def P10755231224314265763.Spec : Prop :=
  ∀ n, P10755231224314265763.a n = A105414 (n + 1)

end A105414

/-! ## A105414.P14693269001546846975

`p?[A046933(n+8)*A078444(n+2)]`
-/

namespace A105414.P14693269001546846975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 8) * A078444 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105414.P14693269001546846975

namespace A105414

/-- `p?[A046933(n+8)*A078444(n+2)]` -/
def P14693269001546846975.Spec : Prop :=
  ∀ n, P14693269001546846975.a n = A105414 (n + 1)

end A105414

/-!
# A105416: Numbers that are pandigital in Roman numerals using each of the symbols I, V, X, L, C, D and M exactly once.

The programs for A105416, there is no canonical definition to state claims against.
-/

/-! ## A105416.P12135166079858389794

`A105417(A098871(n))`
-/

namespace A105416.P12135166079858389794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105417 (A098871 n).toNat

end

end A105416.P12135166079858389794

/-! ## A105416.P1200447345070550967

`A105417(A000695(n)+1)`
-/

namespace A105416.P1200447345070550967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105417 (A000695 n + 1).toNat

end

end A105416.P1200447345070550967

/-! ## A105416.P14517825414049327670

`A105417(xor(2, A000695(n))-1)`
-/

namespace A105416.P14517825414049327670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105417 (Int.xor 2 (A000695 n) - 1).toNat

end

end A105416.P14517825414049327670

/-! ## A105416.P18005467307623413445

`∩[A105417(n+1), A281018(n+1)]`
-/

namespace A105416.P18005467307623413445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105416.P18005467307623413445

/-!
# A105418: Smallest prime p such that the sum of it and the following prime has n prime factors including multiplicity, or 0 if no such prime exists.

The programs for A105418, there is no canonical definition to state claims against.
-/

/-! ## A105418.P10268130662870298061

`A182986(A251600(n+1)+1)`
-/

namespace A105418.P10268130662870298061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A251600 (n + 1) + 1).toNat

end

end A105418.P10268130662870298061

/-! ## A105418.P2193402365392322275

`∑{d}[A251600(n+1), A007444(#)]`
-/

namespace A105418.P2193402365392322275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A105418.P2193402365392322275

/-!
# A105420: Number of partitions of n into 3-smooth parts.

The programs for A105420, there is no canonical definition to state claims against.
-/

/-! ## A105420.P15862402533251807358

`∑[A007690(n)]-A117707(A033483(n))`
-/

namespace A105420.P15862402533251807358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A117707 (A033483 n).toNat

end

end A105420.P15862402533251807358

/-! ## A105420.P16244414757802167550

`A340998(A167934(n))+A088314(n)`
-/

namespace A105420.P16244414757802167550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A167934 n).toNat + 140) + A088314 n

end

end A105420.P16244414757802167550

/-! ## A105420.P14719910946563212404

`A195098(A347446(n))+Δ[A026816(n)]`
-/

namespace A105420.P14719910946563212404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (A347446 n).toNat + (f1 (n + 1) - f1 n)

end

end A105420.P14719910946563212404

/-! ## A105420.P13436270506589323430

`A195098(A347446(n))+Δ[A326590(n)]`
-/

namespace A105420.P13436270506589323430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (A347446 n).toNat + (f1 (n + 1) - f1 n)

end

end A105420.P13436270506589323430

/-! ## A105420.P13468761777555032656

`A195098(A347446(n))+Δ[A326592(n)]`
-/

namespace A105420.P13468761777555032656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (A347446 n).toNat + (f1 (n + 1) - f1 n)

end

end A105420.P13468761777555032656

/-!
# A105422: Triangle read by rows: T(n,k) is the number of compositions of n having exactly k parts equal to 1.

The programs for A105422, the canonical program `A105422.P1251763794497062541` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105422 has offset 0).

The definition of A105422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105422.P1251763794497062541

`T(n-1,k)+T(n-2,k)+T(n-1,k-1)-T(n-2,k-1)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105422

/-- `T(n-1,k)+T(n-2,k)+T(n-1,k-1)-T(n-2,k-1)` -/
def P1251763794497062541.Spec : Prop :=
  ∀ n, P1251763794497062541.a n = A105422 n

theorem P1251763794497062541.correct : P1251763794497062541.Spec := by
  intro n
  simp only [A105422]

end A105422

/-! ## A105422.P8474587850293089057

`2*A053538(n)-A207611(n+1)`
-/

namespace A105422.P8474587850293089057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053538 n - A207611 (n + 1)

end

end A105422.P8474587850293089057

namespace A105422

/-- `2*A053538(n)-A207611(n+1)` -/
def P8474587850293089057.Spec : Prop :=
  ∀ n, P8474587850293089057.a n = A105422 n

end A105422

/-! ## A105422.P15485058136532513956

`2*A053538(n)-A208515(A038722(n+1))`
-/

namespace A105422.P15485058136532513956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053538 n - A208515 (A038722 (n + 1)).toNat

end

end A105422.P15485058136532513956

namespace A105422

/-- `2*A053538(n)-A208515(A038722(n+1))` -/
def P15485058136532513956.Spec : Prop :=
  ∀ n, P15485058136532513956.a n = A105422 n

end A105422

/-! ## A105422.P5620449278844465889

`A239366(A185869(n+1))`
-/

namespace A105422.P5620449278844465889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239366 (A185869 (n + 1)).toNat

end

end A105422.P5620449278844465889

namespace A105422

/-- `A239366(A185869(n+1))` -/
def P5620449278844465889.Spec : Prop :=
  ∀ n, P5620449278844465889.a n = A105422 n

end A105422

/-! ## A105422.P10029589810199790901

`A239366(A061579(n)+A016789(n))`
-/

namespace A105422.P10029589810199790901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239366 (A061579 n + A016789 n).toNat

end

end A105422.P10029589810199790901

namespace A105422

/-- `A239366(A061579(n)+A016789(n))` -/
def P10029589810199790901.Spec : Prop :=
  ∀ n, P10029589810199790901.a n = A105422 n

end A105422

/-! ## A105422.P16599199682838853354

`A239366(A114327(n)+A016825(n))`
-/

namespace A105422.P16599199682838853354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239366 (A114327 n + A016825 n).toNat

end

end A105422.P16599199682838853354

namespace A105422

/-- `A239366(A114327(n)+A016825(n))` -/
def P16599199682838853354.Spec : Prop :=
  ∀ n, P16599199682838853354.a n = A105422 n

end A105422

/-! ## A105422.P11457504444465555715

`A239366(A061579(n)+record[A166517(n)])`
-/

namespace A105422.P11457504444465555715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239366 (A061579 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105422.P11457504444465555715

namespace A105422

/-- `A239366(A061579(n)+record[A166517(n)])` -/
def P11457504444465555715.Spec : Prop :=
  ∀ n, P11457504444465555715.a n = A105422 n

end A105422

/-! ## A105422.P6521575586078190722

`A239366(A038722(n+1)+A016777(n))`
-/

namespace A105422.P6521575586078190722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239366 (A038722 (n + 1) + A016777 n).toNat

end

end A105422.P6521575586078190722

namespace A105422

/-- `A239366(A038722(n+1)+A016777(n))` -/
def P6521575586078190722.Spec : Prop :=
  ∀ n, P6521575586078190722.a n = A105422 n

end A105422

/-! ## A105422.P5883373225342422271

`A239366(A166517(2*n)+A061579(n))`
-/

namespace A105422.P5883373225342422271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239366 (A166517 (2 * n) + A061579 n).toNat

end

end A105422.P5883373225342422271

namespace A105422

/-- `A239366(A166517(2*n)+A061579(n))` -/
def P5883373225342422271.Spec : Prop :=
  ∀ n, P5883373225342422271.a n = A105422 n

end A105422

/-! ## A105422.P2156144593867414448

`A207611(n+1)-A005843(A207611(n+1)-A053538(n))`
-/

namespace A105422.P2156144593867414448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207611 (n + 1) - A005843 (A207611 (n + 1) - A053538 n).toNat

end

end A105422.P2156144593867414448

namespace A105422

/-- `A207611(n+1)-A005843(A207611(n+1)-A053538(n))` -/
def P2156144593867414448.Spec : Prop :=
  ∀ n, P2156144593867414448.a n = A105422 n

end A105422

/-! ## A105422.P8982341344913500048

`A005843(A053538(n))-A207611(n+1)`
-/

namespace A105422.P8982341344913500048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A053538 n).toNat - A207611 (n + 1)

end

end A105422.P8982341344913500048

namespace A105422

/-- `A005843(A053538(n))-A207611(n+1)` -/
def P8982341344913500048.Spec : Prop :=
  ∀ n, P8982341344913500048.a n = A105422 n

end A105422

/-! ## A105422.P3898590773933576072

`A005843(A053538(n))-A208515(A038722(n+1))`
-/

namespace A105422.P3898590773933576072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A053538 n).toNat - A208515 (A038722 (n + 1)).toNat

end

end A105422.P3898590773933576072

namespace A105422

/-- `A005843(A053538(n))-A208515(A038722(n+1))` -/
def P3898590773933576072.Spec : Prop :=
  ∀ n, P3898590773933576072.a n = A105422 n

end A105422

/-!
# A105423: Number of compositions of n+2 having exactly two parts equal to 1.

The programs for A105423, there is no canonical definition to state claims against.
-/

/-! ## A105423.P10115177046694611871

`3/(n+3)*A006492(n+3)`
-/

namespace A105423.P10115177046694611871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 3 : ℚ) * (A006492 (n + 3) : ℚ)

end

end A105423.P10115177046694611871

/-! ## A105423.P10609811381122179519

`A105422(∑[n+2]+3)`
-/

namespace A105423.P10609811381122179519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A105423.P10609811381122179519

/-! ## A105423.P5566918707434559563

`A105422(A340266(n+1))+A000007(n)`
-/

namespace A105423.P5566918707434559563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (A340266 (n + 1)).toNat + A000007 n

end

end A105423.P5566918707434559563

/-! ## A105423.P12995718392995199837

`A105422(A027379(n)+5)%Δ[A076968(n+1)²]`
-/

namespace A105423.P12995718392995199837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076968 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105422 (A027379 n + 5).toNat) (f1 (n + 1) - f1 n)

end

end A105423.P12995718392995199837

/-! ## A105423.P4314429250135443297

`A069897(A000040(n+1))*A105422(A027379(n)+5)`
-/

namespace A105423.P4314429250135443297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (A000040 (n + 1)).toNat * A105422 (A027379 n + 5).toNat

end

end A105423.P4314429250135443297

/-!
# A105424: The part of n in base phi left of the decimal point, using a greedy algorithm representation (more precisely, using the Bergman-canonical representation).

The programs for A105424, the canonical program `A105424.P5964440619879122362` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105424 has offset 0).

The definition of A105424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105424.P5964440619879122362

`A007088(A105425(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A105424

/-- `A007088(A105425(n))` -/
def P5964440619879122362.Spec : Prop :=
  ∀ n, P5964440619879122362.a n = A105424 n

theorem P5964440619879122362.correct : P5964440619879122362.Spec := by
  intro n
  simp only [A105424]

end A105424

/-! ## A105424.P17936530035453863816

`A014417(comp[A000201(2*ceil(ϕ*(n+1))+n)])`
-/

namespace A105424.P17936530035453863816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (2 * ⌈Real.goldenRatio * (n + 1 : ℝ)⌉ + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A105424.P17936530035453863816

namespace A105424

/-- `A014417(comp[A000201(2*ceil(ϕ*(n+1))+n)])` -/
def P17936530035453863816.Spec : Prop :=
  ∀ n, P17936530035453863816.a n = A105424 n

end A105424

/-! ## A105424.P14454170288736767357

`A014417(eq[A003849(n+1), A188467(n+3)])`
-/

namespace A105424.P14454170288736767357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188467 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105424.P14454170288736767357

namespace A105424

/-- `A014417(eq[A003849(n+1), A188467(n+3)])` -/
def P14454170288736767357.Spec : Prop :=
  ∀ n, P14454170288736767357.a n = A105424 n

end A105424

/-! ## A105424.P469806560489698336

`A185544(2*A105425(n))`
-/

namespace A105424.P469806560489698336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A105425 n).toNat

end

end A105424.P469806560489698336

namespace A105424

/-- `A185544(2*A105425(n))` -/
def P469806560489698336.Spec : Prop :=
  ∀ n, P469806560489698336.a n = A105424 n

end A105424

/-! ## A105424.P4369339825830201490

`A185544(A105425(n)+A105425(n))`
-/

namespace A105424.P4369339825830201490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A105425 n + A105425 n).toNat

end

end A105424.P4369339825830201490

namespace A105424

/-- `A185544(A105425(n)+A105425(n))` -/
def P4369339825830201490.Spec : Prop :=
  ∀ n, P4369339825830201490.a n = A105424 n

end A105424

/-!
# A105425: Interpret A105424 as a binary sequence and convert to decimal.

The programs for A105425, the canonical program `A105425.P7820754552257510039` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105425 has offset 0).

The definition of A105425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 721 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105425.P7820754552257510039

`eq[A101663(n), A286052(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A105425

/-- `eq[A101663(n), A286052(n+1)]` -/
def P7820754552257510039.Spec : Prop :=
  ∀ n, (P7820754552257510039.a n : ℤ) = A105425 n

theorem P7820754552257510039.correct : P7820754552257510039.Spec := by
  intro n
  simp only [A105425]

end A105425

/-! ## A105425.P3145274095293842145

`record[A292944(A003159(n+1)+1)]`
-/

namespace A105425.P3145274095293842145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292944 (A003159 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105425.P3145274095293842145

namespace A105425

/-- `record[A292944(A003159(n+1)+1)]` -/
def P3145274095293842145.Spec : Prop :=
  ∀ n, P3145274095293842145.a n = A105425 n

end A105425

/-!
# A105426: a(0)=1, a(1)=5, a(n)=8*a(n-1)-a(n-2).

The programs for A105426, the canonical program `A105426.P9354949018413066780` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105426 has offset 0).

The definition of A105426 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-a(n-2)` (program `A105426.P9354949018413066780`, by `A105426.P9354949018413066780.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105426.P9354949018413066780

`8*a(n-1)-a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105426

/-- `8*a(n-1)-a(n-2)` -/
def P9354949018413066780.Spec : Prop :=
  ∀ n, P9354949018413066780.a n = A105426 n

theorem P9354949018413066780.correct : P9354949018413066780.Spec := by
  intro n
  simp only [A105426]

end A105426

/-! ## A105426.P16534287479368361590

`2*A105045(2*n+1)-1`
-/

namespace A105426.P16534287479368361590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105045 (2 * n + 1) - 1

end

end A105426.P16534287479368361590

namespace A105426

/-- `2*A105045(2*n+1)-1` -/
def P16534287479368361590.Spec : Prop :=
  ∀ n, P16534287479368361590.a n = A105426 n

end A105426

/-! ## A105426.P6194771311536227595

`ogf((1-3x)/(1-8x+x^2))`
-/

namespace A105426.P6194771311536227595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -8, 1] n

end

end A105426.P6194771311536227595

namespace A105426

/-- `ogf((1-3x)/(1-8x+x^2))` -/
def P6194771311536227595.Spec : Prop :=
  ∀ n, P6194771311536227595.a n = A105426 n

end A105426

/-! ## A105426.P10590268239028936943

`lcm(8, a(n-1))-a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A105426.P10590268239028936943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  (Int.lcm 8 (a (n - 1)) : ℤ) - a (n - 2)

end

end A105426.P10590268239028936943

namespace A105426

/-- `lcm(8, a(n-1))-a(n-2)` -/
def P10590268239028936943.Spec : Prop :=
  ∀ n, P10590268239028936943.a n = A105426 n

end A105426

/-! ## A105426.P12673329787116220781

`A199336(Δ[n²])`
-/

namespace A105426.P12673329787116220781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199336 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A105426.P12673329787116220781

namespace A105426

/-- `A199336(Δ[n²])` -/
def P12673329787116220781.Spec : Prop :=
  ∀ n, P12673329787116220781.a n = A105426 n

end A105426

/-! ## A105426.P9355672095021077938

`or(1, A199336(2*n+1))`
-/

namespace A105426.P9355672095021077938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A199336 (2 * n + 1))

end

end A105426.P9355672095021077938

namespace A105426

/-- `or(1, A199336(2*n+1))` -/
def P9355672095021077938.Spec : Prop :=
  ∀ n, P9355672095021077938.a n = A105426 n

end A105426

/-! ## A105426.P17009302843100284010

`2*A105076(2*n+1)+1`
-/

namespace A105426.P17009302843100284010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105076 (2 * n + 1) + 1

end

end A105426.P17009302843100284010

namespace A105426

/-- `2*A105076(2*n+1)+1` -/
def P17009302843100284010.Spec : Prop :=
  ∀ n, P17009302843100284010.a n = A105426 n

end A105426

/-! ## A105426.P1852562245336197474

`record[A199336(n+1)/(-1)^n]`
-/

namespace A105426.P1852562245336197474
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199336 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105426.P1852562245336197474

namespace A105426

/-- `record[A199336(n+1)/(-1)^n]` -/
def P1852562245336197474.Spec : Prop :=
  ∀ n, P1852562245336197474.a n = (A105426 n : ℚ)

end A105426

/-! ## A105426.P1000126881369728011

`record[A199336(A093178(n))]`
-/

namespace A105426.P1000126881369728011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199336 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105426.P1000126881369728011

namespace A105426

/-- `record[A199336(A093178(n))]` -/
def P1000126881369728011.Spec : Prop :=
  ∀ n, P1000126881369728011.a n = A105426 n

end A105426

/-! ## A105426.P8718183997852583613

`A001091(n)+A001090(n)`
-/

namespace A105426.P8718183997852583613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001091 n + A001090 n

end

end A105426.P8718183997852583613

namespace A105426

/-- `A001091(n)+A001090(n)` -/
def P8718183997852583613.Spec : Prop :=
  ∀ n, P8718183997852583613.a n = A105426 n

end A105426

/-! ## A105426.P3215935911685588053

`A341929(n)+A136325(n)`
-/

namespace A105426.P3215935911685588053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341929 n + A136325 n

end

end A105426.P3215935911685588053

namespace A105426

/-- `A341929(n)+A136325(n)` -/
def P3215935911685588053.Spec : Prop :=
  ∀ n, P3215935911685588053.a n = A105426 n

end A105426

/-! ## A105426.P7096916905129649530

`A077244(n)-A077243(n)`
-/

namespace A105426.P7096916905129649530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077244 n - A077243 n

end

end A105426.P7096916905129649530

namespace A105426

/-- `A077244(n)-A077243(n)` -/
def P7096916905129649530.Spec : Prop :=
  ∀ n, P7096916905129649530.a n = A105426 n

end A105426

/-! ## A105426.P3182803358996097005

`A086903(n)-A144479(n)`
-/

namespace A105426.P3182803358996097005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086903 n - A144479 n

end

end A105426.P3182803358996097005

namespace A105426

/-- `A086903(n)-A144479(n)` -/
def P3182803358996097005.Spec : Prop :=
  ∀ n, P3182803358996097005.a n = A105426 n

end A105426

/-! ## A105426.P16862729487407392061

`A341927(n)-A001090(n)`
-/

namespace A105426.P16862729487407392061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341927 n - A001090 n

end

end A105426.P16862729487407392061

namespace A105426

/-- `A341927(n)-A001090(n)` -/
def P16862729487407392061.Spec : Prop :=
  ∀ n, P16862729487407392061.a n = A105426 n

end A105426

/-! ## A105426.P7202818288238364389

`record[A199336(A000265(n+1))]`
-/

namespace A105426.P7202818288238364389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199336 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105426.P7202818288238364389

namespace A105426

/-- `record[A199336(A000265(n+1))]` -/
def P7202818288238364389.Spec : Prop :=
  ∀ n, P7202818288238364389.a n = A105426 n

end A105426

/-! ## A105426.P1077136441554819128

`A077246(n)-A001090(n+1)`
-/

namespace A105426.P1077136441554819128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077246 n - A001090 (n + 1)

end

end A105426.P1077136441554819128

namespace A105426

/-- `A077246(n)-A001090(n+1)` -/
def P1077136441554819128.Spec : Prop :=
  ∀ n, P1077136441554819128.a n = A105426 n

end A105426

/-! ## A105426.P15828530581577549629

`A001090(n+1)-A136325(n)`
-/

namespace A105426.P15828530581577549629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 (n + 1) - A136325 n

end

end A105426.P15828530581577549629

namespace A105426

/-- `A001090(n+1)-A136325(n)` -/
def P15828530581577549629.Spec : Prop :=
  ∀ n, P15828530581577549629.a n = A105426 n

end A105426

/-! ## A105426.P15749921375067732566

`A057080(n)-A273053(n+1)`
-/

namespace A105426.P15749921375067732566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057080 n - A273053 (n + 1)

end

end A105426.P15749921375067732566

namespace A105426

/-- `A057080(n)-A273053(n+1)` -/
def P15749921375067732566.Spec : Prop :=
  ∀ n, P15749921375067732566.a n = A105426 n

end A105426

/-! ## A105426.P3856197106039095593

`A080871(2*n)+A001090(n)`
-/

namespace A105426.P3856197106039095593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080871 (2 * n) + A001090 n

end

end A105426.P3856197106039095593

namespace A105426

/-- `A080871(2*n)+A001090(n)` -/
def P3856197106039095593.Spec : Prop :=
  ∀ n, P3856197106039095593.a n = A105426 n

end A105426

/-! ## A105426.P3510710738536654648

`A144479(n)+2*A001090(n)`
-/

namespace A105426.P3510710738536654648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144479 n + 2 * A001090 n

end

end A105426.P3510710738536654648

namespace A105426

/-- `A144479(n)+2*A001090(n)` -/
def P3510710738536654648.Spec : Prop :=
  ∀ n, P3510710738536654648.a n = A105426 n

end A105426

/-!
# A105427: Numbers n such that the near-repdigit number consisting of a 1 followed by n 3's (i.e., of form 1333...33) is composite.

The programs for A105427, there is no canonical definition to state claims against.
-/

/-! ## A105427.P16308216967594099048

`comp[A056698(n+1)-1]+1`
-/

namespace A105427.P16308216967594099048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056698 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A105427.P16308216967594099048

/-! ## A105427.P3109438955412425346

`comp[∪[A073556(3*n+1), A056698(n+1)]]`
-/

namespace A105427.P3109438955412425346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073556 (3 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056698 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A105427.P3109438955412425346

/-! ## A105427.P267268072276580189

`a(A204562(A213257(n+1))-2)+n` with `a(0)=2`
-/

namespace A105427.P267268072276580189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A204562 (A213257 (n + 1)).toNat - 2).toNat + n

end

end A105427.P267268072276580189

/-! ## A105427.P12683561378755413170

`A204562(A213257(char[n²]+n+1))+n`
-/

namespace A105427.P12683561378755413170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204562 (A213257 ((if ∃ j, f1 j = n then 1 else 0) + n + 1)).toNat + (n : ℤ)

end

end A105427.P12683561378755413170

/-! ## A105427.P17565426018684277338

`∪[A137913(n), A376108(n+1)]`
-/

namespace A105427.P17565426018684277338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137913 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A105427.P17565426018684277338

/-! ## A105427.P15132153831358986574

`∪[A002328(n+1), A376108(n+1)]`
-/

namespace A105427.P15132153831358986574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A105427.P15132153831358986574

/-! ## A105427.P15418931086401376810

`∪[A026442(n+1), A376108(n+1)]`
-/

namespace A105427.P15418931086401376810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A105427.P15418931086401376810

/-! ## A105427.P18288749780218665783

`∪[A037344(n+1), A376108(n+1)]`
-/

namespace A105427.P18288749780218665783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A105427.P18288749780218665783

/-! ## A105427.P3295966742477549845

`∪[A039112(n+1), A376108(n+1)]`
-/

namespace A105427.P3295966742477549845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A105427.P3295966742477549845

/-! ## A105427.P6584976916134960922

`∪[A047362(n+1), A376108(n+1)]`
-/

namespace A105427.P6584976916134960922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A105427.P6584976916134960922

/-!
# A105431: Primes of form R_n + 2 {= (10^n + 17)/9}, R_n being the n-th repunit, i.e., primes consisting of a string of 1's followed by a terminal 3.

The programs for A105431, there is no canonical definition to state claims against.
-/

/-! ## A105431.P13652947193330871805

`A098406(A097683(n+1)+1)`
-/

namespace A105431.P13652947193330871805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 (A097683 (n + 1) + 1).toNat

end

end A105431.P13652947193330871805

/-! ## A105431.P6616625237167154921

`A047855(A097683(n+1)+1)+1`
-/

namespace A105431.P6616625237167154921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 (A097683 (n + 1) + 1).toNat + 1

end

end A105431.P6616625237167154921

/-! ## A105431.P6052601163922948174

`A000042(A097683(n+1)+1)+2`
-/

namespace A105431.P6052601163922948174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A097683 (n + 1) + 1).toNat + 2

end

end A105431.P6052601163922948174

/-! ## A105431.P8380618575090050356

`A002275(A097683(n+1)+1)+2`
-/

namespace A105431.P8380618575090050356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A097683 (n + 1) + 1).toNat + 2

end

end A105431.P8380618575090050356

/-! ## A105431.P5919031469656770190

`A173735(A097683(n+1)+1)-1`
-/

namespace A105431.P5919031469656770190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173735 (A097683 (n + 1) + 1).toNat - 1

end

end A105431.P5919031469656770190

/-!
# A105432: Numbers n such that the near-repdigit number consisting of n-1 1's followed by a terminal 3 (i.e., of the form 111...1113) is composite.

The programs for A105432, there is no canonical definition to state claims against.
-/

/-! ## A105432.P8912645264959876398

`comp[A097683(n+1)]`
-/

namespace A105432.P8912645264959876398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A105432.P8912645264959876398

/-! ## A105432.P236714380852959173

`comp[A056654(n+1)]+1`
-/

namespace A105432.P236714380852959173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A105432.P236714380852959173

/-! ## A105432.P11056605986744875934

`comp[record[A097683(A065648(n))]]`
-/

namespace A105432.P11056605986744875934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097683 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A105432.P11056605986744875934

/-! ## A105432.P14495343397966732008

`comp[record[A097683(A082854(n))]]`
-/

namespace A105432.P14495343397966732008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097683 (A082854 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A105432.P14495343397966732008

/-! ## A105432.P18142700938046353010

`A020725(comp[A056654(n+1)])`
-/

namespace A105432.P18142700938046353010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056654 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A105432.P18142700938046353010

/-! ## A105432.P8434933594954008858

`lt[acot(A307510(n)), A353318(n+1)]`
-/

namespace A105432.P8434933594954008858
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A307510 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353318 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A105432.P8434933594954008858

/-!
# A105434: a(1)=1. a(n+1) = a(n) + (number of terms, from among the first n terms of the sequence, which occur among (d(a(1)),d(a(2)),d(a(3)),...d(a(n))), where d(n) = A000005(n)).

The programs for A105434, there is no canonical definition to state claims against.
-/

/-! ## A105434.P6591106513813424693

`∑[floor(log(A124114(2*(n+1))))]`
-/

namespace A105434.P6591106513813424693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A124114 (2 * (n + 1)) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105434.P6591106513813424693

/-! ## A105434.P4061688483626103373

`∑[∑[A010051(A181817(n+1)+n+1)]]`
-/

namespace A105434.P4061688483626103373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A181817 (n + 1) + (n + 1 : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105434.P4061688483626103373

/-! ## A105434.P13969380979319922419

`∑[∑[A051731(A030722(3*n+4))]]`
-/

namespace A105434.P13969380979319922419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A030722 (3 * n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105434.P13969380979319922419

/-! ## A105434.P9915933254805273280

`∑[∑[A097806(A163864(n+1))]]`
-/

namespace A105434.P9915933254805273280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (A163864 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105434.P9915933254805273280

/-! ## A105434.P12795466140591257056

`∑[∑[A289035(A142398(3*n+4))]]`
-/

namespace A105434.P12795466140591257056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289035 (A142398 (3 * n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105434.P12795466140591257056

/-!
# A105435: Primes which with a 1 prepended remain prime.

The programs for A105435, there is no canonical definition to state claims against.
-/

/-! ## A105435.P16109687762741272143

`p?[A176553(n+1)]`
-/

namespace A105435.P16109687762741272143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105435.P16109687762741272143

/-! ## A105435.P13984818025673198910

`∩[A045331(n+1), A176553(n+1)]`
-/

namespace A105435.P13984818025673198910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105435.P13984818025673198910

/-! ## A105435.P13160359252247465530

`p?[A032664(n+1)]`
-/

namespace A105435.P13160359252247465530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105435.P13160359252247465530

/-! ## A105435.P11435525982516544829

`p?[A166733(n+1)]`
-/

namespace A105435.P11435525982516544829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105435.P11435525982516544829

/-! ## A105435.P5927007377668850167

`∩[A007645(n+1), A032664(n+1)]`
-/

namespace A105435.P5927007377668850167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105435.P5927007377668850167

/-! ## A105435.P17513814724658886644

`∩[A032664(n+1), A040116(n+1)]`
-/

namespace A105435.P17513814724658886644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105435.P17513814724658886644

/-! ## A105435.P9134553848768438104

`∩[A032664(n+1), A045331(n+1)]`
-/

namespace A105435.P9134553848768438104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105435.P9134553848768438104

/-! ## A105435.P6284629129850969458

`∩[A007645(n+1), A166733(n+1)]`
-/

namespace A105435.P6284629129850969458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105435.P6284629129850969458

/-! ## A105435.P9044157066670325798

`∩[A040116(n+1), A166733(n+1)]`
-/

namespace A105435.P9044157066670325798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105435.P9044157066670325798

/-! ## A105435.P10162110890365006409

`∩[A032664(n+1), A279815(n+1)]`
-/

namespace A105435.P10162110890365006409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105435.P10162110890365006409

/-! ## A105435.P9592956015480158233

`∩[A166733(n+1), A380468(n+1)]`
-/

namespace A105435.P9592956015480158233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105435.P9592956015480158233

/-! ## A105435.P6663682294023403447

`∩[A004139(n+1), A032664(n+1)]`
-/

namespace A105435.P6663682294023403447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105435.P6663682294023403447

/-! ## A105435.P3284321691002475264

`∩[A032664(n+1), A045319(n+1)]`
-/

namespace A105435.P3284321691002475264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105435.P3284321691002475264

/-! ## A105435.P4137398027582789730

`∩[A032664(n+1), A065091(n+1)]`
-/

namespace A105435.P4137398027582789730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105435.P4137398027582789730

/-! ## A105435.P10240216370544616202

`∩[A032664(n+1), A106118(n+1)]`
-/

namespace A105435.P10240216370544616202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105435.P10240216370544616202

/-! ## A105435.P16463873743688054664

`∩[A004139(n+1), A166733(n+1)]`
-/

namespace A105435.P16463873743688054664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105435.P16463873743688054664

/-! ## A105435.P15260443723977956843

`∩[A045319(n+1), A166733(n+1)]`
-/

namespace A105435.P15260443723977956843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105435.P15260443723977956843

/-! ## A105435.P3254811634088318376

`∩[A065091(n+1), A166733(n+1)]`
-/

namespace A105435.P3254811634088318376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105435.P3254811634088318376

/-! ## A105435.P12156105018693992221

`∩[A000040(n+1), A032664(n+1)]`
-/

namespace A105435.P12156105018693992221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105435.P12156105018693992221

/-! ## A105435.P16648651921551846102

`∩[A032664(n+1), A051948(n+1)]`
-/

namespace A105435.P16648651921551846102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105435.P16648651921551846102

/-!
# A105438: Triangle, row sums = (Fibonacci numbers - 2).

The programs for A105438, the canonical program `A105438.P3295876938465010097` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105438 has offset 0).

The definition of A105438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105438.P3295876938465010097

`2*A030111(n+1)-A168561(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105438

/-- `2*A030111(n+1)-A168561(n)` -/
def P3295876938465010097.Spec : Prop :=
  ∀ n, P3295876938465010097.a n = A105438 n

theorem P3295876938465010097.correct : P3295876938465010097.Spec := by
  intro n
  simp only [A105438]

end A105438

/-! ## A105438.P15238980634078329904

`A073044(comp[∑[n]]+1)`
-/

namespace A105438.P15238980634078329904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073044 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A105438.P15238980634078329904

namespace A105438

/-- `A073044(comp[∑[n]]+1)` -/
def P15238980634078329904.Spec : Prop :=
  ∀ n, P15238980634078329904.a n = A105438 n

end A105438

/-! ## A105438.P6944772140404425064

`A153764(A014132(n+1))+A030111(n+1)`
-/

namespace A105438.P6944772140404425064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (A014132 (n + 1)).toNat + A030111 (n + 1)

end

end A105438.P6944772140404425064

namespace A105438

/-- `A153764(A014132(n+1))+A030111(n+1)` -/
def P6944772140404425064.Spec : Prop :=
  ∀ n, P6944772140404425064.a n = A105438 n

end A105438

/-! ## A105438.P14016476169196573040

`A194005(A061579(n+1))+A153764(A014132(n+1))`
-/

namespace A105438.P14016476169196573040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 (A061579 (n + 1)).toNat + A153764 (A014132 (n + 1)).toNat

end

end A105438.P14016476169196573040

namespace A105438

/-- `A194005(A061579(n+1))+A153764(A014132(n+1))` -/
def P14016476169196573040.Spec : Prop :=
  ∀ n, P14016476169196573040.a n = A105438 n

end A105438

/-! ## A105438.P15988482900680283588

`A153764(A014132(n+1))+A046854(A007401(n+2))`
-/

namespace A105438.P15988482900680283588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (A014132 (n + 1)).toNat + A046854 (A007401 (n + 2)).toNat

end

end A105438.P15988482900680283588

namespace A105438

/-- `A153764(A014132(n+1))+A046854(A007401(n+2))` -/
def P15988482900680283588.Spec : Prop :=
  ∀ n, P15988482900680283588.a n = A105438 n

end A105438

/-! ## A105438.P1988025883385604470

`A153764(A014132(n+1))+A046854(A181133(n+2))`
-/

namespace A105438.P1988025883385604470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (A014132 (n + 1)).toNat + A046854 (A181133 (n + 2)).toNat

end

end A105438.P1988025883385604470

namespace A105438

/-- `A153764(A014132(n+1))+A046854(A181133(n+2))` -/
def P1988025883385604470.Spec : Prop :=
  ∀ n, P1988025883385604470.a n = A105438 n

end A105438

/-! ## A105438.P3688456028346661229

`A334745(A214604(n+1))+A153764(A014132(n+1))`
-/

namespace A105438.P3688456028346661229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334745 (A214604 (n + 1)).toNat + A153764 (A014132 (n + 1)).toNat

end

end A105438.P3688456028346661229

namespace A105438

/-- `A334745(A214604(n+1))+A153764(A014132(n+1))` -/
def P3688456028346661229.Spec : Prop :=
  ∀ n, P3688456028346661229.a n = A105438 n

end A105438

/-! ## A105438.P13347241462475291350

`A334745(A214661(n+2))+A153764(A014132(n+1))`
-/

namespace A105438.P13347241462475291350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334745 (A214661 (n + 2)).toNat + A153764 (A014132 (n + 1)).toNat

end

end A105438.P13347241462475291350

namespace A105438

/-- `A334745(A214661(n+2))+A153764(A014132(n+1))` -/
def P13347241462475291350.Spec : Prop :=
  ∀ n, P13347241462475291350.a n = A105438 n

end A105438

/-! ## A105438.P7898071323120997359

`A168561(n)+A005843(A030111(n+1)-A168561(n))`
-/

namespace A105438.P7898071323120997359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 n + A005843 (A030111 (n + 1) - A168561 n).toNat

end

end A105438.P7898071323120997359

namespace A105438

/-- `A168561(n)+A005843(A030111(n+1)-A168561(n))` -/
def P7898071323120997359.Spec : Prop :=
  ∀ n, P7898071323120997359.a n = A105438 n

end A105438

/-! ## A105438.P10004194119534909655

`A005843(A030111(n+1))-A168561(n)`
-/

namespace A105438.P10004194119534909655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A030111 (n + 1)).toNat - A168561 n

end

end A105438.P10004194119534909655

namespace A105438

/-- `A005843(A030111(n+1))-A168561(n)` -/
def P10004194119534909655.Spec : Prop :=
  ∀ n, P10004194119534909655.a n = A105438 n

end A105438

/-!
# A105439: a(n) = the smallest prime p such that p+2 and q+2 are prime; q is the n-th prime after p.

The programs for A105439, there is no canonical definition to state claims against.
-/

/-! ## A105439.P11359808425850696554

`A143250(A143227(2^n)+3)`
-/

namespace A105439.P11359808425850696554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143250 (A143227 (2 ^ n) + 3).toNat

end

end A105439.P11359808425850696554

/-! ## A105439.P1071481432837330237

`A002373(23*2^n-1-A062157(n))`
-/

namespace A105439.P1071481432837330237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002373 ((23 * 2 ^ n : ℤ) - 1 - A062157 n).toNat

end

end A105439.P1071481432837330237

/-! ## A105439.P7206059986156505827

`A020481(A030078(n+1)-∑[round(n²/12)]+2)`
-/

namespace A105439.P7206059986156505827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (A030078 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A105439.P7206059986156505827

/-! ## A105439.P9508437956927106340

`A020481(A351104(n+2)-A257532(n+1))`
-/

namespace A105439.P9508437956927106340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (A351104 (n + 2) - A257532 (n + 1)).toNat

end

end A105439.P9508437956927106340

/-!
# A105440: Highly cototient numbers that are prime, or intersection of A000040 and A100827.

The programs for A105440, there is no canonical definition to state claims against.
-/

/-! ## A105440.P16061475676292036355

`p?[A100827(n+1)]`
-/

namespace A105440.P16061475676292036355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105440.P16061475676292036355

/-! ## A105440.P5623880100696538376

`p?[record[A100827(A328399(n))]]`
-/

namespace A105440.P5623880100696538376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100827 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105440.P5623880100696538376

/-! ## A105440.P3290315015701870426

`p?[A033999(n)*A100827(A328399(n))]`
-/

namespace A105440.P3290315015701870426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A100827 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105440.P3290315015701870426

/-! ## A105440.P13849433397322549442

`p?[A059841(n)*A100827(A328399(n))]`
-/

namespace A105440.P13849433397322549442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A100827 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105440.P13849433397322549442

/-! ## A105440.P3969976238677672141

`p?[A009001(2*n)*A100827(A328399(n))]`
-/

namespace A105440.P3969976238677672141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A100827 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105440.P3969976238677672141

/-! ## A105440.P6300437064592418236

`p?[A087960(2*n)*A100827(A328399(n))]`
-/

namespace A105440.P6300437064592418236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A100827 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105440.P6300437064592418236

/-! ## A105440.P15519278189620344479

`p?[A010892(3*n)*A100827(A328399(n))]`
-/

namespace A105440.P15519278189620344479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) * A100827 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105440.P15519278189620344479

/-! ## A105440.P3067758106967883129

`p?[A000034(n)*A100827(A328399(n))]`
-/

namespace A105440.P3067758106967883129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A100827 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105440.P3067758106967883129

/-! ## A105440.P7409690963784892732

`p?[record[A100827(A128227(n))]]`
-/

namespace A105440.P7409690963784892732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100827 (A128227 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105440.P7409690963784892732

/-! ## A105440.P11444541216737941375

`∩[A100827(n+1), A105875(n+1)]`
-/

namespace A105440.P11444541216737941375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105440.P11444541216737941375

/-!
# A105441: Numbers with at least two odd prime factors (not necessarily distinct).

The programs for A105441, the canonical program `A105441.P5710754477606272407` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105441 has offset 1).

The definition of A105441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105441.P11236785420157094698

`lt[2, A327640(n)]`
-/

namespace A105441.P11236785420157094698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A105441.P11236785420157094698

namespace A105441

/-- `lt[2, A327640(n)]` -/
def P11236785420157094698.Spec : Prop :=
  ∀ n, (P11236785420157094698.a n : ℤ) = A105441 (n + 1)

end A105441

/-! ## A105441.P6791592712805241266

`A188633(n+1)/4`
-/

namespace A105441.P6791592712805241266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188633 (n + 1) : ℚ) / 4

end

end A105441.P6791592712805241266

namespace A105441

/-- `A188633(n+1)/4` -/
def P6791592712805241266.Spec : Prop :=
  ∀ n, P6791592712805241266.a n = (A105441 (n + 1) : ℚ)

end A105441

/-! ## A105441.P12619228727741924477

`lt[0, A325135(n+1)]+1`
-/

namespace A105441.P12619228727741924477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A105441.P12619228727741924477

namespace A105441

/-- `lt[0, A325135(n+1)]+1` -/
def P12619228727741924477.Spec : Prop :=
  ∀ n, (P12619228727741924477.a n : ℤ) = A105441 (n + 1)

end A105441

/-! ## A105441.P17316486729294925566

`lt[1, A087436(n+1)]+1`
-/

namespace A105441.P17316486729294925566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A105441.P17316486729294925566

namespace A105441

/-- `lt[1, A087436(n+1)]+1` -/
def P17316486729294925566.Spec : Prop :=
  ∀ n, (P17316486729294925566.a n : ℤ) = A105441 (n + 1)

end A105441

/-! ## A105441.P11317983124417393871

`lt[1, A257990(n+1)]+1`
-/

namespace A105441.P11317983124417393871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A105441.P11317983124417393871

namespace A105441

/-- `lt[1, A257990(n+1)]+1` -/
def P11317983124417393871.Spec : Prop :=
  ∀ n, (P11317983124417393871.a n : ℤ) = A105441 (n + 1)

end A105441

/-! ## A105441.P8942827318269414561

`eq[0, A304438(n+2)]+2`
-/

namespace A105441.P8942827318269414561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A105441.P8942827318269414561

namespace A105441

/-- `eq[0, A304438(n+2)]+2` -/
def P8942827318269414561.Spec : Prop :=
  ∀ n, (P8942827318269414561.a n : ℤ) = A105441 (n + 1)

end A105441

/-! ## A105441.P17438603040768918383

`lt[1, A325133(n+1)]+1`
-/

namespace A105441.P17438603040768918383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325133 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A105441.P17438603040768918383

namespace A105441

/-- `lt[1, A325133(n+1)]+1` -/
def P17438603040768918383.Spec : Prop :=
  ∀ n, (P17438603040768918383.a n : ℤ) = A105441 (n + 1)

end A105441

/-! ## A105441.P2513433600952154222

`lt[1, A325355(n+1)]+1`
-/

namespace A105441.P2513433600952154222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325355 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A105441.P2513433600952154222

namespace A105441

/-- `lt[1, A325355(n+1)]+1` -/
def P2513433600952154222.Spec : Prop :=
  ∀ n, (P2513433600952154222.a n : ℤ) = A105441 (n + 1)

end A105441

/-! ## A105441.P5710754477606272407

`lt[A340371(n+1), 1]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105441

/-- `lt[A340371(n+1), 1]+1` -/
def P5710754477606272407.Spec : Prop :=
  ∀ n, (P5710754477606272407.a n : ℤ) = A105441 (n + 1)

theorem P5710754477606272407.correct : P5710754477606272407.Spec := by
  intro n
  simp only [A105441, Nat.add_sub_cancel]

end A105441

/-! ## A105441.P14201633118257278131

`lt[2, A301957(n+1)]+1`
-/

namespace A105441.P14201633118257278131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301957 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A105441.P14201633118257278131

namespace A105441

/-- `lt[2, A301957(n+1)]+1` -/
def P14201633118257278131.Spec : Prop :=
  ∀ n, (P14201633118257278131.a n : ℤ) = A105441 (n + 1)

end A105441

/-! ## A105441.P17943764992545619808

`lt[2, A327657(n+1)]+1`
-/

namespace A105441.P17943764992545619808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A105441.P17943764992545619808

namespace A105441

/-- `lt[2, A327657(n+1)]+1` -/
def P17943764992545619808.Spec : Prop :=
  ∀ n, (P17943764992545619808.a n : ℤ) = A105441 (n + 1)

end A105441

/-! ## A105441.P17904312122044523871

`lt[2, A336158(n+1)]+1`
-/

namespace A105441.P17904312122044523871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A105441.P17904312122044523871

namespace A105441

/-- `lt[2, A336158(n+1)]+1` -/
def P17904312122044523871.Spec : Prop :=
  ∀ n, (P17904312122044523871.a n : ℤ) = A105441 (n + 1)

end A105441

/-! ## A105441.P4560471313379593354

`eq[2, 2%A318874(n+1)]+1`
-/

namespace A105441.P4560471313379593354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A318874 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A105441.P4560471313379593354

namespace A105441

/-- `eq[2, 2%A318874(n+1)]+1` -/
def P4560471313379593354.Spec : Prop :=
  ∀ n, (P4560471313379593354.a n : ℤ) = A105441 (n + 1)

end A105441

/-! ## A105441.P12625738583854180487

`lt[val(n+1, 2)+1, A001222(n+1)]+1`
-/

namespace A105441.P12625738583854180487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A105441.P12625738583854180487

namespace A105441

/-- `lt[val(n+1, 2)+1, A001222(n+1)]+1` -/
def P12625738583854180487.Spec : Prop :=
  ∀ n, (P12625738583854180487.a n : ℤ) = A105441 (n + 1)

end A105441

/-! ## A105441.P11353654482701476654

`lt[1, A001222(A000265(n+1))]+1`
-/

namespace A105441.P11353654482701476654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000265 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A105441.P11353654482701476654

namespace A105441

/-- `lt[1, A001222(A000265(n+1))]+1` -/
def P11353654482701476654.Spec : Prop :=
  ∀ n, (P11353654482701476654.a n : ℤ) = A105441 (n + 1)

end A105441

/-! ## A105441.P16745558438948931890

`∪[A177733(n+1), A009177(n+1)]`
-/

namespace A105441.P16745558438948931890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A105441.P16745558438948931890

namespace A105441

/-- `∪[A177733(n+1), A009177(n+1)]` -/
def P16745558438948931890.Spec : Prop :=
  ∀ n, (P16745558438948931890.a n : ℤ) = A105441 (n + 1)

end A105441

/-! ## A105441.P2795026170655104894

`∪[A177733(n+1), A118882(n+1)]`
-/

namespace A105441.P2795026170655104894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A105441.P2795026170655104894

namespace A105441

/-- `∪[A177733(n+1), A118882(n+1)]` -/
def P2795026170655104894.Spec : Prop :=
  ∀ n, (P2795026170655104894.a n : ℤ) = A105441 (n + 1)

end A105441

/-! ## A105441.P15298290479452804477

`∪[A038838(n+1), A285800(n+1)]`
-/

namespace A105441.P15298290479452804477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A105441.P15298290479452804477

namespace A105441

/-- `∪[A038838(n+1), A285800(n+1)]` -/
def P15298290479452804477.Spec : Prop :=
  ∀ n, (P15298290479452804477.a n : ℤ) = A105441 (n + 1)

end A105441

/-! ## A105441.P3572527257007472272

`lt[A006530(n+1), A003958(n+1)]+1`
-/

namespace A105441.P3572527257007472272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A105441.P3572527257007472272

namespace A105441

/-- `lt[A006530(n+1), A003958(n+1)]+1` -/
def P3572527257007472272.Spec : Prop :=
  ∀ n, (P3572527257007472272.a n : ℤ) = A105441 (n + 1)

end A105441

/-! ## A105441.P15739387504171385364

`filter[A347202(n+1), A202238(#)]`
-/

namespace A105441.P15739387504171385364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A105441.P15739387504171385364

namespace A105441

/-- `filter[A347202(n+1), A202238(#)]` -/
def P15739387504171385364.Spec : Prop :=
  ∀ n, P15739387504171385364.a n = A105441 (n + 1)

end A105441

/-!
# A105442: Numbers with at least two odd prime factors (not necessarily distinct) such that in binary representation all divisors of n are contained in n.

The programs for A105442, there is no canonical definition to state claims against.
-/

/-! ## A105442.P11102653674724161694

`∩[A105441(n+1), A123345(n+1)]`
-/

namespace A105442.P11102653674724161694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105442.P11102653674724161694

/-!
# A105444: a(n) = the smallest prime p such that p+6 and q+6 are prime; q is the n-th prime after p.

The programs for A105444, there is no canonical definition to state claims against.
-/

/-! ## A105444.P973545901313712198

`or(5, A336121(A255224(n+1)))`
-/

namespace A105444.P973545901313712198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 (A336121 (A255224 (n + 1)).toNat)

end

end A105444.P973545901313712198

/-! ## A105444.P10289834521889944585

`p?[A001222(A131516(n)+4)+3]`
-/

namespace A105444.P10289834521889944585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A131516 n + 4).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105444.P10289834521889944585

/-! ## A105444.P7836484198477755618

`or(5, A000120(A173279(n)))`
-/

namespace A105444.P7836484198477755618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 (A000120 (A173279 n).toNat)

end

end A105444.P7836484198477755618

/-! ## A105444.P11307383618116407013

`or(5, A097026(A119440(n)))`
-/

namespace A105444.P11307383618116407013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 (A097026 (A119440 n).toNat)

end

end A105444.P11307383618116407013

/-! ## A105444.P13078248811758990619

`or(A010718(2*(n+2)), A368752(A173279(n)))`
-/

namespace A105444.P13078248811758990619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010718 (2 * (n + 2))) (A368752 (A173279 n).toNat)

end

end A105444.P13078248811758990619

/-!
# A105445: a(n) = the smallest prime p such that p+8 and q+8 are prime; q is the n-th prime after p.

The programs for A105445, there is no canonical definition to state claims against.
-/

/-! ## A105445.P5734158157316941099

`A105439(A136833(n+1)+1)`
-/

namespace A105445.P5734158157316941099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105439 (A136833 (n + 1) + 1).toNat

end

end A105445.P5734158157316941099

/-!
# A105446: Number of symbols in the Roman Fibonacci number representation of n.

The programs for A105446, there is no canonical definition to state claims against.
-/

/-! ## A105446.P3497065695892414079

`A385393(A304100(n+1))`
-/

namespace A105446.P3497065695892414079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385393 (A304100 (n + 1)).toNat

end

end A105446.P3497065695892414079

/-! ## A105446.P10342200501170831779

`A070101(A003434(n+4))+A058978(n+1)`
-/

namespace A105446.P10342200501170831779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070101 (A003434 (n + 4)).toNat + A058978 (n + 1)

end

end A105446.P10342200501170831779

/-! ## A105446.P6482791986917793939

`A058978(n+1)+A045698(A251717(3*n+1))`
-/

namespace A105446.P6482791986917793939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058978 (n + 1) + A045698 (A251717 (3 * n + 1)).toNat

end

end A105446.P6482791986917793939

/-! ## A105446.P869817527558401078

`A058978(n+1)+char[A003072(A250468(n+1)+1)-1]`
-/

namespace A105446.P869817527558401078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (A250468 (n + 1) + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058978 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A105446.P869817527558401078

/-! ## A105446.P14400149702177350851

`A058978(n+1)+char[A003072(A055635(3*(n+1))+1)-1]`
-/

namespace A105446.P14400149702177350851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (A055635 (3 * (n + 1)) + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058978 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A105446.P14400149702177350851

/-! ## A105446.P3218565631357004845

`and(A058978(n+1), A134517(A087656(n+6)))`
-/

namespace A105446.P3218565631357004845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058978 (n + 1)) (A134517 (A087656 (n + 6)).toNat)

end

end A105446.P3218565631357004845

/-! ## A105446.P12372815806515736251

`A058978(n+1)+A010051(A005899(2*n+1))`
-/

namespace A105446.P12372815806515736251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058978 (n + 1) + A010051 (A005899 (2 * n + 1)).toNat

end

end A105446.P12372815806515736251

/-! ## A105446.P2383493784048859639

`A058978(n+1)+A023533(A236568(2*n+3))`
-/

namespace A105446.P2383493784048859639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058978 (n + 1) + A023533 (A236568 (2 * n + 3)).toNat

end

end A105446.P2383493784048859639

/-! ## A105446.P4625881744796697017

`gcd(A057102(A049103(n+1)), A058978(n+1))`
-/

namespace A105446.P4625881744796697017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057102 (A049103 (n + 1)).toNat) (A058978 (n + 1))

end

end A105446.P4625881744796697017

/-! ## A105446.P13771527054011160218

`A002260(A058978(n+1)+A000384(n))`
-/

namespace A105446.P13771527054011160218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A058978 (n + 1) + A000384 n).toNat

end

end A105446.P13771527054011160218

/-!
# A105447: Positive integers whose representation as Roman Fibonacci numbers has exactly two symbols.

The programs for A105447, there is no canonical definition to state claims against.
-/

/-! ## A105447.P4791453785640893970

`eq[2, A105446(n+1)]+1`
-/

namespace A105447.P4791453785640893970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105446 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A105447.P4791453785640893970

/-! ## A105447.P11833736474006487759

`eq[2, A105446(A028310(n))]`
-/

namespace A105447.P11833736474006487759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105446 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105447.P11833736474006487759

/-! ## A105447.P11649975109953643621

`A020725(eq[2, A105446(n+1)])`
-/

namespace A105447.P11649975109953643621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A105447.P11649975109953643621

/-! ## A105447.P7188555153824108038

`A065475(eq[2, A105446(n+1)])`
-/

namespace A105447.P7188555153824108038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A105447.P7188555153824108038

/-! ## A105447.P18149368662738018513

`eq[2, A105446(A233583(n+1))]`
-/

namespace A105447.P18149368662738018513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105446 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105447.P18149368662738018513

/-!
# A105448: Positive integers whose representation as Roman Fibonacci numbers has exactly three symbols.

The programs for A105448, there is no canonical definition to state claims against.
-/

/-! ## A105448.P12577553148948368132

`or(A151729(A034579(n+1)), A272635(n+1))`
-/

namespace A105448.P12577553148948368132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151729 (A034579 (n + 1)).toNat) (A272635 (n + 1))

end

end A105448.P12577553148948368132

/-! ## A105448.P17145029524898559111

`or(A151729(A034581(n+1)), A272635(n+1))`
-/

namespace A105448.P17145029524898559111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151729 (A034581 (n + 1)).toNat) (A272635 (n + 1))

end

end A105448.P17145029524898559111

/-! ## A105448.P8005155083402743741

`A272635(∑[A034579(n+1)!])`
-/

namespace A105448.P8005155083402743741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A034579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272635 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105448.P8005155083402743741

/-! ## A105448.P14090459284531143722

`A272635(∑[A034581(n+1)!])`
-/

namespace A105448.P14090459284531143722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A034581 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272635 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105448.P14090459284531143722

/-! ## A105448.P4683750584878015277

`A034579(n+1)+lt[2, A105446(n+1)]+1`
-/

namespace A105448.P4683750584878015277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034579 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ)

end

end A105448.P4683750584878015277

/-!
# A105449: Positive integers whose representation as Roman Fibonacci numbers has exactly four symbols.

The programs for A105449, there is no canonical definition to state claims against.
-/

/-! ## A105449.P16002931760966286063

`eq[A311662(n+3), A313741(n)]`
-/

namespace A105449.P16002931760966286063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311662 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105449.P16002931760966286063

/-!
# A105450: a(n) = binomial(n+5,6) + binomial(n+3,3) + binomial(n+2,3) + binomial(n-1,1).

The programs for A105450, the canonical program `A105450.P271644177565389064` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105450 has offset 0).

The definition of A105450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105450.P271644177565389064

`∑[A027658(n)+A000124(n)]-2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105450

/-- `∑[A027658(n)+A000124(n)]-2` -/
def P271644177565389064.Spec : Prop :=
  ∀ n, P271644177565389064.a n = A105450 n

theorem P271644177565389064.correct : P271644177565389064.Spec := by
  intro n
  simp only [A105450]

end A105450

/-! ## A105450.P5194099328852529173

`∑[(A027658(n)+A000124(n))*A057427(n)]`
-/

namespace A105450.P5194099328852529173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027658 n + A000124 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105450.P5194099328852529173

namespace A105450

/-- `∑[(A027658(n)+A000124(n))*A057427(n)]` -/
def P5194099328852529173.Spec : Prop :=
  ∀ n, P5194099328852529173.a n = A105450 n

end A105450

/-! ## A105450.P15651712205663933107

`∑[(A027658(n)+A000124(n))%A000156(n)]`
-/

namespace A105450.P15651712205663933107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027658 n + A000124 n) (A000156 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105450.P15651712205663933107

namespace A105450

/-- `∑[(A027658(n)+A000124(n))%A000156(n)]` -/
def P15651712205663933107.Spec : Prop :=
  ∀ n, P15651712205663933107.a n = A105450 n

end A105450

/-! ## A105450.P2279033679972757829

`A280560(2*n+1)+∑[A027658(n)+A000124(n)]`
-/

namespace A105450.P2279033679972757829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027658 n + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105450.P2279033679972757829

namespace A105450

/-- `A280560(2*n+1)+∑[A027658(n)+A000124(n)]` -/
def P2279033679972757829.Spec : Prop :=
  ∀ n, P2279033679972757829.a n = A105450 n

end A105450

/-! ## A105450.P10931048791349852371

`∑[(A027658(n)+A000124(n))*A165586(n²)]`
-/

namespace A105450.P10931048791349852371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027658 n + A000124 n) * A165586 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105450.P10931048791349852371

namespace A105450

/-- `∑[(A027658(n)+A000124(n))*A165586(n²)]` -/
def P10931048791349852371.Spec : Prop :=
  ∀ n, P10931048791349852371.a n = A105450 n

end A105450

/-!
# A105452: a(n) = numerator of (7*n - 1)/3.

The programs for A105452, the canonical program `A105452.P17047216236829674000` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105452 has offset 1).

The definition of A105452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105452.P17047216236829674000

`2*a(n-3)-a(n-6)` with `a(0)=2, a(1)=13, a(2)=20, a(3)=9, a(4)=34, a(5)=41`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105452

/-- `2*a(n-3)-a(n-6)` -/
def P17047216236829674000.Spec : Prop :=
  ∀ n, P17047216236829674000.a n = A105452 (n + 1)

theorem P17047216236829674000.correct : P17047216236829674000.Spec := by
  intro n
  simp only [A105452, Nat.add_sub_cancel]

end A105452

/-! ## A105452.P10853594092041133089

`lcm(3, 7*n+6)/3`
-/

namespace A105452.P10853594092041133089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (7 * n + 6) : ℚ) / 3

end

end A105452.P10853594092041133089

namespace A105452

/-- `lcm(3, 7*n+6)/3` -/
def P10853594092041133089.Spec : Prop :=
  ∀ n, P10853594092041133089.a n = (A105452 (n + 1) : ℚ)

end A105452

/-! ## A105452.P1157748371595956150

`(7*n+6)/gcd(3, n)`
-/

namespace A105452.P1157748371595956150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * n + 6 : ℚ) / (Nat.gcd 3 n : ℚ)

end

end A105452.P1157748371595956150

namespace A105452

/-- `(7*n+6)/gcd(3, n)` -/
def P1157748371595956150.Spec : Prop :=
  ∀ n, P1157748371595956150.a n = (A105452 (n + 1) : ℚ)

end A105452

/-! ## A105452.P10046121382458518825

`(8*n+6-n)/A109007(n)`
-/

namespace A105452.P10046121382458518825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * n + 6 : ℤ) - (n : ℤ) : ℚ) / (A109007 n : ℚ)

end

end A105452.P10046121382458518825

namespace A105452

/-- `(8*n+6-n)/A109007(n)` -/
def P10046121382458518825.Spec : Prop :=
  ∀ n, P10046121382458518825.a n = (A105452 (n + 1) : ℚ)

end A105452

/-! ## A105452.P4409350648158938753

`1/A109007(n)*A017053(n)`
-/

namespace A105452.P4409350648158938753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A109007 n : ℚ) * (A017053 n : ℚ)

end

end A105452.P4409350648158938753

namespace A105452

/-- `1/A109007(n)*A017053(n)` -/
def P4409350648158938753.Spec : Prop :=
  ∀ n, P4409350648158938753.a n = (A105452 (n + 1) : ℚ)

end A105452

/-! ## A105452.P12464000730227645215

`A017053(n)/A281098(A020639(2*n+3))`
-/

namespace A105452.P12464000730227645215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017053 n : ℚ) / (A281098 (A020639 (2 * n + 3)).toNat : ℚ)

end

end A105452.P12464000730227645215

namespace A105452

/-- `A017053(n)/A281098(A020639(2*n+3))` -/
def P12464000730227645215.Spec : Prop :=
  ∀ n, P12464000730227645215.a n = (A105452 (n + 1) : ℚ)

end A105452

/-! ## A105452.P8660619228228540916

`A349407(2*(n+1))+n+1`
-/

namespace A105452.P8660619228228540916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349407 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A105452.P8660619228228540916

namespace A105452

/-- `A349407(2*(n+1))+n+1` -/
def P8660619228228540916.Spec : Prop :=
  ∀ n, P8660619228228540916.a n = A105452 (n + 1)

end A105452

/-! ## A105452.P3840581398492322623

`A329494(2*n+1)-A051176(n)`
-/

namespace A105452.P3840581398492322623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329494 (2 * n + 1) - A051176 n

end

end A105452.P3840581398492322623

namespace A105452

/-- `A329494(2*n+1)-A051176(n)` -/
def P3840581398492322623.Spec : Prop :=
  ∀ n, P3840581398492322623.a n = A105452 (n + 1)

end A105452

/-! ## A105452.P11782350073508642277

`A194767(2*n+1)-n*A146535(2*(n+1))`
-/

namespace A105452.P11782350073508642277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194767 (2 * n + 1) - (n : ℤ) * A146535 (2 * (n + 1))

end

end A105452.P11782350073508642277

namespace A105452

/-- `A194767(2*n+1)-n*A146535(2*(n+1))` -/
def P11782350073508642277.Spec : Prop :=
  ∀ n, P11782350073508642277.a n = A105452 (n + 1)

end A105452

/-! ## A105452.P9090852769981693867

`A005843(A350515(2*n+1))+n+2`
-/

namespace A105452.P9090852769981693867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A350515 (2 * n + 1)).toNat + (n + 2 : ℤ)

end

end A105452.P9090852769981693867

namespace A105452

/-- `A005843(A350515(2*n+1))+n+2` -/
def P9090852769981693867.Spec : Prop :=
  ∀ n, P9090852769981693867.a n = A105452 (n + 1)

end A105452

/-! ## A105452.P12579838407308727722

`A145064(7*n+4)`
-/

namespace A105452.P12579838407308727722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (7 * n + 4)

end

end A105452.P12579838407308727722

namespace A105452

/-- `A145064(7*n+4)` -/
def P12579838407308727722.Spec : Prop :=
  ∀ n, P12579838407308727722.a n = A105452 (n + 1)

end A105452

/-! ## A105452.P8899002116102759137

`A051176(7*n+6)`
-/

namespace A105452.P8899002116102759137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (7 * n + 6)

end

end A105452.P8899002116102759137

namespace A105452

/-- `A051176(7*n+6)` -/
def P8899002116102759137.Spec : Prop :=
  ∀ n, P8899002116102759137.a n = A105452 (n + 1)

end A105452

/-! ## A105452.P505955921767631857

`gcd(7*n+6, A000292(7*n+6))`
-/

namespace A105452.P505955921767631857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (7 * n + 6 : ℤ) (A000292 (7 * n + 6))

end

end A105452.P505955921767631857

namespace A105452

/-- `gcd(7*n+6, A000292(7*n+6))` -/
def P505955921767631857.Spec : Prop :=
  ∀ n, (P505955921767631857.a n : ℤ) = A105452 (n + 1)

end A105452

/-! ## A105452.P7413229903538999442

`A051176(A017053(n)+n)-A051176(n)`
-/

namespace A105452.P7413229903538999442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A017053 n + (n : ℤ)).toNat - A051176 n

end

end A105452.P7413229903538999442

namespace A105452

/-- `A051176(A017053(n)+n)-A051176(n)` -/
def P7413229903538999442.Spec : Prop :=
  ∀ n, P7413229903538999442.a n = A105452 (n + 1)

end A105452

/-! ## A105452.P12600291156863256179

`A106610(2*A017377(n)+n)`
-/

namespace A105452.P12600291156863256179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (2 * A017377 n + (n : ℤ)).toNat

end

end A105452.P12600291156863256179

namespace A105452

/-- `A106610(2*A017377(n)+n)` -/
def P12600291156863256179.Spec : Prop :=
  ∀ n, P12600291156863256179.a n = A105452 (n + 1)

end A105452

/-! ## A105452.P6765648120783295764

`A106610(A017377(n)+A017377(n)+n)`
-/

namespace A105452.P6765648120783295764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A017377 n + (A017377 n + (n : ℤ))).toNat

end

end A105452.P6765648120783295764

namespace A105452

/-- `A106610(A017377(n)+A017377(n)+n)` -/
def P6765648120783295764.Spec : Prop :=
  ∀ n, P6765648120783295764.a n = A105452 (n + 1)

end A105452

/-! ## A105452.P14334812226608975438

`A185727(A017041(2*n+1))`
-/

namespace A105452.P14334812226608975438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185727 (A017041 (2 * n + 1)).toNat

end

end A105452.P14334812226608975438

namespace A105452

/-- `A185727(A017041(2*n+1))` -/
def P14334812226608975438.Spec : Prop :=
  ∀ n, P14334812226608975438.a n = A105452 (n + 1)

end A105452

/-! ## A105452.P3577082587949010272

`A051176(2*A017053(n))/2`
-/

namespace A105452.P3577082587949010272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051176 (2 * A017053 n).toNat : ℚ) / 2

end

end A105452.P3577082587949010272

namespace A105452

/-- `A051176(2*A017053(n))/2` -/
def P3577082587949010272.Spec : Prop :=
  ∀ n, P3577082587949010272.a n = (A105452 (n + 1) : ℚ)

end A105452

/-! ## A105452.P9862131165254919736

`A060789(A016969(2*n+1)+2*n+1)`
-/

namespace A105452.P9862131165254919736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A016969 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A105452.P9862131165254919736

namespace A105452

/-- `A060789(A016969(2*n+1)+2*n+1)` -/
def P9862131165254919736.Spec : Prop :=
  ∀ n, P9862131165254919736.a n = A105452 (n + 1)

end A105452

/-! ## A105452.P876871843560618807

`A185727(A016969(2*n+1)+2*n+1)`
-/

namespace A105452.P876871843560618807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185727 (A016969 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A105452.P876871843560618807

namespace A105452

/-- `A185727(A016969(2*n+1)+2*n+1)` -/
def P876871843560618807.Spec : Prop :=
  ∀ n, P876871843560618807.a n = A105452 (n + 1)

end A105452

/-!
# A105454: Numbers k such that k*prime(k)+(k+1)*prime(k+1) is prime.

The programs for A105454, there is no canonical definition to state claims against.
-/

/-! ## A105454.P4258844029726973998

`eq[2, A000005(A152117(n+1))]+1`
-/

namespace A105454.P4258844029726973998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A152117 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A105454.P4258844029726973998

/-! ## A105454.P3411811972229510529

`eq[1, A001222(A152117(n+2))]+2`
-/

namespace A105454.P3411811972229510529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A152117 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A105454.P3411811972229510529

/-! ## A105454.P17281983166017282878

`eq[2, A000005(A152117(A028310(n)))]`
-/

namespace A105454.P17281983166017282878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A152117 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105454.P17281983166017282878

/-! ## A105454.P721852502368280108

`eq[1, A001222(A152117(A233583(n+1)))]`
-/

namespace A105454.P721852502368280108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A152117 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105454.P721852502368280108

/-! ## A105454.P4253207077846737421

`lt[A000040(n+1), A020639(A152117(n+1))]+1`
-/

namespace A105454.P4253207077846737421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A152117 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A105454.P4253207077846737421

/-!
# A105455: Numbers k such that k*prime(k)+(k+1)*prime(k+1)+(k+2)*prime(k+2) is prime.

The programs for A105455, there is no canonical definition to state claims against.
-/

/-! ## A105455.P7634446042092722001

`eq[A005811(A014635(n)), A040008(n)]`
-/

namespace A105455.P7634446042092722001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A014635 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105455.P7634446042092722001

/-! ## A105455.P11297848048673679713

`eq[A000035(A011795(n)), A057979(n)]`
-/

namespace A105455.P11297848048673679713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A011795 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105455.P11297848048673679713

/-! ## A105455.P15107214339149089462

`eq[A000035(A011795(n)), A124625(n)]`
-/

namespace A105455.P15107214339149089462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A011795 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105455.P15107214339149089462

/-! ## A105455.P7483783625030659187

`eq[A057979(A011795(n)+1), A057979(n)]`
-/

namespace A105455.P7483783625030659187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A011795 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105455.P7483783625030659187

/-! ## A105455.P132561995160530282

`eq[A124625(A011795(n)+1), A124625(n)]`
-/

namespace A105455.P132561995160530282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A011795 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105455.P132561995160530282

/-!
# A105456: Number of irregular primes less than 2^n.

The programs for A105456, there is no canonical definition to state claims against.
-/

/-! ## A105456.P17217819088409646148

`A351908(A077943(n+1))`
-/

namespace A105456.P17217819088409646148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (A077943 (n + 1)).toNat

end

end A105456.P17217819088409646148

/-! ## A105456.P3673248536745305232

`A326533(A000602(n))-A009998(n)`
-/

namespace A105456.P3673248536745305232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326533 (A000602 n).toNat - A009998 n

end

end A105456.P3673248536745305232

/-! ## A105456.P15409477884860339118

`A007827(n)-A328029(A007827(n))`
-/

namespace A105456.P15409477884860339118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007827 n - A328029 (A007827 n).toNat

end

end A105456.P15409477884860339118

/-! ## A105456.P5505552931087142419

`A333919(A133263(n))%A008930(n)`
-/

namespace A105456.P5505552931087142419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333919 (A133263 n).toNat) (A008930 n)

end

end A105456.P5505552931087142419

/-! ## A105456.P6051230571854640316

`A033111(A221623(n+1)+A000108(n))`
-/

namespace A105456.P6051230571854640316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033111 (A221623 (n + 1) + A000108 n).toNat

end

end A105456.P6051230571854640316

/-!
# A105457: Number of irregular primes less than e^n.

The programs for A105457, there is no canonical definition to state claims against.
-/

/-! ## A105457.P11552955051320928572

`A292148(A052542(n)+1)`
-/

namespace A105457.P11552955051320928572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292148 (A052542 n + 1).toNat

end

end A105457.P11552955051320928572

/-! ## A105457.P2789298180776541897

`A292148(or(1, A052542(n)))`
-/

namespace A105457.P2789298180776541897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292148 (Int.lor 1 (A052542 n)).toNat

end

end A105457.P2789298180776541897

/-! ## A105457.P10775871938871233035

`∑[∑[A033109(A267457(n))]]`
-/

namespace A105457.P10775871938871233035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033109 (A267457 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105457.P10775871938871233035

/-! ## A105457.P5687610964136699582

`A065361(A215257(n))-A110655(n)`
-/

namespace A105457.P5687610964136699582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A215257 n).toNat - A110655 n

end

end A105457.P5687610964136699582

/-!
# A105458: Number of irregular primes less than 3^n.

The programs for A105458, there is no canonical definition to state claims against.
-/

/-! ## A105458.P10392150095804384784

`A065719(n*A217528(n+1))`
-/

namespace A105458.P10392150095804384784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 ((n : ℤ) * A217528 (n + 1)).toNat

end

end A105458.P10392150095804384784

/-! ## A105458.P18292232390142078869

`A322832(6*A006675(abs(1-n)))`
-/

namespace A105458.P18292232390142078869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 (6 * A006675 |1 - (n : ℤ)|.toNat).toNat

end

end A105458.P18292232390142078869

/-! ## A105458.P16425185843691136200

`floor(A088902(n+1)/A077786(n+1)*8^n)`
-/

namespace A105458.P16425185843691136200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088902 (n + 1) : ℚ) / (A077786 (n + 1) : ℚ) * (8 ^ n : ℚ)⌋

end

end A105458.P16425185843691136200

/-!
# A105460: The 2^n-th irregular prime.

The programs for A105460, there is no canonical definition to state claims against.
-/

/-! ## A105460.P12220353764589572311

`A000928(2^n)`
-/

namespace A105460.P12220353764589572311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (2 ^ n)

end

end A105460.P12220353764589572311

/-! ## A105460.P5132962958004276846

`record[A000928(A029930(n))]`
-/

namespace A105460.P5132962958004276846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105460.P5132962958004276846

/-! ## A105460.P2162318812256519048

`record[A000928(A048483(n))]`
-/

namespace A105460.P2162318812256519048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (A048483 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105460.P2162318812256519048

/-! ## A105460.P5424134360701205659

`record[A000928(A055248(n))]`
-/

namespace A105460.P5424134360701205659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105460.P5424134360701205659

/-! ## A105460.P8880185062060982167

`record[A000928(A059268(n))]`
-/

namespace A105460.P8880185062060982167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105460.P8880185062060982167

/-!
# A105461: The floor(exp(n))-th irregular prime.

The programs for A105461, there is no canonical definition to state claims against.
-/

/-! ## A105461.P6801270930549243124

`A000928(A000149(n))`
-/

namespace A105461.P6801270930549243124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (A000149 n).toNat

end

end A105461.P6801270930549243124

/-! ## A105461.P9634385368747506335

`A000928(floor(exp(n)))`
-/

namespace A105461.P9634385368747506335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 ⌊Real.exp (n : ℝ)⌋.toNat

end

end A105461.P9634385368747506335

/-! ## A105461.P10653226197641985916

`A054899(n)+A000928(A005181(2*n+1)-A060576(n+1))`
-/

namespace A105461.P10653226197641985916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 n + A000928 (A005181 (2 * n + 1) - A060576 (n + 1)).toNat

end

end A105461.P10653226197641985916

/-! ## A105461.P4851826031123325734

`A178798(n)+A000928(A005181(2*n+1)-A060576(n+1))`
-/

namespace A105461.P4851826031123325734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + A000928 (A005181 (2 * n + 1) - A060576 (n + 1)).toNat

end

end A105461.P4851826031123325734

/-! ## A105461.P17102877393119737098

`A326679(n)+A000928(A005181(2*n+1)-A060576(n+1))`
-/

namespace A105461.P17102877393119737098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326679 n + A000928 (A005181 (2 * n + 1) - A060576 (n + 1)).toNat

end

end A105461.P17102877393119737098

/-!
# A105462: The 3^n-th irregular prime.

The programs for A105462, there is no canonical definition to state claims against.
-/

/-! ## A105462.P5756245349379805390

`A000928(3^n)`
-/

namespace A105462.P5756245349379805390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (3 ^ n)

end

end A105462.P5756245349379805390

/-! ## A105462.P12974265059710008511

`record[A000928(A048883(n))]`
-/

namespace A105462.P12974265059710008511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (A048883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105462.P12974265059710008511

/-! ## A105462.P7786910490104764834

`record[A000928(A106516(n))]`
-/

namespace A105462.P7786910490104764834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (A106516 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105462.P7786910490104764834

/-! ## A105462.P1654781767235756104

`record[A000928(A140303(n))]`
-/

namespace A105462.P1654781767235756104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (A140303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105462.P1654781767235756104

/-!
# A105463: The 10^n-th irregular prime.

The programs for A105463, there is no canonical definition to state claims against.
-/

/-! ## A105463.P994001355986563938

`A000928(10^n)`
-/

namespace A105463.P994001355986563938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (10 ^ n)

end

end A105463.P994001355986563938

/-!
# A105466: Number of irregular primes less than or equal to the m-th prime, where m = floor(exp(n)).

The programs for A105466, there is no canonical definition to state claims against.
-/

/-! ## A105466.P4780186706021581336

`A002375(A371583(n)-n)`
-/

namespace A105466.P4780186706021581336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A371583 n - (n : ℤ)).toNat

end

end A105466.P4780186706021581336

/-! ## A105466.P10289957183764780892

`∑{p}[A003150(n), A181385(#)]`
-/

namespace A105466.P10289957183764780892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A181385 p

end

end A105466.P10289957183764780892

/-!
# A105467: Number of irregular primes less than or equal to the 3^n-th prime.

The programs for A105467, there is no canonical definition to state claims against.
-/

/-! ## A105467.P15407098461961511032

`A360191(n)-A325366(A008000(n))`
-/

namespace A105467.P15407098461961511032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360191 n - A325366 (A008000 n).toNat

end

end A105467.P15407098461961511032

/-! ## A105467.P7145113597571444839

`or(A000295(n), A235333(A006951(n)))`
-/

namespace A105467.P7145113597571444839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000295 n) (A235333 (A006951 n).toNat)

end

end A105467.P7145113597571444839

/-!
# A105469: Number of numbers of the form 6k+3 with prime(n) <= 6k+3 < prime(n+1).

The programs for A105469, the canonical program `A105469.P5083937897985848993` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105469 has offset 1).

The definition of A105469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105469.P11766581099388013289

`Δ[floor(A111333(n+1)/3)]`
-/

namespace A105469.P11766581099388013289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111333 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105469.P11766581099388013289

namespace A105469

/-- `Δ[floor(A111333(n+1)/3)]` -/
def P11766581099388013289.Spec : Prop :=
  ∀ n, P11766581099388013289.a n = A105469 (n + 1)

end A105469

/-! ## A105469.P15694438101422902258

`Δ[floor(A130291(n+1)/3)]`
-/

namespace A105469.P15694438101422902258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130291 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105469.P15694438101422902258

namespace A105469

/-- `Δ[floor(A130291(n+1)/3)]` -/
def P15694438101422902258.Spec : Prop :=
  ∀ n, P15694438101422902258.a n = A105469 (n + 1)

end A105469

/-! ## A105469.P5083937897985848993

`Δ[round(A102781(n+1)/3)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105469

/-- `Δ[round(A102781(n+1)/3)]` -/
def P5083937897985848993.Spec : Prop :=
  ∀ n, P5083937897985848993.a n = A105469 (n + 1)

theorem P5083937897985848993.correct : P5083937897985848993.Spec := by
  intro n
  simp only [A105469, Nat.add_sub_cancel]

end A105469

/-! ## A105469.P16900701272792983707

`Δ[round(A130290(n+1)/3)]`
-/

namespace A105469.P16900701272792983707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A130290 (n + 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105469.P16900701272792983707

namespace A105469

/-- `Δ[round(A130290(n+1)/3)]` -/
def P16900701272792983707.Spec : Prop :=
  ∀ n, P16900701272792983707.a n = A105469 (n + 1)

end A105469

/-! ## A105469.P10870827343967791670

`Δ[floor(A008864(n+1)/6)]`
-/

namespace A105469.P10870827343967791670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008864 (n + 1) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105469.P10870827343967791670

namespace A105469

/-- `Δ[floor(A008864(n+1)/6)]` -/
def P10870827343967791670.Spec : Prop :=
  ∀ n, P10870827343967791670.a n = A105469 (n + 1)

end A105469

/-! ## A105469.P11296590301881459282

`Δ[ceil(A140353(n+1)/6)]`
-/

namespace A105469.P11296590301881459282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A140353 (n + 1) : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105469.P11296590301881459282

namespace A105469

/-- `Δ[ceil(A140353(n+1)/6)]` -/
def P11296590301881459282.Spec : Prop :=
  ∀ n, P11296590301881459282.a n = A105469 (n + 1)

end A105469

/-! ## A105469.P14712875810210188208

`Δ[round(A006093(n+1)/6)]`
-/

namespace A105469.P14712875810210188208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006093 (n + 1) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105469.P14712875810210188208

namespace A105469

/-- `Δ[round(A006093(n+1)/6)]` -/
def P14712875810210188208.Spec : Prop :=
  ∀ n, P14712875810210188208.a n = A105469 (n + 1)

end A105469

/-! ## A105469.P12987577823251292778

`Δ[floor((A000040(n+1)+1)/6)]`
-/

namespace A105469.P12987577823251292778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) + 1 : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105469.P12987577823251292778

namespace A105469

/-- `Δ[floor((A000040(n+1)+1)/6)]` -/
def P12987577823251292778.Spec : Prop :=
  ∀ n, P12987577823251292778.a n = A105469 (n + 1)

end A105469

/-! ## A105469.P11975658268184466121

`Δ[ceil((A000040(C(n+1, n))-3)/6)]`
-/

namespace A105469.P11975658268184466121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (Nat.choose (n + 1) n) - 3 : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105469.P11975658268184466121

namespace A105469

/-- `Δ[ceil((A000040(C(n+1, n))-3)/6)]` -/
def P11975658268184466121.Spec : Prop :=
  ∀ n, P11975658268184466121.a n = A105469 (n + 1)

end A105469

/-! ## A105469.P10577577775723433338

`Δ[round((A000040(2*n-n+1)-2)/6)]`
-/

namespace A105469.P10577577775723433338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 ((2 * n : ℤ) - (n : ℤ) + 1).toNat - 2 : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105469.P10577577775723433338

namespace A105469

/-- `Δ[round((A000040(2*n-n+1)-2)/6)]` -/
def P10577577775723433338.Spec : Prop :=
  ∀ n, P10577577775723433338.a n = A105469 (n + 1)

end A105469

/-! ## A105469.P9490578195390383935

`Δ[A002264(A111333(n+1))]`
-/

namespace A105469.P9490578195390383935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A111333 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105469.P9490578195390383935

namespace A105469

/-- `Δ[A002264(A111333(n+1))]` -/
def P9490578195390383935.Spec : Prop :=
  ∀ n, P9490578195390383935.a n = A105469 (n + 1)

end A105469

/-! ## A105469.P5201415575509993959

`Δ[A124156(A000040(n+1))]`
-/

namespace A105469.P5201415575509993959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124156 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105469.P5201415575509993959

namespace A105469

/-- `Δ[A124156(A000040(n+1))]` -/
def P5201415575509993959.Spec : Prop :=
  ∀ n, P5201415575509993959.a n = A105469 (n + 1)

end A105469

/-! ## A105469.P9375815937437748819

`Δ[A103221(A000040(n+1)+1)]`
-/

namespace A105469.P9375815937437748819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105469.P9375815937437748819

namespace A105469

/-- `Δ[A103221(A000040(n+1)+1)]` -/
def P9375815937437748819.Spec : Prop :=
  ∀ n, P9375815937437748819.a n = A105469 (n + 1)

end A105469

/-! ## A105469.P4455344890786702779

`Δ[A008615(A000040(n+1)+3)]`
-/

namespace A105469.P4455344890786702779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A000040 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105469.P4455344890786702779

namespace A105469

/-- `Δ[A008615(A000040(n+1)+3)]` -/
def P4455344890786702779.Spec : Prop :=
  ∀ n, P4455344890786702779.a n = A105469 (n + 1)

end A105469

/-! ## A105469.P17310167318539746042

`Δ[A002264(round(A000040(n+1)/2))]`
-/

namespace A105469.P17310167318539746042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105469.P17310167318539746042

namespace A105469

/-- `Δ[A002264(round(A000040(n+1)/2))]` -/
def P17310167318539746042.Spec : Prop :=
  ∀ n, P17310167318539746042.a n = A105469 (n + 1)

end A105469

/-! ## A105469.P8259472720210443710

`Δ[A008620(round(A000040(n+1)/2))]`
-/

namespace A105469.P8259472720210443710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105469.P8259472720210443710

namespace A105469

/-- `Δ[A008620(round(A000040(n+1)/2))]` -/
def P8259472720210443710.Spec : Prop :=
  ∀ n, P8259472720210443710.a n = A105469 (n + 1)

end A105469

/-! ## A105469.P142451615579199200

`A004525(Δ[round(A000040(n+1)/3)])`
-/

namespace A105469.P142451615579199200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A105469.P142451615579199200

namespace A105469

/-- `A004525(Δ[round(A000040(n+1)/3)])` -/
def P142451615579199200.Spec : Prop :=
  ∀ n, P142451615579199200.a n = A105469 (n + 1)

end A105469

/-! ## A105469.P8710385948480473603

`Δ[A004526(round(A000040(n+1)/3))]`
-/

namespace A105469.P8710385948480473603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105469.P8710385948480473603

namespace A105469

/-- `Δ[A004526(round(A000040(n+1)/3))]` -/
def P8710385948480473603.Spec : Prop :=
  ∀ n, P8710385948480473603.a n = A105469 (n + 1)

end A105469

/-! ## A105469.P16228756595926778621

`ceil(Δ[A267806(A000040(n+1)+2)]/2)`
-/

namespace A105469.P16228756595926778621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267806 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / 2⌉

end

end A105469.P16228756595926778621

namespace A105469

/-- `ceil(Δ[A267806(A000040(n+1)+2)]/2)` -/
def P16228756595926778621.Spec : Prop :=
  ∀ n, P16228756595926778621.a n = A105469 (n + 1)

end A105469

/-!
# A105470: a(n)=1 if there is number of the form 6k+3 with prime(n) <= 6k+3 <= prime(n+1), otherwise 0.

The programs for A105470, the canonical program `A105470.P16886314090569139671` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105470 has offset 1).

The definition of A105470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105470.P16886314090569139671

`A175191(n+1)%2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105470

/-- `A175191(n+1)%2` -/
def P16886314090569139671.Spec : Prop :=
  ∀ n, P16886314090569139671.a n = A105470 (n + 1)

theorem P16886314090569139671.correct : P16886314090569139671.Spec := by
  intro n
  simp only [A105470, Nat.add_sub_cancel]

end A105470

/-! ## A105470.P16325002068323732487

`A079082(n+1)²%3`
-/

namespace A105470.P16325002068323732487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079082 (n + 1) ^ 2) 3

end

end A105470.P16325002068323732487

namespace A105470

/-- `A079082(n+1)²%3` -/
def P16325002068323732487.Spec : Prop :=
  ∀ n, P16325002068323732487.a n = A105470 (n + 1)

end A105470

/-! ## A105470.P8520715514651167781

`A175218(n+1)²%3`
-/

namespace A105470.P8520715514651167781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175218 (n + 1) ^ 2) 3

end

end A105470.P8520715514651167781

namespace A105470

/-- `A175218(n+1)²%3` -/
def P8520715514651167781.Spec : Prop :=
  ∀ n, P8520715514651167781.a n = A105470 (n + 1)

end A105470

/-! ## A105470.P2010875055154971647

`ceil(A116127(n+1)/6)`
-/

namespace A105470.P2010875055154971647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A116127 (n + 1) : ℚ) / 6⌉

end

end A105470.P2010875055154971647

namespace A105470

/-- `ceil(A116127(n+1)/6)` -/
def P2010875055154971647.Spec : Prop :=
  ∀ n, P2010875055154971647.a n = A105470 (n + 1)

end A105470

/-! ## A105470.P12653890317440683342

`A100810(n+1)+char[1]`
-/

namespace A105470.P12653890317440683342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100810 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A105470.P12653890317440683342

namespace A105470

/-- `A100810(n+1)+char[1]` -/
def P12653890317440683342.Spec : Prop :=
  ∀ n, P12653890317440683342.a n = A105470 (n + 1)

end A105470

/-! ## A105470.P9802150404477191487

`1-char[A155752(n+2)]`
-/

namespace A105470.P9802150404477191487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A105470.P9802150404477191487

namespace A105470

/-- `1-char[A155752(n+2)]` -/
def P9802150404477191487.Spec : Prop :=
  ∀ n, P9802150404477191487.a n = A105470 (n + 1)

end A105470

/-! ## A105470.P6477517303299217432

`char[n-A100821(n+1)]`
-/

namespace A105470.P6477517303299217432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A100821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105470.P6477517303299217432

namespace A105470

/-- `char[n-A100821(n+1)]` -/
def P6477517303299217432.Spec : Prop :=
  ∀ n, (P6477517303299217432.a n : ℤ) = A105470 (n + 1)

end A105470

/-! ## A105470.P9844103475603571305

`char[A106002(n+2)+n]`
-/

namespace A105470.P9844103475603571305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106002 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105470.P9844103475603571305

namespace A105470

/-- `char[A106002(n+2)+n]` -/
def P9844103475603571305.Spec : Prop :=
  ∀ n, (P9844103475603571305.a n : ℤ) = A105470 (n + 1)

end A105470

/-! ## A105470.P3247757639880716703

`char[n-A062301(n+2)]`
-/

namespace A105470.P3247757639880716703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A062301 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105470.P3247757639880716703

namespace A105470

/-- `char[n-A062301(n+2)]` -/
def P3247757639880716703.Spec : Prop :=
  ∀ n, (P3247757639880716703.a n : ℤ) = A105470 (n + 1)

end A105470

/-! ## A105470.P10625506793476051495

`char[n-char[A100637(2*n)]]`
-/

namespace A105470.P10625506793476051495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105470.P10625506793476051495

namespace A105470

/-- `char[n-char[A100637(2*n)]]` -/
def P10625506793476051495.Spec : Prop :=
  ∀ n, (P10625506793476051495.a n : ℤ) = A105470 (n + 1)

end A105470

/-! ## A105470.P9888793694412142226

`char[n-C(2, Δ[A000040(n+1)])]`
-/

namespace A105470.P9888793694412142226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (f2 (n + 1) - f2 n).toNat : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105470.P9888793694412142226

namespace A105470

/-- `char[n-C(2, Δ[A000040(n+1)])]` -/
def P9888793694412142226.Spec : Prop :=
  ∀ n, (P9888793694412142226.a n : ℤ) = A105470 (n + 1)

end A105470

/-! ## A105470.P16655461270805180261

`A100810((n+1)^a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A105470.P16655461270805180261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A100810 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A105470.P16655461270805180261

namespace A105470

/-- `A100810((n+1)^a(n-1))` -/
def P16655461270805180261.Spec : Prop :=
  ∀ n, P16655461270805180261.a n = A105470 (n + 1)

end A105470

/-! ## A105470.P7498709020889926863

`A076898(A049563(n+1))`
-/

namespace A105470.P7498709020889926863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076898 (A049563 (n + 1)).toNat

end

end A105470.P7498709020889926863

namespace A105470

/-- `A076898(A049563(n+1))` -/
def P7498709020889926863.Spec : Prop :=
  ∀ n, P7498709020889926863.a n = A105470 (n + 1)

end A105470

/-! ## A105470.P13781284354823766699

`A011655(A175218(n+1))`
-/

namespace A105470.P13781284354823766699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A175218 (n + 1)).toNat

end

end A105470.P13781284354823766699

namespace A105470

/-- `A011655(A175218(n+1))` -/
def P13781284354823766699.Spec : Prop :=
  ∀ n, P13781284354823766699.a n = A105470 (n + 1)

end A105470

/-! ## A105470.P17263800681254553263

`A093719(A175217(n+1))`
-/

namespace A105470.P17263800681254553263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (A175217 (n + 1)).toNat

end

end A105470.P17263800681254553263

namespace A105470

/-- `A093719(A175217(n+1))` -/
def P17263800681254553263.Spec : Prop :=
  ∀ n, P17263800681254553263.a n = A105470 (n + 1)

end A105470

/-! ## A105470.P11864184874749762963

`A093719(A175219(n+1))`
-/

namespace A105470.P11864184874749762963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (A175219 (n + 1)).toNat

end

end A105470.P11864184874749762963

namespace A105470

/-- `A093719(A175219(n+1))` -/
def P11864184874749762963.Spec : Prop :=
  ∀ n, P11864184874749762963.a n = A105470 (n + 1)

end A105470

/-! ## A105470.P18067932926105916364

`A168182(A283623(n+1))`
-/

namespace A105470.P18067932926105916364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168182 (A283623 (n + 1)).toNat

end

end A105470.P18067932926105916364

namespace A105470

/-- `A168182(A283623(n+1))` -/
def P18067932926105916364.Spec : Prop :=
  ∀ n, P18067932926105916364.a n = A105470 (n + 1)

end A105470

/-! ## A105470.P17865484299116903106

`A105597(A038702(n+2))`
-/

namespace A105470.P17865484299116903106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105597 (A038702 (n + 2)).toNat

end

end A105470.P17865484299116903106

namespace A105470

/-- `A105597(A038702(n+2))` -/
def P17865484299116903106.Spec : Prop :=
  ∀ n, P17865484299116903106.a n = A105470 (n + 1)

end A105470

/-! ## A105470.P7710147976471805986

`A093719(A335306(n+2))`
-/

namespace A105470.P7710147976471805986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (A335306 (n + 2)).toNat

end

end A105470.P7710147976471805986

namespace A105470

/-- `A093719(A335306(n+2))` -/
def P7710147976471805986.Spec : Prop :=
  ∀ n, P7710147976471805986.a n = A105470 (n + 1)

end A105470

/-! ## A105470.P6012895302372526278

`A292438(eq[1, A360825(n)])`
-/

namespace A105470.P6012895302372526278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A105470.P6012895302372526278

namespace A105470

/-- `A292438(eq[1, A360825(n)])` -/
def P6012895302372526278.Spec : Prop :=
  ∀ n, P6012895302372526278.a n = A105470 (n + 1)

end A105470

/-!
# A105471: a(n) = Fibonacci(n) mod 100.

The programs for A105471, the canonical program `A105471.P14640636412309073108` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105471 has offset 0).

The definition of A105471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)%100` (program `A105471.P14640636412309073108`, by `A105471.P14640636412309073108.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105471.P16873711793844395936

`(a(n-1)+a(n-2))%100` with `a(0)=0, a(1)=1`
-/

namespace A105471.P16873711793844395936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) + a (n - 2)) % 100

end

end A105471.P16873711793844395936

namespace A105471

/-- `(a(n-1)+a(n-2))%100` -/
def P16873711793844395936.Spec : Prop :=
  ∀ n, (P16873711793844395936.a n : ℤ) = A105471 n

end A105471

/-! ## A105471.P14640636412309073108

`A000045(n)%100`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105471

/-- `A000045(n)%100` -/
def P14640636412309073108.Spec : Prop :=
  ∀ n, P14640636412309073108.a n = A105471 n

theorem P14640636412309073108.correct : P14640636412309073108.Spec := by
  intro n
  simp only [A105471]

end A105471

/-!
# A105472: Next-to-last digit of n-th Fibonacci number in decimal representation, a(n) = 0 for n <= 6.

The programs for A105472, the canonical program `A105472.P8431656739219211522` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105472 has offset 0).

The definition of A105472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105472.P8431656739219211522

`floor(A000045(n)/10)%10`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105472

/-- `floor(A000045(n)/10)%10` -/
def P8431656739219211522.Spec : Prop :=
  ∀ n, P8431656739219211522.a n = A105472 n

theorem P8431656739219211522.correct : P8431656739219211522.Spec := by
  intro n
  simp only [A105472]

end A105472

/-!
# A105475: Triangle read by rows: T(n,k) is number of compositions of n into k parts when each even part can be of two kinds.

The programs for A105475, there is no canonical definition to state claims against.
-/

/-! ## A105475.P15513927601890089450

`A072660(A264945(n+1))`
-/

namespace A105475.P15513927601890089450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072660 (A264945 (n + 1)).toNat

end

end A105475.P15513927601890089450

/-! ## A105475.P13212340861046115495

`A097805(n)*A270642(A293358(n))`
-/

namespace A105475.P13212340861046115495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A270642 (A293358 n).toNat

end

end A105475.P13212340861046115495

/-! ## A105475.P8822706375246048532

`A128899(n)%A091954(A181925(3*n+5))`
-/

namespace A105475.P8822706375246048532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128899 n) (A091954 (A181925 (3 * n + 5)).toNat)

end

end A105475.P8822706375246048532

/-! ## A105475.P17362880928495226027

`A182858(A257740(n))`
-/

namespace A105475.P17362880928495226027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182858 (A257740 n).toNat

end

end A105475.P17362880928495226027

/-! ## A105475.P8640757778488941688

`A000002(A261562(n))*A097805(n)`
-/

namespace A105475.P8640757778488941688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A261562 n).toNat * A097805 n

end

end A105475.P8640757778488941688

/-!
# A105476: Number of compositions of n when each even part can be of two kinds.

The programs for A105476, the canonical program `A105476.P5613325516819084270` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105476 has offset 0).

The definition of A105476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105476.P5613325516819084270

`a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105476

/-- `a(n-1)+3*a(n-2)` -/
def P5613325516819084270.Spec : Prop :=
  ∀ n, (P5613325516819084270.a n : ℤ) = A105476 n

theorem P5613325516819084270.correct : P5613325516819084270.Spec := by
  intro n
  simp only [A105476]

end A105476

/-! ## A105476.P14373324716219378577

`ogf((-1+x^2)/(-1+x+3x^2))`
-/

namespace A105476.P14373324716219378577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -1, -3] n

end

end A105476.P14373324716219378577

namespace A105476

/-- `ogf((-1+x^2)/(-1+x+3x^2))` -/
def P14373324716219378577.Spec : Prop :=
  ∀ n, P14373324716219378577.a n = A105476 n

end A105476

/-! ## A105476.P17404360033052463182

`lcm(3, a(n-2)+a(n-1)/3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A105476.P17404360033052463182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  Int.lcm 3 (SequenceMachineLib.roundAway ((a (n - 2) : ℚ) + (a (n - 1) : ℚ) / 3))

end

end A105476.P17404360033052463182

namespace A105476

/-- `lcm(3, a(n-2)+a(n-1)/3)` -/
def P17404360033052463182.Spec : Prop :=
  ∀ n, (P17404360033052463182.a n : ℤ) = A105476 n

end A105476

/-! ## A105476.P16768247289996967897

`3-(3*(1-a(n-2))-a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A105476.P16768247289996967897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  3 - (3 * (1 - a (n - 2)) - a (n - 1))

end

end A105476.P16768247289996967897

namespace A105476

/-- `3-(3*(1-a(n-2))-a(n-1))` -/
def P16768247289996967897.Spec : Prop :=
  ∀ n, P16768247289996967897.a n = A105476 n

end A105476

/-! ## A105476.P10036343954386788515

`a(n-2)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A105476.P10036343954386788515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A105476.P10036343954386788515

namespace A105476

/-- `a(n-2)+a(n-2)+a(n-1)+a(n-2)` -/
def P10036343954386788515.Spec : Prop :=
  ∀ n, (P10036343954386788515.a n : ℤ) = A105476 n

end A105476

/-! ## A105476.P6627284741122894990

`abs(Δ[A006138(abs(1-n))])`
-/

namespace A105476.P6627284741122894990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A105476.P6627284741122894990

namespace A105476

/-- `abs(Δ[A006138(abs(1-n))])` -/
def P6627284741122894990.Spec : Prop :=
  ∀ n, P6627284741122894990.a n = A105476 n

end A105476

/-! ## A105476.P764627115735724126

`A384614(n)/A036453(n+1)`
-/

namespace A105476.P764627115735724126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384614 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A105476.P764627115735724126

namespace A105476

/-- `A384614(n)/A036453(n+1)` -/
def P764627115735724126.Spec : Prop :=
  ∀ n, P764627115735724126.a n = (A105476 n : ℚ)

end A105476

/-! ## A105476.P10203387973194264149

`ceil((A006138(n)+A006130(n))/3)`
-/

namespace A105476.P10203387973194264149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006138 n + A006130 n : ℚ) / 3⌉

end

end A105476.P10203387973194264149

namespace A105476

/-- `ceil((A006138(n)+A006130(n))/3)` -/
def P10203387973194264149.Spec : Prop :=
  ∀ n, P10203387973194264149.a n = A105476 n

end A105476

/-!
# A105479: a(n) = C(n,2)*Bell(n-2) (cf. A000217, A000110).

The programs for A105479, there is no canonical definition to state claims against.
-/

/-! ## A105479.P4168410395427781046

`C(n, 2)*A000110(abs(2-n))`
-/

namespace A105479.P4168410395427781046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A000110 |2 - (n : ℤ)|.toNat

end

end A105479.P4168410395427781046

/-! ## A105479.P7210975012045181704

`A000110(A289207(n))*A161680(n)`
-/

namespace A105479.P7210975012045181704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A289207 n).toNat * A161680 n

end

end A105479.P7210975012045181704

/-! ## A105479.P14583232554497591029

`lcm(A004526(n), A175757(A238531(n)))`
-/

namespace A105479.P14583232554497591029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004526 n) (A175757 (A238531 n).toNat)

end

end A105479.P14583232554497591029

/-! ## A105479.P4395934587100637160

`A095149(A152947(n+1))*A161680(n)`
-/

namespace A105479.P4395934587100637160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (A152947 (n + 1)).toNat * A161680 n

end

end A105479.P4395934587100637160

/-! ## A105479.P411894945077079529

`A095149(A161680(n)+1)*A161680(n)`
-/

namespace A105479.P411894945077079529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (A161680 n + 1).toNat * A161680 n

end

end A105479.P411894945077079529

/-! ## A105479.P15766321457637689559

`A161680(n)*A189233(A161680(n)+1)`
-/

namespace A105479.P15766321457637689559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n * A189233 (A161680 n + 1).toNat

end

end A105479.P15766321457637689559

/-! ## A105479.P5950159802718419738

`A161680(n)*A265312(A054254(n))`
-/

namespace A105479.P5950159802718419738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n * A265312 (A054254 n).toNat

end

end A105479.P5950159802718419738

/-!
# A105480: Number of partitions of {1...n} containing 3 pairs of consecutive integers, where each pair is counted within a block and a string of more than 2 consecutive integers are counted two at a time.

The programs for A105480, there is no canonical definition to state claims against.
-/

/-! ## A105480.P3567922038274167443

`C(n+3, 3)*A000110(n)`
-/

namespace A105480.P3567922038274167443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * A000110 n

end

end A105480.P3567922038274167443

/-! ## A105480.P12913312977449535760

`A175757(∑[n+2]+4)`
-/

namespace A105480.P12913312977449535760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175757 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A105480.P12913312977449535760

/-! ## A105480.P5845700705987559943

`C(n+3, 3)*A011971(∑[n])`
-/

namespace A105480.P5845700705987559943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105480.P5845700705987559943

/-! ## A105480.P15527312421738650788

`abs(A292935(n))*∑[∑[n+1]]`
-/

namespace A105480.P15527312421738650788
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A105480.P15527312421738650788

/-! ## A105480.P2096087403890379474

`∑[∑[n+1]]*A108087(∑[n])`
-/

namespace A105480.P2096087403890379474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A108087 (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A105480.P2096087403890379474

/-! ## A105480.P5040288574298780195

`∑[∑[n+1]]*A123081(∑[n])`
-/

namespace A105480.P5040288574298780195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A123081 (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A105480.P5040288574298780195

/-! ## A105480.P1297281122027934847

`∑[∑[n+1]]*A186020(∑[n])`
-/

namespace A105480.P1297281122027934847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A186020 (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A105480.P1297281122027934847

/-! ## A105480.P5552937592439052299

`∑[∑[n+1]]*A259691(∑[n])`
-/

namespace A105480.P5552937592439052299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A259691 (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A105480.P5552937592439052299

/-! ## A105480.P15114900264697032806

`∑[∑[n+1]]*Δ[A005001(n)]`
-/

namespace A105480.P15114900264697032806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f3 (n + 1) - f3 n)

end

end A105480.P15114900264697032806

/-! ## A105480.P15550154066138553908

`A056857(A052905(n)+9)`
-/

namespace A105480.P15550154066138553908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (A052905 n + 9).toNat

end

end A105480.P15550154066138553908

/-!
# A105481: Number of partitions of {1...n} containing 4 pairs of consecutive integers, where each pair is counted within a block and a string of more than 2 consecutive integers are counted two at a time.

The programs for A105481, there is no canonical definition to state claims against.
-/

/-! ## A105481.P2372729830167355515

`C(n+4, 4)*A000110(n)`
-/

namespace A105481.P2372729830167355515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) * A000110 n

end

end A105481.P2372729830167355515

/-! ## A105481.P13566466516070775609

`C(n+4, 4)*A011971(∑[n])`
-/

namespace A105481.P13566466516070775609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105481.P13566466516070775609

/-! ## A105481.P2777629782504009881

`A056860(A046691(n+3))`
-/

namespace A105481.P2777629782504009881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056860 (A046691 (n + 3)).toNat

end

end A105481.P2777629782504009881

/-! ## A105481.P1979388625745909280

`A056857(A167499(n+3))`
-/

namespace A105481.P1979388625745909280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (A167499 (n + 3)).toNat

end

end A105481.P1979388625745909280

/-! ## A105481.P6121274517325121083

`A056857(A155212(n)+13)`
-/

namespace A105481.P6121274517325121083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (A155212 n + 13).toNat

end

end A105481.P6121274517325121083

/-! ## A105481.P7294441366101039677

`A056857(A056000(n)+15)`
-/

namespace A105481.P7294441366101039677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (A056000 n + 15).toNat

end

end A105481.P7294441366101039677

/-! ## A105481.P5131979972141280269

`A056860(A000124(n+5)-5)`
-/

namespace A105481.P5131979972141280269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056860 (A000124 (n + 5) - 5).toNat

end

end A105481.P5131979972141280269

/-! ## A105481.P11962693348051108681

`A000110(n)*A189976(2*(n+4))`
-/

namespace A105481.P11962693348051108681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A189976 (2 * (n + 4))

end

end A105481.P11962693348051108681

/-! ## A105481.P7233393743382904143

`abs(A292935(n))*∑[A058187(2*n)]`
-/

namespace A105481.P7233393743382904143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105481.P7233393743382904143

/-! ## A105481.P13196757992500563335

`A056860(lt[A056860(n+5), A330721(n+1)])`
-/

namespace A105481.P13196757992500563335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056860 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056860 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105481.P13196757992500563335

/-!
# A105482: Number of partitions of {1...n} containing 5 pairs of consecutive integers, where each pair is counted within a block and a string of more than 2 consecutive integers are counted two at a time.

The programs for A105482, there is no canonical definition to state claims against.
-/

/-! ## A105482.P1980393131715718406

`C(n+5, 5)*A000110(n)`
-/

namespace A105482.P1980393131715718406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 : ℤ) * A000110 n

end

end A105482.P1980393131715718406

/-! ## A105482.P4582356191376299522

`A175757(A167499(n+3))`
-/

namespace A105482.P4582356191376299522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175757 (A167499 (n + 3)).toNat

end

end A105482.P4582356191376299522

/-! ## A105482.P13232697170720803845

`A056860(A055999(n+3)+1)`
-/

namespace A105482.P13232697170720803845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056860 (A055999 (n + 3) + 1).toNat

end

end A105482.P13232697170720803845

/-! ## A105482.P17366251989093121505

`A056860(A046691(n+4)-1)`
-/

namespace A105482.P17366251989093121505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056860 (A046691 (n + 4) - 1).toNat

end

end A105482.P17366251989093121505

/-! ## A105482.P17360255117904569412

`A056857(A000124(n+5)+5)`
-/

namespace A105482.P17360255117904569412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (A000124 (n + 5) + 5).toNat

end

end A105482.P17360255117904569412

/-! ## A105482.P17784743551407786698

`A056857(A000096(n+4)+7)`
-/

namespace A105482.P17784743551407786698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (A000096 (n + 4) + 7).toNat

end

end A105482.P17784743551407786698

/-! ## A105482.P159542119859110284

`A056857(A000217(n+5)+6)`
-/

namespace A105482.P159542119859110284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (A000217 (n + 5) + 6).toNat

end

end A105482.P159542119859110284

/-! ## A105482.P12707076398897503738

`A000110(n)*A000389(n+5)`
-/

namespace A105482.P12707076398897503738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A000389 (n + 5)

end

end A105482.P12707076398897503738

/-!
# A105483: Number of partitions of {1...n} containing one string of 3 consecutive integers, counted within a block.

The programs for A105483, there is no canonical definition to state claims against.
-/

/-! ## A105483.P14178104852343989517

`A342848(A149023(n+1))`
-/

namespace A105483.P14178104852343989517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342848 (A149023 (n + 1)).toNat

end

end A105483.P14178104852343989517

/-! ## A105483.P13472833723213326763

`A138194(A137960(n+2)-n)`
-/

namespace A105483.P13472833723213326763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A137960 (n + 2) - (n : ℤ)).toNat

end

end A105483.P13472833723213326763

/-!
# A105484: Number of partitions of {1...n} containing 2 strings of 3 consecutive integers, where each string is counted within a block and a string of more than 3 consecutive integers are counted three at a time.

The programs for A105484, there is no canonical definition to state claims against.
-/

/-! ## A105484.P4686353415381996962

`round(sqrt(∑{d}[A003433(2*n+1), #]))-n`
-/

namespace A105484.P4686353415381996962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003433 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℝ)) - (n : ℤ)

end

end A105484.P4686353415381996962

/-! ## A105484.P4229843164089515354

`A159477(A258973(n))-n`
-/

namespace A105484.P4229843164089515354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A258973 n).toNat - (n : ℤ)

end

end A105484.P4229843164089515354

/-!
# A105485: Number of partitions of {1...n} containing 3 strings of 3 consecutive integers, where each string is counted within a block and a string of more than 3 consecutive integers are counted three at a time.

The programs for A105485, there is no canonical definition to state claims against.
-/

/-! ## A105485.P17561903686011054686

`A377109(n)+A002375(A002110(n))`
-/

namespace A105485.P17561903686011054686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377109 n + A002375 (A002110 n).toNat

end

end A105485.P17561903686011054686

/-! ## A105485.P10208409525905721467

`A137635(n)-A328594(A001470(n))`
-/

namespace A105485.P10208409525905721467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137635 n - A328594 (A001470 n).toNat

end

end A105485.P10208409525905721467

/-!
# A105486: Number of partitions of {1...n} containing 4 strings of 3 consecutive integers, where each string is counted within a block and a string of more than 3 consecutive integers are counted three at a time.

The programs for A105486, there is no canonical definition to state claims against.
-/

/-! ## A105486.P687059004381646645

`A132270(A062394(n))+A000984(n)`
-/

namespace A105486.P687059004381646645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A062394 n).toNat + A000984 n

end

end A105486.P687059004381646645

/-! ## A105486.P9125513767194415741

`A357548(n+1)-A110177(A118971(n))`
-/

namespace A105486.P9125513767194415741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357548 (n + 1) - A110177 (A118971 n).toNat

end

end A105486.P9125513767194415741

/-!
# A105487: Number of partitions of {1...n} containing 5 strings of 3 consecutive integers, where each string is counted within a block and a string of more than 3 consecutive integers are counted three at a time.

The programs for A105487, there is no canonical definition to state claims against.
-/

/-! ## A105487.P2346235972721404781

`A003056(A086331(n))*A178063(n)`
-/

namespace A105487.P2346235972721404781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A086331 n).toNat * A178063 n

end

end A105487.P2346235972721404781

/-!
# A105488: Number of partitions of {1...n} containing 2 detached pairs of consecutive integers, i.e., partitions in which only 1- or 2-strings of consecutive integers can appear in a block and there are exactly two 2-strings.

The programs for A105488, there is no canonical definition to state claims against.
-/

/-! ## A105488.P3866817703211000304

`C(n+2, 2)*A000110(n+1)`
-/

namespace A105488.P3866817703211000304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A000110 (n + 1)

end

end A105488.P3866817703211000304

/-! ## A105488.P8251072182293843447

`∑[n+1]*A011972(∑[n])`
-/

namespace A105488.P8251072182293843447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A011972 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A105488.P8251072182293843447

/-! ## A105488.P2382404694234188067

`∑[n+1]*A123346(∑[n])`
-/

namespace A105488.P2382404694234188067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A123346 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A105488.P2382404694234188067

/-! ## A105488.P10819153166020846488

`∑[n+1]*A283424(∑[n])`
-/

namespace A105488.P10819153166020846488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A283424 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A105488.P10819153166020846488

/-! ## A105488.P12515811527133047619

`∑[n+1]*A000110(n+1)`
-/

namespace A105488.P12515811527133047619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000110 (n + 1)

end

end A105488.P12515811527133047619

/-! ## A105488.P12099071321734740343

`(n+2)/2*A070071(n+1)`
-/

namespace A105488.P12099071321734740343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A070071 (n + 1) : ℚ)

end

end A105488.P12099071321734740343

/-! ## A105488.P1055016258877178771

`∑[n+1]*A011971(∑[n+1])`
-/

namespace A105488.P1055016258877178771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A011971 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A105488.P1055016258877178771

/-! ## A105488.P13189540208951306278

`∑[n+1]*A095149(∑[n+1])`
-/

namespace A105488.P13189540208951306278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A095149 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A105488.P13189540208951306278

/-! ## A105488.P10666845300799773111

`∑[n+1]*A212431(∑[n+1])`
-/

namespace A105488.P10666845300799773111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A212431 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A105488.P10666845300799773111

/-! ## A105488.P10924908610314875573

`∑[n+1]*A285013(2*n+1)`
-/

namespace A105488.P10924908610314875573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A285013 (2 * n + 1)

end

end A105488.P10924908610314875573

/-!
# A105489: Number of partitions of {1...n} containing 3 detached pairs of consecutive integers, i.e., partitions in which only 1- or 2-strings of consecutive integers can appear in a block and there are exactly three 2-strings.

The programs for A105489, there is no canonical definition to state claims against.
-/

/-! ## A105489.P12273424903124971964

`C(n+3, 3)*A000110(n+2)`
-/

namespace A105489.P12273424903124971964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * A000110 (n + 2)

end

end A105489.P12273424903124971964

/-! ## A105489.P4491470914133363131

`C(n+3, 3)*A011971(∑[n+2])`
-/

namespace A105489.P4491470914133363131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105489.P4491470914133363131

/-! ## A105489.P629122857167717386

`A000110(n+2)*A000292(n+1)`
-/

namespace A105489.P629122857167717386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 2) * A000292 (n + 1)

end

end A105489.P629122857167717386

/-! ## A105489.P5021929501752695571

`A000110(n+2)*A008804(2*n)`
-/

namespace A105489.P5021929501752695571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 2) * A008804 (2 * n)

end

end A105489.P5021929501752695571

/-! ## A105489.P9404244466280041673

`A000110(n+2)*A086659(A000217(n+2))`
-/

namespace A105489.P9404244466280041673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 2) * A086659 (A000217 (n + 2)).toNat

end

end A105489.P9404244466280041673

/-! ## A105489.P17791727076929674331

`A000292(n+1)*A039810(A000124(n+1))`
-/

namespace A105489.P17791727076929674331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A039810 (A000124 (n + 1)).toNat

end

end A105489.P17791727076929674331

/-! ## A105489.P3321239544908307847

`A000110(n+2)*A185913(A000124(n))`
-/

namespace A105489.P3321239544908307847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 2) * A185913 (A000124 n).toNat

end

end A105489.P3321239544908307847

/-!
# A105490: Number of partitions of {1...n} containing 4 detached pairs of consecutive integers, i.e., partitions in which only 1- or 2-strings of consecutive integers can appear in a block and there are exactly four 2-strings.

The programs for A105490, there is no canonical definition to state claims against.
-/

/-! ## A105490.P17739714848115184826

`C(n+4, 4)*A000110(n+3)`
-/

namespace A105490.P17739714848115184826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) * A000110 (n + 3)

end

end A105490.P17739714848115184826

/-! ## A105490.P6155902898277223635

`A000110(n+3)*A000332(n+4)`
-/

namespace A105490.P6155902898277223635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 3) * A000332 (n + 4)

end

end A105490.P6155902898277223635

/-! ## A105490.P15674656393481265687

`∑[A000292(n+1)]*A000110(n+3)`
-/

namespace A105490.P15674656393481265687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000110 (n + 3)

end

end A105490.P15674656393481265687

/-! ## A105490.P9603976765047189433

`A000110(n+3)*A261721(∑[n+1])`
-/

namespace A105490.P9603976765047189433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 3) * A261721 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105490.P9603976765047189433

/-! ## A105490.P16053246461118600961

`A000110(n+3)*A189976(A005843(n+4))`
-/

namespace A105490.P16053246461118600961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 3) * A189976 (A005843 (n + 4)).toNat

end

end A105490.P16053246461118600961

/-!
# A105491: Number of partitions of {1...n} containing 5 detached pairs of consecutive integers, i.e., partitions in which only 1- or 2-strings of consecutive integers can appear in a block and there are exactly five 2-strings.

The programs for A105491, there is no canonical definition to state claims against.
-/

/-! ## A105491.P5073685144018692030

`C(n+5, 5)*A000110(n+4)`
-/

namespace A105491.P5073685144018692030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 : ℤ) * A000110 (n + 4)

end

end A105491.P5073685144018692030

/-! ## A105491.P7240372523624742459

`A000110(n+4)*A000389(n+5)`
-/

namespace A105491.P7240372523624742459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 4) * A000389 (n + 5)

end

end A105491.P7240372523624742459

/-! ## A105491.P12588238136482005542

`∑[A000332(n+4)]*A000110(n+4)`
-/

namespace A105491.P12588238136482005542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000110 (n + 4)

end

end A105491.P12588238136482005542

/-! ## A105491.P8839409879588373874

`C(n+5, 5)*A011972(A000217(n+3))`
-/

namespace A105491.P8839409879588373874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 : ℤ) * A011972 (A000217 (n + 3)).toNat

end

end A105491.P8839409879588373874

/-! ## A105491.P4376165880105200027

`A000110(n+4)*A007318(eq[5, A002262(n)])`
-/

namespace A105491.P4376165880105200027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 4) * A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A105491.P4376165880105200027

/-!
# A105492: Number of partitions of {1,...,n} containing 2 strings of 3 consecutive integers such that only v-strings of consecutive integers can appear in a block, where v = 1,2,3.

The programs for A105492, there is no canonical definition to state claims against.
-/

/-! ## A105492.P16703194188777116824

`A381610(6*a(n-1))` with `a(0)=1`
-/

namespace A105492.P16703194188777116824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A381610 (6 * a (n - 1)).toNat

end

end A105492.P16703194188777116824

/-!
# A105496: A "Fractal Jump Sequence" (FJS) that reappears twice (itself and itself + 1; see the Comments section).

The programs for A105496, there is no canonical definition to state claims against.
-/

/-! ## A105496.P3804240825251638148

`A001511(lcm(A001399(n), A072502(n+1)))`
-/

namespace A105496.P3804240825251638148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lcm (A001399 n) (A072502 (n + 1)))

end

end A105496.P3804240825251638148

/-! ## A105496.P3955099407122151127

`A338643(n+1)+A010893(A205813(n))`
-/

namespace A105496.P3955099407122151127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338643 (n + 1) + A010893 ((A205813 n).toNat + 13)

end

end A105496.P3955099407122151127

/-!
# A105497: A simple "Fractal Jump Sequence" (FJS).

The programs for A105497, there is no canonical definition to state claims against.
-/

/-! ## A105497.P4409794573283524359

`A036585(lt[A000700(n), A222177(n)])`
-/

namespace A105497.P4409794573283524359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036585 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105497.P4409794573283524359

/-! ## A105497.P14272279643689232845

`A332604(A024646(n+1)+1)`
-/

namespace A105497.P14272279643689232845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332604 (A024646 (n + 1) + 1).toNat

end

end A105497.P14272279643689232845

/-! ## A105497.P17905085576954218754

`2-Δ[A014709(A030227(n+1))]`
-/

namespace A105497.P17905085576954218754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A030227 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A105497.P17905085576954218754

/-! ## A105497.P13639304711794617227

`A005679(A057163(n)+ceil(2^(n-1)))`
-/

namespace A105497.P13639304711794617227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005679 (A057163 n + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A105497.P13639304711794617227

/-! ## A105497.P12049006199660979187

`A065882(A002445(n)*A347458(n+5))`
-/

namespace A105497.P12049006199660979187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065882 (A002445 n * A347458 (n + 5)).toNat

end

end A105497.P12049006199660979187

/-!
# A105498: Trajectory of 1 under the morphism 1->{1,2}, 2->{1,4}, 3->{3,4}, 4->{3,4}.

The programs for A105498, the canonical program `A105498.P7447428712844368662` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105498 has offset 0).

The definition of A105498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105498.P7447428712844368662

`A158478(and(n, 2*n+1))+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105498

/-- `A158478(and(n, 2*n+1))+1` -/
def P7447428712844368662.Spec : Prop :=
  ∀ n, P7447428712844368662.a n = A105498 n

theorem P7447428712844368662.correct : P7447428712844368662.Spec := by
  intro n
  simp only [A105498]

end A105498

/-! ## A105498.P1578807546345466942

`A158515(and(2*n+1, n+1))`
-/

namespace A105498.P1578807546345466942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158515 (Nat.land (2 * n + 1) (n + 1))

end

end A105498.P1578807546345466942

namespace A105498

/-- `A158515(and(2*n+1, n+1))` -/
def P1578807546345466942.Spec : Prop :=
  ∀ n, P1578807546345466942.a n = A105498 n

end A105498

/-! ## A105498.P8408789446518559822

`sqrt(A010702(n)^A101663(n))`
-/

namespace A105498.P8408789446518559822
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A010702 n : ℚ) ^ (A101663 n : ℤ) : ℝ)

end

end A105498.P8408789446518559822

namespace A105498

/-- `sqrt(A010702(n)^A101663(n))` -/
def P8408789446518559822.Spec : Prop :=
  ∀ n, P8408789446518559822.a n = (A105498 n : ℝ)

end A105498

/-! ## A105498.P347659472072383910

`A000034(n)+2%A331985(n)`
-/

namespace A105498.P347659472072383910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + Int.tmod 2 (A331985 n)

end

end A105498.P347659472072383910

namespace A105498

/-- `A000034(n)+2%A331985(n)` -/
def P347659472072383910.Spec : Prop :=
  ∀ n, P347659472072383910.a n = A105498 n

end A105498

/-! ## A105498.P7372697395951881450

`A122553(A014081(n))+A000035(n)`
-/

namespace A105498.P7372697395951881450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 (A014081 n).toNat + A000035 n

end

end A105498.P7372697395951881450

namespace A105498

/-- `A122553(A014081(n))+A000035(n)` -/
def P7372697395951881450.Spec : Prop :=
  ∀ n, P7372697395951881450.a n = A105498 n

end A105498

/-! ## A105498.P6083675113845701517

`A115716(A048728(n))+A000035(n)`
-/

namespace A105498.P6083675113845701517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 (A048728 n).toNat + A000035 n

end

end A105498.P6083675113845701517

namespace A105498

/-- `A115716(A048728(n))+A000035(n)` -/
def P6083675113845701517.Spec : Prop :=
  ∀ n, P6083675113845701517.a n = A105498 n

end A105498

/-! ## A105498.P266133553488106053

`A048250(A245195(n))+A000035(n)`
-/

namespace A105498.P266133553488106053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A245195 n).toNat + A000035 n

end

end A105498.P266133553488106053

namespace A105498

/-- `A048250(A245195(n))+A000035(n)` -/
def P266133553488106053.Spec : Prop :=
  ∀ n, P266133553488106053.a n = A105498 n

end A105498

/-! ## A105498.P12818738732195903944

`A101663(A093178(n))+A101663(n)`
-/

namespace A105498.P12818738732195903944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101663 (A093178 n).toNat + A101663 n

end

end A105498.P12818738732195903944

namespace A105498

/-- `A101663(A093178(n))+A101663(n)` -/
def P12818738732195903944.Spec : Prop :=
  ∀ n, P12818738732195903944.a n = A105498 n

end A105498

/-! ## A105498.P10262067691038949594

`A071055(A245195(n))+A000034(n)`
-/

namespace A105498.P10262067691038949594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071055 (A245195 n).toNat + A000034 n

end

end A105498.P10262067691038949594

namespace A105498

/-- `A071055(A245195(n))+A000034(n)` -/
def P10262067691038949594.Spec : Prop :=
  ∀ n, P10262067691038949594.a n = A105498 n

end A105498

/-! ## A105498.P17894659339114377582

`A010702(n)-A000038(A014081(n))`
-/

namespace A105498.P17894659339114377582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 n - A000038 (A014081 n).toNat

end

end A105498.P17894659339114377582

namespace A105498

/-- `A010702(n)-A000038(A014081(n))` -/
def P17894659339114377582.Spec : Prop :=
  ∀ n, P17894659339114377582.a n = A105498 n

end A105498

/-! ## A105498.P7841222686332028194

`A010702(n)-A000038(A048735(n))`
-/

namespace A105498.P7841222686332028194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 n - A000038 (A048735 n).toNat

end

end A105498.P7841222686332028194

namespace A105498

/-- `A010702(n)-A000038(A048735(n))` -/
def P7841222686332028194.Spec : Prop :=
  ∀ n, P7841222686332028194.a n = A105498 n

end A105498

/-! ## A105498.P5067326447421488236

`A040002(A014081(n))-A059841(n)`
-/

namespace A105498.P5067326447421488236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A014081 n).toNat - A059841 n

end

end A105498.P5067326447421488236

namespace A105498

/-- `A040002(A014081(n))-A059841(n)` -/
def P5067326447421488236.Spec : Prop :=
  ∀ n, P5067326447421488236.a n = A105498 n

end A105498

/-! ## A105498.P2354586760561317775

`A158515(A163618(n+1))`
-/

namespace A105498.P2354586760561317775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158515 (A163618 (n + 1)).toNat

end

end A105498.P2354586760561317775

namespace A105498

/-- `A158515(A163618(n+1))` -/
def P2354586760561317775.Spec : Prop :=
  ∀ n, P2354586760561317775.a n = A105498 n

end A105498

/-! ## A105498.P12904645884103405082

`A010702(n)-A000038(A048728(n))`
-/

namespace A105498.P12904645884103405082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 n - A000038 (A048728 n).toNat

end

end A105498.P12904645884103405082

namespace A105498

/-- `A010702(n)-A000038(A048728(n))` -/
def P12904645884103405082.Spec : Prop :=
  ∀ n, P12904645884103405082.a n = A105498 n

end A105498

/-! ## A105498.P17083412047404790797

`A107279(A048728(n))+A000034(n)`
-/

namespace A105498.P17083412047404790797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A048728 n).toNat + A000034 n

end

end A105498.P17083412047404790797

namespace A105498

/-- `A107279(A048728(n))+A000034(n)` -/
def P17083412047404790797.Spec : Prop :=
  ∀ n, P17083412047404790797.a n = A105498 n

end A105498

/-!
# A105499: Trajectory of 1 under the morphism 1->{2,1,2}, 2->{1,3,1}, 3->{3,2,3}.

The programs for A105499, the canonical program `A105499.P17659406568366471516` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105499 has offset 0).

The definition of A105499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105499.P17659406568366471516

`A130784(A289813(n)+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A105499

/-- `A130784(A289813(n)+2)` -/
def P17659406568366471516.Spec : Prop :=
  ∀ n, P17659406568366471516.a n = A105499 n

theorem P17659406568366471516.correct : P17659406568366471516.Spec := by
  intro n
  simp only [A105499]

end A105499

/-! ## A105499.P13239160665297189525

`A010882(2*A289813(n)+1)`
-/

namespace A105499.P13239160665297189525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (2 * A289813 n + 1).toNat

end

end A105499.P13239160665297189525

namespace A105499

/-- `A010882(2*A289813(n)+1)` -/
def P13239160665297189525.Spec : Prop :=
  ∀ n, P13239160665297189525.a n = A105499 n

end A105499

/-! ## A105499.P6163648079450278804

`A102283(2*A289813(n))+2`
-/

namespace A105499.P6163648079450278804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (2 * A289813 n).toNat + 2

end

end A105499.P6163648079450278804

namespace A105499

/-- `A102283(2*A289813(n))+2` -/
def P6163648079450278804.Spec : Prop :=
  ∀ n, P6163648079450278804.a n = A105499 n

end A105499

/-! ## A105499.P5350012710492054954

`A010882(A289813(n)+A289813(n)+1)`
-/

namespace A105499.P5350012710492054954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A289813 n + (A289813 n + 1)).toNat

end

end A105499.P5350012710492054954

namespace A105499

/-- `A010882(A289813(n)+A289813(n)+1)` -/
def P5350012710492054954.Spec : Prop :=
  ∀ n, P5350012710492054954.a n = A105499 n

end A105499

/-! ## A105499.P8137598047337965436

`2-Δ[A349198(n)]`
-/

namespace A105499.P8137598047337965436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A105499.P8137598047337965436

namespace A105499

/-- `2-Δ[A349198(n)]` -/
def P8137598047337965436.Spec : Prop :=
  ∀ n, P8137598047337965436.a n = A105499 n

end A105499

/-! ## A105499.P1028089865511330984

`A092486(Δ[A349198(n)]+1)`
-/

namespace A105499.P1028089865511330984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (f1 (n + 1) - f1 n + 1).toNat

end

end A105499.P1028089865511330984

namespace A105499

/-- `A092486(Δ[A349198(n)]+1)` -/
def P1028089865511330984.Spec : Prop :=
  ∀ n, P1028089865511330984.a n = A105499 n

end A105499

/-! ## A105499.P17319649193756780273

`A028242(Δ[A349197(n)]+4)`
-/

namespace A105499.P17319649193756780273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (n + 1) - f1 n + 4).toNat

end

end A105499.P17319649193756780273

namespace A105499

/-- `A028242(Δ[A349197(n)]+4)` -/
def P17319649193756780273.Spec : Prop :=
  ∀ n, P17319649193756780273.a n = A105499 n

end A105499

/-! ## A105499.P4414651983480066416

`A001222(Δ[A349197(n)]+8)`
-/

namespace A105499.P4414651983480066416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n + 8).toNat

end

end A105499.P4414651983480066416

namespace A105499

/-- `A001222(Δ[A349197(n)]+8)` -/
def P4414651983480066416.Spec : Prop :=
  ∀ n, P4414651983480066416.a n = A105499 n

end A105499

/-! ## A105499.P2389810197532429385

`A014963(9-Δ[A349197(n)])`
-/

namespace A105499.P2389810197532429385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 - (f1 (n + 1) - f1 n)).toNat

end

end A105499.P2389810197532429385

namespace A105499

/-- `A014963(9-Δ[A349197(n)])` -/
def P2389810197532429385.Spec : Prop :=
  ∀ n, P2389810197532429385.a n = A105499 n

end A105499

/-! ## A105499.P11386921616859744039

`A003003(Δ[-A349198(n)]+2)`
-/

namespace A105499.P11386921616859744039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A349198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (f1 (n + 1) - f1 n + 2).toNat

end

end A105499.P11386921616859744039

namespace A105499

/-- `A003003(Δ[-A349198(n)]+2)` -/
def P11386921616859744039.Spec : Prop :=
  ∀ n, P11386921616859744039.a n = A105499 n

end A105499

/-! ## A105499.P9409645341847310607

`A006530(Δ[-A349198(n)]+2)`
-/

namespace A105499.P9409645341847310607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A349198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n + 2).toNat

end

end A105499.P9409645341847310607

namespace A105499

/-- `A006530(Δ[-A349198(n)]+2)` -/
def P9409645341847310607.Spec : Prop :=
  ∀ n, P9409645341847310607.a n = A105499 n

end A105499

/-! ## A105499.P922399921009118772

`A033307(9*(Δ[A349197(n)]+4))`
-/

namespace A105499.P922399921009118772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (9 * (f1 (n + 1) - f1 n + 4)).toNat

end

end A105499.P922399921009118772

namespace A105499

/-- `A033307(9*(Δ[A349197(n)]+4))` -/
def P922399921009118772.Spec : Prop :=
  ∀ n, P922399921009118772.a n = A105499 n

end A105499

/-! ## A105499.P12432002010624261116

`gcd(6, A000110(Δ[A349197(n)]+4))`
-/

namespace A105499.P12432002010624261116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349197 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A000110 (f1 (n + 1) - f1 n + 4).toNat)

end

end A105499.P12432002010624261116

namespace A105499

/-- `gcd(6, A000110(Δ[A349197(n)]+4))` -/
def P12432002010624261116.Spec : Prop :=
  ∀ n, (P12432002010624261116.a n : ℤ) = A105499 n

end A105499

/-! ## A105499.P3016814152558284404

`A007599(∑{d}[Δ[A349197(n)]+4, #])`
-/

namespace A105499.P3016814152558284404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349197 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A105499.P3016814152558284404

namespace A105499

/-- `A007599(∑{d}[Δ[A349197(n)]+4, #])` -/
def P3016814152558284404.Spec : Prop :=
  ∀ n, P3016814152558284404.a n = A105499 n

end A105499

/-! ## A105499.P5537137212975713962

`A010882(A016777(n)-A289813(n))`
-/

namespace A105499.P5537137212975713962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A016777 n - A289813 n).toNat

end

end A105499.P5537137212975713962

namespace A105499

/-- `A010882(A016777(n)-A289813(n))` -/
def P5537137212975713962.Spec : Prop :=
  ∀ n, P5537137212975713962.a n = A105499 n

end A105499

