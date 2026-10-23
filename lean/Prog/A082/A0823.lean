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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.B011.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A082300: Numbers relatively prime to the sum of their prime factors (with repetition).

The programs for A082300, the canonical program `A082300.P16424528380583114676` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082300 has offset 1).

The definition of A082300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082300.P10205013967558582876

`record[A082344(n+1)]`
-/

namespace A082300.P10205013967558582876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082300.P10205013967558582876

namespace A082300

/-- `record[A082344(n+1)]` -/
def P10205013967558582876.Spec : Prop :=
  ∀ n, P10205013967558582876.a n = A082300 (n + 1)

end A082300

/-! ## A082300.P16424528380583114676

`eq[1, A082299(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A082300

/-- `eq[1, A082299(n+1)]+1` -/
def P16424528380583114676.Spec : Prop :=
  ∀ n, (P16424528380583114676.a n : ℤ) = A082300 (n + 1)

theorem P16424528380583114676.correct : P16424528380583114676.Spec := by
  intro n
  simp only [A082300, Nat.add_sub_cancel]

end A082300

/-! ## A082300.P13706135740956816950

`eq[1, gcd(n+1, A001414(n+1))]+1`
-/

namespace A082300.P13706135740956816950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001414 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A082300.P13706135740956816950

namespace A082300

/-- `eq[1, gcd(n+1, A001414(n+1))]+1` -/
def P13706135740956816950.Spec : Prop :=
  ∀ n, (P13706135740956816950.a n : ℤ) = A082300 (n + 1)

end A082300

/-! ## A082300.P6727576639344696271

`A082344(eq[n+1, A082344(n+1)]+1)`
-/

namespace A082300.P6727576639344696271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A082300.P6727576639344696271

namespace A082300

/-- `A082344(eq[n+1, A082344(n+1)]+1)` -/
def P6727576639344696271.Spec : Prop :=
  ∀ n, P6727576639344696271.a n = A082300 (n + 1)

end A082300

/-! ## A082300.P2595210364540713064

`record[A002808(n+1)/A082299(A002808(n+1))]`
-/

namespace A082300.P2595210364540713064
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A082299 (A002808 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082300.P2595210364540713064

namespace A082300

/-- `record[A002808(n+1)/A082299(A002808(n+1))]` -/
def P2595210364540713064.Spec : Prop :=
  ∀ n, P2595210364540713064.a n = (A082300 (n + 1) : ℚ)

end A082300

/-! ## A082300.P151756600534951565

`eq[n, A082344(A028310(n))]`
-/

namespace A082300.P151756600534951565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082300.P151756600534951565

namespace A082300

/-- `eq[n, A082344(A028310(n))]` -/
def P151756600534951565.Spec : Prop :=
  ∀ n, (P151756600534951565.a n : ℤ) = A082300 (n + 1)

end A082300

/-! ## A082300.P15172119075184666532

`record[n+1-A169966(A082299(n+1)²)]`
-/

namespace A082300.P15172119075184666532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A169966 (A082299 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082300.P15172119075184666532

namespace A082300

/-- `record[n+1-A169966(A082299(n+1)²)]` -/
def P15172119075184666532.Spec : Prop :=
  ∀ n, P15172119075184666532.a n = A082300 (n + 1)

end A082300

/-!
# A082301: G.f.: (1 - 4*x - sqrt(16*x^2 - 12*x + 1))/(2*x).

The programs for A082301, the canonical program `A082301.P12665611665047625573` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082301 has offset 0).

The definition of A082301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082301.P10401527397071212757

`A078009(n)+4*A127848(n)`
-/

namespace A082301.P10401527397071212757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078009 n + 4 * A127848 n

end

end A082301.P10401527397071212757

namespace A082301

/-- `A078009(n)+4*A127848(n)` -/
def P10401527397071212757.Spec : Prop :=
  ∀ n, P10401527397071212757.a n = A082301 n

end A082301

/-! ## A082301.P15361409294923158894

`A078009(n)*A313568(n²%(n+1))`
-/

namespace A082301.P15361409294923158894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078009 n * A313568 (n ^ 2 % (n + 1))

end

end A082301.P15361409294923158894

namespace A082301

/-- `A078009(n)*A313568(n²%(n+1))` -/
def P15361409294923158894.Spec : Prop :=
  ∀ n, P15361409294923158894.a n = A082301 n

end A082301

/-! ## A082301.P18089197758097997242

`A078009(n)*A131113(A000217(n))`
-/

namespace A082301.P18089197758097997242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078009 n * A131113 (A000217 n).toNat

end

end A082301.P18089197758097997242

namespace A082301

/-- `A078009(n)*A131113(A000217(n))` -/
def P18089197758097997242.Spec : Prop :=
  ∀ n, P18089197758097997242.a n = A082301 n

end A082301

/-! ## A082301.P7387312159891086369

`A078009(n)*A193685(A178334(n))`
-/

namespace A082301.P7387312159891086369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078009 n * A193685 (A178334 n).toNat

end

end A082301.P7387312159891086369

namespace A082301

/-- `A078009(n)*A193685(A178334(n))` -/
def P7387312159891086369.Spec : Prop :=
  ∀ n, P7387312159891086369.a n = A082301 n

end A082301

/-! ## A082301.P6418181461981990984

`A078009(n)*A131113(A253145(n))`
-/

namespace A082301.P6418181461981990984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078009 n * A131113 (A253145 n).toNat

end

end A082301.P6418181461981990984

namespace A082301

/-- `A078009(n)*A131113(A253145(n))` -/
def P6418181461981990984.Spec : Prop :=
  ∀ n, P6418181461981990984.a n = A082301 n

end A082301

/-! ## A082301.P12665611665047625573

`A008706(n/A028310(n))*A078009(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A082301

/-- `A008706(n/A028310(n))*A078009(n)` -/
def P12665611665047625573.Spec : Prop :=
  ∀ n, P12665611665047625573.a n = A082301 n

theorem P12665611665047625573.correct : P12665611665047625573.Spec := by
  intro n
  simp only [A082301]

end A082301

/-! ## A082301.P17064454867393490308

`6*(2*n-1)*a(n-1)/(n+1)-16*(n-2)*a(n-2)/(n+1)` with `a(0)=1, a(1)=5`
-/

namespace A082301.P17064454867393490308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  (6 * ((2 * n : ℤ) - 1) : ℚ) * a (n - 1) / (n + 1 : ℚ) - (16 * ((n : ℤ) - 2) : ℚ) * a (n - 2) / (n + 1 : ℚ)

end

end A082301.P17064454867393490308

namespace A082301

/-- `6*(2*n-1)*a(n-1)/(n+1)-16*(n-2)*a(n-2)/(n+1)` -/
def P17064454867393490308.Spec : Prop :=
  ∀ n, P17064454867393490308.a n = (A082301 n : ℚ)

end A082301

/-!
# A082302: Expansion of g.f.: (1 - 5*x - sqrt(25*x^2 - 14*x + 1))/(2*x).

The programs for A082302, there is no canonical definition to state claims against.
-/

/-! ## A082302.P14358819263223132754

`dr(A003945(2*n))*A078018(n)`
-/

namespace A082302.P14358819263223132754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A003945 (2 * n)) : ℤ) * A078018 n

end

end A082302.P14358819263223132754

/-! ## A082302.P9861877077703494599

`A002457(A178334(n))*A078018(n)`
-/

namespace A082302.P9861877077703494599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (A178334 n).toNat * A078018 n

end

end A082302.P9861877077703494599

/-! ## A082302.P14437569317191395183

`A078018(n)*A150143(A253236(A001316(n)))`
-/

namespace A082302.P14437569317191395183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078018 n * A150143 (A253236 (A001316 n).toNat).toNat

end

end A082302.P14437569317191395183

/-! ## A082302.P12702412927207825576

`A078018(n)*A164000(A052839(n)-A111133(n))`
-/

namespace A082302.P12702412927207825576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078018 n * A164000 (A052839 n - A111133 n).toNat

end

end A082302.P12702412927207825576

/-! ## A082302.P3372246961079849872

`∏{p}[A165833(n+1), #]*A078018(n)`
-/

namespace A082302.P3372246961079849872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) * A078018 n

end

end A082302.P3372246961079849872

/-!
# A082303: McKay-Thompson series of class 32e for the Monster group.

The programs for A082303, there is no canonical definition to state claims against.
-/

/-! ## A082303.P10390620363739166966

`(-1)^n*A029838(n)`
-/

namespace A082303.P10390620363739166966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A029838 n

end

end A082303.P10390620363739166966

/-! ## A082303.P2478871588729148663

`A029838(n)*A033999(n)`
-/

namespace A082303.P2478871588729148663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029838 n * A033999 n

end

end A082303.P2478871588729148663

/-! ## A082303.P3609665001094574630

`A087960(n)*A316384(n)`
-/

namespace A082303.P3609665001094574630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A316384 n

end

end A082303.P3609665001094574630

/-! ## A082303.P6029246403839973613

`A029838(n)*A057077(A057077(n)+n)`
-/

namespace A082303.P6029246403839973613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029838 n * A057077 (A057077 n + (n : ℤ)).toNat

end

end A082303.P6029246403839973613

/-! ## A082303.P15557925529387357284

`A029838(n)/A029839(n)*A082304(n)`
-/

namespace A082303.P15557925529387357284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029838 n : ℚ) / (A029839 n : ℚ) * (A082304 n : ℚ)

end

end A082303.P15557925529387357284

/-! ## A082303.P16471938495985063787

`A029838(n)/A036016(n)*A258741(n)`
-/

namespace A082303.P16471938495985063787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029838 n : ℚ) / (A036016 n : ℚ) * (A258741 n : ℚ)

end

end A082303.P16471938495985063787

/-! ## A082303.P224324597436551011

`A057077(n+1)*A316384(n)`
-/

namespace A082303.P224324597436551011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A316384 n

end

end A082303.P224324597436551011

/-! ## A082303.P8051813753179938895

`A029838(n)*A057077(2*n)`
-/

namespace A082303.P8051813753179938895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029838 n * A057077 (2 * n)

end

end A082303.P8051813753179938895

/-! ## A082303.P8779276894719013973

`A112171(4*n)`
-/

namespace A082303.P8779276894719013973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112171 (4 * n)

end

end A082303.P8779276894719013973

/-! ## A082303.P9939483121537424876

`A112172(4*n)`
-/

namespace A082303.P9939483121537424876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112172 (4 * n)

end

end A082303.P9939483121537424876

/-! ## A082303.P3348820433635261101

`A093085(4*n)*A094267(n²)`
-/

namespace A082303.P3348820433635261101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093085 (4 * n) * A094267 (n ^ 2)

end

end A082303.P3348820433635261101

/-! ## A082303.P17685243847072972779

`A094267(n²)*A208589(4*n)`
-/

namespace A082303.P17685243847072972779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (n ^ 2) * A208589 (4 * n)

end

end A082303.P17685243847072972779

/-!
# A082304: McKay-Thompson series of class 16d for the Monster group.

The programs for A082304, there is no canonical definition to state claims against.
-/

/-! ## A082304.P14915638560314847611

`(-1)^n*A029839(n)`
-/

namespace A082304.P14915638560314847611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A029839 n

end

end A082304.P14915638560314847611

/-! ## A082304.P14912318221712342920

`A029839(n)*A033999(n)`
-/

namespace A082304.P14912318221712342920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029839 n * A033999 n

end

end A082304.P14912318221712342920

/-! ## A082304.P12586300073834869810

`A029841(2*n)*A033999(n)`
-/

namespace A082304.P12586300073834869810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029841 (2 * n) * A033999 n

end

end A082304.P12586300073834869810

/-! ## A082304.P2350861794220383418

`A033999(n)*A112143(2*n)`
-/

namespace A082304.P2350861794220383418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112143 (2 * n)

end

end A082304.P2350861794220383418

/-! ## A082304.P6476328280898207046

`A112151(2*n)`
-/

namespace A082304.P6476328280898207046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112151 (2 * n)

end

end A082304.P6476328280898207046

/-! ## A082304.P8582593790181191227

`A112152(2*n)`
-/

namespace A082304.P8582593790181191227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112152 (2 * n)

end

end A082304.P8582593790181191227

/-! ## A082304.P7989224627620935598

`A112152(n+n)/gcd(n, n+1)`
-/

namespace A082304.P7989224627620935598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112152 (n + n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A082304.P7989224627620935598

/-! ## A082304.P2456461157519845558

`A029841(2*n)*A057077(2*n)`
-/

namespace A082304.P2456461157519845558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029841 (2 * n) * A057077 (2 * n)

end

end A082304.P2456461157519845558

/-! ## A082304.P17992572725893909928

`A029841(2*n)*A087960(2*n)`
-/

namespace A082304.P17992572725893909928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029841 (2 * n) * A087960 (2 * n)

end

end A082304.P17992572725893909928

/-! ## A082304.P16981622343839317768

`A057077(2*n)*A112143(2*n)`
-/

namespace A082304.P16981622343839317768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A112143 (2 * n)

end

end A082304.P16981622343839317768

/-! ## A082304.P5328991651572632606

`A087960(2*n)*A112143(2*n)`
-/

namespace A082304.P5328991651572632606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A112143 (2 * n)

end

end A082304.P5328991651572632606

/-! ## A082304.P18122782987881238028

`A112152(n+n)+A065202(A014963(n+1))`
-/

namespace A082304.P18122782987881238028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112152 (n + n) + A065202 (A014963 (n + 1)).toNat

end

end A082304.P18122782987881238028

/-! ## A082304.P9477653459591944905

`(A070402(2*n+1)-A070402(2*n))*A029841(2*n)`
-/

namespace A082304.P9477653459591944905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070402 (2 * n + 1) - A070402 (2 * n)) * A029841 (2 * n)

end

end A082304.P9477653459591944905

/-! ## A082304.P12219021037098303930

`A007096(n)*A029839(n)/A189925(n)`
-/

namespace A082304.P12219021037098303930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 n * A029839 n : ℚ) / (A189925 n : ℚ)

end

end A082304.P12219021037098303930

/-! ## A082304.P14428523116714923807

`A029841(2*n)*A029841(3*n)/A112143(3*n)`
-/

namespace A082304.P14428523116714923807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029841 (2 * n) * A029841 (3 * n) : ℚ) / (A112143 (3 * n) : ℚ)

end

end A082304.P14428523116714923807

/-! ## A082304.P9583764506864838560

`A112152(n+n)+A048158(∑[n+1])`
-/

namespace A082304.P9583764506864838560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112152 (n + n) + A048158 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082304.P9583764506864838560

/-! ## A082304.P13230306646083107637

`(A070402(n²)+1-A070402(2*n))*A029841(2*n)`
-/

namespace A082304.P13230306646083107637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070402 (n ^ 2) + 1 - A070402 (2 * n)) * A029841 (2 * n)

end

end A082304.P13230306646083107637

/-!
# A082305: G.f.: (1 - 6*x - sqrt(36*x^2 - 16*x + 1))/(2*x).

The programs for A082305, there is no canonical definition to state claims against.
-/

/-! ## A082305.P1426828639437922111

`A081178(n)*A212117(A178334(n))`
-/

namespace A082305.P1426828639437922111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081178 n * A212117 ((A178334 n).toNat + 56)

end

end A082305.P1426828639437922111

/-! ## A082305.P18185290527147998304

`A081178(n)*A261893(A178334(n)²)`
-/

namespace A082305.P18185290527147998304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081178 n * A261893 (A178334 n ^ 2).toNat

end

end A082305.P18185290527147998304

/-! ## A082305.P7470375471213469580

`A081178(n)*A123365(A178334(n)+1)`
-/

namespace A082305.P7470375471213469580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081178 n * A123365 (A178334 n + 1).toNat

end

end A082305.P7470375471213469580

/-! ## A082305.P17071075600796681233

`A081178(n)*A141291(A178334(n)+1)`
-/

namespace A082305.P17071075600796681233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081178 n * A141291 (A178334 n + 1).toNat

end

end A082305.P17071075600796681233

/-! ## A082305.P2969552861567985725

`A067695(A161343(n))*A081178(n)`
-/

namespace A082305.P2969552861567985725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (A161343 n).toNat * A081178 n

end

end A082305.P2969552861567985725

/-!
# A082306: Expansion of e.g.f. (1+x)*exp(2*x)*cosh(x).

The programs for A082306, the canonical program `A082306.P12937592657907758769` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082306 has offset 0).

The definition of A082306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082306.P12937592657907758769

`(n+1+3^(n-1)*(n+3))/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082306

/-- `(n+1+3^(n-1)*(n+3))/2` -/
def P12937592657907758769.Spec : Prop :=
  ∀ n, P12937592657907758769.a n = (A082306 n : ℚ)

end A082306

/-! ## A082306.P8174885248532536362

`A087448(n)+n`
-/

namespace A082306.P8174885248532536362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087448 n + (n : ℤ)

end

end A082306.P8174885248532536362

namespace A082306

/-- `A087448(n)+n` -/
def P8174885248532536362.Spec : Prop :=
  ∀ n, P8174885248532536362.a n = A082306 n

end A082306

/-! ## A082306.P11014906047516044720

`A082133(n)+A007051(n)`
-/

namespace A082306.P11014906047516044720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082133 n + A007051 n

end

end A082306.P11014906047516044720

namespace A082306

/-- `A082133(n)+A007051(n)` -/
def P11014906047516044720.Spec : Prop :=
  ∀ n, P11014906047516044720.a n = A082306 n

end A082306

/-! ## A082306.P4876194991141049894

`A392266(n)+A164039(n)`
-/

namespace A082306.P4876194991141049894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392266 n + A164039 n

end

end A082306.P4876194991141049894

namespace A082306

/-- `A392266(n)+A164039(n)` -/
def P4876194991141049894.Spec : Prop :=
  ∀ n, P4876194991141049894.a n = A082306 n

end A082306

/-! ## A082306.P2718057828814498104

`(ratio[A124302(n)]+n)*A124302(n)`
-/

namespace A082306.P2718057828814498104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)) * (A124302 n : ℚ)

end

end A082306.P2718057828814498104

namespace A082306

/-- `(ratio[A124302(n)]+n)*A124302(n)` -/
def P2718057828814498104.Spec : Prop :=
  ∀ n, P2718057828814498104.a n = (A082306 n : ℚ)

end A082306

/-! ## A082306.P5321694047635753734

`A082133(n+1)-A027471(n+1)`
-/

namespace A082306.P5321694047635753734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082133 (n + 1) - A027471 (n + 1)

end

end A082306.P5321694047635753734

namespace A082306

/-- `A082133(n+1)-A027471(n+1)` -/
def P5321694047635753734.Spec : Prop :=
  ∀ n, P5321694047635753734.a n = A082306 n

end A082306

/-! ## A082306.P559054529895828338

`A360023(n+1)+A015518(n)-A360035(n)`
-/

namespace A082306.P559054529895828338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360023 (n + 1) + (A015518 n - A360035 n)

end

end A082306.P559054529895828338

namespace A082306

/-- `A360023(n+1)+A015518(n)-A360035(n)` -/
def P559054529895828338.Spec : Prop :=
  ∀ n, P559054529895828338.a n = A082306 n

end A082306

/-! ## A082306.P12524949364580614514

`A360035(n+1)+A122983(n)-A360036(n)`
-/

namespace A082306.P12524949364580614514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360035 (n + 1) + (A122983 n - A360036 n)

end

end A082306.P12524949364580614514

namespace A082306

/-- `A360035(n+1)+A122983(n)-A360036(n)` -/
def P12524949364580614514.Spec : Prop :=
  ∀ n, P12524949364580614514.a n = A082306 n

end A082306

/-! ## A082306.P9279647159436883932

`A372852(n+1)+A007051(n)-A372872(n+1)`
-/

namespace A082306.P9279647159436883932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372852 (n + 1) + (A007051 n - A372872 (n + 1))

end

end A082306.P9279647159436883932

namespace A082306

/-- `A372852(n+1)+A007051(n)-A372872(n+1)` -/
def P9279647159436883932.Spec : Prop :=
  ∀ n, P9279647159436883932.a n = A082306 n

end A082306

/-!
# A082307: Expansion of e.g.f. (1+x)*exp(3*x)*cosh(x).

The programs for A082307, the canonical program `A082307.P3588550851383023575` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082307 has offset 0).

The definition of A082307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082307.P3588550851383023575

`((n+2)*2^(n-1)+(n+4)*4^(n-1))/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082307

/-- `((n+2)*2^(n-1)+(n+4)*4^(n-1))/2` -/
def P3588550851383023575.Spec : Prop :=
  ∀ n, P3588550851383023575.a n = (A082307 n : ℚ)

end A082307

/-! ## A082307.P16111741018584945335

`A000431(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A082307.P16111741018584945335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000431 n + 4 * a (n - 1)

end

end A082307.P16111741018584945335

namespace A082307

/-- `A000431(n)+4*a(n-1)` -/
def P16111741018584945335.Spec : Prop :=
  ∀ n, P16111741018584945335.a n = A082307 n

end A082307

/-! ## A082307.P3658605168589200359

`A082134(n)+A007582(n)`
-/

namespace A082307.P3658605168589200359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082134 n + A007582 n

end

end A082307.P3658605168589200359

namespace A082307

/-- `A082134(n)+A007582(n)` -/
def P3658605168589200359.Spec : Prop :=
  ∀ n, P3658605168589200359.a n = A082307 n

end A082307

/-! ## A082307.P14765972244610552135

`A007582(n)+n*Δ[A124303(n)]`
-/

namespace A082307.P14765972244610552135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n + (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A082307.P14765972244610552135

namespace A082307

/-- `A007582(n)+n*Δ[A124303(n)]` -/
def P14765972244610552135.Spec : Prop :=
  ∀ n, P14765972244610552135.a n = A082307 n

end A082307

/-! ## A082307.P16800842368514145839

`A000079(n)+A082134(n)+A006516(n)`
-/

namespace A082307.P16800842368514145839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A082134 n + A006516 n)

end

end A082307.P16800842368514145839

namespace A082307

/-- `A000079(n)+A082134(n)+A006516(n)` -/
def P16800842368514145839.Spec : Prop :=
  ∀ n, P16800842368514145839.a n = A082307 n

end A082307

/-! ## A082307.P10265606994419275480

`A000302(n)+A082134(n)-A006516(n)`
-/

namespace A082307.P10265606994419275480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n + (A082134 n - A006516 n)

end

end A082307.P10265606994419275480

namespace A082307

/-- `A000302(n)+A082134(n)-A006516(n)` -/
def P10265606994419275480.Spec : Prop :=
  ∀ n, P10265606994419275480.a n = A082307 n

end A082307

/-! ## A082307.P4670590490656807630

`A082134(n+1)-A133224(n)`
-/

namespace A082307.P4670590490656807630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082134 (n + 1) - A133224 n

end

end A082307.P4670590490656807630

namespace A082307

/-- `A082134(n+1)-A133224(n)` -/
def P4670590490656807630.Spec : Prop :=
  ∀ n, P4670590490656807630.a n = A082307 n

end A082307

/-! ## A082307.P16431634127998447308

`A082134(n+1)-(A082134(n)+A002697(n))`
-/

namespace A082307.P16431634127998447308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082134 (n + 1) - (A082134 n + A002697 n)

end

end A082307.P16431634127998447308

namespace A082307

/-- `A082134(n+1)-(A082134(n)+A002697(n))` -/
def P16431634127998447308.Spec : Prop :=
  ∀ n, P16431634127998447308.a n = A082307 n

end A082307

/-! ## A082307.P9638974979681846694

`A133224(n+1)-(A133224(n)+A002697(n+1))`
-/

namespace A082307.P9638974979681846694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133224 (n + 1) - (A133224 n + A002697 (n + 1))

end

end A082307.P9638974979681846694

namespace A082307

/-- `A133224(n+1)-(A133224(n)+A002697(n+1))` -/
def P9638974979681846694.Spec : Prop :=
  ∀ n, P9638974979681846694.a n = A082307 n

end A082307

/-!
# A082308: Expansion of e.g.f. (1+x)*exp(4*x)*cosh(x).

The programs for A082308, the canonical program `A082308.P16576761059814449144` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082308 has offset 0).

The definition of A082308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082308.P16576761059814449144

`((n+3)*3^(n-1)+(n+5)*5^(n-1))/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082308

/-- `((n+3)*3^(n-1)+(n+5)*5^(n-1))/2` -/
def P16576761059814449144.Spec : Prop :=
  ∀ n, P16576761059814449144.a n = (A082308 n : ℚ)

end A082308

/-! ## A082308.P9854800075302771694

`A082135(n)+A081186(n)`
-/

namespace A082308.P9854800075302771694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082135 n + A081186 n

end

end A082308.P9854800075302771694

namespace A082308

/-- `A082135(n)+A081186(n)` -/
def P9854800075302771694.Spec : Prop :=
  ∀ n, P9854800075302771694.a n = A082308 n

end A082308

/-! ## A082308.P3843161370982149322

`A082135(n)+A074606(n)/2`
-/

namespace A082308.P3843161370982149322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082135 n : ℚ) + (A074606 n : ℚ) / 2

end

end A082308.P3843161370982149322

namespace A082308

/-- `A082135(n)+A074606(n)/2` -/
def P3843161370982149322.Spec : Prop :=
  ∀ n, P3843161370982149322.a n = (A082308 n : ℚ)

end A082308

/-! ## A082308.P222625110176592550

`A082135(n)+Δ[A233106(n+1)]`
-/

namespace A082308.P222625110176592550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082135 n + (f1 (n + 1) - f1 n)

end

end A082308.P222625110176592550

namespace A082308

/-- `A082135(n)+Δ[A233106(n+1)]` -/
def P222625110176592550.Spec : Prop :=
  ∀ n, P222625110176592550.a n = A082308 n

end A082308

/-! ## A082308.P3864138379052854485

`A003462(n)+A082135(n)+A034478(n)`
-/

namespace A082308.P3864138379052854485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + (A082135 n + A034478 n)

end

end A082308.P3864138379052854485

namespace A082308

/-- `A003462(n)+A082135(n)+A034478(n)` -/
def P3864138379052854485.Spec : Prop :=
  ∀ n, P3864138379052854485.a n = A082308 n

end A082308

/-!
# A082309: Expansion of e.g.f.: (1+x)*exp(5*x)*cosh(x).

The programs for A082309, the canonical program `A082309.P12849845682277072184` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082309 has offset 0).

The definition of A082309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082309.P2639023622633363902

`((n+4)*4^(n-1)+(n+6)*6^(n-1))/2`
-/

namespace A082309.P2639023622633363902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 4 : ℚ) * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n + 6 : ℚ) * (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) / 2

end

end A082309.P2639023622633363902

namespace A082309

/-- `((n+4)*4^(n-1)+(n+6)*6^(n-1))/2` -/
def P2639023622633363902.Spec : Prop :=
  ∀ n, P2639023622633363902.a n = (A082309 n : ℚ)

end A082309

/-! ## A082309.P12849845682277072184

`20*a(n-1)-148*a(n-2)+480*a(n-3)-576*a(n-4)` with `a(0)=1, a(1)=6, a(2)=36, a(3)=218`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082309

/-- `20*a(n-1)-148*a(n-2)+480*a(n-3)-576*a(n-4)` -/
def P12849845682277072184.Spec : Prop :=
  ∀ n, P12849845682277072184.a n = A082309 n

theorem P12849845682277072184.correct : P12849845682277072184.Spec := by
  intro n
  simp only [A082309]

end A082309

/-! ## A082309.P7288893805179350833

`A082136(n)+(4^n+6^n)/2`
-/

namespace A082309.P7288893805179350833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082136 n : ℚ) + (4 ^ n + 6 ^ n : ℚ) / 2

end

end A082309.P7288893805179350833

namespace A082309

/-- `A082136(n)+(4^n+6^n)/2` -/
def P7288893805179350833.Spec : Prop :=
  ∀ n, P7288893805179350833.a n = (A082309 n : ℚ)

end A082309

/-! ## A082309.P2105877589308502303

`A081187(n)+A308700(n)-A082133(n)*A157823(n)`
-/

namespace A082309.P2105877589308502303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081187 n + (A308700 n - A082133 n * A157823 n)

end

end A082309.P2105877589308502303

namespace A082309

/-- `A081187(n)+A308700(n)-A082133(n)*A157823(n)` -/
def P2105877589308502303.Spec : Prop :=
  ∀ n, P2105877589308502303.a n = A082309 n

end A082309

/-! ## A082309.P7162269534269628434

`A081187(n)+A001788(n)*A085281(n)/(n+1)`
-/

namespace A082309.P7162269534269628434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081187 n : ℚ) + (A001788 n * A085281 n : ℚ) / (n + 1 : ℚ)

end

end A082309.P7162269534269628434

namespace A082309

/-- `A081187(n)+A001788(n)*A085281(n)/(n+1)` -/
def P7162269534269628434.Spec : Prop :=
  ∀ n, P7162269534269628434.a n = (A082309 n : ℚ)

end A082309

/-!
# A082311: A Jacobsthal sequence trisection.

The programs for A082311, the canonical program `A082311.P9938439749026591625` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082311 has offset 0).

The definition of A082311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082311.P10324988093705843763

`(2*8^n+(-1)^n)/3`
-/

namespace A082311.P10324988093705843763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 8 ^ n : ℤ) + (-1) ^ n : ℚ) / 3

end

end A082311.P10324988093705843763

namespace A082311

/-- `(2*8^n+(-1)^n)/3` -/
def P10324988093705843763.Spec : Prop :=
  ∀ n, P10324988093705843763.a n = (A082311 n : ℚ)

theorem P10324988093705843763.correct : P10324988093705843763.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A082311, Nat.add_sub_cancel, A082311.P10324988093705843763.a, A082311.P9938439749026591625.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A082311, Nat.add_sub_cancel, A082311.P10324988093705843763.a, A082311.P9938439749026591625.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A082311

/-! ## A082311.P9938439749026591625

