import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A276502: Least k > 0 such that A045876(n) divides A045876(n*10^k).

The programs for A276502, the canonical program `A276502.P6559098655028179355` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276502 has offset 1).

The definition of A276502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276502.P1878779432497022858

`A160093(n+1)!+val(n+1, 10)`
-/

namespace A276502.P1878779432497022858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A160093 (n + 1)).toNat + SequenceMachineLib.valuation (n + 1) 10

end

end A276502.P1878779432497022858

namespace A276502

/-- `A160093(n+1)!+val(n+1, 10)` -/
def P1878779432497022858.Spec : Prop :=
  ∀ n, (P1878779432497022858.a n : ℤ) = A276502 (n + 1)

end A276502

/-! ## A276502.P6559098655028179355

`lcm(((n+1)%a(n-1))!, A055642(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276502

/-- `lcm(((n+1)%a(n-1))!, A055642(n+1))` -/
def P6559098655028179355.Spec : Prop :=
  ∀ n, (P6559098655028179355.a n : ℤ) = A276502 (n + 1)

theorem P6559098655028179355.correct : P6559098655028179355.Spec := by
  intro n
  simp only [A276502, Nat.add_sub_cancel]

end A276502

/-! ## A276502.P17078153420680693384

`A197111(lcm(val(n+1, 10)+1, ∑{digits}[n, 10^#]%9))`
-/

namespace A276502.P17078153420680693384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197111 (Nat.lcm (SequenceMachineLib.valuation (n + 1) 10 + 1) (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9))

end

end A276502.P17078153420680693384

namespace A276502

/-- `A197111(lcm(val(n+1, 10)+1, ∑{digits}[n, 10^#]%9))` -/
def P17078153420680693384.Spec : Prop :=
  ∀ n, P17078153420680693384.a n = A276502 (n + 1)

end A276502

/-! ## A276502.P6999147560343757008

`A003506(A079790(n+1))`
-/

namespace A276502.P6999147560343757008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (A079790 (n + 1)).toNat

end

end A276502.P6999147560343757008

namespace A276502

/-- `A003506(A079790(n+1))` -/
def P6999147560343757008.Spec : Prop :=
  ∀ n, P6999147560343757008.a n = A276502 (n + 1)

end A276502

/-! ## A276502.P7959118800903778849

`A307720(A123895(n+1))`
-/

namespace A276502.P7959118800903778849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (A123895 (n + 1)).toNat

end

end A276502.P7959118800903778849

namespace A276502

/-- `A307720(A123895(n+1))` -/
def P7959118800903778849.Spec : Prop :=
  ∀ n, P7959118800903778849.a n = A276502 (n + 1)

end A276502

/-! ## A276502.P9273323612927647162

`lcm(A043562(n), A047726(n+1))`
-/

namespace A276502.P9273323612927647162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043562 n) (A047726 (n + 1))

end

end A276502.P9273323612927647162

namespace A276502

/-- `lcm(A043562(n), A047726(n+1))` -/
def P9273323612927647162.Spec : Prop :=
  ∀ n, (P9273323612927647162.a n : ℤ) = A276502 (n + 1)

end A276502

/-! ## A276502.P10575459700076268803

`A055641(n)!*A055642(n+1)`
-/

namespace A276502.P10575459700076268803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A055641 n).toNat : ℤ) * A055642 (n + 1)

end

end A276502.P10575459700076268803

namespace A276502

/-- `A055641(n)!*A055642(n+1)` -/
def P10575459700076268803.Spec : Prop :=
  ∀ n, P10575459700076268803.a n = A276502 (n + 1)

end A276502

/-! ## A276502.P14994190257746904283

`A055642(n+1)*A055642(floor(sqrt(n)))`
-/

namespace A276502.P14994190257746904283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1) * A055642 (Nat.sqrt n)

end

end A276502.P14994190257746904283

namespace A276502

/-- `A055642(n+1)*A055642(floor(sqrt(n)))` -/
def P14994190257746904283.Spec : Prop :=
  ∀ n, P14994190257746904283.a n = A276502 (n + 1)

end A276502

/-! ## A276502.P13916268646451008346

`round(sqrt(A055642(n)))*A055642(n+1)`
-/

namespace A276502.P13916268646451008346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A055642 n : ℝ)) * A055642 (n + 1)

end

end A276502.P13916268646451008346

namespace A276502

/-- `round(sqrt(A055642(n)))*A055642(n+1)` -/
def P13916268646451008346.Spec : Prop :=
  ∀ n, P13916268646451008346.a n = A276502 (n + 1)

end A276502

/-! ## A276502.P8998787376424958051

`A047726(A047726(n+1)+abs(1-n))`
-/

namespace A276502.P8998787376424958051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A047726 (n + 1) + |1 - (n : ℤ)|).toNat

end

end A276502.P8998787376424958051

namespace A276502

/-- `A047726(A047726(n+1)+abs(1-n))` -/
def P8998787376424958051.Spec : Prop :=
  ∀ n, P8998787376424958051.a n = A276502 (n + 1)

end A276502

/-! ## A276502.P4915786426461958895

`A173921(a(n-1))+A004216(n+1)` with `a(0)=1`
-/

namespace A276502.P4915786426461958895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A173921 (a (n - 1)).toNat + A004216 (n + 1)

end

end A276502.P4915786426461958895

namespace A276502

/-- `A173921(a(n-1))+A004216(n+1)` -/
def P4915786426461958895.Spec : Prop :=
  ∀ n, P4915786426461958895.a n = A276502 (n + 1)

end A276502

/-! ## A276502.P3762790859713569893

`A055642(n+1)*A279387(a(n-1))` with `a(0)=1`
-/

namespace A276502.P3762790859713569893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055642 (n + 1) * A279387 (a (n - 1)).toNat

end

end A276502.P3762790859713569893

namespace A276502

/-- `A055642(n+1)*A279387(a(n-1))` -/
def P3762790859713569893.Spec : Prop :=
  ∀ n, P3762790859713569893.a n = A276502 (n + 1)

end A276502

/-! ## A276502.P16161935702951790197

`A055642(n+1)*A329429(a(n-1))` with `a(0)=1`
-/

namespace A276502.P16161935702951790197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055642 (n + 1) * A329429 (a (n - 1)).toNat

end

end A276502.P16161935702951790197

namespace A276502

/-- `A055642(n+1)*A329429(a(n-1))` -/
def P16161935702951790197.Spec : Prop :=
  ∀ n, P16161935702951790197.a n = A276502 (n + 1)

end A276502

/-! ## A276502.P14944084979825094091

`A055642(n+1)*A055884(∑{digits}[n, and(1, #)!])`
-/

namespace A276502.P14944084979825094091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1) * A055884 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.land 1 x)).sum

end

end A276502.P14944084979825094091

namespace A276502

/-- `A055642(n+1)*A055884(∑{digits}[n, and(1, #)!])` -/
def P14944084979825094091.Spec : Prop :=
  ∀ n, P14944084979825094091.a n = A276502 (n + 1)

end A276502

/-! ## A276502.P7846920349708577444

`A055642(n+1)*A076325(∑{digits}[n, and(1, #)!])`
-/

namespace A276502.P7846920349708577444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1) * A076325 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.land 1 x)).sum

end

end A276502.P7846920349708577444

namespace A276502

/-- `A055642(n+1)*A076325(∑{digits}[n, and(1, #)!])` -/
def P7846920349708577444.Spec : Prop :=
  ∀ n, P7846920349708577444.a n = A276502 (n + 1)

end A276502

/-! ## A276502.P10469724446435723999

`A034968(A055642(n+1)^(a(n-1)+1))` with `a(0)=1`
-/

namespace A276502.P10469724446435723999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034968 (SequenceMachineLib.roundAway ((A055642 (n + 1) : ℚ) ^ (a (n - 1) + 1 : ℤ))).toNat

end

end A276502.P10469724446435723999

namespace A276502

/-- `A034968(A055642(n+1)^(a(n-1)+1))` -/
def P10469724446435723999.Spec : Prop :=
  ∀ n, P10469724446435723999.a n = A276502 (n + 1)

end A276502

/-! ## A276502.P18072501367982744156

`lcm(A055642(n+1), A055642(A087509(n)))`
-/

namespace A276502.P18072501367982744156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055642 (n + 1)) (A055642 (A087509 n).toNat)

end

end A276502.P18072501367982744156

namespace A276502

/-- `lcm(A055642(n+1), A055642(A087509(n)))` -/
def P18072501367982744156.Spec : Prop :=
  ∀ n, (P18072501367982744156.a n : ℤ) = A276502 (n + 1)

end A276502

/-! ## A276502.P8682723820836445336

`A000045(∑{digits}[n, A015130(#)])*A055642(n+1)`
-/

namespace A276502.P8682723820836445336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A015130 x).sum.toNat * A055642 (n + 1)

end

end A276502.P8682723820836445336

namespace A276502

/-- `A000045(∑{digits}[n, A015130(#)])*A055642(n+1)` -/
def P8682723820836445336.Spec : Prop :=
  ∀ n, P8682723820836445336.a n = A276502 (n + 1)

end A276502

/-! ## A276502.P9408120821285192843

`A000045(∑{digits}[n, A105591(#)])*A055642(n+1)`
-/

namespace A276502.P9408120821285192843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A105591 x).sum.toNat * A055642 (n + 1)

end

end A276502.P9408120821285192843

namespace A276502

/-- `A000045(∑{digits}[n, A105591(#)])*A055642(n+1)` -/
def P9408120821285192843.Spec : Prop :=
  ∀ n, P9408120821285192843.a n = A276502 (n + 1)

end A276502

/-! ## A276502.P16224351252031025210

`A000045(∑{digits}[n, A212389(#)])*A055642(n+1)`
-/

namespace A276502.P16224351252031025210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A212389 x).sum.toNat * A055642 (n + 1)

end

end A276502.P16224351252031025210

namespace A276502

/-- `A000045(∑{digits}[n, A212389(#)])*A055642(n+1)` -/
def P16224351252031025210.Spec : Prop :=
  ∀ n, P16224351252031025210.a n = A276502 (n + 1)

end A276502

/-!
# A276503: Numbers n such that phi(n) = phi(n+10), with Euler's totient function phi = A000010.

The programs for A276503, the canonical program `A276503.P3868539189465671820` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276503 has offset 1).

The definition of A276503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276503.P3868539189465671820

`eq[A000010(n+11), A000010(n+1)]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A276503

/-- `eq[A000010(n+11), A000010(n+1)]+1` -/
def P3868539189465671820.Spec : Prop :=
  ∀ n, (P3868539189465671820.a n : ℤ) = A276503 (n + 1)

theorem P3868539189465671820.correct : P3868539189465671820.Spec := by
  intro n
  simp only [A276503, Nat.add_sub_cancel]

end A276503

/-! ## A276503.P17164079438985210677

`eq[A000010(n+10), A000010(A028310(n))]`
-/

namespace A276503.P17164079438985210677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276503.P17164079438985210677

namespace A276503

/-- `eq[A000010(n+10), A000010(A028310(n))]` -/
def P17164079438985210677.Spec : Prop :=
  ∀ n, (P17164079438985210677.a n : ℤ) = A276503 (n + 1)

end A276503

/-! ## A276503.P11729551825416084370

`eq[A000010(n+10), A000010(A000007(n)+n)]`
-/

namespace A276503.P11729551825416084370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276503.P11729551825416084370

namespace A276503

/-- `eq[A000010(n+10), A000010(A000007(n)+n)]` -/
def P11729551825416084370.Spec : Prop :=
  ∀ n, (P11729551825416084370.a n : ℤ) = A276503 (n + 1)

end A276503

/-! ## A276503.P5830238278559750209

`eq[A000010(A233583(n+1)), A000010(n+10)]`
-/

namespace A276503.P5830238278559750209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276503.P5830238278559750209

namespace A276503

/-- `eq[A000010(A233583(n+1)), A000010(n+10)]` -/
def P5830238278559750209.Spec : Prop :=
  ∀ n, (P5830238278559750209.a n : ℤ) = A276503 (n + 1)

end A276503

/-!
# A276504: Numbers n such that phi(n) = phi(n+11), with Euler's totient function phi = A000010.

The programs for A276504, there is no canonical definition to state claims against.
-/

/-! ## A276504.P12938383955399988198

`eq[A000010(n+1), A000010(n+12)]+1`
-/

namespace A276504.P12938383955399988198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 12)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276504.P12938383955399988198

/-! ## A276504.P15243272884518709953

`eq[A000010(n+11), A000010(A028310(n))]`
-/

namespace A276504.P15243272884518709953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276504.P15243272884518709953

/-! ## A276504.P8730732916947155382

`eq[A109606(n+11), A109606(A028310(n))]`
-/

namespace A276504.P8730732916947155382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276504.P8730732916947155382

/-! ## A276504.P14949012529910551245

`eq[A000010(n+11), A225530(n)]`
-/

namespace A276504.P14949012529910551245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276504.P14949012529910551245

/-!
# A276505: Number of rational numbers > 1 whose numerator in reduced form equals n and that can be written as a continued fraction with exactly three partial quotients.

The programs for A276505, there is no canonical definition to state claims against.
-/

/-! ## A276505.P1730248321291917814

`A025668(A008620(n)*A077168(n))`
-/

namespace A276505.P1730248321291917814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (A008620 n * A077168 n).toNat

end

end A276505.P1730248321291917814

/-! ## A276505.P17034965140053953734

`A025675(A008620(n)*A077168(n))`
-/

namespace A276505.P17034965140053953734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (A008620 n * A077168 n).toNat

end

end A276505.P17034965140053953734

/-! ## A276505.P1072190691326428885

`A000010(n+1)-A115570(A000930(n))`
-/

namespace A276505.P1072190691326428885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A115570 (A000930 n).toNat

end

end A276505.P1072190691326428885

/-! ## A276505.P9792406019958505124

`A000010(n+1)-A167967(A000041(n))`
-/

namespace A276505.P9792406019958505124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A167967 (A000041 n).toNat

end

end A276505.P9792406019958505124

/-!
# A276506: E.g.f.: exp(9*(exp(x)-1)).

The programs for A276506, there is no canonical definition to state claims against.
-/

/-! ## A276506.P5355482841639822697

`A189233(eq[9, A002262(n)])`
-/

namespace A276506.P5355482841639822697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276506.P5355482841639822697

/-! ## A276506.P11460395252464791677

`A292860(eq[9, A025581(n)])`
-/

namespace A276506.P11460395252464791677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276506.P11460395252464791677

/-! ## A276506.P18338975112263946226

`A189233(eq[9, A144328(n+1)])`
-/

namespace A276506.P18338975112263946226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276506.P18338975112263946226

/-! ## A276506.P8183353656346802678

`A189233(eq[10, A002260(n+1)])`
-/

namespace A276506.P8183353656346802678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276506.P8183353656346802678

/-! ## A276506.P8202228215653683429

`A292860(eq[10, A004736(n+1)])`
-/

namespace A276506.P8202228215653683429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276506.P8202228215653683429

/-!
# A276507: E.g.f.: exp(10*(exp(x)-1)).

The programs for A276507, there is no canonical definition to state claims against.
-/

/-! ## A276507.P17914334817639568135

`A189233(eq[10, A002262(n)])`
-/

namespace A276507.P17914334817639568135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276507.P17914334817639568135

/-! ## A276507.P12427577785638732640

`A292860(eq[10, A025581(n)])`
-/

namespace A276507.P12427577785638732640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276507.P12427577785638732640

/-! ## A276507.P12539592088478682465

`A189233(eq[10, A144328(n+1)])`
-/

namespace A276507.P12539592088478682465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276507.P12539592088478682465

/-! ## A276507.P12499510998764819019

`A189233(eq[11, A002260(n+1)])`
-/

namespace A276507.P12499510998764819019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276507.P12499510998764819019

/-! ## A276507.P16697971132579851453

`A292860(eq[11, A004736(n+1)])`
-/

namespace A276507.P16697971132579851453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276507.P16697971132579851453

/-!
# A276508: a(n) = (2*5^n + 3*(-1)^(floor((n-1)/3)) + (-1)^n)/6.

The programs for A276508, the canonical program `A276508.P6234309613304766583` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276508 has offset 0).

The definition of A276508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276508.P6234309613304766583

`6*a(n-1)-6*a(n-2)+5*a(n-3)` with `a(0)=0, a(1)=2, a(2)=9`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A276508

/-- `6*a(n-1)-6*a(n-2)+5*a(n-3)` -/
def P6234309613304766583.Spec : Prop :=
  ∀ n, P6234309613304766583.a n = A276508 n

theorem P6234309613304766583.correct : P6234309613304766583.Spec := by
  intro n
  simp only [A276508]

end A276508

/-! ## A276508.P8931161053487326727

`(2*5^n+3*(-1)^floor((n-1)/3)+(-1)^n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276508.P8931161053487326727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 5 ^ n : ℚ) + 3 * (-1 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 3⌋ : ℤ) + ((-1) ^ n : ℚ)) / 6

end

end A276508.P8931161053487326727

namespace A276508

/-- `(2*5^n+3*(-1)^floor((n-1)/3)+(-1)^n)/6` -/
def P8931161053487326727.Spec : Prop :=
  ∀ n, P8931161053487326727.a n = (A276508 n : ℚ)

end A276508

/-! ## A276508.P17188421681876557438

`A231103(n+1)+A131531(n+1)`
-/

namespace A276508.P17188421681876557438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231103 (n + 1) + A131531 (n + 1)

end

end A276508.P17188421681876557438

namespace A276508

/-- `A231103(n+1)+A131531(n+1)` -/
def P17188421681876557438.Spec : Prop :=
  ∀ n, P17188421681876557438.a n = A276508 n

end A276508

/-! ## A276508.P4640292192418649982

`A131531(n+1)+2*A015531(n)`
-/

namespace A276508.P4640292192418649982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1) + 2 * A015531 n

end

end A276508.P4640292192418649982

namespace A276508

/-- `A131531(n+1)+2*A015531(n)` -/
def P4640292192418649982.Spec : Prop :=
  ∀ n, P4640292192418649982.a n = A276508 n

end A276508

/-! ## A276508.P6462696984624285993

`2*5^n-A337753(n+1)`
-/

namespace A276508.P6462696984624285993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 5 ^ n : ℤ) - A337753 (n + 1)

end

end A276508.P6462696984624285993

namespace A276508

/-- `2*5^n-A337753(n+1)` -/
def P6462696984624285993.Spec : Prop :=
  ∀ n, P6462696984624285993.a n = A276508 n

end A276508

/-!
# A276509: Numbers k in base 10 such that the digits of 2 + k are the digits of 2k written in reverse order.

The programs for A276509, the canonical program `A276509.P2691038979915185785` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276509 has offset 1).

The definition of A276509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276509.P2691038979915185785

