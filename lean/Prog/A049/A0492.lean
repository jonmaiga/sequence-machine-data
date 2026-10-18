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
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A049200: Euler totient function phi applied to the n-th squarefree number.

The programs for A049200, the canonical program `A049200.P13161636575132395791` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049200 has offset 1).

The definition of A049200 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049200.P13161636575132395791

`A000010(A005117(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A049200

/-- `A000010(A005117(n+1))` -/
def P13161636575132395791.Spec : Prop :=
  ∀ n, P13161636575132395791.a n = A049200 (n + 1)

theorem P13161636575132395791.correct : P13161636575132395791.Spec := by
  intro n
  simp only [A049200, Nat.add_sub_cancel]

end A049200

/-! ## A049200.P200099815083194019

`A000010(comp[A105570(n)])`
-/

namespace A049200.P200099815083194019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A049200.P200099815083194019

namespace A049200

/-- `A000010(comp[A105570(n)])` -/
def P200099815083194019.Spec : Prop :=
  ∀ n, P200099815083194019.a n = A049200 (n + 1)

end A049200

/-! ## A049200.P1474416193359279761

`A003958(A133466(n+1))`
-/

namespace A049200.P1474416193359279761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A133466 (n + 1)).toNat

end

end A049200.P1474416193359279761

namespace A049200

/-- `A003958(A133466(n+1))` -/
def P1474416193359279761.Spec : Prop :=
  ∀ n, P1474416193359279761.a n = A049200 (n + 1)

end A049200

/-! ## A049200.P18402817954382839921

`A000010(lt[A105570(n), n])`
-/

namespace A049200.P18402817954382839921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A049200.P18402817954382839921

namespace A049200

/-- `A000010(lt[A105570(n), n])` -/
def P18402817954382839921.Spec : Prop :=
  ∀ n, P18402817954382839921.a n = A049200 (n + 1)

end A049200

/-! ## A049200.P9979111025725308308

`A000010(sqrt(A062503(n+1)))`
-/

namespace A049200.P9979111025725308308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A062503 (n + 1) : ℝ))).toNat

end

end A049200.P9979111025725308308

namespace A049200

/-- `A000010(sqrt(A062503(n+1)))` -/
def P9979111025725308308.Spec : Prop :=
  ∀ n, P9979111025725308308.a n = A049200 (n + 1)

end A049200

/-! ## A049200.P16244831665315626625

`A000010(record[A003967(n+1)])`
-/

namespace A049200.P16244831665315626625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049200.P16244831665315626625

namespace A049200

/-- `A000010(record[A003967(n+1)])` -/
def P16244831665315626625.Spec : Prop :=
  ∀ n, P16244831665315626625.a n = A049200 (n + 1)

end A049200

/-! ## A049200.P8181694876127096899

`A000010(record[A007913(n+1)])`
-/

namespace A049200.P8181694876127096899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049200.P8181694876127096899

namespace A049200

/-- `A000010(record[A007913(n+1)])` -/
def P8181694876127096899.Spec : Prop :=
  ∀ n, P8181694876127096899.a n = A049200 (n + 1)

end A049200

/-! ## A049200.P746150674046521108

`A000010(record[A007947(n+1)])`
-/

namespace A049200.P746150674046521108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049200.P746150674046521108

namespace A049200

/-- `A000010(record[A007947(n+1)])` -/
def P746150674046521108.Spec : Prop :=
  ∀ n, P746150674046521108.a n = A049200 (n + 1)

end A049200

/-! ## A049200.P2446299028642858955

`A003958(record[A007913(n+1)])`
-/

namespace A049200.P2446299028642858955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049200.P2446299028642858955

namespace A049200

/-- `A003958(record[A007913(n+1)])` -/
def P2446299028642858955.Spec : Prop :=
  ∀ n, P2446299028642858955.a n = A049200 (n + 1)

end A049200

/-! ## A049200.P2069069280538282885

`A000010(record[A055231(n+1)])`
-/

namespace A049200.P2069069280538282885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049200.P2069069280538282885

namespace A049200

/-- `A000010(record[A055231(n+1)])` -/
def P2069069280538282885.Spec : Prop :=
  ∀ n, P2069069280538282885.a n = A049200 (n + 1)

end A049200

/-! ## A049200.P6006977457858384641

`A000010(record[A055653(n+1)])`
-/

namespace A049200.P6006977457858384641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049200.P6006977457858384641

namespace A049200

/-- `A000010(record[A055653(n+1)])` -/
def P6006977457858384641.Spec : Prop :=
  ∀ n, P6006977457858384641.a n = A049200 (n + 1)

end A049200

/-! ## A049200.P16431708019092115791

`A000010(record[A083346(n+1)])`
-/

namespace A049200.P16431708019092115791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049200.P16431708019092115791

namespace A049200

/-- `A000010(record[A083346(n+1)])` -/
def P16431708019092115791.Spec : Prop :=
  ∀ n, P16431708019092115791.a n = A049200 (n + 1)

end A049200

/-! ## A049200.P241772579262579998

`A003958(2*A005117(n+1))`
-/

namespace A049200.P241772579262579998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (2 * A005117 (n + 1)).toNat

end

end A049200.P241772579262579998

namespace A049200

/-- `A003958(2*A005117(n+1))` -/
def P241772579262579998.Spec : Prop :=
  ∀ n, P241772579262579998.a n = A049200 (n + 1)

end A049200

/-! ## A049200.P17879883504910744773

`A173557(2*A005117(n+1))`
-/

namespace A049200.P17879883504910744773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (2 * A005117 (n + 1)).toNat

end

end A049200.P17879883504910744773

namespace A049200

/-- `A173557(2*A005117(n+1))` -/
def P17879883504910744773.Spec : Prop :=
  ∀ n, P17879883504910744773.a n = A049200 (n + 1)

end A049200

/-! ## A049200.P5418943846157917225

`A000010(A133466(n+1)/4)`
-/

namespace A049200.P5418943846157917225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A133466 (n + 1) : ℚ) / 4)).toNat

end

end A049200.P5418943846157917225

namespace A049200

/-- `A000010(A133466(n+1)/4)` -/
def P5418943846157917225.Spec : Prop :=
  ∀ n, P5418943846157917225.a n = A049200 (n + 1)

end A049200

/-! ## A049200.P11506095720452356610

`A000010(eq[1, A007424(n+1)]+1)`
-/

namespace A049200.P11506095720452356610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A049200.P11506095720452356610

namespace A049200

/-- `A000010(eq[1, A007424(n+1)]+1)` -/
def P11506095720452356610.Spec : Prop :=
  ∀ n, P11506095720452356610.a n = A049200 (n + 1)

end A049200

/-! ## A049200.P7504242739639167256

`A000010(A243348(n+1)+n+1)`
-/

namespace A049200.P7504242739639167256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A243348 (n + 1) + (n + 1 : ℤ)).toNat

end

end A049200.P7504242739639167256

namespace A049200

/-- `A000010(A243348(n+1)+n+1)` -/
def P7504242739639167256.Spec : Prop :=
  ∀ n, P7504242739639167256.a n = A049200 (n + 1)

end A049200

/-! ## A049200.P16957046551421833794

`A379715(n+1)/A062822(n+1)`
-/

namespace A049200.P16957046551421833794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379715 (n + 1) : ℚ) / (A062822 (n + 1) : ℚ)

end

end A049200.P16957046551421833794

namespace A049200

/-- `A379715(n+1)/A062822(n+1)` -/
def P16957046551421833794.Spec : Prop :=
  ∀ n, P16957046551421833794.a n = (A049200 (n + 1) : ℚ)

end A049200

/-! ## A049200.P8727391765174609122

`A000010(eq[1, A008683(n+1)²]+1)`
-/

namespace A049200.P8727391765174609122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A049200.P8727391765174609122

namespace A049200

/-- `A000010(eq[1, A008683(n+1)²]+1)` -/
def P8727391765174609122.Spec : Prop :=
  ∀ n, P8727391765174609122.a n = A049200 (n + 1)

end A049200

/-!
# A049202: Primes p whose order of primeness A049076(p) is >= 6.

The programs for A049202, the canonical program `A049202.P14441440426540642835` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049202 has offset 1).

The definition of A049202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049202.P14441440426540642835

`A049203(A000040(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049202

/-- `A049203(A000040(n+1))` -/
def P14441440426540642835.Spec : Prop :=
  ∀ n, P14441440426540642835.a n = A049202 (n + 1)

theorem P14441440426540642835.correct : P14441440426540642835.Spec := by
  intro n
  simp only [A049202, Nat.add_sub_cancel]

end A049202

/-! ## A049202.P5692985341210298040

`A049203(A008578(n+2))`
-/

namespace A049202.P5692985341210298040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (A008578 (n + 2)).toNat

end

end A049202.P5692985341210298040

namespace A049202

/-- `A049203(A008578(n+2))` -/
def P5692985341210298040.Spec : Prop :=
  ∀ n, P5692985341210298040.a n = A049202 (n + 1)

end A049202

/-! ## A049202.P13805905618588027895

`A049203(A182986(n+2))`
-/

namespace A049202.P13805905618588027895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (A182986 (n + 2)).toNat

end

end A049202.P13805905618588027895

namespace A049202

/-- `A049203(A182986(n+2))` -/
def P13805905618588027895.Spec : Prop :=
  ∀ n, P13805905618588027895.a n = A049202 (n + 1)

end A049202

/-! ## A049202.P14785317340204354662

`A049203(record[A006530(n+2)])`
-/

namespace A049202.P14785317340204354662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049202.P14785317340204354662

namespace A049202

/-- `A049203(record[A006530(n+2)])` -/
def P14785317340204354662.Spec : Prop :=
  ∀ n, P14785317340204354662.a n = A049202 (n + 1)

end A049202

/-! ## A049202.P142064707518160934

`A049203(record[A014963(n+2)])`
-/

namespace A049202.P142064707518160934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049202.P142064707518160934

namespace A049202

/-- `A049203(record[A014963(n+2)])` -/
def P142064707518160934.Spec : Prop :=
  ∀ n, P142064707518160934.a n = A049202 (n + 1)

end A049202

/-! ## A049202.P13636499154980851629

`A049203(record[A020639(n+2)])`
-/

namespace A049202.P13636499154980851629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049202.P13636499154980851629

namespace A049202

/-- `A049203(record[A020639(n+2)])` -/
def P13636499154980851629.Spec : Prop :=
  ∀ n, P13636499154980851629.a n = A049202 (n + 1)

end A049202

/-! ## A049202.P9850489337706808684

`A049203(A006450(n+1)-A168152(n+1))`
-/

namespace A049202.P9850489337706808684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (A006450 (n + 1) - A168152 (n + 1)).toNat

end

end A049202.P9850489337706808684

namespace A049202

/-- `A049203(A006450(n+1)-A168152(n+1))` -/
def P9850489337706808684.Spec : Prop :=
  ∀ n, P9850489337706808684.a n = A049202 (n + 1)

end A049202

/-! ## A049202.P1147838499265726862

`A049203(A000720(A073123(n+1)))`
-/

namespace A049202.P1147838499265726862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (A000720 (A073123 (n + 1)).toNat).toNat

end

end A049202.P1147838499265726862

namespace A049202

/-- `A049203(A000720(A073123(n+1)))` -/
def P1147838499265726862.Spec : Prop :=
  ∀ n, P1147838499265726862.a n = A049202 (n + 1)

end A049202

/-! ## A049202.P13494311862804813954

`A049090(A006450(n+1))`
-/

namespace A049202.P13494311862804813954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (A006450 (n + 1)).toNat

end

end A049202.P13494311862804813954

namespace A049202

/-- `A049090(A006450(n+1))` -/
def P13494311862804813954.Spec : Prop :=
  ∀ n, P13494311862804813954.a n = A049202 (n + 1)

end A049202

/-! ## A049202.P9230714680725800498

`A049090(A175247(n+2))`
-/

namespace A049202.P9230714680725800498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (A175247 (n + 2)).toNat

end

end A049202.P9230714680725800498

namespace A049202

/-- `A049090(A175247(n+2))` -/
def P9230714680725800498.Spec : Prop :=
  ∀ n, P9230714680725800498.a n = A049202 (n + 1)

end A049202

/-! ## A049202.P8706344155058797244

`A049203(A137588(A006450(n+1))+n+1)`
-/

namespace A049202.P8706344155058797244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (A137588 (A006450 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A049202.P8706344155058797244

namespace A049202

/-- `A049203(A137588(A006450(n+1))+n+1)` -/
def P8706344155058797244.Spec : Prop :=
  ∀ n, P8706344155058797244.a n = A049202 (n + 1)

end A049202

/-! ## A049202.P7284621719931256261

`A049090(∪[A049090(n+1), A333353(n+1)])`
-/

namespace A049202.P7284621719931256261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333353 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A049202.P7284621719931256261

namespace A049202

/-- `A049090(∪[A049090(n+1), A333353(n+1)])` -/
def P7284621719931256261.Spec : Prop :=
  ∀ n, P7284621719931256261.a n = A049202 (n + 1)

end A049202

/-!
# A049203: Primes for which A049076(p) >= 5.

The programs for A049203, the canonical program `A049203.P5712237589666905805` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049203 has offset 1).

The definition of A049203 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A049090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049203.P5712237589666905805

`A000040(A049090(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A049203

/-- `A000040(A049090(n+1))` -/
def P5712237589666905805.Spec : Prop :=
  ∀ n, P5712237589666905805.a n = A049203 (n + 1)

theorem P5712237589666905805.correct : P5712237589666905805.Spec := by
  intro n
  simp only [A049203, Nat.add_sub_cancel]

end A049203

/-! ## A049203.P10903553809475030126

`A049090(A008578(n+2))`
-/

namespace A049203.P10903553809475030126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (A008578 (n + 2)).toNat

end

end A049203.P10903553809475030126

namespace A049203

/-- `A049090(A008578(n+2))` -/
def P10903553809475030126.Spec : Prop :=
  ∀ n, P10903553809475030126.a n = A049203 (n + 1)

end A049203

/-! ## A049203.P12090955091879414556

`A049090(A182986(n+2))`
-/

namespace A049203.P12090955091879414556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (A182986 (n + 2)).toNat

end

end A049203.P12090955091879414556

namespace A049203

/-- `A049090(A182986(n+2))` -/
def P12090955091879414556.Spec : Prop :=
  ∀ n, P12090955091879414556.a n = A049203 (n + 1)

end A049203

/-! ## A049203.P10724211647554458631

`A049090(A158611(n+3))`
-/

namespace A049203.P10724211647554458631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (A158611 (n + 3)).toNat

end

end A049203.P10724211647554458631

namespace A049203

/-- `A049090(A158611(n+3))` -/
def P10724211647554458631.Spec : Prop :=
  ∀ n, P10724211647554458631.a n = A049203 (n + 1)

end A049203

/-! ## A049203.P15488254969314766921

`A049090(sqrt(A001248(n+1)))`
-/

namespace A049203.P15488254969314766921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A049203.P15488254969314766921

namespace A049203

/-- `A049090(sqrt(A001248(n+1)))` -/
def P15488254969314766921.Spec : Prop :=
  ∀ n, P15488254969314766921.a n = A049203 (n + 1)

end A049203

/-! ## A049203.P5560125257545028401

`A049090(record[A006530(n+2)])`
-/

namespace A049203.P5560125257545028401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049203.P5560125257545028401

namespace A049203

/-- `A049090(record[A006530(n+2)])` -/
def P5560125257545028401.Spec : Prop :=
  ∀ n, P5560125257545028401.a n = A049203 (n + 1)

end A049203

/-! ## A049203.P8559651252232203645

`A049090(record[A014963(n+2)])`
-/

namespace A049203.P8559651252232203645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049203.P8559651252232203645

namespace A049203

/-- `A049090(record[A014963(n+2)])` -/
def P8559651252232203645.Spec : Prop :=
  ∀ n, P8559651252232203645.a n = A049203 (n + 1)

end A049203

/-! ## A049203.P12803206574007989193

`A049090(record[A020639(n+2)])`
-/

namespace A049203.P12803206574007989193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049203.P12803206574007989193

namespace A049203

/-- `A049090(record[A020639(n+2)])` -/
def P12803206574007989193.Spec : Prop :=
  ∀ n, P12803206574007989193.a n = A049203 (n + 1)

end A049203

/-! ## A049203.P2900298901703365935

`A049090(A100484(n+1)/2)`
-/

namespace A049203.P2900298901703365935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A049203.P2900298901703365935

namespace A049203

/-- `A049090(A100484(n+1)/2)` -/
def P2900298901703365935.Spec : Prop :=
  ∀ n, P2900298901703365935.a n = A049203 (n + 1)

end A049203

/-! ## A049203.P11542070455353378922

`record[A049090(n+2)/A001222(n+2)²]`
-/

namespace A049203.P11542070455353378922
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049090 (n + 2) : ℚ) / (A001222 (n + 2) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049203.P11542070455353378922

namespace A049203

/-- `record[A049090(n+2)/A001222(n+2)²]` -/
def P11542070455353378922.Spec : Prop :=
  ∀ n, P11542070455353378922.a n = (A049203 (n + 1) : ℚ)

end A049203

/-! ## A049203.P5948633634582736082

`A038580(A006450(n+1))`
-/

namespace A049203.P5948633634582736082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A006450 (n + 1)).toNat

end

end A049203.P5948633634582736082

namespace A049203

/-- `A038580(A006450(n+1))` -/
def P5948633634582736082.Spec : Prop :=
  ∀ n, P5948633634582736082.a n = A049203 (n + 1)

end A049203

/-! ## A049203.P2476391962955663448

`A038580(A175247(n+2))`
-/

namespace A049203.P2476391962955663448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A175247 (n + 2)).toNat

end

end A049203.P2476391962955663448

namespace A049203

/-- `A038580(A175247(n+2))` -/
def P2476391962955663448.Spec : Prop :=
  ∀ n, P2476391962955663448.a n = A049203 (n + 1)

end A049203

/-! ## A049203.P16985899806957911177

`A049090(p?[A049084(n+1)])`
-/

namespace A049203.P16985899806957911177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049203.P16985899806957911177

namespace A049203

/-- `A049090(p?[A049084(n+1)])` -/
def P16985899806957911177.Spec : Prop :=
  ∀ n, P16985899806957911177.a n = A049203 (n + 1)

end A049203

/-! ## A049203.P6729128353484021286

`A038580(A262021(n+1)+1+n)`
-/

namespace A049203.P6729128353484021286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A262021 (n + 1) + 1 + (n : ℤ)).toNat

end

end A049203.P6729128353484021286

namespace A049203

/-- `A038580(A262021(n+1)+1+n)` -/
def P6729128353484021286.Spec : Prop :=
  ∀ n, P6729128353484021286.a n = A049203 (n + 1)

end A049203

/-! ## A049203.P4398931425414879836

`A038580(A080697(n+1)/(n+1))`
-/

namespace A049203.P4398931425414879836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (SequenceMachineLib.roundAway ((A080697 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A049203.P4398931425414879836

namespace A049203

/-- `A038580(A080697(n+1)/(n+1))` -/
def P4398931425414879836.Spec : Prop :=
  ∀ n, P4398931425414879836.a n = A049203 (n + 1)

end A049203

/-! ## A049203.P7575644611082074737

`A038580(A000040(A014689(n+1)+n+1))`
-/

namespace A049203.P7575644611082074737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A000040 (A014689 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A049203.P7575644611082074737

namespace A049203

/-- `A038580(A000040(A014689(n+1)+n+1))` -/
def P7575644611082074737.Spec : Prop :=
  ∀ n, P7575644611082074737.a n = A049203 (n + 1)

end A049203

/-! ## A049203.P14108584199066528417

`A038580(A168152(n+1)+A000040(n+1))`
-/

namespace A049203.P14108584199066528417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A168152 (n + 1) + A000040 (n + 1)).toNat

end

end A049203.P14108584199066528417

namespace A049203

/-- `A038580(A168152(n+1)+A000040(n+1))` -/
def P14108584199066528417.Spec : Prop :=
  ∀ n, P14108584199066528417.a n = A049203 (n + 1)

end A049203

/-! ## A049203.P15593276881927571517

`A038580(A038580(n+1)-A378027(n+1))`
-/

namespace A049203.P15593276881927571517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A038580 (n + 1) - A378027 (n + 1)).toNat

end

end A049203.P15593276881927571517

namespace A049203

/-- `A038580(A038580(n+1)-A378027(n+1))` -/
def P15593276881927571517.Spec : Prop :=
  ∀ n, P15593276881927571517.a n = A049203 (n + 1)

end A049203

/-! ## A049203.P17897122369513371772

`A006450(A006450(p?[comp[n²]]))`
-/

namespace A049203.P17897122369513371772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A006450 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A049203.P17897122369513371772

namespace A049203

/-- `A006450(A006450(p?[comp[n²]]))` -/
def P17897122369513371772.Spec : Prop :=
  ∀ n, P17897122369513371772.a n = A049203 (n + 1)

end A049203

/-! ## A049203.P4370266364419653345

`A006450(A006450(eq[2, ∑{d}[n, 2%(#+1)]]))`
-/

namespace A049203.P4370266364419653345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), 2 % (d + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A006450 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)).toNat

end

end A049203.P4370266364419653345

namespace A049203

/-- `A006450(A006450(eq[2, ∑{d}[n, 2%(#+1)]]))` -/
def P4370266364419653345.Spec : Prop :=
  ∀ n, P4370266364419653345.a n = A049203 (n + 1)

end A049203

/-!
# A049205: Theta series for a certain extremal 42-dimensional unimodular lattice.

The programs for A049205, there is no canonical definition to state claims against.
-/

/-! ## A049205.P8010632435879428791

`C(val(n!!, 3), n)²`
-/

namespace A049205.P8010632435879428791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.valuation (Nat.factorial (Nat.factorial n)) 3) n ^ 2

end

end A049205.P8010632435879428791

/-!
# A049206: Maximum mean distance between cards during perfect faro shuffles, with cut, to return to original order in A024222.

The programs for A049206, the canonical program `A049206.P2677798893032348167` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049206 has offset 1).

The definition of A049206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049206.P5276746991921306718

`∑[∑[char[2]+n]%2]`
-/

namespace A049206.P5276746991921306718
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049206.P5276746991921306718

namespace A049206

/-- `∑[∑[char[2]+n]%2]` -/
def P5276746991921306718.Spec : Prop :=
  ∀ n, (P5276746991921306718.a n : ℤ) = A049206 (n + 1)

end A049206

/-! ## A049206.P16509350554101541597

`∑[and(1, ∑[char[2]+n])]`
-/

namespace A049206.P16509350554101541597
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049206.P16509350554101541597

namespace A049206

/-- `∑[and(1, ∑[char[2]+n])]` -/
def P16509350554101541597.Spec : Prop :=
  ∀ n, (P16509350554101541597.a n : ℤ) = A049206 (n + 1)

end A049206

/-! ## A049206.P2677798893032348167

`n-a(n-2)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049206

/-- `n-a(n-2)` -/
def P2677798893032348167.Spec : Prop :=
  ∀ n, P2677798893032348167.a n = A049206 (n + 1)

theorem P2677798893032348167.correct : P2677798893032348167.Spec := by
  intro n
  simp only [A049206, Nat.add_sub_cancel]

end A049206

/-! ## A049206.P6234213249970294304

`∑[gcd(2, ∑[n])]%(n+1)`
-/

namespace A049206.P6234213249970294304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A049206.P6234213249970294304

namespace A049206

/-- `∑[gcd(2, ∑[n])]%(n+1)` -/
def P6234213249970294304.Spec : Prop :=
  ∀ n, (P6234213249970294304.a n : ℤ) = A049206 (n + 1)

end A049206

/-! ## A049206.P9483430516062854614

`round(sqrt(n*∑[char[4*n]]))`
-/

namespace A049206.P9483430516062854614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℝ))

end

end A049206.P9483430516062854614

namespace A049206

/-- `round(sqrt(n*∑[char[4*n]]))` -/
def P9483430516062854614.Spec : Prop :=
  ∀ n, P9483430516062854614.a n = A049206 (n + 1)

end A049206

/-! ## A049206.P13858126327352756273

`∑[((2-n)%4)²%3]-1`
-/

namespace A049206.P13858126327352756273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (2 - (n : ℤ)) 4 ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049206.P13858126327352756273

namespace A049206

/-- `∑[((2-n)%4)²%3]-1` -/
def P13858126327352756273.Spec : Prop :=
  ∀ n, P13858126327352756273.a n = A049206 (n + 1)

end A049206

/-! ## A049206.P18085870746365544842

`∑[and(2, n-1)!]%(n+1)`
-/

namespace A049206.P18085870746365544842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 2 ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A049206.P18085870746365544842

namespace A049206

/-- `∑[and(2, n-1)!]%(n+1)` -/
def P18085870746365544842.Spec : Prop :=
  ∀ n, (P18085870746365544842.a n : ℤ) = A049206 (n + 1)

end A049206

/-! ## A049206.P8142763463424677885

`∑[(∑[n]+1)%2]%(n+1)`
-/

namespace A049206.P8142763463424677885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A049206.P8142763463424677885

namespace A049206

/-- `∑[(∑[n]+1)%2]%(n+1)` -/
def P8142763463424677885.Spec : Prop :=
  ∀ n, (P8142763463424677885.a n : ℤ) = A049206 (n + 1)

end A049206

/-! ## A049206.P8657556189997781640

`A092038(n+1)-1`
-/

namespace A049206.P8657556189997781640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (n + 1) - 1

end

end A049206.P8657556189997781640

namespace A049206

/-- `A092038(n+1)-1` -/
def P8657556189997781640.Spec : Prop :=
  ∀ n, P8657556189997781640.a n = A049206 (n + 1)

end A049206

/-! ## A049206.P3842758529515202975

`∑[char[A003815(n)]]-1`
-/

namespace A049206.P3842758529515202975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A049206.P3842758529515202975

namespace A049206

/-- `∑[char[A003815(n)]]-1` -/
def P3842758529515202975.Spec : Prop :=
  ∀ n, P3842758529515202975.a n = A049206 (n + 1)

end A049206

/-! ## A049206.P13239144308098140080

`A004525(floor(atan(n)+n))`
-/

namespace A049206.P13239144308098140080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ⌊Real.arctan (n : ℝ) + (n : ℝ)⌋.toNat

end

end A049206.P13239144308098140080

namespace A049206

/-- `A004525(floor(atan(n)+n))` -/
def P13239144308098140080.Spec : Prop :=
  ∀ n, P13239144308098140080.a n = A049206 (n + 1)

end A049206

/-! ## A049206.P17509317922676624380

`A004525(n+1)%(n+1)`
-/

namespace A049206.P17509317922676624380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004525 (n + 1)) (n + 1 : ℤ)

end

end A049206.P17509317922676624380

namespace A049206

/-- `A004525(n+1)%(n+1)` -/
def P17509317922676624380.Spec : Prop :=
  ∀ n, P17509317922676624380.a n = A049206 (n + 1)

end A049206

/-! ## A049206.P16698579236805577165

`ceil(∑[2*n]/A074231(n+1))`
-/

namespace A049206.P16698579236805577165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A074231 (n + 1) : ℚ)⌉

end

end A049206.P16698579236805577165

namespace A049206

/-- `ceil(∑[2*n]/A074231(n+1))` -/
def P16698579236805577165.Spec : Prop :=
  ∀ n, P16698579236805577165.a n = A049206 (n + 1)

end A049206

/-! ## A049206.P17761749179680725035

`n-∑[char[A330602(2*n+1)]]`
-/

namespace A049206.P17761749179680725035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330602 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A049206.P17761749179680725035

namespace A049206

/-- `n-∑[char[A330602(2*n+1)]]` -/
def P17761749179680725035.Spec : Prop :=
  ∀ n, P17761749179680725035.a n = A049206 (n + 1)

end A049206

/-! ## A049206.P11501750175468051122

`A004525(A326178(n))`
-/

namespace A049206.P11501750175468051122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A326178 n).toNat

end

end A049206.P11501750175468051122

namespace A049206

/-- `A004525(A326178(n))` -/
def P11501750175468051122.Spec : Prop :=
  ∀ n, P11501750175468051122.a n = A049206 (n + 1)

end A049206

/-! ## A049206.P11475961311702849678

`A004525(A087156(n+1))`
-/

namespace A049206.P11475961311702849678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A087156 (n + 1)).toNat

end

end A049206.P11475961311702849678

namespace A049206

/-- `A004525(A087156(n+1))` -/
def P11475961311702849678.Spec : Prop :=
  ∀ n, P11475961311702849678.a n = A049206 (n + 1)

end A049206

/-! ## A049206.P18344131416955731490

`A004525(A184985(n+1))`
-/

namespace A049206.P18344131416955731490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A184985 (n + 1)).toNat

end

end A049206.P18344131416955731490

namespace A049206

/-- `A004525(A184985(n+1))` -/
def P18344131416955731490.Spec : Prop :=
  ∀ n, P18344131416955731490.a n = A049206 (n + 1)

end A049206

/-! ## A049206.P15765994491751967594

`A004525(A057427(n)+n)`
-/

namespace A049206.P15765994491751967594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A057427 n + (n : ℤ)).toNat

end

end A049206.P15765994491751967594

namespace A049206

/-- `A004525(A057427(n)+n)` -/
def P15765994491751967594.Spec : Prop :=
  ∀ n, P15765994491751967594.a n = A049206 (n + 1)

end A049206

/-! ## A049206.P2402991154876928491

`A057427(n)+A004524(n)`
-/

namespace A049206.P2402991154876928491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004524 n

end

end A049206.P2402991154876928491

namespace A049206

/-- `A057427(n)+A004524(n)` -/
def P2402991154876928491.Spec : Prop :=
  ∀ n, P2402991154876928491.a n = A049206 (n + 1)

end A049206

/-! ## A049206.P816805703883049105

`A004524(n)-A057428(n)`
-/

namespace A049206.P816805703883049105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n - A057428 n

end

end A049206.P816805703883049105

namespace A049206

/-- `A004524(n)-A057428(n)` -/
def P816805703883049105.Spec : Prop :=
  ∀ n, P816805703883049105.a n = A049206 (n + 1)

end A049206

/-!
# A049207: Array T(m,n) of products of pronic numbers m(m+1) * n(n+1) read by antidiagonals ("bipronics").

The programs for A049207, the canonical program `A049207.P6650206018968943836` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049207 has offset 0).

The definition of A049207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049207.P7325526718959194536

`4*A268759(abs(1-n))`
-/

namespace A049207.P7325526718959194536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A268759 |1 - (n : ℤ)|.toNat

end

end A049207.P7325526718959194536

namespace A049207

/-- `4*A268759(abs(1-n))` -/
def P7325526718959194536.Spec : Prop :=
  ∀ n, P7325526718959194536.a n = A049207 n

end A049207

/-! ## A049207.P2108241769793881699

`4*(A113582(n+1)-1)`
-/

namespace A049207.P2108241769793881699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A113582 (n + 1) - 1)

end

end A049207.P2108241769793881699

namespace A049207

/-- `4*(A113582(n+1)-1)` -/
def P2108241769793881699.Spec : Prop :=
  ∀ n, P2108241769793881699.a n = A049207 n

end A049207

/-! ## A049207.P2727273260170124836

`A068606(n)+A004247(n)²`
-/

namespace A049207.P2727273260170124836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068606 n + A004247 n ^ 2

end

end A049207.P2727273260170124836

namespace A049207

/-- `A068606(n)+A004247(n)²` -/
def P2727273260170124836.Spec : Prop :=
  ∀ n, P2727273260170124836.a n = A049207 n

end A049207

/-! ## A049207.P6650206018968943836

`A003991(n+1)*A004247(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A049207

/-- `A003991(n+1)*A004247(n)` -/
def P6650206018968943836.Spec : Prop :=
  ∀ n, P6650206018968943836.a n = A049207 n

theorem P6650206018968943836.correct : P6650206018968943836.Spec := by
  intro n
  simp only [A049207]

end A049207

/-! ## A049207.P10923563640451089337

`(A059036(n)+1)*A004247(n)`
-/

namespace A049207.P10923563640451089337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059036 n + 1) * A004247 n

end

end A049207.P10923563640451089337

namespace A049207

/-- `(A059036(n)+1)*A004247(n)` -/
def P10923563640451089337.Spec : Prop :=
  ∀ n, P10923563640451089337.a n = A049207 n

end A049207

/-! ## A049207.P9588927300239747746

`A068606(n)+(1-A077028(n))²`
-/

namespace A049207.P9588927300239747746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068606 n + (1 - A077028 n) ^ 2

end

end A049207.P9588927300239747746

namespace A049207

/-- `A068606(n)+(1-A077028(n))²` -/
def P9588927300239747746.Spec : Prop :=
  ∀ n, P9588927300239747746.a n = A049207 n

end A049207

/-! ## A049207.P14962403267912095545

`(A077028(n)-1)*A003991(n+1)`
-/

namespace A049207.P14962403267912095545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077028 n - 1) * A003991 (n + 1)

end

end A049207.P14962403267912095545

namespace A049207

/-- `(A077028(n)-1)*A003991(n+1)` -/
def P14962403267912095545.Spec : Prop :=
  ∀ n, P14962403267912095545.a n = A049207 n

end A049207

/-! ## A049207.P15297530863541277250

`(1-A176270(n))*A003991(n+1)`
-/

namespace A049207.P15297530863541277250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A176270 n) * A003991 (n + 1)

end

end A049207.P15297530863541277250

namespace A049207

/-- `(1-A176270(n))*A003991(n+1)` -/
def P15297530863541277250.Spec : Prop :=
  ∀ n, P15297530863541277250.a n = A049207 n

end A049207

/-! ## A049207.P17908955219698886227

`(A128139(n)-1)*A094053(n+1)`
-/

namespace A049207.P17908955219698886227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128139 n - 1) * A094053 (n + 1)

end

end A049207.P17908955219698886227

namespace A049207

/-- `(A128139(n)-1)*A094053(n+1)` -/
def P17908955219698886227.Spec : Prop :=
  ∀ n, P17908955219698886227.a n = A049207 n

end A049207

/-! ## A049207.P14991830309827810929

`2*A002260(n+1)*A062707(n)`
-/

namespace A049207.P14991830309827810929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002260 (n + 1) * A062707 n)