`8*a(n-1)+3*(-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082311

/-- `8*a(n-1)+3*(-1)^n` -/
def P9938439749026591625.Spec : Prop :=
  ∀ n, P9938439749026591625.a n = A082311 n

theorem P9938439749026591625.correct : P9938439749026591625.Spec := by
  intro n
  simp only [A082311]

end A082311

/-! ## A082311.P17510089954454670173

`A001045(3*n+1)`
-/

namespace A082311.P17510089954454670173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (3 * n + 1)

end

end A082311.P17510089954454670173

namespace A082311

/-- `A001045(3*n+1)` -/
def P17510089954454670173.Spec : Prop :=
  ∀ n, P17510089954454670173.a n = A082311 n

end A082311

/-! ## A082311.P23670659125563296

`A024494(3*n+1)`
-/

namespace A082311.P23670659125563296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024494 (3 * n + 1)

end

end A082311.P23670659125563296

namespace A082311

/-- `A024494(3*n+1)` -/
def P23670659125563296.Spec : Prop :=
  ∀ n, P23670659125563296.a n = A082311 n

end A082311

/-! ## A082311.P12395141042887561504

`A081374(1+3*n)`
-/

namespace A082311.P12395141042887561504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081374 (1 + 3 * n)

end

end A082311.P12395141042887561504

namespace A082311

/-- `A081374(1+3*n)` -/
def P12395141042887561504.Spec : Prop :=
  ∀ n, P12395141042887561504.a n = A082311 n

end A082311

/-! ## A082311.P7955440886143624252

`A007613(n)+A132805(n)`
-/

namespace A082311.P7955440886143624252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007613 n + A132805 n

end

end A082311.P7955440886143624252

namespace A082311

/-- `A007613(n)+A132805(n)` -/
def P7955440886143624252.Spec : Prop :=
  ∀ n, P7955440886143624252.a n = A082311 n

end A082311

/-! ## A082311.P5235350404725593283

`ogf((-1+2x)/(-1+7x+8x^2))`
-/

namespace A082311.P5235350404725593283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -7, -8] n

end

end A082311.P5235350404725593283

namespace A082311

/-- `ogf((-1+2x)/(-1+7x+8x^2))` -/
def P5235350404725593283.Spec : Prop :=
  ∀ n, P5235350404725593283.a n = A082311 n

end A082311

/-! ## A082311.P10392965613407583813

`floor(7*a(n-1)+8*a(n-2))` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A082311.P10392965613407583813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  7 * a (n - 1) + 8 * a (n - 2)

end

end A082311.P10392965613407583813

namespace A082311

/-- `floor(7*a(n-1)+8*a(n-2))` -/
def P10392965613407583813.Spec : Prop :=
  ∀ n, (P10392965613407583813.a n : ℤ) = A082311 n

end A082311

/-! ## A082311.P333365527800511588

`A141355(2*n)`
-/

namespace A082311.P333365527800511588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141355 (2 * n)

end

end A082311.P333365527800511588

namespace A082311

/-- `A141355(2*n)` -/
def P333365527800511588.Spec : Prop :=
  ∀ n, P333365527800511588.a n = A082311 n

end A082311

/-! ## A082311.P13321293569798412816

`A130781(3*n)`
-/

namespace A082311.P13321293569798412816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 (3 * n)

end

end A082311.P13321293569798412816

namespace A082311

/-- `A130781(3*n)` -/
def P13321293569798412816.Spec : Prop :=
  ∀ n, P13321293569798412816.a n = A082311 n

end A082311

/-! ## A082311.P12987479952134894473

`A135318(6*n)`
-/

namespace A082311.P12987479952134894473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (6 * n)

end

end A082311.P12987479952134894473

namespace A082311

/-- `A135318(6*n)` -/
def P12987479952134894473.Spec : Prop :=
  ∀ n, P12987479952134894473.a n = A082311 n

end A082311

/-! ## A082311.P5002955401569866826

`A375476(9*n)`
-/

namespace A082311.P5002955401569866826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375476 (9 * n)

end

end A082311.P5002955401569866826

namespace A082311

/-- `A375476(9*n)` -/
def P5002955401569866826.Spec : Prop :=
  ∀ n, P5002955401569866826.a n = A082311 n

end A082311

/-! ## A082311.P3774887278114086981

`A024493(3*n+1)`
-/

namespace A082311.P3774887278114086981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (3 * n + 1)

end

end A082311.P3774887278114086981

namespace A082311

/-- `A024493(3*n+1)` -/
def P3774887278114086981.Spec : Prop :=
  ∀ n, P3774887278114086981.a n = A082311 n

end A082311

/-! ## A082311.P13392162846016733272

`A087462(3*n+1)`
-/

namespace A082311.P13392162846016733272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087462 (3 * n + 1)

end

end A082311.P13392162846016733272

namespace A082311

/-- `A087462(3*n+1)` -/
def P13392162846016733272.Spec : Prop :=
  ∀ n, P13392162846016733272.a n = A082311 n

end A082311

/-! ## A082311.P17895448979544961288

`A087463(3*n+1)`
-/

namespace A082311.P17895448979544961288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087463 (3 * n + 1)

end

end A082311.P17895448979544961288

namespace A082311

/-- `A087463(3*n+1)` -/
def P17895448979544961288.Spec : Prop :=
  ∀ n, P17895448979544961288.a n = A082311 n

end A082311

/-! ## A082311.P12771123011883216533

`A131708(3*n+1)`
-/

namespace A082311.P12771123011883216533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 (3 * n + 1)

end

end A082311.P12771123011883216533

namespace A082311

/-- `A131708(3*n+1)` -/
def P12771123011883216533.Spec : Prop :=
  ∀ n, P12771123011883216533.a n = A082311 n

end A082311

/-! ## A082311.P13696208739555732183

`A152046(3*n+1)`
-/

namespace A082311.P13696208739555732183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 (3 * n + 1)

end

end A082311.P13696208739555732183

namespace A082311

/-- `A152046(3*n+1)` -/
def P13696208739555732183.Spec : Prop :=
  ∀ n, P13696208739555732183.a n = A082311 n

end A082311

/-! ## A082311.P4652238221892742402

`A166249(3*n+1)`
-/

namespace A082311.P4652238221892742402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166249 (3 * n + 1)

end

end A082311.P4652238221892742402

namespace A082311

/-- `A166249(3*n+1)` -/
def P4652238221892742402.Spec : Prop :=
  ∀ n, P4652238221892742402.a n = A082311 n

end A082311

/-! ## A082311.P12253942492561463203

`A167167(3*n+1)`
-/

namespace A082311.P12253942492561463203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 (3 * n + 1)

end

end A082311.P12253942492561463203

namespace A082311

/-- `A167167(3*n+1)` -/
def P12253942492561463203.Spec : Prop :=
  ∀ n, P12253942492561463203.a n = A082311 n

end A082311

/-! ## A082311.P2141702923159261761

`A052953(3*n)-1`
-/

namespace A082311.P2141702923159261761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052953 (3 * n) - 1

end

end A082311.P2141702923159261761

namespace A082311

/-- `A052953(3*n)-1` -/
def P2141702923159261761.Spec : Prop :=
  ∀ n, P2141702923159261761.a n = A082311 n

end A082311

/-!
# A082313: Involution of natural numbers: A057501-conjugate of A057164.

The programs for A082313, there is no canonical definition to state claims against.
-/

/-! ## A082313.P4336433584545126505

`A057501(A057164(A057502(n)))`
-/

namespace A082313.P4336433584545126505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057164 (A057502 n).toNat).toNat

end

end A082313.P4336433584545126505

/-! ## A082313.P4197095600698286624

`A069772(A082314(A069772(n)))`
-/

namespace A082313.P4197095600698286624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A082314 (A069772 n).toNat).toNat

end

end A082313.P4197095600698286624

/-! ## A082313.P9841561145205214746

`A082319(A082314(n))`
-/

namespace A082313.P9841561145205214746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082319 (A082314 n).toNat

end

end A082313.P9841561145205214746

/-! ## A082313.P859927551187651389

`A082315(A057164(n))`
-/

namespace A082313.P859927551187651389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082315 (A057164 n).toNat

end

end A082313.P859927551187651389

/-! ## A082313.P4616016160669081145

`A057164(A082316(n))`
-/

namespace A082313.P4616016160669081145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A082316 n).toNat

end

end A082313.P4616016160669081145

/-! ## A082313.P17551552205661782432

`A082314(A082320(n))`
-/

namespace A082313.P17551552205661782432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A082320 n).toNat

end

end A082313.P17551552205661782432

/-! ## A082313.P14300896166052807264

`A085170(A085161(A085169(n)))`
-/

namespace A082313.P14300896166052807264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (A085161 (A085169 n).toNat).toNat

end

end A082313.P14300896166052807264

/-! ## A082313.P16531443603792837772

`A069888(A057502(n))`
-/

namespace A082313.P16531443603792837772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A057502 n).toNat

end

end A082313.P16531443603792837772

/-! ## A082313.P4481679026114553734

`A057501(A069888(n))`
-/

namespace A082313.P4481679026114553734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A069888 n).toNat

end

end A082313.P4481679026114553734

/-! ## A082313.P205359199997309290

`A082334(A057163(n))`
-/

namespace A082313.P205359199997309290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082334 (A057163 n).toNat

end

end A082313.P205359199997309290

/-! ## A082313.P18194325728517769280

`A057163(A082333(n))`
-/

namespace A082313.P18194325728517769280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082333 n).toNat

end

end A082313.P18194325728517769280

/-! ## A082313.P11212475310487969285

`A082317(A069889(n))`
-/

namespace A082313.P11212475310487969285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082317 (A069889 n).toNat

end

end A082313.P11212475310487969285

/-! ## A082313.P8812034845554274540

`A069889(A082318(n))`
-/

namespace A082313.P8812034845554274540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069889 (A082318 n).toNat

end

end A082313.P8812034845554274540

/-! ## A082313.P16700656220400202114

`A057501(A057163(A082331(n)))`
-/

namespace A082313.P16700656220400202114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057163 (A082331 n).toNat).toNat

end

end A082313.P16700656220400202114

/-! ## A082313.P14392501782800470106

`A082334(A069888(A082332(n)))`
-/

namespace A082313.P14392501782800470106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082334 (A069888 (A082332 n).toNat).toNat

end

end A082313.P14392501782800470106

/-! ## A082313.P1767268836688814630

`A057163(A069773(A069773(A057506(n))))`
-/

namespace A082313.P1767268836688814630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069773 (A069773 (A057506 n).toNat).toNat).toNat

end

end A082313.P1767268836688814630

/-! ## A082313.P8339465867186353449

`A057501(A057501(A069772(A069771(n))))`
-/

namespace A082313.P8339465867186353449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057501 (A069772 (A069771 n).toNat).toNat).toNat

end

end A082313.P8339465867186353449

/-! ## A082313.P11393061899484182337

`A057164(A057502(A057502(A057508(A057508(n)))))`
-/

namespace A082313.P11393061899484182337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057502 (A057502 (A057508 (A057508 n).toNat).toNat).toNat).toNat

end

end A082313.P11393061899484182337

/-! ## A082313.P6684091078844276854

`A130922(A085174(A085174(A074684(n))))`
-/

namespace A082313.P6684091078844276854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130922 (A085174 (A085174 (A074684 n).toNat).toNat).toNat

end

end A082313.P6684091078844276854

/-! ## A082313.P9253979904408336435

`A057164(A057502(A057502(A069766(A069766(n)))))`
-/

namespace A082313.P9253979904408336435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057502 (A057502 (A069766 (A069766 n).toNat).toNat).toNat).toNat

end

end A082313.P9253979904408336435

/-!
# A082314: Involution of natural numbers: A057502-conjugate of A057164.

The programs for A082314, there is no canonical definition to state claims against.
-/

/-! ## A082314.P3537161161773824153

`A057502(A057164(A057501(n)))`
-/

namespace A082314.P3537161161773824153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A057164 (A057501 n).toNat).toNat

end

end A082314.P3537161161773824153

/-! ## A082314.P12145915930800131303

`A057164(A082315(n))`
-/

namespace A082314.P12145915930800131303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A082315 n).toNat

end

end A082314.P12145915930800131303

/-! ## A082314.P2233172499423456705

`A082313(A082319(n))`
-/

namespace A082314.P2233172499423456705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082319 n).toNat

end

end A082314.P2233172499423456705

/-! ## A082314.P12937729638344593123

`A082315(A082313(A082323(n)))`
-/

namespace A082314.P12937729638344593123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082315 (A082313 (A082323 n).toNat).toNat

end

end A082314.P12937729638344593123

/-! ## A082314.P608110324723318437

`A085170(A085175(A085159(A085169(n))))`
-/

namespace A082314.P608110324723318437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (A085175 (A085159 (A085169 n).toNat).toNat).toNat

end

end A082314.P608110324723318437

/-! ## A082314.P16978134337538117745

`A069772(A082313(A069772(n)))`
-/

namespace A082314.P16978134337538117745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A082313 (A069772 n).toNat).toNat

end

end A082314.P16978134337538117745

/-! ## A082314.P1405044102947441779

`A082316(A057164(n))`
-/

namespace A082314.P1405044102947441779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082316 (A057164 n).toNat

end

end A082314.P1405044102947441779

/-! ## A082314.P14741582347235625845

`A082320(A082313(n))`
-/

namespace A082314.P14741582347235625845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082320 (A082313 n).toNat

end

end A082314.P14741582347235625845

/-! ## A082314.P12164404711115101986

`A082324(A082313(A082316(n)))`
-/

namespace A082314.P12164404711115101986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082324 (A082313 (A082316 n).toNat).toNat

end

end A082314.P12164404711115101986

/-! ## A082314.P16494718265783905138

`A069889(A057501(n))`
-/

namespace A082314.P16494718265783905138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069889 (A057501 n).toNat

end

end A082314.P16494718265783905138

/-! ## A082314.P9363177878676402440

`A057502(A069889(n))`
-/

namespace A082314.P9363177878676402440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A069889 n).toNat

end

end A082314.P9363177878676402440

/-! ## A082314.P3157024560893645588

`A082318(A069888(n))`
-/

namespace A082314.P3157024560893645588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082318 (A069888 n).toNat

end

end A082314.P3157024560893645588

/-! ## A082314.P9965836091885839230

`A069888(A082317(n))`
-/

namespace A082314.P9965836091885839230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A082317 n).toNat

end

end A082314.P9965836091885839230

/-! ## A082314.P2482678773781269436

`A082313(A082321(A057502(n)))`
-/

namespace A082314.P2482678773781269436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082321 (A057502 n).toNat).toNat

end

end A082314.P2482678773781269436

/-! ## A082314.P10974008628827538455

`A069772(A057501(A057501(A069771(n))))`
-/

namespace A082314.P10974008628827538455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A057501 (A057501 (A069771 n).toNat).toNat).toNat

end

end A082314.P10974008628827538455

/-! ## A082314.P5291745522474664059

`A082317(A082316(A082313(A082321(n))))`
-/

namespace A082314.P5291745522474664059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082317 (A082316 (A082313 (A082321 n).toNat).toNat).toNat

end

end A082314.P5291745522474664059

/-! ## A082314.P6291333029774878923

`A082313(A082321(A082321(A082324(n))))`
-/

namespace A082314.P6291333029774878923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082321 (A082321 (A082324 n).toNat).toNat).toNat

end

end A082314.P6291333029774878923

/-! ## A082314.P895497571079387580

`A057502(A057502(A057508(A057164(A057508(n)))))`
-/

namespace A082314.P895497571079387580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A057502 (A057508 (A057164 (A057508 n).toNat).toNat).toNat).toNat

end

end A082314.P895497571079387580

/-!
# A082315: Permutation A057501 applied twice ("squared").

The programs for A082315, there is no canonical definition to state claims against.
-/

/-! ## A082315.P14182024783727452466

`A057501(A057501(n))`
-/

namespace A082315.P14182024783727452466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057501 n).toNat

end

end A082315.P14182024783727452466

/-! ## A082315.P9979517210849387464

`A082316(A082319(n))`
-/

namespace A082315.P9979517210849387464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082316 (A082319 n).toNat

end

end A082315.P9979517210849387464

/-! ## A082315.P2099210627629212385

`A069772(A082316(A069772(n)))`
-/

namespace A082315.P2099210627629212385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A082316 (A069772 n).toNat).toNat

end

end A082315.P2099210627629212385

/-! ## A082315.P6089487423917875709

`A057164(A082314(n))`
-/

namespace A082315.P6089487423917875709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A082314 n).toNat

end

end A082315.P6089487423917875709

/-! ## A082315.P3894217444103357767

`A082313(A057164(n))`
-/

namespace A082315.P3894217444103357767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A057164 n).toNat

end

end A082315.P3894217444103357767

/-! ## A082315.P2146670767741274001

`A082323(A082320(n))`
-/

namespace A082315.P2146670767741274001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082323 (A082320 n).toNat

end

end A082315.P2146670767741274001

/-! ## A082315.P3990707289304271355

`A082313(A069772(A069771(n)))`
-/

namespace A082315.P3990707289304271355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A069772 (A069771 n).toNat).toNat

end

end A082315.P3990707289304271355

/-! ## A082315.P9201823136856029756

`A082313(A082316(A082313(n)))`
-/

namespace A082315.P9201823136856029756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082316 (A082313 n).toNat).toNat

end

end A082315.P9201823136856029756

/-! ## A082315.P1025308380387389104

`A069888(A069889(n))`
-/

namespace A082315.P1025308380387389104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A069889 n).toNat

end

end A082315.P1025308380387389104

/-! ## A082315.P15014111105433070414

`A082317(A057502(n))`
-/

namespace A082315.P15014111105433070414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082317 (A057502 n).toNat

end

end A082315.P15014111105433070414

/-! ## A082315.P2384105572542877965

`A082334(A057506(n))`
-/

namespace A082315.P2384105572542877965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082334 (A057506 n).toNat

end

end A082315.P2384105572542877965

/-! ## A082315.P4477481386005470450

`A082321(A082318(n))`
-/

namespace A082315.P4477481386005470450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082321 (A082318 n).toNat

end

end A082315.P4477481386005470450

/-! ## A082315.P11053292210701753698

`A082313(A057502(A069888(n)))`
-/

namespace A082315.P11053292210701753698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A057502 (A069888 n).toNat).toNat

end

end A082315.P11053292210701753698

/-! ## A082315.P5502157702088200672

`A082316(A057502(A082321(n)))`
-/

namespace A082315.P5502157702088200672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082316 (A057502 (A082321 n).toNat).toNat

end

end A082315.P5502157702088200672

/-! ## A082315.P6979219208845971691

`A082318(A057502(A082323(n)))`
-/

namespace A082315.P6979219208845971691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082318 (A057502 (A082323 n).toNat).toNat

end

end A082315.P6979219208845971691

/-! ## A082315.P8805480441725866729

`A074683(A085159(A074684(n)))`
-/

namespace A082315.P8805480441725866729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A085159 (A074684 n).toNat).toNat

end

end A082315.P8805480441725866729

/-! ## A082315.P84439996431798316

`A082320(A082317(A082317(n)))`
-/

namespace A082315.P84439996431798316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082320 (A082317 (A082317 n).toNat).toNat

end

end A082315.P84439996431798316

/-! ## A082315.P6218097619221858821

`A082319(A082317(A082322(n)))`
-/

namespace A082315.P6218097619221858821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082319 (A082317 (A082322 n).toNat).toNat

end

end A082315.P6218097619221858821

/-! ## A082315.P6943481118363752169

`A082321(A082317(A082324(n)))`
-/

namespace A082315.P6943481118363752169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082321 (A082317 (A082324 n).toNat).toNat

end

end A082315.P6943481118363752169

/-! ## A082315.P9962812264658542502

`A057509(A069770(A057509(A069770(n))))`
-/

namespace A082315.P9962812264658542502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A069770 (A057509 (A069770 n).toNat).toNat).toNat

end

end A082315.P9962812264658542502

/-!
# A082316: Permutation A057502 applied twice ("squared").

The programs for A082316, there is no canonical definition to state claims against.
-/

/-! ## A082316.P187924304512988126

`A057502(A057502(n))`
-/

namespace A082316.P187924304512988126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A057502 n).toNat

end

end A082316.P187924304512988126

/-! ## A082316.P5704212156298758675

`A082320(A082315(n))`
-/

namespace A082316.P5704212156298758675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082320 (A082315 n).toNat

end

end A082316.P5704212156298758675

/-! ## A082316.P4299026954304366252

`A082324(A082319(n))`
-/

namespace A082316.P4299026954304366252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082324 (A082319 n).toNat

end

end A082316.P4299026954304366252

/-! ## A082316.P477587762848407046

`A082314(A057164(n))`
-/

namespace A082316.P477587762848407046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A057164 n).toNat

end

end A082316.P477587762848407046

/-! ## A082316.P7036444081424341112

`A057164(A082313(n))`
-/

namespace A082316.P7036444081424341112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A082313 n).toNat

end

end A082316.P7036444081424341112

/-! ## A082316.P13712009963307960423

`A082314(A069772(A069771(n)))`
-/

namespace A082316.P13712009963307960423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A069772 (A069771 n).toNat).toNat

end

end A082316.P13712009963307960423

/-! ## A082316.P3735308721628480497

`A082314(A082315(A082314(n)))`
-/

namespace A082316.P3735308721628480497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A082315 (A082314 n).toNat).toNat

end

end A082316.P3735308721628480497

/-! ## A082316.P14130859921389733469

`A069889(A069888(n))`
-/

namespace A082316.P14130859921389733469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069889 (A069888 n).toNat

end

end A082316.P14130859921389733469

/-! ## A082316.P17259758903184416763

`A082318(A057501(n))`
-/

namespace A082316.P17259758903184416763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082318 (A057501 n).toNat

end

end A082316.P17259758903184416763

/-! ## A082316.P16278012832357969320

`A057505(A082333(n))`
-/

namespace A082316.P16278012832357969320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A082333 n).toNat

end

end A082316.P16278012832357969320

/-! ## A082316.P591196192062401439

`A082322(A082317(n))`
-/

namespace A082316.P591196192062401439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082322 (A082317 n).toNat

end

end A082316.P591196192062401439

/-! ## A082316.P16589834755976363427

`A057501(A057501(A082320(n)))`
-/

namespace A082316.P16589834755976363427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057501 (A082320 n).toNat).toNat

end

end A082316.P16589834755976363427

/-! ## A082316.P9837474146258450579

`A082314(A057501(A069889(n)))`
-/

namespace A082316.P9837474146258450579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A057501 (A069889 n).toNat).toNat

end

end A082316.P9837474146258450579

/-! ## A082316.P3027324030493293548

`A082315(A057501(A082322(n)))`
-/

namespace A082316.P3027324030493293548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082315 (A057501 (A082322 n).toNat).toNat

end

end A082316.P3027324030493293548

/-! ## A082316.P8285910903048617579

`A082317(A057501(A082324(n)))`
-/

namespace A082316.P8285910903048617579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082317 (A057501 (A082324 n).toNat).toNat

end

end A082316.P8285910903048617579

/-! ## A082316.P6950933430659286150

`A074683(A085174(A085169(n)))`
-/

namespace A082316.P6950933430659286150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A085174 (A085169 n).toNat).toNat

end

end A082316.P6950933430659286150

/-! ## A082316.P11351216150972106365

`A082319(A082318(A082318(n)))`
-/

namespace A082316.P11351216150972106365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082319 (A082318 (A082318 n).toNat).toNat

end

end A082316.P11351216150972106365

/-! ## A082316.P651395800764284398

`A082320(A082318(A082321(n)))`
-/

namespace A082316.P651395800764284398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082320 (A082318 (A082321 n).toNat).toNat

end

end A082316.P651395800764284398

/-! ## A082316.P10714455109501142104

`A082322(A082318(A082323(n)))`
-/

namespace A082316.P10714455109501142104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082322 (A082318 (A082323 n).toNat).toNat

end

end A082316.P10714455109501142104

/-! ## A082316.P12138619901633046633

`A069770(A057510(A069770(A057510(n))))`
-/

namespace A082316.P12138619901633046633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A057510 (A069770 (A057510 n).toNat).toNat).toNat

end

end A082316.P12138619901633046633

/-!
# A082317: Permutation A057501 applied thrice ("cubed").

The programs for A082317, there is no canonical definition to state claims against.
-/

/-! ## A082317.P12103448460683567630

`A057501(A082315(n))`
-/

namespace A082317.P12103448460683567630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A082315 n).toNat

end

end A082317.P12103448460683567630

/-! ## A082317.P3862720561712451633

`A057502(A082319(n))`
-/

namespace A082317.P3862720561712451633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A082319 n).toNat

end

end A082317.P3862720561712451633

/-! ## A082317.P4577651654882229315

`A082318(A082323(n))`
-/

namespace A082317.P4577651654882229315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082318 (A082323 n).toNat

end

end A082317.P4577651654882229315

/-! ## A082317.P16862243424294363665

`A069888(A082314(n))`
-/

namespace A082317.P16862243424294363665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A082314 n).toNat

end

end A082317.P16862243424294363665

/-! ## A082317.P13027662695163427558

`A082321(A082316(n))`
-/

namespace A082317.P13027662695163427558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082321 (A082316 n).toNat

end

end A082317.P13027662695163427558

/-! ## A082317.P2548429967685334110

`A082321(A082319(A082324(n)))`
-/

namespace A082317.P2548429967685334110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082321 (A082319 (A082324 n).toNat).toNat

end

end A082317.P2548429967685334110

/-! ## A082317.P10863499032667719906

`A082313(A069889(n))`
-/

namespace A082317.P10863499032667719906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A069889 n).toNat

end

end A082317.P10863499032667719906

/-! ## A082317.P11673981638513245750

`A057501(A057501(A057501(n)))`
-/

namespace A082317.P11673981638513245750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057501 (A057501 n).toNat).toNat

end

end A082317.P11673981638513245750

/-! ## A082317.P5981751611028933731

`A057164(A082318(A057164(n)))`
-/

namespace A082317.P5981751611028933731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A082318 (A057164 n).toNat).toNat

end

end A082317.P5981751611028933731

/-! ## A082317.P717473721081370805

`A082321(A057502(A057502(n)))`
-/

namespace A082317.P717473721081370805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082321 (A057502 (A057502 n).toNat).toNat

end

end A082317.P717473721081370805

/-! ## A082317.P10526645620566191936

`A082315(A082313(A069888(n)))`
-/

namespace A082317.P10526645620566191936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082315 (A082313 (A069888 n).toNat).toNat

end

end A082317.P10526645620566191936

/-! ## A082317.P9974143008593568914

`A085170(A085159(A074684(n)))`
-/

namespace A082317.P9974143008593568914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (A085159 (A074684 n).toNat).toNat

end

end A082317.P9974143008593568914

/-! ## A082317.P18381179914740519107

`A082323(A082315(A082322(n)))`
-/

namespace A082317.P18381179914740519107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082323 (A082315 (A082322 n).toNat).toNat

end

end A082317.P18381179914740519107

/-! ## A082317.P1989060196454888307

`A069772(A082316(A057502(A069772(n))))`
-/

namespace A082317.P1989060196454888307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A082316 (A057502 (A069772 n).toNat).toNat).toNat

end

end A082317.P1989060196454888307

/-!
# A082318: Permutation A057502 applied thrice ("cubed").

The programs for A082318, there is no canonical definition to state claims against.
-/

/-! ## A082318.P14432164951002039609

`A057502(A082316(n))`
-/

namespace A082318.P14432164951002039609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A082316 n).toNat

end

end A082318.P14432164951002039609

/-! ## A082318.P13892956491273157756

`A082322(A082315(n))`
-/

namespace A082318.P13892956491273157756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082322 (A082315 n).toNat

end

end A082318.P13892956491273157756

/-! ## A082318.P6874033200515388505

`A082322(A082320(A082323(n)))`
-/

namespace A082318.P6874033200515388505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082322 (A082320 (A082323 n).toNat).toNat

end

end A082318.P6874033200515388505

/-! ## A082318.P17558865614287376654

`A057501(A082320(n))`
-/

namespace A082318.P17558865614287376654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A082320 n).toNat

end

end A082318.P17558865614287376654

/-! ## A082318.P17992270344526599563

`A069889(A082313(n))`
-/

namespace A082318.P17992270344526599563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069889 (A082313 n).toNat

end

end A082318.P17992270344526599563

/-! ## A082318.P13420548927502632036

`A082314(A069888(n))`
-/

namespace A082318.P13420548927502632036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A069888 n).toNat

end

end A082318.P13420548927502632036

/-! ## A082318.P15620503602293533267

`A082324(A082317(n))`
-/

namespace A082318.P15620503602293533267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082324 (A082317 n).toNat

end

end A082318.P15620503602293533267

/-! ## A082318.P10193560371190775914

`A057502(A057502(A057502(n)))`
-/

namespace A082318.P10193560371190775914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A057502 (A057502 n).toNat).toNat

end

end A082318.P10193560371190775914

/-! ## A082318.P8658142448807016428

`A057164(A082317(A057164(n)))`
-/

namespace A082318.P8658142448807016428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A082317 (A057164 n).toNat).toNat

end

end A082318.P8658142448807016428

/-! ## A082318.P5746225656658346716

`A082322(A057501(A057501(n)))`
-/

namespace A082318.P5746225656658346716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082322 (A057501 (A057501 n).toNat).toNat

end

end A082318.P5746225656658346716

/-! ## A082318.P17681320713391106035

`A082315(A057501(A082324(n)))`
-/

namespace A082318.P17681320713391106035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082315 (A057501 (A082324 n).toNat).toNat

end

end A082318.P17681320713391106035

/-! ## A082318.P4990963473164546186

`A082324(A082316(A082321(n)))`
-/

namespace A082318.P4990963473164546186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082324 (A082316 (A082321 n).toNat).toNat

end

end A082318.P4990963473164546186

/-! ## A082318.P16140167640067612645

`A057164(A057501(A057163(A082333(n))))`
-/

namespace A082318.P16140167640067612645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057501 (A057163 (A082333 n).toNat).toNat).toNat

end

end A082318.P16140167640067612645

/-! ## A082318.P15904996198499629375

`A082316(A057163(A069774(A057163(n))))`
-/

namespace A082318.P15904996198499629375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082316 (A057163 (A069774 (A057163 n).toNat).toNat).toNat

end

end A082318.P15904996198499629375

/-! ## A082318.P11404467959531183798

`A082314(A057501(A057501(A069889(n))))`
-/

namespace A082318.P11404467959531183798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A057501 (A057501 (A069889 n).toNat).toNat).toNat

end

end A082318.P11404467959531183798

/-! ## A082318.P14646669078199295522

`A082314(A057501(A069772(A069771(n))))`
-/

namespace A082318.P14646669078199295522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A057501 (A069772 (A069771 n).toNat).toNat).toNat

end

end A082318.P14646669078199295522

/-! ## A082318.P2891616480655372151

`A082314(A069772(A069889(A069772(n))))`
-/

namespace A082318.P2891616480655372151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A069772 (A069889 (A069772 n).toNat).toNat).toNat

end

end A082318.P2891616480655372151

/-! ## A082318.P12151528630877158735

`A082314(A082315(A057501(A082314(n))))`
-/

namespace A082318.P12151528630877158735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A082315 (A057501 (A082314 n).toNat).toNat).toNat

end

end A082318.P12151528630877158735

/-!
# A082319: Permutation A057501 applied four times ("^4"), permutation A082315 squared.

The programs for A082319, there is no canonical definition to state claims against.
-/

/-! ## A082319.P7674831135804490179

`A082315(A082315(n))`
-/

namespace A082319.P7674831135804490179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082315 (A082315 n).toNat

end

end A082319.P7674831135804490179

/-! ## A082319.P17975503376298086676

`A082316(A082323(n))`
-/

namespace A082319.P17975503376298086676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082316 (A082323 n).toNat

end

end A082319.P17975503376298086676

/-! ## A082319.P9027630593976967038

`A082313(A082314(n))`
-/

namespace A082319.P9027630593976967038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082314 n).toNat

end

end A082319.P9027630593976967038

/-! ## A082319.P15866419664983144901

`A082313(A069772(A082313(A069772(n))))`
-/

namespace A082319.P15866419664983144901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A069772 (A082313 (A069772 n).toNat).toNat).toNat

end

end A082319.P15866419664983144901

/-! ## A082319.P6858309598853045915

`A082323(A057164(A082313(n)))`
-/

namespace A082319.P6858309598853045915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082323 (A057164 (A082313 n).toNat).toNat

end

end A082319.P6858309598853045915

/-! ## A082319.P12813930359096653914

`A082317(A057501(n))`
-/

namespace A082319.P12813930359096653914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082317 (A057501 n).toNat

end

end A082319.P12813930359096653914

/-! ## A082319.P13656350689379282566

`A082321(A057502(n))`
-/

namespace A082319.P13656350689379282566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082321 (A057502 n).toNat

end

end A082319.P13656350689379282566

/-! ## A082319.P14640315192874808444

`A082317(A057509(A069770(n)))`
-/

namespace A082319.P14640315192874808444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082317 (A057509 (A069770 n).toNat).toNat

end

end A082319.P14640315192874808444

/-! ## A082319.P15656381526506704787

`A082313(A057502(A069889(n)))`
-/

namespace A082319.P15656381526506704787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A057502 (A069889 n).toNat).toNat

end

end A082319.P15656381526506704787

/-! ## A082319.P15136237760980945283

`A082323(A057501(A082318(n)))`
-/

namespace A082319.P15136237760980945283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082323 (A057501 (A082318 n).toNat).toNat

end

end A082319.P15136237760980945283

/-! ## A082319.P16796021596645661855

`A082316(A057501(A082321(n)))`
-/

namespace A082319.P16796021596645661855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082316 (A057501 (A082321 n).toNat).toNat

end

end A082319.P16796021596645661855

/-! ## A082319.P6680171096367761958

`A082317(A082317(A082316(n)))`
-/

namespace A082319.P6680171096367761958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082317 (A082317 (A082316 n).toNat).toNat

end

end A082319.P6680171096367761958

/-! ## A082319.P9835751320956173591

`A082321(A082320(A082317(n)))`
-/

namespace A082319.P9835751320956173591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082321 (A082320 (A082317 n).toNat).toNat

end

end A082319.P9835751320956173591

/-! ## A082319.P10576620424301053881

`A082323(A082317(A082322(n)))`
-/

namespace A082319.P10576620424301053881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082323 (A082317 (A082322 n).toNat).toNat

end

end A082319.P10576620424301053881

/-! ## A082319.P16130091316753636477

`A082321(A082321(A082324(n)))`
-/

namespace A082319.P16130091316753636477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082321 (A082321 (A082324 n).toNat).toNat

end

end A082319.P16130091316753636477

/-! ## A082319.P11982574445942267339

`A082313(A057502(A057502(A057164(n))))`
-/

namespace A082319.P11982574445942267339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A057502 (A057502 (A057164 n).toNat).toNat).toNat

end

end A082319.P11982574445942267339

/-! ## A082319.P11909098674225801181

`A082317(A057509(A057502(A057509(n))))`
-/

namespace A082319.P11909098674225801181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082317 (A057509 (A057502 (A057509 n).toNat).toNat).toNat

end

end A082319.P11909098674225801181

/-! ## A082319.P5100265785527872904

`A082313(A082316(A057502(A069888(n))))`
-/

namespace A082319.P5100265785527872904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082316 (A057502 (A069888 n).toNat).toNat).toNat

end

end A082319.P5100265785527872904

/-!
# A082320: Permutation A057502 applied four times ("^4"), permutation A082316 squared.

The programs for A082320, there is no canonical definition to state claims against.
-/

/-! ## A082320.P13539464143902265598

`A082316(A082316(n))`
-/

namespace A082320.P13539464143902265598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082316 (A082316 n).toNat

end

end A082320.P13539464143902265598

/-! ## A082320.P3337766035319483653

`A082324(A082315(n))`
-/

namespace A082320.P3337766035319483653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082324 (A082315 n).toNat

end

end A082320.P3337766035319483653

/-! ## A082320.P14349553056382169432

`A082314(A082313(n))`
-/

namespace A082320.P14349553056382169432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A082313 n).toNat

end

end A082320.P14349553056382169432

/-! ## A082320.P10005472782617105282

`A057164(A082319(A057164(n)))`
-/

namespace A082320.P10005472782617105282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A082319 (A057164 n).toNat).toNat

end

end A082320.P10005472782617105282

/-! ## A082320.P3165944092434532079

`A082314(A069772(A082314(A069772(n))))`
-/

namespace A082320.P3165944092434532079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A069772 (A082314 (A069772 n).toNat).toNat).toNat

end

end A082320.P3165944092434532079

/-! ## A082320.P7203812032898465032

`A082314(A082315(A082315(A082314(n))))`
-/

namespace A082320.P7203812032898465032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A082315 (A082315 (A082314 n).toNat).toNat).toNat

end

end A082320.P7203812032898465032

/-! ## A082320.P603428690903037349

`A085170(A085160(A085160(A085169(n))))`
-/

namespace A082320.P603428690903037349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (A085160 (A085160 (A085169 n).toNat).toNat).toNat

end

end A082320.P603428690903037349

/-! ## A082320.P12078599691053803594

`A082322(A057501(n))`
-/

namespace A082320.P12078599691053803594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082322 (A057501 n).toNat

end

end A082320.P12078599691053803594

/-! ## A082320.P11798170715114268095

`A082318(A057502(n))`
-/

namespace A082320.P11798170715114268095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082318 (A057502 n).toNat

end

end A082320.P11798170715114268095

/-! ## A082320.P10100761079317731965

`A057501(A057501(A082324(n)))`
-/

namespace A082320.P10100761079317731965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057501 (A082324 n).toNat).toNat

end

end A082320.P10100761079317731965

/-! ## A082320.P6661570353391728817

`A082314(A057501(A069888(n)))`
-/

namespace A082320.P6661570353391728817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A057501 (A069888 n).toNat).toNat

end

end A082320.P6661570353391728817

/-! ## A082320.P11650125387774652452

`A082324(A057502(A082317(n)))`
-/

namespace A082320.P11650125387774652452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082324 (A057502 (A082317 n).toNat).toNat

end

end A082320.P11650125387774652452

/-! ## A082320.P16644433071833938986

`A082318(A082315(A082318(n)))`
-/

namespace A082320.P16644433071833938986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082318 (A082315 (A082318 n).toNat).toNat

end

end A082320.P16644433071833938986

/-! ## A082320.P8128517863275239973

`A082322(A082318(A082319(n)))`
-/

namespace A082320.P8128517863275239973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082322 (A082318 (A082319 n).toNat).toNat

end

end A082320.P8128517863275239973

/-! ## A082320.P712164877531368492

`A082324(A082318(A082321(n)))`
-/

namespace A082320.P712164877531368492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082324 (A082318 (A082321 n).toNat).toNat

end

end A082320.P712164877531368492

/-! ## A082320.P2470225127888668720

`A082323(A082322(A082322(n)))`
-/

namespace A082320.P2470225127888668720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082323 (A082322 (A082322 n).toNat).toNat

end

end A082320.P2470225127888668720

/-! ## A082320.P3376046189089974846

`A082314(A069888(A082314(A069889(n))))`
-/

namespace A082320.P3376046189089974846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A069888 (A082314 (A069889 n).toNat).toNat).toNat

end

end A082320.P3376046189089974846

/-! ## A082320.P7740937169260600650

`A057164(A057501(A057501(A057163(A082333(n)))))`
-/

namespace A082320.P7740937169260600650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057501 (A057501 (A057163 (A082333 n).toNat).toNat).toNat).toNat

end

end A082320.P7740937169260600650

/-!
# A082321: Permutation A057501 applied five times ("^5").

The programs for A082321, there is no canonical definition to state claims against.
-/

/-! ## A082321.P2421350206733426503

`A082315(A082317(n))`
-/

namespace A082321.P2421350206733426503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082315 (A082317 n).toNat

end

end A082321.P2421350206733426503

/-! ## A082321.P1807542573887932818

`A057501(A082319(n))`
-/

namespace A082321.P1807542573887932818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A082319 n).toNat

end

end A082321.P1807542573887932818

/-! ## A082321.P13975085810892479466

`A057502(A082323(n))`
-/

namespace A082321.P13975085810892479466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A082323 n).toNat

end

end A082321.P13975085810892479466

/-! ## A082321.P18127112391599699778

`A057501(A082313(A082314(n)))`
-/

namespace A082321.P18127112391599699778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A082313 (A082314 n).toNat).toNat

end

end A082321.P18127112391599699778

/-! ## A082321.P7617030410199903799

`A069888(A082314(A069772(A082314(A069771(n)))))`
-/

namespace A082321.P7617030410199903799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A082314 (A069772 (A082314 (A069771 n).toNat).toNat).toNat).toNat

end

end A082321.P7617030410199903799

/-! ## A082321.P9628151096962489297

`A057502(A069772(A082324(A069772(n))))`
-/

namespace A082321.P9628151096962489297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A069772 (A082324 (A069772 n).toNat).toNat).toNat

end

end A082321.P9628151096962489297

/-! ## A082321.P15612755746742841905

`A057501(A057164(A082324(A082313(n))))`
-/

namespace A082321.P15612755746742841905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057164 (A082324 (A082313 n).toNat).toNat).toNat

end

end A082321.P15612755746742841905

/-! ## A082321.P7604346177271764537

`A057164(A082322(A057164(n)))`
-/

namespace A082321.P7604346177271764537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A082322 (A057164 n).toNat).toNat

end

end A082321.P7604346177271764537

/-! ## A082321.P17761400632837429078

`A082319(A057164(A069889(n)))`
-/

namespace A082321.P17761400632837429078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082319 (A057164 (A069889 n).toNat).toNat

end

end A082321.P17761400632837429078

/-! ## A082321.P662108179372861883

`A082323(A082316(A057501(n)))`
-/

namespace A082321.P662108179372861883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082323 (A082316 (A057501 n).toNat).toNat

end

end A082321.P662108179372861883

/-! ## A082321.P7684376492696866729

`A082323(A082318(A082315(n)))`
-/

namespace A082321.P7684376492696866729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082323 (A082318 (A082315 n).toNat).toNat

end

end A082321.P7684376492696866729

/-! ## A082321.P1897989561831638534

`A082323(A082317(A082320(n)))`
-/

namespace A082321.P1897989561831638534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082323 (A082317 (A082320 n).toNat).toNat

end

end A082321.P1897989561831638534

/-! ## A082321.P5463673015786670372

`A082323(A082319(A082322(n)))`
-/

namespace A082321.P5463673015786670372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082323 (A082319 (A082322 n).toNat).toNat

end

end A082321.P5463673015786670372

/-! ## A082321.P6673124080004764532

`A082313(A082314(A082313(A069888(n))))`
-/

namespace A082321.P6673124080004764532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082314 (A082313 (A069888 n).toNat).toNat).toNat

end

end A082321.P6673124080004764532

/-! ## A082321.P8054834970986042370

`A082319(A082319(A082317(A082324(n))))`
-/

namespace A082321.P8054834970986042370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082319 (A082319 (A082317 (A082324 n).toNat).toNat).toNat

end

end A082321.P8054834970986042370

/-! ## A082321.P8183116914694537369

`A085170(A085159(A085159(A074684(n))))`
-/

namespace A082321.P8183116914694537369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (A085159 (A085159 (A074684 n).toNat).toNat).toNat

end

end A082321.P8183116914694537369

/-!
# A082322: Permutation A057502 applied five times ("^5").

The programs for A082322, there is no canonical definition to state claims against.
-/

/-! ## A082322.P93994538540830997

`A082316(A082318(n))`
-/

namespace A082322.P93994538540830997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082316 (A082318 n).toNat

end

end A082322.P93994538540830997

/-! ## A082322.P5820336322245291361

`A057501(A082324(n))`
-/

namespace A082322.P5820336322245291361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A082324 n).toNat

end

end A082322.P5820336322245291361

/-! ## A082322.P13733270582151260194

`A057502(A082320(n))`
-/

namespace A082322.P13733270582151260194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A082320 n).toNat

end

end A082322.P13733270582151260194

/-! ## A082322.P11652115103088778533

`A082318(A057164(A082313(n)))`
-/

namespace A082322.P11652115103088778533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082318 (A057164 (A082313 n).toNat).toNat

end

end A082322.P11652115103088778533

/-! ## A082322.P18309689522445354479

`A057501(A057164(A082323(A057164(n))))`
-/

namespace A082322.P18309689522445354479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057164 (A082323 (A057164 n).toNat).toNat).toNat

end

end A082322.P18309689522445354479

/-! ## A082322.P15547052394182620350

`A057164(A082321(A057164(n)))`
-/

namespace A082322.P15547052394182620350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A082321 (A057164 n).toNat).toNat

end

end A082322.P15547052394182620350

/-! ## A082322.P17387082665914577033

`A057164(A082319(A069888(n)))`
-/

namespace A082322.P17387082665914577033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A082319 (A069888 n).toNat).toNat

end

end A082322.P17387082665914577033

/-! ## A082322.P6921714797158387686

`A082314(A082313(A057502(n)))`
-/

namespace A082322.P6921714797158387686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A082313 (A057502 n).toNat).toNat

end

end A082322.P6921714797158387686

/-! ## A082322.P12254090622862792505

`A082320(A082318(A082315(n)))`
-/

namespace A082322.P12254090622862792505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082320 (A082318 (A082315 n).toNat).toNat

end

end A082322.P12254090622862792505

/-! ## A082322.P920399388358560525

`A082324(A082317(A082316(n)))`
-/

namespace A082322.P920399388358560525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082324 (A082317 (A082316 n).toNat).toNat

end

end A082322.P920399388358560525

/-! ## A082322.P17359398724878688450

`A082324(A082318(A082319(n)))`
-/

namespace A082322.P17359398724878688450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082324 (A082318 (A082319 n).toNat).toNat

end

end A082322.P17359398724878688450

/-! ## A082322.P12280007440686749620

`A082324(A082320(A082321(n)))`
-/

namespace A082322.P12280007440686749620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082324 (A082320 (A082321 n).toNat).toNat

end

end A082322.P12280007440686749620

/-! ## A082322.P4185436412336957490

`A082324(A069772(A057502(A069772(n))))`
-/

namespace A082322.P4185436412336957490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082324 (A069772 (A057502 (A069772 n).toNat).toNat).toNat

end

end A082322.P4185436412336957490

/-! ## A082322.P8050665600691420126

`A082314(A082313(A082314(A069889(n))))`
-/

namespace A082322.P8050665600691420126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A082313 (A082314 (A069889 n).toNat).toNat).toNat

end

end A082322.P8050665600691420126

/-! ## A082322.P11762512797124422908

`A082320(A082320(A082318(A082323(n))))`
-/

namespace A082322.P11762512797124422908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082320 (A082320 (A082318 (A082323 n).toNat).toNat).toNat

end

end A082322.P11762512797124422908

/-! ## A082322.P12759196105050422769

`A082314(A069888(A082314(A069772(A069771(n)))))`
-/

namespace A082322.P12759196105050422769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A069888 (A082314 (A069772 (A069771 n).toNat).toNat).toNat).toNat

end

end A082322.P12759196105050422769

/-! ## A082322.P15119439583788781738

`A082314(A082315(A082315(A057501(A082314(n)))))`
-/

namespace A082322.P15119439583788781738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A082315 (A082315 (A057501 (A082314 n).toNat).toNat).toNat).toNat

end

end A082322.P15119439583788781738

/-! ## A082322.P7720800178828304306

`A085170(A085160(A085160(A085160(A074684(n)))))`
-/

namespace A082322.P7720800178828304306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (A085160 (A085160 (A085160 (A074684 n).toNat).toNat).toNat).toNat

end

end A082322.P7720800178828304306

/-!
# A082323: Permutation A057501 applied six times ("^6"), permutation A082317 squared, permutation A082315 cubed.

The programs for A082323, there is no canonical definition to state claims against.
-/

/-! ## A082323.P25528650391445017

`A082315(A082315(A082315(n)))`
-/

namespace A082323.P25528650391445017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082315 (A082315 (A082315 n).toNat).toNat

end

end A082323.P25528650391445017

/-! ## A082323.P4960486483202031341

`A082317(A082317(n))`
-/

namespace A082323.P4960486483202031341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082317 (A082317 n).toNat

end

end A082323.P4960486483202031341

/-! ## A082323.P14266520562852970902

`A082319(A082315(n))`
-/

namespace A082323.P14266520562852970902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082319 (A082315 n).toNat

end

end A082323.P14266520562852970902

/-! ## A082323.P8679190215675158886

`A082319(A057164(A082314(n)))`
-/

namespace A082323.P8679190215675158886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082319 (A057164 (A082314 n).toNat).toNat

end

end A082323.P8679190215675158886

/-! ## A082323.P13922451595002073277

`A069772(A082324(A069772(n)))`
-/

namespace A082323.P13922451595002073277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A082324 (A069772 n).toNat).toNat

end

end A082323.P13922451595002073277

/-! ## A082323.P4276883171023573574

`A057164(A082324(A057164(n)))`
-/

namespace A082323.P4276883171023573574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A082324 (A057164 n).toNat).toNat

end

end A082323.P4276883171023573574

/-! ## A082323.P16477318214441850564

`A082313(A082324(A082313(n)))`
-/

namespace A082323.P16477318214441850564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082324 (A082313 n).toNat).toNat

end

end A082323.P16477318214441850564

/-! ## A082323.P2969446803313134049

`A082319(A082319(A082316(n)))`
-/

namespace A082323.P2969446803313134049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082319 (A082319 (A082316 n).toNat).toNat

end

end A082323.P2969446803313134049

/-! ## A082323.P11635489716597248743

`A082321(A057501(n))`
-/

namespace A082323.P11635489716597248743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082321 (A057501 n).toNat

end

end A082323.P11635489716597248743

/-! ## A082323.P2589983937176899640

`A057501(A057501(A082319(n)))`
-/

namespace A082323.P2589983937176899640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057501 (A082319 n).toNat).toNat

end

end A082323.P2589983937176899640

/-! ## A082323.P10300629003867022948

`A082321(A082319(A082318(n)))`
-/

namespace A082323.P10300629003867022948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082321 (A082319 (A082318 n).toNat).toNat

end

end A082323.P10300629003867022948

/-! ## A082323.P12963809238001296947

`A082321(A082321(A082320(n)))`
-/

namespace A082323.P12963809238001296947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082321 (A082321 (A082320 n).toNat).toNat

end

end A082323.P12963809238001296947

/-! ## A082323.P6680822370157623835

`A082319(A082319(A057502(A057502(n))))`
-/

namespace A082323.P6680822370157623835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082319 (A082319 (A057502 (A057502 n).toNat).toNat).toNat

end

end A082323.P6680822370157623835

/-! ## A082323.P14073951321831447093

`A082313(A069889(A082313(A069889(n))))`
-/

namespace A082323.P14073951321831447093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A069889 (A082313 (A069889 n).toNat).toNat).toNat

end

end A082323.P14073951321831447093

/-! ## A082323.P15267785238380142442

`A082313(A057502(A082313(A082321(n))))`
-/

namespace A082323.P15267785238380142442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A057502 (A082313 (A082321 n).toNat).toNat).toNat

end

end A082323.P15267785238380142442

/-! ## A082323.P2025305564015809866

`A082313(A082314(A082313(A057502(A069888(n)))))`
-/

namespace A082323.P2025305564015809866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082314 (A082313 (A057502 (A069888 n).toNat).toNat).toNat).toNat

end

end A082323.P2025305564015809866

/-! ## A082323.P8310107554107105111

`A074683(A085159(A085159(A085159(A074684(n)))))`
-/

namespace A082323.P8310107554107105111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A085159 (A085159 (A085159 (A074684 n).toNat).toNat).toNat).toNat

end

end A082323.P8310107554107105111

/-!
# A082324: Permutation A057502 applied six times ("^6"), permutation A082318 squared, permutation A082316 cubed.

The programs for A082324, there is no canonical definition to state claims against.
-/

/-! ## A082324.P8931045867128205733

`A082316(A082316(A082316(n)))`
-/

namespace A082324.P8931045867128205733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082316 (A082316 (A082316 n).toNat).toNat

end

end A082324.P8931045867128205733

/-! ## A082324.P5989286910984649797

`A082318(A082318(n))`
-/

namespace A082324.P5989286910984649797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082318 (A082318 n).toNat

end

end A082324.P5989286910984649797

/-! ## A082324.P13840739443115022462

`A082320(A082316(n))`
-/

namespace A082324.P13840739443115022462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082320 (A082316 n).toNat

end

end A082324.P13840739443115022462

/-! ## A082324.P13824550914705544109

`A057164(A082323(A057164(n)))`
-/

namespace A082324.P13824550914705544109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A082323 (A057164 n).toNat).toNat

end

end A082324.P13824550914705544109

/-! ## A082324.P2998453286417203762

`A082314(A082315(A082313(n)))`
-/

namespace A082324.P2998453286417203762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A082315 (A082313 n).toNat).toNat

end

end A082324.P2998453286417203762

/-! ## A082324.P3816481238841245911

`A082320(A082320(A082315(n)))`
-/

namespace A082324.P3816481238841245911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082320 (A082320 (A082315 n).toNat).toNat

end

end A082324.P3816481238841245911

/-! ## A082324.P17416782333685581742

`A082322(A057502(n))`
-/

namespace A082324.P17416782333685581742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082322 (A057502 n).toNat

end

end A082324.P17416782333685581742

/-! ## A082324.P1618698643311071590

`A057502(A057502(A082320(n)))`
-/

namespace A082324.P1618698643311071590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A057502 (A082320 n).toNat).toNat

end

end A082324.P1618698643311071590

/-! ## A082324.P11454890992250921703

`A082322(A082320(A082317(n)))`
-/

namespace A082324.P11454890992250921703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082322 (A082320 (A082317 n).toNat).toNat

end

end A082324.P11454890992250921703

/-! ## A082324.P8565898917421539714

`A082322(A082322(A082319(n)))`
-/

namespace A082324.P8565898917421539714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082322 (A082322 (A082319 n).toNat).toNat

end

end A082324.P8565898917421539714

/-! ## A082324.P9614142687974126023

`A082320(A082320(A057501(A057501(n))))`
-/

namespace A082324.P9614142687974126023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082320 (A082320 (A057501 (A057501 n).toNat).toNat).toNat

end

end A082324.P9614142687974126023

/-! ## A082324.P16203705522131899488

`A082314(A082315(A057501(A069888(n))))`
-/

namespace A082324.P16203705522131899488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A082315 (A057501 (A069888 n).toNat).toNat).toNat

end

end A082324.P16203705522131899488

/-! ## A082324.P10142026267113596382

`A082314(A082319(A057501(A069889(n))))`
-/

namespace A082324.P10142026267113596382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 (A082319 (A057501 (A069889 n).toNat).toNat).toNat

end

end A082324.P10142026267113596382

/-! ## A082324.P13727083580083238613

`A082322(A082317(A057501(A082322(n))))`
-/

namespace A082324.P13727083580083238613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082322 (A082317 (A057501 (A082322 n).toNat).toNat).toNat

end

end A082324.P13727083580083238613

/-!
# A082325: Permutation of natural numbers: A057163-conjugate of A057511.

The programs for A082325, there is no canonical definition to state claims against.
-/

/-! ## A082325.P17233452629406606947

`A057163(A057511(A057163(n)))`
-/

namespace A082325.P17233452629406606947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057511 (A057163 n).toNat).toNat

end

end A082325.P17233452629406606947

/-! ## A082325.P4969036214012366370

`A069787(A082326(A069787(n)))`
-/

namespace A082325.P4969036214012366370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A082326 (A069787 n).toNat).toNat

end

end A082325.P4969036214012366370

/-! ## A082325.P4733023477211568226

`A082360(A122350(n))`
-/

namespace A082325.P4733023477211568226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082360 (A122350 n).toNat

end

end A082325.P4733023477211568226

/-! ## A082325.P7192853082195390802

`A057163(A122357(n))`
-/

namespace A082325.P7192853082195390802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A122357 n).toNat

end

end A082325.P7192853082195390802

/-! ## A082325.P10999606498671867561

`A074681(A122354(n))`
-/

namespace A082325.P10999606498671867561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074681 (A122354 n).toNat

end

end A082325.P10999606498671867561

/-! ## A082325.P2449182185593330390

`A122313(A082326(A122313(n)))`
-/

namespace A082325.P2449182185593330390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122313 (A082326 (A122313 n).toNat).toNat

end

end A082325.P2449182185593330390

/-! ## A082325.P3393929862812535670

`A122297(A057163(n))`
-/

namespace A082325.P3393929862812535670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122297 (A057163 n).toNat

end

end A082325.P3393929862812535670

/-! ## A082325.P5409299594075670333

`A074681(A122301(A122353(A122301(n))))`
-/

namespace A082325.P5409299594075670333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074681 (A122301 (A122353 (A122301 n).toNat).toNat).toNat

end

end A082325.P5409299594075670333

/-!
# A082326: Permutation of natural numbers: A057163-conjugate of A057512.

The programs for A082326, there is no canonical definition to state claims against.
-/

/-! ## A082326.P1266511921827269877

`A057163(A057512(A057163(n)))`
-/

namespace A082326.P1266511921827269877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057512 (A057163 n).toNat).toNat

end

end A082326.P1266511921827269877

/-! ## A082326.P9281228293888415527

`A069787(A082325(A069787(n)))`
-/

namespace A082326.P9281228293888415527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A082325 (A069787 n).toNat).toNat

end

end A082326.P9281228293888415527

/-! ## A082326.P13683183765771202191

`A057163(A122298(n))`
-/

namespace A082326.P13683183765771202191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A122298 n).toNat

end

end A082326.P13683183765771202191

/-! ## A082326.P13076128312061657433

`A122349(A082359(n))`
-/

namespace A082326.P13076128312061657433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122349 (A082359 n).toNat

end

end A082326.P13076128312061657433

/-! ## A082326.P16215950457920313117

`A122314(A082325(A122314(n)))`
-/

namespace A082326.P16215950457920313117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122314 (A082325 (A122314 n).toNat).toNat

end

end A082326.P16215950457920313117

/-! ## A082326.P10549684930691710847

`A122358(A057163(n))`
-/

namespace A082326.P10549684930691710847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122358 (A057163 n).toNat

end

end A082326.P10549684930691710847

/-! ## A082326.P4474650280846023083

`A122353(A074682(n))`
-/

namespace A082326.P4474650280846023083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122353 (A074682 n).toNat

end

end A082326.P4474650280846023083

/-!
# A082327: Permutation of natural numbers induced by the contraction of Catalan bijection signature-permutation A082325.

The programs for A082327, there is no canonical definition to state claims against.
-/

/-! ## A082327.P10346230167682028852

`A082853(A082325(A081291(n)))`
-/

namespace A082327.P10346230167682028852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A082325 (A081291 n).toNat).toNat

end

end A082327.P10346230167682028852

/-! ## A082327.P10467578469996937587

`A082329(n+1)-1`
-/

namespace A082327.P10467578469996937587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082329 (n + 1) - 1

end

end A082327.P10467578469996937587

/-! ## A082327.P9296283889361259200

`A023443(A082329(n+1))`
-/

namespace A082327.P9296283889361259200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A082329 (n + 1)).toNat

end

end A082327.P9296283889361259200

/-! ## A082327.P15138007703111489202

`A023444(A082329(n+1)+1)`
-/

namespace A082327.P15138007703111489202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A082329 (n + 1) + 1).toNat

end

end A082327.P15138007703111489202

/-! ## A082327.P5433028514961108351

`A023445(A082329(n+1)+2)`
-/

namespace A082327.P5433028514961108351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A082329 (n + 1) + 2).toNat

end

end A082327.P5433028514961108351

/-! ## A082327.P7284453727532243948

`A046667(2*A082329(n+1))`
-/

namespace A082327.P7284453727532243948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A082329 (n + 1)).toNat

end

end A082327.P7284453727532243948

/-! ## A082327.P7719683167123077698

`A057918(A082329(n+1)²)`
-/

namespace A082327.P7719683167123077698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A082329 (n + 1) ^ 2).toNat

end

end A082327.P7719683167123077698

/-! ## A082327.P10705738183076098657

`A088226(A082329(n+1)²)`
-/

namespace A082327.P10705738183076098657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A082329 (n + 1) ^ 2).toNat

end

end A082327.P10705738183076098657

/-! ## A082327.P5239824447155994395

`A214526(A082329(n+1)²)`
-/

namespace A082327.P5239824447155994395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A082329 (n + 1) ^ 2).toNat

end

end A082327.P5239824447155994395

/-! ## A082327.P9886393138955703719

`A259361(A082329(n+1)²)`
-/

namespace A082327.P9886393138955703719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A082329 (n + 1) ^ 2).toNat

end

end A082327.P9886393138955703719

/-!
# A082328: Permutation of natural numbers induced by the contraction of Catalan bijection signature-permutation A082326.

The programs for A082328, there is no canonical definition to state claims against.
-/

/-! ## A082328.P9991058683155128008

`A082853(A082326(A081291(n)))`
-/

namespace A082328.P9991058683155128008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A082326 (A081291 n).toNat).toNat

end

end A082328.P9991058683155128008

/-! ## A082328.P9263842716065220799

`A082330(n+1)-1`
-/

namespace A082328.P9263842716065220799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082330 (n + 1) - 1

end

end A082328.P9263842716065220799

/-! ## A082328.P1853512753763294092

`A023443(A082330(n+1))`
-/

namespace A082328.P1853512753763294092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A082330 (n + 1)).toNat

end

end A082328.P1853512753763294092

/-! ## A082328.P6103249369890933911

`A023444(A082330(n+1)+1)`
-/

namespace A082328.P6103249369890933911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A082330 (n + 1) + 1).toNat

end

end A082328.P6103249369890933911

/-! ## A082328.P886183424983505586

`A023452(A082330(n+1)+9)`
-/

namespace A082328.P886183424983505586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023452 (A082330 (n + 1) + 9).toNat

end

end A082328.P886183424983505586

/-! ## A082328.P11331354347046303835

`A046667(2*A082330(n+1))`
-/

namespace A082328.P11331354347046303835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A082330 (n + 1)).toNat

end

end A082328.P11331354347046303835

/-! ## A082328.P5050157581301967031

`A057918(A082330(n+1)²)`
-/

namespace A082328.P5050157581301967031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A082330 (n + 1) ^ 2).toNat

end

end A082328.P5050157581301967031

/-! ## A082328.P6143528299637995493

`A088226(A082330(n+1)²)`
-/

namespace A082328.P6143528299637995493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A082330 (n + 1) ^ 2).toNat

end

end A082328.P6143528299637995493

/-! ## A082328.P13295652344753044024

`A214526(A082330(n+1)²)`
-/

namespace A082328.P13295652344753044024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A082330 (n + 1) ^ 2).toNat

end

end A082328.P13295652344753044024

/-! ## A082328.P12674284372885905928

`A259361(A082330(n+1)²)`
-/

namespace A082328.P12674284372885905928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A082330 (n + 1) ^ 2).toNat

end

end A082328.P12674284372885905928

/-!
# A082329: Permutation of positive natural numbers: a(n) = A082327(n-1)+1.

The programs for A082329, there is no canonical definition to state claims against.
-/

/-! ## A082329.P14223302577217546987

`A082327(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082329.P14223302577217546987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082327 n + 1

end

end A082329.P14223302577217546987

/-! ## A082329.P3181856071582894103

`A008619(2*A082327(n))`
-/

namespace A082329.P3181856071582894103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A082327 n).toNat