`5*10^n-3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A276509

/-- `5*10^n-3` -/
def P2691038979915185785.Spec : Prop :=
  ∀ n, P2691038979915185785.a n = A276509 (n + 1)

theorem P2691038979915185785.correct : P2691038979915185785.Spec := by
  intro n
  simp only [A276509, Nat.add_sub_cancel]

end A276509

/-! ## A276509.P762396214832483551

`∑[10*a(n-1)]` with `a(0)=2, a(1)=45`
-/

namespace A276509.P762396214832483551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 45] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276509.P762396214832483551

namespace A276509

/-- `∑[10*a(n-1)]` -/
def P762396214832483551.Spec : Prop :=
  ∀ n, (P762396214832483551.a n : ℤ) = A276509 (n + 1)

end A276509

/-! ## A276509.P2875402420336116953

`9*(10/9*a(n-1)+3)` with `a(0)=2`
-/

namespace A276509.P2875402420336116953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  9 * ((10 : ℚ) / 9 * a (n - 1) + 3)

end

end A276509.P2875402420336116953

namespace A276509

/-- `9*(10/9*a(n-1)+3)` -/
def P2875402420336116953.Spec : Prop :=
  ∀ n, P2875402420336116953.a n = (A276509 (n + 1) : ℚ)

theorem P2875402420336116953.correct : P2875402420336116953.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A276509, Nat.add_sub_cancel, A276509.P2875402420336116953.a, A276509.P2691038979915185785.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A276509, Nat.add_sub_cancel, A276509.P2875402420336116953.a, A276509.P2691038979915185785.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A276509

/-! ## A276509.P17350733596290373002

`floor(a(n-1)+3*3*(a(n-1)+3))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A276509.P17350733596290373002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 3 * (3 * (a (n - 1) + 3))

end

end A276509.P17350733596290373002

namespace A276509

/-- `floor(a(n-1)+3*3*(a(n-1)+3))` -/
def P17350733596290373002.Spec : Prop :=
  ∀ n, (P17350733596290373002.a n : ℤ) = A276509 (n + 1)

theorem P17350733596290373002.correct : P17350733596290373002.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A276509, Nat.add_sub_cancel, A276509.P17350733596290373002.a, A276509.P2691038979915185785.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A276509, Nat.add_sub_cancel, A276509.P17350733596290373002.a, A276509.P2691038979915185785.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A276509

/-! ## A276509.P1501488326515762153

`abs(2-A198971(n))`
-/

namespace A276509.P1501488326515762153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A198971 n|

end

end A276509.P1501488326515762153

namespace A276509

/-- `abs(2-A198971(n))` -/
def P1501488326515762153.Spec : Prop :=
  ∀ n, P1501488326515762153.a n = A276509 (n + 1)

end A276509

/-! ## A276509.P10845214122603453279

`abs(4-A199685(n))`
-/

namespace A276509.P10845214122603453279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A199685 n|

end

end A276509.P10845214122603453279

namespace A276509

/-- `abs(4-A199685(n))` -/
def P10845214122603453279.Spec : Prop :=
  ∀ n, P10845214122603453279.a n = A276509 (n + 1)

end A276509

/-! ## A276509.P7950678753833664381

`abs(3-Δ[A002279(n)])`
-/

namespace A276509.P7950678753833664381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (f1 (n + 1) - f1 n)|

end

end A276509.P7950678753833664381

namespace A276509

/-- `abs(3-Δ[A002279(n)])` -/
def P7950678753833664381.Spec : Prop :=
  ∀ n, P7950678753833664381.a n = A276509 (n + 1)

end A276509

/-! ## A276509.P7309256230052069280

`abs(3-5*A011557(n))`
-/

namespace A276509.P7309256230052069280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - 5 * A011557 n|

end

end A276509.P7309256230052069280

namespace A276509

/-- `abs(3-5*A011557(n))` -/
def P7309256230052069280.Spec : Prop :=
  ∀ n, P7309256230052069280.a n = A276509 (n + 1)

end A276509

/-! ## A276509.P14557666876134714530

`(A170955(n+1)+3)/2`
-/

namespace A276509.P14557666876134714530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170955 (n + 1) + 3 : ℚ) / 2

end

end A276509.P14557666876134714530

namespace A276509

/-- `(A170955(n+1)+3)/2` -/
def P14557666876134714530.Spec : Prop :=
  ∀ n, P14557666876134714530.a n = (A276509 (n + 1) : ℚ)

end A276509

/-! ## A276509.P10055846138375276420

`2*(A086576(n)/2+1)`
-/

namespace A276509.P10055846138375276420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A086576 n : ℚ) / 2 + 1)

end

end A276509.P10055846138375276420

namespace A276509

/-- `2*(A086576(n)/2+1)` -/
def P10055846138375276420.Spec : Prop :=
  ∀ n, P10055846138375276420.a n = (A276509 (n + 1) : ℚ)

end A276509

/-! ## A276509.P6892800355237979543

`(A173833(n+1)-3)/2`
-/

namespace A276509.P6892800355237979543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173833 (n + 1) - 3 : ℚ) / 2

end

end A276509.P6892800355237979543

namespace A276509

/-- `(A173833(n+1)-3)/2` -/
def P6892800355237979543.Spec : Prop :=
  ∀ n, P6892800355237979543.a n = (A276509 (n + 1) : ℚ)

end A276509

/-! ## A276509.P12832263885396184245

`∑[Δ[A093143(n)]-(abs(1-n)+1)+n]`
-/

namespace A276509.P12832263885396184245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (|1 - (n : ℤ)| + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276509.P12832263885396184245

namespace A276509

/-- `∑[Δ[A093143(n)]-(abs(1-n)+1)+n]` -/
def P12832263885396184245.Spec : Prop :=
  ∀ n, P12832263885396184245.a n = A276509 (n + 1)

end A276509

/-! ## A276509.P3453823705959186086

`Δ[A002279(n)-A016777(n)]`
-/

namespace A276509.P3453823705959186086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276509.P3453823705959186086

namespace A276509

/-- `Δ[A002279(n)-A016777(n)]` -/
def P3453823705959186086.Spec : Prop :=
  ∀ n, P3453823705959186086.a n = A276509 (n + 1)

end A276509

/-!
# A276516: Expansion of Product_{k>=1} (1-x^(k^2)).

The programs for A276516, there is no canonical definition to state claims against.
-/

/-! ## A276516.P14655597617313914455

`A033461(n)-2*A339367(n)`
-/

namespace A276516.P14655597617313914455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 n - 2 * A339367 n

end

end A276516.P14655597617313914455

/-! ## A276516.P769900533141300453

`Δ[A298601(abs(1-n))]`
-/

namespace A276516.P769900533141300453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298601 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276516.P769900533141300453

/-! ## A276516.P3009774274122936597

`A339366(n)-A339367(n)`
-/

namespace A276516.P3009774274122936597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339366 n - A339367 n

end

end A276516.P3009774274122936597

/-! ## A276516.P3675339484936388226

`2*A339366(n)-A033461(n)`
-/

namespace A276516.P3675339484936388226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339366 n - A033461 n

end

end A276516.P3675339484936388226

/-! ## A276516.P6078636278819855924

`A298601(n)-A298601(abs(1-n))`
-/

namespace A276516.P6078636278819855924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298601 n - A298601 |1 - (n : ℤ)|.toNat

end

end A276516.P6078636278819855924

/-!
# A276517: Indices k such that A276516(k) = 0.

The programs for A276517, there is no canonical definition to state claims against.
-/

/-! ## A276517.P14345001659836367822

`eq[0, A276516(n)]`
-/

namespace A276517.P14345001659836367822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276517.P14345001659836367822

/-! ## A276517.P5004976113088851353

`lt[A276516(n+1)², 1]+1`
-/

namespace A276517.P5004976113088851353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276516 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A276517.P5004976113088851353

/-! ## A276517.P9862199999494827946

`record[gcd(n+2, A276516(n+2))]`
-/

namespace A276517.P9862199999494827946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A276516 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276517.P9862199999494827946

/-! ## A276517.P12265494395199120538

`eq[A339366(n), A339367(n)]`
-/

namespace A276517.P12265494395199120538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339366 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339367 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276517.P12265494395199120538

/-! ## A276517.P16102814177842998183

`lt[A276516(n)², 1/A066657(n)]`
-/

namespace A276517.P16102814177842998183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276516 n ^ 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A066657 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A276517.P16102814177842998183

/-!
# A276519: Expansion of Product_{k>=1} 1/(1 - x^(2*k) - x^(3*k)).

The programs for A276519, there is no canonical definition to state claims against.
-/

/-! ## A276519.P4570200791143994594

`A056556(A000637(n)-A136251(n+1))`
-/

namespace A276519.P4570200791143994594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A000637 n - A136251 (n + 1)).toNat

end

end A276519.P4570200791143994594

/-! ## A276519.P16254194081732324151

`A056556(xor(A000637(n), A136251(n+1)))`
-/

namespace A276519.P16254194081732324151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (Int.xor (A000637 n) (A136251 (n + 1))).toNat

end

end A276519.P16254194081732324151

/-! ## A276519.P17205599167899171628

`A185284(3*n+2)+A027633(n)`
-/

namespace A276519.P17205599167899171628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (3 * n + 2) + A027633 n

end

end A276519.P17205599167899171628

/-! ## A276519.P7314500125192587876

`or(A091726(n), A185284(3*n+4))`
-/

namespace A276519.P7314500125192587876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A091726 n) (A185284 (3 * n + 4))

end

end A276519.P7314500125192587876

/-! ## A276519.P11815592620943197970

`or(A091769(n), A185284(3*n+4))`
-/

namespace A276519.P11815592620943197970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A091769 n) (A185284 (3 * n + 4))

end

end A276519.P11815592620943197970

/-!
# A276520: a(n) is the number of decompositions of n into unordered form p + c*q, where p, q are terms of A274987, c=1 for even n-s and c=2 for odd n-s.

The programs for A276520, there is no canonical definition to state claims against.
-/

/-! ## A276520.P2529733675602015919

`A278341(A296762(n+1))`
-/

namespace A276520.P2529733675602015919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278341 (A296762 (n + 1)).toNat

end

end A276520.P2529733675602015919

/-! ## A276520.P7552935123140456463

`A278341(lt[A278350(n+1), A278336(n+1)])`
-/

namespace A276520.P7552935123140456463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278341 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A276520.P7552935123140456463

/-! ## A276520.P5648332003406830439

`A278341(∑[∑[A058343(n)]])`
-/

namespace A276520.P5648332003406830439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278341 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276520.P5648332003406830439

/-! ## A276520.P3256485167562829212

`A278341(A077342(n+1))`
-/

namespace A276520.P3256485167562829212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278341 (A077342 (n + 1)).toNat

end

end A276520.P3256485167562829212

/-!
# A276522: Zero terms of A276520.

The programs for A276522, there is no canonical definition to state claims against.
-/

/-! ## A276522.P11547199673487940814

`eq[0, A276520(n+1)]+1`
-/

namespace A276522.P11547199673487940814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276520 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A276522.P11547199673487940814

/-! ## A276522.P14893015394091544244

`record[gcd(A000027(n+1), A276520(n+1))]`
-/

namespace A276522.P14893015394091544244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A276520 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276522.P14893015394091544244

/-! ## A276522.P10067041412027039665

`lt[A276520(n+1), A158388(n+4)]+1`
-/

namespace A276522.P10067041412027039665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A276522.P10067041412027039665

/-! ## A276522.P16175434811902054196

`eq[A000007(n), A276520(A028310(n))]`
-/

namespace A276522.P16175434811902054196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276520 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276522.P16175434811902054196

/-! ## A276522.P3822556984421183013

`eq[A000038(n), A276520(A028310(n))]`
-/

namespace A276522.P3822556984421183013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276520 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276522.P3822556984421183013

/-!
# A276523: Partition an n X n square into multiple non-congruent integer-sided rectangles. a(n) is the least possible difference between the largest and smallest area.

The programs for A276523, there is no canonical definition to state claims against.
-/

/-! ## A276523.P14281200556844552742

`3-(A278970(n+3)-A050501(n+3))`
-/

namespace A276523.P14281200556844552742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (A278970 (n + 3) - A050501 (n + 3))

end

end A276523.P14281200556844552742

/-! ## A276523.P6141558928163213129

`A167991(A293596(A311931(n)))`
-/

namespace A276523.P6141558928163213129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167991 (A293596 (A311931 n).toNat).toNat

end

end A276523.P6141558928163213129

/-!
# A276528: Least number with same prime signature as sigma(n), the sum of the divisors of n: a(n) = A046523(A000203(n)).

The programs for A276528, the canonical program `A276528.P3257649031178375640` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276528 has offset 1).

The definition of A276528 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276528.P3257649031178375640

`A046523(A000203(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A276528

/-- `A046523(A000203(n+1))` -/
def P3257649031178375640.Spec : Prop :=
  ∀ n, P3257649031178375640.a n = A276528 (n + 1)

theorem P3257649031178375640.correct : P3257649031178375640.Spec := by
  intro n
  simp only [A276528, Nat.add_sub_cancel]

end A276528

/-! ## A276528.P3502241083962733922

`A025487(A101296(∑{d}[n+1, #]))`
-/

namespace A276528.P3502241083962733922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A276528.P3502241083962733922

namespace A276528

/-- `A025487(A101296(∑{d}[n+1, #]))` -/
def P3502241083962733922.Spec : Prop :=
  ∀ n, P3502241083962733922.a n = A276528 (n + 1)

end A276528

/-! ## A276528.P16247585826162640521

`A046523(∑{d}[n+1, #])`
-/

namespace A276528.P16247585826162640521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A276528.P16247585826162640521

namespace A276528

/-- `A046523(∑{d}[n+1, #])` -/
def P16247585826162640521.Spec : Prop :=
  ∀ n, P16247585826162640521.a n = A276528 (n + 1)

end A276528

/-! ## A276528.P13200019522077994774

`sqrt(A278254(∑{d}[n+1, #]))`
-/

namespace A276528.P13200019522077994774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A278254 (∑ d ∈ Nat.divisors (f1 n), d) : ℝ)

end

end A276528.P13200019522077994774

namespace A276528

/-- `sqrt(A278254(∑{d}[n+1, #]))` -/
def P13200019522077994774.Spec : Prop :=
  ∀ n, P13200019522077994774.a n = (A276528 (n + 1) : ℝ)

end A276528

/-! ## A276528.P9145274808225632577

`A046523(sqrt(A072861(n+1)))`
-/

namespace A276528.P9145274808225632577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A276528.P9145274808225632577

namespace A276528

/-- `A046523(sqrt(A072861(n+1)))` -/
def P9145274808225632577.Spec : Prop :=
  ∀ n, P9145274808225632577.a n = A276528 (n + 1)

end A276528

/-! ## A276528.P589017503250146151

`A046523(A039653(n+1)+1)`
-/

namespace A276528.P589017503250146151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A039653 (n + 1) + 1).toNat

end

end A276528.P589017503250146151

namespace A276528

/-- `A046523(A039653(n+1)+1)` -/
def P589017503250146151.Spec : Prop :=
  ∀ n, P589017503250146151.a n = A276528 (n + 1)

end A276528

/-! ## A276528.P12948822202711682538

`A046523(A088580(n+1)-1)`
-/

namespace A276528.P12948822202711682538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A088580 (n + 1) - 1).toNat

end

end A276528.P12948822202711682538

namespace A276528

/-- `A046523(A088580(n+1)-1)` -/
def P12948822202711682538.Spec : Prop :=
  ∀ n, P12948822202711682538.a n = A276528 (n + 1)

end A276528

/-! ## A276528.P12339576815341691064

`A181821(A181819(∑{d}[n+1, #]))`
-/

namespace A276528.P12339576815341691064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181819 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A276528.P12339576815341691064

namespace A276528

/-- `A181821(A181819(∑{d}[n+1, #]))` -/
def P12339576815341691064.Spec : Prop :=
  ∀ n, P12339576815341691064.a n = A276528 (n + 1)

end A276528

/-! ## A276528.P17310691058366112272

`A046523(A146076(2*(n+1))/2)`
-/

namespace A276528.P17310691058366112272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A146076 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A276528.P17310691058366112272

namespace A276528

/-- `A046523(A146076(2*(n+1))/2)` -/
def P17310691058366112272.Spec : Prop :=
  ∀ n, P17310691058366112272.a n = A276528 (n + 1)

end A276528

/-! ## A276528.P8540899522222572002

`A046523(A001065(n+1)+1+n)`
-/

namespace A276528.P8540899522222572002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A276528.P8540899522222572002

namespace A276528

/-- `A046523(A001065(n+1)+1+n)` -/
def P8540899522222572002.Spec : Prop :=
  ∀ n, P8540899522222572002.a n = A276528 (n + 1)

end A276528

/-! ## A276528.P15790997109966061932

`A046523(A155085(n+1)-(n+1))`
-/

namespace A276528.P15790997109966061932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

end

end A276528.P15790997109966061932

namespace A276528

/-- `A046523(A155085(n+1)-(n+1))` -/
def P15790997109966061932.Spec : Prop :=
  ∀ n, P15790997109966061932.a n = A276528 (n + 1)

end A276528

/-! ## A276528.P6028320226663665215

`A046523(A064987(n+1)/(n+1))`
-/

namespace A276528.P6028320226663665215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A276528.P6028320226663665215

namespace A276528

/-- `A046523(A064987(n+1)/(n+1))` -/
def P6028320226663665215.Spec : Prop :=
  ∀ n, P6028320226663665215.a n = A276528 (n + 1)

end A276528

/-! ## A276528.P488034988394841413

`A046523(A048146(n+1)+A034448(n+1))`
-/

namespace A276528.P488034988394841413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A048146 (n + 1) + A034448 (n + 1)).toNat

end

end A276528.P488034988394841413

namespace A276528

/-- `A046523(A048146(n+1)+A034448(n+1))` -/
def P488034988394841413.Spec : Prop :=
  ∀ n, P488034988394841413.a n = A276528 (n + 1)

end A276528

/-! ## A276528.P8317554965629230224

`A046523(A146076(n+1)+A000593(n+1))`
-/

namespace A276528.P8317554965629230224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A146076 (n + 1) + A000593 (n + 1)).toNat

end

end A276528.P8317554965629230224

namespace A276528

/-- `A046523(A146076(n+1)+A000593(n+1))` -/
def P8317554965629230224.Spec : Prop :=
  ∀ n, P8317554965629230224.a n = A276528 (n + 1)

end A276528

/-! ## A276528.P15500510589812774709

`A046523(A007503(n+1)-A000005(n+1))`
-/

namespace A276528.P15500510589812774709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A007503 (n + 1) - A000005 (n + 1)).toNat

end

end A276528.P15500510589812774709

namespace A276528

/-- `A046523(A007503(n+1)-A000005(n+1))` -/
def P15500510589812774709.Spec : Prop :=
  ∀ n, P15500510589812774709.a n = A276528 (n + 1)

end A276528

/-! ## A276528.P9385297490114815416

`A046523(A007955(n+1)-A076721(n+1))`
-/

namespace A276528.P9385297490114815416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A007955 (n + 1) - A076721 (n + 1)).toNat

end

end A276528.P9385297490114815416

namespace A276528

/-- `A046523(A007955(n+1)-A076721(n+1))` -/
def P9385297490114815416.Spec : Prop :=
  ∀ n, P9385297490114815416.a n = A276528 (n + 1)

end A276528

/-! ## A276528.P7946485818769622571

`A046523(A009205(n+1)*A057020(n+1))`
-/

namespace A276528.P7946485818769622571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A009205 (n + 1) * A057020 (n + 1)).toNat

end

end A276528.P7946485818769622571

namespace A276528

/-- `A046523(A009205(n+1)*A057020(n+1))` -/
def P7946485818769622571.Spec : Prop :=
  ∀ n, P7946485818769622571.a n = A276528 (n + 1)

end A276528

/-! ## A276528.P1813197051103104709

`A046523(A076722(n+1)/A007955(n+1))`
-/

namespace A276528.P1813197051103104709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A076722 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ))).toNat

end

end A276528.P1813197051103104709

namespace A276528

/-- `A046523(A076722(n+1)/A007955(n+1))` -/
def P1813197051103104709.Spec : Prop :=
  ∀ n, P1813197051103104709.a n = A276528 (n + 1)