end

end A049207.P14991830309827810929

namespace A049207

/-- `2*A002260(n+1)*A062707(n)` -/
def P14991830309827810929.Spec : Prop :=
  ∀ n, P14991830309827810929.a n = A049207 n

end A049207

/-! ## A049207.P3124346773593708522

`2*A134868(n+1)*A062707(n)`
-/

namespace A049207.P3124346773593708522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134868 (n + 1) * A062707 n

end

end A049207.P3124346773593708522

namespace A049207

/-- `2*A134868(n+1)*A062707(n)` -/
def P3124346773593708522.Spec : Prop :=
  ∀ n, P3124346773593708522.a n = A049207 n

end A049207

/-! ## A049207.P7951614404106746008

`(A077028(n)+A003056(n))*A004247(n)`
-/

namespace A049207.P7951614404106746008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077028 n + A003056 n) * A004247 n

end

end A049207.P7951614404106746008

namespace A049207

/-- `(A077028(n)+A003056(n))*A004247(n)` -/
def P7951614404106746008.Spec : Prop :=
  ∀ n, P7951614404106746008.a n = A049207 n

end A049207

/-! ## A049207.P12627624744372320777

`(A049627(n)+A049615(n))*A004247(n)`
-/

namespace A049207.P12627624744372320777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049627 n + A049615 n) * A004247 n

end

end A049207.P12627624744372320777

namespace A049207

/-- `(A049627(n)+A049615(n))*A004247(n)` -/
def P12627624744372320777.Spec : Prop :=
  ∀ n, P12627624744372320777.a n = A049207 n

end A049207

/-! ## A049207.P3249079571128673370

`(A123578(n)+A004247(n))*A004247(n)`
-/

namespace A049207.P3249079571128673370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123578 n + A004247 n) * A004247 n

end

end A049207.P3249079571128673370

namespace A049207

/-- `(A123578(n)+A004247(n))*A004247(n)` -/
def P3249079571128673370.Spec : Prop :=
  ∀ n, P3249079571128673370.a n = A049207 n

end A049207

/-! ## A049207.P11436013784542435459

`(A130855(n)+A004247(n))*A004247(n)`
-/

namespace A049207.P11436013784542435459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130855 n + A004247 n) * A004247 n

end

end A049207.P11436013784542435459

namespace A049207

/-- `(A130855(n)+A004247(n))*A004247(n)` -/
def P11436013784542435459.Spec : Prop :=
  ∀ n, P11436013784542435459.a n = A049207 n

end A049207

/-! ## A049207.P13771271236167032210

`(A004247(n)+∑[A010054(n)])*A004247(n)`
-/

namespace A049207.P13771271236167032210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004247 n + ∑ j ∈ Finset.range (n + 1), f1 j) * A004247 n

end

end A049207.P13771271236167032210

namespace A049207

/-- `(A004247(n)+∑[A010054(n)])*A004247(n)` -/
def P13771271236167032210.Spec : Prop :=
  ∀ n, P13771271236167032210.a n = A049207 n

end A049207

/-! ## A049207.P3458485634418646355

`(A004247(n)+A002024(n+1))*A004247(n)`
-/

namespace A049207.P3458485634418646355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004247 n + A002024 (n + 1)) * A004247 n

end

end A049207.P3458485634418646355

namespace A049207

/-- `(A004247(n)+A002024(n+1))*A004247(n)` -/
def P3458485634418646355.Spec : Prop :=
  ∀ n, P3458485634418646355.a n = A049207 n

end A049207

/-! ## A049207.P12791689770979541039

`A003991(n+1)*A025581(n)*A002262(n)`
-/

namespace A049207.P12791689770979541039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A025581 n * A002262 n

end

end A049207.P12791689770979541039

namespace A049207

/-- `A003991(n+1)*A025581(n)*A002262(n)` -/
def P12791689770979541039.Spec : Prop :=
  ∀ n, P12791689770979541039.a n = A049207 n

end A049207

/-! ## A049207.P14140881598649594073

`(A002262(n)+A002262(n)²)*A095832(n+1)`
-/

namespace A049207.P14140881598649594073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + A002262 n ^ 2) * A095832 (n + 1)

end

end A049207.P14140881598649594073

namespace A049207

/-- `(A002262(n)+A002262(n)²)*A095832(n+1)` -/
def P14140881598649594073.Spec : Prop :=
  ∀ n, P14140881598649594073.a n = A049207 n

end A049207

/-! ## A049207.P13436931324185181153

`(A141429(n+1)-A004736(n+1))*A004247(n)`
-/

namespace A049207.P13436931324185181153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141429 (n + 1) - A004736 (n + 1)) * A004247 n

end

end A049207.P13436931324185181153

namespace A049207

/-- `(A141429(n+1)-A004736(n+1))*A004247(n)` -/
def P13436931324185181153.Spec : Prop :=
  ∀ n, P13436931324185181153.a n = A049207 n

end A049207

/-!
# A049208: Perfect square associated with A048699.

The programs for A049208, there is no canonical definition to state claims against.
-/

/-! ## A049208.P10198994429722614267

`∑{d}[A048699(n+1), #]-A048699(n+1)`
-/

namespace A049208.P10198994429722614267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - A048699 (n + 1)

end

end A049208.P10198994429722614267

/-! ## A049208.P15957470946085841167

`A000203(A048699(n+1))-A048699(n+1)`
-/

namespace A049208.P15957470946085841167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A048699 (n + 1)).toNat - A048699 (n + 1)

end

end A049208.P15957470946085841167

/-! ## A049208.P15306243160414199408

`A091818(A048699(n+1))/2`
-/

namespace A049208.P15306243160414199408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (A048699 (n + 1)).toNat : ℚ) / 2

end

end A049208.P15306243160414199408

/-! ## A049208.P12419312562822301166

`A001065(A048699(n+1))`
-/

namespace A049208.P12419312562822301166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A048699 (n + 1)).toNat

end

end A049208.P12419312562822301166

/-! ## A049208.P5724440618142058189

`∑{d}[A048699(n+1), A051953(#)]`
-/

namespace A049208.P5724440618142058189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A051953 d

end

end A049208.P5724440618142058189

/-! ## A049208.P11009462002489745007

`A173455(A048699(n+1))-A000007(n)`
-/

namespace A049208.P11009462002489745007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (A048699 (n + 1)).toNat - A000007 n

end

end A049208.P11009462002489745007

/-! ## A049208.P16532783877924737899

`A173455(A048699(n+1))%A003215(n)`
-/

namespace A049208.P16532783877924737899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173455 (A048699 (n + 1)).toNat) (A003215 n)

end

end A049208.P16532783877924737899

/-! ## A049208.P6052308283113499547

`A001065(∩[A018252(n+1), A073040(n+1)])`
-/

namespace A049208.P6052308283113499547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A049208.P6052308283113499547

/-! ## A049208.P13519126876132402827

`A000040(n+1)%2*A173455(A048699(n+1))`
-/

namespace A049208.P13519126876132402827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A173455 (A048699 (n + 1)).toNat

end

end A049208.P13519126876132402827

/-!
# A049209: a(n) = -Product_{k=0..n} (7*k-1); sept-factorial numbers.

The programs for A049209, the canonical program `A049209.P479842160945356271` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049209 has offset 0).

The definition of A049209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049209.P479842160945356271

`(7*n-1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049209

/-- `(7*n-1)*a(n-1)` -/
def P479842160945356271.Spec : Prop :=
  ∀ n, P479842160945356271.a n = A049209 n

theorem P479842160945356271.correct : P479842160945356271.Spec := by
  intro n
  simp only [A049209]

end A049209

/-! ## A049209.P5156638286031456495

`∏[abs(1-7*n)]`
-/

namespace A049209.P5156638286031456495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (7 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049209.P5156638286031456495

namespace A049209

/-- `∏[abs(1-7*n)]` -/
def P5156638286031456495.Spec : Prop :=
  ∀ n, P5156638286031456495.a n = A049209 n

end A049209

/-! ## A049209.P5825439930127732728

`abs(∏[a(n-1)-7])` with `a(0)=1`
-/

namespace A049209.P5825439930127732728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A049209.P5825439930127732728

namespace A049209

/-- `abs(∏[a(n-1)-7])` -/
def P5825439930127732728.Spec : Prop :=
  ∀ n, P5825439930127732728.a n = A049209 n

end A049209

/-! ## A049209.P13337318570432073158

`-∏[a(n-1)+7]` with `a(0)=-1`
-/

namespace A049209.P13337318570432073158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A049209.P13337318570432073158

namespace A049209

/-- `-∏[a(n-1)+7]` -/
def P13337318570432073158.Spec : Prop :=
  ∀ n, P13337318570432073158.a n = A049209 n

end A049209

/-! ## A049209.P72235278677306595

`∏[a(n-1)+7]/4` with `a(0)=4, a(1)=6`
-/

namespace A049209.P72235278677306595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 6] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4

end

end A049209.P72235278677306595

namespace A049209

/-- `∏[a(n-1)+7]/4` -/
def P72235278677306595.Spec : Prop :=
  ∀ n, P72235278677306595.a n = (A049209 n : ℚ)

end A049209

/-!
# A049210: a(n) = -Product_{k=0..n} (8*k-1); octo-factorial numbers.

The programs for A049210, there is no canonical definition to state claims against.
-/

/-! ## A049210.P12424984083785507319

`∏[abs(1-8*n)]`
-/

namespace A049210.P12424984083785507319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (8 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049210.P12424984083785507319

/-! ## A049210.P6634452451923959548

`abs(∏[a(n-1)-8])` with `a(0)=1`
-/

namespace A049210.P6634452451923959548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A049210.P6634452451923959548

/-! ## A049210.P3248415220080371530

`-∏[or(7, 8*(n-1))]`
-/

namespace A049210.P3248415220080371530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (8 * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A049210.P3248415220080371530

/-! ## A049210.P7329378532640431326

`-∏[xor(7, 8*(n-1))]`
-/

namespace A049210.P7329378532640431326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (8 * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A049210.P7329378532640431326

/-! ## A049210.P333160237259353990

`-∏[a(n-1)+8]` with `a(0)=-1`
-/

namespace A049210.P333160237259353990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A049210.P333160237259353990

/-!
# A049211: a(n) = Product_{k=1..n} (9*k - 1); 9-factorial numbers.

The programs for A049211, there is no canonical definition to state claims against.
-/

/-! ## A049211.P9543892188428470644

`∏[abs(1-9*n)]`
-/

namespace A049211.P9543892188428470644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (9 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049211.P9543892188428470644

/-! ## A049211.P13095301966177550325

`abs(∏[a(n-1)-9])` with `a(0)=1`
-/

namespace A049211.P13095301966177550325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A049211.P13095301966177550325

/-! ## A049211.P5700706769378115395

`-∏[a(n-1)+9]` with `a(0)=-1`
-/

namespace A049211.P5700706769378115395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A049211.P5700706769378115395

/-! ## A049211.P4661985850661604038

`(9*n-1)*a(n-1)` with `a(0)=1`
-/

namespace A049211.P4661985850661604038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((9 * n : ℤ) - 1) * a (n - 1)

end

end A049211.P4661985850661604038

/-! ## A049211.P8091255636027225056

`-∏[A017173(n)-2]`
-/

namespace A049211.P8091255636027225056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A049211.P8091255636027225056

/-!
# A049212: a(n) = -Product_{k=0..n} (10*k - 1); deca-factorial numbers.

The programs for A049212, there is no canonical definition to state claims against.
-/

/-! ## A049212.P5996151495149218619

`∏[abs(1-10*n)]`
-/

namespace A049212.P5996151495149218619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (10 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049212.P5996151495149218619

/-! ## A049212.P16535529414575183129

`abs(∏[a(n-1)-10])` with `a(0)=1`
-/

namespace A049212.P16535529414575183129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A049212.P16535529414575183129

/-! ## A049212.P2091134139865307306

`-∏[a(n-1)+10]` with `a(0)=-1`
-/

namespace A049212.P2091134139865307306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A049212.P2091134139865307306

/-! ## A049212.P6840150665997119564

`(10*n-1)*a(n-1)` with `a(0)=1`
-/

namespace A049212.P6840150665997119564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((10 * n : ℤ) - 1) * a (n - 1)

end

end A049212.P6840150665997119564

/-! ## A049212.P13526258533010492057

`abs(∏[1-A008592(n)])`
-/

namespace A049212.P13526258533010492057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A049212.P13526258533010492057

/-!
# A049213: A convolution triangle of numbers obtained from A025749.

The programs for A049213, there is no canonical definition to state claims against.
-/

/-! ## A049213.P15247890700319945680

`A130321(n)*A202039(n+1)`
-/

namespace A049213.P15247890700319945680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A202039 (n + 1)

end

end A049213.P15247890700319945680

/-! ## A049213.P13233331450439864813

`sqrt(A262616(n))*A202039(n+1)`
-/

namespace A049213.P13233331450439864813
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A202039 (n + 1) : ℝ)

end

end A049213.P13233331450439864813

/-! ## A049213.P8591723851752068833

`A000079(A025581(n))*A202039(n+1)`
-/

namespace A049213.P8591723851752068833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A202039 (n + 1)

end

end A049213.P8591723851752068833

/-! ## A049213.P4457806630288815608

`A016116(A099375(n))*A202039(n+1)`
-/

namespace A049213.P4457806630288815608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A099375 n).toNat * A202039 (n + 1)

end

end A049213.P4457806630288815608

/-! ## A049213.P1122118801087932190

`A059268(A061579(n))*A202039(n+1)`
-/

namespace A049213.P1122118801087932190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat * A202039 (n + 1)

end

end A049213.P1122118801087932190

/-! ## A049213.P16747436566231211394

`A011782(A004736(n+1))*A202039(n+1)`
-/

namespace A049213.P16747436566231211394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004736 (n + 1)).toNat * A202039 (n + 1)

end

end A049213.P16747436566231211394

/-! ## A049213.P13394053799758040661

`A059268(A038722(n+1)-1)*A202039(n+1)`
-/

namespace A049213.P13394053799758040661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A038722 (n + 1) - 1).toNat * A202039 (n + 1)

end

end A049213.P13394053799758040661

/-! ## A049213.P2040866871788189033

`A008619(A130330(n))*A202039(n+1)`
-/

namespace A049213.P2040866871788189033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A130330 n).toNat * A202039 (n + 1)

end

end A049213.P2040866871788189033

/-!
# A049214: Scaled coefficients of (arctanh x)^3.

The programs for A049214, there is no canonical definition to state claims against.
-/

/-! ## A049214.P1139988819744133620

`record[abs(A049218(∑[n+2]+4))]`
-/

namespace A049214.P1139988819744133620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049218 (∑ j ∈ Finset.range (n + 1), f2 j + 4)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049214.P1139988819744133620

/-! ## A049214.P3907808929692898484

`record[gcd(n-C(∑[char[∑[n]]], 2), A008309(2*(n+1)))]`
-/

namespace A049214.P3907808929692898484
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ)) (A008309 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049214.P3907808929692898484

/-! ## A049214.P10048661618688495975

`A111594(A100037(n+2))`
-/

namespace A049214.P10048661618688495975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111594 (A100037 (n + 2)).toNat

end

end A049214.P10048661618688495975

/-! ## A049214.P7955037782195157570

`A111594(A100038(n+1)-2)`
-/

namespace A049214.P7955037782195157570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111594 (A100038 (n + 1) - 2).toNat

end

end A049214.P7955037782195157570

/-! ## A049214.P15472066892559320086

`record[gcd(A008309(2*(n+1)), A204420(n))]`
-/

namespace A049214.P15472066892559320086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008309 (2 * (n + 1))) (A204420 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049214.P15472066892559320086

/-!
# A049215: Scaled coefficients of (arctanh x)^4.

The programs for A049215, there is no canonical definition to state claims against.
-/

/-! ## A049215.P18203111019136662808

`A111594(A133263(2*(n+2))+2)`
-/

namespace A049215.P18203111019136662808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111594 (A133263 (2 * (n + 2)) + 2).toNat

end

end A049215.P18203111019136662808

/-!
# A049216: Scaled coefficients of (arctanh x)^5.

The programs for A049216, there is no canonical definition to state claims against.
-/

/-! ## A049216.P9536680270160423507

`A111594(A100038(n+2))`
-/

namespace A049216.P9536680270160423507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111594 (A100038 (n + 2)).toNat

end

end A049216.P9536680270160423507

/-!
# A049218: Triangle T(n,k) of arctangent numbers: expansion of arctan(x)^n/n!.

The programs for A049218, there is no canonical definition to state claims against.
-/

/-! ## A049218.P7270538962742227505

`A111594(comp[∑[n]])*A130194(n+1)`
-/

namespace A049218.P7270538962742227505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111594 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A130194 (n + 1)

end

end A049218.P7270538962742227505

/-! ## A049218.P16806645047764240520

`A111594(comp[C(n, 2)])/A130194(n+1)`
-/

namespace A049218.P16806645047764240520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111594 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / (A130194 (n + 1) : ℚ)

end

end A049218.P16806645047764240520

/-! ## A049218.P10677164545051509792

`A111594(comp[A000217(n)])*A117568(n)`
-/

namespace A049218.P10677164545051509792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111594 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) * A117568 n

end

end A049218.P10677164545051509792

/-! ## A049218.P5043714939123262351

`A111594(A014132(n+1))*A117568(n)`
-/

namespace A049218.P5043714939123262351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111594 (A014132 (n + 1)).toNat * A117568 n

end

end A049218.P5043714939123262351

/-! ## A049218.P6608493044343416389

`A111594(comp[A000217(n)])/A130194(n+1)`
-/

namespace A049218.P6608493044343416389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111594 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / (A130194 (n + 1) : ℚ)

end

end A049218.P6608493044343416389

/-! ## A049218.P3878128187954703450

`A106470(n)*A111594(comp[A000217(n)])`
-/

namespace A049218.P3878128187954703450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106470 n * A111594 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A049218.P3878128187954703450

/-! ## A049218.P5274886227519984459

`A106470(n)*A111594(A014132(n+1))`
-/

namespace A049218.P5274886227519984459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106470 n * A111594 (A014132 (n + 1)).toNat

end

end A049218.P5274886227519984459

/-!
# A049219: Number of horizontally convex n-ominoes in which the top row has exactly 1 square.

The programs for A049219, the canonical program `A049219.P17882740788607132971` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049219 has offset 1).

The definition of A049219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049219.P17882740788607132971

`5*a(n-1)-7*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=10`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049219

/-- `5*a(n-1)-7*a(n-2)+4*a(n-3)` -/
def P17882740788607132971.Spec : Prop :=
  ∀ n, P17882740788607132971.a n = A049219 (n + 1)

theorem P17882740788607132971.correct : P17882740788607132971.Spec := by
  intro n
  simp only [A049219, Nat.add_sub_cancel]

end A049219

/-! ## A049219.P1080055156386755182

`A001169(n+1)-A049220(n+2)`
-/

namespace A049219.P1080055156386755182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001169 (n + 1) - A049220 (n + 2)

end

end A049219.P1080055156386755182

namespace A049219

/-- `A001169(n+1)-A049220(n+2)` -/
def P1080055156386755182.Spec : Prop :=
  ∀ n, P1080055156386755182.a n = A049219 (n + 1)

end A049219

/-! ## A049219.P8383844197910560471

`∑[A049221(n+1)+A049220(n+1)]`
-/

namespace A049219.P8383844197910560471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049221 (n + 1) + A049220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049219.P8383844197910560471

namespace A049219

/-- `∑[A049221(n+1)+A049220(n+1)]` -/
def P8383844197910560471.Spec : Prop :=
  ∀ n, P8383844197910560471.a n = A049219 (n + 1)

end A049219

/-! ## A049219.P1628660941465882616

`A049221(n+1)+Δ[Δ[A049222(n+1)]]`
-/

namespace A049219.P1628660941465882616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049221 (n + 1) + (f1 (n + 1) - f1 n)

end

end A049219.P1628660941465882616

namespace A049219

/-- `A049221(n+1)+Δ[Δ[A049222(n+1)]]` -/
def P1628660941465882616.Spec : Prop :=
  ∀ n, P1628660941465882616.a n = A049219 (n + 1)

end A049219

/-! ## A049219.P9424937442911314772

`A000007(n)+Δ[A301994(A028310(n))]`
-/

namespace A049219.P9424937442911314772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301994 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A049219.P9424937442911314772

namespace A049219

/-- `A000007(n)+Δ[A301994(A028310(n))]` -/
def P9424937442911314772.Spec : Prop :=
  ∀ n, P9424937442911314772.a n = A049219 (n + 1)

end A049219

/-! ## A049219.P9218778907067001781

`A049221(n+1)+A049220(n+2)-A049220(n+1)`
-/

namespace A049219.P9218778907067001781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049221 (n + 1) + (A049220 (n + 2) - A049220 (n + 1))

end

end A049219.P9218778907067001781

namespace A049219

/-- `A049221(n+1)+A049220(n+2)-A049220(n+1)` -/
def P9218778907067001781.Spec : Prop :=
  ∀ n, P9218778907067001781.a n = A049219 (n + 1)

end A049219

/-! ## A049219.P8744836889052719000

`A301994(n+1)+A000007(n)-A301994(A028310(n))`
-/

namespace A049219.P8744836889052719000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301994 (n + 1) + (A000007 n - A301994 (A028310 n).toNat)

end

end A049219.P8744836889052719000

namespace A049219

/-- `A301994(n+1)+A000007(n)-A301994(A028310(n))` -/
def P8744836889052719000.Spec : Prop :=
  ∀ n, P8744836889052719000.a n = A049219 (n + 1)

end A049219

/-! ## A049219.P7778572365520152712

`Δ[Δ[A049222(n+2)]-A049222(n+2)]`
-/

namespace A049219.P7778572365520152712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049222 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A049222 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049219.P7778572365520152712

namespace A049219

/-- `Δ[Δ[A049222(n+2)]-A049222(n+2)]` -/
def P7778572365520152712.Spec : Prop :=
  ∀ n, P7778572365520152712.a n = A049219 (n + 1)

end A049219

/-!
# A049220: Number of horizontally convex n-ominoes in which the top row has at least 2 squares and the rightmost square in the top row is above the leftmost square in the second row.

The programs for A049220, the canonical program `A049220.P422468882593643597` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049220 has offset 1).

The definition of A049220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049220.P422468882593643597

`5*a(n-1)-7*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049220