end

end A082329.P3181856071582894103

/-! ## A082329.P17756738708908838083

`A027656(2*A082327(n))`
-/

namespace A082329.P17756738708908838083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A082327 n).toNat

end

end A082329.P17756738708908838083

/-! ## A082329.P18013732313099295811

`A028242(2*A082327(n))`
-/

namespace A082329.P18013732313099295811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A082327 n).toNat

end

end A082329.P18013732313099295811

/-! ## A082329.P14333455896113063662

`A029579(2*A082327(n))`
-/

namespace A082329.P14333455896113063662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A082327 n).toNat

end

end A082329.P14333455896113063662

/-! ## A082329.P14975542395389361842

`A106466(2*A082327(n))`
-/

namespace A082329.P14975542395389361842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (2 * A082327 n).toNat

end

end A082329.P14975542395389361842

/-! ## A082329.P6149314352950480117

`A131732(2*A082327(n))`
-/

namespace A082329.P6149314352950480117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * A082327 n).toNat

end

end A082329.P6149314352950480117

/-! ## A082329.P769713327194139263

`A082854(A082325(A081291(n)))`
-/

namespace A082329.P769713327194139263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082854 (A082325 (A081291 n).toNat).toNat

end

end A082329.P769713327194139263

/-! ## A082329.P351924624366956840