end A276528

/-! ## A276528.P7749457178843563562

`A046523(A324213(n+1)+A325816(n+1)-1)`
-/

namespace A276528.P7749457178843563562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A324213 (n + 1) + (A325816 (n + 1) - 1)).toNat

end

end A276528.P7749457178843563562

namespace A276528

/-- `A046523(A324213(n+1)+A325816(n+1)-1)` -/
def P7749457178843563562.Spec : Prop :=
  ∀ n, P7749457178843563562.a n = A276528 (n + 1)

end A276528

/-! ## A276528.P2076393439030463460

`A046523(A220846(n+1)/A007956(n+1))`
-/

namespace A276528.P2076393439030463460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A220846 (n + 1) : ℚ) / (A007956 (n + 1) : ℚ))).toNat

end

end A276528.P2076393439030463460

namespace A276528

/-- `A046523(A220846(n+1)/A007956(n+1))` -/
def P2076393439030463460.Spec : Prop :=
  ∀ n, P2076393439030463460.a n = A276528 (n + 1)

end A276528

/-!
# A276529: a(n) = (a(n-1) * a(n-5) + 1) / a(n-6), a(0) = a(1) = ... = a(5) = 1.

The programs for A276529, the canonical program `A276529.P9150451268746120364` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276529 has offset 0).

The definition of A276529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276529.P9150451268746120364

`(a(n-1)*a(n-5)+1)/a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A276529

/-- `(a(n-1)*a(n-5)+1)/a(n-6)` -/
def P9150451268746120364.Spec : Prop :=
  ∀ n, P9150451268746120364.a n = (A276529 n : ℚ)

end A276529

/-! ## A276529.P4208021772214126772

`A171597(A273733(n))`
-/

namespace A276529.P4208021772214126772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171597 (A273733 n).toNat

end

end A276529.P4208021772214126772

namespace A276529

/-- `A171597(A273733(n))` -/
def P4208021772214126772.Spec : Prop :=
  ∀ n, P4208021772214126772.a n = A276529 n

end A276529

/-! ## A276529.P4457393111191228952

`∑[A284376(A003953(ceil(n/5)))]`
-/

namespace A276529.P4457393111191228952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284376 (A003953 ⌈(n : ℚ) / 5⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276529.P4457393111191228952

namespace A276529

/-- `∑[A284376(A003953(ceil(n/5)))]` -/
def P4457393111191228952.Spec : Prop :=
  ∀ n, P4457393111191228952.a n = A276529 n

end A276529

/-! ## A276529.P11224925525160038344

`A076984(A264701(n+2))`
-/

namespace A276529.P11224925525160038344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (A264701 (n + 2)).toNat

end

end A276529.P11224925525160038344

namespace A276529

/-- `A076984(A264701(n+2))` -/
def P11224925525160038344.Spec : Prop :=
  ∀ n, P11224925525160038344.a n = A276529 n

end A276529

/-! ## A276529.P15180454212865946592

`A076984(∏[A097992(n+1)])`
-/

namespace A276529.P15180454212865946592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276529.P15180454212865946592

namespace A276529

/-- `A076984(∏[A097992(n+1)])` -/
def P15180454212865946592.Spec : Prop :=
  ∀ n, P15180454212865946592.a n = A276529 n

end A276529

/-!
# A276530: a(n) = (a(n-1) * a(n-5) + a(n-3)^3) / a(n-6), a(0) = a(1) = ... = a(5) = 1.

The programs for A276530, there is no canonical definition to state claims against.
-/

/-! ## A276530.P16227671850921111651

`A025451(A056365(n))`
-/

namespace A276530.P16227671850921111651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 (A056365 n).toNat

end

end A276530.P16227671850921111651

/-! ## A276530.P16236878737045573914

`A061392(2^A078012(n))`
-/

namespace A276530.P16236878737045573914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A078012 n : ℤ))).toNat

end

end A276530.P16236878737045573914

/-! ## A276530.P13099064024085471443

`A304708(A001949(n)+n)`
-/

namespace A276530.P13099064024085471443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304708 (A001949 n + (n : ℤ)).toNat

end

end A276530.P13099064024085471443

/-! ## A276530.P2772767285631162354

`A018387(A095381(n+1)-n)`
-/

namespace A276530.P2772767285631162354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018387 (A095381 (n + 1) - (n : ℤ)).toNat

end

end A276530.P2772767285631162354

/-! ## A276530.P3744935621778514023

`A291295(ceil(A291294(n+1)/4))`
-/

namespace A276530.P3744935621778514023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291295 ⌈(A291294 (n + 1) : ℚ) / 4⌉.toNat

end

end A276530.P3744935621778514023

/-!
# A276531: a(n) = (a(n-1) * a(n-5) + a(n-2) * a(n-3) * a(n-4)) / a(n-6), with a(0) = a(1) = a(2) = a(3) = a(4) = a(5) = 1.

The programs for A276531, there is no canonical definition to state claims against.
-/

/-! ## A276531.P846309016149627262

`A236362(A218090(n)+A060102(n+1))`
-/

namespace A276531.P846309016149627262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236362 (A218090 n + A060102 (n + 1)).toNat

end

end A276531.P846309016149627262

/-! ## A276531.P6904513501710882128

`ceil(A321653(n)/35)`
-/

namespace A276531.P6904513501710882128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321653 n : ℚ) / 35⌉

end

end A276531.P6904513501710882128

/-! ## A276531.P1124126554161586132

`floor(root(A238329(n+1), 6))`
-/

namespace A276531.P1124126554161586132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A238329 (n + 1) : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A276531.P1124126554161586132

/-! ## A276531.P125777492933278385

`A324160(A321228(n))`
-/

namespace A276531.P125777492933278385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324160 (A321228 n).toNat

end

end A276531.P125777492933278385

/-! ## A276531.P13740567304606442238

`A276532(A068637(n+1))`
-/

namespace A276531.P13740567304606442238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276532 (A068637 (n + 1)).toNat

end

end A276531.P13740567304606442238

/-!
# A276532: a(n) = (a(n-1) * a(n-6) + a(n-2) * a(n-3) * a(n-4) * a(n-5)) / a(n-7), with a(0) = a(1) = a(2) = a(3) = a(4) = a(5) = a(6) = 1.

The programs for A276532, there is no canonical definition to state claims against.
-/

/-! ## A276532.P18175040466098463491

`A003686(A322854(n)%A351364(2*n+5))`
-/

namespace A276532.P18175040466098463491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003686 (Int.tmod (A322854 n) (A351364 (2 * n + 5))).toNat

end

end A276532.P18175040466098463491

/-! ## A276532.P10943619821273570026

`A276531(C(n, floor(n/6))-1)`
-/

namespace A276532.P10943619821273570026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276531 (Nat.choose n ⌊(n : ℚ) / 6⌋.toNat - 1)

end

end A276532.P10943619821273570026

/-! ## A276532.P5030978665380620377

`A207031(∑[A088468(n)])`
-/

namespace A276532.P5030978665380620377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207031 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276532.P5030978665380620377

/-! ## A276532.P10415395995012003752

`A318746(A195011(∑[n]))`
-/

namespace A276532.P10415395995012003752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318746 (A195011 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A276532.P10415395995012003752

/-! ## A276532.P10752549068608733784

`A320840(A064268(n+1))`
-/

namespace A276532.P10752549068608733784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320840 (A064268 (n + 1)).toNat

end

end A276532.P10752549068608733784

/-!
# A276534: a(n) = a(n-1) * a(n-4) * (a(n-2) * a(n-3) + 1) / a(n-5), with a(0) = a(1) = a(2) = a(3) = a(4) = 1.

The programs for A276534, the canonical program `A276534.P4993812688869123094` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276534 has offset 0).

The definition of A276534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276534.P4993812688869123094

`a(n-1)*a(n-4)*(a(n-2)*a(n-3)+1)/a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A276534

/-- `a(n-1)*a(n-4)*(a(n-2)*a(n-3)+1)/a(n-5)` -/
def P4993812688869123094.Spec : Prop :=
  ∀ n, P4993812688869123094.a n = (A276534 n : ℚ)

end A276534

/-! ## A276534.P10136382418462807939

`∏[A080237(∑[ceil(2^(n-2))]²)]`
-/

namespace A276534.P10136382418462807939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A276534.P10136382418462807939

namespace A276534

/-- `∏[A080237(∑[ceil(2^(n-2))]²)]` -/
def P10136382418462807939.Spec : Prop :=
  ∀ n, P10136382418462807939.a n = A276534 n

end A276534

/-! ## A276534.P2955057174343184309

`A116596(a(n-1)+n-2)` with `a(0)=1, a(1)=1`
-/

namespace A276534.P2955057174343184309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A116596 (a (n - 1) + ((n : ℤ) - 2)).toNat

end

end A276534.P2955057174343184309

namespace A276534

/-- `A116596(a(n-1)+n-2)` -/
def P2955057174343184309.Spec : Prop :=
  ∀ n, P2955057174343184309.a n = A276534 n

end A276534

/-! ## A276534.P17188651032007446330

`A332367(a(n-1)+a(n-2)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2`
-/

namespace A276534.P17188651032007446330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 2] fun n a =>
  A332367 (a (n - 1) + a (n - 2) - a (n - 3)).toNat

end

end A276534.P17188651032007446330

namespace A276534

/-- `A332367(a(n-1)+a(n-2)-a(n-3))` -/
def P17188651032007446330.Spec : Prop :=
  ∀ n, P17188651032007446330.a n = A276534 n

end A276534

/-! ## A276534.P10333083851479207023

`A238781(A238389(n))`
-/

namespace A276534.P10333083851479207023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238781 (A238389 n).toNat

end

end A276534.P10333083851479207023

namespace A276534

/-- `A238781(A238389(n))` -/
def P10333083851479207023.Spec : Prop :=
  ∀ n, P10333083851479207023.a n = A276534 n

end A276534

/-!
# A276535: a(n) = a(n-1) * a(n-6) * (a(n-2) * a(n-5) * (a(n-3) * a(n-4) + 1) + 1) / a(n-7), with a(0) = a(1) = a(2) = a(3) = a(4) = a(5) = a(6) = 1.

The programs for A276535, there is no canonical definition to state claims against.
-/

/-! ## A276535.P14207396658293050045

`A002723(A023433(n))`
-/

namespace A276535.P14207396658293050045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002723 (A023433 n).toNat

end

end A276535.P14207396658293050045

/-! ## A276535.P6338539457494494387

`A002723(A190168(n))`
-/

namespace A276535.P6338539457494494387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002723 (A190168 n).toNat

end

end A276535.P6338539457494494387

/-! ## A276535.P9655557724093261074

`A274613(A052823(n))`
-/

namespace A276535.P9655557724093261074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274613 (A052823 n).toNat

end

end A276535.P9655557724093261074

/-! ## A276535.P16365270654587099100

`A364350(A000600(n))`
-/

namespace A276535.P16365270654587099100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364350 (A000600 n).toNat

end

end A276535.P16365270654587099100

/-! ## A276535.P5887200228897496875

`A122620(A351345(n))`
-/

namespace A276535.P5887200228897496875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122620 (A351345 n).toNat

end

end A276535.P5887200228897496875

/-!
# A276540: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 499", based on the 5-celled von Neumann neighborhood.

The programs for A276540, there is no canonical definition to state claims against.
-/

/-! ## A276540.P10006094960739229095

`A288701(A000007(A023360(n))+n)`
-/

namespace A276540.P10006094960739229095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288701 (A000007 (A023360 n).toNat + (n : ℤ)).toNat

end

end A276540.P10006094960739229095

/-! ## A276540.P4745283177970437238

`or(A193356(A285436(n)), A288701(n))`
-/

namespace A276540.P4745283177970437238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A193356 (A285436 n).toNat) (A288701 n)

end

end A276540.P4745283177970437238

/-! ## A276540.P8276212886426964122

`or(A048298(A084919(n+1)), A288701(n))`
-/

namespace A276540.P8276212886426964122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048298 (A084919 (n + 1)).toNat) (A288701 n)

end

end A276540.P8276212886426964122

/-! ## A276540.P10724505630346284649

`A288701(n)+A048298(A084919(n+1))*A048298(n)`
-/

namespace A276540.P10724505630346284649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288701 n + A048298 (A084919 (n + 1)).toNat * A048298 n

end

end A276540.P10724505630346284649

/-! ## A276540.P18076223351357021766

`or(A288701(n), A288711(A001595(n)))`
-/

namespace A276540.P18076223351357021766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A288701 n) (A288711 (A001595 n).toNat)

end

end A276540.P18076223351357021766

/-!
# A276541: Positive integers n such that the ring of integers of Q(sqrt(n)) is not a UFD.

The programs for A276541, there is no canonical definition to state claims against.
-/

/-! ## A276541.P1244261621546368648

`lt[1, A202053(n+1)]+1`
-/

namespace A276541.P1244261621546368648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A276541.P1244261621546368648

/-! ## A276541.P18175963437257010777

`comp[∪[A219361(n+1), n²]]`
-/

namespace A276541.P18175963437257010777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219361 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A276541.P18175963437257010777

/-! ## A276541.P6260389126287691007

`comp[A219361(n+2)-2]+2`
-/

namespace A276541.P6260389126287691007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219361 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A276541.P6260389126287691007

/-! ## A276541.P6982923943014797352

`lt[1, A202053(A008574(n))]`
-/

namespace A276541.P6982923943014797352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A276541.P6982923943014797352

/-! ## A276541.P13294583685942497738

`lt[1, A202053(A028310(n))]`
-/

namespace A276541.P13294583685942497738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A276541.P13294583685942497738

/-! ## A276541.P16370240321486665143

`A020725(lt[1, A202053(n+1)])`
-/

namespace A276541.P16370240321486665143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A276541.P16370240321486665143

/-! ## A276541.P17357813021474358384

`A065475(lt[1, A202053(n+1)])`
-/

namespace A276541.P17357813021474358384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A276541.P17357813021474358384

/-! ## A276541.P10279310548219668101

`lt[1, A202053(A233583(n+1))]`
-/

namespace A276541.P10279310548219668101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A276541.P10279310548219668101

/-! ## A276541.P16288918437328066726

`eq[1, A008683(C(A202053(n+1)+5, 2)+5)²]+1`
-/

namespace A276541.P16288918437328066726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.choose (A202053 (n + 1) + 5).toNat 2 + 5) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A276541.P16288918437328066726

/-!
# A276542: Numbers k such that the k-th and (k+1)st triangular numbers have the same number of divisors.

The programs for A276542, the canonical program `A276542.P6729285358371022252` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276542 has offset 1).

The definition of A276542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276542.P5411714130176037337

`floor(sqrt(2*A319035(n+1)))`
-/

namespace A276542.P5411714130176037337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A319035 (n + 1))

end

end A276542.P5411714130176037337

namespace A276542

/-- `floor(sqrt(2*A319035(n+1)))` -/
def P5411714130176037337.Spec : Prop :=
  ∀ n, P5411714130176037337.a n = A276542 (n + 1)

end A276542

/-! ## A276542.P6729285358371022252