/-- `5*a(n-1)-7*a(n-2)+4*a(n-3)` -/
def P422468882593643597.Spec : Prop :=
  ∀ n, P422468882593643597.a n = A049220 (n + 1)

theorem P422468882593643597.correct : P422468882593643597.Spec := by
  intro n
  simp only [A049220, Nat.add_sub_cancel]

end A049220

/-! ## A049220.P15808355290280815891

`a(n-1)+A001169(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A049220.P15808355290280815891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + A001169 (n - 1)

end

end A049220.P15808355290280815891

namespace A049220

/-- `a(n-1)+A001169(n-1)` -/
def P15808355290280815891.Spec : Prop :=
  ∀ n, P15808355290280815891.a n = A049220 (n + 1)

end A049220

/-! ## A049220.P8826669555576153175

`Δ[A049222(n+1)]`
-/

namespace A049220.P8826669555576153175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049220.P8826669555576153175

namespace A049220

/-- `Δ[A049222(n+1)]` -/
def P8826669555576153175.Spec : Prop :=
  ∀ n, P8826669555576153175.a n = A049220 (n + 1)

end A049220

/-! ## A049220.P2594935032024816387

`A049222(n+2)-A049222(n+1)`
-/

namespace A049220.P2594935032024816387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049222 (n + 2) - A049222 (n + 1)

end

end A049220.P2594935032024816387

namespace A049220

/-- `A049222(n+2)-A049222(n+1)` -/
def P2594935032024816387.Spec : Prop :=
  ∀ n, P2594935032024816387.a n = A049220 (n + 1)

end A049220

/-! ## A049220.P6651571712464250285

`abs(Δ[A049222(A004442(2*n)-n)])`
-/

namespace A049220.P6651571712464250285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049222 (A004442 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A049220.P6651571712464250285

namespace A049220

/-- `abs(Δ[A049222(A004442(2*n)-n)])` -/
def P6651571712464250285.Spec : Prop :=
  ∀ n, P6651571712464250285.a n = A049220 (n + 1)

end A049220

/-! ## A049220.P2778991202573117777

`A001169(A028310(n))-A049219(A028310(n))`
-/

namespace A049220.P2778991202573117777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001169 (A028310 n).toNat - A049219 (A028310 n).toNat

end

end A049220.P2778991202573117777

namespace A049220

/-- `A001169(A028310(n))-A049219(A028310(n))` -/
def P2778991202573117777.Spec : Prop :=
  ∀ n, P2778991202573117777.a n = A049220 (n + 1)

end A049220

/-! ## A049220.P14594562987518074252

`Δ[A001169(n+1)%A001169(A028310(n))]`
-/

namespace A049220.P14594562987518074252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001169 (n + 1)) (A001169 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049220.P14594562987518074252

namespace A049220

/-- `Δ[A001169(n+1)%A001169(A028310(n))]` -/
def P14594562987518074252.Spec : Prop :=
  ∀ n, P14594562987518074252.a n = A049220 (n + 1)

end A049220

/-!
# A049221: Number of horizontally convex n-ominoes in which the top row has exactly 1 square, which is not above the rightmost square in the second row.

The programs for A049221, the canonical program `A049221.P3057220183758375189` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049221 has offset 1).

The definition of A049221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049221.P3057220183758375189

`5*a(n-1)-7*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4, a(4)=14`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049221

/-- `5*a(n-1)-7*a(n-2)+4*a(n-3)` -/
def P3057220183758375189.Spec : Prop :=
  ∀ n, P3057220183758375189.a n = A049221 (n + 1)

theorem P3057220183758375189.correct : P3057220183758375189.Spec := by
  intro n
  simp only [A049221, Nat.add_sub_cancel]

end A049221

/-! ## A049221.P255332372708357961

`A049219(n+1)-Δ[A049220(n+1)]`
-/

namespace A049221.P255332372708357961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049219 (n + 1) - (f1 (n + 1) - f1 n)

end

end A049221.P255332372708357961

namespace A049221

/-- `A049219(n+1)-Δ[A049220(n+1)]` -/
def P255332372708357961.Spec : Prop :=
  ∀ n, P255332372708357961.a n = A049221 (n + 1)

end A049221

/-! ## A049221.P1838060304745267241

`A049219(n+1)-Δ[Δ[A049222(n+1)]]`
-/

namespace A049221.P1838060304745267241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049219 (n + 1) - (f1 (n + 1) - f1 n)

end

end A049221.P1838060304745267241

namespace A049221

/-- `A049219(n+1)-Δ[Δ[A049222(n+1)]]` -/
def P1838060304745267241.Spec : Prop :=
  ∀ n, P1838060304745267241.a n = A049221 (n + 1)

end A049221

/-! ## A049221.P7229981904191811656

`A049219(n+1)+A049220(n+1)-A049220(n+2)`
-/

namespace A049221.P7229981904191811656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049219 (n + 1) + (A049220 (n + 1) - A049220 (n + 2))

end

end A049221.P7229981904191811656

namespace A049221

/-- `A049219(n+1)+A049220(n+1)-A049220(n+2)` -/
def P7229981904191811656.Spec : Prop :=
  ∀ n, P7229981904191811656.a n = A049221 (n + 1)

end A049221

/-! ## A049221.P8532399706303647355

`Δ[Δ[A049220(n+1)]]-A049220(n+2)`
-/

namespace A049221.P8532399706303647355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049220 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A049220 (n + 2)

end

end A049221.P8532399706303647355

namespace A049221

/-- `Δ[Δ[A049220(n+1)]]-A049220(n+2)` -/
def P8532399706303647355.Spec : Prop :=
  ∀ n, P8532399706303647355.a n = A049221 (n + 1)

end A049221

/-!
# A049222: Number of horizontally convex n-ominoes in which the top row has exactly 1 square, which is not above the rightmost square in the second row and the rightmost square in the second row is above the leftmost square in the third row.

The programs for A049222, the canonical program `A049222.P9393504095804618029` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049222 has offset 1).

The definition of A049222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049222.P9393504095804618029

`5*a(n-1)-7*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049222

/-- `5*a(n-1)-7*a(n-2)+4*a(n-3)` -/
def P9393504095804618029.Spec : Prop :=
  ∀ n, P9393504095804618029.a n = A049222 (n + 1)

theorem P9393504095804618029.correct : P9393504095804618029.Spec := by
  intro n
  simp only [A049222, Nat.add_sub_cancel]

end A049222

/-! ## A049222.P1529050088319653345

`a(n-1)+A049220(n)` with `a(0)=0`
-/

namespace A049222.P1529050088319653345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A049220 n

end

end A049222.P1529050088319653345

namespace A049222

/-- `a(n-1)+A049220(n)` -/
def P1529050088319653345.Spec : Prop :=
  ∀ n, P1529050088319653345.a n = A049222 (n + 1)

end A049222

/-! ## A049222.P15702336148173450446

`∑[A049220(abs(1-n)+1)]`
-/

namespace A049222.P15702336148173450446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049220 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049222.P15702336148173450446

namespace A049222

/-- `∑[A049220(abs(1-n)+1)]` -/
def P15702336148173450446.Spec : Prop :=
  ∀ n, P15702336148173450446.a n = A049222 (n + 1)

end A049222

/-! ## A049222.P7773856795245796386

`∑[A049220(n+1)]-A049220(n+1)`
-/

namespace A049222.P7773856795245796386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A049220 (n + 1)

end

end A049222.P7773856795245796386

namespace A049222

/-- `∑[A049220(n+1)]-A049220(n+1)` -/
def P7773856795245796386.Spec : Prop :=
  ∀ n, P7773856795245796386.a n = A049222 (n + 1)

end A049222

/-! ## A049222.P6132463084977818541

`A049221(n+1)%A049219(A028310(n))`
-/

namespace A049222.P6132463084977818541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049221 (n + 1)) (A049219 (A028310 n).toNat)

end

end A049222.P6132463084977818541

namespace A049222

/-- `A049221(n+1)%A049219(A028310(n))` -/
def P6132463084977818541.Spec : Prop :=
  ∀ n, P6132463084977818541.a n = A049222 (n + 1)

end A049222

/-! ## A049222.P7600820140083368555

`A001169(n+1)%A001169(A028310(n))`
-/

namespace A049222.P7600820140083368555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001169 (n + 1)) (A001169 (A028310 n).toNat)

end

end A049222.P7600820140083368555

namespace A049222

/-- `A001169(n+1)%A001169(A028310(n))` -/
def P7600820140083368555.Spec : Prop :=
  ∀ n, P7600820140083368555.a n = A049222 (n + 1)

end A049222

/-! ## A049222.P12779697290787233221

`A001169(n+1)-(A301994(n+1)+A049220(n+1))`
-/

namespace A049222.P12779697290787233221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001169 (n + 1) - (A301994 (n + 1) + A049220 (n + 1))

end

end A049222.P12779697290787233221

namespace A049222

/-- `A001169(n+1)-(A301994(n+1)+A049220(n+1))` -/
def P12779697290787233221.Spec : Prop :=
  ∀ n, P12779697290787233221.a n = A049222 (n + 1)

end A049222

/-!
# A049225: Values of totient function applied to squarefree numbers; or numbers of form Product (p_i-1) where p_i are distinct primes.

The programs for A049225, the canonical program `A049225.P17979210083929373104` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049225 has offset 1).

The definition of A049225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049225.P16235699679304679379

`eq[1, char[A091732(2*n+1)]]`
-/