`A008611(3*A082327(n))`
-/

namespace A082329.P351924624366956840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A082327 n).toNat

end

end A082329.P351924624366956840

/-! ## A082329.P5889218845544690106

`A008620(3*A082327(n))`
-/

namespace A082329.P5889218845544690106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A082327 n).toNat

end

end A082329.P5889218845544690106

/-! ## A082329.P7522297859005486619

`A008621(4*A082327(n))`
-/

namespace A082329.P7522297859005486619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A082327 n).toNat

end

end A082329.P7522297859005486619

/-!
# A082330: Permutation of positive natural numbers: a(n) = A082328(n-1)+1.

The programs for A082330, there is no canonical definition to state claims against.
-/

/-! ## A082330.P4854330416068491859

`A082328(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082330.P4854330416068491859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082328 n + 1

end

end A082330.P4854330416068491859

/-! ## A082330.P9397981971172395156

`A008619(2*A082328(n))`
-/

namespace A082330.P9397981971172395156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A082328 n).toNat

end

end A082330.P9397981971172395156

/-! ## A082330.P9591828259237553336

`A027656(2*A082328(n))`
-/

namespace A082330.P9591828259237553336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A082328 n).toNat

end

end A082330.P9591828259237553336

/-! ## A082330.P11392948236020614345

`A028242(2*A082328(n))`
-/

namespace A082330.P11392948236020614345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A082328 n).toNat

end

end A082330.P11392948236020614345

/-! ## A082330.P13035700348640580664

`A029579(2*A082328(n))`
-/

namespace A082330.P13035700348640580664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A082328 n).toNat

end

end A082330.P13035700348640580664

/-! ## A082330.P8316677074205754416

`A131732(2*A082328(n))`
-/

namespace A082330.P8316677074205754416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * A082328 n).toNat

end

end A082330.P8316677074205754416

/-! ## A082330.P8942283011290022238

`A158416(2*A082328(n))`
-/

namespace A082330.P8942283011290022238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (2 * A082328 n).toNat

end

end A082330.P8942283011290022238

/-! ## A082330.P15142998708866975038

`A082854(A082326(A081291(n)))`
-/

namespace A082330.P15142998708866975038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082854 (A082326 (A081291 n).toNat).toNat

end

end A082330.P15142998708866975038

/-! ## A082330.P12270633979834767353

`A008611(3*A082328(n))`
-/

namespace A082330.P12270633979834767353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A082328 n).toNat

end

end A082330.P12270633979834767353

/-! ## A082330.P2064751133075289952

`A008620(3*A082328(n))`
-/

namespace A082330.P2064751133075289952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A082328 n).toNat

end

end A082330.P2064751133075289952

/-! ## A082330.P1395334098665937828

`A008621(4*A082328(n))`
-/

namespace A082330.P1395334098665937828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A082328 n).toNat

end

end A082330.P1395334098665937828

/-!
# A082331: Permutation of natural numbers induced by the composition of involutions A057163 and A069888.

The programs for A082331, there is no canonical definition to state claims against.
-/

/-! ## A082331.P4466250072490474888

`A057506(A057502(n))`
-/

namespace A082331.P4466250072490474888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057502 n).toNat

end

end A082331.P4466250072490474888

/-! ## A082331.P13943727446138863476

`A057163(A069888(n))`
-/

namespace A082331.P13943727446138863476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069888 n).toNat

end

end A082331.P13943727446138863476

/-! ## A082331.P6095913350292750200

`A069773(A057506(n))`
-/

namespace A082331.P6095913350292750200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069773 (A057506 n).toNat

end

end A082331.P6095913350292750200

/-! ## A082331.P10341628235310208584

`A082333(A057501(n))`
-/

namespace A082331.P10341628235310208584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082333 (A057501 n).toNat

end

end A082331.P10341628235310208584

/-! ## A082331.P3644696140686254267

`A069774(A082333(n))`
-/

namespace A082331.P3644696140686254267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069774 (A082333 n).toNat

end

end A082331.P3644696140686254267

/-! ## A082331.P5234331387096938749

`A057163(A057501(A057164(n)))`
-/

namespace A082331.P5234331387096938749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057501 (A057164 n).toNat).toNat

end

end A082331.P5234331387096938749

/-! ## A082331.P14253756527763861871

`A057163(A082332(A057163(n)))`
-/

namespace A082331.P14253756527763861871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082332 (A057163 n).toNat).toNat

end

end A082331.P14253756527763861871

/-! ## A082331.P9752875571183700913

`A057163(A057502(A082313(n)))`
-/

namespace A082331.P9752875571183700913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057502 (A082313 n).toNat).toNat

end

end A082331.P9752875571183700913

/-! ## A082331.P8082595467180831332

`A069774(A057506(A082316(n)))`
-/

namespace A082331.P8082595467180831332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069774 (A057506 (A082316 n).toNat).toNat

end

end A082331.P8082595467180831332

/-! ## A082331.P5486660262565354907

`A082333(A057502(A082315(n)))`
-/

namespace A082331.P5486660262565354907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082333 (A057502 (A082315 n).toNat).toNat

end

end A082331.P5486660262565354907

/-! ## A082331.P1611210566291806606

`A057163(A057501(A057501(A069889(n))))`
-/

namespace A082331.P1611210566291806606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057501 (A057501 (A069889 n).toNat).toNat).toNat

end

end A082331.P1611210566291806606

/-! ## A082331.P4902094369523291306

`A082333(A082314(A057502(A082314(n))))`
-/

namespace A082331.P4902094369523291306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082333 (A082314 (A057502 (A082314 n).toNat).toNat).toNat

end

end A082331.P4902094369523291306

/-! ## A082331.P7212959928892998762

`A069888(A082332(A082332(A069888(A082332(n)))))`
-/

namespace A082331.P7212959928892998762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A082332 (A082332 (A069888 (A082332 n).toNat).toNat).toNat).toNat

end

end A082331.P7212959928892998762

/-! ## A082331.P837550581642073763

`A082333(A082313(A082332(A082313(A082334(n)))))`
-/

namespace A082331.P837550581642073763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082333 (A082313 (A082332 (A082313 (A082334 n).toNat).toNat).toNat).toNat

end

end A082331.P837550581642073763

/-!
# A082332: Permutation of natural numbers induced by the composition of involutions A069888 and A057163.

The programs for A082332, there is no canonical definition to state claims against.
-/

/-! ## A082332.P8555905412567668648

`A069888(A057163(n))`
-/

namespace A082332.P8555905412567668648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A057163 n).toNat

end

end A082332.P8555905412567668648

/-! ## A082332.P3341170952646873701

`A057501(A057505(n))`
-/

namespace A082332.P3341170952646873701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057505 n).toNat

end

end A082332.P3341170952646873701

/-! ## A082332.P8838885352597904939

`A057505(A069774(n))`
-/

namespace A082332.P8838885352597904939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A069774 n).toNat

end

end A082332.P8838885352597904939

/-! ## A082332.P3986611676355288933

`A057502(A082334(n))`
-/

namespace A082332.P3986611676355288933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A082334 n).toNat

end

end A082332.P3986611676355288933

/-! ## A082332.P10900830704036910266

`A082334(A069773(n))`
-/

namespace A082332.P10900830704036910266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082334 (A069773 n).toNat

end

end A082332.P10900830704036910266

/-! ## A082332.P13839483618833256373

`A057501(A057163(A069787(n)))`
-/

namespace A082332.P13839483618833256373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057163 (A069787 n).toNat).toNat

end

end A082332.P13839483618833256373

/-! ## A082332.P1808807245481558695

`A057501(A071661(A057506(n)))`
-/

namespace A082332.P1808807245481558695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A071661 (A057506 n).toNat).toNat

end

end A082332.P1808807245481558695

/-! ## A082332.P5977948717024576510

`A069888(A082331(A069888(n)))`
-/

namespace A082332.P5977948717024576510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A082331 (A069888 n).toNat).toNat

end

end A082332.P5977948717024576510

/-! ## A082332.P6485374213919115510

`A069888(A082333(A082313(n)))`
-/

namespace A082332.P6485374213919115510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A082333 (A082313 n).toNat).toNat

end

end A082332.P6485374213919115510

/-! ## A082332.P6513843922785100832

`A057501(A057164(A057506(A057164(n))))`
-/

namespace A082332.P6513843922785100832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057164 (A057506 (A057164 n).toNat).toNat).toNat

end

end A082332.P6513843922785100832

/-! ## A082332.P2098484093355619083

`A069888(A082333(A069888(A057502(n))))`
-/

namespace A082332.P2098484093355619083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A082333 (A069888 (A057502 n).toNat).toNat).toNat

end

end A082332.P2098484093355619083

/-! ## A082332.P5283951987647217212

`A057501(A057164(A082331(A082313(A057501(n)))))`
-/

namespace A082332.P5283951987647217212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057164 (A082331 (A082313 (A057501 n).toNat).toNat).toNat).toNat

end

end A082332.P5283951987647217212

/-! ## A082332.P1217092616047221233

`A057163(A082331(A082331(A057163(A082331(n)))))`
-/

namespace A082332.P1217092616047221233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082331 (A082331 (A057163 (A082331 n).toNat).toNat).toNat).toNat

end

end A082332.P1217092616047221233

/-! ## A082332.P7122954926993405008

`A069888(A082333(A082315(A082315(A082314(n)))))`
-/

namespace A082332.P7122954926993405008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A082333 (A082315 (A082315 (A082314 n).toNat).toNat).toNat).toNat

end

end A082332.P7122954926993405008

/-!
# A082333: Permutation of natural numbers induced by the composition of involutions A057163 and A082313.

The programs for A082333, there is no canonical definition to state claims against.
-/

/-! ## A082333.P3464079697926101675

`A057163(A082313(n))`
-/

namespace A082333.P3464079697926101675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082313 n).toNat

end

end A082333.P3464079697926101675

/-! ## A082333.P14946938916201594244

`A057506(A082316(n))`
-/

namespace A082333.P14946938916201594244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A082316 n).toNat

end

end A082333.P14946938916201594244

/-! ## A082333.P17948114183497087900

`A082331(A057502(n))`
-/

namespace A082333.P17948114183497087900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A057502 n).toNat

end

end A082333.P17948114183497087900

/-! ## A082333.P3096213201804343821

`A069773(A082331(n))`
-/

namespace A082333.P3096213201804343821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069773 (A082331 n).toNat

end

end A082333.P3096213201804343821

/-! ## A082333.P15199842786667206445

`A057163(A057501(A069888(n)))`
-/

namespace A082333.P15199842786667206445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057501 (A069888 n).toNat).toNat

end

end A082333.P15199842786667206445

/-! ## A082333.P9887896150826533768

`A057163(A082334(A057163(n)))`
-/

namespace A082333.P9887896150826533768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082334 (A057163 n).toNat).toNat

end

end A082333.P9887896150826533768

/-! ## A082333.P3265478963045819789

`A069773(A069773(A057506(n)))`
-/

namespace A082333.P3265478963045819789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069773 (A069773 (A057506 n).toNat).toNat

end

end A082333.P3265478963045819789

/-! ## A082333.P2990889689393285890

`A082331(A069889(A057164(n)))`
-/

namespace A082333.P2990889689393285890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A069889 (A057164 n).toNat).toNat

end

end A082333.P2990889689393285890

/-! ## A082333.P3411896743891595504

`A082331(A057164(A082313(A057501(n))))`
-/

namespace A082333.P3411896743891595504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A057164 (A082313 (A057501 n).toNat).toNat).toNat

end

end A082333.P3411896743891595504

/-! ## A082333.P17885496701452502139

`A082331(A069772(A057501(A069772(n))))`
-/

namespace A082333.P17885496701452502139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A069772 (A057501 (A069772 n).toNat).toNat).toNat

end

end A082333.P17885496701452502139

/-! ## A082333.P11701613787743607212

`A082331(A069889(A057501(A069889(n))))`
-/

namespace A082333.P11701613787743607212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A069889 (A057501 (A069889 n).toNat).toNat).toNat

end

end A082333.P11701613787743607212

/-! ## A082333.P2277124811054163355

`A082331(A069889(A069772(A069771(n))))`
-/

namespace A082333.P2277124811054163355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A069889 (A069772 (A069771 n).toNat).toNat).toNat

end

end A082333.P2277124811054163355

/-! ## A082333.P12728572883768545884

`A082331(A069888(A082334(A069888(A082332(n)))))`
-/

namespace A082333.P12728572883768545884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A069888 (A082334 (A069888 (A082332 n).toNat).toNat).toNat).toNat

end

end A082333.P12728572883768545884

/-! ## A082333.P11291928627694581246

`A082313(A082334(A082334(A082313(A082334(n)))))`
-/

namespace A082333.P11291928627694581246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082334 (A082334 (A082313 (A082334 n).toNat).toNat).toNat).toNat

end

end A082333.P11291928627694581246

/-!
# A082334: Permutation of natural numbers induced by the composition of involutions A082313 and A057163.

The programs for A082334, there is no canonical definition to state claims against.
-/

/-! ## A082334.P3083933267657962568

`A082313(A057163(n))`
-/

namespace A082334.P3083933267657962568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A057163 n).toNat

end

end A082334.P3083933267657962568

/-! ## A082334.P964884669145496295

`A082315(A057505(n))`
-/

namespace A082334.P964884669145496295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082315 (A057505 n).toNat

end

end A082334.P964884669145496295

/-! ## A082334.P607982574289187585

`A057501(A082332(n))`
-/

namespace A082334.P607982574289187585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A082332 n).toNat

end

end A082334.P607982574289187585

/-! ## A082334.P10374583740793150959

`A082332(A069774(n))`
-/

namespace A082334.P10374583740793150959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082332 (A069774 n).toNat

end

end A082334.P10374583740793150959

/-! ## A082334.P1356214378494373031

`A082313(A082331(A069888(n)))`
-/

namespace A082334.P1356214378494373031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082331 (A069888 n).toNat).toNat

end

end A082334.P1356214378494373031

/-! ## A082334.P2104399473033096162

`A082313(A082333(A082313(n)))`
-/

namespace A082334.P2104399473033096162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082333 (A082313 n).toNat).toNat

end

end A082334.P2104399473033096162

/-! ## A082334.P11223777631896937349

`A057163(A069773(A069773(A069787(n))))`
-/

namespace A082334.P11223777631896937349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069773 (A069773 (A069787 n).toNat).toNat).toNat

end

end A082334.P11223777631896937349

/-! ## A082334.P6553479330870606620

`A082313(A082331(A057501(A057164(n))))`
-/

namespace A082334.P6553479330870606620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082331 (A057501 (A057164 n).toNat).toNat).toNat

end

end A082334.P6553479330870606620

/-! ## A082334.P12799631346593424129

`A082313(A082331(A082313(A057501(n))))`
-/

namespace A082334.P12799631346593424129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082331 (A082313 (A057501 n).toNat).toNat).toNat

end

end A082334.P12799631346593424129

/-! ## A082334.P17527049703076002903

`A069888(A057502(A082333(A069888(A057502(n)))))`
-/

namespace A082334.P17527049703076002903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A057502 (A082333 (A069888 (A057502 n).toNat).toNat).toNat).toNat

end

end A082334.P17527049703076002903

/-! ## A082334.P1202871452444257616

`A069888(A057164(A082332(A069889(A069889(n)))))`
-/

namespace A082334.P1202871452444257616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A057164 (A082332 (A069889 (A069889 n).toNat).toNat).toNat).toNat

end

end A082334.P1202871452444257616

/-! ## A082334.P7001083341715007551

`A057163(A082333(A082331(A057163(A082331(n)))))`
-/

namespace A082334.P7001083341715007551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082333 (A082331 (A057163 (A082331 n).toNat).toNat).toNat).toNat

end

end A082334.P7001083341715007551

/-! ## A082334.P1496048481461179568

`A057163(A082333(A082333(A057163(A082333(n)))))`
-/

namespace A082334.P1496048481461179568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082333 (A082333 (A057163 (A082333 n).toNat).toNat).toNat).toNat

end

end A082334.P1496048481461179568

/-!
# A082335: Permutation of natural numbers induced by the Catalan bijection gma082335 acting on the parenthesizations encoded by A014486/A063171.

The programs for A082335, there is no canonical definition to state claims against.
-/

/-! ## A082335.P2826141026027668597

`A057163(A082336(A057163(n)))`
-/

namespace A082335.P2826141026027668597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082336 (A057163 n).toNat).toNat

end

end A082335.P2826141026027668597

/-! ## A082335.P15069586607713037834

`A073269(A082336(A073269(n)))`
-/

namespace A082335.P15069586607713037834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073269 (A082336 (A073269 n).toNat).toNat

end

end A082335.P15069586607713037834

/-! ## A082335.P14211842620266744432

`A074679(A082336(A074679(n)))`
-/

namespace A082335.P14211842620266744432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A082336 (A074679 n).toNat).toNat

end

end A082335.P14211842620266744432

/-! ## A082335.P12924552485129377415

`A082349(A082336(A082349(n)))`
-/

namespace A082335.P12924552485129377415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082349 (A082336 (A082349 n).toNat).toNat

end

end A082335.P12924552485129377415

/-! ## A082335.P15787645581649777362

`A089858(A082336(A089858(n)))`
-/

namespace A082335.P15787645581649777362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089858 (A082336 (A089858 n).toNat).toNat

end

end A082335.P15787645581649777362

/-! ## A082335.P17941191778942889333

`A123695(A082336(A123695(n)))`
-/

namespace A082335.P17941191778942889333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123695 (A082336 (A123695 n).toNat).toNat

end

end A082335.P17941191778942889333

/-!
# A082336: Permutation of natural numbers induced by the Catalan bijection gma082336 acting on the parenthesizations encoded by A014486/A063171.

The programs for A082336, there is no canonical definition to state claims against.
-/

/-! ## A082336.P10640144858738580245

`A057163(A082335(A057163(n)))`
-/

namespace A082336.P10640144858738580245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082335 (A057163 n).toNat).toNat

end

end A082336.P10640144858738580245

/-! ## A082336.P8899643369282402871

`A073270(A082335(A073270(n)))`
-/

namespace A082336.P8899643369282402871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (A082335 (A073270 n).toNat).toNat

end

end A082336.P8899643369282402871

/-! ## A082336.P17695980979804479784

`A074680(A082335(A074680(n)))`
-/

namespace A082336.P17695980979804479784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A082335 (A074680 n).toNat).toNat

end

end A082336.P17695980979804479784

/-! ## A082336.P469885824120703382

`A082350(A082335(A082350(n)))`
-/

namespace A082336.P469885824120703382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082350 (A082335 (A082350 n).toNat).toNat

end

end A082336.P469885824120703382

/-! ## A082336.P14661131038171115546

`A089861(A082335(A089861(n)))`
-/

namespace A082336.P14661131038171115546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089861 (A082335 (A089861 n).toNat).toNat

end

end A082336.P14661131038171115546

/-! ## A082336.P9039870193762030096

`A123500(A082335(A123500(n)))`
-/

namespace A082336.P9039870193762030096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123500 (A082335 (A123500 n).toNat).toNat

end

end A082336.P9039870193762030096

/-! ## A082336.P5297060722844073239

`A123696(A082335(A123696(n)))`
-/

namespace A082336.P5297060722844073239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123696 (A082335 (A123696 n).toNat).toNat

end

end A082336.P5297060722844073239

/-! ## A082336.P5732694151303200229

`A072796(A089862(A082335(A072796(A089862(n)))))`
-/

namespace A082336.P5732694151303200229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A089862 (A082335 (A072796 (A089862 n).toNat).toNat).toNat).toNat

end

end A082336.P5732694151303200229

/-! ## A082336.P14852982952011813681

`A089862(A082335(A074679(A089862(A074679(n)))))`
-/

namespace A082336.P14852982952011813681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089862 (A082335 (A074679 (A089862 (A074679 n).toNat).toNat).toNat).toNat

end

end A082336.P14852982952011813681

/-! ## A082336.P16563419872096295233

`A089862(A082335(A082335(A089862(A082335(n)))))`
-/

namespace A082336.P16563419872096295233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089862 (A082335 (A082335 (A089862 (A082335 n).toNat).toNat).toNat).toNat

end

end A082336.P16563419872096295233

/-!
# A082339: Permutation of natural numbers induced by the Catalan bijection gma082339 acting on the parenthesizations encoded by A014486/A063171.

The programs for A082339, there is no canonical definition to state claims against.
-/

/-! ## A082339.P13542374112591452487

`A122282(A130353(n))`
-/

namespace A082339.P13542374112591452487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A130353 n).toNat

end

end A082339.P13542374112591452487

/-! ## A082339.P11800797897046373982

`A002260(A055469(n+1))*A130352(A130349(n))`
-/

namespace A082339.P11800797897046373982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A055469 (n + 1)).toNat * A130352 (A130349 n).toNat

end

end A082339.P11800797897046373982

/-! ## A082339.P16977406282071546757

`A082340(n)%∑[A034254(2*n+1)]`
-/

namespace A082339.P16977406282071546757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034254 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082340 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082339.P16977406282071546757

/-! ## A082339.P17907280017042164851

`A082340(n)%A058073(A052335(n))`
-/

namespace A082339.P17907280017042164851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082340 n) (A058073 (A052335 n).toNat)

end

end A082339.P17907280017042164851

/-! ## A082339.P7533289024360932308

`A242411(A329761(n+2))+A082340(n)`
-/

namespace A082339.P7533289024360932308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242411 (A329761 (n + 2)).toNat + A082340 n

end

end A082339.P7533289024360932308

/-!
# A082340: Permutation of natural numbers induced by the Catalan bijection gma082340 acting on the parenthesizations encoded by A014486/A063171.

The programs for A082340, there is no canonical definition to state claims against.
-/

/-! ## A082340.P8719067853560058109

`A130354(A122282(n))`
-/

namespace A082340.P8719067853560058109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130354 (A122282 n).toNat

end

end A082340.P8719067853560058109

/-! ## A082340.P1909270178169325762

`A122332(A122335(n))%A302497(n+1)`
-/

namespace A082340.P1909270178169325762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122332 (A122335 n).toNat) (A302497 (n + 1))

end

end A082340.P1909270178169325762

/-! ## A082340.P892150637392421536

`A122332(A122335(n))^A033630(A003215(n))`
-/

namespace A082340.P892150637392421536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122332 (A122335 n).toNat : ℚ) ^ (A033630 (A003215 n).toNat : ℤ)

end

end A082340.P892150637392421536

/-! ## A082340.P16840589733518954837

`A122334(A122301(n)%A200504(n+1))`
-/

namespace A082340.P16840589733518954837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122334 (Int.tmod (A122301 n) (A200504 (n + 1))).toNat

end

end A082340.P16840589733518954837

/-! ## A082340.P5685081847562230339

`A082326(A072798(A072798(A082326(A069787(n)))))`
-/

namespace A082340.P5685081847562230339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082326 (A072798 (A072798 (A082326 (A069787 n).toNat).toNat).toNat).toNat

end

end A082340.P5685081847562230339

/-!
# A082341: Permutation of natural numbers induced by the Catalan bijection gma082341 acting on the parenthesizations encoded by A014486/A063171.

The programs for A082341, there is no canonical definition to state claims against.
-/

/-! ## A082341.P10498834638001230250

`A130936(n)%∑[A240311(n)]`
-/

namespace A082341.P10498834638001230250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130936 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082341.P10498834638001230250

/-! ## A082341.P17185997784432540658

`A130936(n)+A000007(A331927(n))`
-/

namespace A082341.P17185997784432540658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130936 n + A000007 (A331927 n).toNat

end

end A082341.P17185997784432540658

/-! ## A082341.P7990269611949816444

`A000035(A159792(n+1))*A130936(n)`
-/

namespace A082341.P7990269611949816444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A159792 (n + 1)).toNat * A130936 n

end

end A082341.P7990269611949816444

/-! ## A082341.P945910235308976056

`A130936(n)+A072401(A001157(2*n+3))`
-/

namespace A082341.P945910235308976056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130936 n + A072401 (A001157 (2 * n + 3)).toNat

end

end A082341.P945910235308976056

/-! ## A082341.P9850168261876911059

`A130936(n)+A014197(A080335(2*n+3))`
-/

namespace A082341.P9850168261876911059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130936 n + A014197 (A080335 (2 * n + 3)).toNat

end

end A082341.P9850168261876911059

/-!
# A082343: Numerator of sopfr(n)/n, where sopfr=A001414 is the sum of prime factors (with repetition).

The programs for A082343, the canonical program `A082343.P11638302062825757021` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082343 has offset 1).

The definition of A082343 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A082299, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082343.P11638302062825757021

`A001414(n+1)/A082299(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A082343

/-- `A001414(n+1)/A082299(n+1)` -/
def P11638302062825757021.Spec : Prop :=
  ∀ n, P11638302062825757021.a n = (A082343 (n + 1) : ℚ)

end A082343

/-! ## A082343.P7019442686473617738

`Δ[A025281(n)]/A082299(n+1)`
-/

namespace A082343.P7019442686473617738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A082299 (n + 1) : ℚ)

end

end A082343.P7019442686473617738

namespace A082343

/-- `Δ[A025281(n)]/A082299(n+1)` -/
def P7019442686473617738.Spec : Prop :=
  ∀ n, P7019442686473617738.a n = (A082343 (n + 1) : ℚ)

end A082343

/-! ## A082343.P2617391419175525826

`sqrt(A074373(n+1))/A082299(n+1)`
-/

namespace A082343.P2617391419175525826
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074373 (n + 1) : ℝ) / (A082299 (n + 1) : ℝ)

end

end A082343.P2617391419175525826

namespace A082343

/-- `sqrt(A074373(n+1))/A082299(n+1)` -/
def P2617391419175525826.Spec : Prop :=
  ∀ n, P2617391419175525826.a n = (A082343 (n + 1) : ℝ)

end A082343

/-! ## A082343.P6370373481364271530

`(A036288(n+1)-1)/A082299(n+1)`
-/

namespace A082343.P6370373481364271530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036288 (n + 1) - 1 : ℚ) / (A082299 (n + 1) : ℚ)

end

end A082343.P6370373481364271530

namespace A082343

/-- `(A036288(n+1)-1)/A082299(n+1)` -/
def P6370373481364271530.Spec : Prop :=
  ∀ n, P6370373481364271530.a n = (A082343 (n + 1) : ℚ)

end A082343

/-! ## A082343.P11730135338371670448

`A001414(n+1)/gcd(n+1, A075254(n+1))`
-/

namespace A082343.P11730135338371670448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A075254 (n + 1)) : ℚ)

end

end A082343.P11730135338371670448

namespace A082343

/-- `A001414(n+1)/gcd(n+1, A075254(n+1))` -/
def P11730135338371670448.Spec : Prop :=
  ∀ n, P11730135338371670448.a n = (A082343 (n + 1) : ℚ)

end A082343

/-! ## A082343.P16310408565184900647

`A023443(A036288(n+1))/A082299(n+1)`
-/

namespace A082343.P16310408565184900647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023443 (A036288 (n + 1)).toNat : ℚ) / (A082299 (n + 1) : ℚ)

end

end A082343.P16310408565184900647

namespace A082343

/-- `A023443(A036288(n+1))/A082299(n+1)` -/
def P16310408565184900647.Spec : Prop :=
  ∀ n, P16310408565184900647.a n = (A082343 (n + 1) : ℚ)

end A082343

/-! ## A082343.P9580699065051562045

`A001414(n+1)/gcd(A000027(n+1), A001414(n+1))`
-/

namespace A082343.P9580699065051562045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A001414 (n + 1)) : ℚ)

end

end A082343.P9580699065051562045

namespace A082343

/-- `A001414(n+1)/gcd(A000027(n+1), A001414(n+1))` -/
def P9580699065051562045.Spec : Prop :=
  ∀ n, P9580699065051562045.a n = (A082343 (n + 1) : ℚ)

end A082343

/-!
# A082344: Denominator of sopfr(n)/n, where sopfr=A001414 is the sum of prime factors (with repetition).

The programs for A082344, the canonical program `A082344.P3644648653846769299` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082344 has offset 1).

The definition of A082344 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082299, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082344.P3644648653846769299