`eq[A063440(n+1), A063440(n+2)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A276542

/-- `eq[A063440(n+1), A063440(n+2)]+1` -/
def P6729285358371022252.Spec : Prop :=
  ∀ n, (P6729285358371022252.a n : ℤ) = A276542 (n + 1)

theorem P6729285358371022252.correct : P6729285358371022252.Spec := by
  intro n
  simp only [A276542, Nat.add_sub_cancel]

end A276542

/-! ## A276542.P3493734457475525096

`eq[A320111(n+1), A320111(n+3)]+1`
-/

namespace A276542.P3493734457475525096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276542.P3493734457475525096

namespace A276542

/-- `eq[A320111(n+1), A320111(n+3)]+1` -/
def P3493734457475525096.Spec : Prop :=
  ∀ n, (P3493734457475525096.a n : ℤ) = A276542 (n + 1)

end A276542

/-! ## A276542.P10155217128435291526

`eq[A338117(n+1), A338117(n+3)]+1`
-/

namespace A276542.P10155217128435291526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276542.P10155217128435291526

namespace A276542

/-- `eq[A338117(n+1), A338117(n+3)]+1` -/
def P10155217128435291526.Spec : Prop :=
  ∀ n, (P10155217128435291526.a n : ℤ) = A276542 (n + 1)

end A276542

/-! ## A276542.P420658491042997469

`eq[A277692(n+3), A277692(n+5)]+2`
-/

namespace A276542.P420658491042997469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A276542.P420658491042997469

namespace A276542

/-- `eq[A277692(n+3), A277692(n+5)]+2` -/
def P420658491042997469.Spec : Prop :=
  ∀ n, (P420658491042997469.a n : ℤ) = A276542 (n + 1)

end A276542

/-! ## A276542.P10938000847091490394

`A080098(A319035(n+1))`
-/

namespace A276542.P10938000847091490394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A319035 (n + 1)).toNat

end

end A276542.P10938000847091490394

namespace A276542

/-- `A080098(A319035(n+1))` -/
def P10938000847091490394.Spec : Prop :=
  ∀ n, P10938000847091490394.a n = A276542 (n + 1)

end A276542

/-!
# A276543: Triangle read by rows: T(n,k) = number of primitive (period n) n-bead bracelet structures using exactly k different colored beads.

The programs for A276543, there is no canonical definition to state claims against.
-/

/-! ## A276543.P4755809271963104101

`A107424(n+1)+A001489(A320647(n+1))`
-/

namespace A276543.P4755809271963104101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107424 (n + 1) + A001489 (A320647 (n + 1)).toNat

end

end A276543.P4755809271963104101

/-! ## A276543.P8938403149145290931

`A107424(n+1)-A025480(A152175(n+1)-A304972(n+1))`
-/

namespace A276543.P8938403149145290931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107424 (n + 1) - A025480 (A152175 (n + 1) - A304972 (n + 1)).toNat

end

end A276543.P8938403149145290931

/-! ## A276543.P2467160614079816159

`A107424(n+1)-A110654(A152175(n+1)-A304972(n+1))`
-/

namespace A276543.P2467160614079816159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107424 (n + 1) - A110654 (A152175 (n + 1) - A304972 (n + 1)).toNat

end

end A276543.P2467160614079816159

/-! ## A276543.P14061898761986762948

`A107424(n+1)-A320647(n+1)%A141214(n)`
-/

namespace A276543.P14061898761986762948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107424 (n + 1) - Int.tmod (A320647 (n + 1)) (A141214 n)

end

end A276543.P14061898761986762948

/-! ## A276543.P17158360512413149704

`A257564(A137651(n+1))`
-/

namespace A276543.P17158360512413149704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A137651 (n + 1)).toNat

end

end A276543.P17158360512413149704

/-!
# A276544: Triangle read by rows: T(n,k) = number of primitive (aperiodic) reversible string structures with n beads using exactly k different colors.

The programs for A276544, there is no canonical definition to state claims against.
-/

/-! ## A276544.P811152666330064320

`A117707(2*A111184(n))`
-/

namespace A276544.P811152666330064320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (2 * A111184 n).toNat

end

end A276544.P811152666330064320

/-! ## A276544.P11583440346166614596

`A117707(A111184(n)+A111184(n))`
-/

namespace A276544.P11583440346166614596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A111184 n + A111184 n).toNat

end

end A276544.P11583440346166614596

/-! ## A276544.P10485678168824123198

`A214753(n)-A295884(A019460(n))`
-/

namespace A276544.P10485678168824123198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 n - A295884 (A019460 n).toNat

end

end A276544.P10485678168824123198

/-! ## A276544.P7402922364230888765

`A214753(n)-A185284(3*n+1)`
-/

namespace A276544.P7402922364230888765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 n - A185284 (3 * n + 1)

end

end A276544.P7402922364230888765

/-! ## A276544.P9346553579770628515

`A214753(n)-A037912(A280461(n))`
-/

namespace A276544.P9346553579770628515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 n - A037912 (A280461 n).toNat

end

end A276544.P9346553579770628515

/-!
# A276547: Number of primitive (period n) n-bead necklace structures using an infinite alphabet.

The programs for A276547, there is no canonical definition to state claims against.
-/

/-! ## A276547.P5812515437140304540

`A320749(n+1)+A004719(A276548(n+1))`
-/

namespace A276547.P5812515437140304540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320749 (n + 1) + A004719 (A276548 (n + 1)).toNat

end

end A276547.P5812515437140304540

/-! ## A276547.P14311284357229080966

`A320749(n+1)+A004719(A328035(n+1)+A285042(n+1))`
-/

namespace A276547.P14311284357229080966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320749 (n + 1) + A004719 (A328035 (n + 1) + A285042 (n + 1)).toNat

end

end A276547.P14311284357229080966

/-! ## A276547.P6551126817593688861

`A320749(n+1)+A028310(A328035(n+1)+A285042(n+1))`
-/

namespace A276547.P6551126817593688861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320749 (n + 1) + A028310 (A328035 (n + 1) + A285042 (n + 1)).toNat

end

end A276547.P6551126817593688861

/-! ## A276547.P7146743468303463759

`A320749(n+1)+A089247(A328035(n+1)+A285042(n+1))`
-/

namespace A276547.P7146743468303463759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320749 (n + 1) + A089247 (A328035 (n + 1) + A285042 (n + 1)).toNat

end

end A276547.P7146743468303463759

/-! ## A276547.P5255652075166391510

`A320749(n+1)-A001489(A328035(n+1)+A285042(n+1))`
-/

namespace A276547.P5255652075166391510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320749 (n + 1) - A001489 (A328035 (n + 1) + A285042 (n + 1)).toNat

end

end A276547.P5255652075166391510

/-!
# A276548: Number of primitive (period n) bracelet structures using an infinite alphabet.

The programs for A276548, there is no canonical definition to state claims against.
-/

/-! ## A276548.P4339626285585645046

`A328035(n+1)+A285042(n+1)`
-/

namespace A276548.P4339626285585645046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328035 (n + 1) + A285042 (n + 1)

end

end A276548.P4339626285585645046

/-! ## A276548.P3301576239280685059

`A276547(n+1)+A001489(A320749(n+1))`
-/

namespace A276548.P3301576239280685059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276547 (n + 1) + A001489 (A320749 (n + 1)).toNat

end

end A276548.P3301576239280685059

/-! ## A276548.P4608742354800307802

`A004719(A276547(n+1)-A320749(n+1))`
-/

namespace A276548.P4608742354800307802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A276547 (n + 1) - A320749 (n + 1)).toNat

end

end A276548.P4608742354800307802

/-! ## A276548.P2658944646810217029

`A028310(A276547(n+1)-A320749(n+1))`
-/

namespace A276548.P2658944646810217029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A276547 (n + 1) - A320749 (n + 1)).toNat

end

end A276548.P2658944646810217029

/-! ## A276548.P13112195243227117228

`A089247(A276547(n+1)-A320749(n+1))`
-/

namespace A276548.P13112195243227117228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A276547 (n + 1) - A320749 (n + 1)).toNat

end

end A276548.P13112195243227117228

/-!
# A276549: Number of primitive (aperiodic) reversible string structures with n beads using an infinite alphabet.

The programs for A276549, there is no canonical definition to state claims against.
-/

/-! ## A276549.P8294767091226335008

`A056335(n+1)+A011672(A047039(n))`
-/

namespace A276549.P8294767091226335008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056335 (n + 1) + A011672 (A047039 n).toNat

end

end A276549.P8294767091226335008

/-! ## A276549.P18181841047626257472

`A125005(A001844(n))+A056335(n+1)`
-/

namespace A276549.P18181841047626257472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A001844 n).toNat + A056335 (n + 1)

end

end A276549.P18181841047626257472

/-!
# A276550: Array read by antidiagonals: T(n,k) = number of primitive (period n) bracelets using a maximum of k different colored beads.

The programs for A276550, there is no canonical definition to state claims against.
-/

/-! ## A276550.P8405360441125468178

`(A284856(n+1)+A074650(n+1))/2`
-/

namespace A276550.P8405360441125468178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284856 (n + 1) + A074650 (n + 1) : ℚ) / 2

end

end A276550.P8405360441125468178

/-! ## A276550.P6702170742406970681

`(A284856(n+1)+A143324(n+1)/A193738(n))/2`
-/

namespace A276550.P6702170742406970681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A284856 (n + 1) : ℚ) + (A143324 (n + 1) : ℚ) / (A193738 n : ℚ)) / 2

end

end A276550.P6702170742406970681

/-! ## A276550.P17085474804337433537

`(A284856(n+1)+A143324(n+1)/(A002262(n)+1))/2`
-/

namespace A276550.P17085474804337433537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A284856 (n + 1) : ℚ) + (A143324 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)) / 2

end

end A276550.P17085474804337433537

/-! ## A276550.P9569043590606541328

`(A284856(n+1)+A143324(n+1)/A080511(n+1))/2`
-/

namespace A276550.P9569043590606541328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A284856 (n + 1) : ℚ) + (A143324 (n + 1) : ℚ) / (A080511 (n + 1) : ℚ)) / 2

end

end A276550.P9569043590606541328

/-! ## A276550.P11669249599067752971

`(A284856(n+1)+A143324(n+1)/sqrt(A133819(n+1)))/2`
-/

namespace A276550.P11669249599067752971
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A284856 (n + 1) : ℝ) + (A143324 (n + 1) : ℝ) / Real.sqrt (A133819 (n + 1) : ℝ)) / 2

end

end A276550.P11669249599067752971

/-! ## A276550.P10964799319562817880

`(A284856(n+1)+A143324(n+1)/A004736(A038722(n+1)))/2`
-/

namespace A276550.P10964799319562817880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A284856 (n + 1) : ℚ) + (A143324 (n + 1) : ℚ) / (A004736 (A038722 (n + 1)).toNat : ℚ)) / 2

end

end A276550.P10964799319562817880

/-! ## A276550.P17868246854495217132

`A014682(A284856(n+1)+A074650(n+1))`
-/

namespace A276550.P17868246854495217132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A284856 (n + 1) + A074650 (n + 1)).toNat

end

end A276550.P17868246854495217132

/-! ## A276550.P4250951808868063233

`A273943(A284856(n+1)+A074650(n+1))`
-/

namespace A276550.P4250951808868063233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A284856 (n + 1) + A074650 (n + 1)).toNat

end

end A276550.P4250951808868063233

/-! ## A276550.P5969483200621758880

`A001281(A284856(n+1)+A074650(n+1))`
-/

namespace A276550.P5969483200621758880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A284856 (n + 1) + A074650 (n + 1)).toNat

end

end A276550.P5969483200621758880

/-! ## A276550.P12933222753204589525

`A004525(A284856(n+1)+A074650(n+1))`
-/

namespace A276550.P12933222753204589525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A284856 (n + 1) + A074650 (n + 1)).toNat

end

end A276550.P12933222753204589525

/-!
# A276551: Convolution square of A073592.

The programs for A276551, there is no canonical definition to state claims against.
-/

/-! ## A276551.P5409600240497576576

`A276554(∑[n+3])`
-/

namespace A276551.P5409600240497576576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276551.P5409600240497576576

/-! ## A276551.P3216597595082097061

`or(char[2], A276554(A055998(n+1)))`
-/

namespace A276551.P3216597595082097061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A276554 (A055998 (n + 1)).toNat)

end

end A276551.P3216597595082097061

/-! ## A276551.P2685680648361789212

`A276554(A055998(n+1))%A042164(n)`
-/

namespace A276551.P2685680648361789212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276554 (A055998 (n + 1)).toNat) (A042164 n)

end

end A276551.P2685680648361789212

/-! ## A276551.P17315276727227650144

`A014963(A008458(n))*A276554(A055998(n+1))`
-/

namespace A276551.P17315276727227650144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A276554 (A055998 (n + 1)).toNat

end

end A276551.P17315276727227650144

/-! ## A276551.P14821276317108921801

`A003415(A000040(n+1))*A276554(A055998(n+1))`
-/

namespace A276551.P14821276317108921801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000040 (n + 1)).toNat * A276554 (A055998 (n + 1)).toNat

end

end A276551.P14821276317108921801

/-! ## A276551.P9807340226433025394

`A003415(A006530(n+2))*A276554(A055998(n+1))`
-/

namespace A276551.P9807340226433025394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A006530 (n + 2)).toNat * A276554 (A055998 (n + 1)).toNat

end

end A276551.P9807340226433025394

/-!
# A276552: Expansion of Product_{k>0} (1 - x^k)^(k*3).

The programs for A276552, there is no canonical definition to state claims against.
-/

/-! ## A276552.P9682901392286415683

`A276554(∑[n+4]+2)`
-/

namespace A276552.P9682901392286415683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A276552.P9682901392286415683

/-! ## A276552.P12313943196469962561

`A276554(A046691(n+2))%A016903(n)`
-/

namespace A276552.P12313943196469962561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276554 (A046691 (n + 2)).toNat) (A016903 n)

end

end A276552.P12313943196469962561

/-! ## A276552.P10051830426571548489

`A276554(A046691(n+2))^A070750(n+1)²`
-/

namespace A276552.P10051830426571548489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276554 (A046691 (n + 2)).toNat : ℚ) ^ (A070750 (n + 1) ^ 2 : ℤ)

end

end A276552.P10051830426571548489

/-! ## A276552.P16537450626669172086

`A276554(A046691(n+2))^A014963(2*(2*n+1))`
-/

namespace A276552.P16537450626669172086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276554 (A046691 (n + 2)).toNat : ℚ) ^ (A014963 (2 * (2 * n + 1)) : ℤ)

end

end A276552.P16537450626669172086

/-! ## A276552.P11006731412138151807

`A276554(A046691(n+2))^A001221(A034699(n+1))`
-/

namespace A276552.P11006731412138151807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276554 (A046691 (n + 2)).toNat : ℚ) ^ (A001221 (A034699 (n + 1)).toNat : ℤ)

end

end A276552.P11006731412138151807

/-!
# A276553: Numbers k such that k^2 and (k + 1)^2 have the same number of divisors.

The programs for A276553, the canonical program `A276553.P10579405636336948345` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276553 has offset 1).

The definition of A276553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276553.P18238922653783457650

`eq[A018892(n+2), A018892(n+1)]+1`
-/

namespace A276553.P18238922653783457650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276553.P18238922653783457650

namespace A276553

/-- `eq[A018892(n+2), A018892(n+1)]+1` -/
def P18238922653783457650.Spec : Prop :=
  ∀ n, (P18238922653783457650.a n : ℤ) = A276553 (n + 1)

end A276553

/-! ## A276553.P7510478920896005950

`eq[A048691(n+2), A048691(n+1)]+1`
-/

namespace A276553.P7510478920896005950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276553.P7510478920896005950

namespace A276553

/-- `eq[A048691(n+2), A048691(n+1)]+1` -/
def P7510478920896005950.Spec : Prop :=
  ∀ n, (P7510478920896005950.a n : ℤ) = A276553 (n + 1)

end A276553

/-! ## A276553.P10797659455011097601

`eq[A063647(n+2), A063647(n+1)]+1`
-/

namespace A276553.P10797659455011097601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276553.P10797659455011097601

namespace A276553

/-- `eq[A063647(n+2), A063647(n+1)]+1` -/
def P10797659455011097601.Spec : Prop :=
  ∀ n, (P10797659455011097601.a n : ℤ) = A276553 (n + 1)

end A276553

/-! ## A276553.P10579405636336948345

`eq[A146564(n+2), A146564(n+1)]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A276553

/-- `eq[A146564(n+2), A146564(n+1)]+1` -/
def P10579405636336948345.Spec : Prop :=
  ∀ n, (P10579405636336948345.a n : ℤ) = A276553 (n + 1)

theorem P10579405636336948345.correct : P10579405636336948345.Spec := by
  intro n
  simp only [A276553, Nat.add_sub_cancel]

end A276553

/-! ## A276553.P883114949756638488

`eq[A000005((n+1)²), A000005((n+2)²)]+1`
-/

namespace A276553.P883114949756638488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276553.P883114949756638488

namespace A276553

/-- `eq[A000005((n+1)²), A000005((n+2)²)]+1` -/
def P883114949756638488.Spec : Prop :=
  ∀ n, (P883114949756638488.a n : ℤ) = A276553 (n + 1)

end A276553

/-!
# A276554: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1-x^j)^(j*k) in powers of x.

The programs for A276554, there is no canonical definition to state claims against.
-/

/-! ## A276554.P9281268552901172883

`A297323(n)+A125005(A326323(n))`
-/

namespace A276554.P9281268552901172883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 n + A125005 (A326323 n).toNat

end

end A276554.P9281268552901172883

/-! ## A276554.P17552225952085615526

`A297323(n)%A090276(n+1)`
-/

namespace A276554.P17552225952085615526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297323 n) (A090276 (n + 1))

end

end A276554.P17552225952085615526

/-! ## A276554.P13699698421755091664

`A297323(A089311(A094544(n))+n)`
-/

namespace A276554.P13699698421755091664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 (A089311 (A094544 n).toNat + (n : ℤ)).toNat

end

end A276554.P13699698421755091664

/-! ## A276554.P1640308914365788204

`A297323(A025469(A163661(n))+n)`
-/

namespace A276554.P1640308914365788204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 (A025469 (A163661 n).toNat + (n : ℤ)).toNat

end

end A276554.P1640308914365788204

/-! ## A276554.P13058828805094916961

`A297323(A151795(A060475(n))+n)`
-/

namespace A276554.P13058828805094916961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 (A151795 (A060475 n).toNat + (n : ℤ)).toNat

end

end A276554.P13058828805094916961

/-!
# A276555: Number of steps to reach 1 when starting from n and iterating the map x -> x - A061395(x).

The programs for A276555, the canonical program `A276555.P9709208659877672579` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276555 has offset 1).

The definition of A276555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276555.P9709208659877672579

`a(A243291(n+1)-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A276555

/-- `a(A243291(n+1)-1)+1` -/
def P9709208659877672579.Spec : Prop :=
  ∀ n, (P9709208659877672579.a n : ℤ) = A276555 (n + 1)

theorem P9709208659877672579.correct : P9709208659877672579.Spec := by
  intro n
  simp only [A276555, Nat.add_sub_cancel]

end A276555

/-! ## A276555.P3037203143873947266

`a(n-A061395(n+1))+1` with `a(0)=0`
-/

namespace A276555.P3037203143873947266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A061395 (n + 1)).toNat + 1

end

end A276555.P3037203143873947266

namespace A276555

/-- `a(n-A061395(n+1))+1` -/
def P3037203143873947266.Spec : Prop :=
  ∀ n, (P3037203143873947266.a n : ℤ) = A276555 (n + 1)

end A276555

/-! ## A276555.P13994150432085910520

`a(n-(A252735(n+1)+1))+1` with `a(0)=0`
-/

namespace A276555.P13994150432085910520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - (A252735 (n + 1) + 1)).toNat + 1

end

end A276555.P13994150432085910520

namespace A276555

/-- `a(n-(A252735(n+1)+1))+1` -/
def P13994150432085910520.Spec : Prop :=
  ∀ n, (P13994150432085910520.a n : ℤ) = A276555 (n + 1)

end A276555

/-! ## A276555.P9459967082275854315

`a(n-A065770(∏{p}[n+1, #]))+1` with `a(0)=0`
-/

namespace A276555.P9459967082275854315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A065770 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat + 1

end

end A276555.P9459967082275854315

namespace A276555

/-- `a(n-A065770(∏{p}[n+1, #]))+1` -/
def P9459967082275854315.Spec : Prop :=
  ∀ n, (P9459967082275854315.a n : ℤ) = A276555 (n + 1)

end A276555

/-! ## A276555.P8889418485362313583

`a(n-A000720(A006530(n+1)))+1` with `a(0)=0`
-/

namespace A276555.P8889418485362313583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000720 (A006530 (n + 1)).toNat).toNat + 1

end

end A276555.P8889418485362313583

namespace A276555

/-- `a(n-A000720(A006530(n+1)))+1` -/
def P8889418485362313583.Spec : Prop :=
  ∀ n, (P8889418485362313583.a n : ℤ) = A276555 (n + 1)

end A276555

/-! ## A276555.P5855991531633896146

`a(n-A346698(2*A006530(n+1)))+1` with `a(0)=0`
-/

namespace A276555.P5855991531633896146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A346698 (2 * A006530 (n + 1)).toNat).toNat + 1

end

end A276555.P5855991531633896146

namespace A276555

/-- `a(n-A346698(2*A006530(n+1)))+1` -/
def P5855991531633896146.Spec : Prop :=
  ∀ n, (P5855991531633896146.a n : ℤ) = A276555 (n + 1)

end A276555

/-! ## A276555.P15768138353173556052

`a(n-(A243055(n+1)+A055396(n+1)))+1` with `a(0)=0`
-/

namespace A276555.P15768138353173556052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - (A243055 (n + 1) + A055396 (n + 1))).toNat + 1

end

end A276555.P15768138353173556052

namespace A276555

/-- `a(n-(A243055(n+1)+A055396(n+1)))+1` -/
def P15768138353173556052.Spec : Prop :=
  ∀ n, (P15768138353173556052.a n : ℤ) = A276555 (n + 1)

end A276555

/-! ## A276555.P7525926270878747228

`a(n-A000720(A070229(n+1)-(n+1)))+1` with `a(0)=0`
-/

namespace A276555.P7525926270878747228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000720 (A070229 (n + 1) - (n + 1 : ℤ)).toNat).toNat + 1

end

end A276555.P7525926270878747228

namespace A276555

/-- `a(n-A000720(A070229(n+1)-(n+1)))+1` -/
def P7525926270878747228.Spec : Prop :=
  ∀ n, (P7525926270878747228.a n : ℤ) = A276555 (n + 1)

end A276555

/-! ## A276555.P15350127630307750471

`a(n-A001222(A122111(n+1)))+1` with `a(0)=0, a(1)=1`
-/

namespace A276555.P15350127630307750471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ((n : ℤ) - A001222 (A122111 (n + 1)).toNat).toNat + 1

end

end A276555.P15350127630307750471

namespace A276555

/-- `a(n-A001222(A122111(n+1)))+1` -/
def P15350127630307750471.Spec : Prop :=
  ∀ n, (P15350127630307750471.a n : ℤ) = A276555 (n + 1)

end A276555

/-!
# A276557: Number of partitions of prime(n)^2 into squares of primes.

The programs for A276557, there is no canonical definition to state claims against.
-/

/-! ## A276557.P10681799722894243268

`A090677(A001248(n+1))`
-/

namespace A276557.P10681799722894243268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090677 (A001248 (n + 1)).toNat

end

end A276557.P10681799722894243268

/-! ## A276557.P6222423493003249272

`A090677(p?[xor(1, n)+1]²)`
-/

namespace A276557.P6222423493003249272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090677 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2)

end

end A276557.P6222423493003249272

/-! ## A276557.P323389152982548228