namespace A049225.P16235699679304679379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (2 * n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049225.P16235699679304679379

namespace A049225

/-- `eq[1, char[A091732(2*n+1)]]` -/
def P16235699679304679379.Spec : Prop :=
  ∀ n, (P16235699679304679379.a n : ℤ) = A049225 (n + 1)

end A049225

/-! ## A049225.P17979210083929373104

`eq[1, char[A000010(A005117(n+1))]]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A049225

/-- `eq[1, char[A000010(A005117(n+1))]]` -/
def P17979210083929373104.Spec : Prop :=
  ∀ n, (P17979210083929373104.a n : ℤ) = A049225 (n + 1)

theorem P17979210083929373104.correct : P17979210083929373104.Spec := by
  intro n
  simp only [A049225, Nat.add_sub_cancel]

end A049225

/-! ## A049225.P6003945880485791806

`record[A003958(A032447(n+1))]`
-/

namespace A049225.P6003945880485791806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A032447 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049225.P6003945880485791806

namespace A049225

/-- `record[A003958(A032447(n+1))]` -/
def P6003945880485791806.Spec : Prop :=
  ∀ n, P6003945880485791806.a n = A049225 (n + 1)

end A049225

/-! ## A049225.P6719363533019745147

`record[abs(A023900(A035113(n+1)))]`
-/

namespace A049225.P6719363533019745147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023900 (A035113 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049225.P6719363533019745147

namespace A049225

/-- `record[abs(A023900(A035113(n+1)))]` -/
def P6719363533019745147.Spec : Prop :=
  ∀ n, P6719363533019745147.a n = A049225 (n + 1)

end A049225

/-! ## A049225.P11796717735047718039

`record[A023900(A032447(A065033(n)))]`
-/

namespace A049225.P11796717735047718039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A032447 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049225.P11796717735047718039

namespace A049225

/-- `record[A023900(A032447(A065033(n)))]` -/
def P11796717735047718039.Spec : Prop :=
  ∀ n, P11796717735047718039.a n = A049225 (n + 1)

end A049225

/-! ## A049225.P6337737091557024056

`record[A114810(A035113(n+1))]`
-/

namespace A049225.P6337737091557024056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114810 (A035113 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049225.P6337737091557024056

namespace A049225

/-- `record[A114810(A035113(n+1))]` -/
def P6337737091557024056.Spec : Prop :=
  ∀ n, P6337737091557024056.a n = A049225 (n + 1)

end A049225

/-! ## A049225.P7294319870004635940

`record[A062570(n+1)]%A006063(n+1)`
-/

namespace A049225.P7294319870004635940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A006063 (n + 1))

end

end A049225.P7294319870004635940

namespace A049225

/-- `record[A062570(n+1)]%A006063(n+1)` -/
def P7294319870004635940.Spec : Prop :=
  ∀ n, P7294319870004635940.a n = A049225 (n + 1)

end A049225

/-! ## A049225.P4403198402250034487

`record[A000010(2*(n+1))%A138927(n+1)]`
-/

namespace A049225.P4403198402250034487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (2 * (n + 1))) (A138927 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049225.P4403198402250034487

namespace A049225

/-- `record[A000010(2*(n+1))%A138927(n+1)]` -/
def P4403198402250034487.Spec : Prop :=
  ∀ n, P4403198402250034487.a n = A049225 (n + 1)

end A049225

/-! ## A049225.P14910354478825544526

`record[A129559(n+1)]`
-/

namespace A049225.P14910354478825544526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049225.P14910354478825544526

namespace A049225

/-- `record[A129559(n+1)]` -/
def P14910354478825544526.Spec : Prop :=
  ∀ n, P14910354478825544526.a n = A049225 (n + 1)

end A049225

/-! ## A049225.P722157576749505898

`record[A372673(∑[n+2])]`
-/

namespace A049225.P722157576749505898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372673 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049225.P722157576749505898

namespace A049225

/-- `record[A372673(∑[n+2])]` -/
def P722157576749505898.Spec : Prop :=
  ∀ n, P722157576749505898.a n = A049225 (n + 1)

end A049225

/-!
# A049227: Sigma(n) / d(n) is a perfect square associated with A049226.

The programs for A049227, there is no canonical definition to state claims against.
-/

/-! ## A049227.P10776120527009583798

`A000203(A049226(n+1))/A000005(A049226(n+1))`
-/

namespace A049227.P10776120527009583798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A049226 (n + 1)).toNat : ℚ) / (A000005 (A049226 (n + 1)).toNat : ℚ)

end

end A049227.P10776120527009583798

/-! ## A049227.P5317910392021693958

`eq[2, A271584(n+2)+A271584(n)]²`
-/

namespace A049227.P5317910392021693958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271584 (n + 2) + A271584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A049227.P5317910392021693958

/-! ## A049227.P15257700535664477077

`(2*eq[A025581(n), A035250(n+1)])²`
-/

namespace A049227.P15257700535664477077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A049227.P15257700535664477077

/-!
# A049228: sigma(n)-n is a perfect square associated with A049226.

The programs for A049228, there is no canonical definition to state claims against.
-/

/-! ## A049228.P11102506228602451193

`A000203(A049226(n+1))-A049226(n+1)`
-/

namespace A049228.P11102506228602451193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A049226 (n + 1)).toNat - A049226 (n + 1)

end

end A049228.P11102506228602451193

/-! ## A049228.P15172299596350865828

`A054024(A049226(n+1))`
-/

namespace A049228.P15172299596350865828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A049226 (n + 1)).toNat

end

end A049228.P15172299596350865828

/-! ## A049228.P14980531971331671198

`A294888(or(4, A049226(n+1)))`
-/

namespace A049228.P14980531971331671198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (Int.lor 4 (A049226 (n + 1))).toNat

end

end A049228.P14980531971331671198

/-! ## A049228.P13522746600252575407

`A294888(∑{d}[A049226(n+1), A000010(#)])`
-/

namespace A049228.P13522746600252575407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A049228.P13522746600252575407

/-!
# A049229: Primes p such that p-2 is not squarefree.

The programs for A049229, the canonical program `A049229.P12251038394700142042` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049229 has offset 1).

The definition of A049229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5668 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049229.P12251038394700142042

`p?[A013929(n+1)+2]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049229

/-- `p?[A013929(n+1)+2]` -/
def P12251038394700142042.Spec : Prop :=
  ∀ n, P12251038394700142042.a n = A049229 (n + 1)

theorem P12251038394700142042.correct : P12251038394700142042.Spec := by
  intro n
  simp only [A049229, Nat.add_sub_cancel]

end A049229

/-! ## A049229.P13104548006790084510

`p?[A053850(n+1)+2]`
-/

namespace A049229.P13104548006790084510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049229.P13104548006790084510

namespace A049229

/-- `p?[A053850(n+1)+2]` -/
def P13104548006790084510.Spec : Prop :=
  ∀ n, P13104548006790084510.a n = A049229 (n + 1)

end A049229

/-! ## A049229.P1123556424255699591

`p?[gcd(n+3, A008683(n+1))]`
-/

namespace A049229.P1123556424255699591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A008683 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A049229.P1123556424255699591

namespace A049229

/-- `p?[gcd(n+3, A008683(n+1))]` -/
def P1123556424255699591.Spec : Prop :=
  ∀ n, (P1123556424255699591.a n : ℤ) = A049229 (n + 1)

end A049229

/-! ## A049229.P15477243252431338184

`p?[A319927(n+1)+2]`
-/

namespace A049229.P15477243252431338184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049229.P15477243252431338184

namespace A049229

/-- `p?[A319927(n+1)+2]` -/
def P15477243252431338184.Spec : Prop :=
  ∀ n, P15477243252431338184.a n = A049229 (n + 1)

end A049229

/-! ## A049229.P11455948167428010427

`p?[A038838(n+1)+2]`
-/

namespace A049229.P11455948167428010427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049229.P11455948167428010427

namespace A049229

/-- `p?[A038838(n+1)+2]` -/
def P11455948167428010427.Spec : Prop :=
  ∀ n, P11455948167428010427.a n = A049229 (n + 1)

end A049229

/-! ## A049229.P2034376565757271461

`p?[A046790(n+1)+2]`
-/

namespace A049229.P2034376565757271461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049229.P2034376565757271461

namespace A049229

/-- `p?[A046790(n+1)+2]` -/
def P2034376565757271461.Spec : Prop :=
  ∀ n, P2034376565757271461.a n = A049229 (n + 1)

end A049229

/-! ## A049229.P7738638980135316782

`p?[2*n+1-A008683(A298015(n))]`
-/

namespace A049229.P7738638980135316782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A008683 (A298015 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049229.P7738638980135316782

namespace A049229

/-- `p?[2*n+1-A008683(A298015(n))]` -/
def P7738638980135316782.Spec : Prop :=
  ∀ n, P7738638980135316782.a n = A049229 (n + 1)

end A049229

/-! ## A049229.P11587772038685868875

`p?[A173186(n+2)+1]`
-/

namespace A049229.P11587772038685868875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173186 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049229.P11587772038685868875

namespace A049229

/-- `p?[A173186(n+2)+1]` -/
def P11587772038685868875.Spec : Prop :=
  ∀ n, P11587772038685868875.a n = A049229 (n + 1)

end A049229

/-! ## A049229.P12119981206972814380

`p?[A076369(2*n+1)+2]`
-/

namespace A049229.P12119981206972814380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076369 (2 * n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049229.P12119981206972814380

namespace A049229

/-- `p?[A076369(2*n+1)+2]` -/
def P12119981206972814380.Spec : Prop :=
  ∀ n, P12119981206972814380.a n = A049229 (n + 1)

end A049229

/-! ## A049229.P303501628704129665

`record[A014963(A319927(n+1)+2)]`
-/

namespace A049229.P303501628704129665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A319927 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049229.P303501628704129665

namespace A049229

/-- `record[A014963(A319927(n+1)+2)]` -/
def P303501628704129665.Spec : Prop :=
  ∀ n, P303501628704129665.a n = A049229 (n + 1)

end A049229

/-! ## A049229.P16760186557143848750

`record[A014963(A013929(n+3)+2)]`
-/

namespace A049229.P16760186557143848750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A013929 (n + 3) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049229.P16760186557143848750

namespace A049229

/-- `record[A014963(A013929(n+3)+2)]` -/
def P16760186557143848750.Spec : Prop :=
  ∀ n, P16760186557143848750.a n = A049229 (n + 1)

end A049229

/-!
# A049230: Configurations of linear chains in a cubic lattice.

The programs for A049230, there is no canonical definition to state claims against.
-/

/-! ## A049230.P5946884516823290690

`A280508(C(2^n, 3))`
-/

namespace A049230.P5946884516823290690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 (Nat.choose (2 ^ n) 3)

end

end A049230.P5946884516823290690

/-! ## A049230.P11549714582500258894

`A028599(A041501(n))`
-/

namespace A049230.P11549714582500258894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028599 (A041501 n).toNat

end

end A049230.P11549714582500258894

/-!
# A049231: Primes p such that p - 2 is squarefree.

The programs for A049231, the canonical program `A049231.P1078354899549931316` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049231 has offset 1).

The definition of A049231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049231.P1078354899549931316

`p?[A005117(n+1)+2]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A049231

/-- `p?[A005117(n+1)+2]` -/
def P1078354899549931316.Spec : Prop :=
  ∀ n, P1078354899549931316.a n = A049231 (n + 1)

theorem P1078354899549931316.correct : P1078354899549931316.Spec := by
  intro n
  simp only [A049231, Nat.add_sub_cancel]

end A049231

/-! ## A049231.P16777593871088709138

`p?[lcm(n+3, A008683(n+1))]`
-/

namespace A049231.P16777593871088709138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 3 : ℤ) (A008683 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A049231.P16777593871088709138

namespace A049231

/-- `p?[lcm(n+3, A008683(n+1))]` -/
def P16777593871088709138.Spec : Prop :=
  ∀ n, (P16777593871088709138.a n : ℤ) = A049231 (n + 1)

end A049231

/-! ## A049231.P15494017833562045744

`record[p?[A007913(2*n+1)+2]]`
-/

namespace A049231.P15494017833562045744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049231.P15494017833562045744

namespace A049231

/-- `record[p?[A007913(2*n+1)+2]]` -/
def P15494017833562045744.Spec : Prop :=
  ∀ n, P15494017833562045744.a n = A049231 (n + 1)

end A049231

/-! ## A049231.P6549736832440974521

`record[A006530(A005117(n+1)+2)]`
-/

namespace A049231.P6549736832440974521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005117 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049231.P6549736832440974521

namespace A049231

/-- `record[A006530(A005117(n+1)+2)]` -/
def P6549736832440974521.Spec : Prop :=
  ∀ n, P6549736832440974521.a n = A049231 (n + 1)

end A049231

/-! ## A049231.P13292907294061505490

`record[A008472(A005117(n+1)+2)]`
-/

namespace A049231.P13292907294061505490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A005117 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049231.P13292907294061505490

namespace A049231

/-- `record[A008472(A005117(n+1)+2)]` -/
def P13292907294061505490.Spec : Prop :=
  ∀ n, P13292907294061505490.a n = A049231 (n + 1)

end A049231

/-! ## A049231.P1517865953064554111

`record[A006530(A007913(n+1)+2)]`
-/

namespace A049231.P1517865953064554111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007913 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049231.P1517865953064554111

namespace A049231

/-- `record[A006530(A007913(n+1)+2)]` -/
def P1517865953064554111.Spec : Prop :=
  ∀ n, P1517865953064554111.a n = A049231 (n + 1)

end A049231

/-! ## A049231.P11751697778729293200

`record[A006530(A007947(n+1)+2)]`
-/

namespace A049231.P11751697778729293200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007947 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049231.P11751697778729293200

namespace A049231

/-- `record[A006530(A007947(n+1)+2)]` -/
def P11751697778729293200.Spec : Prop :=
  ∀ n, P11751697778729293200.a n = A049231 (n + 1)

end A049231

/-! ## A049231.P17800977892905535190

`record[A008472(A007947(n+1)+2)]`
-/

namespace A049231.P17800977892905535190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A007947 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049231.P17800977892905535190

namespace A049231

/-- `record[A008472(A007947(n+1)+2)]` -/
def P17800977892905535190.Spec : Prop :=
  ∀ n, P17800977892905535190.a n = A049231 (n + 1)

end A049231

/-! ## A049231.P3059020665025725713

`record[A020639(A005117(n+1)+2)]`
-/

namespace A049231.P3059020665025725713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005117 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049231.P3059020665025725713

namespace A049231

/-- `record[A020639(A005117(n+1)+2)]` -/
def P3059020665025725713.Spec : Prop :=
  ∀ n, P3059020665025725713.a n = A049231 (n + 1)

end A049231

/-! ## A049231.P16205265742464763237

`record[A020639(A007913(n+1)+2)]`
-/

namespace A049231.P16205265742464763237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007913 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049231.P16205265742464763237

namespace A049231

/-- `record[A020639(A007913(n+1)+2)]` -/
def P16205265742464763237.Spec : Prop :=
  ∀ n, P16205265742464763237.a n = A049231 (n + 1)

end A049231

/-! ## A049231.P18077416252846527472

`record[A020639(A007947(n+1)+2)]`
-/

namespace A049231.P18077416252846527472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007947 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049231.P18077416252846527472

namespace A049231

/-- `record[A020639(A007947(n+1)+2)]` -/
def P18077416252846527472.Spec : Prop :=
  ∀ n, P18077416252846527472.a n = A049231 (n + 1)

end A049231

/-! ## A049231.P4501874354565845128

`record[A000010(A005117(n+1)+2)]+1`
-/

namespace A049231.P4501874354565845128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A005117 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A049231.P4501874354565845128

namespace A049231

/-- `record[A000010(A005117(n+1)+2)]+1` -/
def P4501874354565845128.Spec : Prop :=
  ∀ n, P4501874354565845128.a n = A049231 (n + 1)

end A049231

/-! ## A049231.P1587587212668901502

`p?[(n+2)*A323239(n)]`
-/

namespace A049231.P1587587212668901502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A323239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049231.P1587587212668901502

namespace A049231

/-- `p?[(n+2)*A323239(n)]` -/
def P1587587212668901502.Spec : Prop :=
  ∀ n, P1587587212668901502.a n = A049231 (n + 1)

end A049231

/-! ## A049231.P1921117542885645670

`record[p?[A083346(n+1)+2]]`
-/

namespace A049231.P1921117542885645670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049231.P1921117542885645670

namespace A049231

/-- `record[p?[A083346(n+1)+2]]` -/
def P1921117542885645670.Spec : Prop :=
  ∀ n, P1921117542885645670.a n = A049231 (n + 1)

end A049231

/-! ## A049231.P17519726899754023868

`record[A006530(A055653(n+1)+2)]`
-/

namespace A049231.P17519726899754023868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A055653 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049231.P17519726899754023868

namespace A049231

/-- `record[A006530(A055653(n+1)+2)]` -/
def P17519726899754023868.Spec : Prop :=
  ∀ n, P17519726899754023868.a n = A049231 (n + 1)

end A049231

/-! ## A049231.P18173459018870328915

`record[A020639(A055653(n+1)+2)]`
-/

namespace A049231.P18173459018870328915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A055653 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049231.P18173459018870328915

namespace A049231

/-- `record[A020639(A055653(n+1)+2)]` -/
def P18173459018870328915.Spec : Prop :=
  ∀ n, P18173459018870328915.a n = A049231 (n + 1)

end A049231

/-! ## A049231.P17599157794532203247

`record[A020639(A083346(n+1)+2)]`
-/

namespace A049231.P17599157794532203247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A083346 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049231.P17599157794532203247

namespace A049231

/-- `record[A020639(A083346(n+1)+2)]` -/
def P17599157794532203247.Spec : Prop :=
  ∀ n, P17599157794532203247.a n = A049231 (n + 1)

end A049231

/-! ## A049231.P11453397421581002800

`p?[A067874(n+1)+1]`
-/

namespace A049231.P11453397421581002800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049231.P11453397421581002800

namespace A049231

/-- `p?[A067874(n+1)+1]` -/
def P11453397421581002800.Spec : Prop :=
  ∀ n, P11453397421581002800.a n = A049231 (n + 1)

end A049231

/-! ## A049231.P460843445491514306

`p?[A069977(n+1)+2]`
-/

namespace A049231.P460843445491514306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049231.P460843445491514306

namespace A049231

/-- `p?[A069977(n+1)+2]` -/
def P460843445491514306.Spec : Prop :=
  ∀ n, P460843445491514306.a n = A049231 (n + 1)

end A049231

/-! ## A049231.P5942784308480636032

`record[A006530(A067874(n+1)+1)]`
-/

namespace A049231.P5942784308480636032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A067874 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049231.P5942784308480636032

namespace A049231

/-- `record[A006530(A067874(n+1)+1)]` -/
def P5942784308480636032.Spec : Prop :=
  ∀ n, P5942784308480636032.a n = A049231 (n + 1)

end A049231

/-!
# A049232: Primes p such that p+2 is divisible by a square.

The programs for A049232, the canonical program `A049232.P8046376036610074650` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049232 has offset 1).

The definition of A049232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5630 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049232.P8046376036610074650

`p?[A013929(n+1)-2]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049232

/-- `p?[A013929(n+1)-2]` -/
def P8046376036610074650.Spec : Prop :=
  ∀ n, P8046376036610074650.a n = A049232 (n + 1)

theorem P8046376036610074650.correct : P8046376036610074650.Spec := by
  intro n
  simp only [A049232, Nat.add_sub_cancel]

end A049232

/-! ## A049232.P18437007578127093459

`A000040(A091880(n+1))`
-/

namespace A049232.P18437007578127093459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091880 (n + 1)).toNat

end

end A049232.P18437007578127093459

namespace A049232

/-- `A000040(A091880(n+1))` -/
def P18437007578127093459.Spec : Prop :=
  ∀ n, P18437007578127093459.a n = A049232 (n + 1)

end A049232

/-! ## A049232.P10295587691622016831

`A006093(A091880(n+1))+A000035(2*n+3)`
-/

namespace A049232.P10295587691622016831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A091880 (n + 1)).toNat + A000035 (2 * n + 3)

end

end A049232.P10295587691622016831

namespace A049232

/-- `A006093(A091880(n+1))+A000035(2*n+3)` -/
def P10295587691622016831.Spec : Prop :=
  ∀ n, P10295587691622016831.a n = A049232 (n + 1)

end A049232

/-! ## A049232.P16855087703030909330

`p?[gcd(n, A008683(n+2))]`
-/

namespace A049232.P16855087703030909330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A008683 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A049232.P16855087703030909330

namespace A049232

/-- `p?[gcd(n, A008683(n+2))]` -/
def P16855087703030909330.Spec : Prop :=
  ∀ n, (P16855087703030909330.a n : ℤ) = A049232 (n + 1)

end A049232

/-! ## A049232.P1627053170409034146

`record[A020639(A013929(n+1)-2)]`
-/

namespace A049232.P1627053170409034146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A013929 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049232.P1627053170409034146

namespace A049232

/-- `record[A020639(A013929(n+1)-2)]` -/
def P1627053170409034146.Spec : Prop :=
  ∀ n, P1627053170409034146.a n = A049232 (n + 1)

end A049232

/-! ## A049232.P5713829349730625821

`A000040(eq[0, A008683(A000040(n+1)+2)]+1)`
-/

namespace A049232.P5713829349730625821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A049232.P5713829349730625821

namespace A049232

/-- `A000040(eq[0, A008683(A000040(n+1)+2)]+1)` -/
def P5713829349730625821.Spec : Prop :=
  ∀ n, P5713829349730625821.a n = A049232 (n + 1)

end A049232

/-! ## A049232.P13265240224016802371

`p?[A105570(n)-2]`
-/

namespace A049232.P13265240224016802371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049232.P13265240224016802371

namespace A049232

/-- `p?[A105570(n)-2]` -/
def P13265240224016802371.Spec : Prop :=
  ∀ n, P13265240224016802371.a n = A049232 (n + 1)

end A049232

/-! ## A049232.P14027277166571635885

`p?[(n-2)*A087049(n)]`
-/

namespace A049232.P14027277166571635885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A087049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049232.P14027277166571635885

namespace A049232

/-- `p?[(n-2)*A087049(n)]` -/
def P14027277166571635885.Spec : Prop :=
  ∀ n, P14027277166571635885.a n = A049232 (n + 1)

end A049232

/-! ## A049232.P9033917899667286143

`p?[A078461(n+2)²+n]`
-/

namespace A049232.P9033917899667286143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078461 (n + 2) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049232.P9033917899667286143

namespace A049232

/-- `p?[A078461(n+2)²+n]` -/
def P9033917899667286143.Spec : Prop :=
  ∀ n, P9033917899667286143.a n = A049232 (n + 1)

end A049232

/-! ## A049232.P11183278740896604451

`p?[(1-n)*A070238(n+1)]`
-/

namespace A049232.P11183278740896604451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A070238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049232.P11183278740896604451

namespace A049232

/-- `p?[(1-n)*A070238(n+1)]` -/
def P11183278740896604451.Spec : Prop :=
  ∀ n, P11183278740896604451.a n = A049232 (n + 1)

end A049232

/-! ## A049232.P6310435851085989047

`p?[or(n, A067856(n+1))-1]`
-/

namespace A049232.P6310435851085989047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A067856 (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049232.P6310435851085989047

namespace A049232

/-- `p?[or(n, A067856(n+1))-1]` -/
def P6310435851085989047.Spec : Prop :=
  ∀ n, P6310435851085989047.a n = A049232 (n + 1)

end A049232

/-! ## A049232.P6566339190700960880

`eq[A008683(n+2), A072480(n)]`
-/

namespace A049232.P6566339190700960880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049232.P6566339190700960880

namespace A049232

/-- `eq[A008683(n+2), A072480(n)]` -/
def P6566339190700960880.Spec : Prop :=
  ∀ n, (P6566339190700960880.a n : ℤ) = A049232 (n + 1)

end A049232

/-! ## A049232.P14005307151567447803

`eq[A072480(n), A199514(n+2)]`
-/

namespace A049232.P14005307151567447803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199514 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049232.P14005307151567447803

namespace A049232

/-- `eq[A072480(n), A199514(n+2)]` -/
def P14005307151567447803.Spec : Prop :=
  ∀ n, (P14005307151567447803.a n : ℤ) = A049232 (n + 1)

end A049232

/-! ## A049232.P9956067630293150844

`eq[n, A006530(n-A008683(n+2))]`
-/

namespace A049232.P9956067630293150844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n : ℤ) - A008683 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049232.P9956067630293150844

namespace A049232

/-- `eq[n, A006530(n-A008683(n+2))]` -/
def P9956067630293150844.Spec : Prop :=
  ∀ n, (P9956067630293150844.a n : ℤ) = A049232 (n + 1)

end A049232

/-! ## A049232.P16174485295981606541

`eq[n, A006530(A008683(n+2)²+n)]`
-/

namespace A049232.P16174485295981606541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008683 (n + 2) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049232.P16174485295981606541

namespace A049232

/-- `eq[n, A006530(A008683(n+2)²+n)]` -/
def P16174485295981606541.Spec : Prop :=
  ∀ n, (P16174485295981606541.a n : ℤ) = A049232 (n + 1)

end A049232

/-! ## A049232.P15872324058131388826

`eq[A008683(n+3)+n, A000010(n+1)]+1`
-/

namespace A049232.P15872324058131388826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 3) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A049232.P15872324058131388826

namespace A049232

/-- `eq[A008683(n+3)+n, A000010(n+1)]+1` -/
def P15872324058131388826.Spec : Prop :=
  ∀ n, (P15872324058131388826.a n : ℤ) = A049232 (n + 1)

end A049232

/-! ## A049232.P4561552577861572731

`eq[n+1, A000203(n-2*A008683(n+2))]`
-/

namespace A049232.P4561552577861572731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n : ℤ) - 2 * A008683 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049232.P4561552577861572731

namespace A049232

/-- `eq[n+1, A000203(n-2*A008683(n+2))]` -/
def P4561552577861572731.Spec : Prop :=
  ∀ n, (P4561552577861572731.a n : ℤ) = A049232 (n + 1)

end A049232

/-! ## A049232.P6218881247041391505

`eq[n+1, A006530(n+1)+A008683(n+3)]+1`
-/

namespace A049232.P6218881247041391505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + A008683 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049232.P6218881247041391505

namespace A049232

/-- `eq[n+1, A006530(n+1)+A008683(n+3)]+1` -/
def P6218881247041391505.Spec : Prop :=
  ∀ n, (P6218881247041391505.a n : ℤ) = A049232 (n + 1)

end A049232

/-! ## A049232.P4157794682836620549

`eq[n+2, A008683(n+3)+A000203(n+1)]+1`
-/

namespace A049232.P4157794682836620549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 3) + A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049232.P4157794682836620549

namespace A049232

/-- `eq[n+2, A008683(n+3)+A000203(n+1)]+1` -/
def P4157794682836620549.Spec : Prop :=
  ∀ n, (P4157794682836620549.a n : ℤ) = A049232 (n + 1)

end A049232

/-!
# A049233: Primes p such that p + 2 is squarefree.

The programs for A049233, the canonical program `A049233.P6371991846237013089` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049233 has offset 1).

The definition of A049233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049233.P6371991846237013089

`p?[A005117(n+1)-2]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A049233

/-- `p?[A005117(n+1)-2]` -/
def P6371991846237013089.Spec : Prop :=
  ∀ n, P6371991846237013089.a n = A049233 (n + 1)

theorem P6371991846237013089.correct : P6371991846237013089.Spec := by
  intro n
  simp only [A049233, Nat.add_sub_cancel]

end A049233

/-! ## A049233.P10898159299441718627

`p?[n*A008966(n+2)]`
-/

namespace A049233.P10898159299441718627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008966 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049233.P10898159299441718627

namespace A049233

/-- `p?[n*A008966(n+2)]` -/
def P10898159299441718627.Spec : Prop :=
  ∀ n, P10898159299441718627.a n = A049233 (n + 1)

end A049233

/-! ## A049233.P3936600301094635053

`p?[lcm(n, A008683(n+2))]`
-/

namespace A049233.P3936600301094635053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A008683 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A049233.P3936600301094635053

namespace A049233

/-- `p?[lcm(n, A008683(n+2))]` -/
def P3936600301094635053.Spec : Prop :=
  ∀ n, (P3936600301094635053.a n : ℤ) = A049233 (n + 1)

end A049233

/-! ## A049233.P5761486996372224878

`p?[n-gcd(n, A008683(n+1))]`
-/

namespace A049233.P5761486996372224878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Int.gcd (n : ℤ) (A008683 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049233.P5761486996372224878

namespace A049233

/-- `p?[n-gcd(n, A008683(n+1))]` -/
def P5761486996372224878.Spec : Prop :=
  ∀ n, P5761486996372224878.a n = A049233 (n + 1)

end A049233

/-! ## A049233.P3064455747714822825

`record[p?[A007913(2*n+1)-2]]`
-/

namespace A049233.P3064455747714822825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049233.P3064455747714822825

namespace A049233

/-- `record[p?[A007913(2*n+1)-2]]` -/
def P3064455747714822825.Spec : Prop :=
  ∀ n, P3064455747714822825.a n = A049233 (n + 1)

end A049233

/-! ## A049233.P669208598040416953

`p?[(n+1)*A008683(n+3)²]`
-/

namespace A049233.P669208598040416953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049233.P669208598040416953

namespace A049233

/-- `p?[(n+1)*A008683(n+3)²]` -/
def P669208598040416953.Spec : Prop :=
  ∀ n, P669208598040416953.a n = A049233 (n + 1)

end A049233

/-! ## A049233.P15366248245845826220

`p?[2*n-abs(A008683(2*n+1))]`
-/

namespace A049233.P15366248245845826220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - |A008683 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049233.P15366248245845826220

namespace A049233

/-- `p?[2*n-abs(A008683(2*n+1))]` -/
def P15366248245845826220.Spec : Prop :=
  ∀ n, P15366248245845826220.a n = A049233 (n + 1)

end A049233

/-! ## A049233.P1108506033090183120

`record[p?[A007947(n+1)-2]]`
-/

namespace A049233.P1108506033090183120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049233.P1108506033090183120

namespace A049233

/-- `record[p?[A007947(n+1)-2]]` -/
def P1108506033090183120.Spec : Prop :=
  ∀ n, P1108506033090183120.a n = A049233 (n + 1)

end A049233

/-! ## A049233.P17105629997480455177

`p?[n-A070238(n+1)]`
-/

namespace A049233.P17105629997480455177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A070238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049233.P17105629997480455177

namespace A049233

/-- `p?[n-A070238(n+1)]` -/
def P17105629997480455177.Spec : Prop :=
  ∀ n, P17105629997480455177.a n = A049233 (n + 1)

end A049233

/-! ## A049233.P15178712835043271489

`p?[n-(A105570(n)+2)]`
-/

namespace A049233.P15178712835043271489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A105570 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049233.P15178712835043271489

namespace A049233

/-- `p?[n-(A105570(n)+2)]` -/
def P15178712835043271489.Spec : Prop :=
  ∀ n, P15178712835043271489.a n = A049233 (n + 1)

end A049233

/-! ## A049233.P6644326169475174713

`p?[n*A007424(n+2)]`
-/

namespace A049233.P6644326169475174713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007424 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049233.P6644326169475174713

namespace A049233

/-- `p?[n*A007424(n+2)]` -/
def P6644326169475174713.Spec : Prop :=
  ∀ n, P6644326169475174713.a n = A049233 (n + 1)

end A049233

/-! ## A049233.P2371670908357523621

`p?[n*A051903(n+2)]`
-/

namespace A049233.P2371670908357523621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051903 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049233.P2371670908357523621

namespace A049233

/-- `p?[n*A051903(n+2)]` -/
def P2371670908357523621.Spec : Prop :=
  ∀ n, P2371670908357523621.a n = A049233 (n + 1)

end A049233

/-! ## A049233.P8242970883949696787

`p?[n*A070238(n+2)]`
-/

namespace A049233.P8242970883949696787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A070238 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049233.P8242970883949696787

namespace A049233

/-- `p?[n*A070238(n+2)]` -/
def P8242970883949696787.Spec : Prop :=
  ∀ n, P8242970883949696787.a n = A049233 (n + 1)

end A049233

/-! ## A049233.P14023456971899544761

`p?[n*A136565(n+2)]`
-/

namespace A049233.P14023456971899544761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A136565 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049233.P14023456971899544761

namespace A049233

/-- `p?[n*A136565(n+2)]` -/
def P14023456971899544761.Spec : Prop :=
  ∀ n, P14023456971899544761.a n = A049233 (n + 1)

end A049233

/-! ## A049233.P14548955878671316617

`record[p?[A083346(n+1)-2]]`
-/

namespace A049233.P14548955878671316617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049233.P14548955878671316617

namespace A049233

/-- `record[p?[A083346(n+1)-2]]` -/
def P14548955878671316617.Spec : Prop :=
  ∀ n, P14548955878671316617.a n = A049233 (n + 1)

end A049233

/-! ## A049233.P446481534196765059

`eq[A008683(n+3)², A001222(n+1)]+1`
-/

namespace A049233.P446481534196765059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 3) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A049233.P446481534196765059

namespace A049233

/-- `eq[A008683(n+3)², A001222(n+1)]+1` -/
def P446481534196765059.Spec : Prop :=
  ∀ n, (P446481534196765059.a n : ℤ) = A049233 (n + 1)

end A049233

/-! ## A049233.P17975406900671076083

`p?[n*A050377(n+2)]`
-/

namespace A049233.P17975406900671076083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A050377 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049233.P17975406900671076083

namespace A049233

/-- `p?[n*A050377(n+2)]` -/
def P17975406900671076083.Spec : Prop :=
  ∀ n, P17975406900671076083.a n = A049233 (n + 1)

end A049233

/-! ## A049233.P5453663739095197148

`p?[n*A005361(n+2)]`
-/

namespace A049233.P5453663739095197148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005361 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049233.P5453663739095197148

namespace A049233

/-- `p?[n*A005361(n+2)]` -/
def P5453663739095197148.Spec : Prop :=
  ∀ n, P5453663739095197148.a n = A049233 (n + 1)

end A049233

/-! ## A049233.P8967422988641263311

`p?[A069977(n+1)]`
-/

namespace A049233.P8967422988641263311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049233.P8967422988641263311

namespace A049233

/-- `p?[A069977(n+1)]` -/
def P8967422988641263311.Spec : Prop :=
  ∀ n, P8967422988641263311.a n = A049233 (n + 1)

end A049233

/-! ## A049233.P15124538164512429332

`p?[A067874(n+1)-1]`
-/

namespace A049233.P15124538164512429332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049233.P15124538164512429332

namespace A049233

/-- `p?[A067874(n+1)-1]` -/
def P15124538164512429332.Spec : Prop :=
  ∀ n, P15124538164512429332.a n = A049233 (n + 1)

end A049233

/-!
# A049234: Number of divisors of prime(n) + 2.

The programs for A049234, the canonical program `A049234.P3422205690596115663` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049234 has offset 1).

The definition of A049234 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A052147, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049234.P3422205690596115663

`A000005(A052147(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049234

/-- `A000005(A052147(n+1))` -/
def P3422205690596115663.Spec : Prop :=
  ∀ n, P3422205690596115663.a n = A049234 (n + 1)

theorem P3422205690596115663.correct : P3422205690596115663.Spec := by
  intro n
  simp only [A049234, Nat.add_sub_cancel]

end A049234

/-! ## A049234.P11679780606407461472

`A000005(Δ[A007504(n)]+2)`
-/

namespace A049234.P11679780606407461472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n + 2).toNat

end

end A049234.P11679780606407461472

namespace A049234

/-- `A000005(Δ[A007504(n)]+2)` -/
def P11679780606407461472.Spec : Prop :=
  ∀ n, P11679780606407461472.a n = A049234 (n + 1)

end A049234

/-! ## A049234.P940459795869570852

`A000005(A008864(n+1)+1)`
-/

namespace A049234.P940459795869570852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008864 (n + 1) + 1).toNat

end

end A049234.P940459795869570852

namespace A049234

/-- `A000005(A008864(n+1)+1)` -/
def P940459795869570852.Spec : Prop :=
  ∀ n, P940459795869570852.a n = A049234 (n + 1)

end A049234

/-! ## A049234.P17259864340366452720

`A000005(A028815(n+1)+1)`
-/

namespace A049234.P17259864340366452720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028815 (n + 1) + 1).toNat

end

end A049234.P17259864340366452720

namespace A049234

/-- `A000005(A028815(n+1)+1)` -/
def P17259864340366452720.Spec : Prop :=
  ∀ n, P17259864340366452720.a n = A049234 (n + 1)

end A049234

/-! ## A049234.P11187421962851158988

`A000005(A000040(n+1)+2)`
-/

namespace A049234.P11187421962851158988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1) + 2).toNat

end

end A049234.P11187421962851158988

namespace A049234

/-- `A000005(A000040(n+1)+2)` -/
def P11187421962851158988.Spec : Prop :=
  ∀ n, P11187421962851158988.a n = A049234 (n + 1)

end A049234

/-! ## A049234.P13688005204642352067

`A000005(A113935(n+1)-1)`
-/

namespace A049234.P13688005204642352067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A113935 (n + 1) - 1).toNat

end

end A049234.P13688005204642352067

namespace A049234

/-- `A000005(A113935(n+1)-1)` -/
def P13688005204642352067.Spec : Prop :=
  ∀ n, P13688005204642352067.a n = A049234 (n + 1)

end A049234

/-! ## A049234.P5701920204888874968

`A000005(A299763(n+2)+1)`
-/

namespace A049234.P5701920204888874968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A299763 (n + 2) + 1).toNat

end

end A049234.P5701920204888874968

namespace A049234

/-- `A000005(A299763(n+2)+1)` -/
def P5701920204888874968.Spec : Prop :=
  ∀ n, P5701920204888874968.a n = A049234 (n + 1)

end A049234

/-! ## A049234.P8337024261894628910

`A000005(A008578(n+2)+2)`
-/

namespace A049234.P8337024261894628910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 2) + 2).toNat

end

end A049234.P8337024261894628910

namespace A049234

/-- `A000005(A008578(n+2)+2)` -/
def P8337024261894628910.Spec : Prop :=
  ∀ n, P8337024261894628910.a n = A049234 (n + 1)

end A049234

/-! ## A049234.P4900508637955131473

`A000005(A182986(n+2)+2)`
-/

namespace A049234.P4900508637955131473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A182986 (n + 2) + 2).toNat

end

end A049234.P4900508637955131473

namespace A049234

/-- `A000005(A182986(n+2)+2)` -/
def P4900508637955131473.Spec : Prop :=
  ∀ n, P4900508637955131473.a n = A049234 (n + 1)

end A049234

/-! ## A049234.P17488369922606767562

`A000005(sqrt(A110833(n+1))+1)`
-/

namespace A049234.P17488369922606767562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A110833 (n + 1) : ℝ) + 1)).toNat

end

end A049234.P17488369922606767562

namespace A049234

/-- `A000005(sqrt(A110833(n+1))+1)` -/
def P17488369922606767562.Spec : Prop :=
  ∀ n, P17488369922606767562.a n = A049234 (n + 1)

end A049234

/-! ## A049234.P13496021742448012836

`A000005(sqrt(A001248(n+1))+2)`
-/

namespace A049234.P13496021742448012836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ) + 2)).toNat

end

end A049234.P13496021742448012836

namespace A049234

/-- `A000005(sqrt(A001248(n+1))+2)` -/
def P13496021742448012836.Spec : Prop :=
  ∀ n, P13496021742448012836.a n = A049234 (n + 1)

end A049234

/-! ## A049234.P2670159005340268176

`A000005(∑[A125266(n+1)]+1)`
-/

namespace A049234.P2670159005340268176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A049234.P2670159005340268176

namespace A049234

/-- `A000005(∑[A125266(n+1)]+1)` -/
def P2670159005340268176.Spec : Prop :=
  ∀ n, P2670159005340268176.a n = A049234 (n + 1)

end A049234

/-! ## A049234.P8875499421767925795

`A000005(∑[A054541(n+1)]+2)`
-/

namespace A049234.P8875499421767925795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A049234.P8875499421767925795

namespace A049234

/-- `A000005(∑[A054541(n+1)]+2)` -/
def P8875499421767925795.Spec : Prop :=
  ∀ n, P8875499421767925795.a n = A049234 (n + 1)

end A049234

/-! ## A049234.P17239564921977768761

`A000005(record[A000010(n+1)+3])`
-/

namespace A049234.P17239564921977768761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049234.P17239564921977768761

namespace A049234

/-- `A000005(record[A000010(n+1)+3])` -/
def P17239564921977768761.Spec : Prop :=
  ∀ n, P17239564921977768761.a n = A049234 (n + 1)

end A049234

/-! ## A049234.P4934500310265289750

`A000005(record[A006530(n+2)+2])`
-/

namespace A049234.P4934500310265289750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049234.P4934500310265289750

namespace A049234

/-- `A000005(record[A006530(n+2)+2])` -/
def P4934500310265289750.Spec : Prop :=
  ∀ n, P4934500310265289750.a n = A049234 (n + 1)

end A049234

/-! ## A049234.P6570392720005002341

`A000005(record[A020639(n+2)+2])`
-/

namespace A049234.P6570392720005002341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049234.P6570392720005002341

namespace A049234

/-- `A000005(record[A020639(n+2)+2])` -/
def P6570392720005002341.Spec : Prop :=
  ∀ n, P6570392720005002341.a n = A049234 (n + 1)

end A049234

/-! ## A049234.P3556238657727558643

`A000005(A014692(n+1)+n+2)`
-/

namespace A049234.P3556238657727558643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A014692 (n + 1) + (n + 2 : ℤ)).toNat

end

end A049234.P3556238657727558643

namespace A049234

/-- `A000005(A014692(n+1)+n+2)` -/
def P3556238657727558643.Spec : Prop :=
  ∀ n, P3556238657727558643.a n = A049234 (n + 1)

end A049234

/-! ## A049234.P14882730316180909676

`A000005(A007429(A000040(n+1)))`
-/

namespace A049234.P14882730316180909676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007429 (A000040 (n + 1)).toNat).toNat

end

end A049234.P14882730316180909676

namespace A049234

/-- `A000005(A007429(A000040(n+1)))` -/
def P14882730316180909676.Spec : Prop :=
  ∀ n, P14882730316180909676.a n = A049234 (n + 1)

end A049234

/-! ## A049234.P17180010868308174874

`A000005(eq[2, A000005(n+1)]+3)`
-/

namespace A049234.P17180010868308174874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A049234.P17180010868308174874

namespace A049234

/-- `A000005(eq[2, A000005(n+1)]+3)` -/
def P17180010868308174874.Spec : Prop :=
  ∀ n, P17180010868308174874.a n = A049234 (n + 1)

end A049234

/-! ## A049234.P13227891697246892181

`A229341(A100484(n+1))`
-/

namespace A049234.P13227891697246892181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229341 (A100484 (n + 1)).toNat

end

end A049234.P13227891697246892181

namespace A049234

/-- `A229341(A100484(n+1))` -/
def P13227891697246892181.Spec : Prop :=
  ∀ n, P13227891697246892181.a n = A049234 (n + 1)

end A049234

/-!
# A049236: a(n) is the number of distinct prime factors of prime(n) + 2.

The programs for A049236, the canonical program `A049236.P12657372269658951537` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049236 has offset 1).

The definition of A049236 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A052147, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049236.P12657372269658951537

`A001221(A052147(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049236

/-- `A001221(A052147(n+1))` -/
def P12657372269658951537.Spec : Prop :=
  ∀ n, P12657372269658951537.a n = A049236 (n + 1)

theorem P12657372269658951537.correct : P12657372269658951537.Spec := by
  intro n
  simp only [A049236, Nat.add_sub_cancel]

end A049236

/-! ## A049236.P17057693347867143616

`∑{p}[A000040(n+1)+2, A001222(#)]`
-/

namespace A049236.P17057693347867143616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A049236.P17057693347867143616

namespace A049236

/-- `∑{p}[A000040(n+1)+2, A001222(#)]` -/
def P17057693347867143616.Spec : Prop :=
  ∀ n, P17057693347867143616.a n = A049236 (n + 1)

end A049236

/-! ## A049236.P17747575857149784927

`A001221(Δ[A007504(n)]+2)`
-/

namespace A049236.P17747575857149784927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n + 2).toNat

end

end A049236.P17747575857149784927

namespace A049236

/-- `A001221(Δ[A007504(n)]+2)` -/
def P17747575857149784927.Spec : Prop :=
  ∀ n, P17747575857149784927.a n = A049236 (n + 1)

end A049236

/-! ## A049236.P15066267850530786027

`A001221(A008864(n+1)+1)`
-/

namespace A049236.P15066267850530786027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008864 (n + 1) + 1).toNat

end

end A049236.P15066267850530786027

namespace A049236

/-- `A001221(A008864(n+1)+1)` -/
def P15066267850530786027.Spec : Prop :=
  ∀ n, P15066267850530786027.a n = A049236 (n + 1)

end A049236

/-! ## A049236.P15065221729094513353

`A001221(A028815(n+1)+1)`
-/

namespace A049236.P15065221729094513353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028815 (n + 1) + 1).toNat