`(n+1)/A082299(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A082344

/-- `(n+1)/A082299(n+1)` -/
def P3644648653846769299.Spec : Prop :=
  ∀ n, P3644648653846769299.a n = (A082344 (n + 1) : ℚ)

end A082344

/-! ## A082344.P4479544422245112592

`(n+1)/gcd(n+1, Δ[A025281(n)])`
-/

namespace A082344.P4479544422245112592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n) : ℚ)

end

end A082344.P4479544422245112592

namespace A082344

/-- `(n+1)/gcd(n+1, Δ[A025281(n)])` -/
def P4479544422245112592.Spec : Prop :=
  ∀ n, P4479544422245112592.a n = (A082344 (n + 1) : ℚ)

end A082344

/-! ## A082344.P1643852574262945449

`lcm(n+1, A075254(n+1))/A075254(n+1)`
-/

namespace A082344.P1643852574262945449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A075254 (n + 1)) : ℚ) / (A075254 (n + 1) : ℚ)

end

end A082344.P1643852574262945449

namespace A082344

/-- `lcm(n+1, A075254(n+1))/A075254(n+1)` -/
def P1643852574262945449.Spec : Prop :=
  ∀ n, P1643852574262945449.a n = (A082344 (n + 1) : ℚ)

end A082344

/-! ## A082344.P6860651914130503726

`A000027(n+1)/gcd(A000027(n+1), A001414(n+1))`
-/

namespace A082344.P6860651914130503726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A001414 (n + 1)) : ℚ)

end

end A082344.P6860651914130503726

namespace A082344

/-- `A000027(n+1)/gcd(A000027(n+1), A001414(n+1))` -/
def P6860651914130503726.Spec : Prop :=
  ∀ n, P6860651914130503726.a n = (A082344 (n + 1) : ℚ)

end A082344

/-! ## A082344.P8908913555847581739

`lcm(A000027(n+1), A109958(n+1))/A109958(n+1)`
-/

namespace A082344.P8908913555847581739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000027 (n + 1)) (A109958 (n + 1)) : ℚ) / (A109958 (n + 1) : ℚ)

end

end A082344.P8908913555847581739

namespace A082344

/-- `lcm(A000027(n+1), A109958(n+1))/A109958(n+1)` -/
def P8908913555847581739.Spec : Prop :=
  ∀ n, P8908913555847581739.a n = (A082344 (n + 1) : ℚ)

end A082344

/-! ## A082344.P7045795040385843349

`A054531(A075255(n+1)+∑[n])`
-/

namespace A082344.P7045795040385843349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A075255 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A082344.P7045795040385843349

namespace A082344

/-- `A054531(A075255(n+1)+∑[n])` -/
def P7045795040385843349.Spec : Prop :=
  ∀ n, P7045795040385843349.a n = A082344 (n + 1)

end A082344

/-! ## A082344.P14949271916195721454

`A277227(A036288(n+1)+∑[n])`
-/

namespace A082344.P14949271916195721454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A036288 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A082344.P14949271916195721454

namespace A082344

/-- `A277227(A036288(n+1)+∑[n])` -/
def P14949271916195721454.Spec : Prop :=
  ∀ n, P14949271916195721454.a n = A082344 (n + 1)

end A082344

/-! ## A082344.P4892377964357625442

`A010766(A082299(n+1)+A000217(n))`
-/

namespace A082344.P4892377964357625442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A082299 (n + 1) + A000217 n).toNat

end

end A082344.P4892377964357625442

namespace A082344

/-- `A010766(A082299(n+1)+A000217(n))` -/
def P4892377964357625442.Spec : Prop :=
  ∀ n, P4892377964357625442.a n = A082344 (n + 1)

end A082344

/-! ## A082344.P169704833372572995

`A277227(A001414(n+1)+A000124(n))`
-/

namespace A082344.P169704833372572995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A001414 (n + 1) + A000124 n).toNat

end

end A082344.P169704833372572995

namespace A082344

/-- `A277227(A001414(n+1)+A000124(n))` -/
def P169704833372572995.Spec : Prop :=
  ∀ n, P169704833372572995.a n = A082344 (n + 1)

end A082344

/-!
# A082345: Permutation of natural numbers induced by the Catalan bijection gma082345 acting on the parenthesizations encoded by A014486/A063171.

The programs for A082345, there is no canonical definition to state claims against.
-/

/-! ## A082345.P5552075748243623454

`A073288(A069768(n))`
-/

namespace A082345.P5552075748243623454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073288 (A069768 n).toNat

end

end A082345.P5552075748243623454

/-! ## A082345.P3945111854677000917

`A073288(A082348(A073289(n)))`
-/

namespace A082345.P3945111854677000917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073288 (A082348 (A073289 n).toNat).toNat

end

end A082345.P3945111854677000917

/-! ## A082345.P2993988951776001177

`A073288(A073287(A069767(A073287(n))))`
-/

namespace A082345.P2993988951776001177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073288 (A073287 (A069767 (A073287 n).toNat).toNat).toNat

end

end A082345.P2993988951776001177

/-! ## A082345.P15207481896220019612

`A130341(A131141(A069770(n)))`
-/

namespace A082345.P15207481896220019612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130341 (A131141 (A069770 n).toNat).toNat

end

end A082345.P15207481896220019612

/-!
# A082346: Permutation of natural numbers induced by the Catalan bijection gma082346 acting on the parenthesizations encoded by A014486/A063171.

The programs for A082346, there is no canonical definition to state claims against.
-/

/-! ## A082346.P2023736253084962859

`A069767(A073289(n))`
-/

namespace A082346.P2023736253084962859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A073289 n).toNat

end

end A082346.P2023736253084962859

/-! ## A082346.P14063522936399533204

`A069770(A073289(A073286(n)))`
-/

namespace A082346.P14063522936399533204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A073289 (A073286 n).toNat).toNat

end

end A082346.P14063522936399533204

/-! ## A082346.P5987331369976855947

`A069770(A073289(n)+n-A073287(n))`
-/

namespace A082346.P5987331369976855947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A073289 n + ((n : ℤ) - A073287 n)).toNat

end

end A082346.P5987331369976855947

/-! ## A082346.P8873830130769436915

`A069770(n-(A073287(n)-A073289(n)))`
-/

namespace A082346.P8873830130769436915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 ((n : ℤ) - (A073287 n - A073289 n)).toNat

end

end A082346.P8873830130769436915

/-! ## A082346.P14634032229485079602

`A073288(A082347(A082347(A069768(n))))`
-/

namespace A082346.P14634032229485079602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073288 (A082347 (A082347 (A069768 n).toNat).toNat).toNat

end

end A082346.P14634032229485079602

/-! ## A082346.P12857791301880219350

`A073288(A082347(A073289(A073289(A073288(n)))))`
-/

namespace A082346.P12857791301880219350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073288 (A082347 (A073289 (A073289 (A073288 n).toNat).toNat).toNat).toNat

end

end A082346.P12857791301880219350

/-! ## A082346.P7898120876067033465

`A069770(A131142(A130342(n)))`
-/

namespace A082346.P7898120876067033465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A131142 (A130342 n).toNat).toNat

end

end A082346.P7898120876067033465

/-! ## A082346.P12625120782042637627

`A057163(A131141(A057163(A130981(A057163(n)))))`
-/

namespace A082346.P12625120782042637627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A131141 (A057163 (A130981 (A057163 n).toNat).toNat).toNat).toNat

end

end A082346.P12625120782042637627

/-! ## A082346.P6224494993420920752

`A154453(A154453(A069770(A131173(A122282(n)))))`
-/

namespace A082346.P6224494993420920752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154453 (A154453 (A069770 (A131173 (A122282 n).toNat).toNat).toNat).toNat

end

end A082346.P6224494993420920752

/-! ## A082346.P958417789629639790

`A154454(A131173(A069770(A122282(A154454(n)))))`
-/

namespace A082346.P958417789629639790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154454 (A131173 (A069770 (A122282 (A154454 n).toNat).toNat).toNat).toNat

end

end A082346.P958417789629639790

/-!
# A082347: Permutation of natural numbers induced by the Catalan bijection gma082347 acting on the parenthesizations encoded by A014486/A063171.

The programs for A082347, there is no canonical definition to state claims against.
-/

/-! ## A082347.P1810866650482116255

`A073289(A069767(n))`
-/

namespace A082347.P1810866650482116255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073289 (A069767 n).toNat

end

end A082347.P1810866650482116255

/-! ## A082347.P12348466715559743482

`A057163(A082348(A057163(n)))`
-/

namespace A082347.P12348466715559743482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082348 (A057163 n).toNat).toNat

end

end A082347.P12348466715559743482

/-! ## A082347.P12253354280265825807

`A073289(A069770(A073286(n)))`
-/

namespace A082347.P12253354280265825807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073289 (A069770 (A073286 n).toNat).toNat

end

end A082347.P12253354280265825807

/-! ## A082347.P3893258203613895759

`A073289(A082346(A073288(n)))`
-/

namespace A082347.P3893258203613895759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073289 (A082346 (A073288 n).toNat).toNat

end

end A082347.P3893258203613895759

/-! ## A082347.P15357036263535864584

`A073282(A069768(A073288(A073282(n))))`
-/

namespace A082347.P15357036263535864584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073282 (A069768 (A073288 (A073282 n).toNat).toNat).toNat

end

end A082347.P15357036263535864584

/-! ## A082347.P14055093746631840866

`A131142(A069768(n))`
-/

namespace A082347.P14055093746631840866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131142 (A069768 n).toNat

end

end A082347.P14055093746631840866

/-! ## A082347.P12540455718296332838

`A131142(A073287(A069770(n)))`
-/

namespace A082347.P12540455718296332838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131142 (A073287 (A069770 n).toNat).toNat

end

end A082347.P12540455718296332838

/-! ## A082347.P3996499209587565722

`A131142(A069770(A130342(n)))`
-/

namespace A082347.P3996499209587565722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131142 (A069770 (A130342 n).toNat).toNat

end

end A082347.P3996499209587565722

/-! ## A082347.P4739558330204047843

`A131142(A057162(A069767(A057162(n))))`
-/

namespace A082347.P4739558330204047843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131142 (A057162 (A069767 (A057162 n).toNat).toNat).toNat

end

end A082347.P4739558330204047843

/-! ## A082347.P17312247464388984116

`A122301(A122312(n))`
-/

namespace A082347.P17312247464388984116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122301 (A122312 n).toNat

end

end A082347.P17312247464388984116

/-!
# A082348: Permutation of natural numbers induced by the Catalan bijection gma082348 acting on the parenthesizations encoded by A014486/A063171.

The programs for A082348, there is no canonical definition to state claims against.
-/

/-! ## A082348.P12023038768810593792

`A069768(A073288(n))`
-/

namespace A082348.P12023038768810593792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A073288 n).toNat

end

end A082348.P12023038768810593792

/-! ## A082348.P17221937549806529119

`A057163(A073289(A057163(A069768(n))))`
-/

namespace A082348.P17221937549806529119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073289 (A057163 (A069768 n).toNat).toNat).toNat

end

end A082348.P17221937549806529119

/-! ## A082348.P11187504457308401501

`A073287(A069767(A073288(A073287(n))))`
-/

namespace A082348.P11187504457308401501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073287 (A069767 (A073288 (A073287 n).toNat).toNat).toNat

end

end A082348.P11187504457308401501

/-! ## A082348.P3464716907014644144

`A073289(A082345(A082345(A069767(n))))`
-/

namespace A082348.P3464716907014644144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073289 (A082345 (A082345 (A069767 n).toNat).toNat).toNat

end

end A082348.P3464716907014644144

/-! ## A082348.P543643426757945608

`A073289(A082345(A073288(A073288(A073289(n)))))`
-/

namespace A082348.P543643426757945608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073289 (A082345 (A073288 (A073288 (A073289 n).toNat).toNat).toNat).toNat

end

end A082348.P543643426757945608

/-! ## A082348.P17408638314538818078

`A069767(A131141(n))`
-/

namespace A082348.P17408638314538818078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A131141 n).toNat

end

end A082348.P17408638314538818078

/-! ## A082348.P10332239540474191430

`A069770(A131141(A073286(n)))`
-/

namespace A082348.P10332239540474191430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A131141 (A073286 n).toNat).toNat

end

end A082348.P10332239540474191430

/-! ## A082348.P16729279446905450859

`A069768(A130942(A130935(n)))`
-/

namespace A082348.P16729279446905450859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A130942 (A130935 n).toNat).toNat

end

end A082348.P16729279446905450859

/-! ## A082348.P6660605150619418343

`A069770(A130342(A073288(2*n-n)))`
-/

namespace A082348.P6660605150619418343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A130342 (A073288 (2 * n - n)).toNat).toNat

end

end A082348.P6660605150619418343

/-! ## A082348.P8032055074812863415

`A122311(A122302(n))`
-/

namespace A082348.P8032055074812863415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122311 (A122302 n).toNat

end

end A082348.P8032055074812863415

/-!
# A082349: Permutation of natural numbers induced by the Catalan bijection gma082349 acting on the parenthesizations encoded by A014486/A063171.

The programs for A082349, there is no canonical definition to state claims against.
-/

/-! ## A082349.P17596487237891855216

`A057163(A082350(A057163(n)))`
-/

namespace A082349.P17596487237891855216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082350 (A057163 n).toNat).toNat

end

end A082349.P17596487237891855216

/-! ## A082349.P8367836634219996868

`A082335(A082350(A082335(n)))`
-/

namespace A082349.P8367836634219996868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082335 (A082350 (A082335 n).toNat).toNat

end

end A082349.P8367836634219996868

/-! ## A082349.P6502819600628503367

`A057163(A069768(A074679(A073282(A069768(n)))))`
-/

namespace A082349.P6502819600628503367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069768 (A074679 (A073282 (A069768 n).toNat).toNat).toNat).toNat

end

end A082349.P6502819600628503367

/-! ## A082349.P5326286877865426680

`A123499(A089867(n)%A127066(n))`
-/

namespace A082349.P5326286877865426680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123499 (Int.tmod (A089867 n) (A127066 n)).toNat

end

end A082349.P5326286877865426680

/-! ## A082349.P15691834808292417724

`A123499(lcm(A056926(n), A089867(n)))`
-/

namespace A082349.P15691834808292417724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123499 (Int.lcm (A056926 n) (A089867 n))

end

end A082349.P15691834808292417724

/-!
# A082350: Permutation of natural numbers induced by the Catalan bijection gma082350 acting on the parenthesizations encoded by A014486/A063171.

The programs for A082350, there is no canonical definition to state claims against.
-/

/-! ## A082350.P7400164211316755691

`A057163(A082349(A057163(n)))`
-/

namespace A082350.P7400164211316755691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082349 (A057163 n).toNat).toNat

end

end A082350.P7400164211316755691

/-! ## A082350.P14722637761908719526

`A082336(A082349(A082336(n)))`
-/

namespace A082350.P14722637761908719526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082336 (A082349 (A082336 n).toNat).toNat

end

end A082350.P14722637761908719526

/-! ## A082350.P13113030590535020800

`A073282(A069768(A074680(A057163(A069768(n)))))`
-/

namespace A082350.P13113030590535020800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073282 (A069768 (A074680 (A057163 (A069768 n).toNat).toNat).toNat).toNat

end

end A082350.P13113030590535020800

/-! ## A082350.P3983705564900717216

`A130370(A130342(n)%A122311(2*n+1))`
-/

namespace A082350.P3983705564900717216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130370 (Int.tmod (A130342 n) (A122311 (2 * n + 1))).toNat

end

end A082350.P3983705564900717216

/-!
# A082351: Permutation of natural numbers induced by the Catalan bijection gma082351 acting on the parenthesizations encoded by A014486/A063171.

The programs for A082351, there is no canonical definition to state claims against.
-/

/-! ## A082351.P11463229950809852526

`A057163(A082353(A057163(n)))`
-/

namespace A082351.P11463229950809852526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082353 (A057163 n).toNat).toNat

end

end A082351.P11463229950809852526

/-! ## A082351.P8271814776794741733

`A074679(A082352(A074679(n)))`
-/

namespace A082351.P8271814776794741733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A082352 (A074679 n).toNat).toNat

end

end A082351.P8271814776794741733

/-! ## A082351.P16699211941403350

`A074679(A074679(A082353(n)))`
-/

namespace A082351.P16699211941403350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A074679 (A082353 n).toNat).toNat

end

end A082351.P16699211941403350

/-! ## A082351.P7895844640755226195

`A082354(A074680(A082354(A082354(A074680(n)))))`
-/

namespace A082351.P7895844640755226195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082354 (A074680 (A082354 (A082354 (A074680 n).toNat).toNat).toNat).toNat

end

end A082351.P7895844640755226195

/-! ## A082351.P8193541648683308350

`A074679(A154126(n))`
-/

namespace A082351.P8193541648683308350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A154126 n).toNat

end

end A082351.P8193541648683308350

/-! ## A082351.P741715043596082483

`A089857(A154125(n))`
-/

namespace A082351.P741715043596082483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089857 (A154125 n).toNat

end

end A082351.P741715043596082483

/-! ## A082351.P18340948109598262669

`A123495(A069770(n))`
-/

namespace A082351.P18340948109598262669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123495 (A069770 n).toNat

end

end A082351.P18340948109598262669

/-! ## A082351.P17111311730612794720

`A123495(A073269(A072796(n)))`
-/

namespace A082351.P17111311730612794720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123495 (A073269 (A072796 n).toNat).toNat

end

end A082351.P17111311730612794720

/-! ## A082351.P12609830605095755409

`A123495(A089856(A073269(n)))`
-/

namespace A082351.P12609830605095755409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123495 (A089856 (A073269 n).toNat).toNat

end

end A082351.P12609830605095755409

/-! ## A082351.P3897546508674242350

`A123495(A082352(A123495(n)))`
-/

namespace A082351.P3897546508674242350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123495 (A082352 (A123495 n).toNat).toNat

end

end A082351.P3897546508674242350

/-!
# A082352: Permutation of natural numbers induced by the Catalan bijection gma082352 acting on the parenthesizations encoded by A014486/A063171.

The programs for A082352, there is no canonical definition to state claims against.
-/

/-! ## A082352.P12064724843657629220

`A057163(A082354(A057163(n)))`
-/

namespace A082352.P12064724843657629220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082354 (A057163 n).toNat).toNat

end

end A082352.P12064724843657629220

/-! ## A082352.P3455081907928377191

`A082354(A074680(A074680(n)))`
-/

namespace A082352.P3455081907928377191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082354 (A074680 (A074680 n).toNat).toNat

end

end A082352.P3455081907928377191

/-! ## A082352.P12894585848200987608

`A074680(A082351(A082353(A074680(A082351(n)))))`
-/

namespace A082352.P12894585848200987608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A082351 (A082353 (A074680 (A082351 n).toNat).toNat).toNat).toNat

end

end A082352.P12894585848200987608

/-! ## A082352.P3710119771532731804

`A074680(A082351(A074680(A082356(A082355(n)))))`
-/

namespace A082352.P3710119771532731804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A082351 (A074680 (A082356 (A082355 n).toNat).toNat).toNat).toNat

end

end A082352.P3710119771532731804

/-! ## A082352.P7752168434493144125

`A154126(A074680(n))`
-/

namespace A082352.P7752168434493144125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 (A074680 n).toNat

end

end A082352.P7752168434493144125

/-! ## A082352.P17796759845582867913

`A069770(A123496(n))`
-/

namespace A082352.P17796759845582867913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A123496 n).toNat

end

end A082352.P17796759845582867913

/-! ## A082352.P2060945669176387351

`A154126(A089851(A069770(n)))`
-/

namespace A082352.P2060945669176387351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 (A089851 (A069770 n).toNat).toNat

end

end A082352.P2060945669176387351

/-! ## A082352.P16500938137006099152

`A154126(A089851(A074679(A089851(n))))`
-/

namespace A082352.P16500938137006099152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 (A089851 (A074679 (A089851 n).toNat).toNat).toNat

end

end A082352.P16500938137006099152

/-! ## A082352.P14654043215345397440

`A123496(A082351(A123496(A082358(A082357(n)))))`
-/

namespace A082352.P14654043215345397440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123496 (A082351 (A123496 (A082358 (A082357 n).toNat).toNat).toNat).toNat

end

end A082352.P14654043215345397440

/-! ## A082352.P15580416958507476441

`A123496(A082351(A123496(A123496(A123495(n)))))`
-/

namespace A082352.P15580416958507476441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123496 (A082351 (A123496 (A123496 (A123495 n).toNat).toNat).toNat).toNat

end

end A082352.P15580416958507476441

/-!
# A082353: Permutation of natural numbers induced by the Catalan bijection gma082353 acting on the parenthesizations encoded by A014486/A063171.

The programs for A082353, there is no canonical definition to state claims against.
-/

/-! ## A082353.P15169241247483726631

`A057163(A082351(A057163(n)))`
-/

namespace A082353.P15169241247483726631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082351 (A057163 n).toNat).toNat

end

end A082353.P15169241247483726631

/-! ## A082353.P14769542068298621939

`A074680(A082352(A074679(n)))`
-/

namespace A082353.P14769542068298621939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A082352 (A074679 n).toNat).toNat

end

end A082353.P14769542068298621939

/-! ## A082353.P3176478071920586631

`A074680(A082354(A074680(n)))`
-/

namespace A082353.P3176478071920586631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A082354 (A074680 n).toNat).toNat

end

end A082353.P3176478071920586631

/-! ## A082353.P197953978704954769

`A074680(A074680(A082351(n)))`
-/

namespace A082353.P197953978704954769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A074680 (A082351 n).toNat).toNat

end

end A082353.P197953978704954769

/-! ## A082353.P5293476006296101569

`A074680(A154126(n))`
-/

namespace A082353.P5293476006296101569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A154126 n).toNat

end

end A082353.P5293476006296101569

/-! ## A082353.P13279349268004675887

`A089851(A154125(n))`
-/

namespace A082353.P13279349268004675887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089851 (A154125 n).toNat

end

end A082353.P13279349268004675887

/-! ## A082353.P15457725356251923124

`A089851(A154126(A069770(n)))`
-/

namespace A082353.P15457725356251923124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089851 (A154126 (A069770 n).toNat).toNat

end

end A082353.P15457725356251923124

/-! ## A082353.P13334273568824229068

`A089851(A154126(A074679(A089851(n))))`
-/

namespace A082353.P13334273568824229068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089851 (A154126 (A074679 (A089851 n).toNat).toNat).toNat

end

end A082353.P13334273568824229068

/-! ## A082353.P3503408155772954455

`A069770(A074679(A069770(A123495(n))))`
-/

namespace A082353.P3503408155772954455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A074679 (A069770 (A123495 n).toNat).toNat).toNat

end

end A082353.P3503408155772954455

/-! ## A082353.P17154966402138862617

`A089862(A123495(n))`
-/

namespace A082353.P17154966402138862617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089862 (A123495 n).toNat

end

end A082353.P17154966402138862617

/-!
# A082354: Permutation of natural numbers induced by the Catalan bijection gma082354 acting on the parenthesizations encoded by A014486/A063171.

The programs for A082354, there is no canonical definition to state claims against.
-/

/-! ## A082354.P3975204927182010087

`A057163(A082352(A057163(n)))`
-/

namespace A082354.P3975204927182010087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082352 (A057163 n).toNat).toNat

end

end A082354.P3975204927182010087

/-! ## A082354.P9039493950775050731

`A082336(A082351(A082335(n)))`
-/

namespace A082354.P9039493950775050731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082336 (A082351 (A082335 n).toNat).toNat

end

end A082354.P9039493950775050731

/-! ## A082354.P5115145275195766721

`A082350(A082351(A082349(n)))`
-/

namespace A082354.P5115145275195766721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082350 (A082351 (A082349 n).toNat).toNat

end

end A082354.P5115145275195766721

/-! ## A082354.P17648173833185991670

`A074680(A082351(A082351(A074680(A082351(n)))))`
-/

namespace A082354.P17648173833185991670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A082351 (A082351 (A074680 (A082351 n).toNat).toNat).toNat).toNat

end

end A082354.P17648173833185991670

/-! ## A082354.P8287235406344960219

`A082356(A082357(A082352(A082356(A082357(n)))))`
-/

namespace A082354.P8287235406344960219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082356 (A082357 (A082352 (A082356 (A082357 n).toNat).toNat).toNat).toNat

end

end A082354.P8287235406344960219

/-! ## A082354.P2869871042469370155

`A154126(A074679(n))`
-/

namespace A082354.P2869871042469370155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 (A074679 n).toNat

end

end A082354.P2869871042469370155

/-! ## A082354.P11352451958118604264

`A154126(A082351(A154126(n)))`
-/

namespace A082354.P11352451958118604264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 (A082351 (A154126 n).toNat).toNat

end

end A082354.P11352451958118604264

/-! ## A082354.P8116503965729514484

`A154126(A073269(n)+n-A089850(n))`
-/

namespace A082354.P8116503965729514484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 (A073269 n + ((n : ℤ) - A089850 n)).toNat

end

end A082354.P8116503965729514484

/-! ## A082354.P127222046056556060

`A154126(n-(A089850(n)-A073269(n)))`
-/

namespace A082354.P127222046056556060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 ((n : ℤ) - (A089850 n - A073269 n)).toNat

end

end A082354.P127222046056556060

/-! ## A082354.P5491777375334168825

`A154125(A089853(n))`
-/

namespace A082354.P5491777375334168825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A089853 n).toNat

end

end A082354.P5491777375334168825

/-!
# A082355: Permutation of natural numbers induced by Catalan Automorphism *A082355 acting on the parenthesizations encoded by A014486/A063171.

The programs for A082355, there is no canonical definition to state claims against.
-/

/-! ## A082355.P14177424403125855467

`A082363(A082853(n))+A082852(n)`
-/

namespace A082355.P14177424403125855467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082363 (A082853 n).toNat + A082852 n

end

end A082355.P14177424403125855467

/-! ## A082355.P16236830644255749863

`A082357(A057163(n))`
-/

namespace A082355.P16236830644255749863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082357 (A057163 n).toNat

end

end A082355.P16236830644255749863

/-! ## A082355.P10579412080384696830

`A082852(n)+A082363(n-A082852(n))`
-/

namespace A082355.P10579412080384696830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082852 n + A082363 ((n : ℤ) - A082852 n).toNat

end

end A082355.P10579412080384696830

/-! ## A082355.P1197298068020191676

`A082359(A082356(A082359(n)))`
-/

namespace A082355.P1197298068020191676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082359 (A082356 (A082359 n).toNat).toNat

end

end A082355.P1197298068020191676

/-! ## A082355.P13431353501945010035

`A074683(A082356(A074683(n)))`
-/

namespace A082355.P13431353501945010035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A082356 (A074683 n).toNat).toNat

end

end A082355.P13431353501945010035

/-! ## A082355.P6246321172959978134

`A082357(A082359(A074681(n)))`
-/

namespace A082355.P6246321172959978134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082357 (A082359 (A074681 n).toNat).toNat

end

end A082355.P6246321172959978134

/-! ## A082355.P10318336857569105029

`A082359(A074684(A082357(n)))`
-/

namespace A082355.P10318336857569105029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082359 (A074684 (A082357 n).toNat).toNat

end

end A082355.P10318336857569105029

/-! ## A082355.P15149989020157103477

`A082357(A074682(A082360(n)))`
-/

namespace A082355.P15149989020157103477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082357 (A074682 (A082360 n).toNat).toNat

end

end A082355.P15149989020157103477

/-! ## A082355.P8703596299646995284

`A082357(A082360(A074683(2*n-n)))`
-/

namespace A082355.P8703596299646995284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082357 (A082360 (A074683 (2 * n - n)).toNat).toNat

end

end A082355.P8703596299646995284

/-!
# A082356: Permutation of natural numbers induced by Catalan Automorphism *A082356 acting on the parenthesizations encoded by A014486/A063171.

The programs for A082356, there is no canonical definition to state claims against.
-/

/-! ## A082356.P15834628182287019808

`A082364(A082853(n))+A082852(n)`
-/

namespace A082356.P15834628182287019808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082364 (A082853 n).toNat + A082852 n

end

end A082356.P15834628182287019808

/-! ## A082356.P11545448874897735381

`A057163(A082358(n))`
-/

namespace A082356.P11545448874897735381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082358 n).toNat

end

end A082356.P11545448874897735381

/-! ## A082356.P1004466783812210093

`A074684(A082355(A074684(n)))`
-/

namespace A082356.P1004466783812210093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A082355 (A074684 n).toNat).toNat

end

end A082356.P1004466783812210093

/-! ## A082356.P12811661963336557290

`A082358(A074683(A082360(n)))`
-/

namespace A082356.P12811661963336557290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082358 (A074683 (A082360 n).toNat).toNat

end

end A082356.P12811661963336557290

/-!
# A082357: Permutation of natural numbers: composition of permutations A082355 and A057163.

The programs for A082357, there is no canonical definition to state claims against.
-/

/-! ## A082357.P1146982566243248793

`A082355(A057163(n))`
-/

namespace A082357.P1146982566243248793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082355 (A057163 n).toNat

end

end A082357.P1146982566243248793

/-! ## A082357.P7690906030690085983

`A074683(A082360(A082355(n)))`
-/

namespace A082357.P7690906030690085983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A082360 (A082355 n).toNat).toNat

end

end A082357.P7690906030690085983

/-! ## A082357.P828448628119948429

`A074683(A082356(A082359(n)))`
-/

namespace A082357.P828448628119948429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A082356 (A082359 n).toNat).toNat

end

end A082357.P828448628119948429

/-! ## A082357.P12837929053422435719

`A074683(A082358(A074683(n)))`
-/

namespace A082357.P12837929053422435719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A082358 (A074683 n).toNat).toNat

end

end A082357.P12837929053422435719

/-! ## A082357.P3061170884783473619

`A082355(A082358(A082355(2*n-n)))`
-/

namespace A082357.P3061170884783473619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082355 (A082358 (A082355 (2 * n - n)).toNat).toNat

end

end A082357.P3061170884783473619

/-! ## A082357.P9089301667610043600

`A082359(A082358(A082359(2*n-n)))`
-/

namespace A082357.P9089301667610043600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082359 (A082358 (A082359 (2 * n - n)).toNat).toNat

end

end A082357.P9089301667610043600

/-! ## A082357.P3618588014938619373

`A082852(n)+A082363(A082853(A057163(n)))`
-/

namespace A082357.P3618588014938619373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082852 n + A082363 (A082853 (A057163 n).toNat).toNat

end

end A082357.P3618588014938619373

/-! ## A082357.P8572834109936563271

`A082852(n)+A082363(A057163(n)-A082852(n))`
-/

namespace A082357.P8572834109936563271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082852 n + A082363 (A057163 n - A082852 n).toNat

end

end A082357.P8572834109936563271

/-!
# A082358: Permutation of natural numbers: composition of permutations A057163 and A082356.

The programs for A082358, there is no canonical definition to state claims against.
-/

/-! ## A082358.P2426918492191232094

`A057163(A082356(n))`
-/

namespace A082358.P2426918492191232094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082356 n).toNat

end

end A082358.P2426918492191232094

/-! ## A082358.P7650786234897499438

`A074684(A082355(A082360(n)))`
-/

namespace A082358.P7650786234897499438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A082355 (A082360 n).toNat).toNat

end

end A082358.P7650786234897499438

/-! ## A082358.P9290334176161580754

`A074684(A082357(A074684(n)))`
-/

namespace A082358.P9290334176161580754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A082357 (A074684 n).toNat).toNat

end

end A082358.P9290334176161580754

/-! ## A082358.P10095581924624773485

`A082356(A082359(A074684(2*n-n)))`
-/

namespace A082358.P10095581924624773485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082356 (A082359 (A074684 (2 * n - n)).toNat).toNat

end

end A082358.P10095581924624773485

/-! ## A082358.P5006197993681376885

`A082356(A082357(A082356(2*n-n)))`
-/

namespace A082358.P5006197993681376885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082356 (A082357 (A082356 (2 * n - n)).toNat).toNat

end

end A082358.P5006197993681376885

/-! ## A082358.P2509083592368459672

`A082360(A082357(A082360(2*n-n)))`
-/

namespace A082358.P2509083592368459672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082360 (A082357 (A082360 (2 * n - n)).toNat).toNat

end

end A082358.P2509083592368459672

/-! ## A082358.P4919390280373453007

`A072771(A122237(n))`
-/

namespace A082358.P4919390280373453007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072771 (A122237 n).toNat

end

end A082358.P4919390280373453007

/-! ## A082358.P11923324976740568135

`A057163(A057117(n)%A057751(n))`
-/

namespace A082358.P11923324976740568135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (Int.tmod (A057117 n) (A057751 n)).toNat

end

end A082358.P11923324976740568135

/-! ## A082358.P12406526560405291426

`A057163(A057117(n))%A088901(n+1)`
-/

namespace A082358.P12406526560405291426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057163 (A057117 n).toNat) (A088901 (n + 1))

end

end A082358.P12406526560405291426

/-! ## A082358.P16197464893684338395

`A057163(A057117(n))%A057163(A272447(n))`
-/

namespace A082358.P16197464893684338395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057163 (A057117 n).toNat) (A057163 (A272447 n).toNat)

end

end A082358.P16197464893684338395

/-!
# A082359: Permutation of natural numbers: composition of permutations A074683 and A057163.

The programs for A082359, there is no canonical definition to state claims against.
-/

/-! ## A082359.P8512351474733634435

`A074683(A057163(n))`
-/

namespace A082359.P8512351474733634435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A057163 n).toNat

end

end A082359.P8512351474733634435

/-! ## A082359.P13635310270639177658

`A082355(A082360(A082355(n)))`
-/

namespace A082359.P13635310270639177658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082355 (A082360 (A082355 n).toNat).toNat

end

end A082359.P13635310270639177658

/-! ## A082359.P10979080711988782086

`A057163(A074682(n))`
-/

namespace A082359.P10979080711988782086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A074682 n).toNat

end

end A082359.P10979080711988782086

/-! ## A082359.P6250347959923042706

`A074683(A082360(A074683(n)))`
-/

namespace A082359.P6250347959923042706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A082360 (A074683 n).toNat).toNat

end

end A082359.P6250347959923042706

/-! ## A082359.P4962967471183405822

`A082355(A074684(A082357(n)))`
-/

namespace A082359.P4962967471183405822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082355 (A074684 (A082357 n).toNat).toNat

end

end A082359.P4962967471183405822

/-! ## A082359.P11852169477875991713

`A057164(A125981(A057505(n)))`
-/

namespace A082359.P11852169477875991713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A125981 (A057505 n).toNat).toNat

end

end A082359.P11852169477875991713

/-! ## A082359.P11275447945434863762

`A122350(A082326(n))`
-/

namespace A082359.P11275447945434863762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122350 (A082326 n).toNat

end

end A082359.P11275447945434863762

/-! ## A082359.P14008072623659689850

`A074683(A086428(A086431(n)))`
-/

namespace A082359.P14008072623659689850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A086428 (A086431 n).toNat).toNat

end

end A082359.P14008072623659689850

/-! ## A082359.P5452817514289907091

`A086426(A057505(n))`
-/

namespace A082359.P5452817514289907091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086426 (A057505 n).toNat

end

end A082359.P5452817514289907091

/-! ## A082359.P7466755330443678775

`A122302(A122298(n))`
-/

namespace A082359.P7466755330443678775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122302 (A122298 n).toNat

end

end A082359.P7466755330443678775

/-!
# A082360: Permutation of natural numbers: composition of permutations A057163 and A074684.

The programs for A082360, there is no canonical definition to state claims against.
-/

/-! ## A082360.P331091809371042733

`A057163(A074684(n))`
-/

namespace A082360.P331091809371042733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A074684 n).toNat

end

end A082360.P331091809371042733

/-! ## A082360.P3802200087334995035

`A082356(A082359(A082356(n)))`
-/

namespace A082360.P3802200087334995035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082356 (A082359 (A082356 n).toNat).toNat

end

end A082360.P3802200087334995035

/-! ## A082360.P8506240430834679765

`A074681(A057163(n))`
-/

namespace A082360.P8506240430834679765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074681 (A057163 n).toNat

end

end A082360.P8506240430834679765

/-! ## A082360.P12660892335296459547

`A082358(A082359(A082358(n)))`
-/

namespace A082360.P12660892335296459547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082358 (A082359 (A082358 n).toNat).toNat

end

end A082360.P12660892335296459547

/-! ## A082360.P9535673664944968503

`A057506(A125982(A057163(A057506(n))))`
-/

namespace A082360.P9535673664944968503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A125982 (A057163 (A057506 n).toNat).toNat).toNat

end

end A082360.P9535673664944968503

/-! ## A082360.P13358512332066812708

`A082325(A122349(n))`
-/

namespace A082360.P13358512332066812708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082325 (A122349 n).toNat

end

end A082360.P13358512332066812708

/-! ## A082360.P1490780618506246351

`A057506(A086425(n))`
-/

namespace A082360.P1490780618506246351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A086425 n).toNat

end

end A082360.P1490780618506246351

/-! ## A082360.P4748109628995701806

`A122297(A122301(n))`
-/

namespace A082360.P4748109628995701806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122297 (A122301 n).toNat

end

end A082360.P4748109628995701806

/-! ## A082360.P1247046020875271178

`A086431(A086427(A074684(A086428(A086427(n)))))`
-/

namespace A082360.P1247046020875271178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086431 (A086427 (A074684 (A086428 (A086427 n).toNat).toNat).toNat).toNat

end

end A082360.P1247046020875271178

/-! ## A082360.P5663655236831880125

`A086431(A086427(A074684(A086430(A086429(n)))))`
-/

namespace A082360.P5663655236831880125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086431 (A086427 (A074684 (A086430 (A086429 n).toNat).toNat).toNat).toNat

end

end A082360.P5663655236831880125

/-!
# A082361: Permutation of natural numbers induced by the contraction of Catalan bijection signature-permutation A082351.

The programs for A082361, there is no canonical definition to state claims against.
-/

/-! ## A082361.P17094202279233809848

`A082853(A082351(A081291(n)))`
-/

namespace A082361.P17094202279233809848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A082351 (A081291 n).toNat).toNat

end

end A082361.P17094202279233809848

/-!
# A082362: Permutation of natural numbers induced by the contraction of Catalan bijection signature-permutation A082352.

The programs for A082362, there is no canonical definition to state claims against.
-/

/-! ## A082362.P18193844332611630847

`A082853(A082352(A081291(n)))`
-/

namespace A082362.P18193844332611630847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A082352 (A081291 n).toNat).toNat

end

end A082362.P18193844332611630847

/-!
# A082363: Permutation of natural numbers induced by the contraction of Catalan bijection signature-permutation A082355.

The programs for A082363, there is no canonical definition to state claims against.
-/

/-! ## A082363.P12586514129279992514

`A082853(A082355(A081291(n)))`
-/

namespace A082363.P12586514129279992514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A082355 (A081291 n).toNat).toNat

end

end A082363.P12586514129279992514

/-! ## A082363.P14018266814398060895

`A082853(A082355(A082855(n+1)+n))`
-/

namespace A082363.P14018266814398060895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A082355 (A082855 (n + 1) + (n : ℤ)).toNat).toNat

end

end A082363.P14018266814398060895

/-! ## A082363.P10890394746681605759

`A082853(A082355(A082852(2*n)+n))`
-/

namespace A082363.P10890394746681605759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A082355 (A082852 (2 * n) + (n : ℤ)).toNat).toNat

end

end A082363.P10890394746681605759

/-! ## A082363.P10127156322546372248

`A070041(n+1)-A072189(n)!`
-/

namespace A082363.P10127156322546372248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070041 (n + 1) - (Nat.factorial (A072189 n).toNat : ℤ)

end

end A082363.P10127156322546372248

/-! ## A082363.P18409383666534049935

`(A070041(n+1)-1)%A155167(2*(n+2))`
-/

namespace A082363.P18409383666534049935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070041 (n + 1) - 1) (A155167 (2 * (n + 2)))

end

end A082363.P18409383666534049935

/-!
# A082364: Permutation of natural numbers induced by the contraction of Catalan bijection signature-permutation A082356.

The programs for A082364, there is no canonical definition to state claims against.
-/

/-! ## A082364.P1740105327635390146

`A082853(A082356(A081291(n)))`
-/

namespace A082364.P1740105327635390146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A082356 (A081291 n).toNat).toNat

end

end A082364.P1740105327635390146

/-! ## A082364.P16704968798262335997

`A082853(A082356(A082855(n+1)+n))`
-/

namespace A082364.P16704968798262335997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A082356 (A082855 (n + 1) + (n : ℤ)).toNat).toNat

end

end A082364.P16704968798262335997

/-! ## A082364.P3251531518699157105

`A057428(A000041(n))+A038776(n+1)`
-/

namespace A082364.P3251531518699157105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000041 n).toNat + A038776 (n + 1)

end

end A082364.P3251531518699157105

/-! ## A082364.P9854046671847609389

`A038776(n+1)-A338170(A060546(n))`
-/

namespace A082364.P9854046671847609389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038776 (n + 1) - A338170 (A060546 n).toNat

end

end A082364.P9854046671847609389

/-! ## A082364.P4898795311465658586

`A154990(A003375(n+3))+A038776(n+1)`
-/

namespace A082364.P4898795311465658586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (A003375 (n + 3)).toNat + A038776 (n + 1)

end

end A082364.P4898795311465658586

/-!
# A082365: A Jacobsthal number sequence.

The programs for A082365, the canonical program `A082365.P5652296555165269021` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082365 has offset 0).

The definition of A082365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082365.P9595760649958614634

`(4*8^n-(-1)^n)/3`
-/

namespace A082365.P9595760649958614634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 8 ^ n : ℤ) - (-1) ^ n : ℚ) / 3

end

end A082365.P9595760649958614634

namespace A082365

/-- `(4*8^n-(-1)^n)/3` -/
def P9595760649958614634.Spec : Prop :=
  ∀ n, P9595760649958614634.a n = (A082365 n : ℚ)

end A082365

/-! ## A082365.P5652296555165269021

`4*A015565(n)+A015565(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A082365

/-- `4*A015565(n)+A015565(n+1)` -/
def P5652296555165269021.Spec : Prop :=
  ∀ n, P5652296555165269021.a n = A082365 n

theorem P5652296555165269021.correct : P5652296555165269021.Spec := by
  intro n
  simp only [A082365]

end A082365

/-! ## A082365.P1946713798870391471

`ogf((1+4x)/(1-7x-8x^2))`
-/

namespace A082365.P1946713798870391471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -7, -8] n