`A090677(record[∑{p}[n+2, #²]])`
-/

namespace A276557.P323389152982548228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090677 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A276557.P323389152982548228

/-! ## A276557.P8167277177286756031

`A090677(p?[round(8*n/7)]²)`
-/

namespace A276557.P8167277177286756031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090677 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A276557.P8167277177286756031

/-! ## A276557.P16784414753379455739

`A090677(record[((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)²])`
-/

namespace A276557.P16784414753379455739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090677 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A276557.P16784414753379455739

/-!
# A276559: Expansion of Sum_{k>=1} k^2*x^k^2/(1 - x^k^2) * Product_{k>=1} 1/(1 - x^k^2).

The programs for A276559, there is no canonical definition to state claims against.
-/

/-! ## A276559.P9832681724857495993

`(n+1)*A001156(n+1)`
-/

namespace A276559.P9832681724857495993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001156 (n + 1)

end

end A276559.P9832681724857495993

/-! ## A276559.P7759009088559605628

`(n+1)*Δ[A302833(n)]`
-/

namespace A276559.P7759009088559605628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A276559.P7759009088559605628

/-! ## A276559.P1171036305707408197

`∑[abs(Δ[n*A001156(n)])]`
-/

namespace A276559.P1171036305707408197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001156 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276559.P1171036305707408197

/-! ## A276559.P16219214767262235047

`(n+1)*(∑[A078134(n+1)]+1)`
-/

namespace A276559.P16219214767262235047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A276559.P16219214767262235047

/-! ## A276559.P9790909376880499255

`(n+1)*(A302833(n+1)-A302833(n))`
-/

namespace A276559.P9790909376880499255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A302833 (n + 1) - A302833 n)

end

end A276559.P9790909376880499255

/-! ## A276559.P8418901541037033727

`A001156(A008619(2*n))*A008619(2*n)`
-/

namespace A276559.P8418901541037033727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A008619 (2 * n)).toNat * A008619 (2 * n)

end

end A276559.P8418901541037033727

/-! ## A276559.P10627178507135358293

`record[A001156(A028242(n))*A028242(n)]`
-/

namespace A276559.P10627178507135358293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A028242 n).toNat * A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276559.P10627178507135358293

/-! ## A276559.P17664434531698463091

`A001156(A028242(2*n))*A028242(2*n)`
-/

namespace A276559.P17664434531698463091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A028242 (2 * n)).toNat * A028242 (2 * n)

end

end A276559.P17664434531698463091

/-! ## A276559.P15523864287344275017

`record[A001156(A057979(n))*A057979(n)]`
-/

namespace A276559.P15523864287344275017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A057979 n).toNat * A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276559.P15523864287344275017

/-! ## A276559.P15117012338418786979

`record[A001156(A008611(n))*A008611(n)]`
-/

namespace A276559.P15117012338418786979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A008611 n).toNat * A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276559.P15117012338418786979

/-! ## A276559.P18268630807370907968

`(n+1)*A265260(4*(n+1))`
-/

namespace A276559.P18268630807370907968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A265260 (4 * (n + 1))

end

end A276559.P18268630807370907968

/-!
# A276560: Expansion of Sum_{k>=1} prime(k)*x^prime(k)/(1 - x^prime(k)) * Product_{k>=1} 1/(1 - x^prime(k)).

The programs for A276560, there is no canonical definition to state claims against.
-/

/-! ## A276560.P11528741460128591399

`(n+1)*A000607(n+1)`
-/

namespace A276560.P11528741460128591399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000607 (n + 1)

end

end A276560.P11528741460128591399

/-! ## A276560.P18045467579331573276

`(n+1)*Δ[A034891(n)]`
-/

namespace A276560.P18045467579331573276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A276560.P18045467579331573276

/-! ## A276560.P18248143260087743119

`Δ[A034891(n)]*A008619(2*n)`
-/

namespace A276560.P18248143260087743119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008619 (2 * n)

end

end A276560.P18248143260087743119

/-! ## A276560.P12831156058424149871

`Δ[A034891(n)]*A028242(2*n)`
-/

namespace A276560.P12831156058424149871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A028242 (2 * n)

end

end A276560.P12831156058424149871

/-! ## A276560.P10976321990067268271

`Δ[A034891(n)]*A008611(3*n)`
-/

namespace A276560.P10976321990067268271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008611 (3 * n)

end

end A276560.P10976321990067268271

/-! ## A276560.P2407540467656721144

`Δ[A034891(n)]*A008620(3*n)`
-/

namespace A276560.P2407540467656721144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008620 (3 * n)

end

end A276560.P2407540467656721144

/-! ## A276560.P12106232599974584586

`abs((n+1)*(A034891(n)-A034891(n+1)))`
-/

namespace A276560.P12106232599974584586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (A034891 n - A034891 (n + 1))|

end

end A276560.P12106232599974584586

/-! ## A276560.P2559774200482555295

`(n+1)*A382956(∑[n+1])`
-/

namespace A276560.P2559774200482555295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A382956 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276560.P2559774200482555295

/-!
# A276561: For n-th odd prime prime(n) in binary form, a(n) is the decimal value of the bits in between the most significant and least significant bits which are both 1. Since there are no middle bits for odd_prime(1) = 3 = (11)_2, a(1) = 0.

The programs for A276561, the canonical program `A276561.P15739790464828978968` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276561 has offset 1).

The definition of A276561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276561.P15739790464828978968

`floor(A091931(n+2)/2)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A276561

/-- `floor(A091931(n+2)/2)` -/
def P15739790464828978968.Spec : Prop :=
  ∀ n, P15739790464828978968.a n = A276561 (n + 1)

theorem P15739790464828978968.correct : P15739790464828978968.Spec := by
  intro n
  simp only [A276561, Nat.add_sub_cancel]

end A276561

/-! ## A276561.P4047113181936014263

`floor(A088147(n+2)/4)`
-/

namespace A276561.P4047113181936014263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088147 (n + 2) : ℚ) / 4⌋

end

end A276561.P4047113181936014263

namespace A276561

/-- `floor(A088147(n+2)/4)` -/
def P4047113181936014263.Spec : Prop :=
  ∀ n, P4047113181936014263.a n = A276561 (n + 1)

end A276561

/-! ## A276561.P10542682236718833530

`A164089(p?[2*n+1])`
-/

namespace A276561.P10542682236718833530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A276561.P10542682236718833530

namespace A276561

/-- `A164089(p?[2*n+1])` -/
def P10542682236718833530.Spec : Prop :=
  ∀ n, P10542682236718833530.a n = A276561 (n + 1)

end A276561

/-! ## A276561.P2870022641134374598

`ceil(A006257(p?[2*n+1])/4)-1`
-/

namespace A276561.P2870022641134374598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006257 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 4⌉ - 1

end

end A276561.P2870022641134374598

namespace A276561

/-- `ceil(A006257(p?[2*n+1])/4)-1` -/
def P2870022641134374598.Spec : Prop :=
  ∀ n, P2870022641134374598.a n = A276561 (n + 1)

end A276561

/-! ## A276561.P11472943658617688320

`A053645(A005097(n+1))`
-/

namespace A276561.P11472943658617688320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A005097 (n + 1)).toNat

end

end A276561.P11472943658617688320

namespace A276561

/-- `A053645(A005097(n+1))` -/
def P11472943658617688320.Spec : Prop :=
  ∀ n, P11472943658617688320.a n = A276561 (n + 1)

end A276561

/-! ## A276561.P14237096065225699838

`A164089(A045319(n+1))`
-/

namespace A276561.P14237096065225699838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A045319 (n + 1)).toNat

end

end A276561.P14237096065225699838

namespace A276561

/-- `A164089(A045319(n+1))` -/
def P14237096065225699838.Spec : Prop :=
  ∀ n, P14237096065225699838.a n = A276561 (n + 1)

end A276561

/-! ## A276561.P1327076833944540650

`A164089(A045344(n+1))`
-/

namespace A276561.P1327076833944540650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A045344 (n + 1)).toNat

end

end A276561.P1327076833944540650

namespace A276561

/-- `A164089(A045344(n+1))` -/
def P1327076833944540650.Spec : Prop :=
  ∀ n, P1327076833944540650.a n = A276561 (n + 1)

end A276561

/-! ## A276561.P11577609368331163220

`A164089(A065091(n+1))`
-/

namespace A276561.P11577609368331163220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A065091 (n + 1)).toNat

end

end A276561.P11577609368331163220

namespace A276561

/-- `A164089(A065091(n+1))` -/
def P11577609368331163220.Spec : Prop :=
  ∀ n, P11577609368331163220.a n = A276561 (n + 1)

end A276561

/-! ## A276561.P10202438349488950606

`A164089(A140475(n+1))`
-/

namespace A276561.P10202438349488950606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A140475 (n + 1)).toNat

end

end A276561.P10202438349488950606

namespace A276561

/-- `A164089(A140475(n+1))` -/
def P10202438349488950606.Spec : Prop :=
  ∀ n, P10202438349488950606.a n = A276561 (n + 1)

end A276561

/-! ## A276561.P4582326974807349235

`A160588(A154115(n+1))`
-/

namespace A276561.P4582326974807349235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160588 (A154115 (n + 1)).toNat

end

end A276561.P4582326974807349235

namespace A276561

/-- `A160588(A154115(n+1))` -/
def P4582326974807349235.Spec : Prop :=
  ∀ n, P4582326974807349235.a n = A276561 (n + 1)

end A276561

/-! ## A276561.P15576471450311649872

`A164089(A165972(n+1))`
-/

namespace A276561.P15576471450311649872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A165972 (n + 1)).toNat

end

end A276561.P15576471450311649872

namespace A276561

/-- `A164089(A165972(n+1))` -/
def P15576471450311649872.Spec : Prop :=
  ∀ n, P15576471450311649872.a n = A276561 (n + 1)

end A276561

/-! ## A276561.P7854516105260571586

`A002265(A088147(n+2))`
-/

namespace A276561.P7854516105260571586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A088147 (n + 2)).toNat

end

end A276561.P7854516105260571586

namespace A276561

/-- `A002265(A088147(n+2))` -/
def P7854516105260571586.Spec : Prop :=
  ∀ n, P7854516105260571586.a n = A276561 (n + 1)

end A276561

/-! ## A276561.P5798955683816063688

`A004524(A091931(n+2))`
-/

namespace A276561.P5798955683816063688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A091931 (n + 2)).toNat

end

end A276561.P5798955683816063688

namespace A276561

/-- `A004524(A091931(n+2))` -/
def P5798955683816063688.Spec : Prop :=
  ∀ n, P5798955683816063688.a n = A276561 (n + 1)

end A276561

/-! ## A276561.P6125971296006616787

`A053645(A102781(n+2))`
-/

namespace A276561.P6125971296006616787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A102781 (n + 2)).toNat

end

end A276561.P6125971296006616787

namespace A276561

/-- `A053645(A102781(n+2))` -/
def P6125971296006616787.Spec : Prop :=
  ∀ n, P6125971296006616787.a n = A276561 (n + 1)

end A276561

/-! ## A276561.P4142580852964202303

`A164089(A000040(n+2))`
-/

namespace A276561.P4142580852964202303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A000040 (n + 2)).toNat

end

end A276561.P4142580852964202303

namespace A276561

/-- `A164089(A000040(n+2))` -/
def P4142580852964202303.Spec : Prop :=
  ∀ n, P4142580852964202303.a n = A276561 (n + 1)

end A276561

/-! ## A276561.P1308377358216319868

`A164089(A006005(n+2))`
-/

namespace A276561.P1308377358216319868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A006005 (n + 2)).toNat

end

end A276561.P1308377358216319868

namespace A276561

/-- `A164089(A006005(n+2))` -/
def P1308377358216319868.Spec : Prop :=
  ∀ n, P1308377358216319868.a n = A276561 (n + 1)

end A276561

/-! ## A276561.P1051008191319001409

`A164089(A006093(n+2))`
-/

namespace A276561.P1051008191319001409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A006093 (n + 2)).toNat

end

end A276561.P1051008191319001409

namespace A276561

/-- `A164089(A006093(n+2))` -/
def P1051008191319001409.Spec : Prop :=
  ∀ n, P1051008191319001409.a n = A276561 (n + 1)

end A276561

/-! ## A276561.P13022058901485530800

`A053645(A130290(n+2))`
-/

namespace A276561.P13022058901485530800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A130290 (n + 2)).toNat

end

end A276561.P13022058901485530800

namespace A276561

/-- `A053645(A130290(n+2))` -/
def P13022058901485530800.Spec : Prop :=
  ∀ n, P13022058901485530800.a n = A276561 (n + 1)

end A276561

/-! ## A276561.P17281807696126220633

`A164089(A039915(n+2))`
-/

namespace A276561.P17281807696126220633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A039915 (n + 2)).toNat

end

end A276561.P17281807696126220633

namespace A276561

/-- `A164089(A039915(n+2))` -/
def P17281807696126220633.Spec : Prop :=
  ∀ n, P17281807696126220633.a n = A276561 (n + 1)

end A276561

/-! ## A276561.P12063226544430271621

`A160588(A086801(n+2))`
-/

namespace A276561.P12063226544430271621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160588 (A086801 (n + 2)).toNat

end

end A276561.P12063226544430271621

namespace A276561

/-- `A160588(A086801(n+2))` -/
def P12063226544430271621.Spec : Prop :=
  ∀ n, P12063226544430271621.a n = A276561 (n + 1)

end A276561

/-!
# A276562: Array read by antidiagonals: T(m,n) = number of m-ary words of length n with cyclically adjacent elements differing by 1 or less.

The programs for A276562, there is no canonical definition to state claims against.
-/

/-! ## A276562.P4882954207895461860

`A048483(A334203(2^n))`
-/

namespace A276562.P4882954207895461860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048483 (A334203 (2 ^ n)).toNat

end

end A276562.P4882954207895461860

/-! ## A276562.P12265322069537825180

`A332389(n+1)-A083892(A157149(n))`
-/

namespace A276562.P12265322069537825180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332389 (n + 1) - A083892 (A157149 n).toNat

end

end A276562.P12265322069537825180

/-! ## A276562.P16112994942837267570

`A303548(A224195(n+1))%A000026(A063670(n))`
-/

namespace A276562.P16112994942837267570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303548 (A224195 (n + 1)).toNat) (A000026 (A063670 n).toNat)

end

end A276562.P16112994942837267570

/-! ## A276562.P9715716530947218992

`A232441(A099375(n)+4+n)-A083892(A157149(n))`
-/

namespace A276562.P9715716530947218992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232441 (A099375 n + 4 + (n : ℤ)).toNat - A083892 (A157149 n).toNat

end

end A276562.P9715716530947218992

/-! ## A276562.P7967320370859184860

`A048483(A292257(ceil(2^(n-1))))`
-/

namespace A276562.P7967320370859184860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048483 (A292257 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

end

end A276562.P7967320370859184860

/-!
# A276564: Perfect powers k (exponent greater than 1) such that k-1 and k+1 are both semiprime.

The programs for A276564, there is no canonical definition to state claims against.
-/

/-! ## A276564.P14299125784599759541

`∩[A001597(n+1), A092207(n+1)+1]`
-/

namespace A276564.P14299125784599759541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276564.P14299125784599759541

/-! ## A276564.P3485515640160855786

`∩[A001597(n+1), A124936(n+1)]`
-/

namespace A276564.P3485515640160855786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276564.P3485515640160855786

/-! ## A276564.P16931044540643799628

`∩[A075090(n+1), A124936(n+1)]`
-/

namespace A276564.P16931044540643799628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276564.P16931044540643799628

/-! ## A276564.P11495369528478462131

`∩[A124936(n+1), A001597(A348553(n))]`
-/

namespace A276564.P11495369528478462131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A348553 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276564.P11495369528478462131

/-!
# A276565: Oblong numbers n such that n - 1 and n + 1 are both semiprime.

The programs for A276565, there is no canonical definition to state claims against.
-/

/-! ## A276565.P4007996378194696804

`∩[A124936(n+1), n²+n]`
-/

namespace A276565.P4007996378194696804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A276565.P4007996378194696804

/-! ## A276565.P13520690253991122512

`∩[A002378(n), A124936(n+1)]`
-/

namespace A276565.P13520690253991122512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276565.P13520690253991122512

/-! ## A276565.P15090413073229300736

`∩[A226023(n), A124936(n+1)]`
-/

namespace A276565.P15090413073229300736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276565.P15090413073229300736

/-! ## A276565.P15236708411282552834

`∩[A060798(n+1), A124936(n+1)]`
-/

namespace A276565.P15236708411282552834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276565.P15236708411282552834

/-! ## A276565.P7090022132601627052

`∩[A130404(n+1), A124936(n+1)]`
-/

namespace A276565.P7090022132601627052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276565.P7090022132601627052

/-!
# A276568: Numbers such that ludic factor of n (A272565) divides n.

The programs for A276568, there is no canonical definition to state claims against.
-/

/-! ## A276568.P13565191843532000773

`comp[A276569(n+1)-1]+1`
-/

namespace A276568.P13565191843532000773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276569 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A276568.P13565191843532000773

/-! ## A276568.P4032246080783196495

`record[(n+1)²/lcm(n+1, A272565(n+1))]`
-/

namespace A276568.P4032246080783196495
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Int.lcm (n + 1 : ℤ) (A272565 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276568.P4032246080783196495

/-! ## A276568.P3962031541662752337

`eq[0, A004442(n)%A009001(A271419(n+1))]+1`
-/

namespace A276568.P3962031541662752337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004442 n) (A009001 (A271419 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A276568.P3962031541662752337

/-! ## A276568.P9853381191940667668

`eq[0, A276570(n+1)]+1`
-/

namespace A276568.P9853381191940667668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276570 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A276568.P9853381191940667668

/-! ## A276568.P5460774940084732853

`lt[n*A276570(A028310(n)), n]`
-/

namespace A276568.P5460774940084732853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276570 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A276568.P5460774940084732853

/-!
# A276569: Numbers such that ludic factor of n (A272565) does not divide n.

The programs for A276569, there is no canonical definition to state claims against.
-/

/-! ## A276569.P4418429967198087158

`A004442(lt[0, (n+1)%A272565(n+1)])`
-/

namespace A276569.P4418429967198087158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A272565 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A276569.P4418429967198087158

/-! ## A276569.P4365072367066956859

`lt[0, A276570(n+2)]+2`
-/

namespace A276569.P4365072367066956859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276570 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A276569.P4365072367066956859

/-! ## A276569.P10812139285059305312

`lt[0, A276570(A028310(n))]`
-/

namespace A276569.P10812139285059305312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276570 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A276569.P10812139285059305312

/-! ## A276569.P10220011793491165183

`A004442(lt[0, A276570(n+1)])`
-/

namespace A276569.P10220011793491165183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A276569.P10220011793491165183

/-! ## A276569.P8698900696762252672

`lt[0, A276570(A060000(n+1))]`
-/

namespace A276569.P8698900696762252672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276570 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A276569.P8698900696762252672

/-! ## A276569.P3515379964849442610

`lt[0, A276570(A233583(n+1))]`
-/

namespace A276569.P3515379964849442610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276570 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A276569.P3515379964849442610

/-!
# A276570: a(n) = n modulo ludic factor of n: n mod A272565(n).

The programs for A276570, there is no canonical definition to state claims against.
-/

/-! ## A276570.P11646262305429698252

`(n+1)%A272565(n+1)`
-/

namespace A276570.P11646262305429698252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A272565 (n + 1))

end

end A276570.P11646262305429698252

/-! ## A276570.P17433317312886067854

`floor(atan(n+1)+n)%A009001(A271419(n+1))`
-/

namespace A276570.P17433317312886067854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.arctan (n + 1 : ℝ) + (n : ℝ)⌋ (A009001 (A271419 (n + 1)).toNat)

end

end A276570.P17433317312886067854

/-! ## A276570.P5522777850387584850

`A004442(n)%A009001(A271419(n+1))`
-/

namespace A276570.P5522777850387584850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004442 n) (A009001 (A271419 (n + 1)).toNat)

end

end A276570.P5522777850387584850

/-! ## A276570.P7733853036349950573

`A028310(n+1)%A009001(A271419(n+1))`
-/

namespace A276570.P7733853036349950573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (n + 1)) (A009001 (A271419 (n + 1)).toNat)

end

end A276570.P7733853036349950573

/-! ## A276570.P289589467562849174

`A000027(n+1)%A003309(A271420(n+1)+1)`
-/

namespace A276570.P289589467562849174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A003309 (A271420 (n + 1) + 1).toNat)

end

end A276570.P289589467562849174

/-! ## A276570.P14025309610500582197

`A060000(n+2)%A003309(A271420(n+1)+1)`
-/

namespace A276570.P14025309610500582197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060000 (n + 2)) (A003309 (A271420 (n + 1) + 1).toNat)

end

end A276570.P14025309610500582197

/-! ## A276570.P15109072104670110827

`A269169(A269164(n+1))%A003309(A271420(n+1)+1)`
-/

namespace A276570.P15109072104670110827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269169 (A269164 (n + 1)).toNat) (A003309 (A271420 (n + 1) + 1).toNat)

end

end A276570.P15109072104670110827

/-! ## A276570.P16733486368336263473

`A008619(2*n)%A003309(A271420(n+1)+1)`
-/

namespace A276570.P16733486368336263473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (2 * n)) (A003309 (A271420 (n + 1) + 1).toNat)

end

end A276570.P16733486368336263473

/-! ## A276570.P17018107071360092202

`A008619(2*n+1)%A003309(A260738(n+1)+1)`
-/

namespace A276570.P17018107071360092202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (2 * n + 1)) (A003309 (A260738 (n + 1) + 1).toNat)

end

end A276570.P17018107071360092202

/-! ## A276570.P13964217828410891778

`A269172(A269171(n+1))%A003309(A271420(n+1)+1)`
-/

namespace A276570.P13964217828410891778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269172 (A269171 (n + 1)).toNat) (A003309 (A271420 (n + 1) + 1).toNat)

end

end A276570.P13964217828410891778

/-! ## A276570.P3155466061896829511

`A061395(8*A008578(n+2))%A003309(A271420(n+1)+1)`
-/

namespace A276570.P3155466061896829511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (8 * A008578 (n + 2)).toNat) (A003309 (A271420 (n + 1) + 1).toNat)

end

end A276570.P3155466061896829511

/-!
# A276571: After a(0)=0, each n occurs A260734(n) times.

The programs for A276571, there is no canonical definition to state claims against.
-/

/-! ## A276571.P24271703005018744

`floor(sqrt(A276573(n)))`
-/

namespace A276571.P24271703005018744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A276573 n)

end

end A276571.P24271703005018744

/-! ## A276571.P10635357032071925102

`floor(sqrt(A276574(n)))`
-/

namespace A276571.P10635357032071925102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A276574 n)

end

end A276571.P10635357032071925102

/-! ## A276571.P10619541887204882986

`floor(sqrt(A278517(n)))`
-/

namespace A276571.P10619541887204882986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A278517 n)

end

end A276571.P10619541887204882986

/-! ## A276571.P12774354483081465403

`floor(sqrt(A278519(n)))`
-/

namespace A276571.P12774354483081465403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A278519 n)

end

end A276571.P12774354483081465403

/-! ## A276571.P5661497739447813667

`floor(sqrt(∑[A276575(n)]))`
-/

namespace A276571.P5661497739447813667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276571.P5661497739447813667

/-! ## A276571.P5902963409787054739

`∑[char[A260732(n+1)]]`
-/

namespace A276571.P5902963409787054739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276571.P5902963409787054739

/-! ## A276571.P6490533034141134943

`∑[char[A260732(n)]]-1`
-/

namespace A276571.P6490533034141134943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A276571.P6490533034141134943

/-! ## A276571.P14090190568945289362

`A000196(A278517(n))`
-/

namespace A276571.P14090190568945289362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A278517 n).toNat

end

end A276571.P14090190568945289362

/-! ## A276571.P5914624469175630962

`A000196(A276573(n)-A278521(n))`
-/

namespace A276571.P5914624469175630962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A276573 n - A278521 n).toNat

end

end A276571.P5914624469175630962

/-! ## A276571.P13989365425239857553

`A000196(A276573(n))`
-/

namespace A276571.P13989365425239857553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A276573 n).toNat

end

end A276571.P13989365425239857553

/-! ## A276571.P17648265490269009873

`A000196(A276574(n))`
-/

namespace A276571.P17648265490269009873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A276574 n).toNat

end

end A276571.P17648265490269009873

/-! ## A276571.P13045814496186753889

`A000196(A278519(n))`
-/

namespace A276571.P13045814496186753889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A278519 n).toNat

end

end A276571.P13045814496186753889

/-! ## A276571.P5859163370190644551

`A000196(∑[A276575(n)])`
-/

namespace A276571.P5859163370190644551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276571.P5859163370190644551

/-! ## A276571.P13683355013954148689

`A064876(A048760(A255131(A276573(n+1))))`
-/

namespace A276571.P13683355013954148689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (A048760 (A255131 (A276573 (n + 1)).toNat).toNat).toNat

end

end A276571.P13683355013954148689

/-! ## A276571.P17388378432470003620

`A262689(A048760(A276574(A262689(A000290(n)))))`
-/

namespace A276571.P17388378432470003620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A048760 (A276574 (A262689 (A000290 n).toNat).toNat).toNat).toNat

end

end A276571.P17388378432470003620

/-!
# A276572: Simple self-inverse permutation of natural numbers: after a(0)=0, list each block of A260734(n) numbers in reverse order, from A260732(n) to A260733(1+n).

The programs for A276572, there is no canonical definition to state claims against.
-/

/-! ## A276572.P7473908737266140035

`A260733(1+A276571(n))-n+A260732(A276571(n))`
-/

namespace A276572.P7473908737266140035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260733 (1 + A276571 n).toNat - (n : ℤ) + A260732 (A276571 n).toNat

end

end A276572.P7473908737266140035

/-! ## A276572.P6473941453439268445

`A260731(A276574(n))`
-/

namespace A276572.P6473941453439268445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A276574 n).toNat

end

end A276572.P6473941453439268445

/-! ## A276572.P8868747662112346735

`A132340(n+1)-A007318(A332954(A016116(n)))`
-/

namespace A276572.P8868747662112346735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132340 (n + 1) - A007318 (A332954 (A016116 n).toNat).toNat

end

end A276572.P8868747662112346735

/-!
# A276573: The infinite trunk of least squares beanstalk: The only infinite sequence such that a(0) = 0 and a(n-1) = a(n) - least number of squares (A002828) that sum to a(n).

The programs for A276573, there is no canonical definition to state claims against.
-/

/-! ## A276573.P12346752282396033936

`A276574(A276572(n))`
-/

namespace A276573.P12346752282396033936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (A276572 n).toNat

end

end A276573.P12346752282396033936

/-! ## A276573.P10783241414349298807

`∑[A276575(n)]`
-/

namespace A276573.P10783241414349298807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276573.P10783241414349298807

/-! ## A276573.P17714573928725688392

`A278521(n)+A278517(n)`
-/

namespace A276573.P17714573928725688392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278521 n + A278517 n

end

end A276573.P17714573928725688392

/-! ## A276573.P17766595909810837094

`A278519(n)-A278522(n)`
-/

namespace A276573.P17766595909810837094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278519 n - A278522 n

end

end A276573.P17766595909810837094

/-! ## A276573.P2466091628461389681

`A278519(n)-A010873(A278519(n)-A278499(n))`
-/

namespace A276573.P2466091628461389681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278519 n - A010873 (A278519 n - A278499 n).toNat

end

end A276573.P2466091628461389681

/-! ## A276573.P6667951392838719479

`lt[0, A278515(n)]`
-/

namespace A276573.P6667951392838719479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278515 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A276573.P6667951392838719479

/-! ## A276573.P13117559401240638500

`eq[1, char[A276574(n)]]`
-/

namespace A276573.P13117559401240638500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276573.P13117559401240638500

/-! ## A276573.P15717109744697408019

`A276574(A260731(A276574(n)))`
-/

namespace A276573.P15717109744697408019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (A260731 (A276574 n).toNat).toNat

end

end A276573.P15717109744697408019

/-!
# A276574: The infinite trunk of least squares beanstalk with reversed subsections.

The programs for A276574, there is no canonical definition to state claims against.
-/

/-! ## A276574.P9702215357155366529

`A276573(A276572(n))`
-/

namespace A276574.P9702215357155366529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 (A276572 n).toNat

end

end A276574.P9702215357155366529

/-!
# A276575: After a(0)=0, the first differences of A276573.

The programs for A276575, there is no canonical definition to state claims against.
-/

/-! ## A276575.P1059841106462583113

`A002828(A276573(n))`
-/

namespace A276575.P1059841106462583113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A276573 n).toNat

end

end A276575.P1059841106462583113

/-! ## A276575.P8749342523725116554

`A276573(n)-A276573(A057428(n)+n)`
-/

namespace A276575.P8749342523725116554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n - A276573 (A057428 n + (n : ℤ)).toNat

end

end A276575.P8749342523725116554

/-! ## A276575.P5926593930391751257

`A002828(A276574(A276572(n)))`
-/

namespace A276575.P5926593930391751257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A276574 (A276572 n).toNat).toNat

end

end A276575.P5926593930391751257

/-! ## A276575.P14371723906051597921

`A002828(A278521(n)+A278517(n))`
-/

namespace A276575.P14371723906051597921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A278521 n + A278517 n).toNat

end

end A276575.P14371723906051597921

/-! ## A276575.P6205196768647621521

`A002828(A278519(n)-A278522(n))`
-/

namespace A276575.P6205196768647621521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A278519 n - A278522 n).toNat

end

end A276575.P6205196768647621521

/-! ## A276575.P6400006227457192435

`A002828(A276574(A260731(A276574(n))))`
-/

namespace A276575.P6400006227457192435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A276574 (A260731 (A276574 n).toNat).toNat).toNat

end

end A276575.P6400006227457192435

/-!
# A276576: Column 2 of A276580: a(n) = A276570(A254100(n)); the n-th postludic number modulo the corresponding Ludic number.

The programs for A276576, there is no canonical definition to state claims against.
-/

/-! ## A276576.P2869989202707025390

`A276570(A254100(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276576.P2869989202707025390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276570 (A254100 (n + 1)).toNat

end

end A276576.P2869989202707025390

/-! ## A276576.P11968374796649562639

`A254100(n+1)%A003309(n+2)`
-/

namespace A276576.P11968374796649562639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254100 (n + 1)) (A003309 (n + 2))

end

end A276576.P11968374796649562639

/-! ## A276576.P10897805974533676607

`A256482(n+1)%A003309(n+2)`
-/

namespace A276576.P10897805974533676607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256482 (n + 1)) (A003309 (n + 2))