end

end A049236.P15065221729094513353

namespace A049236

/-- `A001221(A028815(n+1)+1)` -/
def P15065221729094513353.Spec : Prop :=
  ∀ n, P15065221729094513353.a n = A049236 (n + 1)

end A049236

/-! ## A049236.P17486856243231799849

`A001221(A055670(n+1)+1)`
-/

namespace A049236.P17486856243231799849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A055670 (n + 1) + 1).toNat

end

end A049236.P17486856243231799849

namespace A049236

/-- `A001221(A055670(n+1)+1)` -/
def P17486856243231799849.Spec : Prop :=
  ∀ n, P17486856243231799849.a n = A049236 (n + 1)

end A049236

/-! ## A049236.P7198054181496282996

`A001221(A175216(n+1)+1)`
-/

namespace A049236.P7198054181496282996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A175216 (n + 1) + 1).toNat

end

end A049236.P7198054181496282996

namespace A049236

/-- `A001221(A175216(n+1)+1)` -/
def P7198054181496282996.Spec : Prop :=
  ∀ n, P7198054181496282996.a n = A049236 (n + 1)

end A049236

/-! ## A049236.P15484602978747987904

`A001221(A000040(n+1)+2)`
-/

namespace A049236.P15484602978747987904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000040 (n + 1) + 2).toNat

end

end A049236.P15484602978747987904

namespace A049236

/-- `A001221(A000040(n+1)+2)` -/
def P15484602978747987904.Spec : Prop :=
  ∀ n, P15484602978747987904.a n = A049236 (n + 1)

end A049236

/-! ## A049236.P13648481100455066907

`A001221(A006005(n+1)+2)`
-/

namespace A049236.P13648481100455066907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006005 (n + 1) + 2).toNat

end

end A049236.P13648481100455066907

namespace A049236

/-- `A001221(A006005(n+1)+2)` -/
def P13648481100455066907.Spec : Prop :=
  ∀ n, P13648481100455066907.a n = A049236 (n + 1)

end A049236

/-! ## A049236.P387983529814655449

`A001221(A113935(n+1)-1)`
-/

namespace A049236.P387983529814655449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A113935 (n + 1) - 1).toNat

end

end A049236.P387983529814655449

namespace A049236

/-- `A001221(A113935(n+1)-1)` -/
def P387983529814655449.Spec : Prop :=
  ∀ n, P387983529814655449.a n = A049236 (n + 1)

end A049236

/-! ## A049236.P4038739373648116055

`A001221(A006093(n+1)+3)`
-/

namespace A049236.P4038739373648116055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006093 (n + 1) + 3).toNat

end

end A049236.P4038739373648116055

namespace A049236

/-- `A001221(A006093(n+1)+3)` -/
def P4038739373648116055.Spec : Prop :=
  ∀ n, P4038739373648116055.a n = A049236 (n + 1)

end A049236

/-! ## A049236.P6353079020923010921

`A001221(A008578(n+2)+2)`
-/

namespace A049236.P6353079020923010921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008578 (n + 2) + 2).toNat

end

end A049236.P6353079020923010921

namespace A049236

/-- `A001221(A008578(n+2)+2)` -/
def P6353079020923010921.Spec : Prop :=
  ∀ n, P6353079020923010921.a n = A049236 (n + 1)

end A049236

/-! ## A049236.P5608180668843204503

`A001221(A175221(n+1)-2)`
-/

namespace A049236.P5608180668843204503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A175221 (n + 1) - 2).toNat

end

end A049236.P5608180668843204503

namespace A049236

/-- `A001221(A175221(n+1)-2)` -/
def P5608180668843204503.Spec : Prop :=
  ∀ n, P5608180668843204503.a n = A049236 (n + 1)

end A049236

/-! ## A049236.P3156344161827579807

`A001221(sqrt(A001248(n+1))+2)`
-/

namespace A049236.P3156344161827579807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ) + 2)).toNat

end

end A049236.P3156344161827579807

namespace A049236

/-- `A001221(sqrt(A001248(n+1))+2)` -/
def P3156344161827579807.Spec : Prop :=
  ∀ n, P3156344161827579807.a n = A049236 (n + 1)

end A049236

/-! ## A049236.P1656477418036340082

`A001221(∑[A125266(n+1)]+1)`
-/

namespace A049236.P1656477418036340082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A049236.P1656477418036340082

namespace A049236

/-- `A001221(∑[A125266(n+1)]+1)` -/
def P1656477418036340082.Spec : Prop :=
  ∀ n, P1656477418036340082.a n = A049236 (n + 1)

end A049236

/-! ## A049236.P16415184015978235815

`A001221(record[A000010(n+1)+3])`
-/

namespace A049236.P16415184015978235815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049236.P16415184015978235815

namespace A049236

/-- `A001221(record[A000010(n+1)+3])` -/
def P16415184015978235815.Spec : Prop :=
  ∀ n, P16415184015978235815.a n = A049236 (n + 1)

end A049236

/-! ## A049236.P14810212145902212495

`A001221(p?[A000430(n+1)]+2)`
-/

namespace A049236.P14810212145902212495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2).toNat

end

end A049236.P14810212145902212495

namespace A049236

/-- `A001221(p?[A000430(n+1)]+2)` -/
def P14810212145902212495.Spec : Prop :=
  ∀ n, P14810212145902212495.a n = A049236 (n + 1)

end A049236

/-! ## A049236.P16274537259210819372

`A001221(A093515(2*n+1)+1)`
-/

namespace A049236.P16274537259210819372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A093515 (2 * n + 1) + 1).toNat

end

end A049236.P16274537259210819372

namespace A049236

/-- `A001221(A093515(2*n+1)+1)` -/
def P16274537259210819372.Spec : Prop :=
  ∀ n, P16274537259210819372.a n = A049236 (n + 1)

end A049236

/-! ## A049236.P4844875816710161320

`A001221(A100484(n+1)/2+2)`
-/

namespace A049236.P4844875816710161320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2 + 2)).toNat

end

end A049236.P4844875816710161320

namespace A049236

/-- `A001221(A100484(n+1)/2+2)` -/
def P4844875816710161320.Spec : Prop :=
  ∀ n, P4844875816710161320.a n = A049236 (n + 1)

end A049236

/-! ## A049236.P453387894125864637

`A001221(A014692(n+1)+2+n)`
-/

namespace A049236.P453387894125864637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A014692 (n + 1) + 2 + (n : ℤ)).toNat

end

end A049236.P453387894125864637

namespace A049236

/-- `A001221(A014692(n+1)+2+n)` -/
def P453387894125864637.Spec : Prop :=
  ∀ n, P453387894125864637.a n = A049236 (n + 1)

end A049236

/-!
# A049237: Quotient n/phi(n) for n in A007694.

The programs for A049237, there is no canonical definition to state claims against.
-/

/-! ## A049237.P17808738401603372097

`A006530(A007694(n+1))`
-/

namespace A049237.P17808738401603372097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007694 (n + 1)).toNat

end

end A049237.P17808738401603372097

/-! ## A049237.P4256296862181402239

`a(A086411(n))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A049237.P4256296862181402239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3] fun n a =>
  a (A086411 n).toNat

end

end A049237.P4256296862181402239

/-! ## A049237.P11917063469745366067

`A086411(∏{p}[n, n%#]+n)`
-/

namespace A049237.P11917063469745366067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086411 (∏ p ∈ Nat.primeFactors (f1 n), n % p + n)

end

end A049237.P11917063469745366067

/-! ## A049237.P10555740524806383092

`A022296(a(A022329(n)))` with `a(0)=1`
-/

namespace A049237.P10555740524806383092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022296 (a (A022329 n).toNat).toNat

end

end A049237.P10555740524806383092

/-! ## A049237.P12928735401894955814

`A089934(a(A022329(n)))` with `a(0)=1`
-/

namespace A049237.P12928735401894955814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A089934 (a (A022329 n).toNat).toNat

end

end A049237.P12928735401894955814

/-! ## A049237.P10076781019411211253

`A036234(a(A022329(n))+1)` with `a(0)=1`
-/

namespace A049237.P10076781019411211253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036234 (a (A022329 n).toNat + 1).toNat

end

end A049237.P10076781019411211253

/-! ## A049237.P11209264774341423299

`A061987(a(A022329(n))²)+1` with `a(0)=1`
-/

namespace A049237.P11209264774341423299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061987 (a (A022329 n).toNat ^ 2).toNat + 1

end

end A049237.P11209264774341423299

/-! ## A049237.P15454380914667579955

`A000040(A000005(a(A022329(n))))` with `a(0)=1`
-/

namespace A049237.P15454380914667579955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A000005 (a (A022329 n).toNat).toNat).toNat

end

end A049237.P15454380914667579955

/-! ## A049237.P17376333760205135384

`A000040(A036845(a(A022329(n))+1))` with `a(0)=1`
-/

namespace A049237.P17376333760205135384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A036845 (a (A022329 n).toNat + 1).toNat).toNat

end

end A049237.P17376333760205135384

/-! ## A049237.P11120738382397139483

`A054740(n+1)+1`
-/

namespace A049237.P11120738382397139483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054740 (n + 1) + 1

end

end A049237.P11120738382397139483

/-! ## A049237.P17754559220577440327

`A007720(∏{p}[A007694(n+1), #])`
-/

namespace A049237.P17754559220577440327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007720 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A049237.P17754559220577440327

/-! ## A049237.P3733246474026675472

`∑{p}[A007694(n+1), A001222(#)]+1`
-/

namespace A049237.P3733246474026675472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p + 1

end

end A049237.P3733246474026675472

/-! ## A049237.P14293937094433009187

`∑{p}[A007694(n+1), A007318(#)]+1`
-/

namespace A049237.P14293937094433009187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 p + 1

end

end A049237.P14293937094433009187

/-! ## A049237.P2575969709991939847

`A001222(∏{p}[A007694(n+1), #])+1`
-/

namespace A049237.P2575969709991939847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) + 1

end

end A049237.P2575969709991939847

/-! ## A049237.P17257663174242542008

`A128929(∏{p}[A007694(n+1), #]+4)`
-/

namespace A049237.P17257663174242542008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128929 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p + 4)

end

end A049237.P17257663174242542008

/-! ## A049237.P5693414893745130972

`A347044(∏{p}[ceil(A187778(n+1)/3), #])`
-/

namespace A049237.P5693414893745130972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A187778 (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347044 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A049237.P5693414893745130972

/-!
# A049238: a(n) is the number of divisors of prime(n) - 2.

The programs for A049238, the canonical program `A049238.P1185425134299913023` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049238 has offset 2).

The definition of A049238 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A040976, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049238.P1185425134299913023

`A000005(A040976(n+2))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049238

/-- `A000005(A040976(n+2))` -/
def P1185425134299913023.Spec : Prop :=
  ∀ n, P1185425134299913023.a n = A049238 (n + 2)

theorem P1185425134299913023.correct : P1185425134299913023.Spec := by
  intro n
  simp only [A049238, Nat.add_sub_cancel]

end A049238

/-! ## A049238.P8563202278368188876

`A000005(p?[2*n+1]-2)`
-/

namespace A049238.P8563202278368188876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 2)

end

end A049238.P8563202278368188876

namespace A049238

/-- `A000005(p?[2*n+1]-2)` -/
def P8563202278368188876.Spec : Prop :=
  ∀ n, P8563202278368188876.a n = A049238 (n + 2)

end A049238

/-! ## A049238.P4417114424517799302

`A000005(∑[A001223(n+1)])`
-/

namespace A049238.P4417114424517799302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049238.P4417114424517799302

namespace A049238

/-- `A000005(∑[A001223(n+1)])` -/
def P4417114424517799302.Spec : Prop :=
  ∀ n, P4417114424517799302.a n = A049238 (n + 2)

end A049238

/-! ## A049238.P970659043642286982

`A000005(∑[A075526(n+1)])`
-/

namespace A049238.P970659043642286982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049238.P970659043642286982

namespace A049238

/-- `A000005(∑[A075526(n+1)])` -/
def P970659043642286982.Spec : Prop :=
  ∀ n, P970659043642286982.a n = A049238 (n + 2)

end A049238

/-! ## A049238.P9255015756921672344

`A000005(∑[A054541(n+2)])`
-/

namespace A049238.P9255015756921672344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049238.P9255015756921672344

namespace A049238

/-- `A000005(∑[A054541(n+2)])` -/
def P9255015756921672344.Spec : Prop :=
  ∀ n, P9255015756921672344.a n = A049238 (n + 2)

end A049238

/-! ## A049238.P126537542056681414

`A000005(Δ[A103976(n+1)])`
-/

namespace A049238.P126537542056681414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A049238.P126537542056681414

namespace A049238

/-- `A000005(Δ[A103976(n+1)])` -/
def P126537542056681414.Spec : Prop :=
  ∀ n, P126537542056681414.a n = A049238 (n + 2)

end A049238

/-! ## A049238.P10835250988932954261

`A000005(∑[A125266(n+2)])`
-/

namespace A049238.P10835250988932954261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049238.P10835250988932954261

namespace A049238

/-- `A000005(∑[A125266(n+2)])` -/
def P10835250988932954261.Spec : Prop :=
  ∀ n, P10835250988932954261.a n = A049238 (n + 2)

end A049238

/-! ## A049238.P12648389142853588441

`A000005(A006093(n+2)-1)`
-/

namespace A049238.P12648389142853588441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006093 (n + 2) - 1).toNat

end

end A049238.P12648389142853588441

namespace A049238

/-- `A000005(A006093(n+2)-1)` -/
def P12648389142853588441.Spec : Prop :=
  ∀ n, P12648389142853588441.a n = A049238 (n + 2)

end A049238

/-! ## A049238.P8181099570004564999

`A000005(A065091(n+1)-2)`
-/

namespace A049238.P8181099570004564999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065091 (n + 1) - 2).toNat

end

end A049238.P8181099570004564999

namespace A049238

/-- `A000005(A065091(n+1)-2)` -/
def P8181099570004564999.Spec : Prop :=
  ∀ n, P8181099570004564999.a n = A049238 (n + 2)

end A049238

/-! ## A049238.P14284277459551158416

`A000005(A000040(n+2)-2)`
-/

namespace A049238.P14284277459551158416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 2) - 2).toNat

end

end A049238.P14284277459551158416

namespace A049238

/-- `A000005(A000040(n+2)-2)` -/
def P14284277459551158416.Spec : Prop :=
  ∀ n, P14284277459551158416.a n = A049238 (n + 2)

end A049238

/-! ## A049238.P6820181160772800177

`A000005(A006005(n+2)-2)`
-/

namespace A049238.P6820181160772800177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006005 (n + 2) - 2).toNat

end

end A049238.P6820181160772800177

namespace A049238

/-- `A000005(A006005(n+2)-2)` -/
def P6820181160772800177.Spec : Prop :=
  ∀ n, P6820181160772800177.a n = A049238 (n + 2)

end A049238

/-! ## A049238.P2908095677795768140

`A000005(A140777(n+2)/2)`
-/

namespace A049238.P2908095677795768140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A140777 (n + 2) : ℚ) / 2)).toNat

end

end A049238.P2908095677795768140

namespace A049238

/-- `A000005(A140777(n+2)/2)` -/
def P2908095677795768140.Spec : Prop :=
  ∀ n, P2908095677795768140.a n = A049238 (n + 2)

end A049238

/-! ## A049238.P6213497884082792035

`A000005(A014689(n+2)+n)`
-/

namespace A049238.P6213497884082792035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A014689 (n + 2) + (n : ℤ)).toNat

end

end A049238.P6213497884082792035

namespace A049238

/-- `A000005(A014689(n+2)+n)` -/
def P6213497884082792035.Spec : Prop :=
  ∀ n, P6213497884082792035.a n = A049238 (n + 2)

end A049238

/-! ## A049238.P6792522649737038055

`A000005(record[A000010(n+3)-1])`
-/

namespace A049238.P6792522649737038055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049238.P6792522649737038055

namespace A049238

/-- `A000005(record[A000010(n+3)-1])` -/
def P6792522649737038055.Spec : Prop :=
  ∀ n, P6792522649737038055.a n = A049238 (n + 2)

end A049238

/-! ## A049238.P16496151645947538655

`A000005(record[A006530(n+3)-2])`
-/

namespace A049238.P16496151645947538655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049238.P16496151645947538655

namespace A049238

/-- `A000005(record[A006530(n+3)-2])` -/
def P16496151645947538655.Spec : Prop :=
  ∀ n, P16496151645947538655.a n = A049238 (n + 2)

end A049238

/-! ## A049238.P6071694740868683801

`A000005(record[A020639(n+3)-2])`
-/

namespace A049238.P6071694740868683801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049238.P6071694740868683801

namespace A049238

/-- `A000005(record[A020639(n+3)-2])` -/
def P6071694740868683801.Spec : Prop :=
  ∀ n, P6071694740868683801.a n = A049238 (n + 2)

end A049238

/-! ## A049238.P15175417068356548804

`A000005(∑[abs(Δ[A000040(n+1)])])`
-/

namespace A049238.P15175417068356548804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049238.P15175417068356548804

namespace A049238

/-- `A000005(∑[abs(Δ[A000040(n+1)])])` -/
def P15175417068356548804.Spec : Prop :=
  ∀ n, P15175417068356548804.a n = A049238 (n + 2)

end A049238

/-! ## A049238.P5777640429754063878

`A000005(A065890(n+2)+n+1)`
-/

namespace A049238.P5777640429754063878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065890 (n + 2) + (n + 1 : ℤ)).toNat

end

end A049238.P5777640429754063878

namespace A049238

/-- `A000005(A065890(n+2)+n+1)` -/
def P5777640429754063878.Spec : Prop :=
  ∀ n, P5777640429754063878.a n = A049238 (n + 2)

end A049238

/-! ## A049238.P8926696609595584473

`A000005(record[(n+1)/A001222(n+3)])`
-/

namespace A049238.P8926696609595584473
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001222 (n + 3) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A049238.P8926696609595584473

namespace A049238

/-- `A000005(record[(n+1)/A001222(n+3)])` -/
def P8926696609595584473.Spec : Prop :=
  ∀ n, P8926696609595584473.a n = A049238 (n + 2)

end A049238

/-!
# A049239: Smallest nonnegative value taken on by px^2-qy^2 for an infinite number of integer pairs (x,y), where (p,q) = (1,1), (1,2), (2,1), (1,3), (2,2), (3,1)...

The programs for A049239, there is no canonical definition to state claims against.
-/

/-! ## A049239.P4183962332351992301

`A300075(A203847(n+1)-A016116(n))`
-/

namespace A049239.P4183962332351992301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300075 (A203847 (n + 1) - A016116 n).toNat

end

end A049239.P4183962332351992301

/-! ## A049239.P4435725804241192490

`A190248(xor(5, A354784(n+1)))`
-/

namespace A049239.P4435725804241192490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190248 (Int.xor 5 (A354784 (n + 1))).toNat

end

end A049239.P4435725804241192490

/-! ## A049239.P6057531277581042497

`A257992(∑[A257672(A113127(n))])`
-/

namespace A049239.P6057531277581042497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257672 (A113127 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049239.P6057531277581042497

/-! ## A049239.P14628186045561414980

`A189463(lcm(A017449(n), A145310(n+1)))`
-/

namespace A049239.P14628186045561414980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189463 (Int.lcm (A017449 n) (A145310 (n + 1)))

end

end A049239.P14628186045561414980

/-! ## A049239.P7892662504131705048

`A077473(A334626(n+4))%A126759(n)`
-/

namespace A049239.P7892662504131705048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077473 (A334626 (n + 4)).toNat) (A126759 n)

end

end A049239.P7892662504131705048

/-!
# A049240: Smallest nonnegative value taken on by x^2 - n*y^2 for an infinite number of integer pairs (x, y).

The programs for A049240, the canonical program `A049240.P14203187308614321582` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049240 has offset 1).

The definition of A049240 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049240.P14203187308614321582

`ceil(sqrt(n+1))-floor(sqrt(n+1))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049240