end

end A082365.P1946713798870391471

namespace A082365

/-- `ogf((1+4x)/(1-7x-8x^2))` -/
def P1946713798870391471.Spec : Prop :=
  ∀ n, P1946713798870391471.a n = A082365 n

end A082365

/-! ## A082365.P12897233895522671274

`7*a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=11`
-/

namespace A082365.P12897233895522671274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  7 * a (n - 1) + 8 * a (n - 2)

end

end A082365.P12897233895522671274

namespace A082365

/-- `7*a(n-1)+8*a(n-2)` -/
def P12897233895522671274.Spec : Prop :=
  ∀ n, (P12897233895522671274.a n : ℤ) = A082365 n

end A082365

/-! ## A082365.P9309321744455003021

`A130625(3*n)`
-/

namespace A082365.P9309321744455003021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130625 (3 * n)

end

end A082365.P9309321744455003021

namespace A082365

/-- `A130625(3*n)` -/
def P9309321744455003021.Spec : Prop :=
  ∀ n, P9309321744455003021.a n = A082365 n

end A082365

/-! ## A082365.P11993269471602555113

`A283642(3*n)`
-/

namespace A082365.P11993269471602555113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 (3 * n)

end

end A082365.P11993269471602555113

namespace A082365

/-- `A283642(3*n)` -/
def P11993269471602555113.Spec : Prop :=
  ∀ n, P11993269471602555113.a n = A082365 n

end A082365

/-! ## A082365.P3386683373873118396

`A112447(6*n)`
-/

namespace A082365.P3386683373873118396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 (6 * n)

end

end A082365.P3386683373873118396

namespace A082365

/-- `A112447(6*n)` -/
def P3386683373873118396.Spec : Prop :=
  ∀ n, P3386683373873118396.a n = A082365 n

end A082365

/-! ## A082365.P2092170575341037556

`A356050(6*n)`
-/

namespace A082365.P2092170575341037556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356050 (6 * n)

end

end A082365.P2092170575341037556

namespace A082365

/-- `A356050(6*n)` -/
def P2092170575341037556.Spec : Prop :=
  ∀ n, P2092170575341037556.a n = A082365 n

end A082365

/-! ## A082365.P10083858694240919342

`A141355(Δ[n²])`
-/

namespace A082365.P10083858694240919342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A082365.P10083858694240919342

namespace A082365

/-- `A141355(Δ[n²])` -/
def P10083858694240919342.Spec : Prop :=
  ∀ n, P10083858694240919342.a n = A082365 n

end A082365

/-! ## A082365.P15952190279147948408

`A083322(3*n+1)`
-/

namespace A082365.P15952190279147948408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083322 (3 * n + 1)

end

end A082365.P15952190279147948408

namespace A082365

/-- `A083322(3*n+1)` -/
def P15952190279147948408.Spec : Prop :=
  ∀ n, P15952190279147948408.a n = A082365 n

end A082365

/-! ## A082365.P2063045491001208587

`A087629(3*n+1)`
-/

namespace A082365.P2063045491001208587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087629 (3 * n + 1)

end

end A082365.P2063045491001208587

namespace A082365

/-- `A087629(3*n+1)` -/
def P2063045491001208587.Spec : Prop :=
  ∀ n, P2063045491001208587.a n = A082365 n

end A082365

/-! ## A082365.P7893760289166505887

`A130781(3*n+1)`
-/

namespace A082365.P7893760289166505887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 (3 * n + 1)

end

end A082365.P7893760289166505887

namespace A082365

/-- `A130781(3*n+1)` -/
def P7893760289166505887.Spec : Prop :=
  ∀ n, P7893760289166505887.a n = A082365 n

end A082365

/-! ## A082365.P2000200016517659226

`A001045(3*n+2)`
-/

namespace A082365.P2000200016517659226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (3 * n + 2)

end

end A082365.P2000200016517659226

namespace A082365

/-- `A001045(3*n+2)` -/
def P2000200016517659226.Spec : Prop :=
  ∀ n, P2000200016517659226.a n = A082365 n

end A082365

/-! ## A082365.P1562053093358145010

`A024493(3*n+2)`
-/

namespace A082365.P1562053093358145010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (3 * n + 2)

end

end A082365.P1562053093358145010

namespace A082365

/-- `A024493(3*n+2)` -/
def P1562053093358145010.Spec : Prop :=
  ∀ n, P1562053093358145010.a n = A082365 n

end A082365

/-! ## A082365.P4185808689504358225

`A024495(3*n+2)`
-/

namespace A082365.P4185808689504358225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (3 * n + 2)

end

end A082365.P4185808689504358225

namespace A082365

/-- `A024495(3*n+2)` -/
def P4185808689504358225.Spec : Prop :=
  ∀ n, P4185808689504358225.a n = A082365 n

end A082365

/-! ## A082365.P4002689884073386381

`A087462(3*n+2)`
-/

namespace A082365.P4002689884073386381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087462 (3 * n + 2)

end

end A082365.P4002689884073386381

namespace A082365

/-- `A087462(3*n+2)` -/
def P4002689884073386381.Spec : Prop :=
  ∀ n, P4002689884073386381.a n = A082365 n

end A082365

/-! ## A082365.P15950249349792683515

`A087463(3*n+2)`
-/

namespace A082365.P15950249349792683515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087463 (3 * n + 2)

end

end A082365.P15950249349792683515

namespace A082365

/-- `A087463(3*n+2)` -/
def P15950249349792683515.Spec : Prop :=
  ∀ n, P15950249349792683515.a n = A082365 n

end A082365

/-! ## A082365.P2134001695285897375

`A152046(3*n+2)`
-/

namespace A082365.P2134001695285897375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 (3 * n + 2)

end

end A082365.P2134001695285897375

namespace A082365

/-- `A152046(3*n+2)` -/
def P2134001695285897375.Spec : Prop :=
  ∀ n, P2134001695285897375.a n = A082365 n

end A082365

/-! ## A082365.P3569101213614358986

`A167167(3*n+2)`
-/

namespace A082365.P3569101213614358986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 (3 * n + 2)

end

end A082365.P3569101213614358986

namespace A082365

/-- `A167167(3*n+2)` -/
def P3569101213614358986.Spec : Prop :=
  ∀ n, P3569101213614358986.a n = A082365 n

end A082365

/-! ## A082365.P14497713803833489873

`A112387(6*n+3)`
-/

namespace A082365.P14497713803833489873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 (6 * n + 3)

end

end A082365.P14497713803833489873

namespace A082365

/-- `A112387(6*n+3)` -/
def P14497713803833489873.Spec : Prop :=
  ∀ n, P14497713803833489873.a n = A082365 n

end A082365

/-!
# A082366: G.f.: (1 - 7*x - sqrt(49*x^2 - 18*x + 1))/(2*x).

The programs for A082366, there is no canonical definition to state claims against.
-/

/-! ## A082366.P7669159084134826165

`A082141(A178334(n))*A082147(n)`
-/

namespace A082366.P7669159084134826165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082141 (A178334 n).toNat * A082147 n

end

end A082366.P7669159084134826165

/-! ## A082366.P8166038715539246821

`A059268(A167614(n+1))*A082147(n)`
-/

namespace A082366.P8166038715539246821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A167614 (n + 1)).toNat * A082147 n

end

end A082366.P8166038715539246821

/-! ## A082366.P8900091194884211174

`A082141(A019426(2*n))*A082147(n)`
-/

namespace A082366.P8900091194884211174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082141 (A019426 (2 * n)).toNat * A082147 n

end

end A082366.P8900091194884211174

/-! ## A082366.P7949126074440001893

`A059268(A167499(n)+n)*A082147(n)`
-/

namespace A082366.P7949126074440001893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A167499 n + (n : ℤ)).toNat * A082147 n

end

end A082366.P7949126074440001893

/-! ## A082366.P5162947812671668241

`A133308(n)%16*A082147(n)`
-/

namespace A082366.P5162947812671668241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133308 n) 16 * A082147 n

end

end A082366.P5162947812671668241

/-!
# A082367: G.f.: (1-8*x-sqrt(64*x^2-20*x+1))/(2*x).

The programs for A082367, there is no canonical definition to state claims against.
-/

/-! ## A082367.P2264548009328291288

`A082181(n)*A155605(A178334(n))`
-/

namespace A082367.P2264548009328291288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082181 n * A155605 (A178334 n).toNat

end

end A082367.P2264548009328291288

/-! ## A082367.P244936267302232012

`(10*(2*n-1)*a(n-1)-64*(n-2)*a(n-2))/(n+1)` with `a(0)=1, a(1)=9`
-/

namespace A082367.P244936267302232012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 9] fun n a =>
  (10 * (((2 * n : ℤ) - 1 : ℚ) * a (n - 1)) - 64 * (((n : ℤ) - 2 : ℚ) * a (n - 2))) / (n + 1 : ℚ)

end

end A082367.P244936267302232012

/-! ## A082367.P15840924448510345893

`A082181(n)*A216676(A071385(n+1))`
-/

namespace A082367.P15840924448510345893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082181 n * A216676 (A071385 (n + 1)).toNat

end

end A082367.P15840924448510345893

/-! ## A082367.P5238683512359589170

`dr(A299413(n))*A082181(n)`
-/

namespace A082367.P5238683512359589170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A299413 n) : ℤ) * A082181 n

end

end A082367.P5238683512359589170

/-! ## A082367.P9135910143916612936

`A082181(n)*A116917(A020696(2*n+1))`
-/

namespace A082367.P9135910143916612936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082181 n * A116917 (A020696 (2 * n + 1)).toNat

end

end A082367.P9135910143916612936

/-!
# A082368: a(n) = (4*n-1)! / (n! * n! * n! * (n-1)! * 3!).

The programs for A082368, the canonical program `A082368.P12661759483911251329` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082368 has offset 1).

The definition of A082368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082368.P11930421576166203288

`C(4*(n+1), n+1)*C(3*(n+1), n+1)*C(2*(n+1), n+1)/24`
-/

namespace A082368.P11930421576166203288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * (n + 1)) (n + 1) * Nat.choose (3 * (n + 1)) (n + 1) * Nat.choose (2 * (n + 1)) (n + 1) : ℚ) / 24

end

end A082368.P11930421576166203288

namespace A082368

/-- `C(4*(n+1), n+1)*C(3*(n+1), n+1)*C(2*(n+1), n+1)/24` -/
def P11930421576166203288.Spec : Prop :=
  ∀ n, P11930421576166203288.a n = (A082368 (n + 1) : ℚ)

end A082368

/-! ## A082368.P12661759483911251329

`A008977(n+1)/24`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A082368

/-- `A008977(n+1)/24` -/
def P12661759483911251329.Spec : Prop :=
  ∀ n, P12661759483911251329.a n = (A082368 (n + 1) : ℚ)

end A082368

/-! ## A082368.P17292633709725906513

`A361032(∑[n])/3`
-/

namespace A082368.P17292633709725906513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361032 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A082368.P17292633709725906513

namespace A082368

/-- `A361032(∑[n])/3` -/
def P17292633709725906513.Spec : Prop :=
  ∀ n, P17292633709725906513.a n = (A082368 (n + 1) : ℚ)

end A082368

/-! ## A082368.P16828170501020635360

`A199516(4*(n+1))`
-/

namespace A082368.P16828170501020635360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199516 (4 * (n + 1))

end

end A082368.P16828170501020635360

namespace A082368

/-- `A199516(4*(n+1))` -/
def P16828170501020635360.Spec : Prop :=
  ∀ n, P16828170501020635360.a n = A082368 (n + 1)

end A082368

/-! ## A082368.P18284248093547301619

`record[A199516(n+1)-Δ[A199516(n+1)]]`
-/

namespace A082368.P18284248093547301619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199516 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199516 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082368.P18284248093547301619

namespace A082368

/-- `record[A199516(n+1)-Δ[A199516(n+1)]]` -/
def P18284248093547301619.Spec : Prop :=
  ∀ n, P18284248093547301619.a n = A082368 (n + 1)

end A082368

/-!
# A082369: Numbers congruent to 13 mod 30.

The programs for A082369, the canonical program `A082369.P8225602124362448131` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082369 has offset 1).

The definition of A082369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082369.P8225602124362448131

`30*n+13`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082369

/-- `30*n+13` -/
def P8225602124362448131.Spec : Prop :=
  ∀ n, (P8225602124362448131.a n : ℤ) = A082369 (n + 1)

theorem P8225602124362448131.correct : P8225602124362448131.Spec := by
  intro n
  simp only [A082369, Nat.add_sub_cancel]

end A082369

/-!
# A082370: a(n) = number of sets of consecutive primes whose arithmetic mean is A000040(n).

The programs for A082370, there is no canonical definition to state claims against.
-/

/-! ## A082370.P9926223183767094667

`A122821(A000040(n+1))`
-/

namespace A082370.P9926223183767094667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (A000040 (n + 1)).toNat

end

end A082370.P9926223183767094667

/-! ## A082370.P13260564666907037679

`A122821(p?[xor(1, n)])`
-/

namespace A082370.P13260564666907037679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A082370.P13260564666907037679

/-! ## A082370.P12248717363031598290

`A122821(A008578(n+2))`
-/

namespace A082370.P12248717363031598290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (A008578 (n + 2)).toNat

end

end A082370.P12248717363031598290

/-! ## A082370.P6660058971129161844

`A122821(A175787(n+2))`
-/

namespace A082370.P6660058971129161844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (A175787 (n + 2)).toNat

end

end A082370.P6660058971129161844

/-! ## A082370.P10310126873074341085

`A122821(A182986(n+2))`
-/

namespace A082370.P10310126873074341085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (A182986 (n + 2)).toNat

end

end A082370.P10310126873074341085

/-! ## A082370.P279506024359640163

`A122821(record[A006530(n+2)])`
-/

namespace A082370.P279506024359640163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A082370.P279506024359640163

/-! ## A082370.P337357560982718316

`A122821(record[A014963(n+2)])`
-/

namespace A082370.P337357560982718316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A082370.P337357560982718316

/-! ## A082370.P13048764123867967769

`A122821(record[A020639(n+2)])`
-/

namespace A082370.P13048764123867967769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A082370.P13048764123867967769

/-! ## A082370.P10264763358685761969

`A122821(eq[1, A010051(n+1)]+1)`
-/

namespace A082370.P10264763358685761969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A082370.P10264763358685761969

/-! ## A082370.P11889445210587984612

`A122821(eq[2, A000005(n+1)]+1)`
-/

namespace A082370.P11889445210587984612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A082370.P11889445210587984612

/-! ## A082370.P1340429004338811513

`A122821(eq[n, A000010(n+1)]+1)`
-/

namespace A082370.P1340429004338811513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A082370.P1340429004338811513

/-! ## A082370.P14537236123322438976

`A122821(A109921(2*(n+1)))`
-/

namespace A082370.P14537236123322438976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (A109921 (2 * (n + 1))).toNat

end

end A082370.P14537236123322438976

/-!
# A082371: Indices n such that the congruence prime(n)^x + prime(n+1)^x == prime(n+2) mod prime(n+3) has no solution.

The programs for A082371, there is no canonical definition to state claims against.
-/

/-! ## A082371.P7749318351003014223

`A000720(A082372(n+1))`
-/

namespace A082371.P7749318351003014223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A082372 (n + 1)).toNat

end

end A082371.P7749318351003014223

/-! ## A082371.P3271314068587873680

`A061395(p?[A082372(n+1)])`
-/

namespace A082371.P3271314068587873680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082371.P3271314068587873680

/-! ## A082371.P2361222602562109467

`A003963(p?[A082372(n+1)])`
-/

namespace A082371.P2361222602562109467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082371.P2361222602562109467

/-! ## A082371.P18241559625347729824

`A026233(p?[A082372(n+1)])`
-/

namespace A082371.P18241559625347729824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082371.P18241559625347729824

/-! ## A082371.P5087791387425844519

`A026238(p?[A082372(n+1)])`
-/

namespace A082371.P5087791387425844519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082371.P5087791387425844519

/-! ## A082371.P4593627227357138736

`A049084(p?[A082372(n+1)])`
-/

namespace A082371.P4593627227357138736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082371.P4593627227357138736

/-! ## A082371.P10635030905287044995

`A055396(p?[A082372(n+1)])`
-/

namespace A082371.P10635030905287044995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082371.P10635030905287044995

/-! ## A082371.P12441775834106080929

`A258851(p?[A082372(n+1)])`
-/

namespace A082371.P12441775834106080929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082371.P12441775834106080929

/-! ## A082371.P10702735769338496067

`A003963(2*A082372(n+1))`
-/

namespace A082371.P10702735769338496067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A082372 (n + 1)).toNat

end

end A082371.P10702735769338496067

/-!
# A082372: Primes prime(n) such that there are no solutions to the equation prime(n)^x + prime(n+1)^x = prime(n+2) (mod prime(n+3)) with x an integer.

The programs for A082372, there is no canonical definition to state claims against.
-/

/-! ## A082372.P7434245001149756433

`A082373(3*n+n+1)`
-/

namespace A082372.P7434245001149756433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082373 (3 * n + (n + 1))

end

end A082372.P7434245001149756433

/-! ## A082372.P991444644841192843

`A000040(A082371(n+1))`
-/

namespace A082372.P991444644841192843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A082371 (n + 1)).toNat

end

end A082372.P991444644841192843

/-! ## A082372.P5801123070829042186

`A008578(A082371(n+1)+1)`
-/

namespace A082372.P5801123070829042186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A082371 (n + 1) + 1).toNat

end

end A082372.P5801123070829042186

/-! ## A082372.P3255403609710123591

`A182986(A082371(n+1)+1)`
-/

namespace A082372.P3255403609710123591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A082371 (n + 1) + 1).toNat

end

end A082372.P3255403609710123591

/-! ## A082372.P10831406441008001838

`A065091(A082371(n+1)-1)`
-/

namespace A082372.P10831406441008001838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A082371 (n + 1) - 1).toNat

end

end A082372.P10831406441008001838

/-! ## A082372.P11765196265905953272

`A158611(A082371(n+1)+2)`
-/

namespace A082372.P11765196265905953272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A082371 (n + 1) + 2).toNat

end

end A082372.P11765196265905953272

/-! ## A082372.P13948806906026022572

`A073846(2*A082371(n+1))`
-/

namespace A082372.P13948806906026022572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A082371 (n + 1)).toNat

end

end A082372.P13948806906026022572

/-! ## A082372.P11341948565194249723

`A082500(2*A082371(n+1))`
-/

namespace A082372.P11341948565194249723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A082371 (n + 1)).toNat

end

end A082372.P11341948565194249723

/-! ## A082372.P16496145952610752877

`∑{d}[A082371(n+1), A007444(#)]`
-/

namespace A082372.P16496145952610752877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A082372.P16496145952610752877

/-! ## A082372.P10526480251519098427

`A006005(∑{d}[A082371(n+1), A000010(#)])`
-/

namespace A082372.P10526480251519098427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A082372.P10526480251519098427

/-! ## A082372.P14372532897853125821

`A006005(∏{d}[A082371(n+1), A014963(#)])`
-/

namespace A082372.P14372532897853125821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d).toNat

end

end A082372.P14372532897853125821

/-!
# A082373: Table with 4 consecutive primes prime(k), prime(k+1), prime(k+2) and prime(k+3) in a row such that prime(k)^x + prime(k+1)^x == prime(k+2) (mod prime(k+3)) has no solution x.

The programs for A082373, there is no canonical definition to state claims against.
-/

/-! ## A082373.P11079355486840606603

`p?[xor(A022290(2*n+1), A351319(2*n+1))]`
-/

namespace A082373.P11079355486840606603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A022290 (2 * n + 1)) (A351319 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082373.P11079355486840606603

/-!
# A082374: Numbers k such that the congruence prime(k+1)^x - prime(k)^x == prime(k+2) mod prime(k+3) does not have a solution.

The programs for A082374, there is no canonical definition to state claims against.
-/

/-! ## A082374.P13984260571885663657

`A000720(A082376(n+1))`
-/

namespace A082374.P13984260571885663657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A082376 (n + 1)).toNat

end

end A082374.P13984260571885663657

/-! ## A082374.P4905989555419040430

`A003963(p?[A082376(n+1)])`
-/

namespace A082374.P4905989555419040430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082374.P4905989555419040430

/-! ## A082374.P15564082083557684360

`A026233(p?[A082376(n+1)])`
-/

namespace A082374.P15564082083557684360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082374.P15564082083557684360

/-! ## A082374.P11520771939420286910

`A026238(p?[A082376(n+1)])`
-/

namespace A082374.P11520771939420286910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082374.P11520771939420286910

/-! ## A082374.P6414127258937105004

`A049084(p?[A082376(n+1)])`
-/

namespace A082374.P6414127258937105004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082374.P6414127258937105004

/-! ## A082374.P12662589759025297344

`A055396(p?[A082376(n+1)])`
-/

namespace A082374.P12662589759025297344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082374.P12662589759025297344

/-! ## A082374.P5281207149421196406

`A056239(p?[A082376(n+1)])`
-/

namespace A082374.P5281207149421196406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082374.P5281207149421196406

/-! ## A082374.P17917630223852676500

`A003963(2*A082376(n+1))`
-/

namespace A082374.P17917630223852676500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A082376 (n + 1)).toNat

end

end A082374.P17917630223852676500

/-! ## A082374.P10633146561058198648

`A003963(lcm(2, A082376(n+1)))`
-/

namespace A082374.P10633146561058198648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A082376 (n + 1)))

end

end A082374.P10633146561058198648

/-!
# A082375: Irregular triangle read by rows: row n begins with n and decreases by 2 until 0 or 1 is reached, for n >= 0.

The programs for A082375, the canonical program `A082375.P11690082017939293058` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082375 has offset 0).

The definition of A082375 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082375.P11690082017939293058