end

end A276576.P10897805974533676607

/-! ## A276576.P5465927889490004815

`(2*A256483(n+1))%A003309(n+2)`
-/

namespace A276576.P5465927889490004815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A256483 (n + 1)) (A003309 (n + 2))

end

end A276576.P5465927889490004815

/-! ## A276576.P7582229779689744347

`(A256487(n+1)+A219178(n+1))%A003309(n+2)`
-/

namespace A276576.P7582229779689744347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256487 (n + 1) + A219178 (n + 1)) (A003309 (n + 2))

end

end A276576.P7582229779689744347

/-! ## A276576.P7751625701307481350

`(A219178(n+1)+2*A256488(n+1))%A260435(A000959(n+1))`
-/

namespace A276576.P7751625701307481350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219178 (n + 1) + 2 * A256488 (n + 1)) (A260435 (A000959 (n + 1)).toNat)

end

end A276576.P7751625701307481350

/-! ## A276576.P1750322506538202445

`A004277(A256483(n+1))%A237056(2*n+3)`
-/

namespace A276576.P1750322506538202445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (A256483 (n + 1)).toNat) (A237056 (2 * n + 3))

end

end A276576.P1750322506538202445

/-! ## A276576.P9243998424927905566

`A260435(A219178(n+1))%A260435(A000959(n+1))`
-/

namespace A276576.P9243998424927905566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260435 (A219178 (n + 1)).toNat) (A260435 (A000959 (n + 1)).toNat)

end

end A276576.P9243998424927905566

/-! ## A276576.P4833909831404326910

`A257257(A000096(n)+1)%A255127(A000096(n)+2)`
-/

namespace A276576.P4833909831404326910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257257 (A000096 n + 1).toNat) (A255127 (A000096 n + 2).toNat)

end

end A276576.P4833909831404326910

/-! ## A276576.P10625162968459336905

`A276580(C(n+3, 2))`
-/

namespace A276576.P10625162968459336905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276580 (Nat.choose (n + 3) 2)

end

end A276576.P10625162968459336905

/-! ## A276576.P12817815827438608369

`A276580(∑[n+2]+1)`
-/

namespace A276576.P12817815827438608369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276580 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A276576.P12817815827438608369

/-! ## A276576.P9624466935919812526

`A255129(C(n+2, 2)+3)%A260435(A000959(n+1))`
-/

namespace A276576.P9624466935919812526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255129 (Nat.choose (n + 2) 2 + 3)) (A260435 (A000959 (n + 1)).toNat)

end

end A276576.P9624466935919812526

/-!
# A276577: Row 5 of A276580: a(n) = A255415(n) modulo 11.

The programs for A276577, the canonical program `A276577.P15427546300831290763` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276577 has offset 1).

The definition of A276577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276577.P15427546300831290763

`A255415(n+1)%11`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A276577

/-- `A255415(n+1)%11` -/
def P15427546300831290763.Spec : Prop :=
  ∀ n, P15427546300831290763.a n = A276577 (n + 1)

theorem P15427546300831290763.correct : P15427546300831290763.Spec := by
  intro n
  simp only [A276577, Nat.add_sub_cancel]

end A276577

/-!
# A276578: Transpose of square array A255483.

The programs for A276578, there is no canonical definition to state claims against.
-/

/-! ## A276578.P14189257083483913

`A255483(∑[char[∑[n]]]²-(n+1))`
-/

namespace A276578.P14189257083483913
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255483 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A276578.P14189257083483913

/-! ## A276578.P11060828062289704050

`A255483(A061579(n))-(2*n)%2`
-/

namespace A276578.P11060828062289704050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255483 (A061579 n).toNat - ((2 * n % 2 : ℕ) : ℤ)

end

end A276578.P11060828062289704050

/-! ## A276578.P18361462074893556439

`gcd(A000038(n), A255483(A061579(n)))`
-/

namespace A276578.P18361462074893556439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A255483 (A061579 n).toNat)

end

end A276578.P18361462074893556439

/-! ## A276578.P1476179323376080847

`or(A255483(A061579(n)), A302048(n))`
-/

namespace A276578.P1476179323376080847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A255483 (A061579 n).toNat) (A302048 n)

end

end A276578.P1476179323376080847

/-! ## A276578.P6898392903165834395

`or(A255483(A061579(n)), A330549(n))`
-/

namespace A276578.P6898392903165834395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A255483 (A061579 n).toNat) (A330549 n)

end

end A276578.P6898392903165834395

/-! ## A276578.P2802098609016529452

`A255483(A061579(n))+A000007(n+1)`
-/

namespace A276578.P2802098609016529452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255483 (A061579 n).toNat + A000007 (n + 1)

end

end A276578.P2802098609016529452

/-! ## A276578.P18319984749824767947

`A255483(A061579(n))+A110568(3*n+1)`
-/

namespace A276578.P18319984749824767947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255483 (A061579 n).toNat + A110568 (3 * n + 1)

end

end A276578.P18319984749824767947

/-! ## A276578.P2962727764089702854

`A110569(3*n+1)*A255483(A061579(n))`
-/

namespace A276578.P2962727764089702854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110569 (3 * n + 1) * A255483 (A061579 n).toNat

end

end A276578.P2962727764089702854

/-! ## A276578.P16836011601789619093

`char[A278537(2*n+1)]*A255483(A061579(n))`
-/

namespace A276578.P16836011601789619093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A255483 (A061579 n).toNat

end

end A276578.P16836011601789619093

/-! ## A276578.P8399364923293319619

`A001222(A161723(n+1))*A255483(A061579(n))`
-/

namespace A276578.P8399364923293319619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A161723 (n + 1)).toNat * A255483 (A061579 n).toNat

end

end A276578.P8399364923293319619

/-! ## A276578.P14077126960667120911

`A255483(A061579(n))%A129794(n+1)`
-/

namespace A276578.P14077126960667120911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255483 (A061579 n).toNat) (A129794 (n + 1))

end

end A276578.P14077126960667120911

/-! ## A276578.P190770369939747906

`A014963(A000217(n+7))*A255483(A061579(n))`
-/

namespace A276578.P190770369939747906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 7)).toNat * A255483 (A061579 n).toNat

end

end A276578.P190770369939747906

/-! ## A276578.P17526872288329398556

`A365810(A099884(n))`
-/

namespace A276578.P17526872288329398556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365810 (A099884 n).toNat

end

end A276578.P17526872288329398556

/-! ## A276578.P14084451190925383659

`or(A255483(A061579(n)), A330551(n+1))`
-/

namespace A276578.P14084451190925383659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A255483 (A061579 n).toNat) (A330551 (n + 1))

end

end A276578.P14084451190925383659

/-!
# A276579: Squarefree numbers larger than one for which A268669(A048675(n)) is a power of two.

The programs for A276579, there is no canonical definition to state claims against.
-/

/-! ## A276579.P2502582675144944062

`lt[A101122(2*n+5), char[A255483(n)]]`
-/

namespace A276579.P2502582675144944062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101122 (2 * n + 5)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255483 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A276579.P2502582675144944062

/-! ## A276579.P8006594926844593445

`record[A216503(2*A216516(n+1))]`
-/