/-- `ceil(sqrt(n+1))-floor(sqrt(n+1))` -/
def P14203187308614321582.Spec : Prop :=
  ∀ n, P14203187308614321582.a n = A049240 (n + 1)

theorem P14203187308614321582.correct : P14203187308614321582.Spec := by
  intro n
  simp only [A049240, Nat.add_sub_cancel]

end A049240

/-! ## A049240.P13410244578568810420

`xor(1, Δ[floor(sqrt(n))])`
-/

namespace A049240.P13410244578568810420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A049240.P13410244578568810420

namespace A049240

/-- `xor(1, Δ[floor(sqrt(n))])` -/
def P13410244578568810420.Spec : Prop :=
  ∀ n, P13410244578568810420.a n = A049240 (n + 1)

end A049240

/-! ## A049240.P9193728924116027963

`floor(cos(Δ[floor(sqrt(n))]))`
-/

namespace A049240.P9193728924116027963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌋

end

end A049240.P9193728924116027963

namespace A049240

/-- `floor(cos(Δ[floor(sqrt(n))]))` -/
def P9193728924116027963.Spec : Prop :=
  ∀ n, P9193728924116027963.a n = A049240 (n + 1)

end A049240

/-! ## A049240.P7604782778346485700

`floor(acos(Δ[floor(sqrt(n))]))`
-/

namespace A049240.P7604782778346485700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arccos ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌋

end

end A049240.P7604782778346485700

namespace A049240

/-- `floor(acos(Δ[floor(sqrt(n))]))` -/
def P7604782778346485700.Spec : Prop :=
  ∀ n, P7604782778346485700.a n = A049240 (n + 1)

end A049240

/-! ## A049240.P2225809391360353485

`floor(acot(Δ[floor(sqrt(n))]))`
-/

namespace A049240.P2225809391360353485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌋

end

end A049240.P2225809391360353485

namespace A049240

/-- `floor(acot(Δ[floor(sqrt(n))]))` -/
def P2225809391360353485.Spec : Prop :=
  ∀ n, P2225809391360353485.a n = A049240 (n + 1)

end A049240

/-! ## A049240.P13193939105474609072

`floor(ratio[acot(floor(sqrt(n)))])`
-/

namespace A049240.P13193939105474609072
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.sqrt n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A049240.P13193939105474609072

namespace A049240

/-- `floor(ratio[acot(floor(sqrt(n)))])` -/
def P13193939105474609072.Spec : Prop :=
  ∀ n, P13193939105474609072.a n = A049240 (n + 1)

end A049240

/-! ## A049240.P15879635000994032606

`sin(acos(char[n²-1]))`
-/

namespace A049240.P15879635000994032606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.arccos ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ))

end

end A049240.P15879635000994032606

namespace A049240

/-- `sin(acos(char[n²-1]))` -/
def P15879635000994032606.Spec : Prop :=
  ∀ n, P15879635000994032606.a n = (A049240 (n + 1) : ℝ)

end A049240

/-! ## A049240.P15802310639274695514

`cos(asin(char[n²-1]))`
-/

namespace A049240.P15802310639274695514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.arcsin ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ))

end

end A049240.P15802310639274695514

namespace A049240

/-- `cos(asin(char[n²-1]))` -/
def P15802310639274695514.Spec : Prop :=
  ∀ n, P15802310639274695514.a n = (A049240 (n + 1) : ℝ)

end A049240

/-! ## A049240.P12331715558384820912

`dr(1-char[n²-1])`
-/

namespace A049240.P12331715558384820912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A049240.P12331715558384820912

namespace A049240

/-- `dr(1-char[n²-1])` -/
def P12331715558384820912.Spec : Prop :=
  ∀ n, (P12331715558384820912.a n : ℤ) = A049240 (n + 1)

end A049240

/-! ## A049240.P13024821063168382341

`char[xor(n-1, char[n²])]`
-/

namespace A049240.P13024821063168382341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 1) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A049240.P13024821063168382341

namespace A049240

/-- `char[xor(n-1, char[n²])]` -/
def P13024821063168382341.Spec : Prop :=
  ∀ n, (P13024821063168382341.a n : ℤ) = A049240 (n + 1)

end A049240

/-! ## A049240.P10749668779983726444

`(1-char[n²-1])%2`
-/

namespace A049240.P10749668779983726444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) 2

end

end A049240.P10749668779983726444

namespace A049240

/-- `(1-char[n²-1])%2` -/
def P10749668779983726444.Spec : Prop :=
  ∀ n, P10749668779983726444.a n = A049240 (n + 1)

end A049240

/-! ## A049240.P1866123167690206523

`and(1, 1-char[n²-1])`
-/

namespace A049240.P1866123167690206523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A049240.P1866123167690206523

namespace A049240

/-- `and(1, 1-char[n²-1])` -/
def P1866123167690206523.Spec : Prop :=
  ∀ n, P1866123167690206523.a n = A049240 (n + 1)

end A049240

/-! ## A049240.P5756619876214506608

`val(∪[2*(2*n+1), (2*n+1)²], 2)`
-/

namespace A049240.P5756619876214506608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n) 2

end

end A049240.P5756619876214506608

namespace A049240

/-- `val(∪[2*(2*n+1), (2*n+1)²], 2)` -/
def P5756619876214506608.Spec : Prop :=
  ∀ n, (P5756619876214506608.a n : ℤ) = A049240 (n + 1)

end A049240

/-! ## A049240.P5166990767587066680

`log2(A275437(n))`
-/

namespace A049240.P5166990767587066680
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A275437 n : ℝ)

end

end A049240.P5166990767587066680

namespace A049240

/-- `log2(A275437(n))` -/
def P5166990767587066680.Spec : Prop :=
  ∀ n, P5166990767587066680.a n = (A049240 (n + 1) : ℝ)

end A049240

/-! ## A049240.P15646531551347179649

`Δ[A028391(n)]`
-/

namespace A049240.P15646531551347179649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049240.P15646531551347179649

namespace A049240

/-- `Δ[A028391(n)]` -/
def P15646531551347179649.Spec : Prop :=
  ∀ n, P15646531551347179649.a n = A049240 (n + 1)

end A049240

/-! ## A049240.P8857701410551344356

`A267635(n+1)`
-/

namespace A049240.P8857701410551344356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (n + 1)

end

end A049240.P8857701410551344356

namespace A049240

/-- `A267635(n+1)` -/
def P8857701410551344356.Spec : Prop :=
  ∀ n, P8857701410551344356.a n = A049240 (n + 1)

end A049240

/-! ## A049240.P7423693591225090175

`char[comp[A005563(n)]]`
-/

namespace A049240.P7423693591225090175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A049240.P7423693591225090175

namespace A049240

/-- `char[comp[A005563(n)]]` -/
def P7423693591225090175.Spec : Prop :=
  ∀ n, (P7423693591225090175.a n : ℤ) = A049240 (n + 1)

end A049240

/-! ## A049240.P5736022764228559693

`abs(A068717(n+1))`
-/

namespace A049240.P5736022764228559693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A068717 (n + 1)|

end

end A049240.P5736022764228559693

namespace A049240

/-- `abs(A068717(n+1))` -/
def P5736022764228559693.Spec : Prop :=
  ∀ n, P5736022764228559693.a n = A049240 (n + 1)

end A049240

/-! ## A049240.P7939959687542214609

`abs(A344617(n+1))`
-/

namespace A049240.P7939959687542214609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A344617 (n + 1)|

end

end A049240.P7939959687542214609

namespace A049240

/-- `abs(A344617(n+1))` -/
def P7939959687542214609.Spec : Prop :=
  ∀ n, P7939959687542214609.a n = A049240 (n + 1)

end A049240

/-! ## A049240.P4079449245376006771

`abs(A397085(n+1))`
-/

namespace A049240.P4079449245376006771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A397085 (n + 1)|

end

end A049240.P4079449245376006771

namespace A049240

/-- `abs(A397085(n+1))` -/
def P4079449245376006771.Spec : Prop :=
  ∀ n, P4079449245376006771.a n = A049240 (n + 1)

end A049240

/-!
# A049241: Smallest nonnegative value taken on by 2*x^2 - n*y^2 for an infinite number of integer pairs (x, y).

The programs for A049241, there is no canonical definition to state claims against.
-/

/-! ## A049241.P6733310706840560862

`A049243(A119432(n+1))/2`
-/

namespace A049241.P6733310706840560862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049243 (A119432 (n + 1)).toNat : ℚ) / 2

end

end A049241.P6733310706840560862

/-! ## A049241.P5036983846938190304

`A049243(2*(n+1))/2`
-/

namespace A049241.P5036983846938190304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049243 (2 * (n + 1)) : ℚ) / 2

end

end A049241.P5036983846938190304

/-! ## A049241.P5964766772383373629

`floor(sqrt(A049243(2*n+2)))`
-/

namespace A049241.P5964766772383373629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A049243 (2 * n + 2))

end

end A049241.P5964766772383373629

/-! ## A049241.P15335557184146739916

`round(sqrt(A049243(2*(n+1)))*A060576(n))`
-/

namespace A049241.P15335557184146739916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A049243 (2 * (n + 1)) : ℝ) * (A060576 n : ℝ))

end

end A049241.P15335557184146739916

/-! ## A049241.P15651737059611463253

`(A008591(n+1)-A049243(2*(n+1)))%3`
-/

namespace A049241.P15651737059611463253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008591 (n + 1) - A049243 (2 * (n + 1))) 3

end

end A049241.P15651737059611463253

/-! ## A049241.P14353449556303676802

`A032741(A049243(2*(n+1))+C(2, n+2))`
-/

namespace A049241.P14353449556303676802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A049243 (2 * (n + 1)) + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A049241.P14353449556303676802

/-! ## A049241.P571160122378193655

`A059851(A049243(2*(n+1))-C(2, n+2))`
-/

namespace A049241.P571160122378193655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (A049243 (2 * (n + 1)) - (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A049241.P571160122378193655

/-!
# A049242: Smallest nonnegative value taken on by 3x^2 - ny^2 for an infinite number of integer pairs (x, y).

The programs for A049242, there is no canonical definition to state claims against.
-/

/-! ## A049242.P953544076591711141

`A049245(2*(n+1))/2`
-/

namespace A049242.P953544076591711141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049245 (2 * (n + 1)) : ℚ) / 2

end

end A049242.P953544076591711141

/-! ## A049242.P5385492064917125648

`dr(5*A049245(2*n+2))`
-/

namespace A049242.P5385492064917125648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (5 * A049245 (2 * n + 2))

end

end A049242.P5385492064917125648

/-! ## A049242.P15668416251908246442

`A300293(A049245(2*(n+1))+gcd(n, n+1))`
-/

namespace A049242.P15668416251908246442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300293 (A049245 (2 * (n + 1)) + (Nat.gcd n (n + 1) : ℤ)).toNat

end

end A049242.P15668416251908246442

/-! ## A049242.P1910560987046827045

`A049248(3*(n+1))/3`
-/

namespace A049242.P1910560987046827045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049248 (3 * (n + 1)) : ℚ) / 3

end

end A049242.P1910560987046827045

/-! ## A049242.P9661191644286888249

`and(3, A139245(n+1)-A049248(3*(n+1)))`
-/

namespace A049242.P9661191644286888249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A139245 (n + 1) - A049248 (3 * (n + 1)))

end

end A049242.P9661191644286888249

/-!
# A049243: Smallest nonnegative value taken on by 4x^2 - ny^2 for an infinite number of integer pairs (x, y).

The programs for A049243, there is no canonical definition to state claims against.
-/

/-! ## A049243.P9988265696043311251

`A049247(A119432(n+1))/2`
-/

namespace A049243.P9988265696043311251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049247 (A119432 (n + 1)).toNat : ℚ) / 2

end

end A049243.P9988265696043311251

/-! ## A049243.P3241161995526436504

`2^A008683(A020484(n))*A049247(A119432(n+1))`
-/

namespace A049243.P3241161995526436504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ) * (A049247 (A119432 (n + 1)).toNat : ℚ)

end

end A049243.P3241161995526436504

/-! ## A049243.P13776730943185436105

`A049247(2*(n+1))/2`
-/

namespace A049243.P13776730943185436105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049247 (2 * (n + 1)) : ℚ) / 2

end

end A049243.P13776730943185436105

/-! ## A049243.P1275152946804682930

`dr(5*A049247(2*n+2))`
-/

namespace A049243.P1275152946804682930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (5 * A049247 (2 * n + 2))

end

end A049243.P1275152946804682930

/-! ## A049243.P8717437654738555110

`A004526(A049247(2*(n+1))+C(2, and(n, n+1)))`
-/

namespace A049243.P8717437654738555110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049247 (2 * (n + 1)) + (Nat.choose 2 (Nat.land n (n + 1)) : ℤ)).toNat

end

end A049243.P8717437654738555110

/-! ## A049243.P3315906350052843221

`A083479(A019425(2*n)*A049247(2*(n+1)))`
-/

namespace A049243.P3315906350052843221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (A019425 (2 * n) * A049247 (2 * (n + 1))).toNat

end

end A049243.P3315906350052843221

/-!
# A049244: Smallest nonnegative value taken on by 5x^2 - ny^2 for an infinite number of integer pairs (x, y).

The programs for A049244, there is no canonical definition to state claims against.
-/

/-! ## A049244.P6866415352963962226

`A049249(2*(n+1))/2`
-/

namespace A049244.P6866415352963962226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049249 (2 * (n + 1)) : ℚ) / 2

end

end A049244.P6866415352963962226

/-! ## A049244.P2150877123995684644

`dr(5*A049249(2*n+2))`
-/

namespace A049244.P2150877123995684644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (5 * A049249 (2 * n + 2))

end

end A049244.P2150877123995684644

/-! ## A049244.P7527364923794035274

`A001281(A049249(2*(n+1)))`
-/

namespace A049244.P7527364923794035274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A049249 (2 * (n + 1))).toNat

end

end A049244.P7527364923794035274

/-! ## A049244.P694193821857033040

`A025480(A049249(2*n+2))`
-/

namespace A049244.P694193821857033040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A049249 (2 * n + 2)).toNat

end

end A049244.P694193821857033040

/-! ## A049244.P5799289802342300217

`dr(A049249(Δ[A002378(n)])/2)`
-/

namespace A049244.P5799289802342300217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A049249 (f1 (n + 1) - f1 n).toNat : ℚ) / 2))

end

end A049244.P5799289802342300217

/-!
# A049245: Smallest nonnegative value taken on by 6x^2 - ny^2 for an infinite number of integer pairs (x, y).

The programs for A049245, there is no canonical definition to state claims against.
-/

/-! ## A049245.P17817674634940971590

`A049251(2*(n+1))/2`
-/

namespace A049245.P17817674634940971590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049251 (2 * (n + 1)) : ℚ) / 2

end

end A049245.P17817674634940971590

/-! ## A049245.P5363529183896147861

`dr(5*A049251(2*n+2))`
-/

namespace A049245.P5363529183896147861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (5 * A049251 (2 * n + 2))

end

end A049245.P5363529183896147861

/-! ## A049245.P10241827355064559001

`A001281(A049251(2*(n+1)))`
-/

namespace A049245.P10241827355064559001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A049251 (2 * (n + 1))).toNat

end

end A049245.P10241827355064559001

/-! ## A049245.P18362605540354481387

`A064680(A049251(2*n+2))`
-/

namespace A049245.P18362605540354481387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A049251 (2 * n + 2)).toNat

end

end A049245.P18362605540354481387

/-! ## A049245.P2744432889303072149

`A004526(A049251(2*(n+1))+1)`
-/

namespace A049245.P2744432889303072149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049251 (2 * (n + 1)) + 1).toNat

end

end A049245.P2744432889303072149

/-!
# A049246: Smallest nonnegative value taken on by 7x^2 - ny^2 for an infinite number of integer pairs (x, y).

The programs for A049246, there is no canonical definition to state claims against.
-/

/-! ## A049246.P8194824332220894938

`A049253(2*(n+1))/2`
-/

namespace A049246.P8194824332220894938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049253 (2 * (n + 1)) : ℚ) / 2

end

end A049246.P8194824332220894938

/-! ## A049246.P16781019978026441808

`dr(5*A049253(2*n+2))`
-/

namespace A049246.P16781019978026441808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (5 * A049253 (2 * n + 2))

end

end A049246.P16781019978026441808

/-! ## A049246.P7383408396611499217

`A004525(A049253(2*(n+1)))`
-/

namespace A049246.P7383408396611499217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A049253 (2 * (n + 1))).toNat

end

end A049246.P7383408396611499217

/-! ## A049246.P4728195489604895017

`A002265(2*A049253(2*(n+1)))`
-/

namespace A049246.P4728195489604895017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A049253 (2 * (n + 1))).toNat

end

end A049246.P4728195489604895017

/-!
# A049247: Smallest nonnegative value taken on by 8x^2 - ny^2 for an infinite number of integer pairs (x, y).

The programs for A049247, there is no canonical definition to state claims against.
-/

/-! ## A049247.P18392130827481929569

`A049255(2*(n+1))/2`
-/

namespace A049247.P18392130827481929569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049255 (2 * (n + 1)) : ℚ) / 2

end

end A049247.P18392130827481929569

/-! ## A049247.P6201906977203379047

`dr(5*A049255(2*n+2))`
-/

namespace A049247.P6201906977203379047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (5 * A049255 (2 * n + 2))

end

end A049247.P6201906977203379047

/-! ## A049247.P12009691337562432000

`A004526(A049255(2*(n+1)))`
-/

namespace A049247.P12009691337562432000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049255 (2 * (n + 1))).toNat

end

end A049247.P12009691337562432000

/-! ## A049247.P10067193595951505416

`dr(A049255(Δ[A027693(n)])/2)`
-/

namespace A049247.P10067193595951505416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A049255 (f1 (n + 1) - f1 n).toNat : ℚ) / 2))

end

end A049247.P10067193595951505416

/-! ## A049247.P3253672039863486497

`dr(A022285(A049255(2*n+2)))`
-/

namespace A049247.P3253672039863486497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A022285 (A049255 (2 * n + 2)).toNat)

end

end A049247.P3253672039863486497

/-!
# A049248: Smallest nonnegative value taken on by 9x^2 - ny^2 for an infinite number of integer pairs (x, y).

The programs for A049248, there is no canonical definition to state claims against.
-/

/-! ## A049248.P7092053577613688199

`A049257(2*(n+1))/2`
-/

namespace A049248.P7092053577613688199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049257 (2 * (n + 1)) : ℚ) / 2

end

end A049248.P7092053577613688199

/-! ## A049248.P5790570171810372021

`dr(5*A049257(2*n+2))`
-/

namespace A049248.P5790570171810372021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (5 * A049257 (2 * n + 2))

end

end A049248.P5790570171810372021

/-! ## A049248.P10165749066907879407

`A004525(A049257(2*(n+1)))`
-/

namespace A049248.P10165749066907879407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A049257 (2 * (n + 1))).toNat

end

end A049248.P10165749066907879407

/-! ## A049248.P13047368376952843154

`floor(A049257(Δ[A002378(n)])/2)`
-/

namespace A049248.P13047368376952843154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049257 (f1 (n + 1) - f1 n).toNat : ℚ) / 2⌋

end

end A049248.P13047368376952843154

/-! ## A049248.P7264244436096753110

`A001222(sqrt(3)^A049257(2*(n+1)))`
-/

namespace A049248.P7264244436096753110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (3 : ℝ) ^ (A049257 (2 * (n + 1)) : ℤ))).toNat

end

end A049248.P7264244436096753110

/-!
# A049249: Smallest nonnegative value taken on by 10x^2 - ny^2 for an infinite number of integer pairs (x, y).

The programs for A049249, there is no canonical definition to state claims against.
-/

/-! ## A049249.P3755843266524437554

`A049259(2*(n+1))/2`
-/

namespace A049249.P3755843266524437554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049259 (2 * (n + 1)) : ℚ) / 2

end

end A049249.P3755843266524437554

/-! ## A049249.P1803443150854866042

`A025480(A049259(2*(n+1)))`
-/

namespace A049249.P1803443150854866042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A049259 (2 * (n + 1))).toNat

end

end A049249.P1803443150854866042

/-! ## A049249.P3854006303815627531

`A064680(A049259(2*n+2))`
-/

namespace A049249.P3854006303815627531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A049259 (2 * n + 2)).toNat

end

end A049249.P3854006303815627531

/-! ## A049249.P11080241382861207527

`A122921(A049259(2*(n+1))²)`
-/

namespace A049249.P11080241382861207527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A049259 (2 * (n + 1)) ^ 2).toNat

end

end A049249.P11080241382861207527

/-! ## A049249.P8825573806002057645

`gcd(A000038(n), A001057(A049259(2*(n+1))))`
-/