`A199474(n+1)-A122197(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A082375

/-- `A199474(n+1)-A122197(n+1)` -/
def P11690082017939293058.Spec : Prop :=
  ∀ n, P11690082017939293058.a n = A082375 n

theorem P11690082017939293058.correct : P11690082017939293058.Spec := by
  intro n
  simp only [A082375]

end A082375

/-! ## A082375.P10139245099707056546

`sqrt(A027434(n+1)²-4*A350634(n+1))`
-/

namespace A082375.P10139245099707056546
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A027434 (n + 1) ^ 2 - 4 * A350634 (n + 1) : ℝ)

end

end A082375.P10139245099707056546

namespace A082375

/-- `sqrt(A027434(n+1)²-4*A350634(n+1))` -/
def P10139245099707056546.Spec : Prop :=
  ∀ n, P10139245099707056546.a n = (A082375 n : ℝ)

end A082375

/-! ## A082375.P13944525889334444889

`floor(A152204(n)/2)`
-/

namespace A082375.P13944525889334444889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152204 n : ℚ) / 2⌋

end

end A082375.P13944525889334444889

namespace A082375

/-- `floor(A152204(n)/2)` -/
def P13944525889334444889.Spec : Prop :=
  ∀ n, P13944525889334444889.a n = A082375 n

end A082375

/-! ## A082375.P17467449077590675741

`A122196(n+1)-1`
-/

namespace A082375.P17467449077590675741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122196 (n + 1) - 1

end

end A082375.P17467449077590675741

namespace A082375

/-- `A122196(n+1)-1` -/
def P17467449077590675741.Spec : Prop :=
  ∀ n, P17467449077590675741.a n = A082375 n

end A082375

/-! ## A082375.P5624351174613659973

`val(A181666(n+1), 2)`
-/

namespace A082375.P5624351174613659973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A181666 (n + 1)).toNat 2

end

end A082375.P5624351174613659973

namespace A082375

/-- `val(A181666(n+1), 2)` -/
def P5624351174613659973.Spec : Prop :=
  ∀ n, (P5624351174613659973.a n : ℤ) = A082375 n

end A082375

/-! ## A082375.P5570438913581563263

`(A209634(n+1)-1)/3`
-/

namespace A082375.P5570438913581563263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209634 (n + 1) - 1 : ℚ) / 3

end

end A082375.P5570438913581563263

namespace A082375

/-- `(A209634(n+1)-1)/3` -/
def P5570438913581563263.Spec : Prop :=
  ∀ n, P5570438913581563263.a n = (A082375 n : ℚ)

end A082375

/-! ## A082375.P14444676958557852044

`A000982(ceil(2*sqrt(n+1)))%(n+1)`
-/

namespace A082375.P14444676958557852044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000982 ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat) (n + 1 : ℤ)

end

end A082375.P14444676958557852044

namespace A082375

/-- `A000982(ceil(2*sqrt(n+1)))%(n+1)` -/
def P14444676958557852044.Spec : Prop :=
  ∀ n, P14444676958557852044.a n = A082375 n

end A082375

/-! ## A082375.P6227513735710183524

`A004524(A152204(n))`
-/

namespace A082375.P6227513735710183524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A152204 n).toNat

end

end A082375.P6227513735710183524

namespace A082375

/-- `A004524(A152204(n))` -/
def P6227513735710183524.Spec : Prop :=
  ∀ n, P6227513735710183524.a n = A082375 n

end A082375

/-! ## A082375.P16932257925655627310

`A004524(A084346(n+1))`
-/

namespace A082375.P16932257925655627310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A084346 (n + 1)).toNat

end

end A082375.P16932257925655627310

namespace A082375

/-- `A004524(A084346(n+1))` -/
def P16932257925655627310.Spec : Prop :=
  ∀ n, P16932257925655627310.a n = A082375 n

end A082375

/-! ## A082375.P12474829421152933830

`A023443(A122196(n+1))`
-/

namespace A082375.P12474829421152933830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A122196 (n + 1)).toNat

end

end A082375.P12474829421152933830

namespace A082375

/-- `A023443(A122196(n+1))` -/
def P12474829421152933830.Spec : Prop :=
  ∀ n, P12474829421152933830.a n = A082375 n

end A082375

/-! ## A082375.P3766190467811352545

`A002264(A209634(n+1))`
-/

namespace A082375.P3766190467811352545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A209634 (n + 1)).toNat

end

end A082375.P3766190467811352545

namespace A082375

/-- `A002264(A209634(n+1))` -/
def P3766190467811352545.Spec : Prop :=
  ∀ n, P3766190467811352545.a n = A082375 n

end A082375

/-! ## A082375.P3105041643930977585

`A001281(A152204(n)-1)`
-/

namespace A082375.P3105041643930977585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A152204 n - 1).toNat

end

end A082375.P3105041643930977585

namespace A082375

/-- `A001281(A152204(n)-1)` -/
def P3105041643930977585.Spec : Prop :=
  ∀ n, P3105041643930977585.a n = A082375 n

end A082375

/-! ## A082375.P15808450848801017059

`A004525(A152204(n)-1)`
-/

namespace A082375.P15808450848801017059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A152204 n - 1).toNat

end

end A082375.P15808450848801017059

namespace A082375

/-- `A004525(A152204(n)-1)` -/
def P15808450848801017059.Spec : Prop :=
  ∀ n, P15808450848801017059.a n = A082375 n

end A082375

/-! ## A082375.P10236680439727555158

`A014682(A152204(n)-1)`
-/

namespace A082375.P10236680439727555158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A152204 n - 1).toNat

end

end A082375.P10236680439727555158

namespace A082375

/-- `A014682(A152204(n)-1)` -/
def P10236680439727555158.Spec : Prop :=
  ∀ n, P10236680439727555158.a n = A082375 n

end A082375

/-! ## A082375.P5383587436261183001

`A002265(2*A152204(n))`
-/

namespace A082375.P5383587436261183001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A152204 n).toNat

end

end A082375.P5383587436261183001

namespace A082375

/-- `A002265(2*A152204(n))` -/
def P5383587436261183001.Spec : Prop :=
  ∀ n, P5383587436261183001.a n = A082375 n

end A082375

/-! ## A082375.P2600545088665584518

`A001281(xor(1, A152204(n)))`
-/

namespace A082375.P2600545088665584518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.xor 1 (A152204 n)).toNat

end

end A082375.P2600545088665584518

namespace A082375

/-- `A001281(xor(1, A152204(n)))` -/
def P2600545088665584518.Spec : Prop :=
  ∀ n, P2600545088665584518.a n = A082375 n

end A082375

/-! ## A082375.P1901523968426073608

`A209634(n+1)-A152204(n)`
-/

namespace A082375.P1901523968426073608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209634 (n + 1) - A152204 n

end

end A082375.P1901523968426073608

namespace A082375

/-- `A209634(n+1)-A152204(n)` -/
def P1901523968426073608.Spec : Prop :=
  ∀ n, P1901523968426073608.a n = A082375 n

end A082375

/-! ## A082375.P10619414030953908215

`A055086(n)-2*A055087(n)`
-/

namespace A082375.P10619414030953908215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n - 2 * A055087 n

end

end A082375.P10619414030953908215

namespace A082375

/-- `A055086(n)-2*A055087(n)` -/
def P10619414030953908215.Spec : Prop :=
  ∀ n, P10619414030953908215.a n = A082375 n

end A082375

/-! ## A082375.P9438458811231812444

`A298637(n)/A008315(n)-1`
-/

namespace A082375.P9438458811231812444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298637 n : ℚ) / (A008315 n : ℚ) - 1

end

end A082375.P9438458811231812444

namespace A082375

/-- `A298637(n)/A008315(n)-1` -/
def P9438458811231812444.Spec : Prop :=
  ∀ n, P9438458811231812444.a n = (A082375 n : ℚ)

end A082375

/-! ## A082375.P9381876831245176072

`A152204(n)%A122196(n+1)`
-/

namespace A082375.P9381876831245176072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152204 n) (A122196 (n + 1))

end

end A082375.P9381876831245176072

namespace A082375

/-- `A152204(n)%A122196(n+1)` -/
def P9381876831245176072.Spec : Prop :=
  ∀ n, P9381876831245176072.a n = A082375 n

end A082375

/-!
# A082376: First of quadruple of consecutive primes p1,p2,p3,p4 such that the congruence p2^x - p1^x == p3 (mod p4) has no solution.

The programs for A082376, there is no canonical definition to state claims against.
-/

/-! ## A082376.P15797561848432256072

`A000040(A082374(n+1))`
-/

namespace A082376.P15797561848432256072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A082374 (n + 1)).toNat

end

end A082376.P15797561848432256072

/-! ## A082376.P11690327445440702063

`A008578(A082374(n+1)+1)`
-/

namespace A082376.P11690327445440702063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A082374 (n + 1) + 1).toNat

end

end A082376.P11690327445440702063

/-! ## A082376.P2479715912007900018

`A182986(A082374(n+1)+1)`
-/

namespace A082376.P2479715912007900018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A082374 (n + 1) + 1).toNat

end

end A082376.P2479715912007900018

/-! ## A082376.P6546571692707954108

`A065091(A082374(n+1)-1)`
-/

namespace A082376.P6546571692707954108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A082374 (n + 1) - 1).toNat

end

end A082376.P6546571692707954108

/-! ## A082376.P2959818066100419684

`A158611(A082374(n+1)+2)`
-/

namespace A082376.P2959818066100419684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A082374 (n + 1) + 2).toNat

end

end A082376.P2959818066100419684

/-! ## A082376.P13836401692137117592

`A073846(2*A082374(n+1))`
-/

namespace A082376.P13836401692137117592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A082374 (n + 1)).toNat

end

end A082376.P13836401692137117592

/-! ## A082376.P18086454349618246872

`A082500(2*A082374(n+1))`
-/

namespace A082376.P18086454349618246872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A082374 (n + 1)).toNat

end

end A082376.P18086454349618246872

/-! ## A082376.P5610832607447455188

`A219606(2*A082374(n+1))`
-/

namespace A082376.P5610832607447455188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * A082374 (n + 1)).toNat

end

end A082376.P5610832607447455188

/-! ## A082376.P11171751485469565789

`∑{d}[A082374(n+1), A007444(#)]`
-/

namespace A082376.P11171751485469565789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A082376.P11171751485469565789

/-! ## A082376.P15086970325535703572

`A006005(∑{d}[A082374(n+1), A000010(#)])`
-/

namespace A082376.P15086970325535703572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A082376.P15086970325535703572

/-!
# A082377: Numbers k such that rad(k) - phi(k) <= 1, where rad = A007947 and phi = A000010.

The programs for A082377, the canonical program `A082377.P15011776684150655685` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082377 has offset 1).

The definition of A082377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082377.P15011776684150655685

`lt[A007947(n+1), A000010(n+1)+2]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A082377

/-- `lt[A007947(n+1), A000010(n+1)+2]+1` -/
def P15011776684150655685.Spec : Prop :=
  ∀ n, (P15011776684150655685.a n : ℤ) = A082377 (n + 1)

theorem P15011776684150655685.correct : P15011776684150655685.Spec := by
  intro n
  simp only [A082377, Nat.add_sub_cancel]

end A082377

/-! ## A082377.P13366957771713845524

`lt[A019530(n+1), A039649(n+1)+1]+1`
-/

namespace A082377.P13366957771713845524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A082377.P13366957771713845524

namespace A082377

/-- `lt[A019530(n+1), A039649(n+1)+1]+1` -/
def P13366957771713845524.Spec : Prop :=
  ∀ n, (P13366957771713845524.a n : ℤ) = A082377 (n + 1)

end A082377

/-! ## A082377.P9413811464805633567

`lt[A007947(n+1), A109606(n+1)+3]+1`
-/

namespace A082377.P9413811464805633567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A082377.P9413811464805633567

namespace A082377

/-- `lt[A007947(n+1), A109606(n+1)+3]+1` -/
def P9413811464805633567.Spec : Prop :=
  ∀ n, (P9413811464805633567.a n : ℤ) = A082377 (n + 1)

end A082377

/-! ## A082377.P14267082042088336370

`lt[A019554(A019554(n+1))-A000010(n+1), 2]+1`
-/

namespace A082377.P14267082042088336370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A019554 (n + 1)).toNat - A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A082377.P14267082042088336370

namespace A082377

/-- `lt[A019554(A019554(n+1))-A000010(n+1), 2]+1` -/
def P14267082042088336370.Spec : Prop :=
  ∀ n, (P14267082042088336370.a n : ℤ) = A082377 (n + 1)

end A082377

/-! ## A082377.P15009906492113807587

`∪[A299117(n+1), A384992(n+1)]`
-/

namespace A082377.P15009906492113807587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A082377.P15009906492113807587

namespace A082377

/-- `∪[A299117(n+1), A384992(n+1)]` -/
def P15009906492113807587.Spec : Prop :=
  ∀ n, (P15009906492113807587.a n : ℤ) = A082377 (n + 1)

end A082377

/-! ## A082377.P13198146354337690072

`∪[A375403(n+1), A384992(n+1)]`
-/

namespace A082377.P13198146354337690072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A082377.P13198146354337690072

namespace A082377

/-- `∪[A375403(n+1), A384992(n+1)]` -/
def P13198146354337690072.Spec : Prop :=
  ∀ n, (P13198146354337690072.a n : ℤ) = A082377 (n + 1)

end A082377

/-! ## A082377.P1255249614330184533

`lt[A000026(A253909(n)), 2*n+1+n]`
-/

namespace A082377.P1255249614330184533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A253909 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A082377.P1255249614330184533

namespace A082377

/-- `lt[A000026(A253909(n)), 2*n+1+n]` -/
def P1255249614330184533.Spec : Prop :=
  ∀ n, (P1255249614330184533.a n : ℤ) = A082377 (n + 1)

end A082377

/-!
# A082378: Positive integers that can be written in exactly one way as the product ab of positive integers where a+b is composite.

The programs for A082378, there is no canonical definition to state claims against.
-/

/-! ## A082378.P8913523953135423530

`eq[A107279(n), A211098(A145341(n+1))]`
-/

namespace A082378.P8913523953135423530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211098 (A145341 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082378.P8913523953135423530

/-!
# A082379: Number of length-n 7/3-power-free words over the alphabet {0,1}.

The programs for A082379, there is no canonical definition to state claims against.
-/

/-! ## A082379.P9515208675068599389

`∑[A277692(p?[A134933(n+1)])]`
-/

namespace A082379.P9515208675068599389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134933 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082379.P9515208675068599389

/-! ## A082379.P561438355414650363

`A002473(eq[A174889(n+1), A184946(n)])`
-/

namespace A082379.P561438355414650363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A082379.P561438355414650363

/-! ## A082379.P6601904898475283751

`∑[A001817(A026150(n))]`
-/

namespace A082379.P6601904898475283751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (A026150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082379.P6601904898475283751

/-! ## A082379.P14613849246427664583

`A383644(A326752(n+2))`
-/

namespace A082379.P14613849246427664583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383644 (A326752 (n + 2)).toNat

end

end A082379.P14613849246427664583

/-! ## A082379.P7024878710490728081

`∑[A001817(Δ[A002605(n)])]`
-/

namespace A082379.P7024878710490728081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082379.P7024878710490728081

/-!
# A082380: Number of 7/3+-power-free words over the alphabet {0,1}.

The programs for A082380, there is no canonical definition to state claims against.
-/

/-! ## A082380.P18092990221848169259

`A096491(A056911(n+1)+A050534(n))`
-/

namespace A082380.P18092990221848169259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096491 (A056911 (n + 1) + A050534 n).toNat

end

end A082380.P18092990221848169259

/-! ## A082380.P11031646214574140873

`A324059(n+1)+A220400(A324062(n))`
-/

namespace A082380.P11031646214574140873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324059 (n + 1) + A220400 (A324062 n).toNat

end

end A082380.P11031646214574140873

/-! ## A082380.P2890560867934932455

`xor(A064228(A126460(n)), A333315(n+1))`
-/

namespace A082380.P2890560867934932455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A064228 (A126460 n).toNat) (A333315 (n + 1))

end

end A082380.P2890560867934932455

/-! ## A082380.P2861768654803831312

`A330878(A010000(n))`
-/

namespace A082380.P2861768654803831312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330878 (A010000 n).toNat

end

end A082380.P2861768654803831312

/-! ## A082380.P14644071813793789217

`A330878(A393699(n))`
-/

namespace A082380.P14644071813793789217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330878 (A393699 n).toNat

end

end A082380.P14644071813793789217

/-!
# A082383: a(0)=1, a(n)=2^n+n-2*a(n-1).

The programs for A082383, the canonical program `A082383.P6270933548309128177` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082383 has offset 0).

The definition of A082383 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+n-2*a(n-1)` (program `A082383.P6270933548309128177`, by `A082383.P6270933548309128177.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082383.P6270933548309128177

`2^n+n-2*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082383

/-- `2^n+n-2*a(n-1)` -/
def P6270933548309128177.Spec : Prop :=
  ∀ n, P6270933548309128177.a n = A082383 n

theorem P6270933548309128177.correct : P6270933548309128177.Spec := by
  intro n
  simp only [A082383]

end A082383

/-! ## A082383.P10380867561459036119

`∑[∑[ogf((-1+x+x^2)/(-1+4x^2))]]`
-/

namespace A082383.P10380867561459036119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, 0, -4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082383.P10380867561459036119

namespace A082383

/-- `∑[∑[ogf((-1+x+x^2)/(-1+4x^2))]]` -/
def P10380867561459036119.Spec : Prop :=
  ∀ n, P10380867561459036119.a n = A082383 n

end A082383

/-! ## A082383.P2806632050900608529

`∑[4*a(n-2)-1]` with `a(0)=1, a(1)=0`
-/

namespace A082383.P2806632050900608529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  4 * f1 (n - 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082383.P2806632050900608529

namespace A082383

/-- `∑[4*a(n-2)-1]` -/
def P2806632050900608529.Spec : Prop :=
  ∀ n, P2806632050900608529.a n = A082383 n

end A082383

/-! ## A082383.P9905200528426320726

`4*a(n-2)+2-n` with `a(0)=1, a(1)=1`
-/

namespace A082383.P9905200528426320726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * a (n - 2) + (2 - (n : ℤ))

end

end A082383.P9905200528426320726

namespace A082383

/-- `4*a(n-2)+2-n` -/
def P9905200528426320726.Spec : Prop :=
  ∀ n, P9905200528426320726.a n = A082383 n

end A082383

/-! ## A082383.P12910563066968747273

`2-(n-4*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A082383.P12910563066968747273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - ((n : ℤ) - 4 * a (n - 2))

end

end A082383.P12910563066968747273

namespace A082383

/-- `2-(n-4*a(n-2))` -/
def P12910563066968747273.Spec : Prop :=
  ∀ n, P12910563066968747273.a n = A082383 n

end A082383

/-! ## A082383.P5059387427297010506

`2^n-(a(n-1)+a(n-1)-n)` with `a(0)=1`
-/

namespace A082383.P5059387427297010506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) - (a (n - 1) + (a (n - 1) - (n : ℤ)))

end

end A082383.P5059387427297010506

namespace A082383

/-- `2^n-(a(n-1)+a(n-1)-n)` -/
def P5059387427297010506.Spec : Prop :=
  ∀ n, P5059387427297010506.a n = A082383 n

end A082383

/-! ## A082383.P1389618963158402828

`2^n-(a(n-1)-(n-a(n-1)))` with `a(0)=1`
-/

namespace A082383.P1389618963158402828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) - (a (n - 1) - ((n : ℤ) - a (n - 1)))

end

end A082383.P1389618963158402828

namespace A082383

/-- `2^n-(a(n-1)-(n-a(n-1)))` -/
def P1389618963158402828.Spec : Prop :=
  ∀ n, P1389618963158402828.a n = A082383 n

end A082383

/-! ## A082383.P9706851261194159791

`A006127(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A082383.P9706851261194159791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006127 n - (a (n - 1) + a (n - 1))

end

end A082383.P9706851261194159791

namespace A082383

/-- `A006127(n)-(a(n-1)+a(n-1))` -/
def P9706851261194159791.Spec : Prop :=
  ∀ n, P9706851261194159791.a n = A082383 n

end A082383

/-!
# A082384: a(0)=1, a(n)=2^n+n^2-2*a(n-1).

The programs for A082384, the canonical program `A082384.P9168699053908259320` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082384 has offset 0).

The definition of A082384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082384.P9168699053908259320

`3*a(n-1)+a(n-2)-11*a(n-3)+12*a(n-4)-4*a(n-5)` with `a(0)=1, a(1)=6, a(2)=5, a(3)=22, a(4)=13`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082384

/-- `3*a(n-1)+a(n-2)-11*a(n-3)+12*a(n-4)-4*a(n-5)` -/
def P9168699053908259320.Spec : Prop :=
  ∀ n, P9168699053908259320.a n = A082384 n

theorem P9168699053908259320.correct : P9168699053908259320.Spec := by
  intro n
  simp only [A082384]

end A082384

/-! ## A082384.P11473776499611083659

`4*a(n-2)-(1-n)²+2` with `a(0)=1, a(1)=6`
-/

namespace A082384.P11473776499611083659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  4 * a (n - 2) - (1 - (n : ℤ)) ^ 2 + 2

end

end A082384.P11473776499611083659

namespace A082384

/-- `4*a(n-2)-(1-n)²+2` -/
def P11473776499611083659.Spec : Prop :=
  ∀ n, P11473776499611083659.a n = A082384 n

end A082384

/-! ## A082384.P16586110341649325340

`A001580(n+1)-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A082384.P16586110341649325340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001580 (n + 1) - a (n - 1) - a (n - 1)

end

end A082384.P16586110341649325340

namespace A082384

/-- `A001580(n+1)-a(n-1)-a(n-1)` -/
def P16586110341649325340.Spec : Prop :=
  ∀ n, P16586110341649325340.a n = A082384 n

end A082384

/-! ## A082384.P16241444111268622903

`Δ[A174121(n+1)-(a(n-1)+a(n-1))]` with `a(0)=1`
-/

namespace A082384.P16241444111268622903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A174121 (n + 1) - (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082384.P16241444111268622903

namespace A082384

/-- `Δ[A174121(n+1)-(a(n-1)+a(n-1))]` -/
def P16241444111268622903.Spec : Prop :=
  ∀ n, P16241444111268622903.a n = A082384 n

end A082384

/-!
# A082385: For each n append T(n), T(T(n)), T^3(n), ..., T^r(n), where T(n) = A055012(n) and r is the smallest integer such that T^r(n) is one of the following numbers: 1, 55, 136, 153, 160, 370, 371, 407, 919.

The programs for A082385, there is no canonical definition to state claims against.
-/

/-! ## A082385.P904056545211259733

`A098870(n+1)-A008683(A005054(n))`
-/

namespace A082385.P904056545211259733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098870 (n + 1) - A008683 (A005054 n).toNat

end

end A082385.P904056545211259733

/-! ## A082385.P11027226766117465816

`A098870(n+1)-A008683(A083325(n))`
-/

namespace A082385.P11027226766117465816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098870 (n + 1) - A008683 (A083325 n).toNat

end

end A082385.P11027226766117465816

/-! ## A082385.P17665395933457198207

`A098870(n+1)+A008683(A192513(n+1))`
-/

namespace A082385.P17665395933457198207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098870 (n + 1) + A008683 (A192513 (n + 1)).toNat

end

end A082385.P17665395933457198207

/-! ## A082385.P1429109522443140437

`A098870(n+1)-A167392(A034182(n+3))`
-/

namespace A082385.P1429109522443140437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098870 (n + 1) - A167392 (A034182 (n + 3)).toNat

end

end A082385.P1429109522443140437

/-!
# A082386: Let S(0) = {1} and for k >= 1, let S(k) = {S(k-1), S(k-1), 2T}, where T = sum of terms in S(k-1). Sequence is S(infinity).

The programs for A082386, the canonical program `A082386.P6793526931661714868` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082386 has offset 0).

The definition of A082386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082386.P6793526931661714868

`A000982(A182105(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A082386

/-- `A000982(A182105(n+1))` -/
def P6793526931661714868.Spec : Prop :=
  ∀ n, P6793526931661714868.a n = A082386 n

theorem P6793526931661714868.correct : P6793526931661714868.Spec := by
  intro n
  simp only [A082386]

end A082386

/-! ## A082386.P16223661730628286382

`A081294(A215020(n+1))`
-/

namespace A082386.P16223661730628286382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 (A215020 (n + 1)).toNat

end

end A082386.P16223661730628286382

namespace A082386

/-- `A081294(A215020(n+1))` -/
def P16223661730628286382.Spec : Prop :=
  ∀ n, P16223661730628286382.a n = A082386 n

end A082386

/-! ## A082386.P17955533497217693906

`A046699(A182105(n+1)²)`
-/

namespace A082386.P17955533497217693906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A182105 (n + 1) ^ 2).toNat

end

end A082386.P17955533497217693906

namespace A082386

/-- `A046699(A182105(n+1)²)` -/
def P17955533497217693906.Spec : Prop :=
  ∀ n, P17955533497217693906.a n = A082386 n

end A082386

/-! ## A082386.P1291356620837696665

`A046699(A000079(A215020(n+1))²)`
-/

namespace A082386.P1291356620837696665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A000079 (A215020 (n + 1)).toNat ^ 2).toNat

end

end A082386.P1291356620837696665

namespace A082386

/-- `A046699(A000079(A215020(n+1))²)` -/
def P1291356620837696665.Spec : Prop :=
  ∀ n, P1291356620837696665.a n = A082386 n

end A082386

/-! ## A082386.P7685810766883836863

`A046699(A182105(n+1)*A182105(n+1))`
-/

namespace A082386.P7685810766883836863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A182105 (n + 1) * A182105 (n + 1)).toNat

end

end A082386.P7685810766883836863

namespace A082386

/-- `A046699(A182105(n+1)*A182105(n+1))` -/
def P7685810766883836863.Spec : Prop :=
  ∀ n, P7685810766883836863.a n = A082386 n

end A082386

/-! ## A082386.P5497504555906178057

`A002618(A182105(n+1))%A330915(n+1)`
-/

namespace A082386.P5497504555906178057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002618 (A182105 (n + 1)).toNat) (A330915 (n + 1))

end

end A082386.P5497504555906178057

namespace A082386

/-- `A002618(A182105(n+1))%A330915(n+1)` -/
def P5497504555906178057.Spec : Prop :=
  ∀ n, P5497504555906178057.a n = A082386 n

end A082386

/-! ## A082386.P4627255692456565791

`A026741(A182105(n+1)²%A330915(n+1))`
-/

namespace A082386.P4627255692456565791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A182105 (n + 1) ^ 2) (A330915 (n + 1))).toNat

end

end A082386.P4627255692456565791

namespace A082386

/-- `A026741(A182105(n+1)²%A330915(n+1))` -/
def P4627255692456565791.Spec : Prop :=
  ∀ n, P4627255692456565791.a n = A082386 n

end A082386

/-! ## A082386.P6682334556955325219

`A026741(A182105(n+1)²)%A334937(n+1)`
-/

namespace A082386.P6682334556955325219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (A182105 (n + 1) ^ 2).toNat) (A334937 (n + 1))

end

end A082386.P6682334556955325219

namespace A082386

/-- `A026741(A182105(n+1)²)%A334937(n+1)` -/
def P6682334556955325219.Spec : Prop :=
  ∀ n, P6682334556955325219.a n = A082386 n

end A082386

/-! ## A082386.P8858277599101448120

`A000034(A018814(n))*A004525(A182105(n+1)²)`
-/

namespace A082386.P8858277599101448120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A018814 n).toNat * A004525 (A182105 (n + 1) ^ 2).toNat

end

end A082386.P8858277599101448120

namespace A082386

/-- `A000034(A018814(n))*A004525(A182105(n+1)²)` -/
def P8858277599101448120.Spec : Prop :=
  ∀ n, P8858277599101448120.a n = A082386 n

end A082386

/-!
# A082387: Numbers k such that (5^k + 2^k)/7 is prime.

The programs for A082387, there is no canonical definition to state claims against.
-/

/-! ## A082387.P5684410910793364915

`p?[A122116(n+1)]`
-/

namespace A082387.P5684410910793364915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082387.P5684410910793364915

/-! ## A082387.P535552864515054212

`filter[A122116(n+1), A000035(#)]`
-/

namespace A082387.P535552864515054212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A082387.P535552864515054212

/-! ## A082387.P18116815747764297039

`filter[A122116(n+1), A010051(#)]`
-/

namespace A082387.P18116815747764297039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A082387.P18116815747764297039

/-!
# A082388: a(1) = 1, a(2) = 2; further terms are defined by rules that for k >= 2, a(2^k-i) = a(2^k+i) for 1 <= i <= 2^k-1 and a(2^k) = a(2^(k-1)) + Sum_{i < 2^k} a(i).

The programs for A082388, the canonical program `A082388.P15289165366183734569` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082388 has offset 1).

The definition of A082388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082388.P15289165366183734569

`A006012(val(n+1, 2))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A082388

/-- `A006012(val(n+1, 2))` -/
def P15289165366183734569.Spec : Prop :=
  ∀ n, P15289165366183734569.a n = A082388 (n + 1)

theorem P15289165366183734569.correct : P15289165366183734569.Spec := by
  intro n
  simp only [A082388, Nat.add_sub_cancel]

end A082388

/-! ## A082388.P14991001713836311064

`A062112(val((n+1)², 2)+1)`
-/

namespace A082388.P14991001713836311064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (SequenceMachineLib.valuation ((n + 1) ^ 2) 2 + 1)

end

end A082388.P14991001713836311064

namespace A082388

/-- `A062112(val((n+1)², 2)+1)` -/
def P14991001713836311064.Spec : Prop :=
  ∀ n, P14991001713836311064.a n = A082388 (n + 1)

end A082388

/-! ## A082388.P17808353020256012664

`A062112(2*val(n+1, 2)+1)`
-/

namespace A082388.P17808353020256012664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (2 * SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A082388.P17808353020256012664

namespace A082388

/-- `A062112(2*val(n+1, 2)+1)` -/
def P17808353020256012664.Spec : Prop :=
  ∀ n, P17808353020256012664.a n = A082388 (n + 1)

end A082388

/-! ## A082388.P3678239339555999301

`A006012(log2(and(n+1, -(n+1))))`
-/

namespace A082388.P3678239339555999301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (SequenceMachineLib.roundAway (Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ))).toNat

end

end A082388.P3678239339555999301

namespace A082388

/-- `A006012(log2(and(n+1, -(n+1))))` -/
def P3678239339555999301.Spec : Prop :=
  ∀ n, P3678239339555999301.a n = A082388 (n + 1)

end A082388

/-! ## A082388.P3130411879095440950

`A006012(∑{e}[and(n+1, -(n+1)), #])`
-/

namespace A082388.P3130411879095440950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A082388.P3130411879095440950

namespace A082388

/-- `A006012(∑{e}[and(n+1, -(n+1)), #])` -/
def P3130411879095440950.Spec : Prop :=
  ∀ n, P3130411879095440950.a n = A082388 (n + 1)

end A082388

/-! ## A082388.P15875481935336099816

`∏{e}[and(n+1, -(n+1)), A006012(#)]`
-/

namespace A082388.P15875481935336099816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006012 (Nat.factorization (f1 n).natAbs p)

end

end A082388.P15875481935336099816

namespace A082388

/-- `∏{e}[and(n+1, -(n+1)), A006012(#)]` -/
def P15875481935336099816.Spec : Prop :=
  ∀ n, P15875481935336099816.a n = A082388 (n + 1)

end A082388

/-! ## A082388.P2557496487270410801

`A006012(A007814(n+1))`
-/

namespace A082388.P2557496487270410801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (A007814 (n + 1)).toNat

end

end A082388.P2557496487270410801

namespace A082388

/-- `A006012(A007814(n+1))` -/
def P2557496487270410801.Spec : Prop :=
  ∀ n, P2557496487270410801.a n = A082388 (n + 1)

end A082388

/-! ## A082388.P16413705057359415555

`A062112(A037227(n+1))`
-/

namespace A082388.P16413705057359415555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (A037227 (n + 1)).toNat

end

end A082388.P16413705057359415555

namespace A082388

/-- `A062112(A037227(n+1))` -/
def P16413705057359415555.Spec : Prop :=
  ∀ n, P16413705057359415555.a n = A082388 (n + 1)

end A082388

/-! ## A082388.P11869528433372667545

`A084867(A115364(n+1))`
-/

namespace A082388.P11869528433372667545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084867 (A115364 (n + 1)).toNat

end

end A082388.P11869528433372667545

namespace A082388

/-- `A084867(A115364(n+1))` -/
def P11869528433372667545.Spec : Prop :=
  ∀ n, P11869528433372667545.a n = A082388 (n + 1)

end A082388

/-! ## A082388.P6083474312124372740

`A062112(val(A093907(2*n+1), 2))`
-/

namespace A082388.P6083474312124372740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (SequenceMachineLib.valuation (A093907 (2 * n + 1)).toNat 2)

end

end A082388.P6083474312124372740

namespace A082388

/-- `A062112(val(A093907(2*n+1), 2))` -/
def P6083474312124372740.Spec : Prop :=
  ∀ n, P6083474312124372740.a n = A082388 (n + 1)

end A082388

/-!
# A082391: Start with the sequence a(1) to a(4) = 1, 3, 2, 3. Then in step s, append "1", "1,2", or "1,2,3", whichever ends with a(s+2).

The programs for A082391, the canonical program `A082391.P4712612013818769208` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082391 has offset 1).

The definition of A082391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082391.P4712612013818769208

`Δ[comp[A193739(n)+a(n-1)]]` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A082391

/-- `Δ[comp[A193739(n)+a(n-1)]]` -/
def P4712612013818769208.Spec : Prop :=
  ∀ n, P4712612013818769208.a n = A082391 (n + 1)

theorem P4712612013818769208.correct : P4712612013818769208.Spec := by
  intro n
  simp only [A082391, Nat.add_sub_cancel]

end A082391

/-! ## A082391.P12303917159820503533

`gcd(A195098(4*n+2), A313874(A000267(4*n)))`
-/

namespace A082391.P12303917159820503533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A195098 (4 * n + 2)) (A313874 (A000267 (4 * n)).toNat)