namespace A276579.P8006594926844593445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216503 (2 * A216516 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276579.P8006594926844593445

/-! ## A276579.P14933059957081728830

`record[A216505(2*A216516(n+1))]`
-/

namespace A276579.P14933059957081728830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216505 (2 * A216516 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276579.P14933059957081728830

/-! ## A276579.P8220557852809489820

`record[A216505(lcm(2, A216514(n+1)))]`
-/

namespace A276579.P8220557852809489820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216505 (Int.lcm 2 (A216514 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276579.P8220557852809489820

/-! ## A276579.P15360368555353901864

`record[A216503(A216516(n+1)+A216516(n+1))]`
-/

namespace A276579.P15360368555353901864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216503 (A216516 (n + 1) + A216516 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276579.P15360368555353901864

/-!
# A276580: Square array A(n,k) = A276570(A255127(n,k)), numbers in Ludic array reduced by the first element of each row. Array is read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A276580, there is no canonical definition to state claims against.
-/

/-! ## A276580.P15584563913632394526

`A276570(A255127(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276580.P15584563913632394526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276570 (A255127 (n + 2)).toNat

end

end A276580.P15584563913632394526

/-! ## A276580.P14784624497078727656

`A255127(n+2)%A003309(A002260(n+2))`
-/

namespace A276580.P14784624497078727656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255127 (n + 2)) (A003309 (A002260 (n + 2)).toNat)

end

end A276580.P14784624497078727656

/-! ## A276580.P12057008081847200945

`A260435(A255551(n+2))%A255407(A037126(n+1))`
-/

namespace A276580.P12057008081847200945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260435 (A255551 (n + 2)).toNat) (A255407 (A037126 (n + 1)).toNat)

end

end A276580.P12057008081847200945

/-! ## A276580.P5586181087537146891

`A255407(A083221(n+2))%A255407(A037126(n+1))`
-/

namespace A276580.P5586181087537146891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255407 (A083221 (n + 2)).toNat) (A255407 (A037126 (n + 1)).toNat)

end

end A276580.P5586181087537146891

/-! ## A276580.P2027791599402694499

`A255407(A249741(n+1)+1)%A255407(A037126(n+1))`
-/

namespace A276580.P2027791599402694499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255407 (A249741 (n + 1) + 1).toNat) (A255407 (A037126 (n + 1)).toNat)

end

end A276580.P2027791599402694499

/-! ## A276580.P183896759633131249

`A255127(n+2)%A269387(A059268(n))`
-/

namespace A276580.P183896759633131249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255127 (n + 2)) (A269387 (A059268 n).toNat)

end

end A276580.P183896759633131249

/-! ## A276580.P17116990065610926176

`A255407(A083221(n+2))%A269387(A059268(n))`
-/

namespace A276580.P17116990065610926176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255407 (A083221 (n + 2)).toNat) (A269387 (A059268 n).toNat)

end

end A276580.P17116990065610926176

/-! ## A276580.P3042323512728228874

`A269387(A253551(n+1))%A269387(A059268(n))`
-/

namespace A276580.P3042323512728228874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269387 (A253551 (n + 1)).toNat) (A269387 (A059268 n).toNat)

end

end A276580.P3042323512728228874

/-!
# A276581: After a(0)=0, each n occurs A261224(n) times.

The programs for A276581, there is no canonical definition to state claims against.
-/

/-! ## A276581.P14879858338995371080

`floor(sqrt(A276583(n)))`
-/

namespace A276581.P14879858338995371080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A276583 n)

end

end A276581.P14879858338995371080

/-! ## A276581.P6143742545915773594

`floor(sqrt(A276584(n)))`
-/

namespace A276581.P6143742545915773594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A276584 n)

end

end A276581.P6143742545915773594

/-! ## A276581.P782467748194953155

`floor(sqrt(∑[A276585(n)]))`
-/

namespace A276581.P782467748194953155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276581.P782467748194953155

/-! ## A276581.P13598853965786945231

`∑[char[A261222(n+1)]]`
-/

namespace A276581.P13598853965786945231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261222 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276581.P13598853965786945231

/-! ## A276581.P2136590844177938163

`∑[char[A261222(n)]]-1`
-/

namespace A276581.P2136590844177938163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261222 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A276581.P2136590844177938163

/-! ## A276581.P10505841082123007329

`comp[A261223(n+1)+n+1]-n`
-/

namespace A276581.P10505841082123007329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261223 (n + 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A276581.P10505841082123007329

/-! ## A276581.P1105262060763519300

`A000196(A276583(n))`
-/

namespace A276581.P1105262060763519300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A276583 n).toNat

end

end A276581.P1105262060763519300

/-! ## A276581.P9952443136347089949

`A000196(A276584(n))`
-/

namespace A276581.P9952443136347089949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A276584 n).toNat

end

end A276581.P9952443136347089949

/-! ## A276581.P11675018704727124042

`floor(sqrt(record[A260740(A260740(n))/A058281(n)]))`
-/

namespace A276581.P11675018704727124042
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260740 (A260740 n).toNat : ℚ) / (A058281 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌋

end

end A276581.P11675018704727124042

/-! ## A276581.P15082189742483439334

`A339183(2*A276584(n))`
-/

namespace A276581.P15082189742483439334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (2 * A276584 n).toNat

end

end A276581.P15082189742483439334

/-! ## A276581.P3243205490668571993

`A339183(A276584(n)+A276584(n))`
-/

namespace A276581.P3243205490668571993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A276584 n + A276584 n).toNat

end

end A276581.P3243205490668571993

/-!
# A276582: Simple self-inverse permutation of natural numbers: after a(0)=0, list each block of A261224(n) numbers in reverse order, from A261222(n) to A261223(1+n).

The programs for A276582, there is no canonical definition to state claims against.
-/

/-! ## A276582.P10760674801272588450

`A261223(1+A276581(n))-n+A261222(A276581(n))`
-/

namespace A276582.P10760674801272588450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261223 (1 + A276581 n).toNat - (n : ℤ) + A261222 (A276581 n).toNat

end

end A276582.P10760674801272588450

/-! ## A276582.P2880987791105824252

`A261221(A276584(n))`
-/

namespace A276582.P2880987791105824252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 (A276584 n).toNat

end

end A276582.P2880987791105824252

/-! ## A276582.P18442783063280394422

`A271647(A043318(n+1))-A155050(n)`
-/

namespace A276582.P18442783063280394422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271647 (A043318 (n + 1)).toNat - A155050 n

end

end A276582.P18442783063280394422

/-! ## A276582.P4254789399984459894

`A271647(A043318(n+1))-A333159(n)`
-/

namespace A276582.P4254789399984459894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271647 (A043318 (n + 1)).toNat - A333159 n

end

end A276582.P4254789399984459894

/-!
# A276583: The infinite trunk of greedy squares beanstalk: The only infinite sequence such that a(n-1) = a(n) - number of squares that sum to a(n) with greedy algorithm (A053610).

The programs for A276583, there is no canonical definition to state claims against.
-/

/-! ## A276583.P2697282972201656249

`A276584(A276582(n))`
-/

namespace A276583.P2697282972201656249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276584 (A276582 n).toNat

end

end A276583.P2697282972201656249

/-! ## A276583.P8509160837894436547

`∑[A276585(n)]`
-/

namespace A276583.P8509160837894436547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276583.P8509160837894436547

/-! ## A276583.P10593411118772983802

`eq[1, char[A276584(n)]]`
-/

namespace A276583.P10593411118772983802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276584 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276583.P10593411118772983802

/-! ## A276583.P5616487378906579143

`A276584(A261221(A276584(n)))`
-/

namespace A276583.P5616487378906579143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276584 (A261221 (A276584 n).toNat).toNat

end

end A276583.P5616487378906579143

/-! ## A276583.P13520614247222870072

`record[A260740(A260740(n+1)+A010052(n))]`
-/

namespace A276583.P13520614247222870072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260740 (A260740 (n + 1) + A010052 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276583.P13520614247222870072

/-! ## A276583.P14088889481145553482

`record[A260740(A260740(n))/A058281(n)]`
-/

namespace A276583.P14088889481145553482
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260740 (A260740 n).toNat : ℚ) / (A058281 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276583.P14088889481145553482

/-! ## A276583.P7882935939775312698

`record[A260740(A260740(n)%A183322(n+1))]`
-/

namespace A276583.P7882935939775312698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260740 (Int.tmod (A260740 n) (A183322 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276583.P7882935939775312698

/-!
# A276584: The infinite trunk of greedy squares beanstalk with reversed subsections.

The programs for A276584, there is no canonical definition to state claims against.
-/

/-! ## A276584.P2908205822376210166

`A276583(A276582(n))`
-/

namespace A276584.P2908205822376210166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276583 (A276582 n).toNat

end

end A276584.P2908205822376210166

/-! ## A276584.P9277606143868677722

`A276574(lt[n, A230014(3*n+4)])`
-/

namespace A276584.P9277606143868677722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230014 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A276584.P9277606143868677722

/-! ## A276584.P11356059584614785390

`A276574(lt[A066273(n+1), A325325(n)])`
-/

namespace A276584.P11356059584614785390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A276584.P11356059584614785390

/-! ## A276584.P4058652785403261619

`A276574(lt[A066273(n+1), A050376(n+1)])`
-/

namespace A276584.P4058652785403261619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A276584.P4058652785403261619

/-! ## A276584.P12462635884958442444

`A276574(lt[A066273(n+1), A083221(n+2)])`
-/

namespace A276584.P12462635884958442444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083221 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A276584.P12462635884958442444

/-!
# A276585: After a(0)=0, the first differences of A276583.

The programs for A276585, there is no canonical definition to state claims against.
-/

/-! ## A276585.P13764288779845503472

`Δ[A276583(n-n²%(n+1))]`
-/

namespace A276585.P13764288779845503472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276583 (n - n ^ 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276585.P13764288779845503472

/-! ## A276585.P16236474188433311640

`Δ[A276583(A004273(n)-n)]`
-/

namespace A276585.P16236474188433311640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276583 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276585.P16236474188433311640

/-! ## A276585.P4305960667291308970

`A276583(n)-A276583(A004273(n)-n)`
-/

namespace A276585.P4305960667291308970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276583 n - A276583 (A004273 n - (n : ℤ)).toNat

end

end A276585.P4305960667291308970

/-! ## A276585.P12125008344993827085

`A276583(n)-A260740(A276583(n))`
-/

namespace A276585.P12125008344993827085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276583 n - A260740 (A276583 n).toNat

end

end A276585.P12125008344993827085

/-! ## A276585.P1446465096152489039

`Δ[A260740(A276583(n))]`
-/

namespace A276585.P1446465096152489039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260740 (A276583 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276585.P1446465096152489039

/-! ## A276585.P507685013862088850

`A276583(n)-A276583(log2(A011782(n)))`
-/

namespace A276585.P507685013862088850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276583 n - A276583 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A276585.P507685013862088850

/-! ## A276585.P3961438587487472154

`Δ[A276583(log2(A011782(n)))]`
-/

namespace A276585.P3961438587487472154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276583 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276585.P3961438587487472154

/-!
# A276586: Square array A(row,col) = Sum_{k=0..row} binomial(row,k)*A002110(col+k), read by descending antidiagonals as A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ...

The programs for A276586, there is no canonical definition to state claims against.
-/

/-! ## A276586.P13099918589108853468

`A276587(∑[2*n]%comp[∑[n]])`
-/

namespace A276586.P13099918589108853468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276587 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A276586.P13099918589108853468

/-! ## A276586.P6498808849215548484

`A276587(∑[char[∑[n]]]²-(n+1))`
-/

namespace A276586.P6498808849215548484
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276587 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A276586.P6498808849215548484

/-! ## A276586.P2841476789124206382

`abs(A276587(A114327(n)+n)-n)+n`
-/

namespace A276586.P2841476789124206382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A276587 (A114327 n + (n : ℤ)).toNat - (n : ℤ)| + (n : ℤ)

end

end A276586.P2841476789124206382

/-! ## A276586.P10154433840506766461

`A276587(A061579(n))%A042884(n)`
-/

namespace A276586.P10154433840506766461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276587 (A061579 n).toNat) (A042884 n)

end

end A276586.P10154433840506766461

/-! ## A276586.P10829489890443375604

`A276587(A061579(n))+A276570(3*(n+1))`
-/

namespace A276586.P10829489890443375604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276587 (A061579 n).toNat + A276570 (3 * (n + 1))

end

end A276586.P10829489890443375604

/-!
# A276587: Transpose of square array A276586.

The programs for A276587, there is no canonical definition to state claims against.
-/

/-! ## A276587.P9212957009273597463

`A276586(∑[2*n]%comp[∑[n]])`
-/

namespace A276587.P9212957009273597463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276586 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A276587.P9212957009273597463

/-! ## A276587.P18317350624768932111

`A276586(∑[char[∑[n]]]²-(n+1))`
-/

namespace A276587.P18317350624768932111
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276586 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A276587.P18317350624768932111

/-! ## A276587.P10986419774744469285

`and(-1, A276586(A061579(n)))`
-/

namespace A276587.P10986419774744469285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A276586 (A061579 n).toNat)

end

end A276587.P10986419774744469285

/-! ## A276587.P4074926120998273126

`A007318(∑[n])*A276586(A061579(n))`
-/

namespace A276587.P4074926120998273126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A276586 (A061579 n).toNat

end

end A276587.P4074926120998273126

/-! ## A276587.P9913853885430439507

`A276586(A061579(n))+A000007(n+3)`
-/

namespace A276587.P9913853885430439507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276586 (A061579 n).toNat + A000007 (n + 3)

end

end A276587.P9913853885430439507

/-!
# A276588: Square array A(row,col) = Sum_{k=0..row} binomial(row,k)*(1+col+k)!, read by descending antidiagonals as A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ...

The programs for A276588, there is no canonical definition to state claims against.
-/

/-! ## A276588.P6677078222711355973

`A076571(A007401(n+1))`
-/

namespace A276588.P6677078222711355973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076571 (A007401 (n + 1)).toNat

end

end A276588.P6677078222711355973

/-! ## A276588.P12658102979943905806

`A076571(lt[1, A004736(n+1)])`
-/

namespace A276588.P12658102979943905806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A276588.P12658102979943905806

/-! ## A276588.P9921444694692697491

`A076571(lt[1, A124733(n+1)])`
-/

namespace A276588.P9921444694692697491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A276588.P9921444694692697491

/-! ## A276588.P9640021849605781788

`A076571(A002024(n+1)+n)`
-/

namespace A276588.P9640021849605781788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076571 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A276588.P9640021849605781788

/-! ## A276588.P16562265184754572843

`A134433(A131507(n)+4+n)/A002260(n+1)`
-/

namespace A276588.P16562265184754572843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134433 (A131507 n + 4 + (n : ℤ)).toNat : ℚ) / (A002260 (n + 1) : ℚ)

end

end A276588.P16562265184754572843

/-! ## A276588.P16335619469115307602

`A276589(∑[2*n]%comp[∑[n]])`
-/

namespace A276588.P16335619469115307602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276589 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A276588.P16335619469115307602

/-! ## A276588.P14354254260753215132

`A276589(∑[char[∑[n]]]²-(n+1))`
-/

namespace A276588.P14354254260753215132
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276589 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A276588.P14354254260753215132

/-! ## A276588.P5447014435573763874

`A276589(A061579(n))%A020711(n)`
-/

namespace A276588.P5447014435573763874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276589 (A061579 n).toNat) (A020711 n)

end

end A276588.P5447014435573763874

/-! ## A276588.P195406155393851549

`lcm(A119502(n), A276589(A061579(n)))`
-/

namespace A276588.P195406155393851549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A119502 n) (A276589 (A061579 n).toNat)

end

end A276588.P195406155393851549

/-!
# A276589: Transpose of A276588.

The programs for A276589, there is no canonical definition to state claims against.
-/

/-! ## A276589.P6264257188674491401

`A276588(∑[2*n]%comp[∑[n]])`
-/

namespace A276589.P6264257188674491401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276588 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A276589.P6264257188674491401

/-! ## A276589.P7685489678417580357

`A276588(∑[char[∑[n]]]²-(n+1))`
-/

namespace A276589.P7685489678417580357
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276588 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A276589.P7685489678417580357

/-! ## A276589.P11233742123798442610

`(n+1-C(∑[char[∑[n]]], 2))!*A143409(comp[∑[n]])`
-/

namespace A276589.P11233742123798442610
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℤ) * A143409 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

end

end A276589.P11233742123798442610

/-! ## A276589.P15266693418717508837

`A076571(A380649(n+1))`
-/

namespace A276589.P15266693418717508837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076571 (A380649 (n + 1)).toNat

end

end A276589.P15266693418717508837

/-! ## A276589.P5975753491092934032

`A076571(A099375(n)+n)`
-/

namespace A276589.P5975753491092934032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076571 (A099375 n + (n : ℤ)).toNat

end

end A276589.P5975753491092934032

/-! ## A276589.P11674015438282007930

`or(char[1], A276588(A061579(n)))`
-/

namespace A276589.P11674015438282007930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A276588 (A061579 n).toNat)

end

end A276589.P11674015438282007930

/-! ## A276589.P1692035785615702254

`A007318(∑[n])*A276588(A061579(n))`
-/

namespace A276589.P1692035785615702254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A276588 (A061579 n).toNat

end

end A276589.P1692035785615702254

/-! ## A276589.P17345084285070748744

`A276588(A061579(n))/A007318(∑[n+1])`
-/

namespace A276589.P17345084285070748744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276588 (A061579 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A276589.P17345084285070748744

/-! ## A276589.P15056482360562933073

`A276588(A061579(n))%A000041(n+28)²`
-/

namespace A276589.P15056482360562933073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276588 (A061579 n).toNat) (A000041 (n + 28) ^ 2)

end

end A276589.P15056482360562933073

/-! ## A276589.P9466360073806602693

`A276588(A061579(n))+char[A000108(n+6)]`
-/

namespace A276589.P9466360073806602693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 6)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276588 (A061579 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A276589.P9466360073806602693

/-!
# A276591: a(n) is the smallest prime p > a(n-1) such that p - a(n-1) is an (n-1)-almost prime; a(1) = 2.

The programs for A276591, there is no canonical definition to state claims against.
-/

/-! ## A276591.P16720923043139397196

`p?[p?[A113983(n)]+n]`
-/

namespace A276591.P16720923043139397196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113983 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276591.P16720923043139397196

/-! ## A276591.P2234213370697499520

`A142353(A055417(n))`
-/

namespace A276591.P2234213370697499520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142353 (A055417 n).toNat

end

end A276591.P2234213370697499520

/-!
# A276592: Numerator of the rational part of the sum of reciprocals of even powers of odd numbers, i.e., Sum_{k>=1} 1/(2*k-1)^(2*n).

The programs for A276592, there is no canonical definition to state claims against.
-/

/-! ## A276592.P5995747783839606974

`abs(A089171(n))`
-/

namespace A276592.P5995747783839606974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A089171 n|

end

end A276592.P5995747783839606974

/-! ## A276592.P5315499377529906464

`abs(A279370(n))`
-/

namespace A276592.P5315499377529906464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279370 n|

end

end A276592.P5315499377529906464

/-! ## A276592.P16929316774381186007

`A000038(n)-A279370(n)`
-/

namespace A276592.P16929316774381186007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A279370 n

end

end A276592.P16929316774381186007

/-! ## A276592.P3107444524843919051

`A033999(n)*A089171(n)`
-/

namespace A276592.P3107444524843919051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A089171 n

end

end A276592.P3107444524843919051

/-! ## A276592.P3211964305128310239

`gcd(A000038(n), A089171(n))`
-/

namespace A276592.P3211964305128310239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A089171 n)

end

end A276592.P3211964305128310239

/-!
# A276593: Denominator of the rational part of the sum of reciprocals of even powers of odd numbers, i.e., Sum_{k>=1} 1/(2*k-1)^(2*n).

The programs for A276593, there is no canonical definition to state claims against.
-/

/-! ## A276593.P4970307160037064499

`A068205(2*(n+1))`
-/

namespace A276593.P4970307160037064499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068205 (2 * (n + 1))

end

end A276593.P4970307160037064499

/-! ## A276593.P6888381435646969260

`4*A050971(2*(n+1))`
-/

namespace A276593.P6888381435646969260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A050971 (2 * (n + 1))

end

end A276593.P6888381435646969260

/-! ## A276593.P1402842175766696119

`record[A068205(A133265(n))]`
-/

namespace A276593.P1402842175766696119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068205 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276593.P1402842175766696119

/-! ## A276593.P17967682030796410015

`lcm(8, A068205(A103517(n)))`
-/

namespace A276593.P17967682030796410015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (A068205 (A103517 n).toNat)

end

end A276593.P17967682030796410015

/-!
# A276594: Numerator of the rational part of the sum of reciprocals of even powers of even numbers, i.e., Sum_{k>=1} 1/(2*k)^(2*n).

The programs for A276594, there is no canonical definition to state claims against.
-/

/-! ## A276594.P15361597671280464269

`abs(A001067(n+1))`
-/

namespace A276594.P15361597671280464269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001067 (n + 1)|

end

end A276594.P15361597671280464269

/-! ## A276594.P2965594998351170853

`abs(A141590(n+1))`
-/

namespace A276594.P2965594998351170853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141590 (n + 1)|

end

end A276594.P2965594998351170853

/-! ## A276594.P10009646659781960040

`abs(A060054(2*(n+1)))`
-/

namespace A276594.P10009646659781960040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060054 (2 * (n + 1))|

end

end A276594.P10009646659781960040

/-! ## A276594.P15949641195097175496

`abs(A120082(2*(n+1)))`
-/

namespace A276594.P15949641195097175496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120082 (2 * (n + 1))|

end

end A276594.P15949641195097175496

/-! ## A276594.P12135724471554153063

`A062157(n+1)*A141590(n+1)`
-/

namespace A276594.P12135724471554153063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A141590 (n + 1)

end

end A276594.P12135724471554153063

/-!
# A276595: Denominator of the rational part of the sum of reciprocals of even powers of even numbers, i.e., Sum_{k>=1} 1/(2*k)^(2*n).

The programs for A276595, there is no canonical definition to state claims against.
-/

/-! ## A276595.P3975853059861400743

`2*A060055(n+2)`
-/

namespace A276595.P3975853059861400743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060055 (n + 2)

end

end A276595.P3975853059861400743

/-! ## A276595.P2247668881426783603

`A057868(n+1)/(2*(n+1))`
-/

namespace A276595.P2247668881426783603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057868 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A276595.P2247668881426783603

/-! ## A276595.P2930571959464387320

`lcm(A002432(n+1), A276593(n+1))`
-/

namespace A276595.P2930571959464387320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002432 (n + 1)) (A276593 (n + 1))

end

end A276595.P2930571959464387320

/-! ## A276595.P7336163793675802403

`A060055(n+2)+A060055(n+2)+A000007(n+1)`
-/

namespace A276595.P7336163793675802403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060055 (n + 2) + (A060055 (n + 2) + A000007 (n + 1))

end

end A276595.P7336163793675802403

/-!
# A276596: Least k such that A276502(k) = n.

The programs for A276596, there is no canonical definition to state claims against.
-/

/-! ## A276596.P15632297955263457467

`(10^n)%A181965(∑[char[∑[n+1]]])`
-/

namespace A276596.P15632297955263457467
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (10 ^ n : ℤ) (A181965 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A276596.P15632297955263457467

/-! ## A276596.P4218755240238442729

`A182979(A257317(3*n+5)+n)`
-/

namespace A276596.P4218755240238442729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182979 (A257317 (3 * n + 5) + (n : ℤ)).toNat

end

end A276596.P4218755240238442729

/-! ## A276596.P7077345303426909982

`A182979(A092533(n)+A005940(n+1))`
-/

namespace A276596.P7077345303426909982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182979 (A092533 n + A005940 (n + 1)).toNat

end

end A276596.P7077345303426909982

/-! ## A276596.P670108972206676927

`A182979(A143862(n)+A047253(n+1))`
-/

namespace A276596.P670108972206676927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182979 (A143862 n + A047253 (n + 1)).toNat

end

end A276596.P670108972206676927

/-!
# A276597: Least k such that n divides A045876(k).

The programs for A276597, there is no canonical definition to state claims against.
-/

/-! ## A276597.P17762210627658233651

`A088473(n+1)%A088473(A300002(2*(n+2)))`
-/

namespace A276597.P17762210627658233651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088473 (n + 1)) (A088473 (A300002 (2 * (n + 2))).toNat)

end

end A276597.P17762210627658233651

/-! ## A276597.P13167856784816869693

`A051885(n+1)%A165567(A090642(n))`
-/

namespace A276597.P13167856784816869693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051885 (n + 1)) (A165567 (A090642 n).toNat)

end

end A276597.P13167856784816869693

/-!
# A276598: Values of m such that m^2 + 3 is a triangular number (A000217).

The programs for A276598, the canonical program `A276598.P9748517533787666142` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276598 has offset 1).

The definition of A276598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276598.P9748517533787666142

`6*a(n-1)-a(n-2)` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A276598

/-- `6*a(n-1)-a(n-2)` -/
def P9748517533787666142.Spec : Prop :=
  ∀ n, P9748517533787666142.a n = A276598 (n + 1)

theorem P9748517533787666142.correct : P9748517533787666142.Spec := by
  intro n
  simp only [A276598, Nat.add_sub_cancel]

end A276598

/-! ## A276598.P1272063185296283407

`5*A001109(n)`
-/

namespace A276598.P1272063185296283407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001109 n

end

end A276598.P1272063185296283407

namespace A276598

/-- `5*A001109(n)` -/
def P1272063185296283407.Spec : Prop :=
  ∀ n, P1272063185296283407.a n = A276598 (n + 1)

end A276598

/-! ## A276598.P5766557467183185917

`5/2*A000129(2*n)`
-/

namespace A276598.P5766557467183185917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A000129 (2 * n) : ℚ)

end

end A276598.P5766557467183185917

namespace A276598

/-- `5/2*A000129(2*n)` -/
def P5766557467183185917.Spec : Prop :=
  ∀ n, P5766557467183185917.a n = (A276598 (n + 1) : ℚ)

end A276598

/-! ## A276598.P2363979427801985134

`5/2*A001542(n)`
-/

namespace A276598.P2363979427801985134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A001542 n : ℚ)

end

end A276598.P2363979427801985134

namespace A276598

/-- `5/2*A001542(n)` -/
def P2363979427801985134.Spec : Prop :=
  ∀ n, P2363979427801985134.a n = (A276598 (n + 1) : ℚ)

end A276598

/-! ## A276598.P3580006418042168628

`5/4*A005319(n)`
-/

namespace A276598.P3580006418042168628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A005319 n : ℚ)

end

end A276598.P3580006418042168628

namespace A276598

/-- `5/4*A005319(n)` -/
def P3580006418042168628.Spec : Prop :=
  ∀ n, P3580006418042168628.a n = (A276598 (n + 1) : ℚ)

end A276598

/-! ## A276598.P1266480981367232552

`5/6*A075848(n)`
-/

namespace A276598.P1266480981367232552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 6 * (A075848 n : ℚ)

end

end A276598.P1266480981367232552

namespace A276598

/-- `5/6*A075848(n)` -/
def P1266480981367232552.Spec : Prop :=
  ∀ n, P1266480981367232552.a n = (A276598 (n + 1) : ℚ)

end A276598

/-! ## A276598.P9740139612708966047

`5*floor(A182189(n)/2)`
-/

namespace A276598.P9740139612708966047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌊(A182189 n : ℚ) / 2⌋

end

end A276598.P9740139612708966047

namespace A276598

/-- `5*floor(A182189(n)/2)` -/
def P9740139612708966047.Spec : Prop :=
  ∀ n, P9740139612708966047.a n = A276598 (n + 1)

end A276598

/-! ## A276598.P10170543966406167475

`5*A204512(2*(n+1))`
-/

namespace A276598.P10170543966406167475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A204512 (2 * (n + 1))

end

end A276598.P10170543966406167475

namespace A276598

/-- `5*A204512(2*(n+1))` -/
def P10170543966406167475.Spec : Prop :=
  ∀ n, P10170543966406167475.a n = A276598 (n + 1)

end A276598

/-! ## A276598.P15730686130359170918

`5/3*A106328(n+1)`
-/

namespace A276598.P15730686130359170918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A106328 (n + 1) : ℚ)

end

end A276598.P15730686130359170918

namespace A276598

/-- `5/3*A106328(n+1)` -/
def P15730686130359170918.Spec : Prop :=
  ∀ n, P15730686130359170918.a n = (A276598 (n + 1) : ℚ)

end A276598

/-! ## A276598.P10196376356640665471

`5/4*A081554(n)/2`
-/

namespace A276598.P10196376356640665471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A081554 n : ℚ) / 2

end

end A276598.P10196376356640665471

namespace A276598

/-- `5/4*A081554(n)/2` -/
def P10196376356640665471.Spec : Prop :=
  ∀ n, P10196376356640665471.a n = (A276598 (n + 1) : ℚ)

end A276598

/-! ## A276598.P18065711779182787655

`5*(1-∑[A176981(2*n)])`
-/

namespace A276598.P18065711779182787655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276598.P18065711779182787655

namespace A276598

/-- `5*(1-∑[A176981(2*n)])` -/
def P18065711779182787655.Spec : Prop :=
  ∀ n, P18065711779182787655.a n = A276598 (n + 1)

end A276598

/-! ## A276598.P3243882504817414836

`5*A105635(A004273(n))`
-/

namespace A276598.P3243882504817414836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A105635 (A004273 n).toNat

end

end A276598.P3243882504817414836

namespace A276598

/-- `5*A105635(A004273(n))` -/
def P3243882504817414836.Spec : Prop :=
  ∀ n, P3243882504817414836.a n = A276598 (n + 1)

end A276598

/-! ## A276598.P4225117384480822570

`A005319(n)+A001109(n)`
-/

namespace A276598.P4225117384480822570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 n + A001109 n

end

end A276598.P4225117384480822570

namespace A276598

/-- `A005319(n)+A001109(n)` -/
def P4225117384480822570.Spec : Prop :=
  ∀ n, P4225117384480822570.a n = A276598 (n + 1)

end A276598

/-! ## A276598.P4467267408189492743

`A002315(n)-A038725(n)`
-/

namespace A276598.P4467267408189492743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n - A038725 n

end

end A276598.P4467267408189492743

namespace A276598

/-- `A002315(n)-A038725(n)` -/
def P4467267408189492743.Spec : Prop :=
  ∀ n, P4467267408189492743.a n = A276598 (n + 1)

end A276598

/-! ## A276598.P11021567920273614978

`A054488(n)-A001541(n)`
-/

namespace A276598.P11021567920273614978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054488 n - A001541 n

end

end A276598.P11021567920273614978

namespace A276598

/-- `A054488(n)-A001541(n)` -/
def P11021567920273614978.Spec : Prop :=
  ∀ n, P11021567920273614978.a n = A276598 (n + 1)

end A276598

/-! ## A276598.P14605258524149329403

`A075848(n)-A001109(n)`
-/

namespace A276598.P14605258524149329403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075848 n - A001109 n

end

end A276598.P14605258524149329403

namespace A276598

/-- `A075848(n)-A001109(n)` -/
def P14605258524149329403.Spec : Prop :=
  ∀ n, P14605258524149329403.a n = A276598 (n + 1)

end A276598

/-! ## A276598.P7776444829120447337

`A038761(n)-A038723(n)`
-/

namespace A276598.P7776444829120447337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038761 n - A038723 n

end

end A276598.P7776444829120447337

namespace A276598

/-- `A038761(n)-A038723(n)` -/
def P7776444829120447337.Spec : Prop :=
  ∀ n, P7776444829120447337.a n = A276598 (n + 1)

end A276598

/-! ## A276598.P3757435401590719918

`A054489(n)-Δ[A001109(n)]`
-/

namespace A276598.P3757435401590719918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054489 n - (f1 (n + 1) - f1 n)

end

end A276598.P3757435401590719918

namespace A276598

/-- `A054489(n)-Δ[A001109(n)]` -/
def P3757435401590719918.Spec : Prop :=
  ∀ n, P3757435401590719918.a n = A276598 (n + 1)

end A276598

/-! ## A276598.P9042547712030708863

`A106328(n+1)+A001542(n)`
-/

namespace A276598.P9042547712030708863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106328 (n + 1) + A001542 n

end

end A276598.P9042547712030708863

namespace A276598

/-- `A106328(n+1)+A001542(n)` -/
def P9042547712030708863.Spec : Prop :=
  ∀ n, P9042547712030708863.a n = A276598 (n + 1)

end A276598

/-!
# A276599: Values of n such that n^2 + 5 is a triangular number (A000217).

The programs for A276599, the canonical program `A276599.P10298511495582318171` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276599 has offset 1).

The definition of A276599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276599.P10298511495582318171

`6*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=25`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A276599

/-- `6*a(n-2)-a(n-4)` -/
def P10298511495582318171.Spec : Prop :=
  ∀ n, P10298511495582318171.a n = A276599 (n + 1)

theorem P10298511495582318171.correct : P10298511495582318171.Spec := by
  intro n
  simp only [A276599, Nat.add_sub_cancel]

end A276599

/-! ## A276599.P3342794357528441456

`A006451(n)+A216134(n)+1`
-/

namespace A276599.P3342794357528441456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 n + (A216134 n + 1)

end

end A276599.P3342794357528441456

namespace A276599

/-- `A006451(n)+A216134(n)+1` -/
def P3342794357528441456.Spec : Prop :=
  ∀ n, P3342794357528441456.a n = A276599 (n + 1)

end A276599

/-! ## A276599.P5394342272073941667

`A364319(n+1)+A216134(n)`
-/

namespace A276599.P5394342272073941667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364319 (n + 1) + A216134 n

end

end A276599.P5394342272073941667

namespace A276599

/-- `A364319(n+1)+A216134(n)` -/
def P5394342272073941667.Spec : Prop :=
  ∀ n, P5394342272073941667.a n = A276599 (n + 1)

end A276599

/-! ## A276599.P10345083521043045716

`A000129(n+2)-A006452(n)`
-/

namespace A276599.P10345083521043045716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 2) - A006452 n

end

end A276599.P10345083521043045716

namespace A276599

/-- `A000129(n+2)-A006452(n)` -/
def P10345083521043045716.Spec : Prop :=
  ∀ n, P10345083521043045716.a n = A276599 (n + 1)

end A276599

/-! ## A276599.P10834021774555443044

`A000129(n+2)-A216162(2*n)`
-/

namespace A276599.P10834021774555443044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 2) - A216162 (2 * n)

end

end A276599.P10834021774555443044

namespace A276599

/-- `A000129(n+2)-A216162(2*n)` -/
def P10834021774555443044.Spec : Prop :=
  ∀ n, P10834021774555443044.a n = A276599 (n + 1)

end A276599

/-! ## A276599.P11940398553173637720

`∑[A006452(n+1)+A006452(n)]-1`
-/

namespace A276599.P11940398553173637720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (n + 1) + A006452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A276599.P11940398553173637720

namespace A276599

/-- `∑[A006452(n+1)+A006452(n)]-1` -/
def P11940398553173637720.Spec : Prop :=
  ∀ n, P11940398553173637720.a n = A276599 (n + 1)

end A276599

/-! ## A276599.P14415010048390804894

`∑[A217975(n+1)]-A217975(n+1)/2`
-/

namespace A276599.P14415010048390804894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217975 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A217975 (n + 1) : ℚ) / 2

end

end A276599.P14415010048390804894

namespace A276599

/-- `∑[A217975(n+1)]-A217975(n+1)/2` -/
def P14415010048390804894.Spec : Prop :=
  ∀ n, P14415010048390804894.a n = (A276599 (n + 1) : ℚ)

end A276599

/-! ## A276599.P8373254609088405045

`A077446(n+1)-A001109(A110654(n))`
-/

namespace A276599.P8373254609088405045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077446 (n + 1) - A001109 (A110654 n).toNat

end

end A276599.P8373254609088405045

namespace A276599

/-- `A077446(n+1)-A001109(A110654(n))` -/
def P8373254609088405045.Spec : Prop :=
  ∀ n, P8373254609088405045.a n = A276599 (n + 1)

end A276599

/-! ## A276599.P5163869786855372950

`A001333(n)+A048654(n)-A006452(n)`
-/

namespace A276599.P5163869786855372950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (A048654 n - A006452 n)

end

end A276599.P5163869786855372950

namespace A276599

/-- `A001333(n)+A048654(n)-A006452(n)` -/
def P5163869786855372950.Spec : Prop :=
  ∀ n, P5163869786855372950.a n = A276599 (n + 1)

end A276599

/-! ## A276599.P18377278807918119847

`A077446(n+1)+A077446(n+1)-A276601(n+1)`
-/

namespace A276599.P18377278807918119847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077446 (n + 1) + (A077446 (n + 1) - A276601 (n + 1))

end

end A276599.P18377278807918119847

namespace A276599

/-- `A077446(n+1)+A077446(n+1)-A276601(n+1)` -/
def P18377278807918119847.Spec : Prop :=
  ∀ n, P18377278807918119847.a n = A276599 (n + 1)

end A276599

/-! ## A276599.P7463276677314451964

`A133326(n+1)/2`
-/

namespace A276599.P7463276677314451964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133326 (n + 1) : ℚ) / 2

end

end A276599.P7463276677314451964

namespace A276599

/-- `A133326(n+1)/2` -/
def P7463276677314451964.Spec : Prop :=
  ∀ n, P7463276677314451964.a n = (A276599 (n + 1) : ℚ)

end A276599

/-! ## A276599.P7770921685309592045

`(A077446(n+1)+A077442(n))/2`
-/

namespace A276599.P7770921685309592045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077446 (n + 1) + A077442 n : ℚ) / 2

end

end A276599.P7770921685309592045

namespace A276599

/-- `(A077446(n+1)+A077442(n))/2` -/
def P7770921685309592045.Spec : Prop :=
  ∀ n, P7770921685309592045.a n = (A276599 (n + 1) : ℚ)

end A276599

/-! ## A276599.P5900542765483516427

`(A276601(n+1)+A077241(n))/2`
-/

namespace A276599.P5900542765483516427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276601 (n + 1) + A077241 n : ℚ) / 2

end

end A276599.P5900542765483516427

namespace A276599

/-- `(A276601(n+1)+A077241(n))/2` -/
def P5900542765483516427.Spec : Prop :=
  ∀ n, P5900542765483516427.a n = (A276599 (n + 1) : ℚ)

end A276599

/-! ## A276599.P14466505660756143613

`2*A077446(n+1)-A276601(n+1)`
-/

namespace A276599.P14466505660756143613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077446 (n + 1) - A276601 (n + 1)

end

end A276599.P14466505660756143613

namespace A276599

/-- `2*A077446(n+1)-A276601(n+1)` -/
def P14466505660756143613.Spec : Prop :=
  ∀ n, P14466505660756143613.a n = A276599 (n + 1)

end A276599

/-! ## A276599.P12445575506092403174

`A048739(n+1)-(A048739(n)+A006452(n))`
-/

namespace A276599.P12445575506092403174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 (n + 1) - (A048739 n + A006452 n)

end

end A276599.P12445575506092403174

namespace A276599

/-- `A048739(n+1)-(A048739(n)+A006452(n))` -/
def P12445575506092403174.Spec : Prop :=
  ∀ n, P12445575506092403174.a n = A276599 (n + 1)

end A276599

/-! ## A276599.P769307810489335977

`A077442(n+1)+A216134(n)-A124124(n+2)`
-/

namespace A276599.P769307810489335977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077442 (n + 1) + (A216134 n - A124124 (n + 2))

end

end A276599.P769307810489335977

namespace A276599

/-- `A077442(n+1)+A216134(n)-A124124(n+2)` -/
def P769307810489335977.Spec : Prop :=
  ∀ n, P769307810489335977.a n = A276599 (n + 1)

end A276599