namespace A049249.P8825573806002057645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A001057 (A049259 (2 * (n + 1))).toNat)

end

end A049249.P8825573806002057645

/-!
# A049260: Smallest nonnegative value taken on by n*x^2 - y^2 for an infinite number of integer pairs (x, y).

The programs for A049260, there is no canonical definition to state claims against.
-/

/-! ## A049260.P14428814518355195463

`A049239(∑[n+1])%A171561(n+1)`
-/

namespace A049260.P14428814518355195463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049239 (∑ j ∈ Finset.range (n + 1), f1 j)) (A171561 (n + 1))

end

end A049260.P14428814518355195463

/-! ## A049260.P8487492351066598384

`A049239(∑[n+1])%A316520(A028310(n))`
-/

namespace A049260.P8487492351066598384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049239 (∑ j ∈ Finset.range (n + 1), f1 j)) (A316520 (A028310 n).toNat)

end

end A049260.P8487492351066598384

/-! ## A049260.P12697933697365270067

`A049239(∑[n+1])/A309873(A171561(n+1)+1)²`
-/

namespace A049260.P12697933697365270067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049239 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A309873 (A171561 (n + 1) + 1).toNat ^ 2 : ℚ)

end

end A049260.P12697933697365270067

/-! ## A049260.P9265243725176169806

`A049239(C(n+2, 2))%A175088(n+1)`
-/

namespace A049260.P9265243725176169806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049239 (Nat.choose (n + 2) 2)) (A175088 (n + 1))

end

end A049260.P9265243725176169806

/-! ## A049260.P14323088687832769270

`A049239(∑[n]+n+1)%A175088(n+1)`
-/

namespace A049260.P14323088687832769270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049239 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))) (A175088 (n + 1))

end

end A049260.P14323088687832769270

/-! ## A049260.P6219734418256002263

`A049239(∑[n+1])+floor((n/A086472(n+1))^(n+1)/ϕ)`
-/

namespace A049260.P6219734418256002263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (∑ j ∈ Finset.range (n + 1), f1 j) + ⌊(((n : ℚ) / (A086472 (n + 1) : ℚ)) ^ (n + 1) : ℝ) / Real.goldenRatio⌋

end

end A049260.P6219734418256002263

/-! ## A049260.P6372309378585239487

`A049239(∑[n+1])+A002448(A299277(n+1))`
-/

namespace A049260.P6372309378585239487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (∑ j ∈ Finset.range (n + 1), f1 j) + A002448 (A299277 (n + 1)).toNat

end

end A049260.P6372309378585239487

/-! ## A049260.P18400847428976538708

`A001221(A282174(n+2))*A049239(A000217(n+1))`
-/

namespace A049260.P18400847428976538708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A282174 (n + 2)).toNat * A049239 (A000217 (n + 1)).toNat

end

end A049260.P18400847428976538708

/-!
# A049261: Smallest nonnegative value taken on by nx^2 - 2y^2 for an infinite number of integer pairs (x, y).

The programs for A049261, there is no canonical definition to state claims against.
-/

/-! ## A049261.P9006408265141103349

`A049239(eq[A154096(n), A154103(n)])`
-/

namespace A049261.P9006408265141103349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A049261.P9006408265141103349

/-! ## A049261.P10470062108657340798

`A049263(2*(n+1))/2`
-/

namespace A049261.P10470062108657340798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049263 (2 * (n + 1)) : ℚ) / 2

end

end A049261.P10470062108657340798

/-! ## A049261.P7063189641246535272

`floor(A049263(n+2+n)/2)`
-/

namespace A049261.P7063189641246535272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049263 (n + 2 + n) : ℚ) / 2⌋

end

end A049261.P7063189641246535272

/-! ## A049261.P13429567689318809079

`A004525(A049263(2*(n+1)))`
-/

namespace A049261.P13429567689318809079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A049263 (2 * (n + 1))).toNat

end

end A049261.P13429567689318809079

/-! ## A049261.P2541176564156979319

`A064680(A049263(2*n+2))`
-/

namespace A049261.P2541176564156979319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A049263 (2 * n + 2)).toNat

end

end A049261.P2541176564156979319

/-!
# A049262: Smallest nonnegative value taken on by nx^2 - 3y^2 for an infinite number of integer pairs (x, y).

The programs for A049262, there is no canonical definition to state claims against.
-/

/-! ## A049262.P6762813967876798962

`A049239(∑[n+3]+1)`
-/

namespace A049262.P6762813967876798962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A049262.P6762813967876798962

/-! ## A049262.P7212674623610450357

`A049239(A052905(n)+3)%(n+2)`
-/

namespace A049262.P7212674623610450357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049239 (A052905 n + 3).toNat) (n + 2 : ℤ)

end

end A049262.P7212674623610450357

/-! ## A049262.P17465896666327203917

`A033999(2*n)*A049239(A052905(n)+3)`
-/

namespace A049262.P17465896666327203917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A049239 (A052905 n + 3).toNat

end

end A049262.P17465896666327203917

/-! ## A049262.P10891487157175959653

`A049239(A052905(n)+3)+A001489(n)+n`
-/

namespace A049262.P10891487157175959653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (A052905 n + 3).toNat + A001489 n + (n : ℤ)

end

end A049262.P10891487157175959653

/-! ## A049262.P287255320601909694

`A049239(A052905(n)+3)+char[A014793(n+1)]`
-/

namespace A049262.P287255320601909694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (A052905 n + 3).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A049262.P287255320601909694

/-! ## A049262.P3359752371054840050

`A049239(A052905(n)+3)+char[A375916(n+1)]`
-/

namespace A049262.P3359752371054840050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375916 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (A052905 n + 3).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A049262.P3359752371054840050

/-! ## A049262.P15518555829004839180

`A049283(2*n+3)+A049239(A052905(n)+3)`
-/

namespace A049262.P15518555829004839180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (2 * n + 3) + A049239 (A052905 n + 3).toNat

end

end A049262.P15518555829004839180

/-! ## A049262.P8532263440965012302

`A049239(A052905(n)+3)*A097031(2*n+1)`
-/

namespace A049262.P8532263440965012302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (A052905 n + 3).toNat * A097031 (2 * n + 1)

end

end A049262.P8532263440965012302

/-! ## A049262.P13473621013025104454

`A049239(A052905(n)+3)/A284620(2*(n+1))`
-/

namespace A049262.P13473621013025104454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049239 (A052905 n + 3).toNat : ℚ) / (A284620 (2 * (n + 1)) : ℚ)

end

end A049262.P13473621013025104454

/-! ## A049262.P128915992873323050

`A049239(A052905(n)+3)^A284620(6*n+2)`
-/

namespace A049262.P128915992873323050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049239 (A052905 n + 3).toNat : ℚ) ^ (A284620 (6 * n + 2) : ℤ)

end

end A049262.P128915992873323050

/-!
# A049263: Smallest nonnegative value taken on by n*x^2 - 4*y^2 for an infinite number of integer pairs (x, y).

The programs for A049263, there is no canonical definition to state claims against.
-/

/-! ## A049263.P1052099828572561631

`A049239(A056000(n)+7)%((10*A008482(n))²+2)`
-/

namespace A049263.P1052099828572561631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049239 (A056000 n + 7).toNat) ((10 * A008482 n) ^ 2 + 2)

end

end A049263.P1052099828572561631

/-! ## A049263.P9964049883072924132

`A049239(A167499(n+3)-8)%A316520(A028310(n))`
-/

namespace A049263.P9964049883072924132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049239 (A167499 (n + 3) - 8).toNat) (A316520 (A028310 n).toNat)

end

end A049263.P9964049883072924132

/-! ## A049263.P1744223906403502306

`A049239(∑[n+4]+3)%A175088(n+1)`
-/

namespace A049263.P1744223906403502306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049239 (∑ j ∈ Finset.range (n + 1), f1 j + 3)) (A175088 (n + 1))

end

end A049263.P1744223906403502306

/-! ## A049263.P961573347312001415

`A049239(A056000(n)+7)+A000122(A279773(3*n+1))`
-/

namespace A049263.P961573347312001415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (A056000 n + 7).toNat + A000122 (A279773 (3 * n + 1)).toNat

end

end A049263.P961573347312001415

/-! ## A049263.P9575342663891130184

`A049239(A056000(n)+7)%A342745(n+1)`
-/

namespace A049263.P9575342663891130184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049239 (A056000 n + 7).toNat) (A342745 (n + 1))

end

end A049263.P9575342663891130184

/-! ## A049263.P5021127562247044125

`A154271(A336328(n+1))+A049239(A056000(n)+7)`
-/

namespace A049263.P5021127562247044125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (A336328 (n + 1)).toNat + A049239 (A056000 n + 7).toNat

end

end A049263.P5021127562247044125

/-!
# A049264: Smallest nonnegative value taken on by n*x^2 - 5*y^2 for an infinite number of integer pairs (x, y).

The programs for A049264, there is no canonical definition to state claims against.
-/

/-! ## A049264.P17662702120761228483

`A049239(A046691(n+3))+A000007(A001844(n))`
-/

namespace A049264.P17662702120761228483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (A046691 (n + 3)).toNat + A000007 (A001844 n).toNat

end

end A049264.P17662702120761228483

/-! ## A049264.P6489570350367145961

`A049239(A046691(n+3))%A016969(A319449(n+1))`
-/

namespace A049264.P6489570350367145961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049239 (A046691 (n + 3)).toNat) (A016969 (A319449 (n + 1)).toNat)

end

end A049264.P6489570350367145961

/-! ## A049264.P11863150535745634778

`A057428(A007318(2*n+1))+A049239(A046691(n+3))+1`
-/

namespace A049264.P11863150535745634778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A007318 (2 * n + 1)).toNat + (A049239 (A046691 (n + 3)).toNat + 1)

end

end A049264.P11863150535745634778

/-! ## A049264.P15878088556225534810

`A057428(A009883(n))+A049239(A046691(n+3))+1`
-/

namespace A049264.P15878088556225534810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A009883 n).toNat + (A049239 (A046691 (n + 3)).toNat + 1)

end

end A049264.P15878088556225534810

/-! ## A049264.P8530477671583464323

`A057428(A139663(n+1))+A049239(A046691(n+3))+1`
-/

namespace A049264.P8530477671583464323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A139663 (n + 1)).toNat + (A049239 (A046691 (n + 3)).toNat + 1)

end

end A049264.P8530477671583464323

/-! ## A049264.P1015172174091972692

`A151878(A331995(n+1))+A049239(A046691(n+3))`
-/

namespace A049264.P1015172174091972692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A331995 (n + 1)).toNat + A049239 (A046691 (n + 3)).toNat

end

end A049264.P1015172174091972692

/-! ## A049264.P8897925508014383574

`gcd(3, A173138(n+1))*A049239(A046691(n+3))`
-/

namespace A049264.P8897925508014383574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A173138 (n + 1)) : ℤ) * A049239 (A046691 (n + 3)).toNat

end

end A049264.P8897925508014383574

/-!
# A049265: Smallest nonnegative value taken on by n*x^2 - 6*y^2 for an infinite number of integer pairs (x, y).

The programs for A049265, there is no canonical definition to state claims against.
-/

/-! ## A049265.P1127690083882956473

`A049239(A052905(n+3))`
-/

namespace A049265.P1127690083882956473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (A052905 (n + 3)).toNat

end

end A049265.P1127690083882956473

/-! ## A049265.P1771139185624147033

`A049239(A055999(n+3)+1)`
-/

namespace A049265.P1771139185624147033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (A055999 (n + 3) + 1).toNat

end

end A049265.P1771139185624147033

/-! ## A049265.P3078587293552433528

`A049239(A046691(n+4)-1)`
-/

namespace A049265.P3078587293552433528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (A046691 (n + 4) - 1).toNat

end

end A049265.P3078587293552433528

/-! ## A049265.P11788770485035880696

`A049239(A056000(n+2)+5)`
-/

namespace A049265.P11788770485035880696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (A056000 (n + 2) + 5).toNat

end

end A049265.P11788770485035880696

/-! ## A049265.P588978420840989902

`A049239(A000096(n+5)-4)`
-/

namespace A049265.P588978420840989902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (A000096 (n + 5) - 4).toNat

end

end A049265.P588978420840989902

/-! ## A049265.P9685307110977505063

`A049239(A000124(n+6)-6)`
-/

namespace A049265.P9685307110977505063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (A000124 (n + 6) - 6).toNat

end

end A049265.P9685307110977505063

/-! ## A049265.P9531464355881352356

`A049239(Δ[A023551(n+1)]+1)`
-/

namespace A049265.P9531464355881352356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (f1 (n + 1) - f1 n + 1).toNat

end

end A049265.P9531464355881352356

/-! ## A049265.P13842810307239838402

`A049239(Δ[A023545(n+2)]-1)`
-/

namespace A049265.P13842810307239838402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (f1 (n + 1) - f1 n - 1).toNat

end

end A049265.P13842810307239838402

/-! ## A049265.P9200647353300881552

`A049239(A000217(n+5)+n+1)`
-/

namespace A049265.P9200647353300881552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A049265.P9200647353300881552

/-!
# A049266: Smallest nonnegative value taken on by nx^2 - 7y^2 for an infinite number of integer pairs (x, y).

The programs for A049266, there is no canonical definition to state claims against.
-/

/-! ## A049266.P7711805337693686938

`A049273(2*(n+1))/2`
-/

namespace A049266.P7711805337693686938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049273 (2 * (n + 1)) : ℚ) / 2

end

end A049266.P7711805337693686938

/-! ## A049266.P4139508259996597702

`floor(A049273(n+2+n)/2)`
-/

namespace A049266.P4139508259996597702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049273 (n + 2 + n) : ℚ) / 2⌋

end

end A049266.P4139508259996597702

/-! ## A049266.P11901442367244520259

`A001281(A049273(2*(n+1)))`
-/

namespace A049266.P11901442367244520259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A049273 (2 * (n + 1))).toNat

end

end A049266.P11901442367244520259

/-! ## A049266.P11407547837817004889

`A004526(A049273(2*n+2))`
-/

namespace A049266.P11407547837817004889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049273 (2 * n + 2)).toNat

end

end A049266.P11407547837817004889

/-! ## A049266.P1087447186576423190

`A004525(lcm(2, A049273(2*(n+1))))`
-/

namespace A049266.P1087447186576423190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A049273 (2 * (n + 1))))

end

end A049266.P1087447186576423190

/-!
# A049267: Smallest nonnegative value taken on by nx^2 - 8y^2 for an infinite number of integer pairs (x, y).

The programs for A049267, there is no canonical definition to state claims against.
-/

/-! ## A049267.P2667467301336704961

`A049275(2*(n+1))/2`
-/

namespace A049267.P2667467301336704961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049275 (2 * (n + 1)) : ℚ) / 2

end

end A049267.P2667467301336704961

/-! ## A049267.P13803018517594815744

`floor(A049275(n+2+n)/2)`
-/

namespace A049267.P13803018517594815744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049275 (n + 2 + n) : ℚ) / 2⌋

end

end A049267.P13803018517594815744

/-! ## A049267.P11609736787728629559

`A001281(A049275(2*(n+1)))`
-/

namespace A049267.P11609736787728629559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A049275 (2 * (n + 1))).toNat

end

end A049267.P11609736787728629559

/-! ## A049267.P9750731324380169430

`(A049275(Δ[A002378(n)])/2)%A000051(n)`
-/

namespace A049267.P9750731324380169430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A049275 (f1 (n + 1) - f1 n).toNat : ℚ) / 2)) (A000051 n)

end

end A049267.P9750731324380169430

/-!
# A049268: Smallest nonnegative value taken on by nx^2 - 9y^2 for an infinite number of integer pairs (x, y).

The programs for A049268, there is no canonical definition to state claims against.
-/

/-! ## A049268.P5062733808358371801

`A049277(2*(n+1))/2`
-/

namespace A049268.P5062733808358371801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049277 (2 * (n + 1)) : ℚ) / 2

end

end A049268.P5062733808358371801

/-! ## A049268.P13000026890400532175

`floor(A049277(n+2+n)/2)`
-/

namespace A049268.P13000026890400532175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049277 (n + 2 + n) : ℚ) / 2⌋

end

end A049268.P13000026890400532175

/-! ## A049268.P16489796856913192465

`A014682(A049277(2*(n+1)))`
-/

namespace A049268.P16489796856913192465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A049277 (2 * (n + 1))).toNat

end

end A049268.P16489796856913192465

/-! ## A049268.P10025337584157733924

`2^A349340(A001359(n+1))*A049277(2*(n+1))`
-/

namespace A049268.P10025337584157733924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A349340 (A001359 (n + 1)).toNat : ℤ) * (A049277 (2 * (n + 1)) : ℚ)

end

end A049268.P10025337584157733924

/-! ## A049268.P5862520788700449093

`gcd(A000217(A049277(2*n+2)), A049277(2*n+2))`
-/

namespace A049268.P5862520788700449093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A049277 (2 * n + 2)).toNat) (A049277 (2 * n + 2))

end

end A049268.P5862520788700449093

/-!
# A049269: Smallest nonnegative value taken on by nx^2 - 10y^2 for an infinite number of integer pairs (x, y).

The programs for A049269, there is no canonical definition to state claims against.
-/

/-! ## A049269.P3639608946325275120

`A049279(2*(n+1))/2`
-/

namespace A049269.P3639608946325275120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049279 (2 * (n + 1)) : ℚ) / 2

end

end A049269.P3639608946325275120

/-! ## A049269.P8178222557582321140

`floor(A049279(n+2+n)/2)`
-/

namespace A049269.P8178222557582321140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049279 (n + 2 + n) : ℚ) / 2⌋

end

end A049269.P8178222557582321140

/-! ## A049269.P15064477966300284595

`A001281(A049279(2*(n+1)))`
-/

namespace A049269.P15064477966300284595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A049279 (2 * (n + 1))).toNat

end

end A049269.P15064477966300284595

/-! ## A049269.P18018345132221189040

`(A049279(Δ[A002378(n)])/2)%A000040(n+1)`
-/

namespace A049269.P18018345132221189040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A049279 (f1 (n + 1) - f1 n).toNat : ℚ) / 2)) (A000040 (n + 1))

end

end A049269.P18018345132221189040

/-!
# A049271: Smallest nonnegative value taken on by nx^2 - 12y^2 for an infinite number of integer pairs (x, y).

The programs for A049271, there is no canonical definition to state claims against.
-/

/-! ## A049271.P4109068735068939279

`A049239(eq[11, A193592(n)])`
-/

namespace A049271.P4109068735068939279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049271.P4109068735068939279

/-!
# A049273: Smallest nonnegative value taken on by nx^2 - 14y^2 for an infinite number of integer pairs (x, y).

The programs for A049273, there is no canonical definition to state claims against.
-/

/-! ## A049273.P8926018292279433529

`A052410(n+1)%A304768(A013929(3*n+1)²)`
-/

namespace A049273.P8926018292279433529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052410 (n + 1)) (A304768 (A013929 (3 * n + 1) ^ 2).toNat)

end

end A049273.P8926018292279433529

/-! ## A049273.P15930612998114751165

`A304776(n+1)%A304768(A013929(3*n+1)²)`
-/

namespace A049273.P15930612998114751165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304776 (n + 1)) (A304768 (A013929 (3 * n + 1) ^ 2).toNat)

end

end A049273.P15930612998114751165

/-!
# A049275: Smallest nonnegative value taken on by nx^2 - 16y^2 for an infinite number of integer pairs (x, y).

The programs for A049275, there is no canonical definition to state claims against.
-/

/-! ## A049275.P6825975466432693901

`and(n+1, A175918(A225605(n+1)))`
-/

namespace A049275.P6825975466432693901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A175918 (A225605 (n + 1)).toNat)

end

end A049275.P6825975466432693901

/-!
# A049281: Numerators of coefficients in power series for -log(1+x)*log(1-x).

The programs for A049281, there is no canonical definition to state claims against.
-/

/-! ## A049281.P16269286461703793119

`A058313(Δ[n²])`
-/

namespace A049281.P16269286461703793119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058313 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A049281.P16269286461703793119

/-! ## A049281.P8555120141414042055

`A075830(2*(n+1))`
-/

namespace A049281.P8555120141414042055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075830 (2 * (n + 1))

end

end A049281.P8555120141414042055

/-! ## A049281.P13888531992506049777

`or(1, A058313(2*n+1))`
-/

namespace A049281.P13888531992506049777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A058313 (2 * n + 1))

end

end A049281.P13888531992506049777

/-! ## A049281.P10606932159571793265

`char[A004447(n)]*A058313(2*n+1)`
-/

namespace A049281.P10606932159571793265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004447 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A058313 (2 * n + 1)

end

end A049281.P10606932159571793265

/-! ## A049281.P3888418707156062588

`A058313(2*n+1)+A000007(n+1)`
-/

namespace A049281.P3888418707156062588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058313 (2 * n + 1) + A000007 (n + 1)

end

end A049281.P3888418707156062588

/-! ## A049281.P16233049718281297309

`A058313(2*n+1)+A000038(n+1)`
-/

namespace A049281.P16233049718281297309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058313 (2 * n + 1) + A000038 (n + 1)

end

end A049281.P16233049718281297309

/-! ## A049281.P17152257024706726801

`A058313(2*n+1)+A000035(2*n)`
-/

namespace A049281.P17152257024706726801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058313 (2 * n + 1) + A000035 (2 * n)

end

end A049281.P17152257024706726801

/-! ## A049281.P2872052905710695446

`A058312(2*n+1)-A075829(2*(n+1))`
-/

namespace A049281.P2872052905710695446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (2 * n + 1) - A075829 (2 * (n + 1))

end

end A049281.P2872052905710695446

/-! ## A049281.P3482403038354293007

`A058312(2*n+1)-A119248(2*n+1)`
-/

namespace A049281.P3482403038354293007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (2 * n + 1) - A119248 (2 * n + 1)

end

end A049281.P3482403038354293007

/-! ## A049281.P6508381615839273840

`gcd(2, A025530(n+2))*A058313(2*n+1)`
-/

namespace A049281.P6508381615839273840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A025530 (n + 2)) : ℤ) * A058313 (2 * n + 1)

end

end A049281.P6508381615839273840

/-! ## A049281.P308398650777345232

`A058313(2*n+1)+A023443(n+1)-n`
-/

namespace A049281.P308398650777345232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058313 (2 * n + 1) + (A023443 (n + 1) - (n : ℤ))

end

end A049281.P308398650777345232

/-! ## A049281.P17307031974874140110

`(A028310(n+1)-n)*A058313(2*n+1)`
-/

namespace A049281.P17307031974874140110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) - (n : ℤ)) * A058313 (2 * n + 1)

end

end A049281.P17307031974874140110

/-! ## A049281.P637197327133681853

`A006519(2*n+1)+A058313(2*n+1)-1`
-/

namespace A049281.P637197327133681853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) + (A058313 (2 * n + 1) - 1)

end

end A049281.P637197327133681853

/-! ## A049281.P4716773577191859861

`A007318(A000217(n))*A058313(2*n+1)`
-/

namespace A049281.P4716773577191859861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A058313 (2 * n + 1)

end

end A049281.P4716773577191859861

/-! ## A049281.P16238545627313739128

`lcm(A000035(2*n)-1, A058313(A005408(n)))`
-/

namespace A049281.P16238545627313739128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000035 (2 * n) - 1) (A058313 (A005408 n).toNat)

end

end A049281.P16238545627313739128

/-! ## A049281.P17069717270868623070

`A058313(2*n+1)*A269626(A269626(n+1))`
-/

namespace A049281.P17069717270868623070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058313 (2 * n + 1) * A269626 (A269626 (n + 1)).toNat

end

end A049281.P17069717270868623070

/-! ## A049281.P5549559446061549479

`A058313(2*n+1)*A119788(A119788(n+2))`
-/

namespace A049281.P5549559446061549479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058313 (2 * n + 1) * A119788 (A119788 (n + 2)).toNat

end

end A049281.P5549559446061549479

/-! ## A049281.P7190166388427972881

`(A004447(2*n+1)-A004447(2*n))*A058313(2*n+1)`
-/

namespace A049281.P7190166388427972881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004447 (2 * n + 1) - A004447 (2 * n)) * A058313 (2 * n + 1)

end

end A049281.P7190166388427972881

/-! ## A049281.P1642918893893169796

`gcd(A335024(2*(n+1)), A335024(2*n+1))*A058313(2*n+1)`
-/

namespace A049281.P1642918893893169796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A335024 (2 * (n + 1))) (A335024 (2 * n + 1)) : ℤ) * A058313 (2 * n + 1)

end

end A049281.P1642918893893169796

/-! ## A049281.P11342028986847977686

`gcd(A058313(2*n+1)*A335024(n+2), A058313(2*n+1))`
-/

namespace A049281.P11342028986847977686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058313 (2 * n + 1) * A335024 (n + 2)) (A058313 (2 * n + 1))

end

end A049281.P11342028986847977686

/-!
# A049282: Primes p such that both p-2 and p+2 are squarefree.

The programs for A049282, the canonical program `A049282.P1531050254389215558` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049282 has offset 1).

The definition of A049282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049282.P1531050254389215558