end

end A082391.P12303917159820503533

namespace A082391

/-- `gcd(A195098(4*n+2), A313874(A000267(4*n)))` -/
def P12303917159820503533.Spec : Prop :=
  ∀ n, (P12303917159820503533.a n : ℤ) = A082391 (n + 1)

end A082391

/-! ## A082391.P8226620354543736800

`A005361(A328690(n+1)+A196384(2*n+5))`
-/

namespace A082391.P8226620354543736800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A328690 (n + 1) + A196384 (2 * n + 5)).toNat

end

end A082391.P8226620354543736800

namespace A082391

/-- `A005361(A328690(n+1)+A196384(2*n+5))` -/
def P8226620354543736800.Spec : Prop :=
  ∀ n, P8226620354543736800.a n = A082391 (n + 1)

end A082391

/-! ## A082391.P14145504450624489370

`A324395(A158487(n+1))%A324395(A064654(n+1))`
-/

namespace A082391.P14145504450624489370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324395 (A158487 (n + 1)).toNat) (A324395 (A064654 (n + 1)).toNat)

end

end A082391.P14145504450624489370

namespace A082391

/-- `A324395(A158487(n+1))%A324395(A064654(n+1))` -/
def P14145504450624489370.Spec : Prop :=
  ∀ n, P14145504450624489370.a n = A082391 (n + 1)

end A082391

/-! ## A082391.P5673410981985482957

`A373403(A256396(n+1))`
-/

namespace A082391.P5673410981985482957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373403 (A256396 (n + 1)).toNat

end

end A082391.P5673410981985482957

namespace A082391

/-- `A373403(A256396(n+1))` -/
def P5673410981985482957.Spec : Prop :=
  ∀ n, P5673410981985482957.a n = A082391 (n + 1)

end A082391

/-!
# A082392: Expansion of (1/x) * Sum_{k>=0} x^2^k / (1 - 2*x^2^(k+1)).

The programs for A082392, the canonical program `A082392.P13734256271788639875` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082392 has offset 0).

The definition of A082392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082392.P13734256271788639875

`2^A025480(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A082392

/-- `2^A025480(n)` -/
def P13734256271788639875.Spec : Prop :=
  ∀ n, P13734256271788639875.a n = (A082392 n : ℚ)

end A082392

/-! ## A082392.P13324441538042894454

`2^(A003602(n+1)-1)`
-/

namespace A082392.P13324441538042894454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003602 (n + 1) - 1 : ℤ)

end

end A082392.P13324441538042894454

namespace A082392

/-- `2^(A003602(n+1)-1)` -/
def P13324441538042894454.Spec : Prop :=
  ∀ n, P13324441538042894454.a n = (A082392 n : ℚ)

end A082392

/-! ## A082392.P14237096739132473189

`2^floor(n/(xor(n, n+1)+1))`
-/

namespace A082392.P14237096739132473189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ : ℤ)

end

end A082392.P14237096739132473189

namespace A082392

/-- `2^floor(n/(xor(n, n+1)+1))` -/
def P14237096739132473189.Spec : Prop :=
  ∀ n, P14237096739132473189.a n = (A082392 n : ℚ)

end A082392

/-! ## A082392.P13398183940692827346

`sqrt(2)^floor(n/2^val(n+1, 2))`
-/

namespace A082392.P13398183940692827346
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) ^ (⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℤ)

end

end A082392.P13398183940692827346

namespace A082392

/-- `sqrt(2)^floor(n/2^val(n+1, 2))` -/
def P13398183940692827346.Spec : Prop :=
  ∀ n, P13398183940692827346.a n = (A082392 n : ℝ)

end A082392

/-! ## A082392.P3653526149304600688

`sqrt(2)^floor(n/(or(n, n+1)-n))`
-/

namespace A082392.P3653526149304600688
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) ^ (⌊(n : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)⌋ : ℤ)

end

end A082392.P3653526149304600688

namespace A082392

/-- `sqrt(2)^floor(n/(or(n, n+1)-n))` -/
def P3653526149304600688.Spec : Prop :=
  ∀ n, P3653526149304600688.a n = (A082392 n : ℝ)

end A082392

/-! ## A082392.P666453806702991048

`sqrt(2)^floor(n/and(n+1, -(n+1)))`
-/

namespace A082392.P666453806702991048
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) ^ (⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ : ℤ)

end

end A082392.P666453806702991048

namespace A082392

/-- `sqrt(2)^floor(n/and(n+1, -(n+1)))` -/
def P666453806702991048.Spec : Prop :=
  ∀ n, P666453806702991048.a n = (A082392 n : ℝ)

end A082392

/-! ## A082392.P16871971822164155573

`sqrt(2)^floor(n/(1-and(n, n+1)+n))`
-/

namespace A082392.P16871971822164155573
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) ^ (⌊(n : ℚ) / (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ) : ℚ)⌋ : ℤ)

end

end A082392.P16871971822164155573

namespace A082392

/-- `sqrt(2)^floor(n/(1-and(n, n+1)+n))` -/
def P16871971822164155573.Spec : Prop :=
  ∀ n, P16871971822164155573.a n = (A082392 n : ℝ)

end A082392

/-! ## A082392.P6530878084396722184

`sqrt(2)^floor(n/abs(or(n+1, -(n+1))))`
-/

namespace A082392.P6530878084396722184
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) ^ (⌊(n : ℚ) / (|Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))| : ℚ)⌋ : ℤ)

end

end A082392.P6530878084396722184

namespace A082392

/-- `sqrt(2)^floor(n/abs(or(n+1, -(n+1))))` -/
def P6530878084396722184.Spec : Prop :=
  ∀ n, P6530878084396722184.a n = (A082392 n : ℝ)

end A082392

/-! ## A082392.P15626130198007008495

`sqrt(2)^((n+1)/and(n+1, -(n+1))-1)`
-/

namespace A082392.P15626130198007008495
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) ^ ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) - 1 : ℝ)

end

end A082392.P15626130198007008495

namespace A082392

/-- `sqrt(2)^((n+1)/and(n+1, -(n+1))-1)` -/
def P15626130198007008495.Spec : Prop :=
  ∀ n, P15626130198007008495.a n = (A082392 n : ℝ)

end A082392

/-! ## A082392.P14858263979535798058

`sqrt(2)^A153733(n)`
-/

namespace A082392.P14858263979535798058
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) ^ (A153733 n : ℤ)

end

end A082392.P14858263979535798058

namespace A082392

/-- `sqrt(2)^A153733(n)` -/
def P14858263979535798058.Spec : Prop :=
  ∀ n, P14858263979535798058.a n = (A082392 n : ℝ)

end A082392

/-! ## A082392.P10648595451718497288

`2^A110962(2*n)`
-/

namespace A082392.P10648595451718497288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A110962 (2 * n) : ℤ)

end

end A082392.P10648595451718497288

namespace A082392

/-- `2^A110962(2*n)` -/
def P10648595451718497288.Spec : Prop :=
  ∀ n, P10648595451718497288.a n = (A082392 n : ℚ)

end A082392

/-! ## A082392.P14446275054990833061

`2^(A103391(n+2)-2)`
-/

namespace A082392.P14446275054990833061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A103391 (n + 2) - 2 : ℤ)

end

end A082392.P14446275054990833061

namespace A082392

/-- `2^(A103391(n+2)-2)` -/
def P14446275054990833061.Spec : Prop :=
  ∀ n, P14446275054990833061.a n = (A082392 n : ℚ)

end A082392

/-! ## A082392.P7929242780703285806

`2^floor(A000265(n+1)/2)`
-/

namespace A082392.P7929242780703285806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(A000265 (n + 1) : ℚ) / 2⌋ : ℤ)

end

end A082392.P7929242780703285806

namespace A082392

/-- `2^floor(A000265(n+1)/2)` -/
def P7929242780703285806.Spec : Prop :=
  ∀ n, P7929242780703285806.a n = (A082392 n : ℚ)

end A082392

/-! ## A082392.P6055884810801045667

`2^(n+1-A225381(n+1))`
-/

namespace A082392.P6055884810801045667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 1 : ℤ) - A225381 (n + 1) : ℤ)

end

end A082392.P6055884810801045667

namespace A082392

/-- `2^(n+1-A225381(n+1))` -/
def P6055884810801045667.Spec : Prop :=
  ∀ n, P6055884810801045667.a n = (A082392 n : ℚ)

end A082392

/-! ## A082392.P15073835285952333428

`A016116((n+1)/2^val(n+1, 2))`
-/

namespace A082392.P15073835285952333428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A082392.P15073835285952333428

namespace A082392

/-- `A016116((n+1)/2^val(n+1, 2))` -/
def P15073835285952333428.Spec : Prop :=
  ∀ n, P15073835285952333428.a n = A082392 n

end A082392

/-! ## A082392.P2277712475639379947

`A242971((n+1)/2^val(n+1, 2))`
-/

namespace A082392.P2277712475639379947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242971 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A082392.P2277712475639379947

namespace A082392

/-- `A242971((n+1)/2^val(n+1, 2))` -/
def P2277712475639379947.Spec : Prop :=
  ∀ n, P2277712475639379947.a n = A082392 n

end A082392

/-! ## A082392.P10432918186680754013

`A016116((n+1)/(or(n, n+1)-n))`
-/

namespace A082392.P10432918186680754013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A082392.P10432918186680754013

namespace A082392

/-- `A016116((n+1)/(or(n, n+1)-n))` -/
def P10432918186680754013.Spec : Prop :=
  ∀ n, P10432918186680754013.a n = A082392 n

end A082392

/-! ## A082392.P1142018155498697134

`A242971((n+1)/(or(n, n+1)-n))`
-/

namespace A082392.P1142018155498697134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242971 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A082392.P1142018155498697134

namespace A082392

/-- `A242971((n+1)/(or(n, n+1)-n))` -/
def P1142018155498697134.Spec : Prop :=
  ∀ n, P1142018155498697134.a n = A082392 n

end A082392

/-! ## A082392.P2510030611199521089

`A242971((n+1)/xor(n, or(n, n+1)))`
-/

namespace A082392.P2510030611199521089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242971 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat

end

end A082392.P2510030611199521089

namespace A082392

/-- `A242971((n+1)/xor(n, or(n, n+1)))` -/
def P2510030611199521089.Spec : Prop :=
  ∀ n, P2510030611199521089.a n = A082392 n

end A082392

/-!
# A082393: Let p = n-th prime of the form 4k+1, take the integer solution (x,y) to the Pellian equation x^2 - p*y^2 = 1 with the smallest y >= 1; sequence gives value of y.

The programs for A082393, there is no canonical definition to state claims against.
-/

/-! ## A082393.P2208228829624918368

`A002349(p?[A016813(n)])`
-/

namespace A082393.P2208228829624918368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082393.P2208228829624918368

/-! ## A082393.P5066652107421296106

`A002349(p?[A042948(n)])`
-/

namespace A082393.P5066652107421296106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082393.P5066652107421296106

/-! ## A082393.P9465986288601613641

`A002349(p?[A058281(n)])`
-/

namespace A082393.P9465986288601613641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082393.P9465986288601613641

/-! ## A082393.P13876357618489609321

`A002349(A002144(n+1))`
-/

namespace A082393.P13876357618489609321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (A002144 (n + 1)).toNat

end

end A082393.P13876357618489609321

/-! ## A082393.P440502190938872278

`A081234(A080147(n+1))`
-/

namespace A082393.P440502190938872278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081234 (A080147 (n + 1)).toNat

end

end A082393.P440502190938872278

/-! ## A082393.P15897734826032669655

`A002349(A002313(n+2))`
-/

namespace A082393.P15897734826032669655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (A002313 (n + 2)).toNat

end

end A082393.P15897734826032669655

/-! ## A082393.P15175368965099670853

`A002349(A280084(n+2))`
-/

namespace A082393.P15175368965099670853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (A280084 (n + 2)).toNat

end

end A082393.P15175368965099670853

/-! ## A082393.P1733083261687966158

`A002349(p?[A008574(n)-3])`
-/

namespace A082393.P1733083261687966158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082393.P1733083261687966158

/-! ## A082393.P6974697553769424918

`A002349(p?[or(1, A008574(n))])`
-/

namespace A082393.P6974697553769424918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008574 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082393.P6974697553769424918

/-! ## A082393.P17846684200146901560

`A002349(A152680(n+1)+1)`
-/

namespace A082393.P17846684200146901560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (A152680 (n + 1) + 1).toNat

end

end A082393.P17846684200146901560

/-!
# A082394: Let p = n-th prime of the form 4k+3, take the solution (x,y) to the Pellian equation x^2 - p*y^2 = 1 with x and smallest y >= 1; sequence gives value of y.

The programs for A082394, there is no canonical definition to state claims against.
-/

/-! ## A082394.P14660543979305850340

`A006703(p?[4*n-1])`
-/

namespace A082394.P14660543979305850340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082394.P14660543979305850340

/-! ## A082394.P18361142056745183499

`A006703(A002145(n+1))`
-/

namespace A082394.P18361142056745183499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A002145 (n + 1)).toNat

end

end A082394.P18361142056745183499

/-! ## A082394.P7301488056960684288

`A006703(A045326(n+2))`
-/

namespace A082394.P7301488056960684288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A045326 (n + 2)).toNat

end

end A082394.P7301488056960684288

/-! ## A082394.P15491544249379270321

`A006703(A281664(n+2)+1)`
-/

namespace A082394.P15491544249379270321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (A281664 (n + 2) + 1).toNat

end

end A082394.P15491544249379270321

/-! ## A082394.P6672834522479567114

`A006703(eq[or(2, n), A000010(n+1)]+1)`
-/

namespace A082394.P6672834522479567114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A082394.P6672834522479567114

/-! ## A082394.P10146765951725859373

`A002349(p?[4*n-1])`
-/

namespace A082394.P10146765951725859373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082394.P10146765951725859373

/-! ## A082394.P11299175209846088031

`A081234(A080148(n+1))`
-/

namespace A082394.P11299175209846088031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081234 (A080148 (n + 1)).toNat

end

end A082394.P11299175209846088031

/-! ## A082394.P6867707484733550427

`A306529(n+1)*A306566(n+1)`
-/

namespace A082394.P6867707484733550427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306529 (n + 1) * A306566 (n + 1)

end

end A082394.P6867707484733550427

/-!
# A082395: Number of shifted Young tableaux with height <= 3.

The programs for A082395, the canonical program `A082395.P766554720034617641` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082395 has offset 1).

The definition of A082395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082395.P16681658666254806605

`∑[(n-1)*(2*a(n-1)+3*a(n-2))/(n+1)]` with `a(0)=1, a(1)=0`
-/

namespace A082395.P16681658666254806605
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) * ((2 * f1 (n - 1) + 3 * f1 (n - 2)) / (n + 1 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082395.P16681658666254806605

namespace A082395

/-- `∑[(n-1)*(2*a(n-1)+3*a(n-2))/(n+1)]` -/
def P16681658666254806605.Spec : Prop :=
  ∀ n, P16681658666254806605.a n = (A082395 (n + 1) : ℚ)

end A082395

/-! ## A082395.P766554720034617641

`∑[A005043(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A082395

/-- `∑[A005043(n)]` -/
def P766554720034617641.Spec : Prop :=
  ∀ n, P766554720034617641.a n = A082395 (n + 1)

theorem P766554720034617641.correct : P766554720034617641.Spec := by
  intro n
  simp only [A082395, Nat.add_sub_cancel]

end A082395

/-! ## A082395.P3814977552418437286

`∑[abs(A099323(n+1))]`
-/

namespace A082395.P3814977552418437286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099323 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082395.P3814977552418437286

namespace A082395

/-- `∑[abs(A099323(n+1))]` -/
def P3814977552418437286.Spec : Prop :=
  ∀ n, P3814977552418437286.a n = A082395 (n + 1)

end A082395

/-! ## A082395.P1279596665878860835

`∑[abs(A174297(n+2))]`
-/

namespace A082395.P1279596665878860835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174297 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082395.P1279596665878860835

namespace A082395

/-- `∑[abs(A174297(n+2))]` -/
def P1279596665878860835.Spec : Prop :=
  ∀ n, P1279596665878860835.a n = A082395 (n + 1)

end A082395

/-! ## A082395.P9082190408781490040

`∑[abs(2-∑[A166587(n)])]`
-/

namespace A082395.P9082190408781490040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082395.P9082190408781490040

namespace A082395

/-- `∑[abs(2-∑[A166587(n)])]` -/
def P9082190408781490040.Spec : Prop :=
  ∀ n, P9082190408781490040.a n = A082395 (n + 1)

end A082395

/-! ## A082395.P9431784520584613131

`A097332(n)-a(n-1)` with `a(0)=1`
-/

namespace A082395.P9431784520584613131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097332 n - a (n - 1)

end

end A082395.P9431784520584613131

namespace A082395

/-- `A097332(n)-a(n-1)` -/
def P9431784520584613131.Spec : Prop :=
  ∀ n, P9431784520584613131.a n = A082395 (n + 1)

end A082395

/-! ## A082395.P7098424296400391721

`A342912(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A082395.P7098424296400391721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A342912 (n - 2) + a (n - 1)

end

end A082395.P7098424296400391721

namespace A082395

/-- `A342912(n-2)+a(n-1)` -/
def P7098424296400391721.Spec : Prop :=
  ∀ n, P7098424296400391721.a n = A082395 (n + 1)

end A082395

/-! ## A082395.P15609529544512360864

`∑[A001006(abs(1-n))-a(n-1)]` with `a(0)=1`
-/

namespace A082395.P15609529544512360864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001006 |1 - (n : ℤ)|.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082395.P15609529544512360864

namespace A082395

/-- `∑[A001006(abs(1-n))-a(n-1)]` -/
def P15609529544512360864.Spec : Prop :=
  ∀ n, P15609529544512360864.a n = A082395 (n + 1)

end A082395

/-! ## A082395.P4934080600507981121

`∑[gcd(A000038(n), A099323(n+1))]`
-/

namespace A082395.P4934080600507981121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A099323 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082395.P4934080600507981121

namespace A082395

/-- `∑[gcd(A000038(n), A099323(n+1))]` -/
def P4934080600507981121.Spec : Prop :=
  ∀ n, (P4934080600507981121.a n : ℤ) = A082395 (n + 1)

end A082395

/-! ## A082395.P11275507033307068403

`∑[lcm(A020985(n), A099323(n+1))]`
-/

namespace A082395.P11275507033307068403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A099323 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082395.P11275507033307068403

namespace A082395

/-- `∑[lcm(A020985(n), A099323(n+1))]` -/
def P11275507033307068403.Spec : Prop :=
  ∀ n, (P11275507033307068403.a n : ℤ) = A082395 (n + 1)

end A082395

/-! ## A082395.P5819409630752242248

`(A097332(n)+A005043(n))/2`
-/

namespace A082395.P5819409630752242248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097332 n + A005043 n : ℚ) / 2

end

end A082395.P5819409630752242248

namespace A082395

/-- `(A097332(n)+A005043(n))/2` -/
def P5819409630752242248.Spec : Prop :=
  ∀ n, P5819409630752242248.a n = (A082395 (n + 1) : ℚ)

end A082395

/-! ## A082395.P3603990630679453318

`∑[A372342(n+1)/(n+1)]`
-/

namespace A082395.P3603990630679453318
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372342 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082395.P3603990630679453318

namespace A082395

/-- `∑[A372342(n+1)/(n+1)]` -/
def P3603990630679453318.Spec : Prop :=
  ∀ n, P3603990630679453318.a n = (A082395 (n + 1) : ℚ)

end A082395

/-! ## A082395.P2359677903494310616

`∑[A278646(n)/(2*n+1)]`
-/

namespace A082395.P2359677903494310616
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278646 n : ℚ) / (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082395.P2359677903494310616

namespace A082395

/-- `∑[A278646(n)/(2*n+1)]` -/
def P2359677903494310616.Spec : Prop :=
  ∀ n, P2359677903494310616.a n = (A082395 (n + 1) : ℚ)

end A082395

/-! ## A082395.P2618793628762001121

`A097893(n)-A097861(n+1)`
-/

namespace A082395.P2618793628762001121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097893 n - A097861 (n + 1)

end

end A082395.P2618793628762001121

namespace A082395

/-- `A097893(n)-A097861(n+1)` -/
def P2618793628762001121.Spec : Prop :=
  ∀ n, P2618793628762001121.a n = A082395 (n + 1)

end A082395

/-! ## A082395.P5486346608802739541

`∑[A005213(2*n)-A005213(2*n+1)]`
-/

namespace A082395.P5486346608802739541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * n) - A005213 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082395.P5486346608802739541

namespace A082395

/-- `∑[A005213(2*n)-A005213(2*n+1)]` -/
def P5486346608802739541.Spec : Prop :=
  ∀ n, P5486346608802739541.a n = A082395 (n + 1)

end A082395

/-! ## A082395.P2558808464380405030

`A097861(n)+A383527(n)-A097861(n+1)`
-/

namespace A082395.P2558808464380405030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + (A383527 n - A097861 (n + 1))

end

end A082395.P2558808464380405030

namespace A082395

/-- `A097861(n)+A383527(n)-A097861(n+1)` -/
def P2558808464380405030.Spec : Prop :=
  ∀ n, P2558808464380405030.a n = A082395 (n + 1)

end A082395

/-! ## A082395.P13970342997049057130

`A257520(n)+A383527(n)-A257520(n+1)`
-/

namespace A082395.P13970342997049057130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n + (A383527 n - A257520 (n + 1))

end

end A082395.P13970342997049057130

namespace A082395

/-- `A257520(n)+A383527(n)-A257520(n+1)` -/
def P13970342997049057130.Spec : Prop :=
  ∀ n, P13970342997049057130.a n = A082395 (n + 1)

end A082395

/-! ## A082395.P13509797793392760427

`A383527(n+1)-A002426(n+1)`
-/

namespace A082395.P13509797793392760427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383527 (n + 1) - A002426 (n + 1)

end

end A082395.P13509797793392760427

namespace A082395

/-- `A383527(n+1)-A002426(n+1)` -/
def P13509797793392760427.Spec : Prop :=
  ∀ n, P13509797793392760427.a n = A082395 (n + 1)

end A082395

/-! ## A082395.P13355088083493454234

`A383527(n+1)+A097893(n)-A097893(n+1)`
-/

namespace A082395.P13355088083493454234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383527 (n + 1) + (A097893 n - A097893 (n + 1))

end

end A082395.P13355088083493454234

namespace A082395

/-- `A383527(n+1)+A097893(n)-A097893(n+1)` -/
def P13355088083493454234.Spec : Prop :=
  ∀ n, P13355088083493454234.a n = A082395 (n + 1)

end A082395

/-! ## A082395.P10883112117679990337

`A116409(n)+A116409(n)-A116410(n+1)`
-/

namespace A082395.P10883112117679990337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116409 n + (A116409 n - A116410 (n + 1))

end

end A082395.P10883112117679990337

namespace A082395

/-- `A116409(n)+A116409(n)-A116410(n+1)` -/
def P10883112117679990337.Spec : Prop :=
  ∀ n, P10883112117679990337.a n = A082395 (n + 1)

end A082395

/-!
# A082397: Number of directed aggregates of height <= 2 with n cells.

The programs for A082397, the canonical program `A082397.P14776032934976419240` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082397 has offset 1).

The definition of A082397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082397.P16257150176636611526

`∑[(2*a(n-1)+3*a(n-2))*(n+1)/(n+3)]` with `a(0)=1, a(1)=1`
-/

namespace A082397.P16257150176636611526
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (2 * f1 (n - 1) + 3 * f1 (n - 2)) * ((n + 1 : ℚ) / (n + 3 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082397.P16257150176636611526

namespace A082397

/-- `∑[(2*a(n-1)+3*a(n-2))*(n+1)/(n+3)]` -/
def P16257150176636611526.Spec : Prop :=
  ∀ n, P16257150176636611526.a n = (A082397 (n + 1) : ℚ)

end A082397

/-! ## A082397.P14776032934976419240

`∑[A342912(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A082397

/-- `∑[A342912(n)]` -/
def P14776032934976419240.Spec : Prop :=
  ∀ n, P14776032934976419240.a n = A082397 (n + 1)

theorem P14776032934976419240.correct : P14776032934976419240.Spec := by
  intro n
  simp only [A082397, Nat.add_sub_cancel]

end A082397

/-! ## A082397.P7341004885965337473

`∑[A005043(n+2)]`
-/

namespace A082397.P7341004885965337473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082397.P7341004885965337473

namespace A082397

/-- `∑[A005043(n+2)]` -/
def P7341004885965337473.Spec : Prop :=
  ∀ n, P7341004885965337473.a n = A082397 (n + 1)

end A082397

/-! ## A082397.P8754039611881325631

`A082395(n+3)-1`
-/

namespace A082397.P8754039611881325631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082395 (n + 3) - 1

end

end A082397.P8754039611881325631

namespace A082397

/-- `A082395(n+3)-1` -/
def P8754039611881325631.Spec : Prop :=
  ∀ n, P8754039611881325631.a n = A082397 (n + 1)

end A082397

/-! ## A082397.P12198831422444349121

`∑[abs(A099323(n+3))]`
-/

namespace A082397.P12198831422444349121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099323 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082397.P12198831422444349121

namespace A082397

/-- `∑[abs(A099323(n+3))]` -/
def P12198831422444349121.Spec : Prop :=
  ∀ n, P12198831422444349121.a n = A082397 (n + 1)

end A082397

/-! ## A082397.P15363925635844448709

`∑[abs(A174297(n+4))]`
-/

namespace A082397.P15363925635844448709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174297 (n + 4)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082397.P15363925635844448709

namespace A082397

/-- `∑[abs(A174297(n+4))]` -/
def P15363925635844448709.Spec : Prop :=
  ∀ n, P15363925635844448709.a n = A082397 (n + 1)

end A082397

/-! ## A082397.P14004802305701735927

`∑[A103872(n+1)/2]`
-/

namespace A082397.P14004802305701735927
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103872 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082397.P14004802305701735927

namespace A082397

/-- `∑[A103872(n+1)/2]` -/
def P14004802305701735927.Spec : Prop :=
  ∀ n, P14004802305701735927.a n = (A082397 (n + 1) : ℚ)

end A082397

/-! ## A082397.P12182550186810069597

`∑[A001006(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A082397.P12182550186810069597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001006 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082397.P12182550186810069597

namespace A082397

/-- `∑[A001006(n+1)-a(n-1)]` -/
def P12182550186810069597.Spec : Prop :=
  ∀ n, P12182550186810069597.a n = A082397 (n + 1)

end A082397

/-! ## A082397.P5689780526557716907

`record[Δ[A082395(A082404(n+3))]]`
-/

namespace A082397.P5689780526557716907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082395 (A082404 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082397.P5689780526557716907

namespace A082397

/-- `record[Δ[A082395(A082404(n+3))]]` -/
def P5689780526557716907.Spec : Prop :=
  ∀ n, P5689780526557716907.a n = A082397 (n + 1)

end A082397

/-! ## A082397.P14293519849655537210

`A097893(n)-A304011(n+1)`
-/

namespace A082397.P14293519849655537210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097893 n - A304011 (n + 1)

end

end A082397.P14293519849655537210

namespace A082397

/-- `A097893(n)-A304011(n+1)` -/
def P14293519849655537210.Spec : Prop :=
  ∀ n, P14293519849655537210.a n = A082397 (n + 1)

end A082397

/-! ## A082397.P15890255896366785750

`∑[A089942(A000217(n+1)+1)]`
-/

namespace A082397.P15890255896366785750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089942 (A000217 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082397.P15890255896366785750

namespace A082397

/-- `∑[A089942(A000217(n+1)+1)]` -/
def P15890255896366785750.Spec : Prop :=
  ∀ n, P15890255896366785750.a n = A082397 (n + 1)

end A082397

/-! ## A082397.P3468586724208658876

`∑[A089942(A000217(n+2))]`
-/

namespace A082397.P3468586724208658876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089942 (A000217 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082397.P3468586724208658876

namespace A082397

/-- `∑[A089942(A000217(n+2))]` -/
def P3468586724208658876.Spec : Prop :=
  ∀ n, P3468586724208658876.a n = A082397 (n + 1)

end A082397

/-!
# A082398: Number of directed, diagonally convex polyominoes with n cells.

The programs for A082398, the canonical program `A082398.P13732524671903596160` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082398 has offset 1).

The definition of A082398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082398.P13732524671903596160

`1-char[1]-n*A152163(2*n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A082398

/-- `1-char[1]-n*A152163(2*n)` -/
def P13732524671903596160.Spec : Prop :=
  ∀ n, P13732524671903596160.a n = A082398 (n + 1)

theorem P13732524671903596160.correct : P13732524671903596160.Spec := by
  intro n
  simp only [A082398, Nat.add_sub_cancel]

end A082398

/-!
# A082399: a(1) = 1; thereafter, a(n) is the smallest nonnegative number such that the number Sum_{i=1..n} a(i)*10^(n-i) is divisible by n.

The programs for A082399, there is no canonical definition to state claims against.
-/

/-! ## A082399.P9713327942858953563

`A080468(A000079(n+2)-A051883(n+1))`
-/

namespace A082399.P9713327942858953563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080468 (A000079 (n + 2) - A051883 (n + 1)).toNat

end

end A082399.P9713327942858953563

/-! ## A082399.P7091291576067885885

`A080468(A011782(n+3)-A051883(n+1))`
-/

namespace A082399.P7091291576067885885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080468 (A011782 (n + 3) - A051883 (n + 1)).toNat

end

end A082399.P7091291576067885885