`∩[A049231(n+1), A049233(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A049282

/-- `∩[A049231(n+1), A049233(n+1)]` -/
def P1531050254389215558.Spec : Prop :=
  ∀ n, (P1531050254389215558.a n : ℤ) = A049282 (n + 1)

theorem P1531050254389215558.correct : P1531050254389215558.Spec := by
  intro n
  simp only [A049282, Nat.add_sub_cancel]

end A049282

/-! ## A049282.P7547794631981648450

`record[A006530(A007947(n+1)+A007947(n+5))]`
-/

namespace A049282.P7547794631981648450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007947 (n + 1) + A007947 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049282.P7547794631981648450

namespace A049282

/-- `record[A006530(A007947(n+1)+A007947(n+5))]` -/
def P7547794631981648450.Spec : Prop :=
  ∀ n, P7547794631981648450.a n = A049282 (n + 1)

end A049282

/-! ## A049282.P7030740817209546460

`p?[Δ[A272799(n+1)²]]`
-/

namespace A049282.P7030740817209546460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272799 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049282.P7030740817209546460

namespace A049282

/-- `p?[Δ[A272799(n+1)²]]` -/
def P7030740817209546460.Spec : Prop :=
  ∀ n, P7030740817209546460.a n = A049282 (n + 1)

end A049282

/-! ## A049282.P2735445881078939408

`∩[A049231(n+1), A069977(n+1)]`
-/

namespace A049282.P2735445881078939408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049282.P2735445881078939408

namespace A049282

/-- `∩[A049231(n+1), A069977(n+1)]` -/
def P2735445881078939408.Spec : Prop :=
  ∀ n, (P2735445881078939408.a n : ℤ) = A049282 (n + 1)

end A049282

/-! ## A049282.P6290574821069753512

`p?[A272799(n+2)²-A272799(n+1)²]`
-/

namespace A049282.P6290574821069753512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272799 (n + 2) ^ 2 - A272799 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049282.P6290574821069753512

namespace A049282

/-- `p?[A272799(n+2)²-A272799(n+1)²]` -/
def P6290574821069753512.Spec : Prop :=
  ∀ n, P6290574821069753512.a n = A049282 (n + 1)

end A049282

/-! ## A049282.P1939558605035459304

`p?[A323309(A323309(n+1)+4)-2]`
-/

namespace A049282.P1939558605035459304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323309 (A323309 (n + 1) + 4).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049282.P1939558605035459304

namespace A049282

/-- `p?[A323309(A323309(n+1)+4)-2]` -/
def P1939558605035459304.Spec : Prop :=
  ∀ n, P1939558605035459304.a n = A049282 (n + 1)

end A049282

/-! ## A049282.P10645734622267075448

`A309292(n+1)-2`
-/

namespace A049282.P10645734622267075448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309292 (n + 1) - 2

end

end A049282.P10645734622267075448

namespace A049282

/-- `A309292(n+1)-2` -/
def P10645734622267075448.Spec : Prop :=
  ∀ n, P10645734622267075448.a n = A049282 (n + 1)

end A049282

/-! ## A049282.P2680374559157219881

`A023444(A309292(n+1))`
-/

namespace A049282.P2680374559157219881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A309292 (n + 1)).toNat

end

end A049282.P2680374559157219881

namespace A049282

/-- `A023444(A309292(n+1))` -/
def P2680374559157219881.Spec : Prop :=
  ∀ n, P2680374559157219881.a n = A049282 (n + 1)

end A049282

/-!
# A049283: a(n) is the smallest k such that phi(k) = n, where phi is Euler's totient function, or a(n) = 0 if no such k exists.

The programs for A049283, there is no canonical definition to state claims against.
-/

/-! ## A049283.P13933039223348903320

`A002181(A264810(n+1))*A264739(n+1)`
-/

namespace A049283.P13933039223348903320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002181 (A264810 (n + 1)).toNat * A264739 (n + 1)

end

end A049283.P13933039223348903320

/-! ## A049283.P2008219773117012533

`lcm(A002181(A264810(n+1)), A323169(n+1))`
-/

namespace A049283.P2008219773117012533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002181 (A264810 (n + 1)).toNat) (A323169 (n + 1))

end

end A049283.P2008219773117012533

/-! ## A049283.P12298988223261522676

`A061026(A029578(2*(n+1)))*A264739(n+1)`
-/

namespace A049283.P12298988223261522676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (A029578 (2 * (n + 1))).toNat * A264739 (n + 1)

end

end A049283.P12298988223261522676

/-! ## A049283.P6794183565594247783

`A015126(A319048(n+1))*A264739(n+1)`
-/

namespace A049283.P6794183565594247783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015126 (A319048 (n + 1)).toNat * A264739 (n + 1)

end

end A049283.P6794183565594247783

/-! ## A049283.P10122645944807452386

`A061026(n+1)%A004011(A057635(n+1))`
-/

namespace A049283.P10122645944807452386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061026 (n + 1)) (A004011 (A057635 (n + 1)).toNat)

end

end A049283.P10122645944807452386

/-!
# A049284: Restricted partitions.

The programs for A049284, there is no canonical definition to state claims against.
-/

/-! ## A049284.P13145065013669702111

`A049286(A145018(n+1))%A000213(n)`
-/

namespace A049284.P13145065013669702111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049286 (A145018 (n + 1)).toNat) (A000213 n)

end

end A049284.P13145065013669702111

/-! ## A049284.P4459629055318940805

`A049286(A027693(n)/2)%A000213(n)`
-/

namespace A049284.P4459629055318940805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049286 (SequenceMachineLib.roundAway ((A027693 n : ℚ) / 2)).toNat) (A000213 n)

end

end A049284.P4459629055318940805

/-! ## A049284.P6393737904383659213

`(A049286(A145018(n+1))*A057427(n))%A248762(n+1)`
-/

namespace A049284.P6393737904383659213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049286 (A145018 (n + 1)).toNat * A057427 n) (A248762 (n + 1))

end

end A049284.P6393737904383659213

/-! ## A049284.P13359320874559793511

`round(A341712(2*(n+2))/A341688(3*n+5))`
-/

namespace A049284.P13359320874559793511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A341712 (2 * (n + 2)) : ℚ) / (A341688 (3 * n + 5) : ℚ))

end

end A049284.P13359320874559793511

/-! ## A049284.P5053134573632446400

`A259361(floor(sqrt(n!)))`
-/

namespace A049284.P5053134573632446400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (Nat.sqrt (Nat.factorial n))

end

end A049284.P5053134573632446400

/-!
# A049285: Restricted partitions.

The programs for A049285, there is no canonical definition to state claims against.
-/

/-! ## A049285.P10411906091871635125

`∑{e}[3^n, A049284(#)]`
-/

namespace A049285.P10411906091871635125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A049284 (Nat.factorization (f1 n) p)

end

end A049285.P10411906091871635125

/-! ## A049285.P17716978430369676512

`A191291(A268172(n)+1)`
-/

namespace A049285.P17716978430369676512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191291 (A268172 n + 1).toNat

end

end A049285.P17716978430369676512

/-! ## A049285.P6813325758771888826

`A259361(floor(sqrt(A104150(n))))`
-/

namespace A049285.P6813325758771888826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (Int.sqrt (A104150 n)).toNat

end

end A049285.P6813325758771888826

/-! ## A049285.P9568149398518269571

`A259361(floor(sqrt(A185387(n))))`
-/

namespace A049285.P9568149398518269571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (Int.sqrt (A185387 n)).toNat

end

end A049285.P9568149398518269571

/-! ## A049285.P13997359139929901818

`A000196(floor(A000108(n)/A001950(n+1)))`
-/

namespace A049285.P13997359139929901818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌊(A000108 n : ℚ) / (A001950 (n + 1) : ℚ)⌋.toNat

end

end A049285.P13997359139929901818

/-!
# A049286: Triangle of partitions v(d,c) defined in A002572.

The programs for A049286, there is no canonical definition to state claims against.
-/

/-! ## A049286.P15308439941476638511

`A047913(∑[char[∑[n]]]²-n)`
-/

namespace A049286.P15308439941476638511
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047913 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A049286.P15308439941476638511

/-! ## A049286.P8956570453548980768

`gcd(A000038(n), A047913(A038722(n+1)))`
-/

namespace A049286.P8956570453548980768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A047913 (A038722 (n + 1)).toNat)

end

end A049286.P8956570453548980768

/-! ## A049286.P17463228926396110064

`lcm(A033999(n), A047913(A038722(n+1)))`
-/

namespace A049286.P17463228926396110064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A047913 (A038722 (n + 1)).toNat)

end

end A049286.P17463228926396110064

/-! ## A049286.P13832512813629612741

`or(A000007(n), A047913(A038722(n+1)))`
-/

namespace A049286.P13832512813629612741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A047913 (A038722 (n + 1)).toNat)

end

end A049286.P13832512813629612741

/-! ## A049286.P13952859401146383678

`A047913(A038722(n+1))^Δ[A002262(n)]`
-/

namespace A049286.P13952859401146383678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047913 (A038722 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A049286.P13952859401146383678

/-! ## A049286.P7313705132431308827

`A047913(A038722(n+1))+A000007(n+1)`
-/

namespace A049286.P7313705132431308827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047913 (A038722 (n + 1)).toNat + A000007 (n + 1)

end

end A049286.P7313705132431308827

/-! ## A049286.P15826289710690538726

`A000108(C(2, n+2))*A047913(A038722(n+1))`
-/

namespace A049286.P15826289710690538726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A047913 (A038722 (n + 1)).toNat

end

end A049286.P15826289710690538726

/-! ## A049286.P15845508224879042094

`2*n+A047913(A038722(n+1))-A005843(n)`
-/

namespace A049286.P15845508224879042094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A047913 (A038722 (n + 1)).toNat - A005843 n)

end

end A049286.P15845508224879042094

/-! ## A049286.P18079785174880931191

`A001222(A020483(n))*A047913(A038722(n+1))`
-/

namespace A049286.P18079785174880931191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020483 n).toNat * A047913 (A038722 (n + 1)).toNat

end

end A049286.P18079785174880931191

/-! ## A049286.P13936619873343535836

`A000034(2*n)*A047913(A038722(n+1))`
-/

namespace A049286.P13936619873343535836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A047913 (A038722 (n + 1)).toNat

end

end A049286.P13936619873343535836

/-! ## A049286.P10121174497314329654

`A047913(A038722(n+1))*A051953(A000040(n+1))`
-/

namespace A049286.P10121174497314329654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047913 (A038722 (n + 1)).toNat * A051953 (A000040 (n + 1)).toNat

end

end A049286.P10121174497314329654

/-! ## A049286.P15699326229019998950

`A047913(A038722(n+1))^A112691(2*n)`
-/

namespace A049286.P15699326229019998950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047913 (A038722 (n + 1)).toNat : ℚ) ^ (A112691 (2 * n) : ℤ)

end

end A049286.P15699326229019998950

/-!
# A049287: Number of nonisomorphic circulant graphs, i.e., undirected Cayley graphs for the cyclic group of order n.

The programs for A049287, there is no canonical definition to state claims against.
-/

/-! ## A049287.P745034778338713990

`∑{d}[n+1, A075545(#)]`
-/

namespace A049287.P745034778338713990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A075545 d

end

end A049287.P745034778338713990

/-! ## A049287.P6343842269094396699

`A006799(n+1)-A389815(n+1)`
-/

namespace A049287.P6343842269094396699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006799 (n + 1) - A389815 (n + 1)

end

end A049287.P6343842269094396699

/-! ## A049287.P17471120033160501684

`A285620(n+1)-A014083(A281319(n+1))`
-/

namespace A049287.P17471120033160501684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285620 (n + 1) - A014083 (A281319 (n + 1)).toNat

end

end A049287.P17471120033160501684

/-! ## A049287.P11031544693546684925

`A285620(n+1)-A184955(A026741(n))`
-/

namespace A049287.P11031544693546684925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285620 (n + 1) - A184955 (A026741 n).toNat

end

end A049287.P11031544693546684925

/-! ## A049287.P16240702634162259064

`A285620(n+1)-A184955(A008406(2*n+1))`
-/

namespace A049287.P16240702634162259064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285620 (n + 1) - A184955 (A008406 (2 * n + 1)).toNat

end

end A049287.P16240702634162259064

/-!
# A049291: Number of subgroups of index n in free group of rank 4.

The programs for A049291, there is no canonical definition to state claims against.
-/

/-! ## A049291.P9668977091859788131

`A049290(A141214(n+1))`
-/

namespace A049291.P9668977091859788131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049290 (A141214 (n + 1)).toNat

end

end A049291.P9668977091859788131

/-! ## A049291.P18153201713041310050

`A049290(A052905(n+1)+2)`
-/

namespace A049291.P18153201713041310050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049290 (A052905 (n + 1) + 2).toNat

end

end A049291.P18153201713041310050

/-! ## A049291.P3618295411659094418

`A049290(eq[3, A134546(n+1)])`
-/

namespace A049291.P3618295411659094418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049291.P3618295411659094418

/-! ## A049291.P11084218013081522152

`A049290(eq[4, A057728(n+1)])`
-/

namespace A049291.P11084218013081522152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049291.P11084218013081522152

/-! ## A049291.P1781774756143333743

`A049290(A167614(n+1)+A005408(n))`
-/

namespace A049291.P1781774756143333743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049290 (A167614 (n + 1) + A005408 n).toNat

end

end A049291.P1781774756143333743

/-!
# A049293: Number of subgroups of index 3 in fundamental group of a closed surface of characteristic -n.

The programs for A049293, there is no canonical definition to state claims against.
-/

/-! ## A049293.P1460655263606942391

`6^(n-1)+3^(n-1)-3*2^(n-1)+1`
-/

namespace A049293.P1460655263606942391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1

end

end A049293.P1460655263606942391

/-! ## A049293.P13602818904245833544

`abs(A126646(n)-A246985(n))`
-/

namespace A049293.P13602818904245833544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126646 n - A246985 n|

end

end A049293.P13602818904245833544

/-!
# A049294: Number of subgroups of index 3 in free group of rank n+1.

The programs for A049294, the canonical program `A049294.P180278700101192581` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049294 has offset 0).

The definition of A049294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049294.P180278700101192581

`3*6^n-3*2^n+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049294

/-- `3*6^n-3*2^n+1` -/
def P180278700101192581.Spec : Prop :=
  ∀ n, P180278700101192581.a n = A049294 n

theorem P180278700101192581.correct : P180278700101192581.Spec := by
  intro n
  simp only [A049294]

end A049294

/-! ## A049294.P17182102158158818387

`∑[ogf((1+4x)/(1-8x+12x^2))]`
-/

namespace A049294.P17182102158158818387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -8, 12] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049294.P17182102158158818387

namespace A049294

/-- `∑[ogf((1+4x)/(1-8x+12x^2))]` -/
def P17182102158158818387.Spec : Prop :=
  ∀ n, P17182102158158818387.a n = A049294 n

end A049294

/-! ## A049294.P12338167851984901953

`∑[∑[a(n-1)/sqrt(1/9)]/2^-n]` with `a(0)=1, a(1)=5`
-/

namespace A049294.P12338167851984901953
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [1, 5] fun n f2 =>
  f2 (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) / ((2 : ℚ) ^ (-(n : ℤ) : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049294.P12338167851984901953

namespace A049294

/-- `∑[∑[a(n-1)/sqrt(1/9)]/2^-n]` -/
def P12338167851984901953.Spec : Prop :=
  ∀ n, P12338167851984901953.a n = (A049294 n : ℝ)

end A049294

/-! ## A049294.P12194399568418712361

`∑[2^n*A134931(n)]`
-/

namespace A049294.P12194399568418712361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A134931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049294.P12194399568418712361

namespace A049294

/-- `∑[2^n*A134931(n)]` -/
def P12194399568418712361.Spec : Prop :=
  ∀ n, P12194399568418712361.a n = A049294 n

end A049294

/-! ## A049294.P12103897711259230344

`(A066406(n+1)+2)/2`
-/

namespace A049294.P12103897711259230344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066406 (n + 1) + 2 : ℚ) / 2

end

end A049294.P12103897711259230344

namespace A049294

/-- `(A066406(n+1)+2)/2` -/
def P12103897711259230344.Spec : Prop :=
  ∀ n, P12103897711259230344.a n = (A049294 n : ℚ)

end A049294

/-! ## A049294.P15510611551029788256

`∑[A248216(n)+A016129(n)]`
-/

namespace A049294.P15510611551029788256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248216 n + A016129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049294.P15510611551029788256

namespace A049294

/-- `∑[A248216(n)+A016129(n)]` -/
def P15510611551029788256.Spec : Prop :=
  ∀ n, P15510611551029788256.a n = A049294 n

end A049294

/-!
# A049295: Number of subgroups of index 4 in free group of rank n+1.

The programs for A049295, the canonical program `A049295.P5327415093629748725` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049295 has offset 0).

The definition of A049295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049295.P5327415093629748725

`4*24^n-4*6^n-2*4^n+4*2^n-1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049295

/-- `4*24^n-4*6^n-2*4^n+4*2^n-1` -/
def P5327415093629748725.Spec : Prop :=
  ∀ n, P5327415093629748725.a n = A049295 n

theorem P5327415093629748725.correct : P5327415093629748725.Spec := by
  intro n
  simp only [A049295]

end A049295

/-! ## A049295.P10300241075625905212

`A049290(A141214(n)+7)`
-/

namespace A049295.P10300241075625905212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049290 (A141214 n + 7).toNat

end

end A049295.P10300241075625905212

namespace A049295

/-- `A049290(A141214(n)+7)` -/
def P10300241075625905212.Spec : Prop :=
  ∀ n, P10300241075625905212.a n = A049295 n

end A049295

/-! ## A049295.P18018084047274465330

`A049290(A052905(n)+9)`
-/

namespace A049295.P18018084047274465330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049290 (A052905 n + 9).toNat

end

end A049295.P18018084047274465330

namespace A049295

/-- `A049290(A052905(n)+9)` -/
def P18018084047274465330.Spec : Prop :=
  ∀ n, P18018084047274465330.a n = A049295 n

end A049295

/-! ## A049295.P2384758343418699697

`A049290(A055999(n)+10)`
-/

namespace A049295.P2384758343418699697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049290 (A055999 n + 10).toNat

end

end A049295.P2384758343418699697

namespace A049295

/-- `A049290(A055999(n)+10)` -/
def P2384758343418699697.Spec : Prop :=
  ∀ n, P2384758343418699697.a n = A049295 n

end A049295

/-! ## A049295.P4751712212530986487

`A049290(A167614(n+2)+1)`
-/

namespace A049295.P4751712212530986487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049290 (A167614 (n + 2) + 1).toNat

end

end A049295.P4751712212530986487

namespace A049295

/-- `A049290(A167614(n+2)+1)` -/
def P4751712212530986487.Spec : Prop :=
  ∀ n, P4751712212530986487.a n = A049295 n

end A049295

/-!
# A049296: First differences of A008364. Also first differences of reduced residue system (RRS) for 4th primorial number, A002110(4)=210.

The programs for A049296, the canonical program `A049296.P11557902124767277285` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049296 has offset 1).

The definition of A049296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049296.P11557902124767277285

`Δ[A008364(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049296

/-- `Δ[A008364(n+1)]` -/
def P11557902124767277285.Spec : Prop :=
  ∀ n, P11557902124767277285.a n = A049296 (n + 1)

theorem P11557902124767277285.correct : P11557902124767277285.Spec := by
  intro n
  simp only [A049296, Nat.add_sub_cancel]

end A049296

/-!
# A049297: Number of nonisomorphic circulant digraphs (i.e., Cayley digraphs for the cyclic group) of order n.

The programs for A049297, there is no canonical definition to state claims against.
-/

/-! ## A049297.P3480584015984952263

`A056391(n+1)-A216282(A000041(3*n+4))`
-/

namespace A049297.P3480584015984952263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056391 (n + 1) - A216282 (A000041 (3 * n + 4)).toNat

end

end A049297.P3480584015984952263

/-! ## A049297.P18010507066821539315

`A056391(n+1)-A096693(A001006(n))`
-/

namespace A049297.P18010507066821539315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056391 (n + 1) - A096693 (A001006 n).toNat

end

end A049297.P18010507066821539315

/-! ## A049297.P3252063419745824562

`A056396(n+1)+1-A096693(A001006(n))`
-/

namespace A049297.P3252063419745824562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056396 (n + 1) + 1 - A096693 (A001006 n).toNat

end

end A049297.P3252063419745824562

/-! ## A049297.P9387877356647103159

`A056391(n+1)-A352514(A269646(n+1))`
-/

namespace A049297.P9387877356647103159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056391 (n + 1) - A352514 (A269646 (n + 1)).toNat

end

end A049297.P9387877356647103159

/-! ## A049297.P7315868591583808414

`∑{d}[n+1, A056401(#)]-A096693(A001006(n))`
-/

namespace A049297.P7315868591583808414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056401 d - A096693 (A001006 n).toNat

end

end A049297.P7315868591583808414

/-!
# A049298: Take reduced residue systems of n, generate its first differences, dRRS(n); sequence gives maximal value of dRSSS(n).

The programs for A049298, there is no canonical definition to state claims against.
-/

/-! ## A049298.P1391503042142642542

`A048669(n+1)%(n+1)`
-/

namespace A049298.P1391503042142642542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048669 (n + 1)) (n + 1 : ℤ)

end

end A049298.P1391503042142642542

/-! ## A049298.P8514588606748237995

`(A132468(n+1)+1)%(n+1)`
-/

namespace A049298.P8514588606748237995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132468 (n + 1) + 1) (n + 1 : ℤ)

end

end A049298.P8514588606748237995

/-! ## A049298.P1143238959570997228

`A048669(n+1)-A130706(n)`
-/

namespace A049298.P1143238959570997228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048669 (n + 1) - A130706 n

end

end A049298.P1143238959570997228

/-! ## A049298.P5507016268106932865

`A132468(n+1)-A134824(n)`
-/

namespace A049298.P5507016268106932865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132468 (n + 1) - A134824 n

end

end A049298.P5507016268106932865

/-! ## A049298.P2502383605984825749

`A048669(n+1)*A157928(n)`
-/

namespace A049298.P2502383605984825749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048669 (n + 1) * A157928 n

end

end A049298.P2502383605984825749

/-! ## A049298.P12535943397553291870

`and(A003817(n), A048669(n+1))`
-/

namespace A049298.P12535943397553291870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A048669 (n + 1))

end

end A049298.P12535943397553291870

/-! ## A049298.P1790138063637809679

`and(A048669(n+1), A134824(n))`
-/

namespace A049298.P1790138063637809679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048669 (n + 1)) (A134824 n)

end

end A049298.P1790138063637809679

/-! ## A049298.P7979520423467955580

`lcm(A048669(n+1), A061498(n+1))`
-/

namespace A049298.P7979520423467955580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048669 (n + 1)) (A061498 (n + 1))

end

end A049298.P7979520423467955580

/-! ## A049298.P13091808746743535091

`A008611(C(n, n²))*A048669(n+1)`
-/

namespace A049298.P13091808746743535091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Nat.choose n (n ^ 2)) * A048669 (n + 1)

end

end A049298.P13091808746743535091

/-! ## A049298.P2887923228569065447

`and(A048669(n+1), A116362(n))`
-/

namespace A049298.P2887923228569065447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048669 (n + 1)) (A116362 n)

end

end A049298.P2887923228569065447

/-! ## A049298.P4630693076994090407

`and(A000225(n), A048669(n+1))`
-/

namespace A049298.P4630693076994090407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A048669 (n + 1))

end

end A049298.P4630693076994090407

/-! ## A049298.P9219143331485191369

`and(A048669(n+1), A141023(n))`
-/

namespace A049298.P9219143331485191369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048669 (n + 1)) (A141023 n)

end

end A049298.P9219143331485191369

/-! ## A049298.P1150789069500639739

`and(A048669(n+1), A140683(n))`
-/

namespace A049298.P1150789069500639739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048669 (n + 1)) (A140683 n)

end

end A049298.P1150789069500639739

/-! ## A049298.P1608696428302462

`and(A048669(n+1), A153893(n))`
-/

namespace A049298.P1608696428302462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048669 (n + 1)) (A153893 n)

end

end A049298.P1608696428302462

/-! ## A049298.P16298440624400788405

`and(A048669(n+1), A086224(n))`
-/

namespace A049298.P16298440624400788405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048669 (n + 1)) (A086224 n)

end

end A049298.P16298440624400788405

/-! ## A049298.P9635152458064505205

`and(A048669(n+1), A153894(n))`
-/

namespace A049298.P9635152458064505205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048669 (n + 1)) (A153894 n)

end

end A049298.P9635152458064505205

/-! ## A049298.P6111670755233901462

`and(A048669(n+1), A086225(n))`
-/

namespace A049298.P6111670755233901462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048669 (n + 1)) (A086225 n)

end

end A049298.P6111670755233901462

/-! ## A049298.P15363149836354078164

`and(A048669(n+1), A198275(n))`
-/

namespace A049298.P15363149836354078164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048669 (n + 1)) (A198275 n)

end

end A049298.P15363149836354078164

/-! ## A049298.P15664071435478789204

`and(A048669(n+1), A171389(n))`
-/

namespace A049298.P15664071435478789204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048669 (n + 1)) (A171389 n)

end

end A049298.P15664071435478789204

/-! ## A049298.P15445947314535985794

`and(A048669(n+1), A198276(n))`
-/

namespace A049298.P15445947314535985794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048669 (n + 1)) (A198276 n)

end

end A049298.P15445947314535985794

