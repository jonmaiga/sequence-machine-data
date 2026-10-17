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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A006500: Restricted combinations.

The programs for A006500, there is no canonical definition to state claims against.
-/

/-! ## A006500.P4545979489492478805

`2^n-A209399(n)`
-/

namespace A006500.P4545979489492478805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A209399 n

end

end A006500.P4545979489492478805

/-! ## A006500.P8250292880082537104

`A000051(n)-(A209399(n)+1)`
-/

namespace A006500.P8250292880082537104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A209399 n + 1)

end

end A006500.P8250292880082537104

/-! ## A006500.P13324024957022939545

`A000225(n)+1-A209399(n)`
-/

namespace A006500.P13324024957022939545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A209399 n)

end

end A006500.P13324024957022939545

/-! ## A006500.P7267423404691642158

`A164387(n)+A209400(n)-A209399(n)`
-/

namespace A006500.P7267423404691642158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164387 n + (A209400 n - A209399 n)

end

end A006500.P7267423404691642158

/-! ## A006500.P15161957196027858443

`A208743(2*n+1)/sqrt(A208743(2*(n+1)))`
-/

namespace A006500.P15161957196027858443
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A208743 (2 * n + 1) : ℝ) / Real.sqrt (A208743 (2 * (n + 1)) : ℝ)

end

end A006500.P15161957196027858443

/-! ## A006500.P15549108674828615973

`A209435(∑[n+3])`
-/

namespace A006500.P15549108674828615973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006500.P15549108674828615973

/-! ## A006500.P7548330007519865958

`A209434(∑[n+2]+3)`
-/

namespace A006500.P7548330007519865958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A006500.P7548330007519865958

/-!
# A006501: Expansion of (1+x^2) / ( (1-x)^2 * (1-x^3)^2 ).

The programs for A006501, the canonical program `A006501.P15643465850074222248` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006501 has offset 0).

The definition of A006501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006501.P6149386227937143498

`∑[ceil((n+2)/3)*∑[char[3*n]]]`
-/

namespace A006501.P6149386227937143498
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / 3⌉ * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006501.P6149386227937143498

namespace A006501

/-- `∑[ceil((n+2)/3)*∑[char[3*n]]]` -/
def P6149386227937143498.Spec : Prop :=
  ∀ n, P6149386227937143498.a n = A006501 n

end A006501

/-! ## A006501.P16536228930445442967

`a(n-1)+a(n-1)/floor((n+2)/3)` with `a(0)=1`
-/

namespace A006501.P16536228930445442967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - 1) / (⌊(n + 2 : ℚ) / 3⌋ : ℚ)

end

end A006501.P16536228930445442967

namespace A006501

/-- `a(n-1)+a(n-1)/floor((n+2)/3)` -/
def P16536228930445442967.Spec : Prop :=
  ∀ n, P16536228930445442967.a n = (A006501 n : ℚ)

end A006501

/-! ## A006501.P15643465850074222248

`A007980(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006501

/-- `A007980(n)+a(n-3)` -/
def P15643465850074222248.Spec : Prop :=
  ∀ n, P15643465850074222248.a n = A006501 n

theorem P15643465850074222248.correct : P15643465850074222248.Spec := by
  intro n
  simp only [A006501]

end A006501

/-! ## A006501.P681953960410740441

`abs(∑[A008620(n+1)*A008620(n)]-n)+n`
-/

namespace A006501.P681953960410740441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (n + 1) * A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)| + (n : ℤ)

end

end A006501.P681953960410740441

namespace A006501

/-- `abs(∑[A008620(n+1)*A008620(n)]-n)+n` -/
def P681953960410740441.Spec : Prop :=
  ∀ n, P681953960410740441.a n = A006501 n

end A006501

/-! ## A006501.P9242507329567646191

`A086161(n+1)*A086161(n)*A008620(n)`
-/

namespace A006501.P9242507329567646191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (n + 1) * A086161 n * A008620 n

end

end A006501.P9242507329567646191

namespace A006501

/-- `A086161(n+1)*A086161(n)*A008620(n)` -/
def P9242507329567646191.Spec : Prop :=
  ∀ n, P9242507329567646191.a n = A006501 n

end A006501

/-! ## A006501.P8902552031771585751

`A307872(n+3)+A181120(n+2)`
-/

namespace A006501.P8902552031771585751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307872 (n + 3) + A181120 (n + 2)

end

end A006501.P8902552031771585751

namespace A006501

/-- `A307872(n+3)+A181120(n+2)` -/
def P8902552031771585751.Spec : Prop :=
  ∀ n, P8902552031771585751.a n = A006501 n

end A006501

/-! ## A006501.P11634242372641140367

`A200067(n+3)-a(n-1)` with `a(0)=1`
-/

namespace A006501.P11634242372641140367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A200067 (n + 3) - a (n - 1)

end

end A006501.P11634242372641140367

namespace A006501

/-- `A200067(n+3)-a(n-1)` -/
def P11634242372641140367.Spec : Prop :=
  ∀ n, P11634242372641140367.a n = A006501 n

end A006501

/-! ## A006501.P16606736308967001664

`A029000(2*n)`
-/

namespace A006501.P16606736308967001664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029000 (2 * n)

end

end A006501.P16606736308967001664

namespace A006501

/-- `A029000(2*n)` -/
def P16606736308967001664.Spec : Prop :=
  ∀ n, P16606736308967001664.a n = A006501 n

end A006501

/-! ## A006501.P16481541450053646150

`A086159(2*n+1)*A086161(n)`
-/

namespace A006501.P16481541450053646150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086159 (2 * n + 1) * A086161 n

end

end A006501.P16481541450053646150

namespace A006501

/-- `A086159(2*n+1)*A086161(n)` -/
def P16481541450053646150.Spec : Prop :=
  ∀ n, P16481541450053646150.a n = A006501 n

end A006501

/-! ## A006501.P2003986963598243011

`A008620(n+2)*A086159(2*n)`
-/

namespace A006501.P2003986963598243011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (n + 2) * A086159 (2 * n)

end

end A006501.P2003986963598243011

namespace A006501

/-- `A008620(n+2)*A086159(2*n)` -/
def P2003986963598243011.Spec : Prop :=
  ∀ n, P2003986963598243011.a n = A006501 n

end A006501

/-! ## A006501.P12015646613202074105

`A213042(2*n+1)+A175676(n+3)`
-/

namespace A006501.P12015646613202074105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213042 (2 * n + 1) + A175676 (n + 3)

end

end A006501.P12015646613202074105

namespace A006501

/-- `A213042(2*n+1)+A175676(n+3)` -/
def P12015646613202074105.Spec : Prop :=
  ∀ n, P12015646613202074105.a n = A006501 n

end A006501

/-! ## A006501.P6054458495068321011

`A008620(n+1)*A087811(A008620(2*n+1))`
-/

namespace A006501.P6054458495068321011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (n + 1) * A087811 (A008620 (2 * n + 1)).toNat

end

end A006501.P6054458495068321011

namespace A006501

/-- `A008620(n+1)*A087811(A008620(2*n+1))` -/
def P6054458495068321011.Spec : Prop :=
  ∀ n, P6054458495068321011.a n = A006501 n

end A006501

/-! ## A006501.P6350027362785407434

`A008719(4*n)`
-/

namespace A006501.P6350027362785407434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008719 (4 * n)

end

end A006501.P6350027362785407434

namespace A006501

/-- `A008719(4*n)` -/
def P6350027362785407434.Spec : Prop :=
  ∀ n, P6350027362785407434.a n = A006501 n

end A006501

/-! ## A006501.P1418142919764995390

`A029057(4*n)`
-/

namespace A006501.P1418142919764995390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029057 (4 * n)

end

end A006501.P1418142919764995390

namespace A006501

/-- `A029057(4*n)` -/
def P1418142919764995390.Spec : Prop :=
  ∀ n, P1418142919764995390.a n = A006501 n

end A006501

/-! ## A006501.P14001210871792733581

`A029142(4*n)`
-/

namespace A006501.P14001210871792733581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029142 (4 * n)

end

end A006501.P14001210871792733581

namespace A006501

/-- `A029142(4*n)` -/
def P14001210871792733581.Spec : Prop :=
  ∀ n, P14001210871792733581.a n = A006501 n

end A006501

/-! ## A006501.P7468752225984691046

`A029000(A005843(n))%A154869(n)`
-/

namespace A006501.P7468752225984691046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029000 (A005843 n).toNat) (A154869 n)

end

end A006501.P7468752225984691046

namespace A006501

/-- `A029000(A005843(n))%A154869(n)` -/
def P7468752225984691046.Spec : Prop :=
  ∀ n, P7468752225984691046.a n = A006501 n

end A006501

/-! ## A006501.P9673185287308871680

`record[A004737(n+2)*A048760(n+1)]`
-/

namespace A006501.P9673185287308871680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 2) * A048760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006501.P9673185287308871680

namespace A006501

/-- `record[A004737(n+2)*A048760(n+1)]` -/
def P9673185287308871680.Spec : Prop :=
  ∀ n, P9673185287308871680.a n = A006501 n

end A006501

/-! ## A006501.P4995102503807394106

`record[A000196(n+1)²*A033676(n+2)]`
-/

namespace A006501.P4995102503807394106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) ^ 2 * A033676 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006501.P4995102503807394106

namespace A006501

/-- `record[A000196(n+1)²*A033676(n+2)]` -/
def P4995102503807394106.Spec : Prop :=
  ∀ n, P4995102503807394106.a n = A006501 n

end A006501

/-! ## A006501.P2719887799189680801

`A152072(A167614(n+1))`
-/

namespace A006501.P2719887799189680801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152072 (A167614 (n + 1)).toNat

end

end A006501.P2719887799189680801

namespace A006501

/-- `A152072(A167614(n+1))` -/
def P2719887799189680801.Spec : Prop :=
  ∀ n, P2719887799189680801.a n = A006501 n

end A006501

/-!
# A006502: Related to Fibonacci numbers.

The programs for A006502, there is no canonical definition to state claims against.
-/

/-! ## A006502.P15032988583168420294

`A259708(∑[n+3])`
-/

namespace A006502.P15032988583168420294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259708 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006502.P15032988583168420294

/-! ## A006502.P13732533577738306325

`record[A259708(A055998(A053186(n)))]`
-/

namespace A006502.P13732533577738306325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259708 (A055998 (A053186 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006502.P13732533577738306325

/-! ## A006502.P5270900407391066415

`record[A259708(A055998(A289508(n+1)))]`
-/

namespace A006502.P5270900407391066415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259708 (A055998 (A289508 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006502.P5270900407391066415

/-! ## A006502.P4141408290974081873

`record[A259708(A055998(A300248(n+1)))]`
-/

namespace A006502.P4141408290974081873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259708 (A055998 (A300248 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006502.P4141408290974081873

/-! ## A006502.P12908784274652124799

`record[A259708(n)/A259697(n+3)]`
-/

namespace A006502.P12908784274652124799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259708 n : ℚ) / (A259697 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006502.P12908784274652124799

/-!
# A006503: a(n) = n*(n+1)*(n+8)/6.

The programs for A006503, the canonical program `A006503.P12448017910382800998` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006503 has offset 0).

The definition of A006503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006503.P11966376228742888163

`n*(n+1)*(n+8)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006503.P11966376228742888163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * ((n + 8 : ℚ) / 6))

end

end A006503.P11966376228742888163

namespace A006503

/-- `n*(n+1)*(n+8)/6` -/
def P11966376228742888163.Spec : Prop :=
  ∀ n, P11966376228742888163.a n = (A006503 n : ℚ)

end A006503

/-! ## A006503.P12448017910382800998

`3*a(n-1)-3*a(n-2)+a(n-3)+1` with `a(0)=0, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006503

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+1` -/
def P12448017910382800998.Spec : Prop :=
  ∀ n, P12448017910382800998.a n = A006503 n

theorem P12448017910382800998.correct : P12448017910382800998.Spec := by
  intro n
  simp only [A006503]

end A006503

/-! ## A006503.P9659305656987027709

`A000292(n)+A002378(n)`
-/

namespace A006503.P9659305656987027709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + A002378 n

end

end A006503.P9659305656987027709

namespace A006503

/-- `A000292(n)+A002378(n)` -/
def P9659305656987027709.Spec : Prop :=
  ∀ n, P9659305656987027709.a n = A006503 n

end A006503

/-! ## A006503.P16224758701338654612

`∑[∑[n]]+lcm(n, n+1)`
-/

namespace A006503.P16224758701338654612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm n (n + 1)

end

end A006503.P16224758701338654612

namespace A006503

/-- `∑[∑[n]]+lcm(n, n+1)` -/
def P16224758701338654612.Spec : Prop :=
  ∀ n, (P16224758701338654612.a n : ℤ) = A006503 n

end A006503

/-! ## A006503.P5454294657555744161

`∑[2*n]+C(n+2, 3)`
-/

namespace A006503.P5454294657555744161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 2) 3

end

end A006503.P5454294657555744161

namespace A006503

/-- `∑[2*n]+C(n+2, 3)` -/
def P5454294657555744161.Spec : Prop :=
  ∀ n, (P5454294657555744161.a n : ℤ) = A006503 n

end A006503

/-! ## A006503.P5486720335347589747

`C(n+2, 3)+n²+n`
-/

namespace A006503.P5486720335347589747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + (n ^ 2 + n)

end

end A006503.P5486720335347589747

namespace A006503

/-- `C(n+2, 3)+n²+n` -/
def P5486720335347589747.Spec : Prop :=
  ∀ n, (P5486720335347589747.a n : ℤ) = A006503 n

end A006503

/-! ## A006503.P16839430058220646264

`record[C(n, 3)-n]-2*n`
-/

namespace A006503.P16839430058220646264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 * n : ℤ)

end

end A006503.P16839430058220646264

namespace A006503

/-- `record[C(n, 3)-n]-2*n` -/
def P16839430058220646264.Spec : Prop :=
  ∀ n, P16839430058220646264.a n = A006503 n

end A006503

/-! ## A006503.P15657587897446211858

`C(n, 2)+C(n+3, 3)-1`
-/

namespace A006503.P15657587897446211858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + Nat.choose (n + 3) 3 : ℤ) - 1

end

end A006503.P15657587897446211858

namespace A006503

/-- `C(n, 2)+C(n+3, 3)-1` -/
def P15657587897446211858.Spec : Prop :=
  ∀ n, P15657587897446211858.a n = A006503 n

end A006503

/-! ## A006503.P12910995392441700069

`abs(∑[a(n-1)-2-n])` with `a(0)=0`
-/

namespace A006503.P12910995392441700069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A006503.P12910995392441700069

namespace A006503

/-- `abs(∑[a(n-1)-2-n])` -/
def P12910995392441700069.Spec : Prop :=
  ∀ n, P12910995392441700069.a n = A006503 n

end A006503

/-! ## A006503.P7651118652367016231

`-∑[a(n-1)-2-n]` with `a(0)=0`
-/

namespace A006503.P7651118652367016231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006503.P7651118652367016231

namespace A006503

/-- `-∑[a(n-1)-2-n]` -/
def P7651118652367016231.Spec : Prop :=
  ∀ n, P7651118652367016231.a n = A006503 n

end A006503

/-! ## A006503.P6092920138090628704

`∑[C(n+1, 2)+n]+∑[n]`
-/

namespace A006503.P6092920138090628704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A006503.P6092920138090628704

namespace A006503

/-- `∑[C(n+1, 2)+n]+∑[n]` -/
def P6092920138090628704.Spec : Prop :=
  ∀ n, (P6092920138090628704.a n : ℤ) = A006503 n

end A006503

/-! ## A006503.P11148369009186768225

`Δ[C(n+2, 4)]+n*(n+1)`
-/

namespace A006503.P11148369009186768225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n * (n + 1) : ℤ)

end

end A006503.P11148369009186768225

namespace A006503

/-- `Δ[C(n+2, 4)]+n*(n+1)` -/
def P11148369009186768225.Spec : Prop :=
  ∀ n, P11148369009186768225.a n = A006503 n

end A006503

/-! ## A006503.P14237474611990540327

`∑[xor(1, 2*n+1)]+∑[∑[n]]`
-/

namespace A006503.P14237474611990540327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A006503.P14237474611990540327

namespace A006503

/-- `∑[xor(1, 2*n+1)]+∑[∑[n]]` -/
def P14237474611990540327.Spec : Prop :=
  ∀ n, (P14237474611990540327.a n : ℤ) = A006503 n

end A006503

/-! ## A006503.P16168805868319302535

`∑[∑[n]]-∑[a(n-1)-2]` with `a(0)=0`
-/

namespace A006503.P16168805868319302535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  f3 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

end

end A006503.P16168805868319302535

namespace A006503

/-- `∑[∑[n]]-∑[a(n-1)-2]` -/
def P16168805868319302535.Spec : Prop :=
  ∀ n, P16168805868319302535.a n = A006503 n

end A006503

/-! ## A006503.P2051367830149490314

`∑[2*n]+∑[∑[n%(n+1)]]`
-/

namespace A006503.P2051367830149490314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A006503.P2051367830149490314

namespace A006503

/-- `∑[2*n]+∑[∑[n%(n+1)]]` -/
def P2051367830149490314.Spec : Prop :=
  ∀ n, (P2051367830149490314.a n : ℤ) = A006503 n

end A006503

/-! ## A006503.P8229095568678214432

`∑[2*n]+∑[∑[gcd(n, 2*n)]]`
-/

namespace A006503.P8229095568678214432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A006503.P8229095568678214432

namespace A006503

/-- `∑[2*n]+∑[∑[gcd(n, 2*n)]]` -/
def P8229095568678214432.Spec : Prop :=
  ∀ n, (P8229095568678214432.a n : ℤ) = A006503 n

end A006503

/-! ## A006503.P12893471902752797434

`∑[∑[n]+2*n]+and(1, 2*n)`
-/

namespace A006503.P12893471902752797434
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 (2 * n)

end

end A006503.P12893471902752797434

namespace A006503

/-- `∑[∑[n]+2*n]+and(1, 2*n)` -/
def P12893471902752797434.Spec : Prop :=
  ∀ n, (P12893471902752797434.a n : ℤ) = A006503 n

end A006503

/-! ## A006503.P4232213504308037157

`∑[C(2*n, 2)]-(n-3)*∑[n]`
-/

namespace A006503.P4232213504308037157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 3) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A006503.P4232213504308037157

namespace A006503

/-- `∑[C(2*n, 2)]-(n-3)*∑[n]` -/
def P4232213504308037157.Spec : Prop :=
  ∀ n, P4232213504308037157.a n = A006503 n

end A006503

/-!
# A006504: Coefficient of x^4 in (1-x-x^2)^(-n).

The programs for A006504, the canonical program `A006504.P10431724872203435106` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006504 has offset 1).

The definition of A006504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006504.P10431724872203435106

`∑[∑[∑[n+4]+1]]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006504

/-- `∑[∑[∑[n+4]+1]]` -/
def P10431724872203435106.Spec : Prop :=
  ∀ n, (P10431724872203435106.a n : ℤ) = A006504 (n + 1)

theorem P10431724872203435106.correct : P10431724872203435106.Spec := by
  intro n
  simp only [A006504, Nat.add_sub_cancel]

end A006504

/-! ## A006504.P17364738687255196554

`A096942(n)-∑[∑[n]]`
-/

namespace A006504.P17364738687255196554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096942 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006504.P17364738687255196554

namespace A006504

/-- `A096942(n)-∑[∑[n]]` -/
def P17364738687255196554.Spec : Prop :=
  ∀ n, P17364738687255196554.a n = A006504 (n + 1)

end A006504

/-! ## A006504.P3780389315353336483

`A095667(n)+∑[n+1]`
-/

namespace A006504.P3780389315353336483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006504.P3780389315353336483

namespace A006504

/-- `A095667(n)+∑[n+1]` -/
def P3780389315353336483.Spec : Prop :=
  ∀ n, P3780389315353336483.a n = A006504 (n + 1)

end A006504

/-! ## A006504.P6067445033260920590

`5/(n+3)*A000574(n+3)`
-/

namespace A006504.P6067445033260920590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 / (n + 3 : ℚ) * (A000574 (n + 3) : ℚ)

end

end A006504.P6067445033260920590

namespace A006504

/-- `5/(n+3)*A000574(n+3)` -/
def P6067445033260920590.Spec : Prop :=
  ∀ n, P6067445033260920590.a n = (A006504 (n + 1) : ℚ)

end A006504

/-! ## A006504.P9851146531056238041

`A055831(n+4)+a(n-1)` with `a(0)=5`
-/

namespace A006504.P9851146531056238041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A055831 (n + 4) + a (n - 1)

end

end A006504.P9851146531056238041

namespace A006504

/-- `A055831(n+4)+a(n-1)` -/
def P9851146531056238041.Spec : Prop :=
  ∀ n, P9851146531056238041.a n = A006504 (n + 1)

end A006504

/-! ## A006504.P5971242263403137982

`A105938(n)-A154286(n)`
-/

namespace A006504.P5971242263403137982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105938 n - A154286 n

end

end A006504.P5971242263403137982

namespace A006504

/-- `A105938(n)-A154286(n)` -/
def P5971242263403137982.Spec : Prop :=
  ∀ n, P5971242263403137982.a n = A006504 (n + 1)

end A006504

/-! ## A006504.P1277962434853990624

`A024191(n+1)+A000292(n)`
-/

namespace A006504.P1277962434853990624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1) + A000292 n

end

end A006504.P1277962434853990624

namespace A006504

/-- `A024191(n+1)+A000292(n)` -/
def P1277962434853990624.Spec : Prop :=
  ∀ n, P1277962434853990624.a n = A006504 (n + 1)

end A006504

/-! ## A006504.P1473989686106555072

`A005718(n)+A180118(n)+2`
-/

namespace A006504.P1473989686106555072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 n + (A180118 n + 2)

end

end A006504.P1473989686106555072

namespace A006504

/-- `A005718(n)+A180118(n)+2` -/
def P1473989686106555072.Spec : Prop :=
  ∀ n, P1473989686106555072.a n = A006504 (n + 1)

end A006504

/-! ## A006504.P17270574109045720941

`A006636(n)-A000574(n+3)`
-/

namespace A006504.P17270574109045720941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006636 n - A000574 (n + 3)

end

end A006504.P17270574109045720941

namespace A006504

/-- `A006636(n)-A000574(n+3)` -/
def P17270574109045720941.Spec : Prop :=
  ∀ n, P17270574109045720941.a n = A006504 (n + 1)

end A006504

/-! ## A006504.P18274134845252789505

`A005581(n)+A005287(n+4)`
-/

namespace A006504.P18274134845252789505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n + A005287 (n + 4)

end

end A006504.P18274134845252789505

namespace A006504

/-- `A005581(n)+A005287(n+4)` -/
def P18274134845252789505.Spec : Prop :=
  ∀ n, P18274134845252789505.a n = A006504 (n + 1)

end A006504

/-! ## A006504.P8335514408257739705

`A101854(n+1)-A000292(n+1)`
-/

namespace A006504.P8335514408257739705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101854 (n + 1) - A000292 (n + 1)

end

end A006504.P8335514408257739705

namespace A006504

/-- `A101854(n+1)-A000292(n+1)` -/
def P8335514408257739705.Spec : Prop :=
  ∀ n, P8335514408257739705.a n = A006504 (n + 1)

end A006504

/-! ## A006504.P15983258053129271957

`A077415(n+2)+A063258(n)+1`
-/

namespace A006504.P15983258053129271957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077415 (n + 2) + (A063258 n + 1)

end

end A006504.P15983258053129271957

namespace A006504

/-- `A077415(n+2)+A063258(n)+1` -/
def P15983258053129271957.Spec : Prop :=
  ∀ n, P15983258053129271957.a n = A006504 (n + 1)

end A006504

/-! ## A006504.P12152438110611310976

`A223718(n+1)+A117560(n+2)`
-/

namespace A006504.P12152438110611310976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (n + 1) + A117560 (n + 2)

end

end A006504.P12152438110611310976

namespace A006504

/-- `A223718(n+1)+A117560(n+2)` -/
def P12152438110611310976.Spec : Prop :=
  ∀ n, P12152438110611310976.a n = A006504 (n + 1)

end A006504

/-! ## A006504.P1343445592969344087

`A387204(n+1)-A000217(n+1)`
-/

namespace A006504.P1343445592969344087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387204 (n + 1) - A000217 (n + 1)

end

end A006504.P1343445592969344087

namespace A006504

/-- `A387204(n+1)-A000217(n+1)` -/
def P1343445592969344087.Spec : Prop :=
  ∀ n, P1343445592969344087.a n = A006504 (n + 1)

end A006504

/-! ## A006504.P1725834623922221936

`A060488(n+3)+A022815(n+1)`
-/

namespace A006504.P1725834623922221936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060488 (n + 3) + A022815 (n + 1)

end

end A006504.P1725834623922221936

namespace A006504

/-- `A060488(n+3)+A022815(n+1)` -/
def P1725834623922221936.Spec : Prop :=
  ∀ n, P1725834623922221936.a n = A006504 (n + 1)

end A006504

/-! ## A006504.P1401390508698015510

`A159920(n+2)+A005712(n+2)`
-/

namespace A006504.P1401390508698015510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159920 (n + 2) + A005712 (n + 2)

end

end A006504.P1401390508698015510

namespace A006504

/-- `A159920(n+2)+A005712(n+2)` -/
def P1401390508698015510.Spec : Prop :=
  ∀ n, P1401390508698015510.a n = A006504 (n + 1)

end A006504

/-! ## A006504.P7894118801372319761

`A055833(n+6)-A139798(n+1)`
-/

namespace A006504.P7894118801372319761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055833 (n + 6) - A139798 (n + 1)

end

end A006504.P7894118801372319761

namespace A006504

/-- `A055833(n+6)-A139798(n+1)` -/
def P7894118801372319761.Spec : Prop :=
  ∀ n, P7894118801372319761.a n = A006504 (n + 1)

end A006504

/-! ## A006504.P16084471278262746493

`A024191(n+1)+A005581(n)+n`
-/

namespace A006504.P16084471278262746493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1) + (A005581 n + (n : ℤ))

end

end A006504.P16084471278262746493

namespace A006504

/-- `A024191(n+1)+A005581(n)+n` -/
def P16084471278262746493.Spec : Prop :=
  ∀ n, P16084471278262746493.a n = A006504 (n + 1)

end A006504

/-! ## A006504.P7500860178891744793

`A095667(n)+A000217(n)+n+1`
-/

namespace A006504.P7500860178891744793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n + A000217 n + (n : ℤ) + 1

end

end A006504.P7500860178891744793

namespace A006504

/-- `A095667(n)+A000217(n)+n+1` -/
def P7500860178891744793.Spec : Prop :=
  ∀ n, P7500860178891744793.a n = A006504 (n + 1)

end A006504

/-! ## A006504.P283148762566488525

`A005287(n+4)+A000292(n)-n`
-/

namespace A006504.P283148762566488525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005287 (n + 4) + (A000292 n - (n : ℤ))

end

end A006504.P283148762566488525

namespace A006504

/-- `A005287(n+4)+A000292(n)-n` -/
def P283148762566488525.Spec : Prop :=
  ∀ n, P283148762566488525.a n = A006504 (n + 1)

end A006504

/-!
# A006505: Number of partitions of an n-set into boxes of size >2.

The programs for A006505, there is no canonical definition to state claims against.
-/

/-! ## A006505.P3724791375350963923

`A293024(∑[n+3])`
-/

namespace A006505.P3724791375350963923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006505.P3724791375350963923

/-! ## A006505.P13708325628501762896

`(1-char[1])*A293024(A027379(n+1))`
-/

namespace A006505.P13708325628501762896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A293024 (A027379 (n + 1)).toNat

end

end A006505.P13708325628501762896

/-! ## A006505.P13922508553969060154

`A293024(A027379(1-char[1]+n))-char[1]`
-/

namespace A006505.P13922508553969060154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 (A027379 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A006505.P13922508553969060154

/-! ## A006505.P18232478454249674233

`gcd(A000038(n), A293024(A027379(n+1)))`
-/

namespace A006505.P18232478454249674233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293024 (A027379 (n + 1)).toNat)

end

end A006505.P18232478454249674233

/-! ## A006505.P7381323596377394055

`and(A260196(n), A293024(A027379(n+1)))`
-/

namespace A006505.P7381323596377394055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A293024 (A027379 (n + 1)).toNat)

end

end A006505.P7381323596377394055

/-! ## A006505.P320326892260708933

`A293024(A055998(n+1))+A000035(2*n)`
-/

namespace A006505.P320326892260708933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 (A055998 (n + 1)).toNat + A000035 (2 * n)

end

end A006505.P320326892260708933

/-! ## A006505.P16511277746408500129

`A000034(2*n)*A293024(A055998(n+1))`
-/

namespace A006505.P16511277746408500129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A293024 (A055998 (n + 1)).toNat

end

end A006505.P16511277746408500129

/-! ## A006505.P8805337119348939363

`or(A005369(n+2), A293024(A027379(n+1)))`
-/

namespace A006505.P8805337119348939363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005369 (n + 2)) (A293024 (A027379 (n + 1)).toNat)

end

end A006505.P8805337119348939363

/-! ## A006505.P12929716030104683967

`A295663(A142068(n+1))+A293024(A055999(n)+3)`
-/

namespace A006505.P12929716030104683967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295663 (A142068 (n + 1)).toNat + A293024 (A055999 n + 3).toNat

end

end A006505.P12929716030104683967

/-!
# A006506: Number of n X n binary matrices with no 2 adjacent 1's, or number of configurations of non-attacking princes on an n X n board, where a "prince" attacks the four adjacent (non-diagonal) squares. Also number of independent vertex sets in an n X n grid.

The programs for A006506, there is no canonical definition to state claims against.
-/

/-! ## A006506.P3048741953980583231

`A089980(∑[4*n])`
-/

namespace A006506.P3048741953980583231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089980 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006506.P3048741953980583231

/-! ## A006506.P13892097324162004509

`A002416(n)-A381857(n)`
-/

namespace A006506.P13892097324162004509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002416 n - A381857 n

end

end A006506.P13892097324162004509

/-!
# A006507: a(n+1) = a(n) + sum of digits of a(n), with a(1)=7.

The programs for A006507, the canonical program `A006507.P10105666352366520478` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006507 has offset 1).

The definition of A006507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006507.P10105666352366520478

`A062028(a(n-1))` with `a(0)=7`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A006507

/-- `A062028(a(n-1))` -/
def P10105666352366520478.Spec : Prop :=
  ∀ n, P10105666352366520478.a n = A006507 (n + 1)

theorem P10105666352366520478.correct : P10105666352366520478.Spec := by
  intro n
  simp only [A006507, Nat.add_sub_cancel]

end A006507

/-! ## A006507.P442365780955732667

`A160931(a(n-1)-1)+1` with `a(0)=7`
-/

namespace A006507.P442365780955732667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A160931 (a (n - 1) - 1).toNat + 1

end

end A006507.P442365780955732667

namespace A006507

/-- `A160931(a(n-1)-1)+1` -/
def P442365780955732667.Spec : Prop :=
  ∀ n, P442365780955732667.a n = A006507 (n + 1)

end A006507

/-! ## A006507.P13643402743113062209

`A007953(a(n-1))+a(n-1)` with `a(0)=7`
-/

namespace A006507.P13643402743113062209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A007953 (a (n - 1)).toNat + a (n - 1)

end

end A006507.P13643402743113062209

namespace A006507

/-- `A007953(a(n-1))+a(n-1)` -/
def P13643402743113062209.Spec : Prop :=
  ∀ n, P13643402743113062209.a n = A006507 (n + 1)

end A006507

/-! ## A006507.P15302222942339246074

`a(n-1)+A057147(a(n-1))/a(n-1)` with `a(0)=7`
-/

namespace A006507.P15302222942339246074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + (A057147 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / a (n - 1)

end

end A006507.P15302222942339246074

namespace A006507

/-- `a(n-1)+A057147(a(n-1))/a(n-1)` -/
def P15302222942339246074.Spec : Prop :=
  ∀ n, P15302222942339246074.a n = (A006507 (n + 1) : ℚ)

end A006507

/-! ## A006507.P9046153955754768867

`record[A062028(a(A046666(n)))]` with `a(0)=7, a(1)=0`
-/

namespace A006507.P9046153955754768867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 0] fun n f1 =>
  A062028 (f1 (A046666 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006507.P9046153955754768867

namespace A006507

/-- `record[A062028(a(A046666(n)))]` -/
def P9046153955754768867.Spec : Prop :=
  ∀ n, P9046153955754768867.a n = A006507 (n + 1)

end A006507

/-! ## A006507.P11397037838479926494

`A160939(a(n-1)+1)-1` with `a(0)=7`
-/

namespace A006507.P11397037838479926494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A160939 (a (n - 1) + 1).toNat - 1

end

end A006507.P11397037838479926494

namespace A006507

/-- `A160939(a(n-1)+1)-1` -/
def P11397037838479926494.Spec : Prop :=
  ∀ n, P11397037838479926494.a n = A006507 (n + 1)

end A006507

/-! ## A006507.P13814238932045879548

`A004092(5*a(n-1))+a(n-1)` with `a(0)=7`
-/

namespace A006507.P13814238932045879548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A004092 (5 * a (n - 1)).toNat + a (n - 1)

end

end A006507.P13814238932045879548

namespace A006507

/-- `A004092(5*a(n-1))+a(n-1)` -/
def P13814238932045879548.Spec : Prop :=
  ∀ n, P13814238932045879548.a n = A006507 (n + 1)

end A006507

/-!
# A006508: a(n+1) = a(n)-th composite number, with a(0) = 1.

The programs for A006508, there is no canonical definition to state claims against.
-/

/-! ## A006508.P17687464307110634962

`A114577(∑[n]+1)`
-/

namespace A006508.P17687464307110634962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006508.P17687464307110634962

/-! ## A006508.P18323409890704550391

`record[A114577(n+1)]`
-/

namespace A006508.P18323409890704550391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006508.P18323409890704550391

/-! ## A006508.P8524767079733774091

`or(char[2], A114577(A000124(n)))`
-/

namespace A006508.P8524767079733774091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A114577 (A000124 n).toNat)

end

end A006508.P8524767079733774091

/-! ## A006508.P16424698777718942501

`gcd(A000038(n), A114577(A000124(n)))`
-/

namespace A006508.P16424698777718942501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A114577 (A000124 n).toNat)

end

end A006508.P16424698777718942501

/-! ## A006508.P8599618101826018689

`A114577(A000124(n))%A241849(∑[n])`
-/

namespace A006508.P8599618101826018689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114577 (A000124 n).toNat) (A241849 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A006508.P8599618101826018689

/-! ## A006508.P16048271676821471323

`A007318(C(n, n²))*A114577(A000124(n))`
-/

namespace A006508.P16048271676821471323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n (n ^ 2)) * A114577 (A000124 n).toNat

end

end A006508.P16048271676821471323

/-! ## A006508.P10115787267875540935

`A014963(12*n+6)*A114577(A000124(n))`
-/

namespace A006508.P10115787267875540935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A114577 (A000124 n).toNat

end

end A006508.P10115787267875540935

/-! ## A006508.P4132259745628139768

`A000041(floor(1/(n+1)))*A114577(A000124(n))`
-/

namespace A006508.P4132259745628139768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊1 / (n + 1 : ℚ)⌋.toNat * A114577 (A000124 n).toNat

end

end A006508.P4132259745628139768

/-! ## A006508.P13336229151474695712

`A008683(A005117(n+1))²*A114577(C(n+1, 2)+1)`
-/

namespace A006508.P13336229151474695712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005117 (n + 1)).toNat ^ 2 * A114577 (Nat.choose (n + 1) 2 + 1)

end

end A006508.P13336229151474695712

/-!
# A006509: Cald's sequence: a(n+1) = a(n) - prime(n) if that value is positive and new, otherwise a(n) + prime(n) if new, otherwise 0; start with a(1)=1.

The programs for A006509, there is no canonical definition to state claims against.
-/

/-! ## A006509.P7410837053632968483

`(A064365(n)+1)%A198277(n)`
-/

namespace A006509.P7410837053632968483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064365 n + 1) (A198277 n)

end

end A006509.P7410837053632968483

/-! ## A006509.P3902274048874386190

`A177702(A077043(n))+A064365(n)`
-/

namespace A006509.P3902274048874386190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 (A077043 n).toNat + A064365 n

end

end A006509.P3902274048874386190

/-! ## A006509.P2420990880205604961

`A177702(n²)+A064365(n)`
-/

namespace A006509.P2420990880205604961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 (n ^ 2) + A064365 n

end

end A006509.P2420990880205604961

/-!
# A006511: Largest inverse of totient function (A000010): a(n) is the largest x such that phi(x) = m, where m = A002202(n) is the n-th number in the range of phi.

The programs for A006511, there is no canonical definition to state claims against.
-/

/-! ## A006511.P16635634866677404403

`A196079(n+1)+A002181(n+1)`
-/

namespace A006511.P16635634866677404403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196079 (n + 1) + A002181 (n + 1)

end

end A006511.P16635634866677404403

/-! ## A006511.P11830807555494406636

`A319048(A002202(n+1))`
-/

namespace A006511.P11830807555494406636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (A002202 (n + 1)).toNat

end

end A006511.P11830807555494406636

/-! ## A006511.P4380977220191894775

`A319048(lt[n, A319048(n+1)]+1)`
-/

namespace A006511.P4380977220191894775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A006511.P4380977220191894775

/-! ## A006511.P15056702223450494449

`A319048(eq[1, ceil((n+1)/A319048(n+1))]+1)`
-/

namespace A006511.P15056702223450494449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A319048 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A006511.P15056702223450494449

/-! ## A006511.P6026569059738408267

`filter[A057635(n+1), A178226(#)]`
-/

namespace A006511.P6026569059738408267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A006511.P6026569059738408267

/-! ## A006511.P16551220543450436567

`A057635(lt[0, A049283(n+1)]+1)`
-/

namespace A006511.P16551220543450436567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A006511.P16551220543450436567

/-! ## A006511.P10134755119519657943

`A057635(lt[0, A057635(n+1)]+1)`
-/

namespace A006511.P10134755119519657943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A006511.P10134755119519657943

/-! ## A006511.P3691465698339465562

`A066900(A002202(2*n+1-n))`
-/

namespace A006511.P3691465698339465562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066900 (A002202 (2 * n + 1 - n)).toNat

end

end A006511.P3691465698339465562

/-! ## A006511.P9254341998109823213

`A057635(comp[n-A057635(n+1)]+1)`
-/

namespace A006511.P9254341998109823213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057635 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A006511.P9254341998109823213

/-! ## A006511.P13899239581642066517

`A057635(A000010(A002181(n+1)))`
-/

namespace A006511.P13899239581642066517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (A000010 (A002181 (n + 1)).toNat).toNat

end

end A006511.P13899239581642066517

/-! ## A006511.P2983973990930400346

`A057635(A000010(A143423(n+1)))`
-/

namespace A006511.P2983973990930400346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (A000010 (A143423 (n + 1)).toNat).toNat

end

end A006511.P2983973990930400346

/-! ## A006511.P17724067500284181226

`A028476(A002181(n+1))`
-/

namespace A006511.P17724067500284181226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028476 (A002181 (n + 1)).toNat

end

end A006511.P17724067500284181226

/-! ## A006511.P9148981737878924534

`A032447(∑[A058277(n+1)])`
-/

namespace A006511.P9148981737878924534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032447 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006511.P9148981737878924534

/-! ## A006511.P17061779561348134583

`A032447(∑[A014197(A002202(n+1))])`
-/

namespace A006511.P17061779561348134583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A002202 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032447 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006511.P17061779561348134583

/-! ## A006511.P17546849919352347539

`A028476(A143423(n+1))`
-/

namespace A006511.P17546849919352347539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028476 (A143423 (n + 1)).toNat

end

end A006511.P17546849919352347539

/-! ## A006511.P16370764067950389688

`filter[A057635(n+1), A381735(#)]`
-/

namespace A006511.P16370764067950389688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381735 (f1 j).toNat = 1) n)

end

end A006511.P16370764067950389688

/-! ## A006511.P6676776707274571468

`filter[A057635(n+1), A043545(#)]`
-/

namespace A006511.P6676776707274571468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A006511.P6676776707274571468

/-!
# A006512: Greater of twin primes.

The programs for A006512, the canonical program `A006512.P8157243218962949380` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006512 has offset 1).

The definition of A006512 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A006512.P8157243218962949380

`2+A001359(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A006512

/-- `2+A001359(n+1)` -/
def P8157243218962949380.Spec : Prop :=
  ∀ n, P8157243218962949380.a n = A006512 (n + 1)

theorem P8157243218962949380.correct : P8157243218962949380.Spec := by
  intro n
  simp only [A006512, Nat.add_sub_cancel]

end A006512

/-! ## A006512.P4397310133213586755

`sqrt(A108604(n+1))`
-/

namespace A006512.P4397310133213586755
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A108604 (n + 1) : ℝ)

end

end A006512.P4397310133213586755

namespace A006512

/-- `sqrt(A108604(n+1))` -/
def P4397310133213586755.Spec : Prop :=
  ∀ n, P4397310133213586755.a n = (A006512 (n + 1) : ℝ)

end A006512

/-! ## A006512.P14024116533415596104

`1+A014574(n+1)`
-/

namespace A006512.P14024116533415596104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A014574 (n + 1)

end

end A006512.P14024116533415596104

namespace A006512

/-- `1+A014574(n+1)` -/
def P14024116533415596104.Spec : Prop :=
  ∀ n, P14024116533415596104.a n = A006512 (n + 1)

end A006512

/-! ## A006512.P543438744542995013

`A144834(n+1)+3`
-/

namespace A006512.P543438744542995013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + 3

end

end A006512.P543438744542995013

namespace A006512

/-- `A144834(n+1)+3` -/
def P543438744542995013.Spec : Prop :=
  ∀ n, P543438744542995013.a n = A006512 (n + 1)

end A006512

/-! ## A006512.P1574008006257029732

`A176810(n+1)/2`
-/

namespace A006512.P1574008006257029732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176810 (n + 1) : ℚ) / 2

end

end A006512.P1574008006257029732

namespace A006512

/-- `A176810(n+1)/2` -/
def P1574008006257029732.Spec : Prop :=
  ∀ n, P1574008006257029732.a n = (A006512 (n + 1) : ℚ)

end A006512

/-! ## A006512.P15261007647192227355

`ceil(sqrt(A135286(n+1)))`
-/

namespace A006512.P15261007647192227355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A135286 (n + 1) : ℝ)⌉

end

end A006512.P15261007647192227355

namespace A006512

/-- `ceil(sqrt(A135286(n+1)))` -/
def P15261007647192227355.Spec : Prop :=
  ∀ n, P15261007647192227355.a n = A006512 (n + 1)

end A006512

/-! ## A006512.P528306447250634975

`sqrt(A075369(n+1))+1`
-/

namespace A006512.P528306447250634975
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075369 (n + 1) : ℝ) + 1

end

end A006512.P528306447250634975

namespace A006512

/-- `sqrt(A075369(n+1))+1` -/
def P528306447250634975.Spec : Prop :=
  ∀ n, P528306447250634975.a n = (A006512 (n + 1) : ℝ)

end A006512

/-! ## A006512.P4069333636855274901

`2*A040040(n+1)+1`
-/

namespace A006512.P4069333636855274901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 1) + 1

end

end A006512.P4069333636855274901

namespace A006512

/-- `2*A040040(n+1)+1` -/
def P4069333636855274901.Spec : Prop :=
  ∀ n, P4069333636855274901.a n = A006512 (n + 1)

end A006512

/-! ## A006512.P1473558019526130608

`A054735(n+1)/2+1`
-/

namespace A006512.P1473558019526130608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 1) : ℚ) / 2 + 1

end

end A006512.P1473558019526130608

namespace A006512

/-- `A054735(n+1)/2+1` -/
def P1473558019526130608.Spec : Prop :=
  ∀ n, P1473558019526130608.a n = (A006512 (n + 1) : ℚ)

end A006512

/-! ## A006512.P17162883106881384836

`A108605(n+1)/2+2`
-/

namespace A006512.P17162883106881384836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108605 (n + 1) : ℚ) / 2 + 2

end

end A006512.P17162883106881384836

namespace A006512

/-- `A108605(n+1)/2+2` -/
def P17162883106881384836.Spec : Prop :=
  ∀ n, P17162883106881384836.a n = (A006512 (n + 1) : ℚ)

end A006512

/-! ## A006512.P2739467141874996958

`A053319(n)+a(n-1)` with `a(0)=5`
-/

namespace A006512.P2739467141874996958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A053319 n + a (n - 1)

end

end A006512.P2739467141874996958

namespace A006512

/-- `A053319(n)+a(n-1)` -/
def P2739467141874996958.Spec : Prop :=
  ∀ n, P2739467141874996958.a n = A006512 (n + 1)

end A006512

/-! ## A006512.P1408060648720470865

`A135284(n+1)+A053319(n+1)`
-/

namespace A006512.P1408060648720470865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135284 (n + 1) + A053319 (n + 1)

end

end A006512.P1408060648720470865

namespace A006512

/-- `A135284(n+1)+A053319(n+1)` -/
def P1408060648720470865.Spec : Prop :=
  ∀ n, P1408060648720470865.a n = A006512 (n + 1)

end A006512

/-! ## A006512.P8450006257290796543

`A126251(n+1)-A037074(n+1)`
-/

namespace A006512.P8450006257290796543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126251 (n + 1) - A037074 (n + 1)

end

end A006512.P8450006257290796543

namespace A006512

/-- `A126251(n+1)-A037074(n+1)` -/
def P8450006257290796543.Spec : Prop :=
  ∀ n, P8450006257290796543.a n = A006512 (n + 1)

end A006512

/-! ## A006512.P4831483907888827647

`A088176(n+1)-A084291(n+1)`
-/

namespace A006512.P4831483907888827647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1) - A084291 (n + 1)

end

end A006512.P4831483907888827647

namespace A006512

/-- `A088176(n+1)-A084291(n+1)` -/
def P4831483907888827647.Spec : Prop :=
  ∀ n, P4831483907888827647.a n = A006512 (n + 1)

end A006512

/-! ## A006512.P17616307815465067185

`A172057(n+1)-A053319(n+1)`
-/

namespace A006512.P17616307815465067185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1) - A053319 (n + 1)

end

end A006512.P17616307815465067185

namespace A006512

/-- `A172057(n+1)-A053319(n+1)` -/
def P17616307815465067185.Spec : Prop :=
  ∀ n, P17616307815465067185.a n = A006512 (n + 1)

end A006512

/-! ## A006512.P2230379791639218681

`A164274(n+1)-A167277(n+1)`
-/

namespace A006512.P2230379791639218681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164274 (n + 1) - A167277 (n + 1)

end

end A006512.P2230379791639218681

namespace A006512

/-- `A164274(n+1)-A167277(n+1)` -/
def P2230379791639218681.Spec : Prop :=
  ∀ n, P2230379791639218681.a n = A006512 (n + 1)

end A006512

/-! ## A006512.P6695943058338723295

`A108604(n+1)%A082669(n+1)`
-/

namespace A006512.P6695943058338723295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108604 (n + 1)) (A082669 (n + 1))

end

end A006512.P6695943058338723295

namespace A006512

/-- `A108604(n+1)%A082669(n+1)` -/
def P6695943058338723295.Spec : Prop :=
  ∀ n, P6695943058338723295.a n = A006512 (n + 1)

end A006512

/-! ## A006512.P6329322235520181308

`A095958(n+1)%A108605(n+1)`
-/

namespace A006512.P6329322235520181308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095958 (n + 1)) (A108605 (n + 1))

end

end A006512.P6329322235520181308

namespace A006512

/-- `A095958(n+1)%A108605(n+1)` -/
def P6329322235520181308.Spec : Prop :=
  ∀ n, P6329322235520181308.a n = A006512 (n + 1)

end A006512

/-! ## A006512.P12682601903864405174

`A037074(n+1)%A176810(n+1)`
-/

namespace A006512.P12682601903864405174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037074 (n + 1)) (A176810 (n + 1))

end

end A006512.P12682601903864405174

namespace A006512

/-- `A037074(n+1)%A176810(n+1)` -/
def P12682601903864405174.Spec : Prop :=
  ∀ n, P12682601903864405174.a n = A006512 (n + 1)

end A006512

/-! ## A006512.P8965646826660501599

`A080699(n+1)%A176810(n+1)`
-/

namespace A006512.P8965646826660501599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080699 (n + 1)) (A176810 (n + 1))

end

end A006512.P8965646826660501599

namespace A006512

/-- `A080699(n+1)%A176810(n+1)` -/
def P8965646826660501599.Spec : Prop :=
  ∀ n, P8965646826660501599.a n = A006512 (n + 1)

end A006512

/-!
# A006513: Limit of the image of n after 2k iterates of `(3x+1)/2' map as k grows.

The programs for A006513, there is no canonical definition to state claims against.
-/

/-! ## A006513.P6589078799049388951

`A076182(n+1)+1`
-/

namespace A006513.P6589078799049388951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076182 (n + 1) + 1

end

end A006513.P6589078799049388951

/-! ## A006513.P5057782206314247099

`gcd(2, A064433(n+2))`
-/

namespace A006513.P5057782206314247099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A064433 (n + 2))

end

end A006513.P5057782206314247099

/-! ## A006513.P13289018509663002836

`A006666(n+1)%2+1`
-/

namespace A006513.P13289018509663002836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006666 (n + 1)) 2 + 1

end

end A006513.P13289018509663002836

/-! ## A006513.P16856223151876328812

`A000034(A006666(n+1))`
-/

namespace A006513.P16856223151876328812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A006666 (n + 1)).toNat

end

end A006513.P16856223151876328812

/-! ## A006513.P13591234537273829353

`A040001(A064433(n+2))`
-/

namespace A006513.P13591234537273829353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A064433 (n + 2)).toNat

end

end A006513.P13591234537273829353

/-! ## A006513.P14033280956099914349

`A014709(2*A006666(n+1))`
-/

namespace A006513.P14033280956099914349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (2 * A006666 (n + 1)).toNat

end

end A006513.P14033280956099914349

/-! ## A006513.P13584808763050970409

`A000079(and(1, -A006666(n+1)))`
-/

namespace A006513.P13584808763050970409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.land 1 (-A006666 (n + 1))).toNat

end

end A006513.P13584808763050970409

/-! ## A006513.P9121935082183790762

`A052542(and(1, -A006666(n+1)))`
-/

namespace A006513.P9121935082183790762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (Int.land 1 (-A006666 (n + 1))).toNat

end

end A006513.P9121935082183790762

/-! ## A006513.P15408145019254768139

`A000035(A006666(n+1)+2)+1`
-/

namespace A006513.P15408145019254768139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A006666 (n + 1) + 2).toNat + 1

end

end A006513.P15408145019254768139

/-! ## A006513.P15285595960832838415

`gcd(4, A020639(A006666(n+1)+1))`
-/

namespace A006513.P15285595960832838415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A020639 (A006666 (n + 1) + 1).toNat)

end

end A006513.P15285595960832838415

/-! ## A006513.P17077952518900813830

`A000108(1-(-1)^A006666(n+1))`
-/

namespace A006513.P17077952518900813830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway (1 - (-1 : ℚ) ^ (A006666 (n + 1) : ℤ))).toNat

end

end A006513.P17077952518900813830

/-! ## A006513.P17577144776474428293

`A007318(3-(-1)^A006666(n+1))`
-/

namespace A006513.P17577144776474428293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway (3 - (-1 : ℚ) ^ (A006666 (n + 1) : ℤ))).toNat

end

end A006513.P17577144776474428293

/-! ## A006513.P11792447206469449079

`A007318((-1)^A006666(n+1)+5)`
-/

namespace A006513.P11792447206469449079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A006666 (n + 1) : ℤ) + 5)).toNat

end

end A006513.P11792447206469449079

/-! ## A006513.P17502823011017064778

`A000005(and(1, -A006666(n+1))+1)`
-/

namespace A006513.P17502823011017064778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.land 1 (-A006666 (n + 1)) + 1).toNat

end

end A006513.P17502823011017064778

/-! ## A006513.P3845686967378852694

`A000041(and(1, -A006666(n+1))+1)`
-/

namespace A006513.P3845686967378852694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (-A006666 (n + 1)) + 1).toNat

end

end A006513.P3845686967378852694

/-! ## A006513.P2312540983648454085

`A000045(and(1, -A006666(n+1)))+1`
-/

namespace A006513.P2312540983648454085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 (-A006666 (n + 1))).toNat + 1

end

end A006513.P2312540983648454085

/-! ## A006513.P18208711086856159713

`A000108(and(1, -A006666(n+1))+1)`
-/

namespace A006513.P18208711086856159713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 1 (-A006666 (n + 1)) + 1).toNat

end

end A006513.P18208711086856159713

/-! ## A006513.P10208434324132725713

`A006530(and(1, -A006666(n+1))+1)`
-/

namespace A006513.P10208434324132725713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.land 1 (-A006666 (n + 1)) + 1).toNat

end

end A006513.P10208434324132725713

/-! ## A006513.P2483405876671360537

`A000034(A006667(n+1)+A006577(n+1))`
-/

namespace A006513.P2483405876671360537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A006667 (n + 1) + A006577 (n + 1)).toNat

end

end A006513.P2483405876671360537

/-! ## A006513.P4460451214227328978

`2-A371689(2*(n+1))`
-/

namespace A006513.P4460451214227328978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A371689 (2 * (n + 1))

end

end A006513.P4460451214227328978

/-!
# A006514: Primes p such that 2^p - 1 has at most 2 prime factors.

The programs for A006514, there is no canonical definition to state claims against.
-/

/-! ## A006514.P14525706357950711441

`p?[lt[A046800(n), 3]]`
-/

namespace A006514.P14525706357950711441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A006514.P14525706357950711441

/-! ## A006514.P4486350162349759722

`p?[(n+1)*5%A046801(n+1)]`
-/

namespace A006514.P4486350162349759722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod 5 (A046801 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006514.P4486350162349759722

/-! ## A006514.P13612011842421068314

`A000040(lt[A088863(n+1), 3]+1)`
-/

namespace A006514.P13612011842421068314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088863 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A006514.P13612011842421068314

/-! ## A006514.P8803613636276345787

`A008578(lt[A088863(n+1), 3]+2)`
-/

namespace A006514.P8803613636276345787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088863 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A006514.P8803613636276345787

/-! ## A006514.P6485622069102546606

`∪[A000043(n+1), A135978(n+1)]`
-/

namespace A006514.P6485622069102546606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006514.P6485622069102546606

/-! ## A006514.P2060921176265898556

`p?[(n+1)*A003056(A046051(n+1))]`
-/

namespace A006514.P2060921176265898556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003056 (A046051 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006514.P2060921176265898556

/-! ## A006514.P8206895899177021071

`p?[(n+1)*A000045(A086251(n+1))]`
-/

namespace A006514.P8206895899177021071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000045 (A086251 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006514.P8206895899177021071

/-! ## A006514.P5351766541240002560

`eq[A003415(n), A065033(A046800(n))]`
-/

namespace A006514.P5351766541240002560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A046800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006514.P5351766541240002560

/-! ## A006514.P18336356830610721550

`p?[A008620(A046800(n))*A114112(n+1)]`
-/

namespace A006514.P18336356830610721550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A046800 n).toNat * A114112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006514.P18336356830610721550

/-! ## A006514.P15913616900445453220

`p?[A283455(n+1)]`
-/

namespace A006514.P15913616900445453220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006514.P15913616900445453220

/-!
# A006515: Mersenne numbers with at most 2 prime factors.

The programs for A006515, there is no canonical definition to state claims against.
-/

/-! ## A006515.P2408315677877793541

`A000225(A006514(n+1))`
-/

namespace A006515.P2408315677877793541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A006514 (n + 1)).toNat

end

end A006515.P2408315677877793541

/-! ## A006515.P2338325718354786973

`A000079(p?[A283455(n+1)])-1`
-/

namespace A006515.P2338325718354786973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A006515.P2338325718354786973

/-! ## A006515.P6160530304494858141

`record[root(2^A000040(n+1)-1, A304382(n+1))]`
-/

namespace A006515.P6160530304494858141
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A000040 (n + 1) : ℤ) - 1 : ℝ) ^ (1 / (A304382 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006515.P6160530304494858141

/-! ## A006515.P6448400022375011502

`A001348(comp[10*(1-n)])`
-/

namespace A006515.P6448400022375011502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (1 - (n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A006515.P6448400022375011502

/-! ## A006515.P9390679025554180864

`or(A000225(A042966(n+1)), A319759(n))`
-/

namespace A006515.P9390679025554180864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 (A042966 (n + 1)).toNat) (A319759 n)

end

end A006515.P9390679025554180864

/-!
# A006516: a(n) = 2^(n-1)*(2^n - 1), n >= 0.

The programs for A006516, the canonical program `A006516.P15104213374026591686` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006516 has offset 0).

The definition of A006516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006516.P15104213374026591686

`(4^n-2^n)/2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006516

/-- `(4^n-2^n)/2` -/
def P15104213374026591686.Spec : Prop :=
  ∀ n, P15104213374026591686.a n = (A006516 n : ℚ)

end A006516

/-! ## A006516.P1973525722277720678

`A153006(2^n-1)`
-/

namespace A006516.P1973525722277720678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 (2 ^ n - 1)

end

end A006516.P1973525722277720678

namespace A006516

/-- `A153006(2^n-1)` -/
def P1973525722277720678.Spec : Prop :=
  ∀ n, P1973525722277720678.a n = A006516 n

end A006516

/-! ## A006516.P17887234303251241426

`A062955(2^n)`
-/

namespace A006516.P17887234303251241426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062955 (2 ^ n)

end

end A006516.P17887234303251241426

namespace A006516

/-- `A062955(2^n)` -/
def P17887234303251241426.Spec : Prop :=
  ∀ n, P17887234303251241426.a n = A006516 n

end A006516

/-! ## A006516.P5272652802389067037

`lcm(2^n-1, floor(2^(n-1)))`
-/

namespace A006516.P5272652802389067037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 ^ n : ℤ) - 1) ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A006516.P5272652802389067037

namespace A006516

/-- `lcm(2^n-1, floor(2^(n-1)))` -/
def P5272652802389067037.Spec : Prop :=
  ∀ n, (P5272652802389067037.a n : ℤ) = A006516 n

end A006516

/-! ## A006516.P4153314242716926289

`2^(n-1)+4*a(n-1)` with `a(0)=0`
-/

namespace A006516.P4153314242716926289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 4 * a (n - 1)

end

end A006516.P4153314242716926289

namespace A006516

/-- `2^(n-1)+4*a(n-1)` -/
def P4153314242716926289.Spec : Prop :=
  ∀ n, P4153314242716926289.a n = (A006516 n : ℚ)

end A006516

/-! ## A006516.P3713353715178492596

`or(2*a(n-1), 4^(n-1))` with `a(0)=0`
-/

namespace A006516.P3713353715178492596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (2 * a (n - 1)) (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A006516.P3713353715178492596

namespace A006516

/-- `or(2*a(n-1), 4^(n-1))` -/
def P3713353715178492596.Spec : Prop :=
  ∀ n, P3713353715178492596.a n = A006516 n

end A006516

/-! ## A006516.P10990269084304547868

`xor(2*a(n-1), 4^(n-1))` with `a(0)=0`
-/

namespace A006516.P10990269084304547868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (2 * a (n - 1)) (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A006516.P10990269084304547868

namespace A006516

/-- `xor(2*a(n-1), 4^(n-1))` -/
def P10990269084304547868.Spec : Prop :=
  ∀ n, P10990269084304547868.a n = A006516 n

end A006516

/-! ## A006516.P12936223423982544799

`a(n-1)+a(n-1)+4^(n-1)` with `a(0)=0`
-/

namespace A006516.P12936223423982544799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A006516.P12936223423982544799

namespace A006516

/-- `a(n-1)+a(n-1)+4^(n-1)` -/
def P12936223423982544799.Spec : Prop :=
  ∀ n, P12936223423982544799.a n = (A006516 n : ℚ)

end A006516

/-! ## A006516.P9336074589844740086

`2*(3*a(n-1)-4*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A006516.P9336074589844740086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (3 * a (n - 1) - 4 * a (n - 2))

end

end A006516.P9336074589844740086

namespace A006516

/-- `2*(3*a(n-1)-4*a(n-2))` -/
def P9336074589844740086.Spec : Prop :=
  ∀ n, P9336074589844740086.a n = A006516 n

end A006516

/-! ## A006516.P8222535165238895373

`Δ[A006095(n)]`
-/

namespace A006516.P8222535165238895373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006516.P8222535165238895373

namespace A006516

/-- `Δ[A006095(n)]` -/
def P8222535165238895373.Spec : Prop :=
  ∀ n, P8222535165238895373.a n = A006516 n

end A006516

/-! ## A006516.P9372872204864949998

`A134169(n)-1`
-/

namespace A006516.P9372872204864949998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134169 n - 1

end

end A006516.P9372872204864949998

namespace A006516

/-- `A134169(n)-1` -/
def P9372872204864949998.Spec : Prop :=
  ∀ n, P9372872204864949998.a n = A006516 n

end A006516

/-! ## A006516.P14227033634672186648

`A007179(2*n)`
-/

namespace A006516.P14227033634672186648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (2 * n)

end

end A006516.P14227033634672186648

namespace A006516

/-- `A007179(2*n)` -/
def P14227033634672186648.Spec : Prop :=
  ∀ n, P14227033634672186648.a n = A006516 n

end A006516

/-! ## A006516.P16304873763591766202

`A137173(2*n)`
-/

namespace A006516.P16304873763591766202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137173 (2 * n)

end

end A006516.P16304873763591766202

namespace A006516

/-- `A137173(2*n)` -/
def P16304873763591766202.Spec : Prop :=
  ∀ n, P16304873763591766202.a n = A006516 n

end A006516

/-! ## A006516.P14358586855460341571

`A113979(Δ[n²])`
-/

namespace A006516.P14358586855460341571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113979 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A006516.P14358586855460341571

namespace A006516

/-- `A113979(Δ[n²])` -/
def P14358586855460341571.Spec : Prop :=
  ∀ n, P14358586855460341571.a n = A006516 n

end A006516

/-! ## A006516.P18180220222367917054

`floor(A020515(n)/2)`
-/

namespace A006516.P18180220222367917054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020515 n : ℚ) / 2⌋

end

end A006516.P18180220222367917054

namespace A006516

/-- `floor(A020515(n)/2)` -/
def P18180220222367917054.Spec : Prop :=
  ∀ n, P18180220222367917054.a n = A006516 n

end A006516

/-! ## A006516.P5755959740545237671

`ceil(A156589(n)/2)`
-/

namespace A006516.P5755959740545237671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A156589 n : ℚ) / 2⌉

end

end A006516.P5755959740545237671

namespace A006516

/-- `ceil(A156589(n)/2)` -/
def P5755959740545237671.Spec : Prop :=
  ∀ n, P5755959740545237671.a n = A006516 n

end A006516

/-! ## A006516.P2138439166474724665

`A170939(n)/2-1`
-/

namespace A006516.P2138439166474724665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170939 n : ℚ) / 2 - 1

end

end A006516.P2138439166474724665

namespace A006516

/-- `A170939(n)/2-1` -/
def P2138439166474724665.Spec : Prop :=
  ∀ n, P2138439166474724665.a n = (A006516 n : ℚ)

end A006516

/-! ## A006516.P15167517468871921699

`A007582(n)-2^n`
-/

namespace A006516.P15167517468871921699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n - (2 ^ n : ℤ)

end

end A006516.P15167517468871921699

namespace A006516

/-- `A007582(n)-2^n` -/
def P15167517468871921699.Spec : Prop :=
  ∀ n, P15167517468871921699.a n = A006516 n

end A006516

/-! ## A006516.P11995612996409734935

`A094375(n)-3^n`
-/

namespace A006516.P11995612996409734935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094375 n - (3 ^ n : ℤ)

end

end A006516.P11995612996409734935

namespace A006516

/-- `A094375(n)-3^n` -/
def P11995612996409734935.Spec : Prop :=
  ∀ n, P11995612996409734935.a n = A006516 n

end A006516

/-!
# A006517: Numbers k such that k divides 2^k + 2.

The programs for A006517, there is no canonical definition to state claims against.
-/

/-! ## A006517.P5776105290929155263

`∩[A015897(n+1), A084265(n)]`
-/

namespace A006517.P5776105290929155263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006517.P5776105290929155263

/-! ## A006517.P13407674028725366143

`∩[A015897(n+1), ∑[A019425(n)]]`
-/

namespace A006517.P13407674028725366143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015897 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006517.P13407674028725366143

/-!
# A006519: Highest power of 2 dividing n.

The programs for A006519, the canonical program `A006519.P10435570611646570274` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006519 has offset 1).

The definition of A006519 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006519.P10435570611646570274

`A171977(n+1)/2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A006519

/-- `A171977(n+1)/2` -/
def P10435570611646570274.Spec : Prop :=
  ∀ n, P10435570611646570274.a n = (A006519 (n + 1) : ℚ)

end A006519

/-! ## A006519.P17315310969341040853

`2^A007814(n+1)`
-/

namespace A006519.P17315310969341040853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ)

end

end A006519.P17315310969341040853

namespace A006519

/-- `2^A007814(n+1)` -/
def P17315310969341040853.Spec : Prop :=
  ∀ n, P17315310969341040853.a n = (A006519 (n + 1) : ℚ)

end A006519

/-! ## A006519.P11561294312909392603

`2^(A001511(n+1)-1)`
-/

namespace A006519.P11561294312909392603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001511 (n + 1) - 1 : ℤ)

end

end A006519.P11561294312909392603

namespace A006519

/-- `2^(A001511(n+1)-1)` -/
def P11561294312909392603.Spec : Prop :=
  ∀ n, P11561294312909392603.a n = (A006519 (n + 1) : ℚ)

end A006519

/-! ## A006519.P14004589143267218414

`A011782(A001511(n+1))`
-/

namespace A006519.P14004589143267218414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A001511 (n + 1)).toNat

end

end A006519.P14004589143267218414

namespace A006519

/-- `A011782(A001511(n+1))` -/
def P14004589143267218414.Spec : Prop :=
  ∀ n, P14004589143267218414.a n = A006519 (n + 1)

end A006519

/-! ## A006519.P17909828695691393797

`2^val(n+1, 2)`
-/

namespace A006519.P17909828695691393797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

end

end A006519.P17909828695691393797

namespace A006519

/-- `2^val(n+1, 2)` -/
def P17909828695691393797.Spec : Prop :=
  ∀ n, (P17909828695691393797.a n : ℤ) = A006519 (n + 1)

end A006519

/-! ## A006519.P16022004621966357830

`or(n, n+1)-n`
-/

namespace A006519.P16022004621966357830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (n : ℤ)

end

end A006519.P16022004621966357830

namespace A006519

/-- `or(n, n+1)-n` -/
def P16022004621966357830.Spec : Prop :=
  ∀ n, P16022004621966357830.a n = A006519 (n + 1)

end A006519

/-! ## A006519.P12743235421528143570

`xor(n, or(n, n+1))`
-/

namespace A006519.P12743235421528143570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.lor n (n + 1))

end

end A006519.P12743235421528143570

namespace A006519

/-- `xor(n, or(n, n+1))` -/
def P12743235421528143570.Spec : Prop :=
  ∀ n, (P12743235421528143570.a n : ℤ) = A006519 (n + 1)

end A006519

/-! ## A006519.P6875309980122339146

`and(n+1, xor(n, -1))`
-/

namespace A006519.P6875309980122339146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (Int.xor (n : ℤ) (-1))

end

end A006519.P6875309980122339146

namespace A006519

/-- `and(n+1, xor(n, -1))` -/
def P6875309980122339146.Spec : Prop :=
  ∀ n, P6875309980122339146.a n = A006519 (n + 1)

end A006519

/-! ## A006519.P2605763575925115840

`and(n+1, -(n+1))`
-/

namespace A006519.P2605763575925115840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A006519.P2605763575925115840

namespace A006519

/-- `and(n+1, -(n+1))` -/
def P2605763575925115840.Spec : Prop :=
  ∀ n, P2605763575925115840.a n = A006519 (n + 1)

end A006519

/-! ## A006519.P5927323203286495544

`ceil(xor(n, n+1)/2)`
-/

namespace A006519.P5927323203286495544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor n (n + 1) : ℚ) / 2⌉

end

end A006519.P5927323203286495544

namespace A006519

/-- `ceil(xor(n, n+1)/2)` -/
def P5927323203286495544.Spec : Prop :=
  ∀ n, P5927323203286495544.a n = A006519 (n + 1)

end A006519

/-! ## A006519.P6849854768299223726

`round(xor(n, n+1)/2)`
-/

namespace A006519.P6849854768299223726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2)

end

end A006519.P6849854768299223726

namespace A006519

/-- `round(xor(n, n+1)/2)` -/
def P6849854768299223726.Spec : Prop :=
  ∀ n, P6849854768299223726.a n = A006519 (n + 1)

end A006519

/-! ## A006519.P2993281834143153286

`ceil(cosh(log(xor(n, n+1))))`
-/

namespace A006519.P2993281834143153286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (Nat.xor n (n + 1) : ℝ))⌉

end

end A006519.P2993281834143153286

namespace A006519

/-- `ceil(cosh(log(xor(n, n+1))))` -/
def P2993281834143153286.Spec : Prop :=
  ∀ n, P2993281834143153286.a n = A006519 (n + 1)

end A006519

/-! ## A006519.P1593467417987258453

`round(cosh(log(xor(n, n+1))))`
-/

namespace A006519.P1593467417987258453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (Nat.xor n (n + 1) : ℝ)))

end

end A006519.P1593467417987258453

namespace A006519

/-- `round(cosh(log(xor(n, n+1))))` -/
def P1593467417987258453.Spec : Prop :=
  ∀ n, P1593467417987258453.a n = A006519 (n + 1)

end A006519

/-! ## A006519.P10481519597836783101

`(xor(n, n+1)+1)/2`
-/

namespace A006519.P10481519597836783101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) + 1 : ℚ) / 2

end

end A006519.P10481519597836783101

namespace A006519

/-- `(xor(n, n+1)+1)/2` -/
def P10481519597836783101.Spec : Prop :=
  ∀ n, P10481519597836783101.a n = (A006519 (n + 1) : ℚ)

end A006519

/-! ## A006519.P4519941040262709070

`gcd(n+1, (3-n)^10)`
-/

namespace A006519.P4519941040262709070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ((3 - (n : ℤ)) ^ 10)

end

end A006519.P4519941040262709070

namespace A006519

/-- `gcd(n+1, (3-n)^10)` -/
def P4519941040262709070.Spec : Prop :=
  ∀ n, (P4519941040262709070.a n : ℤ) = A006519 (n + 1)

end A006519

/-! ## A006519.P6718535890760425859

`1-and(n, n+1)+n`
-/

namespace A006519.P6718535890760425859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ)

end

end A006519.P6718535890760425859

namespace A006519

/-- `1-and(n, n+1)+n` -/
def P6718535890760425859.Spec : Prop :=
  ∀ n, P6718535890760425859.a n = A006519 (n + 1)

end A006519

/-! ## A006519.P13572984475141321806

`abs(or(n+1, -(n+1)))`
-/

namespace A006519.P13572984475141321806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))|

end

end A006519.P13572984475141321806

namespace A006519

/-- `abs(or(n+1, -(n+1)))` -/
def P13572984475141321806.Spec : Prop :=
  ∀ n, P13572984475141321806.a n = A006519 (n + 1)

end A006519

/-! ## A006519.P1285937566026238642

`-or(n+1, -(n+1))`
-/

namespace A006519.P1285937566026238642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A006519.P1285937566026238642

namespace A006519

/-- `-or(n+1, -(n+1))` -/
def P1285937566026238642.Spec : Prop :=
  ∀ n, P1285937566026238642.a n = A006519 (n + 1)

end A006519

/-! ## A006519.P11175338887910872011

`∑[1-Δ[and(n, n-1)]]`
-/

namespace A006519.P11175338887910872011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006519.P11175338887910872011

namespace A006519

/-- `∑[1-Δ[and(n, n-1)]]` -/
def P11175338887910872011.Spec : Prop :=
  ∀ n, P11175338887910872011.a n = A006519 (n + 1)

end A006519

/-! ## A006519.P5151709106819287812

`(n+1)%xor(n, -(n+2))`
-/

namespace A006519.P5151709106819287812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (Int.xor (n : ℤ) (-(n + 2 : ℤ)))

end

end A006519.P5151709106819287812

namespace A006519

/-- `(n+1)%xor(n, -(n+2))` -/
def P5151709106819287812.Spec : Prop :=
  ∀ n, P5151709106819287812.a n = A006519 (n + 1)

end A006519

/-!
# A006520: Partial sums of A006519.

The programs for A006520, the canonical program `A006520.P10234173439644801313` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006520 has offset 1).

The definition of A006520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006520.P2146833439442421095

`∑[2^val(n+1, 2)]`
-/

namespace A006520.P2146833439442421095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006520.P2146833439442421095

namespace A006520

/-- `∑[2^val(n+1, 2)]` -/
def P2146833439442421095.Spec : Prop :=
  ∀ n, (P2146833439442421095.a n : ℤ) = A006520 (n + 1)

end A006520

/-! ## A006520.P10234173439644801313

`∑[or(n, n+1)-n]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006520

/-- `∑[or(n, n+1)-n]` -/
def P10234173439644801313.Spec : Prop :=
  ∀ n, P10234173439644801313.a n = A006520 (n + 1)

theorem P10234173439644801313.correct : P10234173439644801313.Spec := by
  intro n
  simp only [A006520, Nat.add_sub_cancel]

end A006520

/-! ## A006520.P8160154712452029569

`∑[xor(n, or(n, n+1))]`
-/

namespace A006520.P8160154712452029569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.lor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006520.P8160154712452029569

namespace A006520

/-- `∑[xor(n, or(n, n+1))]` -/
def P8160154712452029569.Spec : Prop :=
  ∀ n, (P8160154712452029569.a n : ℤ) = A006520 (n + 1)

end A006520

/-! ## A006520.P1441577910428418552

`∑[and(n+1, xor(n, -1))]`
-/

namespace A006520.P1441577910428418552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (Int.xor (n : ℤ) (-1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006520.P1441577910428418552

namespace A006520

/-- `∑[and(n+1, xor(n, -1))]` -/
def P1441577910428418552.Spec : Prop :=
  ∀ n, P1441577910428418552.a n = A006520 (n + 1)

end A006520

/-! ## A006520.P7274579130039432249

`∑[and(n+1, -(n+1))]`
-/

namespace A006520.P7274579130039432249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006520.P7274579130039432249

namespace A006520

/-- `∑[and(n+1, -(n+1))]` -/
def P7274579130039432249.Spec : Prop :=
  ∀ n, P7274579130039432249.a n = A006520 (n + 1)

end A006520

/-! ## A006520.P16206073300608897000

`∑[ceil(xor(n, n+1)/2)]`
-/

namespace A006520.P16206073300608897000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor n (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006520.P16206073300608897000

namespace A006520

/-- `∑[ceil(xor(n, n+1)/2)]` -/
def P16206073300608897000.Spec : Prop :=
  ∀ n, P16206073300608897000.a n = A006520 (n + 1)

end A006520

/-! ## A006520.P9493822121592577745

`∑[round(xor(n, n+1)/2)]`
-/

namespace A006520.P9493822121592577745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006520.P9493822121592577745

namespace A006520

/-- `∑[round(xor(n, n+1)/2)]` -/
def P9493822121592577745.Spec : Prop :=
  ∀ n, P9493822121592577745.a n = A006520 (n + 1)

end A006520

/-! ## A006520.P2341576517632602446

`∑[(xor(n, n+1)+1)/2]`
-/

namespace A006520.P2341576517632602446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006520.P2341576517632602446

namespace A006520

/-- `∑[(xor(n, n+1)+1)/2]` -/
def P2341576517632602446.Spec : Prop :=
  ∀ n, P2341576517632602446.a n = (A006520 (n + 1) : ℚ)

end A006520

/-! ## A006520.P4384423594939344721

`∑[gcd(n+1, (3-n)^10)]`
-/

namespace A006520.P4384423594939344721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ((3 - (n : ℤ)) ^ 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006520.P4384423594939344721

namespace A006520

/-- `∑[gcd(n+1, (3-n)^10)]` -/
def P4384423594939344721.Spec : Prop :=
  ∀ n, (P4384423594939344721.a n : ℤ) = A006520 (n + 1)

end A006520

/-! ## A006520.P18378312095636259458

`∑[1-and(n, n+1)+n]`
-/

namespace A006520.P18378312095636259458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006520.P18378312095636259458

namespace A006520

/-- `∑[1-and(n, n+1)+n]` -/
def P18378312095636259458.Spec : Prop :=
  ∀ n, P18378312095636259458.a n = A006520 (n + 1)

end A006520

/-! ## A006520.P1082431332147480222

`∑[abs(or(n+1, -(n+1)))]`
-/

namespace A006520.P1082431332147480222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006520.P1082431332147480222

namespace A006520

/-- `∑[abs(or(n+1, -(n+1)))]` -/
def P1082431332147480222.Spec : Prop :=
  ∀ n, P1082431332147480222.a n = A006520 (n + 1)

end A006520

/-! ## A006520.P13489832525482737384

`∑[-or(n+1, -(n+1))]`
-/

namespace A006520.P13489832525482737384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006520.P13489832525482737384

namespace A006520

/-- `∑[-or(n+1, -(n+1))]` -/
def P13489832525482737384.Spec : Prop :=
  ∀ n, P13489832525482737384.a n = A006520 (n + 1)

end A006520

/-! ## A006520.P13361798728851987362

`∑[(n+1)%xor(n, -(n+2))]`
-/

namespace A006520.P13361798728851987362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (Int.xor (n : ℤ) (-(n + 2 : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006520.P13361798728851987362

namespace A006520

/-- `∑[(n+1)%xor(n, -(n+2))]` -/
def P13361798728851987362.Spec : Prop :=
  ∀ n, P13361798728851987362.a n = A006520 (n + 1)

end A006520

/-! ## A006520.P6641881287013312762

`∑[or(n, n+1)%(n+1)+1]`
-/

namespace A006520.P6641881287013312762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) % (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006520.P6641881287013312762

namespace A006520

/-- `∑[or(n, n+1)%(n+1)+1]` -/
def P6641881287013312762.Spec : Prop :=
  ∀ n, (P6641881287013312762.a n : ℤ) = A006520 (n + 1)

end A006520

/-! ## A006520.P16732257139038992599

`a(n-1)+2^val(n+1, 2)` with `a(0)=1`
-/

namespace A006520.P16732257139038992599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 ^ SequenceMachineLib.valuation (n + 1) 2

end

end A006520.P16732257139038992599

namespace A006520

/-- `a(n-1)+2^val(n+1, 2)` -/
def P16732257139038992599.Spec : Prop :=
  ∀ n, (P16732257139038992599.a n : ℤ) = A006520 (n + 1)

end A006520

/-! ## A006520.P4526448179594819198

`a(n-1)+or(n, n+1)-n` with `a(0)=1`
-/

namespace A006520.P4526448179594819198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((Nat.lor n (n + 1) : ℤ) - (n : ℤ))

end

end A006520.P4526448179594819198

namespace A006520

/-- `a(n-1)+or(n, n+1)-n` -/
def P4526448179594819198.Spec : Prop :=
  ∀ n, P4526448179594819198.a n = A006520 (n + 1)

end A006520

/-! ## A006520.P8185098695010224766

`a(n-1)+and(n+1, -(n+1))` with `a(0)=1`
-/

namespace A006520.P8185098695010224766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A006520.P8185098695010224766

namespace A006520

/-- `a(n-1)+and(n+1, -(n+1))` -/
def P8185098695010224766.Spec : Prop :=
  ∀ n, P8185098695010224766.a n = A006520 (n + 1)

end A006520

/-! ## A006520.P16932096844932761454

`a(n-1)+n+1-and(n, n+1)` with `a(0)=1`
-/

namespace A006520.P16932096844932761454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ))

end

end A006520.P16932096844932761454

namespace A006520

/-- `a(n-1)+n+1-and(n, n+1)` -/
def P16932096844932761454.Spec : Prop :=
  ∀ n, P16932096844932761454.a n = A006520 (n + 1)

end A006520

/-! ## A006520.P5251886480353086049

`∑[A006519(n+1)]`
-/

namespace A006520.P5251886480353086049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006520.P5251886480353086049

namespace A006520

/-- `∑[A006519(n+1)]` -/
def P5251886480353086049.Spec : Prop :=
  ∀ n, P5251886480353086049.a n = A006520 (n + 1)

end A006520

/-! ## A006520.P16750442966487031724

`∑[A135481(n)+1]`
-/

namespace A006520.P16750442966487031724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006520.P16750442966487031724

namespace A006520

/-- `∑[A135481(n)+1]` -/
def P16750442966487031724.Spec : Prop :=
  ∀ n, P16750442966487031724.a n = A006520 (n + 1)

end A006520

/-!
# A006521: Numbers k such that k divides 2^k + 1.

The programs for A006521, there is no canonical definition to state claims against.
-/

/-! ## A006521.P15454220675771827391

`record[and(1, A045577(n+1))*A045577(n+1)]`
-/

namespace A006521.P15454220675771827391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A045577 (n + 1)) * A045577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006521.P15454220675771827391

/-! ## A006521.P17273538177216598933

`∩[A045577(n+1), A093546(n+1)]`
-/

namespace A006521.P17273538177216598933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006521.P17273538177216598933

/-! ## A006521.P1952607269045347420

`∩[A015955(n+1), A045577(n+1)]`
-/

namespace A006521.P1952607269045347420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006521.P1952607269045347420

/-! ## A006521.P4152226360351128553

`∩[A014945(n+1), A045599(n+1)]`
-/

namespace A006521.P4152226360351128553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006521.P4152226360351128553

/-! ## A006521.P893317396323306342

`∩[A045599(n+1), A125227(n+3)]`
-/

namespace A006521.P893317396323306342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125227 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006521.P893317396323306342

/-! ## A006521.P5524864699844660060

`∩[A014945(n+1), A045577(n+1)]`
-/

namespace A006521.P5524864699844660060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006521.P5524864699844660060

/-! ## A006521.P8868328991134110314

`∩[A014945(n+1), A093546(n+1)]`
-/

namespace A006521.P8868328991134110314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006521.P8868328991134110314

/-! ## A006521.P5267837618063289190

`∩[A045577(n+1), A045599(n+1)]`
-/

namespace A006521.P5267837618063289190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006521.P5267837618063289190

/-! ## A006521.P16831801183498067756

`∪[A016057(n+1), A289257(n+1)]`
-/

namespace A006521.P16831801183498067756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006521.P16831801183498067756

/-! ## A006521.P17800274577942414121

`∩[A045577(n+1), A125227(n+3)]`
-/

namespace A006521.P17800274577942414121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125227 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006521.P17800274577942414121

/-!
# A006522: 4-dimensional analog of centered polygonal numbers. Also number of regions created by sides and diagonals of a convex n-gon in general position.

The programs for A006522, the canonical program `A006522.P7169663687814708237` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006522 has offset 0).

The definition of A006522 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006522.P9742031977423833852

`1/24*(n-1)*(n-2)*(n²-3*n+12)`
-/

namespace A006522.P9742031977423833852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * (((n : ℤ) - 1) * (((n : ℤ) - 2) * ((n ^ 2 : ℤ) - (3 * n : ℤ) + 12)) : ℚ)

end

end A006522.P9742031977423833852

namespace A006522

/-- `1/24*(n-1)*(n-2)*(n²-3*n+12)` -/
def P9742031977423833852.Spec : Prop :=
  ∀ n, P9742031977423833852.a n = (A006522 n : ℚ)

end A006522

/-! ## A006522.P7169663687814708237

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006522

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P7169663687814708237.Spec : Prop :=
  ∀ n, P7169663687814708237.a n = A006522 n

theorem P7169663687814708237.correct : P7169663687814708237.Spec := by
  intro n
  simp only [A006522]

end A006522

/-! ## A006522.P16738935763140386312

`∑[n-2]+C(n, 4)+3`
-/

namespace A006522.P16738935763140386312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 4 + 3 : ℤ)

end

end A006522.P16738935763140386312

namespace A006522

/-- `∑[n-2]+C(n, 4)+3` -/
def P16738935763140386312.Spec : Prop :=
  ∀ n, P16738935763140386312.a n = A006522 n

end A006522

/-! ## A006522.P7971952135728862455

`∑[n-1]-(n-2-C(n, 4))`
-/

namespace A006522.P7971952135728862455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 2 - (Nat.choose n 4 : ℤ))

end

end A006522.P7971952135728862455

namespace A006522

/-- `∑[n-1]-(n-2-C(n, 4))` -/
def P7971952135728862455.Spec : Prop :=
  ∀ n, P7971952135728862455.a n = A006522 n

end A006522

/-! ## A006522.P15285974927708407283

`∑[∑[a(n-1)-3+n]]` with `a(0)=1, a(1)=-2, a(2)=1`
-/

namespace A006522.P15285974927708407283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1] fun n f2 =>
  f2 (n - 1) - 3 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006522.P15285974927708407283

namespace A006522

/-- `∑[∑[a(n-1)-3+n]]` -/
def P15285974927708407283.Spec : Prop :=
  ∀ n, P15285974927708407283.a n = A006522 n

end A006522

/-! ## A006522.P9209099412431488859

`∑[∑[a(n-1)-(3-n)]]` with `a(0)=1, a(1)=-2, a(2)=1`
-/

namespace A006522.P9209099412431488859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1] fun n f2 =>
  f2 (n - 1) - (3 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006522.P9209099412431488859

namespace A006522

/-- `∑[∑[a(n-1)-(3-n)]]` -/
def P9209099412431488859.Spec : Prop :=
  ∀ n, P9209099412431488859.a n = A006522 n

end A006522

/-! ## A006522.P18307937084877306934

`C(n-1, 3)+a(n-1)+n-2` with `a(0)=1`
-/

namespace A006522.P18307937084877306934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose ((n : ℤ) - 1).toNat 3 : ℤ) + (a (n - 1) + ((n : ℤ) - 2))

end

end A006522.P18307937084877306934

namespace A006522

/-- `C(n-1, 3)+a(n-1)+n-2` -/
def P18307937084877306934.Spec : Prop :=
  ∀ n, P18307937084877306934.a n = A006522 n

end A006522

/-! ## A006522.P13196182974343824324

`round(A059173(n)/2-n)`
-/

namespace A006522.P13196182974343824324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A059173 n : ℚ) / 2 - (n : ℚ))

end

end A006522.P13196182974343824324

namespace A006522

/-- `round(A059173(n)/2-n)` -/
def P13196182974343824324.Spec : Prop :=
  ∀ n, P13196182974343824324.a n = A006522 n

end A006522

/-! ## A006522.P12931433026657296393

`A058923(n)+n*(n-2)`
-/

namespace A006522.P12931433026657296393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058923 n + (n : ℤ) * ((n : ℤ) - 2)

end

end A006522.P12931433026657296393

namespace A006522

/-- `A058923(n)+n*(n-2)` -/
def P12931433026657296393.Spec : Prop :=
  ∀ n, P12931433026657296393.a n = A006522 n

end A006522

/-! ## A006522.P2380826574661857001

`A000332(n)+∑[n]+1-2*n`
-/

namespace A006522.P2380826574661857001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n + (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - (2 * n : ℤ))

end

end A006522.P2380826574661857001

namespace A006522

/-- `A000332(n)+∑[n]+1-2*n` -/
def P2380826574661857001.Spec : Prop :=
  ∀ n, P2380826574661857001.a n = A006522 n

end A006522

/-! ## A006522.P13582364198475314251

`A067998(n)+A058923(n)`
-/

namespace A006522.P13582364198475314251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 n + A058923 n

end

end A006522.P13582364198475314251

namespace A006522

/-- `A067998(n)+A058923(n)` -/
def P13582364198475314251.Spec : Prop :=
  ∀ n, P13582364198475314251.a n = A006522 n

end A006522

/-! ## A006522.P5006328518309901245

`A000127(A028310(n))-n`
-/

namespace A006522.P5006328518309901245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (A028310 n).toNat - (n : ℤ)

end

end A006522.P5006328518309901245

namespace A006522

/-- `A000127(A028310(n))-n` -/
def P5006328518309901245.Spec : Prop :=
  ∀ n, P5006328518309901245.a n = A006522 n

end A006522

/-! ## A006522.P2178754587864161412

`A119327(n)-A000566(n)`
-/

namespace A006522.P2178754587864161412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119327 n - A000566 n

end

end A006522.P2178754587864161412

namespace A006522

/-- `A119327(n)-A000566(n)` -/
def P2178754587864161412.Spec : Prop :=
  ∀ n, P2178754587864161412.a n = A006522 n

end A006522

/-! ## A006522.P3718412903243365723

`A101338(n)-A046127(n)`
-/

namespace A006522.P3718412903243365723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101338 n - A046127 n

end

end A006522.P3718412903243365723

namespace A006522

/-- `A101338(n)-A046127(n)` -/
def P3718412903243365723.Spec : Prop :=
  ∀ n, P3718412903243365723.a n = A006522 n

end A006522

/-! ## A006522.P11160113984143983643

`A152947(n+1)+A000332(n)-n`
-/

namespace A006522.P11160113984143983643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1) + (A000332 n - (n : ℤ))

end

end A006522.P11160113984143983643

namespace A006522

/-- `A152947(n+1)+A000332(n)-n` -/
def P11160113984143983643.Spec : Prop :=
  ∀ n, P11160113984143983643.a n = A006522 n

end A006522

/-! ## A006522.P16175525237654380083

`A000124(n)+A000332(n)-A005843(n)`
-/

namespace A006522.P16175525237654380083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + (A000332 n - A005843 n)

end

end A006522.P16175525237654380083

namespace A006522

/-- `A000124(n)+A000332(n)-A005843(n)` -/
def P16175525237654380083.Spec : Prop :=
  ∀ n, P16175525237654380083.a n = A006522 n

end A006522

/-! ## A006522.P14155029008223705795

`A000217(n+1)+A000332(n)-A008585(n)`
-/

namespace A006522.P14155029008223705795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000332 n - A008585 n)

end

end A006522.P14155029008223705795

namespace A006522

/-- `A000217(n+1)+A000332(n)-A008585(n)` -/
def P14155029008223705795.Spec : Prop :=
  ∀ n, P14155029008223705795.a n = A006522 n

end A006522

/-! ## A006522.P14756058122580572585

`Δ[A050407(n)]+C(n, 4)`
-/

namespace A006522.P14756058122580572585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose n 4 : ℤ)

end

end A006522.P14756058122580572585

namespace A006522

/-- `Δ[A050407(n)]+C(n, 4)` -/
def P14756058122580572585.Spec : Prop :=
  ∀ n, P14756058122580572585.a n = A006522 n

end A006522

/-! ## A006522.P7783347398550760195

`∑{d}[n, A346761(#)]+Δ[A050407(n)]`
-/

namespace A006522.P7783347398550760195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346761 d + (f2 (n + 1) - f2 n)

end

end A006522.P7783347398550760195

namespace A006522

/-- `∑{d}[n, A346761(#)]+Δ[A050407(n)]` -/
def P7783347398550760195.Spec : Prop :=
  ∀ n, P7783347398550760195.a n = A006522 n

end A006522

/-! ## A006522.P12962504833988943693

`A000079(n)-(Δ[A084637(n)]+n)`
-/

namespace A006522.P12962504833988943693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f1 (n + 1) - f1 n + (n : ℤ))

end

end A006522.P12962504833988943693

namespace A006522

/-- `A000079(n)-(Δ[A084637(n)]+n)` -/
def P12962504833988943693.Spec : Prop :=
  ∀ n, P12962504833988943693.a n = A006522 n

end A006522

/-!
# A006523: Sum ((-1)^(i+1)*binomial(n,i)*2^i*(2*n-1)!,i=1..n) for n odd.

The programs for A006523, there is no canonical definition to state claims against.
-/

/-! ## A006523.P7983679390927385528

`2*(4*n+1)!`
-/

namespace A006523.P7983679390927385528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial (4 * n + 1)

end

end A006523.P7983679390927385528

/-! ## A006523.P3911371389471279173

`A098558(4*n+1)`
-/

namespace A006523.P3911371389471279173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098558 (4 * n + 1)

end

end A006523.P3911371389471279173

/-! ## A006523.P18024302585258437107

`2*A009445(2*n)`
-/

namespace A006523.P18024302585258437107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009445 (2 * n)

end

end A006523.P18024302585258437107

/-! ## A006523.P15963018396972450547

`record[2*A266072(n)!]`
-/

namespace A006523.P15963018396972450547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial (A266072 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006523.P15963018396972450547

/-! ## A006523.P3625533273528205099

`A052898(4*n+1)-1`
-/

namespace A006523.P3625533273528205099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052898 (4 * n + 1) - 1

end

end A006523.P3625533273528205099

/-!
# A006525: Denominators of greedy Egyptian fraction for e - 2.

The programs for A006525, there is no canonical definition to state claims against.
-/

/-! ## A006525.P12717576834774553469

`A073422(A034448(n+1))+A035444(n)`
-/

namespace A006525.P12717576834774553469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073422 (A034448 (n + 1)).toNat + A035444 n

end

end A006525.P12717576834774553469

/-!
# A006527: a(n) = (n^3 + 2*n)/3.

The programs for A006527, the canonical program `A006527.P9716304181650537426` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006527 has offset 0).

The definition of A006527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006527.P6724837535726293547

`n*(n²+2)/3`
-/

namespace A006527.P6724837535726293547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n ^ 2 + 2 : ℚ) / 3)

end

end A006527.P6724837535726293547

namespace A006527

/-- `n*(n²+2)/3` -/
def P6724837535726293547.Spec : Prop :=
  ∀ n, P6724837535726293547.a n = (A006527 n : ℚ)

end A006527

/-! ## A006527.P9716304181650537426

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=11`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006527

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9716304181650537426.Spec : Prop :=
  ∀ n, P9716304181650537426.a n = A006527 n

theorem P9716304181650537426.correct : P9716304181650537426.Spec := by
  intro n
  simp only [A006527]

end A006527

/-! ## A006527.P18433021413305238612

`2*A000292(n)-A000290(n)`
-/

namespace A006527.P18433021413305238612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000292 n - A000290 n

end

end A006527.P18433021413305238612

namespace A006527

/-- `2*A000292(n)-A000290(n)` -/
def P18433021413305238612.Spec : Prop :=
  ∀ n, P18433021413305238612.a n = A006527 n

end A006527

/-! ## A006527.P5018101697953866520

`A002264(A000578(n)+A005843(n))`
-/

namespace A006527.P5018101697953866520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000578 n + A005843 n).toNat

end

end A006527.P5018101697953866520

namespace A006527

/-- `A002264(A000578(n)+A005843(n))` -/
def P5018101697953866520.Spec : Prop :=
  ∀ n, P5018101697953866520.a n = A006527 n

end A006527

/-! ## A006527.P7736252671188849451

`∑[n²]-C(n, 2)`
-/

namespace A006527.P7736252671188849451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose n 2 : ℤ)

end

end A006527.P7736252671188849451

namespace A006527

/-- `∑[n²]-C(n, 2)` -/
def P7736252671188849451.Spec : Prop :=
  ∀ n, P7736252671188849451.a n = A006527 n

end A006527

/-! ## A006527.P10057192633752531392

`n+2*∑[C(n, 2)]`
-/

namespace A006527.P10057192633752531392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006527.P10057192633752531392

namespace A006527

/-- `n+2*∑[C(n, 2)]` -/
def P10057192633752531392.Spec : Prop :=
  ∀ n, (P10057192633752531392.a n : ℤ) = A006527 n

end A006527

/-! ## A006527.P12107633353247428789

`∑[∑[comp[lcm(2, n)+3]]]`
-/

namespace A006527.P12107633353247428789
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006527.P12107633353247428789

namespace A006527

/-- `∑[∑[comp[lcm(2, n)+3]]]` -/
def P12107633353247428789.Spec : Prop :=
  ∀ n, (P12107633353247428789.a n : ℤ) = A006527 n

end A006527

/-! ## A006527.P15965923383481585923

`∑[∑[comp[or(1, n+2)]]]`
-/

namespace A006527.P15965923383481585923
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006527.P15965923383481585923

namespace A006527

/-- `∑[∑[comp[or(1, n+2)]]]` -/
def P15965923383481585923.Spec : Prop :=
  ∀ n, (P15965923383481585923.a n : ℤ) = A006527 n

end A006527

/-! ## A006527.P16183641567728998886

`∑[ceil(n/acot(n-1))]`
-/

namespace A006527.P16183641567728998886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006527.P16183641567728998886

namespace A006527

/-- `∑[ceil(n/acot(n-1))]` -/
def P16183641567728998886.Spec : Prop :=
  ∀ n, P16183641567728998886.a n = A006527 n

end A006527

/-! ## A006527.P14181690040963914114

`∑[(n^3)%(n²+1)]`
-/

namespace A006527.P14181690040963914114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006527.P14181690040963914114

namespace A006527

/-- `∑[(n^3)%(n²+1)]` -/
def P14181690040963914114.Spec : Prop :=
  ∀ n, (P14181690040963914114.a n : ℤ) = A006527 n

end A006527

/-! ## A006527.P11824627195883858807

`∑[∑[2*n-ceil(atan(n))]]`
-/

namespace A006527.P11824627195883858807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌈Real.arctan (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006527.P11824627195883858807

namespace A006527

/-- `∑[∑[2*n-ceil(atan(n))]]` -/
def P11824627195883858807.Spec : Prop :=
  ∀ n, P11824627195883858807.a n = A006527 n

end A006527

/-! ## A006527.P9870011461696560952

`∑[∑[comp[xor(1, 2*(n+1))]]]`
-/

namespace A006527.P9870011461696560952
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * (n + 1))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006527.P9870011461696560952

namespace A006527

/-- `∑[∑[comp[xor(1, 2*(n+1))]]]` -/
def P9870011461696560952.Spec : Prop :=
  ∀ n, (P9870011461696560952.a n : ℤ) = A006527 n

end A006527

/-! ## A006527.P5291001099799191626

`∑[∑[comp[a(n-1)+2]]]` with `a(0)=3`
-/

namespace A006527.P5291001099799191626
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f3 =>
  f3 (n - 1) + 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006527.P5291001099799191626

namespace A006527

/-- `∑[∑[comp[a(n-1)+2]]]` -/
def P5291001099799191626.Spec : Prop :=
  ∀ n, (P5291001099799191626.a n : ℤ) = A006527 n

end A006527

/-! ## A006527.P13375740291310746359

`xor(-1, ∑[n-1-n²])`
-/

namespace A006527.P13375740291310746359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006527.P13375740291310746359

namespace A006527

/-- `xor(-1, ∑[n-1-n²])` -/
def P13375740291310746359.Spec : Prop :=
  ∀ n, P13375740291310746359.a n = A006527 n

end A006527

/-! ## A006527.P12069874082866609275

`∑[∑[comp[gcd(2, n)+n+1]]]`
-/

namespace A006527.P12069874082866609275
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006527.P12069874082866609275

namespace A006527

/-- `∑[∑[comp[gcd(2, n)+n+1]]]` -/
def P12069874082866609275.Spec : Prop :=
  ∀ n, (P12069874082866609275.a n : ℤ) = A006527 n

end A006527

/-! ## A006527.P8682497841644007444

`∑[∑[record[n^((n+1)%2)]]]`
-/

namespace A006527.P8682497841644007444
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((n + 1) % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006527.P8682497841644007444

namespace A006527

/-- `∑[∑[record[n^((n+1)%2)]]]` -/
def P8682497841644007444.Spec : Prop :=
  ∀ n, (P8682497841644007444.a n : ℤ) = A006527 n

end A006527

/-! ## A006527.P15422596981393188218

`∑[∑[comp[and(n, n+1)+3]]]`
-/

namespace A006527.P15422596981393188218
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006527.P15422596981393188218

namespace A006527

/-- `∑[∑[comp[and(n, n+1)+3]]]` -/
def P15422596981393188218.Spec : Prop :=
  ∀ n, (P15422596981393188218.a n : ℤ) = A006527 n

end A006527

/-! ## A006527.P17253352730964918868

`∑[∑[record[n^and(1, n+1)]]]`
-/

namespace A006527.P17253352730964918868
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 1 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006527.P17253352730964918868

namespace A006527

/-- `∑[∑[record[n^and(1, n+1)]]]` -/
def P17253352730964918868.Spec : Prop :=
  ∀ n, (P17253352730964918868.a n : ℤ) = A006527 n

end A006527

/-! ## A006527.P13428880515365162378

`∑[ceil(n^3*acot(n+1))]`
-/

namespace A006527.P13428880515365162378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 3 : ℝ) * SequenceMachineLib.acot (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006527.P13428880515365162378

namespace A006527

/-- `∑[ceil(n^3*acot(n+1))]` -/
def P13428880515365162378.Spec : Prop :=
  ∀ n, P13428880515365162378.a n = A006527 n

end A006527

/-! ## A006527.P10249962337308967708

`∑[∑[a(n-1)+2]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A006527.P10249962337308967708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006527.P10249962337308967708

namespace A006527

/-- `∑[∑[a(n-1)+2]]` -/
def P10249962337308967708.Spec : Prop :=
  ∀ n, (P10249962337308967708.a n : ℤ) = A006527 n

end A006527

/-!
# A006528: a(n) = (n^4 + n^2 + 2*n)/4.

The programs for A006528, the canonical program `A006528.P15588600356386765546` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006528 has offset 0).

The definition of A006528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006528.P11208595863898043976

`(n^4+n²+2*n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006528.P11208595863898043976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 + n ^ 2 + 2 * n : ℚ) / 4

end

end A006528.P11208595863898043976

namespace A006528

/-- `(n^4+n²+2*n)/4` -/
def P11208595863898043976.Spec : Prop :=
  ∀ n, P11208595863898043976.a n = (A006528 n : ℚ)

end A006528

/-! ## A006528.P15588600356386765546

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=24, a(4)=70`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006528

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P15588600356386765546.Spec : Prop :=
  ∀ n, P15588600356386765546.a n = A006528 n

theorem P15588600356386765546.correct : P15588600356386765546.Spec := by
  intro n
  simp only [A006528]

end A006528

/-! ## A006528.P9239829515886986923

`(C(n, 2)+1)*∑[n]`
-/

namespace A006528.P9239829515886986923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006528.P9239829515886986923

namespace A006528

/-- `(C(n, 2)+1)*∑[n]` -/
def P9239829515886986923.Spec : Prop :=
  ∀ n, (P9239829515886986923.a n : ℤ) = A006528 n

end A006528

/-! ## A006528.P9328128122713825924

`∑[n]+C(n², 2)/2`
-/

namespace A006528.P9328128122713825924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (Nat.choose (n ^ 2) 2 : ℚ) / 2

end

end A006528.P9328128122713825924

namespace A006528

/-- `∑[n]+C(n², 2)/2` -/
def P9328128122713825924.Spec : Prop :=
  ∀ n, P9328128122713825924.a n = (A006528 n : ℚ)

end A006528

/-! ## A006528.P6224686026230119644

`∑[n]²-∑[3*C(n, 2)]`
-/

namespace A006528.P6224686026230119644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A006528.P6224686026230119644

namespace A006528

/-- `∑[n]²-∑[3*C(n, 2)]` -/
def P6224686026230119644.Spec : Prop :=
  ∀ n, P6224686026230119644.a n = A006528 n

end A006528

/-! ## A006528.P1052232361079296795

`∑[∑[n]+lcm(n, (1-n)²)]`
-/

namespace A006528.P1052232361079296795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Int.lcm (n : ℤ) ((1 - (n : ℤ)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006528.P1052232361079296795

namespace A006528

/-- `∑[∑[n]+lcm(n, (1-n)²)]` -/
def P1052232361079296795.Spec : Prop :=
  ∀ n, (P1052232361079296795.a n : ℤ) = A006528 n

end A006528

/-! ## A006528.P11605603634334395713

`∑[∑[∑[a(n-1)+6]]]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A006528.P11605603634334395713
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f3 =>
  f3 (n - 1) + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006528.P11605603634334395713

namespace A006528

/-- `∑[∑[∑[a(n-1)+6]]]` -/
def P11605603634334395713.Spec : Prop :=
  ∀ n, (P11605603634334395713.a n : ℤ) = A006528 n

end A006528

/-! ## A006528.P5908658490263118826

`A006011(n)+∑[n]`
-/

namespace A006528.P5908658490263118826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006528.P5908658490263118826

namespace A006528

/-- `A006011(n)+∑[n]` -/
def P5908658490263118826.Spec : Prop :=
  ∀ n, P5908658490263118826.a n = A006528 n

end A006528

/-! ## A006528.P16630218500359641617

`A071237(n)-∑[n]²`
-/

namespace A006528.P16630218500359641617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071237 n - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A006528.P16630218500359641617

namespace A006528

/-- `A071237(n)-∑[n]²` -/
def P16630218500359641617.Spec : Prop :=
  ∀ n, P16630218500359641617.a n = A006528 n

end A006528

/-! ## A006528.P4344090343554586268

`∑[n]²-A135503(n)`
-/

namespace A006528.P4344090343554586268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A135503 n

end

end A006528.P4344090343554586268

namespace A006528

/-- `∑[n]²-A135503(n)` -/
def P4344090343554586268.Spec : Prop :=
  ∀ n, P4344090343554586268.a n = A006528 n

end A006528

/-! ## A006528.P10664978810143504214

`A006003(n)+C(n, 2)²`
-/

namespace A006528.P10664978810143504214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n + (Nat.choose n 2 ^ 2 : ℤ)

end

end A006528.P10664978810143504214

namespace A006528

/-- `A006003(n)+C(n, 2)²` -/
def P10664978810143504214.Spec : Prop :=
  ∀ n, P10664978810143504214.a n = A006528 n

end A006528

/-! ## A006528.P14883801068785645988

`A352405(n+1)-∑[n]`
-/

namespace A006528.P14883801068785645988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352405 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006528.P14883801068785645988

namespace A006528

/-- `A352405(n+1)-∑[n]` -/
def P14883801068785645988.Spec : Prop :=
  ∀ n, P14883801068785645988.a n = A006528 n

end A006528

/-! ## A006528.P9142864386082695948

`∑[n]*A152947(n+1)`
-/

namespace A006528.P9142864386082695948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A152947 (n + 1)

end

end A006528.P9142864386082695948

namespace A006528

/-- `∑[n]*A152947(n+1)` -/
def P9142864386082695948.Spec : Prop :=
  ∀ n, P9142864386082695948.a n = A006528 n

end A006528

/-! ## A006528.P406118803699273115

`∑[(A212133(n)+n)/2]`
-/

namespace A006528.P406118803699273115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212133 n + (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006528.P406118803699273115

namespace A006528

/-- `∑[(A212133(n)+n)/2]` -/
def P406118803699273115.Spec : Prop :=
  ∀ n, P406118803699273115.a n = (A006528 n : ℚ)

end A006528

/-! ## A006528.P1109672745498421157

`A001621(n)-n*∑[n]`
-/

namespace A006528.P1109672745498421157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001621 n - ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A006528.P1109672745498421157

namespace A006528

/-- `A001621(n)-n*∑[n]` -/
def P1109672745498421157.Spec : Prop :=
  ∀ n, P1109672745498421157.a n = A006528 n

end A006528

/-! ## A006528.P7452241548183138014

`∑[A081441(n)-(1-n)²]`
-/

namespace A006528.P7452241548183138014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081441 n - (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006528.P7452241548183138014

namespace A006528

/-- `∑[A081441(n)-(1-n)²]` -/
def P7452241548183138014.Spec : Prop :=
  ∀ n, P7452241548183138014.a n = A006528 n

end A006528

/-! ## A006528.P12686168535147890965

`∑[n+1]²-A100175(n+1)`
-/

namespace A006528.P12686168535147890965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A100175 (n + 1)

end

end A006528.P12686168535147890965

namespace A006528

/-- `∑[n+1]²-A100175(n+1)` -/
def P12686168535147890965.Spec : Prop :=
  ∀ n, P12686168535147890965.a n = A006528 n

end A006528

/-! ## A006528.P8358971565827258193

`A050534(n)+A002817(n)`
-/

namespace A006528.P8358971565827258193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n + A002817 n

end

end A006528.P8358971565827258193

namespace A006528

/-- `A050534(n)+A002817(n)` -/
def P8358971565827258193.Spec : Prop :=
  ∀ n, P8358971565827258193.a n = A006528 n

end A006528

/-! ## A006528.P9679028477045734719

`A086602(n)+A037255(n)`
-/

namespace A006528.P9679028477045734719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086602 n + A037255 n

end

end A006528.P9679028477045734719

namespace A006528

/-- `A086602(n)+A037255(n)` -/
def P9679028477045734719.Spec : Prop :=
  ∀ n, P9679028477045734719.a n = A006528 n

end A006528

/-!
# A006529: a(n) = (25*n^4-120*n^3+209*n^2-108*n)/6.

The programs for A006529, the canonical program `A006529.P8819128863113426911` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006529 has offset 0).

The definition of A006529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006529.P8019181300342137930

`(25*n^4-120*n^3+209*n²-108*n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006529.P8019181300342137930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((25 * n ^ 4 : ℤ) - (120 * n ^ 3 : ℤ) + (209 * n ^ 2 : ℤ) - (108 * n : ℤ) : ℚ) / 6

end

end A006529.P8019181300342137930

namespace A006529

/-- `(25*n^4-120*n^3+209*n²-108*n)/6` -/
def P8019181300342137930.Spec : Prop :=
  ∀ n, P8019181300342137930.a n = (A006529 n : ℚ)

end A006529

/-! ## A006529.P8819128863113426911

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=10, a(3)=57, a(4)=272`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006529

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P8819128863113426911.Spec : Prop :=
  ∀ n, P8819128863113426911.a n = A006529 n

theorem P8819128863113426911.correct : P8819128863113426911.Spec := by
  intro n
  simp only [A006529]

end A006529

/-!
# A006530: Gpf(n): greatest prime dividing n, for n >= 2; a(1)=1.

The programs for A006530, the canonical program `A006530.P13372528560459906635` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006530 has offset 1).

The definition of A006530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006530.P441425969028212008

`A002034(∏{p}[n+1, #])`
-/

namespace A006530.P441425969028212008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A006530.P441425969028212008

namespace A006530

/-- `A002034(∏{p}[n+1, #])` -/
def P441425969028212008.Spec : Prop :=
  ∀ n, P441425969028212008.a n = A006530 (n + 1)

end A006530

/-! ## A006530.P6950409191544733749

`A025492(∏{p}[n+1, #])`
-/

namespace A006530.P6950409191544733749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A006530.P6950409191544733749

namespace A006530

/-- `A025492(∏{p}[n+1, #])` -/
def P6950409191544733749.Spec : Prop :=
  ∀ n, P6950409191544733749.a n = A006530 (n + 1)

end A006530

/-! ## A006530.P6536758288609622650

`A034699(∏{p}[n+1, #])`
-/

namespace A006530.P6536758288609622650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A006530.P6536758288609622650

namespace A006530

/-- `A034699(∏{p}[n+1, #])` -/
def P6536758288609622650.Spec : Prop :=
  ∀ n, P6536758288609622650.a n = A006530 (n + 1)

end A006530

/-! ## A006530.P5036249820983162358

`A053585(∏{p}[n+1, #])`
-/

namespace A006530.P5036249820983162358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A006530.P5036249820983162358

namespace A006530

/-- `A053585(∏{p}[n+1, #])` -/
def P5036249820983162358.Spec : Prop :=
  ∀ n, P5036249820983162358.a n = A006530 (n + 1)

end A006530

/-! ## A006530.P439063565750405063

`A088387(∏{p}[n+1, #])`
-/

namespace A006530.P439063565750405063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A006530.P439063565750405063

namespace A006530

/-- `A088387(∏{p}[n+1, #])` -/
def P439063565750405063.Spec : Prop :=
  ∀ n, P439063565750405063.a n = A006530 (n + 1)

end A006530

/-! ## A006530.P13940300934593175720

`A217434(∏{p}[n+1, #])`
-/

namespace A006530.P13940300934593175720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A006530.P13940300934593175720

namespace A006530

/-- `A217434(∏{p}[n+1, #])` -/
def P13940300934593175720.Spec : Prop :=
  ∀ n, P13940300934593175720.a n = A006530 (n + 1)

end A006530

/-! ## A006530.P3785260814491634389

`A223491(∏{p}[n+1, #])`
-/

namespace A006530.P3785260814491634389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223491 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A006530.P3785260814491634389

namespace A006530

/-- `A223491(∏{p}[n+1, #])` -/
def P3785260814491634389.Spec : Prop :=
  ∀ n, P3785260814491634389.a n = A006530 (n + 1)

end A006530

/-! ## A006530.P14211923815897695953

`A284695(∏{p}[n+1, #])`
-/

namespace A006530.P14211923815897695953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A006530.P14211923815897695953

namespace A006530

/-- `A284695(∏{p}[n+1, #])` -/
def P14211923815897695953.Spec : Prop :=
  ∀ n, P14211923815897695953.a n = A006530 (n + 1)

end A006530

/-! ## A006530.P6914732257210488466

`A300518(∏{p}[n+1, #])`
-/

namespace A006530.P6914732257210488466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300518 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A006530.P6914732257210488466

namespace A006530

/-- `A300518(∏{p}[n+1, #])` -/
def P6914732257210488466.Spec : Prop :=
  ∀ n, P6914732257210488466.a n = A006530 (n + 1)

end A006530

/-! ## A006530.P5558166851708781949

`A304180(∏{p}[n+1, #])`
-/

namespace A006530.P5558166851708781949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304180 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A006530.P5558166851708781949

namespace A006530

/-- `A304180(∏{p}[n+1, #])` -/
def P5558166851708781949.Spec : Prop :=
  ∀ n, P5558166851708781949.a n = A006530 (n + 1)

end A006530

/-! ## A006530.P18183301821298778797

`A323129(∏{p}[n+1, #])`
-/

namespace A006530.P18183301821298778797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323129 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A006530.P18183301821298778797

namespace A006530

/-- `A323129(∏{p}[n+1, #])` -/
def P18183301821298778797.Spec : Prop :=
  ∀ n, P18183301821298778797.a n = A006530 (n + 1)

end A006530

/-! ## A006530.P7840359022930742759

`A338668(∏{p}[n+1, #])`
-/

namespace A006530.P7840359022930742759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338668 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A006530.P7840359022930742759

namespace A006530

/-- `A338668(∏{p}[n+1, #])` -/
def P7840359022930742759.Spec : Prop :=
  ∀ n, P7840359022930742759.a n = A006530 (n + 1)

end A006530

/-! ## A006530.P8381703920492978317

`A345941(∏{p}[n+1, #])`
-/

namespace A006530.P8381703920492978317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A006530.P8381703920492978317

namespace A006530

/-- `A345941(∏{p}[n+1, #])` -/
def P8381703920492978317.Spec : Prop :=
  ∀ n, P8381703920492978317.a n = A006530 (n + 1)

end A006530

/-! ## A006530.P13372528560459906635

`A070229(n+1)-(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A006530

/-- `A070229(n+1)-(n+1)` -/
def P13372528560459906635.Spec : Prop :=
  ∀ n, P13372528560459906635.a n = A006530 (n + 1)

theorem P13372528560459906635.correct : P13372528560459906635.Spec := by
  intro n
  simp only [A006530, Nat.add_sub_cancel]

end A006530

/-! ## A006530.P1672070627513556543

`(n+1)/A052126(n+1)`
-/

namespace A006530.P1672070627513556543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052126 (n + 1) : ℚ)

end

end A006530.P1672070627513556543

namespace A006530

/-- `(n+1)/A052126(n+1)` -/
def P1672070627513556543.Spec : Prop :=
  ∀ n, P1672070627513556543.a n = (A006530 (n + 1) : ℚ)

end A006530

/-! ## A006530.P10214954723483157600

`A253560(n+1)/(n+1)`
-/

namespace A006530.P10214954723483157600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253560 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A006530.P10214954723483157600

namespace A006530

/-- `A253560(n+1)/(n+1)` -/
def P10214954723483157600.Spec : Prop :=
  ∀ n, P10214954723483157600.a n = (A006530 (n + 1) : ℚ)

end A006530

/-! ## A006530.P12867157355800406043

`gcd(n+1, A083717(n+1))`
-/

namespace A006530.P12867157355800406043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A083717 (n + 1))

end

end A006530.P12867157355800406043

namespace A006530

/-- `gcd(n+1, A083717(n+1))` -/
def P12867157355800406043.Spec : Prop :=
  ∀ n, (P12867157355800406043.a n : ℤ) = A006530 (n + 1)

end A006530

/-! ## A006530.P1675747226733494294

`A070221(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A006530.P1675747226733494294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A070221 n + a (n - 1)

end

end A006530.P1675747226733494294

namespace A006530

/-- `A070221(n)+a(n-1)` -/
def P1675747226733494294.Spec : Prop :=
  ∀ n, P1675747226733494294.a n = A006530 (n + 1)

end A006530

/-! ## A006530.P9195382951259215892

`(n+1)²/A342768(n+1)`
-/

namespace A006530.P9195382951259215892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A342768 (n + 1) : ℚ)

end

end A006530.P9195382951259215892

namespace A006530

/-- `(n+1)²/A342768(n+1)` -/
def P9195382951259215892.Spec : Prop :=
  ∀ n, P9195382951259215892.a n = (A006530 (n + 1) : ℚ)

end A006530

/-! ## A006530.P4509877545280841834

`(n+1)/(n+1-A171462(n+1))`
-/

namespace A006530.P4509877545280841834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A171462 (n + 1) : ℚ)

end

end A006530.P4509877545280841834

namespace A006530

/-- `(n+1)/(n+1-A171462(n+1))` -/
def P4509877545280841834.Spec : Prop :=
  ∀ n, P4509877545280841834.a n = (A006530 (n + 1) : ℚ)

end A006530

/-!
# A006531: Semiorders on n elements.

The programs for A006531, there is no canonical definition to state claims against.
-/

/-! ## A006531.P17714666852819701786

`A004709(A060419(n!))`
-/

namespace A006531.P17714666852819701786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (A060419 (Nat.factorial n)).toNat

end

end A006531.P17714666852819701786

/-! ## A006531.P6659228525341539542

`A056911(A392703(∑[n]))`
-/

namespace A006531.P6659228525341539542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (A392703 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A006531.P6659228525341539542

/-!
# A006532: Numbers whose sum of divisors is a square.

The programs for A006532, the canonical program `A006532.P9061832762431259574` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006532 has offset 1).

The definition of A006532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006532.P9061832762431259574

`lt[A007913(A000203(n+1)), 2]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A006532

/-- `lt[A007913(A000203(n+1)), 2]+1` -/
def P9061832762431259574.Spec : Prop :=
  ∀ n, (P9061832762431259574.a n : ℤ) = A006532 (n + 1)

theorem P9061832762431259574.correct : P9061832762431259574.Spec := by
  intro n
  simp only [A006532, Nat.add_sub_cancel]

end A006532

/-! ## A006532.P4028082044914351315

`∩[A234638(n+1), A358767(n+1)]`
-/

namespace A006532.P4028082044914351315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006532.P4028082044914351315

namespace A006532

/-- `∩[A234638(n+1), A358767(n+1)]` -/
def P4028082044914351315.Spec : Prop :=
  ∀ n, (P4028082044914351315.a n : ℤ) = A006532 (n + 1)

end A006532

/-! ## A006532.P16018209592923239190

`eq[1, A355928(n+1)]+1`
-/

namespace A006532.P16018209592923239190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355928 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A006532.P16018209592923239190

namespace A006532

/-- `eq[1, A355928(n+1)]+1` -/
def P16018209592923239190.Spec : Prop :=
  ∀ n, (P16018209592923239190.a n : ℤ) = A006532 (n + 1)

end A006532

/-! ## A006532.P14261175112427679718

`lt[A326040(n+1), 1]+1`
-/

namespace A006532.P14261175112427679718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326040 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A006532.P14261175112427679718

namespace A006532

/-- `lt[A326040(n+1), 1]+1` -/
def P14261175112427679718.Spec : Prop :=
  ∀ n, (P14261175112427679718.a n : ℤ) = A006532 (n + 1)

end A006532

/-! ## A006532.P1357297446016509688

`eq[0, A001221(A326040(n+1)+1)]+1`
-/

namespace A006532.P1357297446016509688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A326040 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A006532.P1357297446016509688

namespace A006532

/-- `eq[0, A001221(A326040(n+1)+1)]+1` -/
def P1357297446016509688.Spec : Prop :=
  ∀ n, (P1357297446016509688.a n : ℤ) = A006532 (n + 1)

end A006532

/-! ## A006532.P4283295708755441568

`record[A000027(n+1)-A326040(n+1)²]`
-/

namespace A006532.P4283295708755441568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A326040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006532.P4283295708755441568

namespace A006532

/-- `record[A000027(n+1)-A326040(n+1)²]` -/
def P4283295708755441568.Spec : Prop :=
  ∀ n, P4283295708755441568.a n = A006532 (n + 1)

end A006532

/-! ## A006532.P11505448812533354959

`record[A326045(n+1)/(A326045(n+1)+n)]`
-/

namespace A006532.P11505448812533354959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326045 (n + 1) : ℚ) / (A326045 (n + 1) + (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006532.P11505448812533354959

namespace A006532

/-- `record[A326045(n+1)/(A326045(n+1)+n)]` -/
def P11505448812533354959.Spec : Prop :=
  ∀ n, P11505448812533354959.a n = (A006532 (n + 1) : ℚ)

end A006532

/-! ## A006532.P5063026253500972903

`eq[1, A003285(A000203(n+1)+1)]+1`
-/

namespace A006532.P5063026253500972903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A000203 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A006532.P5063026253500972903

namespace A006532

/-- `eq[1, A003285(A000203(n+1)+1)]+1` -/
def P5063026253500972903.Spec : Prop :=
  ∀ n, (P5063026253500972903.a n : ℤ) = A006532 (n + 1)

end A006532

/-! ## A006532.P12956505607393653727

`record[(n+1)*A010052(A000203(n+2))+1]`
-/

namespace A006532.P12956505607393653727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010052 (A000203 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006532.P12956505607393653727

namespace A006532

/-- `record[(n+1)*A010052(A000203(n+2))+1]` -/
def P12956505607393653727.Spec : Prop :=
  ∀ n, P12956505607393653727.a n = A006532 (n + 1)

end A006532

/-!
# A006533: Place n equally-spaced points around a circle and join every pair of points by a chord; this divides the circle into a(n) regions.

The programs for A006533, there is no canonical definition to state claims against.
-/

/-! ## A006533.P6809162590561306238

`A007678(n+1)+1+n`
-/

namespace A006533.P6809162590561306238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007678 (n + 1) + 1 + (n : ℤ)

end

end A006533.P6809162590561306238

/-! ## A006533.P9714198113803939117

`A007678(A005408(n)-n)-xor(n, -1)`
-/

namespace A006533.P9714198113803939117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007678 (A005408 n - (n : ℤ)).toNat - Int.xor (n : ℤ) (-1)

end

end A006533.P9714198113803939117

/-! ## A006533.P5987781469459638381

`A135565(n+1)+1-A006561(n+1)`
-/

namespace A006533.P5987781469459638381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135565 (n + 1) + (1 - A006561 (n + 1))

end

end A006533.P5987781469459638381

/-! ## A006533.P16243660943312259259

`A135565(n+1)-A007569(n+1)+n+2`
-/

namespace A006533.P16243660943312259259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135565 (n + 1) - A007569 (n + 1) + (n + 2 : ℤ)

end

end A006533.P16243660943312259259

/-! ## A006533.P6590805027685204413

`A007678(A005408(n)-n)-(A001489(n)-1)`
-/

namespace A006533.P6590805027685204413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007678 (A005408 n - (n : ℤ)).toNat - (A001489 n - 1)

end

end A006533.P6590805027685204413

/-!
# A006534: Number of one-sided triangular polyominoes (n-iamonds) with n cells; turning over not allowed, holes are allowed.

The programs for A006534, there is no canonical definition to state claims against.
-/

/-! ## A006534.P17115662620108763871

`A030224(n+1)+A000577(n+1)`
-/

namespace A006534.P17115662620108763871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030224 (n + 1) + A000577 (n + 1)

end

end A006534.P17115662620108763871

/-! ## A006534.P803299377621900678

`A030223(n+1)+2*A030224(n+1)`
-/

namespace A006534.P803299377621900678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030223 (n + 1) + 2 * A030224 (n + 1)

end

end A006534.P803299377621900678

/-! ## A006534.P6084034537627859264

`2*A000577(n+1)-A030223(n+1)`
-/

namespace A006534.P6084034537627859264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000577 (n + 1) - A030223 (n + 1)

end

end A006534.P6084034537627859264

/-! ## A006534.P6002963646857004859

`A030224(A000027(n+1))+A030224(n+1)+A030223(n+1)`
-/

namespace A006534.P6002963646857004859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030224 (A000027 (n + 1)).toNat + (A030224 (n + 1) + A030223 (n + 1))

end

end A006534.P6002963646857004859

/-! ## A006534.P12552589060572711270

`A030224(A130446(n+1))+A030224(n+1)+A030223(n+1)`
-/

namespace A006534.P12552589060572711270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030224 (A130446 (n + 1)).toNat + (A030224 (n + 1) + A030223 (n + 1))

end

end A006534.P12552589060572711270

/-!
# A006535: Number of one-sided hexagonal polyominoes with n cells.

The programs for A006535, there is no canonical definition to state claims against.
-/

/-! ## A006535.P1758012602847402102

`2*A000228(n+1)-A030225(n+1)`
-/

namespace A006535.P1758012602847402102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000228 (n + 1) - A030225 (n + 1)

end

end A006535.P1758012602847402102

/-! ## A006535.P14147286570333793205

`A030226(n+1)+A000228(n+1)`
-/

namespace A006535.P14147286570333793205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030226 (n + 1) + A000228 (n + 1)

end

end A006535.P14147286570333793205

/-! ## A006535.P8025107351669381233

`A030225(n+1)+2*A030226(n+1)`
-/

namespace A006535.P8025107351669381233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030225 (n + 1) + 2 * A030226 (n + 1)

end

end A006535.P8025107351669381233

/-! ## A006535.P17091456635819107027

`A018190(n+1)+A038144(n+1)+A030226(n+1)`
-/

namespace A006535.P17091456635819107027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018190 (n + 1) + (A038144 (n + 1) + A030226 (n + 1))

end

end A006535.P17091456635819107027

/-! ## A006535.P7175971369061697806

`A030226(n+1)+A070767(n+1)+A070766(n+1)`
-/

namespace A006535.P7175971369061697806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030226 (n + 1) + (A070767 (n + 1) + A070766 (n + 1))

end

end A006535.P7175971369061697806

/-!
# A006537: Worst cases for Pierce expansions (numerators).

The programs for A006537, there is no canonical definition to state claims against.
-/

/-! ## A006537.P6431124982229379388

`∑[A057217(A300439(n+1)²)]`
-/

namespace A006537.P6431124982229379388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057217 (A300439 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006537.P6431124982229379388

/-! ## A006537.P390482148340102144

`eq[A290262(n+1), A345141(A000005(2*(n+1)))]`
-/

namespace A006537.P390482148340102144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345141 (A000005 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006537.P390482148340102144

/-!
# A006539: Numerators of worst case for Engel expansion.

The programs for A006539, there is no canonical definition to state claims against.
-/

/-! ## A006539.P17664906991828693292

`∪[A014574(n+1), A277758(A002110(n))]`
-/

namespace A006539.P17664906991828693292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277758 (A002110 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006539.P17664906991828693292

/-!
# A006540: Denominators of worst case for Engel expansion.

The programs for A006540, there is no canonical definition to state claims against.
-/

/-! ## A006540.P12918549037086047549

`A094802(A295362(n))`
-/

namespace A006540.P12918549037086047549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A295362 n).toNat

end

end A006540.P12918549037086047549

/-! ## A006540.P1235465060499248660

`A094802(A001521(n+1)+n)`
-/

namespace A006540.P1235465060499248660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A001521 (n + 1) + (n : ℤ)).toNat

end

end A006540.P1235465060499248660

/-! ## A006540.P1344724974666189274

`or(A026741(n), A325611(A052955(n)))`
-/

namespace A006540.P1344724974666189274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026741 n) (A325611 (A052955 n).toNat)

end

end A006540.P1344724974666189274

/-! ## A006540.P16217382456796122787

`A265783(n+3)%record[A359294(n+2)]`
-/

namespace A006540.P16217382456796122787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359294 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265783 (n + 3)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A006540.P16217382456796122787

/-! ## A006540.P16890261822936284373

`A006530(C(A155763(2*n+1), ∏{p}[n+1, #]))`
-/

namespace A006540.P16890261822936284373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A155763 (2 * n + 1)).toNat (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A006540.P16890261822936284373

/-!
# A006541: Number of dissimilarity relations on an n-set.

The programs for A006541, there is no canonical definition to state claims against.
-/

/-! ## A006541.P13195920765120116331

`A000670(∑[n])`
-/

namespace A006541.P13195920765120116331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006541.P13195920765120116331

/-! ## A006541.P6584937124671375003

`A052875(∑[n])+1`
-/

namespace A006541.P6584937124671375003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A006541.P6584937124671375003

/-! ## A006541.P3109424038714355826

`A076726(∑[n])/2`
-/

namespace A006541.P3109424038714355826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076726 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A006541.P3109424038714355826

/-! ## A006541.P999033188221007197

`ceil(A007047(∑[n])/4)`
-/

namespace A006541.P999033188221007197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007047 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4⌉

end

end A006541.P999033188221007197

/-! ## A006541.P13529059956484198477

`A122101(C(∑[n]+1, 2))`
-/

namespace A006541.P13529059956484198477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2)

end

end A006541.P13529059956484198477

/-!
# A006542: a(n) = binomial(n,3)*binomial(n-1,3)/4.

The programs for A006542, the canonical program `A006542.P5900216254948083579` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006542 has offset 4).

The definition of A006542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006542.P5900216254948083579

`∑[∑[∑[∑[1+∑[5*n]]]]]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006542

/-- `∑[∑[∑[∑[1+∑[5*n]]]]]` -/
def P5900216254948083579.Spec : Prop :=
  ∀ n, (P5900216254948083579.a n : ℤ) = A006542 (n + 4)

theorem P5900216254948083579.correct : P5900216254948083579.Spec := by
  intro n
  simp only [A006542, Nat.add_sub_cancel]

end A006542

/-! ## A006542.P18227269535852595561

`((n+3)²+n+3)*a(n-1)/n/(n+1)` with `a(0)=1`
-/

namespace A006542.P18227269535852595561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 3) ^ 2 + (n + 3) : ℚ) * (a (n - 1) / (n : ℚ)) / (n + 1 : ℚ)

end

end A006542.P18227269535852595561

namespace A006542

/-- `((n+3)²+n+3)*a(n-1)/n/(n+1)` -/
def P18227269535852595561.Spec : Prop :=
  ∀ n, P18227269535852595561.a n = (A006542 (n + 4) : ℚ)

end A006542

/-! ## A006542.P11876253118216801872

`A108647(n)/(n+1)`
-/

namespace A006542.P11876253118216801872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108647 n : ℚ) / (n + 1 : ℚ)

end

end A006542.P11876253118216801872

namespace A006542

/-- `A108647(n)/(n+1)` -/
def P11876253118216801872.Spec : Prop :=
  ∀ n, P11876253118216801872.a n = (A006542 (n + 4) : ℚ)

end A006542

/-! ## A006542.P18417491151314481885

`or(∑[A006414(n)], char[3])`
-/

namespace A006542.P18417491151314481885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A006542.P18417491151314481885

namespace A006542

/-- `or(∑[A006414(n)], char[3])` -/
def P18417491151314481885.Spec : Prop :=
  ∀ n, P18417491151314481885.a n = A006542 (n + 4)

end A006542

/-! ## A006542.P14699753732938901670

`floor(∑[A108648(n)/(n+1)])`
-/

namespace A006542.P14699753732938901670
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108648 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A006542.P14699753732938901670

namespace A006542

/-- `floor(∑[A108648(n)/(n+1)])` -/
def P14699753732938901670.Spec : Prop :=
  ∀ n, P14699753732938901670.a n = A006542 (n + 4)

end A006542

/-! ## A006542.P16910411291806350513

`A244864(n)+a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A006542.P16910411291806350513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  A244864 n + a (n - 2)

end

end A006542.P16910411291806350513

namespace A006542

/-- `A244864(n)+a(n-2)` -/
def P16910411291806350513.Spec : Prop :=
  ∀ n, P16910411291806350513.a n = A006542 (n + 4)

end A006542

/-! ## A006542.P12480789613239236148

`(n+2)/6*A006411(n+1)`
-/

namespace A006542.P12480789613239236148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 6 * (A006411 (n + 1) : ℚ)

end

end A006542.P12480789613239236148

namespace A006542

/-- `(n+2)/6*A006411(n+1)` -/
def P12480789613239236148.Spec : Prop :=
  ∀ n, P12480789613239236148.a n = (A006542 (n + 4) : ℚ)

end A006542

/-! ## A006542.P17393286367845458259

`A093567(n+2)+∑[n+1]²`
-/

namespace A006542.P17393286367845458259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093567 (n + 2) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A006542.P17393286367845458259

namespace A006542

/-- `A093567(n+2)+∑[n+1]²` -/
def P17393286367845458259.Spec : Prop :=
  ∀ n, P17393286367845458259.a n = A006542 (n + 4)

end A006542

/-! ## A006542.P6416099564816206734

`A034264(n)+A034263(n)`
-/

namespace A006542.P6416099564816206734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034264 n + A034263 n

end

end A006542.P6416099564816206734

namespace A006542

/-- `A034264(n)+A034263(n)` -/
def P6416099564816206734.Spec : Prop :=
  ∀ n, P6416099564816206734.a n = A006542 (n + 4)

end A006542

/-! ## A006542.P16846269992496232507

`A291288(n)+A174002(n)`
-/

namespace A006542.P16846269992496232507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291288 n + A174002 n

end

end A006542.P16846269992496232507

namespace A006542

/-- `A291288(n)+A174002(n)` -/
def P16846269992496232507.Spec : Prop :=
  ∀ n, P16846269992496232507.a n = A006542 (n + 4)

end A006542

/-! ## A006542.P2072789611537655351

`gcd(∑[A006414(n)], A000038(n))`
-/

namespace A006542.P2072789611537655351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A006542.P2072789611537655351

namespace A006542

/-- `gcd(∑[A006414(n)], A000038(n))` -/
def P2072789611537655351.Spec : Prop :=
  ∀ n, (P2072789611537655351.a n : ℤ) = A006542 (n + 4)

end A006542

/-! ## A006542.P2409940497107352595

`A198833(n+1)-A054563(n)`
-/

namespace A006542.P2409940497107352595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198833 (n + 1) - A054563 n

end

end A006542.P2409940497107352595

namespace A006542

/-- `A198833(n+1)-A054563(n)` -/
def P2409940497107352595.Spec : Prop :=
  ∀ n, P2409940497107352595.a n = A006542 (n + 4)

end A006542

/-! ## A006542.P5174556683818813461

`A027626(n)*A067047(n+1)`
-/

namespace A006542.P5174556683818813461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027626 n * A067047 (n + 1)

end

end A006542.P5174556683818813461

namespace A006542

/-- `A027626(n)*A067047(n+1)` -/
def P5174556683818813461.Spec : Prop :=
  ∀ n, P5174556683818813461.a n = A006542 (n + 4)

end A006542

/-! ## A006542.P10397204875730504413

`∑[A006414(n)]%A006422(n+1)`
-/

namespace A006542.P10397204875730504413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A006422 (n + 1))

end

end A006542.P10397204875730504413

namespace A006542

/-- `∑[A006414(n)]%A006422(n+1)` -/
def P10397204875730504413.Spec : Prop :=
  ∀ n, P10397204875730504413.a n = A006542 (n + 4)

end A006542

/-! ## A006542.P15959362713175843745

`lcm(∑[A006414(n)], A067047(n+1))`
-/

namespace A006542.P15959362713175843745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A067047 (n + 1))

end

end A006542.P15959362713175843745

namespace A006542

/-- `lcm(∑[A006414(n)], A067047(n+1))` -/
def P15959362713175843745.Spec : Prop :=
  ∀ n, (P15959362713175843745.a n : ℤ) = A006542 (n + 4)

end A006542

/-! ## A006542.P6184229797749303619

`∑[A006414(n)]/A133090(n+1)%2`
-/

namespace A006542.P6184229797749303619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Int.tmod (A133090 (n + 1)) 2 : ℚ)

end

end A006542.P6184229797749303619

namespace A006542

/-- `∑[A006414(n)]/A133090(n+1)%2` -/
def P6184229797749303619.Spec : Prop :=
  ∀ n, P6184229797749303619.a n = (A006542 (n + 4) : ℚ)

end A006542

/-! ## A006542.P6674887161876202985

`A108684(n+1)-A108683(n+1)`
-/

namespace A006542.P6674887161876202985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108684 (n + 1) - A108683 (n + 1)

end

end A006542.P6674887161876202985

namespace A006542

/-- `A108684(n+1)-A108683(n+1)` -/
def P6674887161876202985.Spec : Prop :=
  ∀ n, P6674887161876202985.a n = A006542 (n + 4)

end A006542

/-! ## A006542.P10497902485852899155

`A291288(n+1)-A000292(n+2)`
-/

namespace A006542.P10497902485852899155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291288 (n + 1) - A000292 (n + 2)

end

end A006542.P10497902485852899155

namespace A006542

/-- `A291288(n+1)-A000292(n+2)` -/
def P10497902485852899155.Spec : Prop :=
  ∀ n, P10497902485852899155.a n = A006542 (n + 4)

end A006542

/-! ## A006542.P4069676174042011869

`A198833(n+2)-A157052(n+2)/2`
-/

namespace A006542.P4069676174042011869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198833 (n + 2) : ℚ) - (A157052 (n + 2) : ℚ) / 2

end

end A006542.P4069676174042011869

namespace A006542

/-- `A198833(n+2)-A157052(n+2)/2` -/
def P4069676174042011869.Spec : Prop :=
  ∀ n, P4069676174042011869.a n = (A006542 (n + 4) : ℚ)

end A006542

/-! ## A006542.P1756965463651048581

`A108647(n+1)-(A108648(n+1)+A108647(n))`
-/

namespace A006542.P1756965463651048581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108647 (n + 1) - (A108648 (n + 1) + A108647 n)

end

end A006542.P1756965463651048581

namespace A006542

/-- `A108647(n+1)-(A108648(n+1)+A108647(n))` -/
def P1756965463651048581.Spec : Prop :=
  ∀ n, P1756965463651048581.a n = A006542 (n + 4)

end A006542

/-!
# A006543: Maximal iterated binomial coefficients.

The programs for A006543, there is no canonical definition to state claims against.
-/

/-! ## A006543.P12293057142272383319

`record[C(A147981(n+3), A334184(n+1))]`
-/

namespace A006543.P12293057142272383319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A147981 (n + 3)).toNat (A334184 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006543.P12293057142272383319

/-! ## A006543.P16404554972498664231

`A018412(A056239(n+1)+A039822(n))`
-/

namespace A006543.P16404554972498664231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018412 (A056239 (n + 1) + A039822 n).toNat

end

end A006543.P16404554972498664231

/-! ## A006543.P17719235069865911548

`A018412(A356236(n)+A038548(n+1))`
-/

namespace A006543.P17719235069865911548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018412 (A356236 n + A038548 (n + 1)).toNat

end

end A006543.P17719235069865911548

/-! ## A006543.P15620418821887337563

`record[C(val(n+1, 2)+1, A106602(n))]`
-/

namespace A006543.P15620418821887337563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.valuation (n + 1) 2 + 1) (A106602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006543.P15620418821887337563

/-! ## A006543.P7683461683452987824

`record[A181386(a(n-1)+2*(n+1))]` with `a(0)=1, a(1)=0`
-/

namespace A006543.P7683461683452987824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A181386 (f1 (n - 1) + (2 * (n + 1) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006543.P7683461683452987824

/-!
# A006544: Number of stable forests with n nodes.

The programs for A006544, there is no canonical definition to state claims against.
-/

/-! ## A006544.P4895073871013647968

`ceil(root(A066951(n+1), ϕ))`
-/

namespace A006544.P4895073871013647968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A066951 (n + 1) : ℝ) ^ (1 / Real.goldenRatio)⌉

end

end A006544.P4895073871013647968

/-! ## A006544.P625398497861868555

`A003056(A005001(n))+A002865(n)`
-/

namespace A006544.P625398497861868555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A005001 n).toNat + A002865 n

end

end A006544.P625398497861868555

/-! ## A006544.P3763863751098174253

`A261104(A320807(n)+A000045(n))`
-/

namespace A006544.P3763863751098174253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A320807 n + A000045 n).toNat

end

end A006544.P3763863751098174253

/-! ## A006544.P11946796475203894982

`A261104(A320807(n)+A000055(n))`
-/

namespace A006544.P11946796475203894982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A320807 n + A000055 n).toNat

end

end A006544.P11946796475203894982

/-! ## A006544.P8567426857551711205

`A261104(A320807(n)+A261104(n)²)`
-/

namespace A006544.P8567426857551711205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A320807 n + A261104 n ^ 2).toNat

end

end A006544.P8567426857551711205

/-!
# A006546: Number of elements (a b, c d) in SL(2,Z) with trace n and 0 <= a <= {b, c} <= d.

The programs for A006546, there is no canonical definition to state claims against.
-/

/-! ## A006546.P11441637985742681895

`A007203(n+3)-A007104(n+3)`
-/

namespace A006546.P11441637985742681895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007203 (n + 3) - A007104 (n + 3)

end

end A006546.P11441637985742681895

/-! ## A006546.P17461739157686274725

`Δ[A007295(n+2)]-A007104(n+3)`
-/

namespace A006546.P17461739157686274725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007295 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007104 (n + 3)

end

end A006546.P17461739157686274725

/-! ## A006546.P9720846761378455925

`A264597(∑[n+1]+3)`
-/

namespace A006546.P9720846761378455925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264597 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A006546.P9720846761378455925

/-! ## A006546.P16008190190491600906

`A264597(A016028(n+4))%12`
-/

namespace A006546.P16008190190491600906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264597 (A016028 (n + 4)).toNat) 12

end

end A006546.P16008190190491600906

/-!
# A006547: Sum ((-1)^(i+1)*binomial(n,i)*2^i*(2*i-1)!,i=1..n).

The programs for A006547, there is no canonical definition to state claims against.
-/

/-! ## A006547.P13368699037858170908

`A010050(n)-A006563(n)`
-/

namespace A006547.P13368699037858170908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010050 n - A006563 n

end

end A006547.P13368699037858170908

/-! ## A006547.P1200344500393109591

`A004277(n)!-A006563(n)`
-/

namespace A006547.P1200344500393109591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004277 n).toNat : ℤ) - A006563 n

end

end A006547.P1200344500393109591

/-! ## A006547.P8480097681565859345

`A005843(n)!-A006563(n)`
-/

namespace A006547.P8480097681565859345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A005843 n).toNat : ℤ) - A006563 n

end

end A006547.P8480097681565859345

/-!
# A006548: (2*n)!-Sum ((-1)^(i+1)*binomial(n,i)*2^i*(2*n-1)!,i=1..n).

The programs for A006548, there is no canonical definition to state claims against.
-/

/-! ## A006548.P17430188107548126646

`(2*n+1)!*Δ[or(1, n²)]`
-/

namespace A006548.P17430188107548126646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 1) : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A006548.P17430188107548126646

/-! ## A006548.P3935952395112231472

`(2*n+1)!*∑[4*and(1, n)]`
-/

namespace A006548.P3935952395112231472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006548.P3935952395112231472

/-! ## A006548.P2538310926936742778

`(xor(1, n+1)+n)*(2*n+1)!`
-/

namespace A006548.P2538310926936742778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (n + 1) + n) * Nat.factorial (2 * n + 1)

end

end A006548.P2538310926936742778

/-! ## A006548.P5062229556197224906

`(2*n+1)!*∑[4-a(n-1)]` with `a(0)=0`
-/

namespace A006548.P5062229556197224906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 1) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006548.P5062229556197224906

/-! ## A006548.P2316460103903890567

`(2*and(1, n)+2*n)*(2*n+1)!`
-/

namespace A006548.P2316460103903890567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land 1 n + 2 * n) * Nat.factorial (2 * n + 1)

end

end A006548.P2316460103903890567

/-!
# A006549: Numbers k such that k and k+1 are prime powers.

The programs for A006549, there is no canonical definition to state claims against.
-/

/-! ## A006549.P14942925086380189188

`A120430(n+1)-1`
-/

namespace A006549.P14942925086380189188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120430 (n + 1) - 1

end

end A006549.P14942925086380189188

/-! ## A006549.P11278495129958769838

`∏{e}[2^n, A134459(#)]`
-/

namespace A006549.P11278495129958769838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A134459 (Nat.factorization (f1 n) p)

end

end A006549.P11278495129958769838

/-! ## A006549.P8538540892417910856

`A164512(A004277(n))-1`
-/

namespace A006549.P8538540892417910856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164512 (A004277 n).toNat - 1

end

end A006549.P8538540892417910856

/-! ## A006549.P6586766611471963407

`A164512(A004275(n+1))-1`
-/

namespace A006549.P6586766611471963407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164512 (A004275 (n + 1)).toNat - 1

end

end A006549.P6586766611471963407

/-! ## A006549.P17253896503223711183

`A164512(A092535(n+1))-1`
-/

namespace A006549.P17253896503223711183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164512 (A092535 (n + 1)).toNat - 1

end

end A006549.P17253896503223711183

/-!
# A006550: n+8*C(n,2)+30*C(n,3)+62*C(n,4)+75*C(n,5)+30*C(n,6).

The programs for A006550, the canonical program `A006550.P4770188471656622868` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006550 has offset 1).

The definition of A006550 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+8*C(n, 2)+30*C(n, 3)+62*C(n, 4)+75*C(n, 5)+30*C(n, 6)` (program `A006550.P4770188471656622868`, by `A006550.P4770188471656622868.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006550.P4770188471656622868

`n+8*C(n, 2)+30*C(n, 3)+62*C(n, 4)+75*C(n, 5)+30*C(n, 6)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006550

/-- `n+8*C(n, 2)+30*C(n, 3)+62*C(n, 4)+75*C(n, 5)+30*C(n, 6)` -/
def P4770188471656622868.Spec : Prop :=
  ∀ n, (P4770188471656622868.a n : ℤ) = A006550 (n + 1)

theorem P4770188471656622868.correct : P4770188471656622868.Spec := by
  intro n
  simp only [A006550, Nat.add_sub_cancel]

end A006550

/-! ## A006550.P2484684013478154955

`(C(n², 3)+∑[2*n]²)/4-6*C(n, 4)`
-/

namespace A006550.P2484684013478154955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n ^ 2) 3 + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 4 - (6 * Nat.choose n 4 : ℚ)

end

end A006550.P2484684013478154955

namespace A006550

/-- `(C(n², 3)+∑[2*n]²)/4-6*C(n, 4)` -/
def P2484684013478154955.Spec : Prop :=
  ∀ n, P2484684013478154955.a n = (A006550 (n + 1) : ℚ)

end A006550

/-! ## A006550.P2738041995398489261

`A047780(n)-3*A034827(n)`
-/

namespace A006550.P2738041995398489261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047780 n - 3 * A034827 n

end

end A006550.P2738041995398489261

namespace A006550

/-- `A047780(n)-3*A034827(n)` -/
def P2738041995398489261.Spec : Prop :=
  ∀ n, P2738041995398489261.a n = A006550 (n + 1)

end A006550

/-! ## A006550.P12313417116020125861

`A047780(n)-6*A000332(n)`
-/

namespace A006550.P12313417116020125861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047780 n - 6 * A000332 n

end

end A006550.P12313417116020125861

namespace A006550

/-- `A047780(n)-6*A000332(n)` -/
def P12313417116020125861.Spec : Prop :=
  ∀ n, P12313417116020125861.a n = A006550 (n + 1)

end A006550

/-!
# A006551: Maximal Eulerian numbers.

The programs for A006551, there is no canonical definition to state claims against.
-/

/-! ## A006551.P10035657309197080196

`A008292(∑[or(1, n)])`
-/

namespace A006551.P10035657309197080196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006551.P10035657309197080196

/-! ## A006551.P12417859614056283851

`A173018(∑[or(1, n+1)])`
-/

namespace A006551.P12417859614056283851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006551.P12417859614056283851

/-! ## A006551.P11386450774408698394

`A123125(∑[or(1, n+1)]+1)`
-/

namespace A006551.P11386450774408698394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006551.P11386450774408698394

/-! ## A006551.P9601632367111973543

`A008292(∑[n%2+n]+1)`
-/

namespace A006551.P9601632367111973543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006551.P9601632367111973543

/-! ## A006551.P15381872151104725789

`A008292(∑[n]+floor(n/2)+1)`
-/

namespace A006551.P15381872151104725789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A006551.P15381872151104725789

/-! ## A006551.P12875755747611469028

`A014630(A033638(n))`
-/

namespace A006551.P12875755747611469028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014630 (A033638 n).toNat

end

end A006551.P12875755747611469028

/-! ## A006551.P6956001380955319803

`A173018(record[A278818(n)])`
-/

namespace A006551.P6956001380955319803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006551.P6956001380955319803

/-! ## A006551.P8043305756400291300

`A173018(A074148(n+1))`
-/

namespace A006551.P8043305756400291300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A074148 (n + 1)).toNat

end

end A006551.P8043305756400291300

/-! ## A006551.P3422538920823969354

`A123125(A080476(n+2))`
-/

namespace A006551.P3422538920823969354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A080476 (n + 2)).toNat

end

end A006551.P3422538920823969354

/-! ## A006551.P1331933725513222563

`A173018(A047838(n+2))`
-/

namespace A006551.P1331933725513222563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A047838 (n + 2)).toNat

end

end A006551.P1331933725513222563

/-!
# A006552: Numbers k such that k*3^k + 1 is prime.

The programs for A006552, there is no canonical definition to state claims against.
-/

/-! ## A006552.P5930978894055856043

`A331823(A377272(n+1))`
-/

namespace A006552.P5930978894055856043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331823 (A377272 (n + 1)).toNat

end

end A006552.P5930978894055856043

/-! ## A006552.P17047241489523663246

`A331823(A233543(n)*A292125(n+1))`
-/

namespace A006552.P17047241489523663246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331823 (A233543 n * A292125 (n + 1)).toNat

end

end A006552.P17047241489523663246

/-!
# A006553: Numbers k such that k*3^k - 1 is prime.

The programs for A006553, there is no canonical definition to state claims against.
-/

/-! ## A006553.P7395910384718537113

`eq[3, A281141(n+1)]+1`
-/

namespace A006553.P7395910384718537113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281141 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A006553.P7395910384718537113

/-! ## A006553.P12956391386365681832

`eq[A122553(n), A281141(A028310(n))]`
-/

namespace A006553.P12956391386365681832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281141 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006553.P12956391386365681832

/-!
# A006554: Minimal discriminant of totally real number field of degree n.

The programs for A006554, there is no canonical definition to state claims against.
-/

/-! ## A006554.P16759426550936004292

`record[A343290(n+1)]`
-/

namespace A006554.P16759426550936004292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006554.P16759426550936004292

/-! ## A006554.P10399758376019878243

`A343290(∑[floor(n/2)+1])`
-/

namespace A006554.P10399758376019878243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006554.P10399758376019878243

/-! ## A006554.P2727966053441749828

`abs(A343290(∑[A008619(n)]))`
-/

namespace A006554.P2727966053441749828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A343290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A006554.P2727966053441749828

/-! ## A006554.P11534325437211707195

`record[abs(A343290(A008620(n)))]`
-/

namespace A006554.P11534325437211707195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A343290 (A008620 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006554.P11534325437211707195

/-!
# A006555: Minimal absolute value of discriminants of number fields of degree n with exactly 2 (1 pair of) complex embeddings.

The programs for A006555, there is no canonical definition to state claims against.
-/

/-! ## A006555.P17839674536088077530

`record[-A343290(n+3)]`
-/

namespace A006555.P17839674536088077530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A343290 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006555.P17839674536088077530

/-!
# A006556: Number of different cycles of digits in the decimal expansions of 1/p, 2/p, ..., (p-1)/p where p = n-th prime different from 2 or 5.

The programs for A006556, there is no canonical definition to state claims against.
-/

/-! ## A006556.P16243992708849683817

`A060370((n+1)*n²%(n+1)+2)`
-/

namespace A006556.P16243992708849683817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 ((n + 1) * (n ^ 2 % (n + 1)) + 2)

end

end A006556.P16243992708849683817

/-! ## A006556.P14263053849932409851

`A060370(abs(A131738(n))+2)`
-/

namespace A006556.P14263053849932409851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (|A131738 n| + 2).toNat

end

end A006556.P14263053849932409851

/-! ## A006556.P17452235664532707313

`A060370(A057427(n)+2+n)`
-/

namespace A006556.P17452235664532707313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (A057427 n + 2 + (n : ℤ)).toNat

end

end A006556.P17452235664532707313

/-! ## A006556.P10622116843518938193

`A060370(∏{e}[A006530(n+1), A164413(#)]+n+1)`
-/

namespace A006556.P10622116843518938193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A164413 (Nat.factorization (f1 n).natAbs p) + (n + 1 : ℤ)).toNat

end

end A006556.P10622116843518938193

/-! ## A006556.P13815352572138917681

`A023142(A004139(n+1))-1`
-/

namespace A006556.P13815352572138917681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023142 (A004139 (n + 1)).toNat - 1

end

end A006556.P13815352572138917681

/-! ## A006556.P8895661070115751055

`(A004139(n+1)-1)/A007732(p?[A004139(n+1)])`
-/

namespace A006556.P8895661070115751055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004139 (n + 1) - 1 : ℚ) / (A007732 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ)

end

end A006556.P8895661070115751055

/-! ## A006556.P16044752950591152869

`A060370(A053186(n²+3)+n)`
-/

namespace A006556.P16044752950591152869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (A053186 (n ^ 2 + 3) + (n : ℤ)).toNat

end

end A006556.P16044752950591152869

/-!
# A006557: Minimal absolute value of discriminants of number fields of degree n.

The programs for A006557, there is no canonical definition to state claims against.
-/

/-! ## A006557.P2998275592482952354

`abs(A343290(∑[A001462(n+1)]))`
-/

namespace A006557.P2998275592482952354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A343290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A006557.P2998275592482952354

/-! ## A006557.P11569678906889052398

`abs(A343290(∑[A008619(n+1)]))`
-/

namespace A006557.P11569678906889052398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A343290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A006557.P11569678906889052398

/-! ## A006557.P16479523430431179744

`abs(A343290(∑[A055086(n+1)]))`
-/

namespace A006557.P16479523430431179744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A343290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A006557.P16479523430431179744

/-!
# A006558: Start of first run of n consecutive integers with same number of divisors.

The programs for A006558, there is no canonical definition to state claims against.
-/

/-! ## A006558.P3238475642972742314

`A019273(n+1)-n`
-/

namespace A006558.P3238475642972742314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019273 (n + 1) - (n : ℤ)

end

end A006558.P3238475642972742314

/-! ## A006558.P12563214271557146209

`record[A019273(A065648(n))]-n`
-/

namespace A006558.P12563214271557146209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019273 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A006558.P12563214271557146209

/-! ## A006558.P17746914987934248757

`record[A019273(A193592(n))]-n`
-/

namespace A006558.P17746914987934248757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019273 (A193592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A006558.P17746914987934248757

/-! ## A006558.P8656621358200996428

`record[A019273(A304746(n))]-n`
-/

namespace A006558.P8656621358200996428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019273 (A304746 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A006558.P8656621358200996428

/-! ## A006558.P12631437413788380077

`A076313(n)+A019273(n+1)`
-/

namespace A006558.P12631437413788380077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 n + A019273 (n + 1)

end

end A006558.P12631437413788380077

/-!
# A006559: Short period primes: the decimal expansion of 1/p has period less than p-1, but greater than zero.

The programs for A006559, there is no canonical definition to state claims against.
-/

/-! ## A006559.P2115747678419302783

`A045319(lt[A261143(n), A060370(n+1)])`
-/

namespace A006559.P2115747678419302783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A006559.P2115747678419302783

/-! ## A006559.P3644213249887085334

`A045319(lt[A048595(n+1), A158611(n+1)])`
-/

namespace A006559.P3644213249887085334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A006559.P3644213249887085334

/-! ## A006559.P8971187526502430451

`A045319(lt[A002371(n+1), A229511(n)])`
-/

namespace A006559.P8971187526502430451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A006559.P8971187526502430451

/-! ## A006559.P2808718520542558993

`A045319(lt[A048595(n+1), A229511(n)])`
-/

namespace A006559.P2808718520542558993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A006559.P2808718520542558993

/-! ## A006559.P17458538278488685518

`A045319(lt[A071126(n+1), A229511(n)])`
-/

namespace A006559.P17458538278488685518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A006559.P17458538278488685518

/-! ## A006559.P3572720124234481119

`A186641(n+3-C(2, n+2))`
-/

namespace A006559.P3572720124234481119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186641 (n + 3 - Nat.choose 2 (n + 2))

end

end A006559.P3572720124234481119

/-! ## A006559.P3552113621095874221

`A186641(n%a(n-1)+3)` with `a(0)=3`
-/

namespace A006559.P3552113621095874221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A186641 (Int.tmod (n : ℤ) (a (n - 1)) + 3).toNat

end

end A006559.P3552113621095874221

/-! ## A006559.P1071888667163028967

`p?[A186641(n+2)%(12*n-7)]`
-/

namespace A006559.P1071888667163028967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186641 (n + 2)) ((12 * n : ℤ) - 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006559.P1071888667163028967

/-! ## A006559.P9819913401349697692

`A186641(gcd(4, a(n-1))+n+2)` with `a(0)=3`
-/

namespace A006559.P9819913401349697692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A186641 (Int.gcd 4 (a (n - 1)) + (n + 2))

end

end A006559.P9819913401349697692

/-! ## A006559.P14049644268136824948

`A186641(n-(-floor(∏{p}[n, 1/#]/ϕ))^n+3)`
-/

namespace A006559.P14049644268136824948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186641 ((n : ℤ) - (-⌊((∏ p ∈ Nat.primeFactors (f1 n), 1 / (p : ℚ) : ℚ) : ℝ) / Real.goldenRatio⌋) ^ n + 3).toNat

end

end A006559.P14049644268136824948

/-!
# A006561: Number of intersections of diagonals in the interior of a regular n-gon.

The programs for A006561, there is no canonical definition to state claims against.
-/

/-! ## A006561.P4160490426858374350

`A007569(n+1)-(n+1)`
-/

namespace A006561.P4160490426858374350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007569 (n + 1) - (n + 1 : ℤ)

end

end A006561.P4160490426858374350

/-! ## A006561.P8501240877572183622

`abs(A007569(n+1)+A001478(n+1))`
-/

namespace A006561.P8501240877572183622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007569 (n + 1) + A001478 (n + 1)|

end

end A006561.P8501240877572183622

/-! ## A006561.P3480735488713306808

`A135565(n+1)+1-A006533(n+1)`
-/

namespace A006561.P3480735488713306808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135565 (n + 1) + (1 - A006533 (n + 1))

end

end A006561.P3480735488713306808

/-! ## A006561.P899007060497857274

`A135565(n+1)-(A007678(n+1)+n)`
-/

namespace A006561.P899007060497857274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135565 (n + 1) - (A007678 (n + 1) + (n : ℤ))

end

end A006561.P899007060497857274

/-! ## A006561.P7665454859630726954

`(A007678(n+1)+A007569(n+1))%A006533(n+1)`
-/

namespace A006561.P7665454859630726954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007678 (n + 1) + A007569 (n + 1)) (A006533 (n + 1))

end

end A006561.P7665454859630726954

/-! ## A006561.P7801526105640282484

`A024000(n+2)+A007569(n+1)`
-/

namespace A006561.P7801526105640282484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 2) + A007569 (n + 1)

end

end A006561.P7801526105640282484

/-! ## A006561.P17743055594705655038

`A290465(n+1)+A290447(n+1)`
-/

namespace A006561.P17743055594705655038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290465 (n + 1) + A290447 (n + 1)

end

end A006561.P17743055594705655038

/-! ## A006561.P14536053182277017385

`A000332(n+1)+A290465(n+1)-A290461(n+1)`
-/

namespace A006561.P14536053182277017385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) + (A290465 (n + 1) - A290461 (n + 1))

end

end A006561.P14536053182277017385

/-! ## A006561.P5935002769021547022

`A290465(n+1)+A290866(n+1)-A290865(n+1)`
-/

namespace A006561.P5935002769021547022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290465 (n + 1) + (A290866 (n + 1) - A290865 (n + 1))

end

end A006561.P5935002769021547022

/-!
# A006562: Balanced primes (of order one): primes which are the average of the previous prime and the following prime.

The programs for A006562, there is no canonical definition to state claims against.
-/

/-! ## A006562.P1142829206744090433

`A122535(n+1)+A117217(n+1)`
-/

namespace A006562.P1142829206744090433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1) + A117217 (n + 1)

end

end A006562.P1142829206744090433

/-! ## A006562.P15817541523351460587

`(A122535(n+1)+A181424(n+1))/2`
-/

namespace A006562.P15817541523351460587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122535 (n + 1) + A181424 (n + 1) : ℚ) / 2

end

end A006562.P15817541523351460587

/-! ## A006562.P7571606871274751169

`A000040(A064113(n+1)+1)`
-/

namespace A006562.P7571606871274751169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064113 (n + 1) + 1).toNat

end

end A006562.P7571606871274751169

/-! ## A006562.P1429331033624468084

`A181424(n+1)-A117217(n+1)`
-/

namespace A006562.P1429331033624468084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1) - A117217 (n + 1)

end

end A006562.P1429331033624468084

/-! ## A006562.P8423274348429544080

`∩[A071680(n+1), A125830(n+1)]`
-/

namespace A006562.P8423274348429544080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006562.P8423274348429544080

/-! ## A006562.P4929401844288659176

`∩[A071680(n+1), A173970(n+1)]`
-/

namespace A006562.P4929401844288659176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006562.P4929401844288659176

/-! ## A006562.P9241980345907264662

`∩[A125830(n+1), A225494(n+1)]`
-/

namespace A006562.P9241980345907264662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006562.P9241980345907264662

/-! ## A006562.P13623478802487356049

`∩[A173970(n+1), A225494(n+1)]`
-/

namespace A006562.P13623478802487356049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006562.P13623478802487356049

/-! ## A006562.P307077359881694719

`∩[A071680(n+1), A225494(n+1)]`
-/

namespace A006562.P307077359881694719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006562.P307077359881694719

/-! ## A006562.P4123012751174677440

`A122535(n+1)+A001223(A064113(n+1))`
-/

namespace A006562.P4123012751174677440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1) + A001223 (A064113 (n + 1)).toNat

end

end A006562.P4123012751174677440

/-! ## A006562.P1850270872672579773

`A122535(n+1)+A001223(A066875(n+1))`
-/

namespace A006562.P1850270872672579773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1) + A001223 (A066875 (n + 1)).toNat

end

end A006562.P1850270872672579773

/-! ## A006562.P10014507372890331607

`A117646(3*n+2)`
-/

namespace A006562.P10014507372890331607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117646 (3 * n + 2)

end

end A006562.P10014507372890331607

/-! ## A006562.P11837806973334505703

`p?[A225494(n+1)]`
-/

namespace A006562.P11837806973334505703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006562.P11837806973334505703

/-! ## A006562.P6302792181879302493

`p?[A075540(n+1)]`
-/

namespace A006562.P6302792181879302493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006562.P6302792181879302493

/-! ## A006562.P6218548195858560044

`∩[A071680(n+1), A075540(n+1)]`
-/

namespace A006562.P6218548195858560044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006562.P6218548195858560044

/-! ## A006562.P3404431588872628171

`∩[A075540(n+1), A125830(n+1)]`
-/

namespace A006562.P3404431588872628171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006562.P3404431588872628171

/-! ## A006562.P2198151892642682430

`∩[A075540(n+1), A173970(n+1)]`
-/

namespace A006562.P2198151892642682430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006562.P2198151892642682430

/-! ## A006562.P4005775347486175006

`∩[A075540(n+1), A090403(n+1)]`
-/

namespace A006562.P4005775347486175006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006562.P4005775347486175006

/-! ## A006562.P2896507458161017529

`∩[A090403(n+1), A225494(n+1)]`
-/

namespace A006562.P2896507458161017529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006562.P2896507458161017529

/-! ## A006562.P10252744103305446726

`∩[A075540(n+1), A162174(n+1)]`
-/

namespace A006562.P10252744103305446726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006562.P10252744103305446726

/-!
# A006563: (2*n)!-Sum ((-1)^(i+1)*binomial(n,i)*2^i*(2*i-1)!,i=1..n).

The programs for A006563, there is no canonical definition to state claims against.
-/

/-! ## A006563.P11529066480387642678

`A004277(n)!-A006547(n)`
-/

namespace A006563.P11529066480387642678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004277 n).toNat : ℤ) - A006547 n

end

end A006563.P11529066480387642678

/-! ## A006563.P1067592568597190605

`A005843(n)!-A006547(n)`
-/

namespace A006563.P1067592568597190605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A005843 n).toNat : ℤ) - A006547 n

end

end A006563.P1067592568597190605

/-!
# A006564: Icosahedral numbers: a(n) = n*(5*n^2 - 5*n + 2)/2.

The programs for A006564, the canonical program `A006564.P17653309506947808142` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006564 has offset 1).

The definition of A006564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006564.P17653309506947808142

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=12, a(2)=48, a(3)=124`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006564

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17653309506947808142.Spec : Prop :=
  ∀ n, P17653309506947808142.a n = A006564 (n + 1)

theorem P17653309506947808142.correct : P17653309506947808142.Spec := by
  intro n
  simp only [A006564, Nat.add_sub_cancel]

end A006564

/-! ## A006564.P7689239594886739863

`∑[∑[a(n-1)+15]]` with `a(0)=1, a(1)=10`
-/

namespace A006564.P7689239594886739863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f2 =>
  f2 (n - 1) + 15

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006564.P7689239594886739863

namespace A006564

/-- `∑[∑[a(n-1)+15]]` -/
def P7689239594886739863.Spec : Prop :=
  ∀ n, (P7689239594886739863.a n : ℤ) = A006564 (n + 1)

end A006564

/-! ## A006564.P1059381766704357366

`(∑[5*n]+1)*(n+1)`
-/

namespace A006564.P1059381766704357366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * (n + 1)

end

end A006564.P1059381766704357366

namespace A006564

/-- `(∑[5*n]+1)*(n+1)` -/
def P1059381766704357366.Spec : Prop :=
  ∀ n, (P1059381766704357366.a n : ℤ) = A006564 (n + 1)

end A006564

/-! ## A006564.P2625535047797446536

`∑[A236267(n)-∑[n]]`
-/

namespace A006564.P2625535047797446536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236267 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006564.P2625535047797446536

namespace A006564

/-- `∑[A236267(n)-∑[n]]` -/
def P2625535047797446536.Spec : Prop :=
  ∀ n, P2625535047797446536.a n = A006564 (n + 1)

end A006564

/-! ## A006564.P4217952404602325246

`∑[A220083(n)-2*n]`
-/

namespace A006564.P4217952404602325246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220083 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006564.P4217952404602325246

namespace A006564

/-- `∑[A220083(n)-2*n]` -/
def P4217952404602325246.Spec : Prop :=
  ∀ n, P4217952404602325246.a n = A006564 (n + 1)

end A006564

/-! ## A006564.P4775175695151154746

`-xor(n, -1)*A005891(n)`
-/

namespace A006564.P4775175695151154746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (n : ℤ) (-1) * A005891 n)

end

end A006564.P4775175695151154746

namespace A006564

/-- `-xor(n, -1)*A005891(n)` -/
def P4775175695151154746.Spec : Prop :=
  ∀ n, P4775175695151154746.a n = A006564 (n + 1)

end A006564

/-! ## A006564.P4533895425550995007

`A093500(n)+a(n-1)` with `a(0)=1`
-/

namespace A006564.P4533895425550995007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093500 n + a (n - 1)

end

end A006564.P4533895425550995007

namespace A006564

/-- `A093500(n)+a(n-1)` -/
def P4533895425550995007.Spec : Prop :=
  ∀ n, P4533895425550995007.a n = A006564 (n + 1)

end A006564

/-! ## A006564.P562853361879372177

`∑[A022271(n)+(n+1)²]`
-/

namespace A006564.P562853361879372177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022271 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006564.P562853361879372177

namespace A006564

/-- `∑[A022271(n)+(n+1)²]` -/
def P562853361879372177.Spec : Prop :=
  ∀ n, P562853361879372177.a n = A006564 (n + 1)

end A006564

/-! ## A006564.P60906278101644315

`∑[A022273(n)]+(n+1)²`
-/

namespace A006564.P60906278101644315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A006564.P60906278101644315

namespace A006564

/-- `∑[A022273(n)]+(n+1)²` -/
def P60906278101644315.Spec : Prop :=
  ∀ n, P60906278101644315.a n = A006564 (n + 1)

end A006564

/-! ## A006564.P16337717672301428519

`A213837(n+1)-∑[∑[n]]`
-/

namespace A006564.P16337717672301428519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213837 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006564.P16337717672301428519

namespace A006564

/-- `A213837(n+1)-∑[∑[n]]` -/
def P16337717672301428519.Spec : Prop :=
  ∀ n, P16337717672301428519.a n = A006564 (n + 1)

end A006564

/-! ## A006564.P2324925897204320752

`∑[5*(A104249(n)-1)+1]`
-/

namespace A006564.P2324925897204320752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A104249 n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006564.P2324925897204320752

namespace A006564

/-- `∑[5*(A104249(n)-1)+1]` -/
def P2324925897204320752.Spec : Prop :=
  ∀ n, P2324925897204320752.a n = A006564 (n + 1)

end A006564

/-! ## A006564.P9944248346598994927

`A006597(n+1)-∑[2*n]`
-/

namespace A006564.P9944248346598994927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006597 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006564.P9944248346598994927

namespace A006564

/-- `A006597(n+1)-∑[2*n]` -/
def P9944248346598994927.Spec : Prop :=
  ∀ n, P9944248346598994927.a n = A006564 (n + 1)

end A006564

/-! ## A006564.P5515869864629419204

`A213772(n+1)+n*∑[n]`
-/

namespace A006564.P5515869864629419204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213772 (n + 1) + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A006564.P5515869864629419204

namespace A006564

/-- `A213772(n+1)+n*∑[n]` -/
def P5515869864629419204.Spec : Prop :=
  ∀ n, P5515869864629419204.a n = A006564 (n + 1)

end A006564

/-! ## A006564.P6501255219778178068

`(A269237(n)+1+n)/(n+2)`
-/

namespace A006564.P6501255219778178068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269237 n + 1 + (n : ℤ) : ℚ) / (n + 2 : ℚ)

end

end A006564.P6501255219778178068

namespace A006564

/-- `(A269237(n)+1+n)/(n+2)` -/
def P6501255219778178068.Spec : Prop :=
  ∀ n, P6501255219778178068.a n = (A006564 (n + 1) : ℚ)

end A006564

/-! ## A006564.P16832167216186205846

`(A062786(n+1)+1)*(n+1)/2`
-/

namespace A006564.P16832167216186205846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A062786 (n + 1) + 1) * (n + 1 : ℤ) : ℚ) / 2

end

end A006564.P16832167216186205846

namespace A006564

/-- `(A062786(n+1)+1)*(n+1)/2` -/
def P16832167216186205846.Spec : Prop :=
  ∀ n, P16832167216186205846.a n = (A006564 (n + 1) : ℚ)

end A006564

/-! ## A006564.P8846977184624382341

`5*(n+1)*A000217(n)+1+n`
-/

namespace A006564.P8846977184624382341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) * A000217 n + 1 + (n : ℤ)

end

end A006564.P8846977184624382341

namespace A006564

/-- `5*(n+1)*A000217(n)+1+n` -/
def P8846977184624382341.Spec : Prop :=
  ∀ n, P8846977184624382341.a n = A006564 (n + 1)

end A006564

/-! ## A006564.P15482448306767448492

`A050509(n)+A011379(n)`
-/

namespace A006564.P15482448306767448492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050509 n + A011379 n

end

end A006564.P15482448306767448492

namespace A006564

/-- `A050509(n)+A011379(n)` -/
def P15482448306767448492.Spec : Prop :=
  ∀ n, P15482448306767448492.a n = A006564 (n + 1)

end A006564

/-! ## A006564.P2201937608430659220

`A059270(n)+A005920(n)`
-/

namespace A006564.P2201937608430659220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n + A005920 n

end

end A006564.P2201937608430659220

namespace A006564

/-- `A059270(n)+A005920(n)` -/
def P2201937608430659220.Spec : Prop :=
  ∀ n, P2201937608430659220.a n = A006564 (n + 1)

end A006564

/-! ## A006564.P9870503314825383590

`A081438(n)+A007586(n)`
-/

namespace A006564.P9870503314825383590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081438 n + A007586 n

end

end A006564.P9870503314825383590

namespace A006564

/-- `A081438(n)+A007586(n)` -/
def P9870503314825383590.Spec : Prop :=
  ∀ n, P9870503314825383590.a n = A006564 (n + 1)

end A006564

/-! ## A006564.P1596209117475260046

`A163832(n)+A006001(n)`
-/

namespace A006564.P1596209117475260046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163832 n + A006001 n

end

end A006564.P1596209117475260046

namespace A006564

/-- `A163832(n)+A006001(n)` -/
def P1596209117475260046.Spec : Prop :=
  ∀ n, P1596209117475260046.a n = A006564 (n + 1)

end A006564

/-!
# A006565: Number of ways to color vertices of a hexagon using <= n colors, allowing only rotations.

The programs for A006565, the canonical program `A006565.P13887533498698067936` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006565 has offset 0).

The definition of A006565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006565.P13887533498698067936

`n*(n*(n^4+n+2)+2)/6`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006565

/-- `n*(n*(n^4+n+2)+2)/6` -/
def P13887533498698067936.Spec : Prop :=
  ∀ n, P13887533498698067936.a n = (A006565 n : ℚ)

end A006565

/-! ## A006565.P4227709845430321465

`A054605(n)/6`
-/

namespace A006565.P4227709845430321465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054605 n : ℚ) / 6

end

end A006565.P4227709845430321465

namespace A006565

/-- `A054605(n)/6` -/
def P4227709845430321465.Spec : Prop :=
  ∀ n, P4227709845430321465.a n = (A006565 n : ℚ)

end A006565

/-! ## A006565.P11183135571327563868

`A000125(n²)+C(n, 3)-1`
-/

namespace A006565.P11183135571327563868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (n ^ 2) + ((Nat.choose n 3 : ℤ) - 1)

end

end A006565.P11183135571327563868

namespace A006565

/-- `A000125(n²)+C(n, 3)-1` -/
def P11183135571327563868.Spec : Prop :=
  ∀ n, P11183135571327563868.a n = A006565 n

end A006565

/-! ## A006565.P7497327142694789028

`A004006(n²)+A004006(n)-A000217(n)`
-/

namespace A006565.P7497327142694789028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (n ^ 2) + (A004006 n - A000217 n)

end

end A006565.P7497327142694789028

namespace A006565

/-- `A004006(n²)+A004006(n)-A000217(n)` -/
def P7497327142694789028.Spec : Prop :=
  ∀ n, P7497327142694789028.a n = A006565 n

end A006565

/-! ## A006565.P6681688181299537747

`A208535(A000217(n+6)-n)`
-/

namespace A006565.P6681688181299537747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (A000217 (n + 6) - (n : ℤ)).toNat

end

end A006565.P6681688181299537747

namespace A006565

/-- `A208535(A000217(n+6)-n)` -/
def P6681688181299537747.Spec : Prop :=
  ∀ n, P6681688181299537747.a n = A006565 n

end A006565

/-!
# A006566: Dodecahedral numbers: a(n) = n*(3*n - 1)*(3*n - 2)/2.

The programs for A006566, the canonical program `A006566.P13353886380037678795` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006566 has offset 0).

The definition of A006566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006566.P15002526914114185274

`n*(3*n-1)*(3*n-2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006566.P15002526914114185274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((3 * n : ℤ) - 1 : ℚ) * (((3 * n : ℤ) - 2 : ℚ) / 2))

end

end A006566.P15002526914114185274

namespace A006566

/-- `n*(3*n-1)*(3*n-2)/2` -/
def P15002526914114185274.Spec : Prop :=
  ∀ n, P15002526914114185274.a n = (A006566 n : ℚ)

end A006566

/-! ## A006566.P13353886380037678795

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=20, a(3)=84`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006566

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13353886380037678795.Spec : Prop :=
  ∀ n, P13353886380037678795.a n = A006566 n

theorem P13353886380037678795.correct : P13353886380037678795.Spec := by
  intro n
  simp only [A006566]

end A006566

/-! ## A006566.P50013083935650361

`A054776(n)/6`
-/

namespace A006566.P50013083935650361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054776 n : ℚ) / 6

end

end A006566.P50013083935650361

namespace A006566

/-- `A054776(n)/6` -/
def P50013083935650361.Spec : Prop :=
  ∀ n, P50013083935650361.a n = (A006566 n : ℚ)

end A006566

/-! ## A006566.P14740310256823873685

`C(3*n, 3)`
-/

namespace A006566.P14740310256823873685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 3

end

end A006566.P14740310256823873685

namespace A006566

/-- `C(3*n, 3)` -/
def P14740310256823873685.Spec : Prop :=
  ∀ n, (P14740310256823873685.a n : ℤ) = A006566 n

end A006566

/-! ## A006566.P13509084768268645030

`Δ[C(C(n, 2)+(1-n)², 2)]`
-/

namespace A006566.P13509084768268645030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.choose n 2 : ℤ) + (1 - (n : ℤ)) ^ 2).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A006566.P13509084768268645030

namespace A006566

/-- `Δ[C(C(n, 2)+(1-n)², 2)]` -/
def P13509084768268645030.Spec : Prop :=
  ∀ n, P13509084768268645030.a n = A006566 n

end A006566

/-! ## A006566.P12544010671078230171

`record[C(gcd(3, 1-n)-1+n, 3)]`
-/

namespace A006566.P12544010671078230171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Int.gcd 3 (1 - (n : ℤ)) : ℤ) - 1 + (n : ℤ)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006566.P12544010671078230171

namespace A006566

/-- `record[C(gcd(3, 1-n)-1+n, 3)]` -/
def P12544010671078230171.Spec : Prop :=
  ∀ n, (P12544010671078230171.a n : ℤ) = A006566 n

end A006566

/-! ## A006566.P3399939468685184834

`n*A117625(n)-n²`
-/

namespace A006566.P3399939468685184834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A117625 n - (n ^ 2 : ℤ)

end

end A006566.P3399939468685184834

namespace A006566

/-- `n*A117625(n)-n²` -/
def P3399939468685184834.Spec : Prop :=
  ∀ n, P3399939468685184834.a n = A006566 n

end A006566

/-! ## A006566.P17526586142694287132

`A329530(n)+A045991(n)`
-/

namespace A006566.P17526586142694287132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329530 n + A045991 n

end

end A006566.P17526586142694287132

namespace A006566

/-- `A329530(n)+A045991(n)` -/
def P17526586142694287132.Spec : Prop :=
  ∀ n, P17526586142694287132.a n = A006566 n

end A006566

/-! ## A006566.P17024539548658554032

`A081583(n)-A081267(n)`
-/

namespace A006566.P17024539548658554032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081583 n - A081267 n

end

end A006566.P17024539548658554032

namespace A006566

/-- `A081583(n)-A081267(n)` -/
def P17024539548658554032.Spec : Prop :=
  ∀ n, P17024539548658554032.a n = A006566 n

end A006566

/-! ## A006566.P10295551477107316989

`lcm(A000326(n), A329404(n))`
-/

namespace A006566.P10295551477107316989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000326 n) (A329404 n)

end

end A006566.P10295551477107316989

namespace A006566

/-- `lcm(A000326(n), A329404(n))` -/
def P10295551477107316989.Spec : Prop :=
  ∀ n, (P10295551477107316989.a n : ℤ) = A006566 n

end A006566

/-! ## A006566.P5319906114944445208

`∑[A093485(n)]-A093485(n)`
-/

namespace A006566.P5319906114944445208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A093485 n

end

end A006566.P5319906114944445208

namespace A006566

/-- `∑[A093485(n)]-A093485(n)` -/
def P5319906114944445208.Spec : Prop :=
  ∀ n, P5319906114944445208.a n = A006566 n

end A006566

/-! ## A006566.P16635857001463597998

`A134171(n+1)+A051872(n)`
-/

namespace A006566.P16635857001463597998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134171 (n + 1) + A051872 n

end

end A006566.P16635857001463597998

namespace A006566

/-- `A134171(n+1)+A051872(n)` -/
def P16635857001463597998.Spec : Prop :=
  ∀ n, P16635857001463597998.a n = A006566 n

end A006566

/-! ## A006566.P15948930006962106654

`A086605(n)-A134171(n+1)`
-/

namespace A006566.P15948930006962106654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086605 n - A134171 (n + 1)

end

end A006566.P15948930006962106654

namespace A006566

/-- `A086605(n)-A134171(n+1)` -/
def P15948930006962106654.Spec : Prop :=
  ∀ n, P15948930006962106654.a n = A006566 n

end A006566

/-! ## A006566.P2044970443758794088

`2*A051673(n)-A000292(n)`
-/

namespace A006566.P2044970443758794088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051673 n - A000292 n

end

end A006566.P2044970443758794088

namespace A006566

/-- `2*A051673(n)-A000292(n)` -/
def P2044970443758794088.Spec : Prop :=
  ∀ n, P2044970443758794088.a n = A006566 n

end A006566

/-! ## A006566.P14670798001794751535

`n*A062741(n)-A049450(n)`
-/

namespace A006566.P14670798001794751535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062741 n - A049450 n

end

end A006566.P14670798001794751535

namespace A006566

/-- `n*A062741(n)-A049450(n)` -/
def P14670798001794751535.Spec : Prop :=
  ∀ n, P14670798001794751535.a n = A006566 n

end A006566

/-! ## A006566.P4635163065659425751

`A000578(n)+A262000(n)-A000384(n)`
-/

namespace A006566.P4635163065659425751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + (A262000 n - A000384 n)

end

end A006566.P4635163065659425751

namespace A006566

/-- `A000578(n)+A262000(n)-A000384(n)` -/
def P4635163065659425751.Spec : Prop :=
  ∀ n, P4635163065659425751.a n = A006566 n

end A006566

/-! ## A006566.P4277003692671796175

`A051673(n)+A262000(n)-A000447(n)`
-/

namespace A006566.P4277003692671796175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051673 n + (A262000 n - A000447 n)

end

end A006566.P4277003692671796175

namespace A006566

/-- `A051673(n)+A262000(n)-A000447(n)` -/
def P4277003692671796175.Spec : Prop :=
  ∀ n, P4277003692671796175.a n = A006566 n

end A006566

/-! ## A006566.P2574332827368145852

`A262000(n)+A329530(n)-A006597(n)`
-/

namespace A006566.P2574332827368145852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262000 n + (A329530 n - A006597 n)

end

end A006566.P2574332827368145852

namespace A006566

/-- `A262000(n)+A329530(n)-A006597(n)` -/
def P2574332827368145852.Spec : Prop :=
  ∀ n, P2574332827368145852.a n = A006566 n

end A006566

/-! ## A006566.P5034517767559521581

`A000292(A130824(n)-n)`
-/

namespace A006566.P5034517767559521581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A130824 n - (n : ℤ)).toNat

end

end A006566.P5034517767559521581

namespace A006566

/-- `A000292(A130824(n)-n)` -/
def P5034517767559521581.Spec : Prop :=
  ∀ n, P5034517767559521581.a n = A006566 n

end A006566

/-!
# A006567: Emirps (primes whose reversal is a different prime).

The programs for A006567, there is no canonical definition to state claims against.
-/

/-! ## A006567.P468436783407241374

`∩[A095179(n+1), A334321(n+1)]`
-/

namespace A006567.P468436783407241374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006567.P468436783407241374

/-! ## A006567.P10288138500854783916

`A000040(A156793(n+1))`
-/

namespace A006567.P10288138500854783916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A156793 (n + 1)).toNat

end

end A006567.P10288138500854783916

/-! ## A006567.P2987706592758410391

`A008578(A156793(n+1)+1)`
-/

namespace A006567.P2987706592758410391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A156793 (n + 1) + 1).toNat

end

end A006567.P2987706592758410391

/-! ## A006567.P2341453420792261183

`p?[A068893(n+1)]`
-/

namespace A006567.P2341453420792261183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006567.P2341453420792261183

/-! ## A006567.P13167877396735220021

`p?[A109019(n+1)]`
-/

namespace A006567.P13167877396735220021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006567.P13167877396735220021

/-! ## A006567.P499503387671488168

`p?[A350867(n+1)]`
-/

namespace A006567.P499503387671488168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006567.P499503387671488168

/-! ## A006567.P3227520122341758809

`A162753(2*A156793(n+1))`
-/

namespace A006567.P3227520122341758809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (2 * A156793 (n + 1)).toNat

end

end A006567.P3227520122341758809

/-! ## A006567.P13326981489431877293

`filter[A068893(n+1), A010051(#)]`
-/

namespace A006567.P13326981489431877293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A006567.P13326981489431877293

/-! ## A006567.P14915788425617813179

`filter[A109019(n+1), A010051(#)]`
-/

namespace A006567.P14915788425617813179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A006567.P14915788425617813179

/-! ## A006567.P564506707606872163

`filter[A350867(n+1), A010051(#)]`
-/

namespace A006567.P564506707606872163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A006567.P564506707606872163

/-! ## A006567.P14183421016593346310

`filter[A068893(n+1), A323152(#)]`
-/

namespace A006567.P14183421016593346310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A006567.P14183421016593346310

/-! ## A006567.P12984835511544813957

`filter[A068893(n+1), A323153(#)]`
-/

namespace A006567.P12984835511544813957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A006567.P12984835511544813957

/-! ## A006567.P12807543016628160312

`filter[A068893(n+1), A353787(#)]`
-/

namespace A006567.P12807543016628160312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A006567.P12807543016628160312

/-! ## A006567.P13400006670173713237

`filter[A068893(n+1), A353817(#)]`
-/

namespace A006567.P13400006670173713237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A006567.P13400006670173713237

/-! ## A006567.P10732615896565168584

`filter[A109019(n+1), A323152(#)]`
-/

namespace A006567.P10732615896565168584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A006567.P10732615896565168584

/-! ## A006567.P8439798686055402272

`filter[A109019(n+1), A323153(#)]`
-/

namespace A006567.P8439798686055402272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A006567.P8439798686055402272

/-! ## A006567.P6791587272810366325

`filter[A109019(n+1), A353817(#)]`
-/

namespace A006567.P6791587272810366325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A006567.P6791587272810366325

/-! ## A006567.P5689368412851739439

`filter[A350867(n+1), A323152(#)]`
-/

namespace A006567.P5689368412851739439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A006567.P5689368412851739439

/-! ## A006567.P13667193816715417646

`filter[A350867(n+1), A323153(#)]`
-/

namespace A006567.P13667193816715417646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A006567.P13667193816715417646

/-! ## A006567.P6162521532497955142

`∩[A000040(n+1), A068893(n+1)]`
-/

namespace A006567.P6162521532497955142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006567.P6162521532497955142

/-!
# A006568: Denominators of generalized Bernoulli numbers.

The programs for A006568, there is no canonical definition to state claims against.
-/

/-! ## A006568.P12343434112925357511

`A000034(A002583(n))*A224085(n)`
-/

namespace A006568.P12343434112925357511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A002583 n).toNat * A224085 n

end

end A006568.P12343434112925357511

/-! ## A006568.P17791024503092011161

`A020639(A001472(n))*A224085(n)`
-/

namespace A006568.P17791024503092011161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001472 n).toNat * A224085 n

end

end A006568.P17791024503092011161

/-! ## A006568.P13326109110691912279

`A020639(A053498(n))*A224085(n)`
-/

namespace A006568.P13326109110691912279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053498 n).toNat * A224085 n

end

end A006568.P13326109110691912279

/-! ## A006568.P4151090474522299589

`A224085(n)*A227481(A000079(n))`
-/

namespace A006568.P4151090474522299589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224085 n * A227481 (A000079 n).toNat

end

end A006568.P4151090474522299589

/-! ## A006568.P1840400046668335287

`A020639(A264868(n+1))*A224085(n)`
-/

namespace A006568.P1840400046668335287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A264868 (n + 1)).toNat * A224085 n

end

end A006568.P1840400046668335287

/-!
# A006570: From trees with valency <= 3.

The programs for A006570, there is no canonical definition to state claims against.
-/

/-! ## A006570.P7870380339912245357

`A214701(A149938(n))`
-/

namespace A006570.P7870380339912245357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A149938 n).toNat

end

end A006570.P7870380339912245357

/-! ## A006570.P720898102014607107

`∑[A008617(A216508(n))]`
-/

namespace A006570.P720898102014607107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A216508 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006570.P720898102014607107

/-! ## A006570.P3334772426480209143

`A220658(A083424(n))-char[4]`
-/

namespace A006570.P3334772426480209143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A083424 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A006570.P3334772426480209143

/-!
# A006571: Expansion of q*Product_{k>=1} (1-q^k)^2*(1-q^(11*k))^2.

The programs for A006571, there is no canonical definition to state claims against.
-/

/-! ## A006571.P15855923307311462829

`A226075(2*(n+1))+A226075(n+1)`
-/

namespace A006571.P15855923307311462829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226075 (2 * (n + 1)) + A226075 (n + 1)

end

end A006571.P15855923307311462829

/-! ## A006571.P15122464345277755928

`A378125(∑[n]+n)`
-/

namespace A006571.P15122464345277755928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378125 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006571.P15122464345277755928

/-! ## A006571.P3361646366446866896

`A002107(n^A068045(n))`
-/

namespace A006571.P3361646366446866896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A068045 n : ℤ))).toNat

end

end A006571.P3361646366446866896

/-! ## A006571.P9591863803348307958

`A002107(n^A109223(n))`
-/

namespace A006571.P9591863803348307958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A109223 n : ℤ))).toNat

end

end A006571.P9591863803348307958

/-! ## A006571.P6824111434233546886

`A002107(n^A131361(n))`
-/

namespace A006571.P6824111434233546886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A131361 n : ℤ))).toNat

end

end A006571.P6824111434233546886

/-!
# A006572: Numerators of an asymptotic expansion for the number of forests on n nodes (A001858).

The programs for A006572, there is no canonical definition to state claims against.
-/

/-! ## A006572.P9053310664851889721

`A003418(n)-A146433(A006573(n))`
-/

namespace A006572.P9053310664851889721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n - A146433 (A006573 n).toNat

end

end A006572.P9053310664851889721

/-! ## A006572.P14722767973528876309

`A000142(n)-A086617(A259792(n))`
-/

namespace A006572.P14722767973528876309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A086617 (A259792 n).toNat

end

end A006572.P14722767973528876309

/-!
# A006573: Denominators of an asymptotic expansion for the number of forests on n nodes (A001858).

The programs for A006573, there is no canonical definition to state claims against.
-/

/-! ## A006573.P746546977873934536

`∏[gcd(A055017(9*n+12), A114212(9*n+2))]`
-/

namespace A006573.P746546977873934536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055017 (9 * n + 12)) (A114212 (9 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A006573.P746546977873934536

/-! ## A006573.P10308353028904511069

`A000010(∏[A000010(n+1)]*A273104(3*n+2))`
-/

namespace A006573.P10308353028904511069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((∏ j ∈ Finset.range (n + 1), f1 j) * A273104 (3 * n + 2)).toNat

end

end A006573.P10308353028904511069

/-! ## A006573.P13230227796951271875

`A056061(A149930(n))`
-/

namespace A006573.P13230227796951271875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056061 (A149930 n).toNat

end

end A006573.P13230227796951271875

/-! ## A006573.P6153253295977963080

`A000010(∏[A077462(n)!])`
-/

namespace A006573.P6153253295977963080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A077462 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A006573.P6153253295977963080

/-!
# A006575: Number of primitive (aperiodic, or Lyndon) asymmetric rhythm cycles: ones having no nontrivial shift automorphism.

The programs for A006575, there is no canonical definition to state claims against.
-/

/-! ## A006575.P18061829603486618012

`A000007(n)+2*A136704(n+1)`
-/

namespace A006575.P18061829603486618012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A136704 (n + 1)

end

end A006575.P18061829603486618012

/-! ## A006575.P7191474532658539360

`A002075(n+1)+A046209(n+1)-A000007(n)`
-/

namespace A006575.P7191474532658539360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002075 (n + 1) + (A046209 (n + 1) - A000007 n)

end

end A006575.P7191474532658539360

/-! ## A006575.P5759376639923851528

`A002075(n+1)-A046209(n+1)*A057428(n)`
-/

namespace A006575.P5759376639923851528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002075 (n + 1) - A046209 (n + 1) * A057428 n

end

end A006575.P5759376639923851528

/-! ## A006575.P11608205054996816342

`A002075(n+1)+A046209(n+1)%A027376(n)`
-/

namespace A006575.P11608205054996816342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002075 (n + 1) + Int.tmod (A046209 (n + 1)) (A027376 n)

end

end A006575.P11608205054996816342

/-! ## A006575.P10058039464529231576

`A027376(n+1)-A133267(n+1)`
-/

namespace A006575.P10058039464529231576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) - A133267 (n + 1)

end

end A006575.P10058039464529231576

/-!
# A006576: Primitive repfigit numbers.

The programs for A006576, there is no canonical definition to state claims against.
-/

/-! ## A006576.P3046332781670628284

`A007629(lt[A003269(n+2), A257506(n+1)])`
-/

namespace A006576.P3046332781670628284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007629 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A006576.P3046332781670628284

/-! ## A006576.P16474830307084344060

`A007629(∑[A110123(n+1)^A251751(n)])`
-/

namespace A006576.P16474830307084344060
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110123 (n + 1) : ℚ) ^ (A251751 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007629 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A006576.P16474830307084344060

/-!
# A006577: Number of halving and tripling steps to reach 1 in '3x+1' problem, or -1 if 1 is never reached.

The programs for A006577, there is no canonical definition to state claims against.
-/

/-! ## A006577.P10997673030535336928

`A008908(n+1)-1`
-/

namespace A006577.P10997673030535336928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - 1

end

end A006577.P10997673030535336928

/-! ## A006577.P16499052620352016083

`A006666(n+1)+A006667(n+1)`
-/

namespace A006577.P16499052620352016083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) + A006667 (n + 1)

end

end A006577.P16499052620352016083

/-! ## A006577.P7555917987143833544

`A135282(n+1)+A208981(n+1)`
-/

namespace A006577.P7555917987143833544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135282 (n + 1) + A208981 (n + 1)

end

end A006577.P7555917987143833544

/-! ## A006577.P7632752208198564538

`A058261(n)/(n+1)`
-/

namespace A006577.P7632752208198564538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058261 n : ℚ) / (n + 1 : ℚ)

end

end A006577.P7632752208198564538

/-! ## A006577.P989894322745521800

`floor(log2(A125711(n+1)))`
-/

namespace A006577.P989894322745521800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A125711 (n + 1)).toNat

end

end A006577.P989894322745521800

/-! ## A006577.P12690372903809746704

`floor(log2(A221468(n+1)))`
-/

namespace A006577.P12690372903809746704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A221468 (n + 1)).toNat

end

end A006577.P12690372903809746704

/-! ## A006577.P10866213275970865521

`A023443(A008908(n+1))`
-/

namespace A006577.P10866213275970865521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A008908 (n + 1)).toNat

end

end A006577.P10866213275970865521

/-! ## A006577.P3522342736505012922

`∑[A153330(A028310(n))]-1`
-/

namespace A006577.P3522342736505012922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153330 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A006577.P3522342736505012922

/-! ## A006577.P11643689915055878227

`A023444(A008908(n+1)+1)`
-/

namespace A006577.P11643689915055878227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A008908 (n + 1) + 1).toNat

end

end A006577.P11643689915055878227

/-! ## A006577.P6767879041821750266

`A289207(A008908(n+1)+1)`
-/

namespace A006577.P6767879041821750266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A008908 (n + 1) + 1).toNat

end

end A006577.P6767879041821750266

/-! ## A006577.P10009966088289696583

`A139399(n+1)+A130130(n)`
-/

namespace A006577.P10009966088289696583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 1) + A130130 n

end

end A006577.P10009966088289696583

/-! ## A006577.P58620918280702152

`A222597(n+1)+A076228(n+1)`
-/

namespace A006577.P58620918280702152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222597 (n + 1) + A076228 (n + 1)

end

end A006577.P58620918280702152

/-! ## A006577.P9068035067489133400

`A222641(n+1)+A220421(n+1)`
-/

namespace A006577.P9068035067489133400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222641 (n + 1) + A220421 (n + 1)

end

end A006577.P9068035067489133400

/-! ## A006577.P15883724246900803684

`A139399(n+1)+A158799(n)-1`
-/

namespace A006577.P15883724246900803684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 1) + (A158799 n - 1)

end

end A006577.P15883724246900803684

/-! ## A006577.P6161877870180951758

`∑[A153330(n+1)]-A153330(n+1)`
-/

namespace A006577.P6161877870180951758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A153330 (n + 1)

end

end A006577.P6161877870180951758

/-! ## A006577.P9724369439617913482

`A006666(n+1)+A078719(n+1)-1`
-/

namespace A006577.P9724369439617913482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) + (A078719 (n + 1) - 1)

end

end A006577.P9724369439617913482

/-! ## A006577.P15716940189285495479

`A076228(n+1)+A213204(n+1)-1`
-/

namespace A006577.P15716940189285495479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076228 (n + 1) + (A213204 (n + 1) - 1)

end

end A006577.P15716940189285495479

/-! ## A006577.P16184506451318712713

`A087225(n+1)+A222641(n+1)-1`
-/

namespace A006577.P16184506451318712713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087225 (n + 1) + (A222641 (n + 1) - 1)

end

end A006577.P16184506451318712713

/-! ## A006577.P13948290750711901597

`A006667(n+1)+A064433(n+2)-1`
-/

namespace A006577.P13948290750711901597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) + (A064433 (n + 2) - 1)

end

end A006577.P13948290750711901597

/-! ## A006577.P662742793790573271

`A220071(n+1)+2*A006667(n+1)`
-/

namespace A006577.P662742793790573271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220071 (n + 1) + 2 * A006667 (n + 1)

end

end A006577.P662742793790573271

/-!
# A006578: Triangular numbers plus quarter squares: n*(n+1)/2 + floor(n^2/4) (i.e., A000217(n) + A002620(n)).

The programs for A006578, the canonical program `A006578.P5978913245613154021` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006578 has offset 0).

The definition of A006578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006578.P5978913245613154021

`n*(n+1)/2+floor(n²/4)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006578

/-- `n*(n+1)/2+floor(n²/4)` -/
def P5978913245613154021.Spec : Prop :=
  ∀ n, P5978913245613154021.a n = (A006578 n : ℚ)

end A006578

/-! ## A006578.P5044154520231625638

`(A002378(n)/2+A035608(n))/2`
-/

namespace A006578.P5044154520231625638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002378 n : ℚ) / 2 + (A035608 n : ℚ)) / 2

end

end A006578.P5044154520231625638

namespace A006578

/-- `(A002378(n)/2+A035608(n))/2` -/
def P5044154520231625638.Spec : Prop :=
  ∀ n, P5044154520231625638.a n = (A006578 n : ℚ)

end A006578

/-! ## A006578.P10887163748594931648

`abs(∑[2-∑[gcd(2, n)]])`
-/

namespace A006578.P10887163748594931648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A006578.P10887163748594931648

namespace A006578

/-- `abs(∑[2-∑[gcd(2, n)]])` -/
def P10887163748594931648.Spec : Prop :=
  ∀ n, P10887163748594931648.a n = A006578 n

end A006578

/-! ## A006578.P6165912854521951293

`∑[and(3*n, -2)]/2`
-/

namespace A006578.P6165912854521951293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n : ℤ) (-2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A006578.P6165912854521951293

namespace A006578

/-- `∑[and(3*n, -2)]/2` -/
def P6165912854521951293.Spec : Prop :=
  ∀ n, P6165912854521951293.a n = (A006578 n : ℚ)

end A006578

/-! ## A006578.P6735196198191380890

`∑[a(n-2)+3]` with `a(0)=0, a(1)=1`
-/

namespace A006578.P6735196198191380890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006578.P6735196198191380890

namespace A006578

/-- `∑[a(n-2)+3]` -/
def P6735196198191380890.Spec : Prop :=
  ∀ n, (P6735196198191380890.a n : ℤ) = A006578 n

end A006578

/-! ## A006578.P10948661184384108287

`∑[or(1, 3*n)-1]/2`
-/

namespace A006578.P10948661184384108287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (3 * n) : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A006578.P10948661184384108287

namespace A006578

/-- `∑[or(1, 3*n)-1]/2` -/
def P10948661184384108287.Spec : Prop :=
  ∀ n, P10948661184384108287.a n = (A006578 n : ℚ)

end A006578

/-! ## A006578.P9747962017968964743

`∑[∑[3-a(n-1)]]` with `a(0)=0, a(1)=1`
-/

namespace A006578.P9747962017968964743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006578.P9747962017968964743

namespace A006578

/-- `∑[∑[3-a(n-1)]]` -/
def P9747962017968964743.Spec : Prop :=
  ∀ n, P9747962017968964743.a n = A006578 n

end A006578

/-! ## A006578.P10807831532088784645

`floor(C(n+1, 2)+(n/2)²)`
-/

namespace A006578.P10807831532088784645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) 2 : ℚ) + ((n : ℚ) / 2) ^ 2⌋

end

end A006578.P10807831532088784645

namespace A006578

/-- `floor(C(n+1, 2)+(n/2)²)` -/
def P10807831532088784645.Spec : Prop :=
  ∀ n, P10807831532088784645.a n = A006578 n

end A006578

/-! ## A006578.P6564378666196918828

`floor(a(n-1)+n/2+n)` with `a(0)=0`
-/

namespace A006578.P6564378666196918828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((n : ℚ) / 2 + (n : ℚ))⌋

end

end A006578.P6564378666196918828

namespace A006578

/-- `floor(a(n-1)+n/2+n)` -/
def P6564378666196918828.Spec : Prop :=
  ∀ n, P6564378666196918828.a n = A006578 n

end A006578

/-! ## A006578.P888459983272324730

`sqrt(A212506(n))`
-/

namespace A006578.P888459983272324730
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A212506 n : ℝ)

end

end A006578.P888459983272324730

namespace A006578

/-- `sqrt(A212506(n))` -/
def P888459983272324730.Spec : Prop :=
  ∀ n, P888459983272324730.a n = (A006578 n : ℝ)

end A006578

/-! ## A006578.P12281731533509962471

`∑[A032766(n)]`
-/

namespace A006578.P12281731533509962471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006578.P12281731533509962471

namespace A006578

/-- `∑[A032766(n)]` -/
def P12281731533509962471.Spec : Prop :=
  ∀ n, P12281731533509962471.a n = A006578 n

end A006578

/-! ## A006578.P12337527079271365559

`∑[abs(A084056(n))]`
-/

namespace A006578.P12337527079271365559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084056 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006578.P12337527079271365559

namespace A006578

/-- `∑[abs(A084056(n))]` -/
def P12337527079271365559.Spec : Prop :=
  ∀ n, P12337527079271365559.a n = A006578 n

end A006578

/-! ## A006578.P12474789290924243463

`∑[∑[A134451(n)]]`
-/

namespace A006578.P12474789290924243463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006578.P12474789290924243463

namespace A006578

/-- `∑[∑[A134451(n)]]` -/
def P12474789290924243463.Spec : Prop :=
  ∀ n, P12474789290924243463.a n = A006578 n

end A006578

/-! ## A006578.P17696041391611793218

`∑[A004526(n)+n]`
-/

namespace A006578.P17696041391611793218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006578.P17696041391611793218

namespace A006578

/-- `∑[A004526(n)+n]` -/
def P17696041391611793218.Spec : Prop :=
  ∀ n, P17696041391611793218.a n = A006578 n

end A006578

/-! ## A006578.P173101816348707092

`∑[A047215(n)-n]`
-/

namespace A006578.P173101816348707092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006578.P173101816348707092

namespace A006578

/-- `∑[A047215(n)-n]` -/
def P173101816348707092.Spec : Prop :=
  ∀ n, P173101816348707092.a n = A006578 n

end A006578

/-! ## A006578.P14263358602576063985

`(A393677(n)-1)/2`
-/

namespace A006578.P14263358602576063985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393677 n - 1 : ℚ) / 2

end

end A006578.P14263358602576063985

namespace A006578

/-- `(A393677(n)-1)/2` -/
def P14263358602576063985.Spec : Prop :=
  ∀ n, P14263358602576063985.a n = (A006578 n : ℚ)

end A006578

/-! ## A006578.P10529496745983777907

`A055232(n)%A006000(n)`
-/

namespace A006578.P10529496745983777907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055232 n) (A006000 n)

end

end A006578.P10529496745983777907

namespace A006578

/-- `A055232(n)%A006000(n)` -/
def P10529496745983777907.Spec : Prop :=
  ∀ n, P10529496745983777907.a n = A006578 n

end A006578

/-!
# A006579: a(n) = Sum_{k=1..n-1} gcd(n,k).

The programs for A006579, the canonical program `A006579.P1794598553160813575` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006579 has offset 1).

The definition of A006579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006579.P17849322983560432743

`A268631(n+1)+n`
-/

namespace A006579.P17849322983560432743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268631 (n + 1) + (n : ℤ)

end

end A006579.P17849322983560432743

namespace A006579

/-- `A268631(n+1)+n` -/
def P17849322983560432743.Spec : Prop :=
  ∀ n, P17849322983560432743.a n = A006579 (n + 1)

end A006579

/-! ## A006579.P1794598553160813575

`∑[Δ[A209295(n)]-2]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A006579

/-- `∑[Δ[A209295(n)]-2]` -/
def P1794598553160813575.Spec : Prop :=
  ∀ n, P1794598553160813575.a n = A006579 (n + 1)

theorem P1794598553160813575.correct : P1794598553160813575.Spec := by
  intro n
  simp only [A006579, Nat.add_sub_cancel]

end A006579

/-! ## A006579.P17134374714227435969

`A018804(n+1)-(n+1)`
-/

namespace A006579.P17134374714227435969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - (n + 1 : ℤ)

end

end A006579.P17134374714227435969

namespace A006579

/-- `A018804(n+1)-(n+1)` -/
def P17134374714227435969.Spec : Prop :=
  ∀ n, P17134374714227435969.a n = A006579 (n + 1)

end A006579

/-! ## A006579.P5784615613861457786

`Δ[A209981(n)/32]-(n+1)`
-/

namespace A006579.P5784615613861457786
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209981 n : ℚ) / 32

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℚ)

end

end A006579.P5784615613861457786

namespace A006579

/-- `Δ[A209981(n)/32]-(n+1)` -/
def P5784615613861457786.Spec : Prop :=
  ∀ n, P5784615613861457786.a n = (A006579 (n + 1) : ℚ)

end A006579

/-! ## A006579.P4942188020226427553

`n²-A344485(n+1)+n`
-/

namespace A006579.P4942188020226427553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A344485 (n + 1) + (n : ℤ)

end

end A006579.P4942188020226427553

namespace A006579

/-- `n²-A344485(n+1)+n` -/
def P4942188020226427553.Spec : Prop :=
  ∀ n, P4942188020226427553.a n = A006579 (n + 1)

end A006579

/-! ## A006579.P14896759958057434815

`A209295(n+1)-2*(n+1)`
-/

namespace A006579.P14896759958057434815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 (n + 1) - (2 * (n + 1) : ℤ)

end

end A006579.P14896759958057434815

namespace A006579

/-- `A209295(n+1)-2*(n+1)` -/
def P14896759958057434815.Spec : Prop :=
  ∀ n, P14896759958057434815.a n = A006579 (n + 1)

end A006579

/-! ## A006579.P17708632118538993041

`(A344598(n+1)-(n+1))/2`
-/

namespace A006579.P17708632118538993041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344598 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A006579.P17708632118538993041

namespace A006579

/-- `(A344598(n+1)-(n+1))/2` -/
def P17708632118538993041.Spec : Prop :=
  ∀ n, P17708632118538993041.a n = (A006579 (n + 1) : ℚ)

end A006579

/-! ## A006579.P17425013205971256830

`∑{d}[n+1, (n+1)/#*A000010(#)]-(n+1)`
-/

namespace A006579.P17425013205971256830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A000010 d : ℚ) - (n + 1 : ℚ)

end

end A006579.P17425013205971256830

namespace A006579

/-- `∑{d}[n+1, (n+1)/#*A000010(#)]-(n+1)` -/
def P17425013205971256830.Spec : Prop :=
  ∀ n, P17425013205971256830.a n = (A006579 (n + 1) : ℚ)

end A006579

/-! ## A006579.P12499297066333786762

`A002378(n)-A344485(n+1)`
-/

namespace A006579.P12499297066333786762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - A344485 (n + 1)

end

end A006579.P12499297066333786762

namespace A006579

/-- `A002378(n)-A344485(n+1)` -/
def P12499297066333786762.Spec : Prop :=
  ∀ n, P12499297066333786762.a n = A006579 (n + 1)

end A006579

/-! ## A006579.P8779893036843170906

`A106474(n)-A368736(n+1)`
-/

namespace A006579.P8779893036843170906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106474 n - A368736 (n + 1)

end

end A006579.P8779893036843170906

namespace A006579

/-- `A106474(n)-A368736(n+1)` -/
def P8779893036843170906.Spec : Prop :=
  ∀ n, P8779893036843170906.a n = A006579 (n + 1)

end A006579

/-! ## A006579.P5479355334222555665

`A344598(n+1)%A018804(n+1)`
-/

namespace A006579.P5479355334222555665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344598 (n + 1)) (A018804 (n + 1))

end

end A006579.P5479355334222555665

namespace A006579

/-- `A344598(n+1)%A018804(n+1)` -/
def P5479355334222555665.Spec : Prop :=
  ∀ n, P5479355334222555665.a n = A006579 (n + 1)

end A006579

/-! ## A006579.P4648038168088317175

`(n+1)²+A000217(n)-A382069(n+1)`
-/

namespace A006579.P4648038168088317175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A000217 n - A382069 (n + 1))

end

end A006579.P4648038168088317175

namespace A006579

/-- `(n+1)²+A000217(n)-A382069(n+1)` -/
def P4648038168088317175.Spec : Prop :=
  ∀ n, P4648038168088317175.a n = A006579 (n + 1)

end A006579

/-! ## A006579.P12758128891644979776

`∑{d}[n+1, A007431(#)*A065608((n+1)/#)]`
-/

namespace A006579.P12758128891644979776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A065608 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A006579.P12758128891644979776

namespace A006579

/-- `∑{d}[n+1, A007431(#)*A065608((n+1)/#)]` -/
def P12758128891644979776.Spec : Prop :=
  ∀ n, P12758128891644979776.a n = A006579 (n + 1)

end A006579

/-! ## A006579.P8226622967294906336

`∑{d}[n+1, A007427(#)*A069914((n+1)/#)]`
-/

namespace A006579.P8226622967294906336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A069914 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A006579.P8226622967294906336

namespace A006579

/-- `∑{d}[n+1, A007427(#)*A069914((n+1)/#)]` -/
def P8226622967294906336.Spec : Prop :=
  ∀ n, P8226622967294906336.a n = A006579 (n + 1)

end A006579

/-! ## A006579.P7591762119532536100

`∑{d}[n+1, A007432(#)*A069913((n+1)/#)]`
-/

namespace A006579.P7591762119532536100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A069913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A006579.P7591762119532536100

namespace A006579

/-- `∑{d}[n+1, A007432(#)*A069913((n+1)/#)]` -/
def P7591762119532536100.Spec : Prop :=
  ∀ n, P7591762119532536100.a n = A006579 (n + 1)

end A006579

/-! ## A006579.P4688309820522737619

`∑{d}[n+1, A029578(#)*A062570((n+1)/#)]`
-/

namespace A006579.P4688309820522737619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029578 d * A062570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A006579.P4688309820522737619

namespace A006579

/-- `∑{d}[n+1, A029578(#)*A062570((n+1)/#)]` -/
def P4688309820522737619.Spec : Prop :=
  ∀ n, P4688309820522737619.a n = A006579 (n + 1)

end A006579

/-! ## A006579.P3343379493749219813

`∑{d}[n+1, A008683(#)*A094471((n+1)/#)]`
-/

namespace A006579.P3343379493749219813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A094471 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A006579.P3343379493749219813

namespace A006579

/-- `∑{d}[n+1, A008683(#)*A094471((n+1)/#)]` -/
def P3343379493749219813.Spec : Prop :=
  ∀ n, P3343379493749219813.a n = A006579 (n + 1)

end A006579

/-! ## A006579.P15980841528912342493

`A174088(n+1)+A180772(n+1)-A000188(n+1)`
-/

namespace A006579.P15980841528912342493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174088 (n + 1) + (A180772 (n + 1) - A000188 (n + 1))

end

end A006579.P15980841528912342493

namespace A006579

/-- `A174088(n+1)+A180772(n+1)-A000188(n+1)` -/
def P15980841528912342493.Spec : Prop :=
  ∀ n, P15980841528912342493.a n = A006579 (n + 1)

end A006579

/-! ## A006579.P5038899802524763177

`A024000(n+2)+A018804(n+1)`
-/

namespace A006579.P5038899802524763177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 2) + A018804 (n + 1)

end

end A006579.P5038899802524763177

namespace A006579

/-- `A024000(n+2)+A018804(n+1)` -/
def P5038899802524763177.Spec : Prop :=
  ∀ n, P5038899802524763177.a n = A006579 (n + 1)

end A006579

/-! ## A006579.P9889781582661953359

`A080999(A080998(n+1))-(n+1)`
-/

namespace A006579.P9889781582661953359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080999 (A080998 (n + 1)).toNat - (n + 1 : ℤ)

end

end A006579.P9889781582661953359

namespace A006579

/-- `A080999(A080998(n+1))-(n+1)` -/
def P9889781582661953359.Spec : Prop :=
  ∀ n, P9889781582661953359.a n = A006579 (n + 1)

end A006579

/-!
# A006580: a(n) = Sum_{k=1..n-1} lcm(k,n-k).

The programs for A006580, there is no canonical definition to state claims against.
-/

/-! ## A006580.P4639447809420270278

`A181851(A089071(n+1))%(2^n)`
-/

namespace A006580.P4639447809420270278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181851 (A089071 (n + 1)).toNat) (2 ^ n : ℤ)

end

end A006580.P4639447809420270278

/-! ## A006580.P3304641312691452318

`A157928(n)*A181851(A238531(n))`
-/

namespace A006580.P3304641312691452318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A181851 (A238531 n).toNat

end

end A006580.P3304641312691452318

/-! ## A006580.P13147946388827569299

`A181851(A238531(n))%A000108(n)`
-/

namespace A006580.P13147946388827569299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181851 (A238531 n).toNat) (A000108 n)

end

end A006580.P13147946388827569299

/-! ## A006580.P17425104713090157766

`A181851(A238531(n))-A019590(n+1)`
-/

namespace A006580.P17425104713090157766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181851 (A238531 n).toNat - A019590 (n + 1)

end

end A006580.P17425104713090157766

/-! ## A006580.P6914062506918269529

`A181850(A238531(n))-A028310(n)`
-/

namespace A006580.P6914062506918269529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181850 (A238531 n).toNat - A028310 n

end

end A006580.P6914062506918269529

/-!
# A006581: a(n) = Sum_{k=1..n-1} (k AND n-k).

The programs for A006581, the canonical program `A006581.P18062033798657677284` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006581 has offset 2).

The definition of A006581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006581.P7878172078166860277

`(n+1)*(n+2)-A006583(n+2)`
-/

namespace A006581.P7878172078166860277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℤ) - A006583 (n + 2)

end

end A006581.P7878172078166860277

namespace A006581

/-- `(n+1)*(n+2)-A006583(n+2)` -/
def P7878172078166860277.Spec : Prop :=
  ∀ n, P7878172078166860277.a n = A006581 (n + 2)

end A006581

/-! ## A006581.P11719517410525710068

`A006583(n+2)-A006582(n+2)`
-/

namespace A006581.P11719517410525710068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006583 (n + 2) - A006582 (n + 2)

end

end A006581.P11719517410525710068

namespace A006581

/-- `A006583(n+2)-A006582(n+2)` -/
def P11719517410525710068.Spec : Prop :=
  ∀ n, P11719517410525710068.a n = A006581 (n + 2)

end A006581

/-! ## A006581.P5435289455308379076

`A000217(n+1)-A006582(n+2)/2`
-/

namespace A006581.P5435289455308379076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) : ℚ) - (A006582 (n + 2) : ℚ) / 2

end

end A006581.P5435289455308379076

namespace A006581

/-- `A000217(n+1)-A006582(n+2)/2` -/
def P5435289455308379076.Spec : Prop :=
  ∀ n, P5435289455308379076.a n = (A006581 (n + 2) : ℚ)

end A006581

/-! ## A006581.P7934213511563869272

`A000124(n)-A006582(n+2)/2+n`
-/

namespace A006581.P7934213511563869272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 n : ℚ) - (A006582 (n + 2) : ℚ) / 2 + (n : ℚ)

end

end A006581.P7934213511563869272

namespace A006581

/-- `A000124(n)-A006582(n+2)/2+n` -/
def P7934213511563869272.Spec : Prop :=
  ∀ n, P7934213511563869272.a n = (A006581 (n + 2) : ℚ)

end A006581

/-! ## A006581.P18443931990106668242

`∑[∑[A091512(n+2)-(2*n+3)]]`
-/

namespace A006581.P18443931990106668242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091512 (n + 2) - (2 * n + 3 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006581.P18443931990106668242

namespace A006581

/-- `∑[∑[A091512(n+2)-(2*n+3)]]` -/
def P18443931990106668242.Spec : Prop :=
  ∀ n, P18443931990106668242.a n = A006581 (n + 2)

end A006581

/-! ## A006581.P18062033798657677284

`A090889(n+2)-A000292(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006581

/-- `A090889(n+2)-A000292(n+1)` -/
def P18062033798657677284.Spec : Prop :=
  ∀ n, P18062033798657677284.a n = A006581 (n + 2)

theorem P18062033798657677284.correct : P18062033798657677284.Spec := by
  intro n
  simp only [A006581, Nat.add_sub_cancel]

end A006581

/-! ## A006581.P15540739125579786107

`A249152(n+2)-A099027(n+1)`
-/

namespace A006581.P15540739125579786107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249152 (n + 2) - A099027 (n + 1)

end

end A006581.P15540739125579786107

namespace A006581

/-- `A249152(n+2)-A099027(n+1)` -/
def P15540739125579786107.Spec : Prop :=
  ∀ n, P15540739125579786107.a n = A006581 (n + 2)

end A006581

/-! ## A006581.P1998492546427930331

`∑[A143157(n+2)-(n+2)²]`
-/

namespace A006581.P1998492546427930331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143157 (n + 2) - ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006581.P1998492546427930331

namespace A006581

/-- `∑[A143157(n+2)-(n+2)²]` -/
def P1998492546427930331.Spec : Prop :=
  ∀ n, P1998492546427930331.a n = A006581 (n + 2)

end A006581

/-! ## A006581.P967817622396934009

`record[A008795(n)]-A006582(n+2)/2`
-/

namespace A006581.P967817622396934009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) - (A006582 (n + 2) : ℚ) / 2

end

end A006581.P967817622396934009

namespace A006581

/-- `record[A008795(n)]-A006582(n+2)/2` -/
def P967817622396934009.Spec : Prop :=
  ∀ n, P967817622396934009.a n = (A006581 (n + 2) : ℚ)

end A006581

/-! ## A006581.P1657298166631228388

`A000096(n)+2-A008619(A006582(n+2))`
-/

namespace A006581.P1657298166631228388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (2 - A008619 (A006582 (n + 2)).toNat)

end

end A006581.P1657298166631228388

namespace A006581

/-- `A000096(n)+2-A008619(A006582(n+2))` -/
def P1657298166631228388.Spec : Prop :=
  ∀ n, P1657298166631228388.a n = A006581 (n + 2)

end A006581

/-!
# A006582: a(n) = Sum_{k=1..n-1} k XOR n-k.

The programs for A006582, the canonical program `A006582.P15268451848719006347` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006582 has offset 2).

The definition of A006582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006582.P15268451848719006347

`2*(∑[n+1]-A006581(n+2))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A006582

/-- `2*(∑[n+1]-A006581(n+2))` -/
def P15268451848719006347.Spec : Prop :=
  ∀ n, P15268451848719006347.a n = A006582 (n + 2)

theorem P15268451848719006347.correct : P15268451848719006347.Spec := by
  intro n
  simp only [A006582, Nat.add_sub_cancel]

end A006582

/-! ## A006582.P6643531630107057589

`A006583(n+2)-A006581(n+2)`
-/

namespace A006582.P6643531630107057589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006583 (n + 2) - A006581 (n + 2)

end

end A006582.P6643531630107057589

namespace A006582

/-- `A006583(n+2)-A006581(n+2)` -/
def P6643531630107057589.Spec : Prop :=
  ∀ n, P6643531630107057589.a n = A006582 (n + 2)

end A006582

/-! ## A006582.P5300266437491422929

`∑[∑[A005843(n+2)*A088705(n+2)]]`
-/

namespace A006582.P5300266437491422929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 2) * A088705 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006582.P5300266437491422929

namespace A006582

/-- `∑[∑[A005843(n+2)*A088705(n+2)]]` -/
def P5300266437491422929.Spec : Prop :=
  ∀ n, P5300266437491422929.a n = A006582 (n + 2)

end A006582

/-! ## A006582.P10981808406499057225

`2*(A099027(n+2)-(n+2))`
-/

namespace A006582.P10981808406499057225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A099027 (n + 2) - (n + 2 : ℤ))

end

end A006582.P10981808406499057225

namespace A006582

/-- `2*(A099027(n+2)-(n+2))` -/
def P10981808406499057225.Spec : Prop :=
  ∀ n, P10981808406499057225.a n = A006582 (n + 2)

end A006582

/-! ## A006582.P6491703574672260128

`A028387(n)+1-A005843(A006581(n+2))`
-/

namespace A006582.P6491703574672260128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n + (1 - A005843 (A006581 (n + 2)).toNat)

end

end A006582.P6491703574672260128

namespace A006582

/-- `A028387(n)+1-A005843(A006581(n+2))` -/
def P6491703574672260128.Spec : Prop :=
  ∀ n, P6491703574672260128.a n = A006582 (n + 2)

end A006582

/-! ## A006582.P14345675457987906542

`∑[A005843(n+1)]-A005843(A006581(n+2))`
-/

namespace A006582.P14345675457987906542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005843 (A006581 (n + 2)).toNat

end

end A006582.P14345675457987906542

namespace A006582

/-- `∑[A005843(n+1)]-A005843(A006581(n+2))` -/
def P14345675457987906542.Spec : Prop :=
  ∀ n, P14345675457987906542.a n = A006582 (n + 2)

end A006582

/-! ## A006582.P13861503978020054305

`n+1-(A005843(A006581(n+2))-Δ[A000330(n)])`
-/

namespace A006582.P13861503978020054305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A005843 (A006581 (n + 2)).toNat - (f1 (n + 1) - f1 n))

end

end A006582.P13861503978020054305

namespace A006582

/-- `n+1-(A005843(A006581(n+2))-Δ[A000330(n)])` -/
def P13861503978020054305.Spec : Prop :=
  ∀ n, P13861503978020054305.a n = A006582 (n + 2)

end A006582

/-! ## A006582.P14213270483820245182

`A005843(∑[n+1]-A006581(n+2))`
-/

namespace A006582.P14213270483820245182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A006581 (n + 2)).toNat

end

end A006582.P14213270483820245182

namespace A006582

/-- `A005843(∑[n+1]-A006581(n+2))` -/
def P14213270483820245182.Spec : Prop :=
  ∀ n, P14213270483820245182.a n = A006582 (n + 2)

end A006582

/-! ## A006582.P16783853903046627183

`A005818(A099027(n+2))-A005818(n+2)`
-/

namespace A006582.P16783853903046627183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (A099027 (n + 2)).toNat - A005818 (n + 2)

end

end A006582.P16783853903046627183

namespace A006582

/-- `A005818(A099027(n+2))-A005818(n+2)` -/
def P16783853903046627183.Spec : Prop :=
  ∀ n, P16783853903046627183.a n = A006582 (n + 2)

end A006582

/-! ## A006582.P8672879142725977269

`A014681(A028387(n))-A005843(A006581(n+2))`
-/

namespace A006582.P8672879142725977269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A028387 n).toNat - A005843 (A006581 (n + 2)).toNat

end

end A006582.P8672879142725977269

namespace A006582

/-- `A014681(A028387(n))-A005843(A006581(n+2))` -/
def P8672879142725977269.Spec : Prop :=
  ∀ n, P8672879142725977269.a n = A006582 (n + 2)

end A006582

/-!
# A006583: a(n) = Sum_{k=1..n-1} (k OR n-k).

The programs for A006583, the canonical program `A006583.P17089448504759645171` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006583 has offset 2).

The definition of A006583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006583.P17089448504759645171

`∑[2*(n+1)]-A006581(n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A006583

/-- `∑[2*(n+1)]-A006581(n+2)` -/
def P17089448504759645171.Spec : Prop :=
  ∀ n, P17089448504759645171.a n = A006583 (n + 2)

theorem P17089448504759645171.correct : P17089448504759645171.Spec := by
  intro n
  simp only [A006583, Nat.add_sub_cancel]

end A006583

/-! ## A006583.P12926421518794042864

`∑[n+1]+A006582(n+2)/2`
-/

namespace A006583.P12926421518794042864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A006582 (n + 2) : ℚ) / 2

end

end A006583.P12926421518794042864

namespace A006583

/-- `∑[n+1]+A006582(n+2)/2` -/
def P12926421518794042864.Spec : Prop :=
  ∀ n, P12926421518794042864.a n = (A006583 (n + 2) : ℚ)

end A006583

/-! ## A006583.P3425788453565640895

`A028387(n)+1-A006581(n+2)`
-/

namespace A006583.P3425788453565640895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n + (1 - A006581 (n + 2))

end

end A006583.P3425788453565640895

namespace A006583

/-- `A028387(n)+1-A006581(n+2)` -/
def P3425788453565640895.Spec : Prop :=
  ∀ n, P3425788453565640895.a n = A006583 (n + 2)

end A006583

/-! ## A006583.P8521004688809495054

`floor(A000217(n+1)+A006582(n+2)/2)`
-/

namespace A006583.P8521004688809495054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 (n + 1) : ℚ) + (A006582 (n + 2) : ℚ) / 2⌋

end

end A006583.P8521004688809495054

namespace A006583

/-- `floor(A000217(n+1)+A006582(n+2)/2)` -/
def P8521004688809495054.Spec : Prop :=
  ∀ n, P8521004688809495054.a n = A006583 (n + 2)

end A006583

/-! ## A006583.P11637909298349936701

`A006582(n+2)+A006581(n+2)%A278484(n+1)`
-/

namespace A006583.P11637909298349936701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006582 (n + 2) + Int.tmod (A006581 (n + 2)) (A278484 (n + 1))

end

end A006583.P11637909298349936701

namespace A006583

/-- `A006582(n+2)+A006581(n+2)%A278484(n+1)` -/
def P11637909298349936701.Spec : Prop :=
  ∀ n, P11637909298349936701.a n = A006583 (n + 2)

end A006583

/-! ## A006583.P1550220624210160730

`∑[Δ[A099027(n+1)]+n]`
-/

namespace A006583.P1550220624210160730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099027 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006583.P1550220624210160730

namespace A006583

/-- `∑[Δ[A099027(n+1)]+n]` -/
def P1550220624210160730.Spec : Prop :=
  ∀ n, P1550220624210160730.a n = A006583 (n + 2)

end A006583

/-! ## A006583.P3290414509808487055

`A000027(A000217(n+1)+A006582(n+2)/2)`
-/

namespace A006583.P3290414509808487055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A000217 (n + 1) : ℚ) + (A006582 (n + 2) : ℚ) / 2)).toNat

end

end A006583.P3290414509808487055

namespace A006583

/-- `A000027(A000217(n+1)+A006582(n+2)/2)` -/
def P3290414509808487055.Spec : Prop :=
  ∀ n, P3290414509808487055.a n = A006583 (n + 2)

end A006583

/-! ## A006583.P4720775898715418686

`A000161(A002145(n+1))+A006582(n+2)+A006581(n+2)`
-/

namespace A006583.P4720775898715418686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A002145 (n + 1)).toNat + (A006582 (n + 2) + A006581 (n + 2))

end

end A006583.P4720775898715418686

namespace A006583

/-- `A000161(A002145(n+1))+A006582(n+2)+A006581(n+2)` -/
def P4720775898715418686.Spec : Prop :=
  ∀ n, P4720775898715418686.a n = A006583 (n + 2)

end A006583

/-! ## A006583.P6274320128319722280

`A273943(A006582(n+2))+∑[n+1]`
-/

namespace A006583.P6274320128319722280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A006582 (n + 2)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006583.P6274320128319722280

namespace A006583

/-- `A273943(A006582(n+2))+∑[n+1]` -/
def P6274320128319722280.Spec : Prop :=
  ∀ n, P6274320128319722280.a n = A006583 (n + 2)

end A006583

/-! ## A006583.P7990475732343471142

`A008619(A006582(n+2))+A000096(n)`
-/

namespace A006583.P7990475732343471142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A006582 (n + 2)).toNat + A000096 n

end

end A006583.P7990475732343471142

namespace A006583

/-- `A008619(A006582(n+2))+A000096(n)` -/
def P7990475732343471142.Spec : Prop :=
  ∀ n, P7990475732343471142.a n = A006583 (n + 2)

end A006583

/-! ## A006583.P12012037296771962462

`A004525(A006582(n+2))+A000217(n+1)`
-/

namespace A006583.P12012037296771962462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A006582 (n + 2)).toNat + A000217 (n + 1)

end

end A006583.P12012037296771962462

namespace A006583

/-- `A004525(A006582(n+2))+A000217(n+1)` -/
def P12012037296771962462.Spec : Prop :=
  ∀ n, P12012037296771962462.a n = A006583 (n + 2)

end A006583

/-!
# A006584: If n mod 2 = 0 then n*(n^2-4)/12 else n*(n^2-1)/12.

The programs for A006584, the canonical program `A006584.P8248651797876334347` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006584 has offset 0).

The definition of A006584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006584.P8248651797876334347

`∑[2*C(ceil(n/2), 2)]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006584

/-- `∑[2*C(ceil(n/2), 2)]` -/
def P8248651797876334347.Spec : Prop :=
  ∀ n, (P8248651797876334347.a n : ℤ) = A006584 n

theorem P8248651797876334347.correct : P8248651797876334347.Spec := by
  intro n
  simp only [A006584]

end A006584

/-! ## A006584.P7260819995604302687

`∑[∑[(n-1)*n%2]]`
-/

namespace A006584.P7260819995604302687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006584.P7260819995604302687

namespace A006584

/-- `∑[∑[(n-1)*n%2]]` -/
def P7260819995604302687.Spec : Prop :=
  ∀ n, P7260819995604302687.a n = A006584 n

end A006584

/-! ## A006584.P11216384176340136255

`∑[∑[(n-1)*and(1, n)]]`
-/

namespace A006584.P11216384176340136255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.land 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006584.P11216384176340136255

namespace A006584

/-- `∑[∑[(n-1)*and(1, n)]]` -/
def P11216384176340136255.Spec : Prop :=
  ∀ n, P11216384176340136255.a n = A006584 n

end A006584

/-! ## A006584.P13574798889675541599

`∑[∑[n^and(1, n)-1]]`
-/

namespace A006584.P13574798889675541599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ Nat.land 1 n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006584.P13574798889675541599

namespace A006584

/-- `∑[∑[n^and(1, n)-1]]` -/
def P13574798889675541599.Spec : Prop :=
  ∀ n, P13574798889675541599.a n = A006584 n

end A006584

/-! ## A006584.P4155484775763960288

`∑[∑[xor(1, n)%(n+1)]]`
-/

namespace A006584.P4155484775763960288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n % (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006584.P4155484775763960288

namespace A006584

/-- `∑[∑[xor(1, n)%(n+1)]]` -/
def P4155484775763960288.Spec : Prop :=
  ∀ n, (P4155484775763960288.a n : ℤ) = A006584 n

end A006584

/-! ## A006584.P14096614945472335457

`∑[∑[gcd(n, or(1, n))-1]]`
-/

namespace A006584.P14096614945472335457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (Nat.lor 1 n) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006584.P14096614945472335457

namespace A006584

/-- `∑[∑[gcd(n, or(1, n))-1]]` -/
def P14096614945472335457.Spec : Prop :=
  ∀ n, P14096614945472335457.a n = A006584 n

end A006584

/-! ## A006584.P16537810571130543670

`∑[∑[floor(n-n^(-1)^n)]]`
-/

namespace A006584.P16537810571130543670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) - (n : ℚ) ^ ((-1) ^ n : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006584.P16537810571130543670

namespace A006584

/-- `∑[∑[floor(n-n^(-1)^n)]]` -/
def P16537810571130543670.Spec : Prop :=
  ∀ n, P16537810571130543670.a n = A006584 n

end A006584

/-! ## A006584.P12332501715378743942

`n/3*∑[a(n-2)+1]` with `a(0)=-1, a(1)=1`
-/

namespace A006584.P12332501715378743942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A006584.P12332501715378743942

namespace A006584

/-- `n/3*∑[a(n-2)+1]` -/
def P12332501715378743942.Spec : Prop :=
  ∀ n, P12332501715378743942.a n = (A006584 n : ℚ)

end A006584

/-! ## A006584.P7715012952879466454

`n*∑[∑[1-a(n-1)]/3]` with `a(0)=-1`
-/

namespace A006584.P7715012952879466454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006584.P7715012952879466454

namespace A006584

/-- `n*∑[∑[1-a(n-1)]/3]` -/
def P7715012952879466454.Spec : Prop :=
  ∀ n, P7715012952879466454.a n = (A006584 n : ℚ)

end A006584

/-! ## A006584.P12847913636699894408

`floor(a(n-2)+(1-n)²/2)` with `a(0)=0, a(1)=0`
-/

namespace A006584.P12847913636699894408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌊(a (n - 2) : ℚ) + ((1 - (n : ℤ)) ^ 2 : ℚ) / 2⌋

end

end A006584.P12847913636699894408

namespace A006584

/-- `floor(a(n-2)+(1-n)²/2)` -/
def P12847913636699894408.Spec : Prop :=
  ∀ n, P12847913636699894408.a n = A006584 n

end A006584

/-! ## A006584.P3476088605822334727

`∑[floor((1-n)²/2)]-a(n-1)` with `a(0)=0`
-/

namespace A006584.P3476088605822334727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 - (n : ℤ)) ^ 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A006584.P3476088605822334727

namespace A006584

/-- `∑[floor((1-n)²/2)]-a(n-1)` -/
def P3476088605822334727.Spec : Prop :=
  ∀ n, P3476088605822334727.a n = A006584 n

end A006584

/-! ## A006584.P16904067886358517153

`a(n-2)-∑[a(n-2)-2]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A006584.P16904067886358517153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006584.P16904067886358517153

namespace A006584

/-- `a(n-2)-∑[a(n-2)-2]` -/
def P16904067886358517153.Spec : Prop :=
  ∀ n, P16904067886358517153.a n = A006584 n

end A006584

/-! ## A006584.P16828034710268541293

`A361275(n)-1`
-/

namespace A006584.P16828034710268541293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361275 n - 1

end

end A006584.P16828034710268541293

namespace A006584

/-- `A361275(n)-1` -/
def P16828034710268541293.Spec : Prop :=
  ∀ n, P16828034710268541293.a n = A006584 n

end A006584

/-! ## A006584.P5088589493512904051

`(A213389(n)-n)/3`
-/

namespace A006584.P5088589493512904051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213389 n - (n : ℤ) : ℚ) / 3

end

end A006584.P5088589493512904051

namespace A006584

/-- `(A213389(n)-n)/3` -/
def P5088589493512904051.Spec : Prop :=
  ∀ n, P5088589493512904051.a n = (A006584 n : ℚ)

end A006584

/-! ## A006584.P5773509860950884477

`A005900(n)-A061349(n)`
-/

namespace A006584.P5773509860950884477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n - A061349 n

end

end A006584.P5773509860950884477

namespace A006584

/-- `A005900(n)-A061349(n)` -/
def P5773509860950884477.Spec : Prop :=
  ∀ n, P5773509860950884477.a n = A006584 n

end A006584

/-! ## A006584.P9216541325823587850

`A084570(n)-A005993(n)`
-/

namespace A006584.P9216541325823587850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084570 n - A005993 n

end

end A006584.P9216541325823587850

namespace A006584

/-- `A084570(n)-A005993(n)` -/
def P9216541325823587850.Spec : Prop :=
  ∀ n, P9216541325823587850.a n = A006584 n

end A006584

/-! ## A006584.P15512588406876271126

`A005744(n)-A085787(n)`
-/

namespace A006584.P15512588406876271126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005744 n - A085787 n

end

end A006584.P15512588406876271126

namespace A006584

/-- `A005744(n)-A085787(n)` -/
def P15512588406876271126.Spec : Prop :=
  ∀ n, P15512588406876271126.a n = A006584 n

end A006584

/-! ## A006584.P1541820748786845861

`A212578(n)-A006527(n)`
-/

namespace A006584.P1541820748786845861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212578 n - A006527 n

end

end A006584.P1541820748786845861

namespace A006584

/-- `A212578(n)-A006527(n)` -/
def P1541820748786845861.Spec : Prop :=
  ∀ n, P1541820748786845861.a n = A006584 n

end A006584

/-! ## A006584.P390463469703736811

`A266464(n)-A101881(n)`
-/

namespace A006584.P390463469703736811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 n - A101881 n

end

end A006584.P390463469703736811

namespace A006584

/-- `A266464(n)-A101881(n)` -/
def P390463469703736811.Spec : Prop :=
  ∀ n, P390463469703736811.a n = A006584 n

end A006584

/-! ## A006584.P4917087270040391232

`A325517(n)-A071239(n)`
-/

namespace A006584.P4917087270040391232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325517 n - A071239 n

end

end A006584.P4917087270040391232

namespace A006584

/-- `A325517(n)-A071239(n)` -/
def P4917087270040391232.Spec : Prop :=
  ∀ n, P4917087270040391232.a n = A006584 n

end A006584

/-!
# A006585: Egyptian fractions: number of solutions to 1 = 1/x_1 + ... + 1/x_n in positive integers x_1 < ... < x_n.

The programs for A006585, there is no canonical definition to state claims against.
-/

/-! ## A006585.P1890300329339161197

`A280520(∑[floor(sqrt(n))!])`
-/

namespace A006585.P1890300329339161197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.sqrt n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280520 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006585.P1890300329339161197

/-! ## A006585.P11299454251889138810

`A280520(∑[floor(sqrt(n))]+1)`
-/

namespace A006585.P11299454251889138810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280520 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006585.P11299454251889138810

/-! ## A006585.P4144207379942355609

`A379452(n+1)/record[A098361(n)]`
-/

namespace A006585.P4144207379942355609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379452 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A006585.P4144207379942355609

/-! ## A006585.P5048365838186866272

`A089170(n)*A280520(A002093(n+1))`
-/

namespace A006585.P5048365838186866272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089170 n * A280520 (A002093 (n + 1)).toNat

end

end A006585.P5048365838186866272

/-!
# A006586: a(n) = Sum_{k=1..n} floor((2*n-1)/(2*k+1)).

The programs for A006586, the canonical program `A006586.P15091628275662653035` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006586 has offset 2).

The definition of A006586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006586.P15091628275662653035

`A095374(n+1)+A077025(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A006586

/-- `A095374(n+1)+A077025(n+1)` -/
def P15091628275662653035.Spec : Prop :=
  ∀ n, P15091628275662653035.a n = A006586 (n + 2)

theorem P15091628275662653035.correct : P15091628275662653035.Spec := by
  intro n
  simp only [A006586, Nat.add_sub_cancel]

end A006586

/-! ## A006586.P14053176078390830771

`A006591(n+2)-(n+2)`
-/

namespace A006586.P14053176078390830771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006591 (n + 2) - (n + 2 : ℤ)

end

end A006586.P14053176078390830771

namespace A006586

/-- `A006591(n+2)-(n+2)` -/
def P14053176078390830771.Spec : Prop :=
  ∀ n, P14053176078390830771.a n = A006586 (n + 2)

end A006586

/-! ## A006586.P14341407729664150394

`A077025(n+2)-A069283(n+2)`
-/

namespace A006586.P14341407729664150394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077025 (n + 2) - A069283 (n + 2)

end

end A006586.P14341407729664150394

namespace A006586

/-- `A077025(n+2)-A069283(n+2)` -/
def P14341407729664150394.Spec : Prop :=
  ∀ n, P14341407729664150394.a n = A006586 (n + 2)

end A006586

/-! ## A006586.P11375661731877371126

`A006218(2*n+3)-A106633(n+1)`
-/

namespace A006586.P11375661731877371126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (2 * n + 3) - A106633 (n + 1)

end

end A006586.P11375661731877371126

namespace A006586

/-- `A006218(2*n+3)-A106633(n+1)` -/
def P11375661731877371126.Spec : Prop :=
  ∀ n, P11375661731877371126.a n = A006586 (n + 2)

end A006586

/-! ## A006586.P6661382063513659861

`A056549(n+1)+A351355(n+1)-A351362(n+2)`
-/

namespace A006586.P6661382063513659861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056549 (n + 1) + (A351355 (n + 1) - A351362 (n + 2))

end

end A006586.P6661382063513659861

namespace A006586

/-- `A056549(n+1)+A351355(n+1)-A351362(n+2)` -/
def P6661382063513659861.Spec : Prop :=
  ∀ n, P6661382063513659861.a n = A006586 (n + 2)

end A006586

/-! ## A006586.P8921678418684262344

`A077025(n+2)+A351355(n+2)-A351362(n+2)`
-/

namespace A006586.P8921678418684262344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077025 (n + 2) + (A351355 (n + 2) - A351362 (n + 2))

end

end A006586.P8921678418684262344

namespace A006586

/-- `A077025(n+2)+A351355(n+2)-A351362(n+2)` -/
def P8921678418684262344.Spec : Prop :=
  ∀ n, P8921678418684262344.a n = A006586 (n + 2)

end A006586

/-! ## A006586.P8822743425041612252

`A056548(n+2)-(2*n+3)`
-/

namespace A006586.P8822743425041612252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056548 (n + 2) - (2 * n + 3 : ℤ)

end

end A006586.P8822743425041612252

namespace A006586

/-- `A056548(n+2)-(2*n+3)` -/
def P8822743425041612252.Spec : Prop :=
  ∀ n, P8822743425041612252.a n = A006586 (n + 2)

end A006586

/-! ## A006586.P8681399564158666688

`A248517(2*n+3)`
-/

namespace A006586.P8681399564158666688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 (2 * n + 3)

end

end A006586.P8681399564158666688

namespace A006586

/-- `A248517(2*n+3)` -/
def P8681399564158666688.Spec : Prop :=
  ∀ n, P8681399564158666688.a n = A006586 (n + 2)

end A006586

/-! ## A006586.P14295106454858047819

`record[A248517(n)^(n%2)]`
-/

namespace A006586.P14295106454858047819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006586.P14295106454858047819

namespace A006586

/-- `record[A248517(n)^(n%2)]` -/
def P14295106454858047819.Spec : Prop :=
  ∀ n, P14295106454858047819.a n = A006586 (n + 2)

end A006586

/-! ## A006586.P12558264909577911486

`or(char[27], A248517(Δ[(n+1)²]))`
-/

namespace A006586.P12558264909577911486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A248517 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat)

end

end A006586.P12558264909577911486

namespace A006586

/-- `or(char[27], A248517(Δ[(n+1)²]))` -/
def P12558264909577911486.Spec : Prop :=
  ∀ n, P12558264909577911486.a n = A006586 (n + 2)

end A006586

/-! ## A006586.P9790607026162158101

`∑[Δ[A060831(2*n+1)]-2]`
-/

namespace A006586.P9790607026162158101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006586.P9790607026162158101

namespace A006586

/-- `∑[Δ[A060831(2*n+1)]-2]` -/
def P9790607026162158101.Spec : Prop :=
  ∀ n, P9790607026162158101.a n = A006586 (n + 2)

end A006586

/-! ## A006586.P6791203384067978841

`A060831(2*n+3)-(2*n+3)`
-/

namespace A006586.P6791203384067978841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (2 * n + 3) - (2 * n + 3 : ℤ)

end

end A006586.P6791203384067978841

namespace A006586

/-- `A060831(2*n+3)-(2*n+3)` -/
def P6791203384067978841.Spec : Prop :=
  ∀ n, P6791203384067978841.a n = A006586 (n + 2)

end A006586

/-! ## A006586.P2995754479287889217

`record[A248517(A215495(n)+2)]`
-/

namespace A006586.P2995754479287889217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 (A215495 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006586.P2995754479287889217

namespace A006586

/-- `record[A248517(A215495(n)+2)]` -/
def P2995754479287889217.Spec : Prop :=
  ∀ n, P2995754479287889217.a n = A006586 (n + 2)

end A006586

/-! ## A006586.P4495810860113856937

`record[A248517(A000265(n+3))]`
-/

namespace A006586.P4495810860113856937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 (A000265 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006586.P4495810860113856937

namespace A006586

/-- `record[A248517(A000265(n+3))]` -/
def P4495810860113856937.Spec : Prop :=
  ∀ n, P4495810860113856937.a n = A006586 (n + 2)

end A006586

/-! ## A006586.P11022936930373539420

`record[A248517(n)^A088705(n)]`
-/

namespace A006586.P11022936930373539420
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248517 n : ℚ) ^ (A088705 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006586.P11022936930373539420

namespace A006586

/-- `record[A248517(n)^A088705(n)]` -/
def P11022936930373539420.Spec : Prop :=
  ∀ n, P11022936930373539420.a n = (A006586 (n + 2) : ℚ)

end A006586

/-! ## A006586.P16701067703952404410

`A000027(A248517(Δ[(n+1)²]))`
-/

namespace A006586.P16701067703952404410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A248517 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A006586.P16701067703952404410

namespace A006586

/-- `A000027(A248517(Δ[(n+1)²]))` -/
def P16701067703952404410.Spec : Prop :=
  ∀ n, P16701067703952404410.a n = A006586 (n + 2)

end A006586

/-! ## A006586.P8828535716828736692

`record[A215495(n)-(n-A248517(n))]`
-/

namespace A006586.P8828535716828736692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215495 n - ((n : ℤ) - A248517 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006586.P8828535716828736692

namespace A006586

/-- `record[A215495(n)-(n-A248517(n))]` -/
def P8828535716828736692.Spec : Prop :=
  ∀ n, P8828535716828736692.a n = A006586 (n + 2)

end A006586

/-! ## A006586.P3781800538053100045

`A002541(2*n+3)-A006218(n+1)`
-/

namespace A006586.P3781800538053100045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (2 * n + 3) - A006218 (n + 1)

end

end A006586.P3781800538053100045

namespace A006586

/-- `A002541(2*n+3)-A006218(n+1)` -/
def P3781800538053100045.Spec : Prop :=
  ∀ n, P3781800538053100045.a n = A006586 (n + 2)

end A006586

/-! ## A006586.P8961471533873825603

`A006218(n+1)-A075997(2*n+3)`
-/

namespace A006586.P8961471533873825603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - A075997 (2 * n + 3)

end

end A006586.P8961471533873825603

namespace A006586

/-- `A006218(n+1)-A075997(2*n+3)` -/
def P8961471533873825603.Spec : Prop :=
  ∀ n, P8961471533873825603.a n = A006586 (n + 2)

end A006586

/-! ## A006586.P162060947242618258

`A327326(2*n+3)-A327326(n+1)`
-/

namespace A006586.P162060947242618258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327326 (2 * n + 3) - A327326 (n + 1)

end

end A006586.P162060947242618258

namespace A006586

/-- `A327326(2*n+3)-A327326(n+1)` -/
def P162060947242618258.Spec : Prop :=
  ∀ n, P162060947242618258.a n = A006586 (n + 2)

end A006586

/-!
# A006587: a(n) = 3*2^(2*n)*(3*n)!/((2*n)!*n!).

The programs for A006587, the canonical program `A006587.P7239323280343436526` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006587 has offset 0).

The definition of A006587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006587.P6159436106581621394

`3*A006588(n)`
-/

namespace A006587.P6159436106581621394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006588 n

end

end A006587.P6159436106581621394

namespace A006587

/-- `3*A006588(n)` -/
def P6159436106581621394.Spec : Prop :=
  ∀ n, P6159436106581621394.a n = A006587 n

end A006587

/-! ## A006587.P7239323280343436526

`3*2^(2*n)*(3*n)!/((2*n)!*n!)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006587

/-- `3*2^(2*n)*(3*n)!/((2*n)!*n!)` -/
def P7239323280343436526.Spec : Prop :=
  ∀ n, P7239323280343436526.a n = (A006587 n : ℚ)

end A006587

/-! ## A006587.P1081029370258104423

`3*C(3*n, n)*4^n`
-/

namespace A006587.P1081029370258104423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (3 * n) n * 4 ^ n

end

end A006587.P1081029370258104423

namespace A006587

/-- `3*C(3*n, n)*4^n` -/
def P1081029370258104423.Spec : Prop :=
  ∀ n, (P1081029370258104423.a n : ℤ) = A006587 n

end A006587

/-! ## A006587.P12405370621568407436

`3*A109388(3*n)`
-/

namespace A006587.P12405370621568407436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A109388 (3 * n)

end

end A006587.P12405370621568407436

namespace A006587

/-- `3*A109388(3*n)` -/
def P12405370621568407436.Spec : Prop :=
  ∀ n, P12405370621568407436.a n = A006587 n

end A006587

/-! ## A006587.P6562640654615935430

`Δ[4^n]*A005809(n)`
-/

namespace A006587.P6562640654615935430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A005809 n

end

end A006587.P6562640654615935430

namespace A006587

/-- `Δ[4^n]*A005809(n)` -/
def P6562640654615935430.Spec : Prop :=
  ∀ n, P6562640654615935430.a n = A006587 n

end A006587

/-! ## A006587.P6090425490904776549

`C(3*n, n)*Δ[A000079(n)²]`
-/

namespace A006587.P6090425490904776549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℤ) * (f1 (n + 1) - f1 n)

end

end A006587.P6090425490904776549

namespace A006587

/-- `C(3*n, n)*Δ[A000079(n)²]` -/
def P6090425490904776549.Spec : Prop :=
  ∀ n, P6090425490904776549.a n = A006587 n

end A006587

/-! ## A006587.P5131624286408413576

`C(3*n, n)*Δ[A000225(2*n)]`
-/

namespace A006587.P5131624286408413576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℤ) * (f1 (n + 1) - f1 n)

end

end A006587.P5131624286408413576

namespace A006587

/-- `C(3*n, n)*Δ[A000225(2*n)]` -/
def P5131624286408413576.Spec : Prop :=
  ∀ n, P5131624286408413576.a n = A006587 n

end A006587

/-! ## A006587.P8402561642031232727

`(1/2+3*n+1)*A098272(n)`
-/

namespace A006587.P8402561642031232727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 + (3 * n + 1 : ℚ)) * (A098272 n : ℚ)

end

end A006587.P8402561642031232727

namespace A006587

/-- `(1/2+3*n+1)*A098272(n)` -/
def P8402561642031232727.Spec : Prop :=
  ∀ n, P8402561642031232727.a n = (A006587 n : ℚ)

end A006587

/-! ## A006587.P15912404031205874197

`A005809(n)*A164346(n)`
-/

namespace A006587.P15912404031205874197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n * A164346 n

end

end A006587.P15912404031205874197

namespace A006587

/-- `A005809(n)*A164346(n)` -/
def P15912404031205874197.Spec : Prop :=
  ∀ n, P15912404031205874197.a n = A006587 n

end A006587

/-!
# A006588: a(n) = 4^n*(3*n)!/((2*n)!*n!).

The programs for A006588, the canonical program `A006588.P10147441929737972849` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006588 has offset 0).

The definition of A006588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006588.P10147441929737972849

`A000302(n)*A005809(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A006588

/-- `A000302(n)*A005809(n)` -/
def P10147441929737972849.Spec : Prop :=
  ∀ n, P10147441929737972849.a n = A006588 n

theorem P10147441929737972849.correct : P10147441929737972849.Spec := by
  intro n
  simp only [A006588]

end A006588

/-! ## A006588.P6234002771419046513

`4^n*(3*n)!/((2*n)!*n!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006588.P6234002771419046513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n * Nat.factorial (3 * n) : ℚ) / (Nat.factorial (2 * n) * Nat.factorial n : ℚ)

end

end A006588.P6234002771419046513

namespace A006588

/-- `4^n*(3*n)!/((2*n)!*n!)` -/
def P6234002771419046513.Spec : Prop :=
  ∀ n, P6234002771419046513.a n = (A006588 n : ℚ)

end A006588

/-! ## A006588.P4815424990337662522

`4^n*C(3*n, n)`
-/

namespace A006588.P4815424990337662522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * Nat.choose (3 * n) n

end

end A006588.P4815424990337662522

namespace A006588

/-- `4^n*C(3*n, n)` -/
def P4815424990337662522.Spec : Prop :=
  ∀ n, (P4815424990337662522.a n : ℤ) = A006588 n

end A006588

/-! ## A006588.P15696132818783507654

`A109388(3*n)`
-/

namespace A006588.P15696132818783507654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109388 (3 * n)

end

end A006588.P15696132818783507654

namespace A006588

/-- `A109388(3*n)` -/
def P15696132818783507654.Spec : Prop :=
  ∀ n, P15696132818783507654.a n = A006588 n

end A006588

/-! ## A006588.P4815365837717078105

`A006587(n)/3`
-/

namespace A006588.P4815365837717078105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006587 n : ℚ) / 3

end

end A006588.P4815365837717078105

namespace A006588

/-- `A006587(n)/3` -/
def P4815365837717078105.Spec : Prop :=
  ∀ n, P4815365837717078105.a n = (A006588 n : ℚ)

end A006588

/-! ## A006588.P9497828020155458638

`2^n*A228484(n)`
-/

namespace A006588.P9497828020155458638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A228484 n

end

end A006588.P9497828020155458638

namespace A006588

/-- `2^n*A228484(n)` -/
def P9497828020155458638.Spec : Prop :=
  ∀ n, P9497828020155458638.a n = A006588 n

end A006588

/-! ## A006588.P5828597478610568399

`4^n*A269956(∑[n])`
-/

namespace A006588.P5828597478610568399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A269956 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006588.P5828597478610568399

namespace A006588

/-- `4^n*A269956(∑[n])` -/
def P5828597478610568399.Spec : Prop :=
  ∀ n, P5828597478610568399.a n = A006588 n

end A006588

/-! ## A006588.P2821520414994391155

`(1/2+n)*A098272(n)`
-/

namespace A006588.P2821520414994391155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 + (n : ℚ)) * (A098272 n : ℚ)

end

end A006588.P2821520414994391155

namespace A006588

/-- `(1/2+n)*A098272(n)` -/
def P2821520414994391155.Spec : Prop :=
  ∀ n, P2821520414994391155.a n = (A006588 n : ℚ)

end A006588

/-! ## A006588.P7606966929670994934

`C(3*n, n)*Δ[A002450(n)]`
-/

namespace A006588.P7606966929670994934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℤ) * (f1 (n + 1) - f1 n)

end

end A006588.P7606966929670994934

namespace A006588

/-- `C(3*n, n)*Δ[A002450(n)]` -/
def P7606966929670994934.Spec : Prop :=
  ∀ n, P7606966929670994934.a n = A006588 n

end A006588

/-! ## A006588.P568405043718105668

`A373547(∑[4*n])`
-/

namespace A006588.P568405043718105668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373547 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006588.P568405043718105668

namespace A006588

/-- `A373547(∑[4*n])` -/
def P568405043718105668.Spec : Prop :=
  ∀ n, P568405043718105668.a n = A006588 n

end A006588

/-!
# A006589: a(n) = (n+3)*2^n - 1.

The programs for A006589, there is no canonical definition to state claims against.
-/

/-! ## A006589.P4487210167540090615

`5*a(n-1)-8*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=2, a(2)=7`
-/

namespace A006589.P4487210167540090615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 7] fun n a =>
  5 * a (n - 1) - 8 * a (n - 2) + 4 * a (n - 3)

end

end A006589.P4487210167540090615

/-! ## A006589.P12604708025424048104

`(n+2)*2^(n-1)-1`
-/

namespace A006589.P12604708025424048104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1

end

end A006589.P12604708025424048104

/-! ## A006589.P9133596215243519244

`∑[4*(a(n-1)-a(n-2))]` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A006589.P9133596215243519244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006589.P9133596215243519244

/-! ## A006589.P237439844190288144

`4*(a(n-1)-(a(n-2)+1/4))` with `a(0)=0, a(1)=2`
-/

namespace A006589.P237439844190288144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 * (a (n - 1) - (a (n - 2) + (1 : ℚ) / 4))

end

end A006589.P237439844190288144

/-! ## A006589.P4413776969538031896

`4*(a(n-1)-a(n-2)-1/4)` with `a(0)=0, a(1)=2`
-/

namespace A006589.P4413776969538031896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 * (a (n - 1) - a (n - 2) - (1 : ℚ) / 4)

end

end A006589.P4413776969538031896

/-! ## A006589.P6580415299368154792

`abs(1-A001792(n))`
-/

namespace A006589.P6580415299368154792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A001792 n|

end

end A006589.P6580415299368154792

/-! ## A006589.P14095677865980930168

`record[A211164(n)-1]`
-/

namespace A006589.P14095677865980930168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211164 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006589.P14095677865980930168

/-! ## A006589.P16998516761462090646

`abs(1-∑[A045623(n)])`
-/

namespace A006589.P16998516761462090646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A006589.P16998516761462090646

/-! ## A006589.P1873251820416946283

`abs(1-A211164(2*n+1))`
-/

namespace A006589.P1873251820416946283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A211164 (2 * n + 1)|

end

end A006589.P1873251820416946283

/-! ## A006589.P16325245923317817408

`abs(A000079(n)-A047859(n))`
-/

namespace A006589.P16325245923317817408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A047859 n|

end

end A006589.P16325245923317817408

/-! ## A006589.P5013020516500245605

`∑[A045623(n)%A001792(n)]`
-/

namespace A006589.P5013020516500245605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045623 n) (A001792 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006589.P5013020516500245605

/-! ## A006589.P7451037526640274144

`or(A001792(n)-1, A024495(n))`
-/

namespace A006589.P7451037526640274144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001792 n - 1) (A024495 n)

end

end A006589.P7451037526640274144

/-! ## A006589.P294775750530737584

`Δ[A001787(n)-n]`
-/

namespace A006589.P294775750530737584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006589.P294775750530737584

/-! ## A006589.P5776439645759008975

`(A260006(n)+n)/2`
-/

namespace A006589.P5776439645759008975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260006 n + (n : ℤ) : ℚ) / 2

end

end A006589.P5776439645759008975

/-! ## A006589.P16059852457891403076

`Δ[n*(A011782(n)-1)]`
-/

namespace A006589.P16059852457891403076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A011782 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006589.P16059852457891403076

/-! ## A006589.P13732771206146157802

`Δ[n*(A131577(n)-1)]`
-/

namespace A006589.P13732771206146157802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A131577 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006589.P13732771206146157802

/-! ## A006589.P13597790010325535438

`Δ[n*(A094373(n)-2)]`
-/

namespace A006589.P13597790010325535438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A094373 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006589.P13597790010325535438

/-! ## A006589.P15700475659333032890

`Δ[n*A116601(2*n)]`
-/

namespace A006589.P15700475659333032890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A116601 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006589.P15700475659333032890

/-!
# A006590: a(n) = Sum_{k=1..n} ceiling(n/k).

The programs for A006590, the canonical program `A006590.P2074768882159636940` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006590 has offset 1).

The definition of A006590 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A006590.P2074768882159636940

`a(n-1)+A000005(n)+1` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A006590

/-- `a(n-1)+A000005(n)+1` -/
def P2074768882159636940.Spec : Prop :=
  ∀ n, P2074768882159636940.a n = A006590 (n + 1)

theorem P2074768882159636940.correct : P2074768882159636940.Spec := by
  intro n
  simp only [A006590, Nat.add_sub_cancel]

end A006590

/-! ## A006590.P5254824476516673269

`A161886(n+1)-A000005(n+1)+1`
-/

namespace A006590.P5254824476516673269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161886 (n + 1) - A000005 (n + 1) + 1

end

end A006590.P5254824476516673269

namespace A006590

/-- `A161886(n+1)-A000005(n+1)+1` -/
def P5254824476516673269.Spec : Prop :=
  ∀ n, P5254824476516673269.a n = A006590 (n + 1)

end A006590

/-! ## A006590.P5193897154442114046

`∑[∏{e}[n, #+1]]+n`
-/

namespace A006590.P5193897154442114046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A006590.P5193897154442114046

namespace A006590

/-- `∑[∏{e}[n, #+1]]+n` -/
def P5193897154442114046.Spec : Prop :=
  ∀ n, (P5193897154442114046.a n : ℤ) = A006590 (n + 1)

end A006590

/-! ## A006590.P9890650194520719085

`∑[∑{d}[n, gcd(2, gcd(3, #))]+1]`
-/

namespace A006590.P9890650194520719085
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd 2 (Nat.gcd 3 d) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006590.P9890650194520719085

namespace A006590

/-- `∑[∑{d}[n, gcd(2, gcd(3, #))]+1]` -/
def P9890650194520719085.Spec : Prop :=
  ∀ n, (P9890650194520719085.a n : ℤ) = A006590 (n + 1)

end A006590

/-! ## A006590.P17857931453041129342

`∑[∑{d}[n, ceil(acot(#))]]+1+n`
-/

namespace A006590.P17857931453041129342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A006590.P17857931453041129342

namespace A006590

/-- `∑[∑{d}[n, ceil(acot(#))]]+1+n` -/
def P17857931453041129342.Spec : Prop :=
  ∀ n, P17857931453041129342.a n = A006590 (n + 1)

end A006590

/-! ## A006590.P15970739417986109309

`A054519(n)+n`
-/

namespace A006590.P15970739417986109309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n + (n : ℤ)

end

end A006590.P15970739417986109309

namespace A006590

/-- `A054519(n)+n` -/
def P15970739417986109309.Spec : Prop :=
  ∀ n, P15970739417986109309.a n = A006590 (n + 1)

end A006590

/-! ## A006590.P7169307442025496264

`A106633(n)-n`
-/

namespace A006590.P7169307442025496264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106633 n - (n : ℤ)

end

end A006590.P7169307442025496264

namespace A006590

/-- `A106633(n)-n` -/
def P7169307442025496264.Spec : Prop :=
  ∀ n, P7169307442025496264.a n = A006590 (n + 1)

end A006590

/-! ## A006590.P16008205108577550156

`(A226355(n)+3)/4`
-/

namespace A006590.P16008205108577550156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226355 n + 3 : ℚ) / 4

end

end A006590.P16008205108577550156

namespace A006590

/-- `(A226355(n)+3)/4` -/
def P16008205108577550156.Spec : Prop :=
  ∀ n, P16008205108577550156.a n = (A006590 (n + 1) : ℚ)

end A006590

/-! ## A006590.P17251419432375682699

`n+1+A006218(n)`
-/

namespace A006590.P17251419432375682699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (1 + A006218 n)

end

end A006590.P17251419432375682699

namespace A006590

/-- `n+1+A006218(n)` -/
def P17251419432375682699.Spec : Prop :=
  ∀ n, P17251419432375682699.a n = A006590 (n + 1)

end A006590

/-! ## A006590.P5301693485627766077

`∑{d}[n+1, A332683(#)]`
-/

namespace A006590.P5301693485627766077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A332683 d

end

end A006590.P5301693485627766077

namespace A006590

/-- `∑{d}[n+1, A332683(#)]` -/
def P5301693485627766077.Spec : Prop :=
  ∀ n, P5301693485627766077.a n = A006590 (n + 1)

end A006590

/-! ## A006590.P5197613608540365105

`∑[A032741(n)+2]-1`
-/

namespace A006590.P5197613608540365105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A006590.P5197613608540365105

namespace A006590

/-- `∑[A032741(n)+2]-1` -/
def P5197613608540365105.Spec : Prop :=
  ∀ n, P5197613608540365105.a n = A006590 (n + 1)

end A006590

/-! ## A006590.P7214600024810200339

`A350102(n+1)-1+n`
-/

namespace A006590.P7214600024810200339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350102 (n + 1) - 1 + (n : ℤ)

end

end A006590.P7214600024810200339

namespace A006590

/-- `A350102(n+1)-1+n` -/
def P7214600024810200339.Spec : Prop :=
  ∀ n, P7214600024810200339.a n = A006590 (n + 1)

end A006590

/-! ## A006590.P9902768307172493648

`A334954(n)+a(n-1)` with `a(0)=1`
-/

namespace A006590.P9902768307172493648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A334954 n + a (n - 1)

end

end A006590.P9902768307172493648

namespace A006590

/-- `A334954(n)+a(n-1)` -/
def P9902768307172493648.Spec : Prop :=
  ∀ n, P9902768307172493648.a n = A006590 (n + 1)

end A006590

/-! ## A006590.P10324719958554619965

`∑[A000005(C(2, n+2)+n)]+n`
-/

namespace A006590.P10324719958554619965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A006590.P10324719958554619965

namespace A006590

/-- `∑[A000005(C(2, n+2)+n)]+n` -/
def P10324719958554619965.Spec : Prop :=
  ∀ n, P10324719958554619965.a n = A006590 (n + 1)

end A006590

/-! ## A006590.P7194384753124327808

`A132106(n)+A028391(n)`
-/

namespace A006590.P7194384753124327808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132106 n + A028391 n

end

end A006590.P7194384753124327808

namespace A006590

/-- `A132106(n)+A028391(n)` -/
def P7194384753124327808.Spec : Prop :=
  ∀ n, P7194384753124327808.a n = A006590 (n + 1)

end A006590

/-! ## A006590.P16374204584539590539

`A325459(n)+A008486(n)`
-/

namespace A006590.P16374204584539590539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n + A008486 n

end

end A006590.P16374204584539590539

namespace A006590

/-- `A325459(n)+A008486(n)` -/
def P16374204584539590539.Spec : Prop :=
  ∀ n, P16374204584539590539.a n = A006590 (n + 1)

end A006590

/-! ## A006590.P2626966495306057478

`∑[A000005(A028310(n))]+n`
-/

namespace A006590.P2626966495306057478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A006590.P2626966495306057478

namespace A006590

/-- `∑[A000005(A028310(n))]+n` -/
def P2626966495306057478.Spec : Prop :=
  ∀ n, P2626966495306057478.a n = A006590 (n + 1)

end A006590

/-! ## A006590.P2940186601124918651

`∑[A320111(A257088(n))]+n`
-/

namespace A006590.P2940186601124918651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A257088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A006590.P2940186601124918651

namespace A006590

/-- `∑[A320111(A257088(n))]+n` -/
def P2940186601124918651.Spec : Prop :=
  ∀ n, P2940186601124918651.a n = A006590 (n + 1)

end A006590

/-! ## A006590.P8934479524504740247

`A099056(n)-A006591(n+1)`
-/

namespace A006590.P8934479524504740247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099056 n - A006591 (n + 1)

end

end A006590.P8934479524504740247

namespace A006590

/-- `A099056(n)-A006591(n+1)` -/
def P8934479524504740247.Spec : Prop :=
  ∀ n, P8934479524504740247.a n = A006590 (n + 1)

end A006590

/-! ## A006590.P12881001526923478703

`A004277(n)+A325459(n)+n`
-/

namespace A006590.P12881001526923478703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (A325459 n + (n : ℤ))

end

end A006590.P12881001526923478703

namespace A006590

/-- `A004277(n)+A325459(n)+n` -/
def P12881001526923478703.Spec : Prop :=
  ∀ n, P12881001526923478703.a n = A006590 (n + 1)

end A006590

/-!
# A006591: a(n) = Sum_{k=1..n} nearest integer to n/k (if n/k is midway between two numbers take the smaller).

The programs for A006591, the canonical program `A006591.P9768436482632367221` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006591 has offset 1).

The definition of A006591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006591.P9768436482632367221

`(n+1)²-A351362(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A006591

/-- `(n+1)²-A351362(n+1)` -/
def P9768436482632367221.Spec : Prop :=
  ∀ n, P9768436482632367221.a n = A006591 (n + 1)

theorem P9768436482632367221.correct : P9768436482632367221.Spec := by
  intro n
  simp only [A006591, Nat.add_sub_cancel]

end A006591

/-! ## A006591.P4922715713954964780

`A263085(n+1)+A248517(n)`
-/

namespace A006591.P4922715713954964780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263085 (n + 1) + A248517 n

end

end A006591.P4922715713954964780

namespace A006591

/-- `A263085(n+1)+A248517(n)` -/
def P4922715713954964780.Spec : Prop :=
  ∀ n, P4922715713954964780.a n = A006591 (n + 1)

end A006591

/-! ## A006591.P4756476671170167631

`A099056(n)-A006590(n+1)`
-/

namespace A006591.P4756476671170167631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099056 n - A006590 (n + 1)

end

end A006591.P4756476671170167631

namespace A006591

/-- `A099056(n)-A006590(n+1)` -/
def P4756476671170167631.Spec : Prop :=
  ∀ n, P4756476671170167631.a n = A006591 (n + 1)

end A006591

/-! ## A006591.P10675129847972618948

`A077024(n+1)-A069283(n+1)`
-/

namespace A006591.P10675129847972618948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077024 (n + 1) - A069283 (n + 1)

end

end A006591.P10675129847972618948

namespace A006591

/-- `A077024(n+1)-A069283(n+1)` -/
def P10675129847972618948.Spec : Prop :=
  ∀ n, P10675129847972618948.a n = A006591 (n + 1)

end A006591

/-! ## A006591.P13077355463551422144

`A006218(Δ[n²])-A006218(n)-n`
-/

namespace A006591.P13077355463551422144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A006218 n - (n : ℤ)

end

end A006591.P13077355463551422144

namespace A006591

/-- `A006218(Δ[n²])-A006218(n)-n` -/
def P13077355463551422144.Spec : Prop :=
  ∀ n, P13077355463551422144.a n = A006591 (n + 1)

end A006591

/-! ## A006591.P5522591859577816728

`abs(A006218(2*n+1)-A006218(n)-n)`
-/

namespace A006591.P5522591859577816728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006218 (2 * n + 1) - A006218 n - (n : ℤ)|

end

end A006591.P5522591859577816728

namespace A006591

/-- `abs(A006218(2*n+1)-A006218(n)-n)` -/
def P5522591859577816728.Spec : Prop :=
  ∀ n, P5522591859577816728.a n = A006591 (n + 1)

end A006591

/-! ## A006591.P15089652270421059538

`A006218(A005408(n))-(A006218(n)+n)`
-/

namespace A006591.P15089652270421059538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A005408 n).toNat - (A006218 n + (n : ℤ))

end

end A006591.P15089652270421059538

namespace A006591

/-- `A006218(A005408(n))-(A006218(n)+n)` -/
def P15089652270421059538.Spec : Prop :=
  ∀ n, P15089652270421059538.a n = A006591 (n + 1)

end A006591

/-! ## A006591.P7515886143961793844

`A077024(n+1)+A351355(n+1)-A351362(n+1)`
-/

namespace A006591.P7515886143961793844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077024 (n + 1) + (A351355 (n + 1) - A351362 (n + 1))

end

end A006591.P7515886143961793844

namespace A006591

/-- `A077024(n+1)+A351355(n+1)-A351362(n+1)` -/
def P7515886143961793844.Spec : Prop :=
  ∀ n, P7515886143961793844.a n = A006591 (n + 1)

end A006591

/-! ## A006591.P13237529073340695100

`A056548(n+1)-n`
-/

namespace A006591.P13237529073340695100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056548 (n + 1) - (n : ℤ)

end

end A006591.P13237529073340695100

namespace A006591

/-- `A056548(n+1)-n` -/
def P13237529073340695100.Spec : Prop :=
  ∀ n, P13237529073340695100.a n = A006591 (n + 1)

end A006591

/-! ## A006591.P13205990606864453438

`A056549(n+1)-(A001227(n+1)+n)`
-/

namespace A006591.P13205990606864453438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056549 (n + 1) - (A001227 (n + 1) + (n : ℤ))

end

end A006591.P13205990606864453438

namespace A006591

/-- `A056549(n+1)-(A001227(n+1)+n)` -/
def P13205990606864453438.Spec : Prop :=
  ∀ n, P13205990606864453438.a n = A006591 (n + 1)

end A006591

/-! ## A006591.P9247279334634825376

`A263086(2*n+1)-(A006218(2*n+1)+n)`
-/

namespace A006591.P9247279334634825376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263086 (2 * n + 1) - (A006218 (2 * n + 1) + (n : ℤ))

end

end A006591.P9247279334634825376

namespace A006591

/-- `A263086(2*n+1)-(A006218(2*n+1)+n)` -/
def P9247279334634825376.Spec : Prop :=
  ∀ n, P9247279334634825376.a n = A006591 (n + 1)

end A006591

/-! ## A006591.P270316051008087463

`A060831(Δ[n²])-n`
-/

namespace A006591.P270316051008087463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A006591.P270316051008087463

namespace A006591

/-- `A060831(Δ[n²])-n` -/
def P270316051008087463.Spec : Prop :=
  ∀ n, P270316051008087463.a n = A006591 (n + 1)

end A006591

/-! ## A006591.P1440617371736911632

`A248517(Δ[n²])+n+1`
-/

namespace A006591.P1440617371736911632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A006591.P1440617371736911632

namespace A006591

/-- `A248517(Δ[n²])+n+1` -/
def P1440617371736911632.Spec : Prop :=
  ∀ n, P1440617371736911632.a n = A006591 (n + 1)

end A006591

/-! ## A006591.P3809235989576578300

`∑[A129574(2*n+1)]-n`
-/

namespace A006591.P3809235989576578300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129574 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A006591.P3809235989576578300

namespace A006591

/-- `∑[A129574(2*n+1)]-n` -/
def P3809235989576578300.Spec : Prop :=
  ∀ n, P3809235989576578300.a n = A006591 (n + 1)

end A006591

/-! ## A006591.P7835208089403734836

`A248517(2*n+1)+1+n`
-/

namespace A006591.P7835208089403734836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 (2 * n + 1) + 1 + (n : ℤ)

end

end A006591.P7835208089403734836

namespace A006591

/-- `A248517(2*n+1)+1+n` -/
def P7835208089403734836.Spec : Prop :=
  ∀ n, P7835208089403734836.a n = A006591 (n + 1)

end A006591

/-! ## A006591.P13427404517854508234

`record[A060831(A000265(n+1))]-n`
-/

namespace A006591.P13427404517854508234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A006591.P13427404517854508234

namespace A006591

/-- `record[A060831(A000265(n+1))]-n` -/
def P13427404517854508234.Spec : Prop :=
  ∀ n, P13427404517854508234.a n = A006591 (n + 1)

end A006591

/-! ## A006591.P1905963121257865145

`record[A060831(A006257(n+1))]-n`
-/

namespace A006591.P1905963121257865145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (A006257 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A006591.P1905963121257865145

namespace A006591

/-- `record[A060831(A006257(n+1))]-n` -/
def P1905963121257865145.Spec : Prop :=
  ∀ n, P1905963121257865145.a n = A006591 (n + 1)

end A006591

/-! ## A006591.P42854830014752702

`record[A248517(n)+A215495(n)]-n`
-/

namespace A006591.P42854830014752702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n + A215495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A006591.P42854830014752702

namespace A006591

/-- `record[A248517(n)+A215495(n)]-n` -/
def P42854830014752702.Spec : Prop :=
  ∀ n, P42854830014752702.a n = A006591 (n + 1)

end A006591

/-! ## A006591.P9790138750954554461

`A060831(2*n+1)+A001489(n+1)+1`
-/

namespace A006591.P9790138750954554461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (2 * n + 1) + A001489 (n + 1) + 1

end

end A006591.P9790138750954554461

namespace A006591

/-- `A060831(2*n+1)+A001489(n+1)+1` -/
def P9790138750954554461.Spec : Prop :=
  ∀ n, P9790138750954554461.a n = A006591 (n + 1)

end A006591

/-!
# A006592: a(n) = 10*n^3 - 6*n^2.

The programs for A006592, the canonical program `A006592.P16309854090343874468` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006592 has offset 0).

The definition of A006592 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n^3-6*n²` (program `A006592.P16309854090343874468`, by `A006592.P16309854090343874468.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006592.P16309854090343874468

`10*n^3-6*n²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006592

/-- `10*n^3-6*n²` -/
def P16309854090343874468.Spec : Prop :=
  ∀ n, P16309854090343874468.a n = A006592 n

theorem P16309854090343874468.correct : P16309854090343874468.Spec := by
  intro n
  simp only [A006592]

end A006592

/-! ## A006592.P6098089347579037559

`4*A006597(n)`
-/

namespace A006592.P6098089347579037559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006597 n

end

end A006592.P6098089347579037559

namespace A006592

/-- `4*A006597(n)` -/
def P6098089347579037559.Spec : Prop :=
  ∀ n, P6098089347579037559.a n = A006592 n

end A006592

/-! ## A006592.P13161447602228727376

`n*A153784(n)`
-/

namespace A006592.P13161447602228727376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A153784 n

end

end A006592.P13161447602228727376

namespace A006592

/-- `n*A153784(n)` -/
def P13161447602228727376.Spec : Prop :=
  ∀ n, P13161447602228727376.a n = A006592 n

end A006592

/-! ## A006592.P1955475918367554474

`2*n*A135706(n)`
-/

namespace A006592.P1955475918367554474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A135706 n)

end

end A006592.P1955475918367554474

namespace A006592

/-- `2*n*A135706(n)` -/
def P1955475918367554474.Spec : Prop :=
  ∀ n, P1955475918367554474.a n = A006592 n

end A006592

/-! ## A006592.P2554601703432003743

`4*n*A000566(n)`
-/

namespace A006592.P2554601703432003743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) * A000566 n)

end

end A006592.P2554601703432003743

namespace A006592

/-- `4*n*A000566(n)` -/
def P2554601703432003743.Spec : Prop :=
  ∀ n, P2554601703432003743.a n = A006592 n

end A006592

/-! ## A006592.P2229533738484929942

`n*(A152745(n)-n)`
-/

namespace A006592.P2229533738484929942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A152745 n - (n : ℤ))

end

end A006592.P2229533738484929942

namespace A006592

/-- `n*(A152745(n)-n)` -/
def P2229533738484929942.Spec : Prop :=
  ∀ n, P2229533738484929942.a n = A006592 n

end A006592

/-! ## A006592.P15555963803429794129

`abs(n*4*(1-A192136(n)))`
-/

namespace A006592.P15555963803429794129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (4 * (1 - A192136 n))|

end

end A006592.P15555963803429794129

namespace A006592

/-- `abs(n*4*(1-A192136(n)))` -/
def P15555963803429794129.Spec : Prop :=
  ∀ n, P15555963803429794129.a n = A006592 n

end A006592

/-! ## A006592.P13422418972195321330

`n*(5*n-3)*A004277(n)`
-/

namespace A006592.P13422418972195321330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((5 * n : ℤ) - 3) * A004277 n

end

end A006592.P13422418972195321330

namespace A006592

/-- `n*(5*n-3)*A004277(n)` -/
def P13422418972195321330.Spec : Prop :=
  ∀ n, P13422418972195321330.a n = A006592 n

end A006592

/-! ## A006592.P3322206131301537709

`n*(5*n-3)*A005843(n)`
-/

namespace A006592.P3322206131301537709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((5 * n : ℤ) - 3) * A005843 n

end

end A006592.P3322206131301537709

namespace A006592

/-- `n*(5*n-3)*A005843(n)` -/
def P3322206131301537709.Spec : Prop :=
  ∀ n, P3322206131301537709.a n = A006592 n

end A006592

/-! ## A006592.P4075161107482010695

`A000566(n)*A008574(n)`
-/

namespace A006592.P4075161107482010695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n * A008574 n

end

end A006592.P4075161107482010695

namespace A006592

/-- `A000566(n)*A008574(n)` -/
def P4075161107482010695.Spec : Prop :=
  ∀ n, P4075161107482010695.a n = A006592 n

end A006592

/-! ## A006592.P8089835753929175844

`A000566(n)*A008586(n)`
-/

namespace A006592.P8089835753929175844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n * A008586 n

end

end A006592.P8089835753929175844

namespace A006592

/-- `A000566(n)*A008586(n)` -/
def P8089835753929175844.Spec : Prop :=
  ∀ n, P8089835753929175844.a n = A006592 n

end A006592

/-! ## A006592.P17198687599290579549

`A004277(n)*A135706(n)`
-/

namespace A006592.P17198687599290579549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A135706 n

end

end A006592.P17198687599290579549

namespace A006592

/-- `A004277(n)*A135706(n)` -/
def P17198687599290579549.Spec : Prop :=
  ∀ n, P17198687599290579549.a n = A006592 n

end A006592

/-! ## A006592.P4588048548150202704

`A005843(n)*A135706(n)`
-/

namespace A006592.P4588048548150202704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A135706 n

end

end A006592.P4588048548150202704

namespace A006592

/-- `A005843(n)*A135706(n)` -/
def P4588048548150202704.Spec : Prop :=
  ∀ n, P4588048548150202704.a n = A006592 n

end A006592

/-! ## A006592.P11658858021763223925

`4*A140462(3*n)`
-/

namespace A006592.P11658858021763223925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A140462 (3 * n)

end

end A006592.P11658858021763223925

namespace A006592

/-- `4*A140462(3*n)` -/
def P11658858021763223925.Spec : Prop :=
  ∀ n, P11658858021763223925.a n = A006592 n

end A006592

/-!
# A006593: Least number which is side of n Pythagorean triples.

The programs for A006593, there is no canonical definition to state claims against.
-/

/-! ## A006593.P12163089221856885697

`A201643(A267099(n+1))+A049610(n)`
-/

namespace A006593.P12163089221856885697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201643 (A267099 (n + 1)).toNat + A049610 n

end

end A006593.P12163089221856885697

/-! ## A006593.P1655666260012716725

`A135359(A135354(n+3))-A135317(2*(n+2))`
-/

namespace A006593.P1655666260012716725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135359 (A135354 (n + 3)).toNat - A135317 (2 * (n + 2))

end

end A006593.P1655666260012716725

/-!
# A006594: A Beatty sequence: floor(n*(1 + 1/e)).

The programs for A006594, the canonical program `A006594.P16489447980115312247` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006594 has offset 1).

The definition of A006594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006594.P7394080380630876851

`comp[floor(n*(e+1))]`
-/

namespace A006594.P7394080380630876851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.exp 1 + 1)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A006594.P7394080380630876851

namespace A006594

/-- `comp[floor(n*(e+1))]` -/
def P7394080380630876851.Spec : Prop :=
  ∀ n, (P7394080380630876851.a n : ℤ) = A006594 (n + 1)

end A006594

/-! ## A006594.P16489447980115312247

`∑[Δ[A032634(n)]+1]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006594

/-- `∑[Δ[A032634(n)]+1]` -/
def P16489447980115312247.Spec : Prop :=
  ∀ n, P16489447980115312247.a n = A006594 (n + 1)

theorem P16489447980115312247.correct : P16489447980115312247.Spec := by
  intro n
  simp only [A006594, Nat.add_sub_cancel]

end A006594

/-! ## A006594.P8446141007093560158

`A032634(n+1)+1+n`
-/

namespace A006594.P8446141007093560158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (n + 1) + 1 + (n : ℤ)

end

end A006594.P8446141007093560158

namespace A006594

/-- `A032634(n+1)+1+n` -/
def P8446141007093560158.Spec : Prop :=
  ∀ n, P8446141007093560158.a n = A006594 (n + 1)

end A006594

/-! ## A006594.P17494871259817771364

`A292647(n+1)-(n+1)`
-/

namespace A006594.P17494871259817771364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292647 (n + 1) - (n + 1 : ℤ)

end

end A006594.P17494871259817771364

namespace A006594

/-- `A292647(n+1)-(n+1)` -/
def P17494871259817771364.Spec : Prop :=
  ∀ n, P17494871259817771364.a n = A006594 (n + 1)

end A006594

/-! ## A006594.P5175771078973282744

`∑[char[A022843(n+1)]+1]`
-/

namespace A006594.P5175771078973282744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006594.P5175771078973282744

namespace A006594

/-- `∑[char[A022843(n+1)]+1]` -/
def P5175771078973282744.Spec : Prop :=
  ∀ n, (P5175771078973282744.a n : ℤ) = A006594 (n + 1)

end A006594

/-! ## A006594.P16502109180723447039

`comp[A000572(n+1)-1]+1`
-/

namespace A006594.P16502109180723447039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000572 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A006594.P16502109180723447039

namespace A006594

/-- `comp[A000572(n+1)-1]+1` -/
def P16502109180723447039.Spec : Prop :=
  ∀ n, (P16502109180723447039.a n : ℤ) = A006594 (n + 1)

end A006594

/-! ## A006594.P6318402784676658559

`∑[char[∑[A276859(n+1)]]+1]`
-/

namespace A006594.P6318402784676658559
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006594.P6318402784676658559

namespace A006594

/-- `∑[char[∑[A276859(n+1)]]+1]` -/
def P6318402784676658559.Spec : Prop :=
  ∀ n, (P6318402784676658559.a n : ℤ) = A006594 (n + 1)

end A006594

/-! ## A006594.P16799007385345488427

`∑[char[A184589(n+1)+1]+1]`
-/

namespace A006594.P16799007385345488427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184589 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006594.P16799007385345488427

namespace A006594

/-- `∑[char[A184589(n+1)+1]+1]` -/
def P16799007385345488427.Spec : Prop :=
  ∀ n, (P16799007385345488427.a n : ℤ) = A006594 (n + 1)

end A006594

/-! ## A006594.P17849375874070563954

`∑[A032662(Δ[A032634(n)])]`
-/

namespace A006594.P17849375874070563954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006594.P17849375874070563954

namespace A006594

/-- `∑[A032662(Δ[A032634(n)])]` -/
def P17849375874070563954.Spec : Prop :=
  ∀ n, P17849375874070563954.a n = A006594 (n + 1)

end A006594

/-! ## A006594.P7354615338712746556

`A016789(n)-A292663(n+1)`
-/

namespace A006594.P7354615338712746556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A292663 (n + 1)

end

end A006594.P7354615338712746556

namespace A006594

/-- `A016789(n)-A292663(n+1)` -/
def P7354615338712746556.Spec : Prop :=
  ∀ n, P7354615338712746556.a n = A006594 (n + 1)

end A006594

/-! ## A006594.P14840109758386613053

`filter[n+1, A085369(#)]`
-/

namespace A006594.P14840109758386613053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085369 (f1 j) = 1) n)

end

end A006594.P14840109758386613053

namespace A006594

/-- `filter[n+1, A085369(#)]` -/
def P14840109758386613053.Spec : Prop :=
  ∀ n, (P14840109758386613053.a n : ℤ) = A006594 (n + 1)

end A006594

/-! ## A006594.P2831451659511965013

`Δ[A022786(n+1)]+n`
-/

namespace A006594.P2831451659511965013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A006594.P2831451659511965013

namespace A006594

/-- `Δ[A022786(n+1)]+n` -/
def P2831451659511965013.Spec : Prop :=
  ∀ n, P2831451659511965013.a n = A006594 (n + 1)

end A006594

/-!
# A006595: a(n) = (n+2)!/4 + n!/2.

The programs for A006595, there is no canonical definition to state claims against.
-/

/-! ## A006595.P10019384184782798609

`(∑[n+1]+1)/2*n!`
-/

namespace A006595.P10019384184782798609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2 * (Nat.factorial n : ℚ)

end

end A006595.P10019384184782798609

/-! ## A006595.P5998834661522804330

`n!+(n+3)/4*Δ[n!]`
-/

namespace A006595.P5998834661522804330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) + (n + 3 : ℚ) / 4 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A006595.P5998834661522804330

/-! ## A006595.P9140148884342040013

`(n+1)!+C(n, 2)/2*n!`
-/

namespace A006595.P9140148884342040013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) + (Nat.choose n 2 : ℚ) / 2 * (Nat.factorial n : ℚ)

end

end A006595.P9140148884342040013

/-! ## A006595.P10766896159645465749

`(n+2)*a(n-1)-(n-1)!` with `a(0)=1`
-/

namespace A006595.P10766896159645465749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℤ) * a (n - 1) - (Nat.factorial ((n : ℤ) - 1).toNat : ℤ)

end

end A006595.P10766896159645465749

/-! ## A006595.P15626860761890275909

`A059418(∑[n+1]+2)`
-/

namespace A006595.P15626860761890275909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059418 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A006595.P15626860761890275909

/-! ## A006595.P3661291861929739436

`A001809(n)+(n+1)!`
-/

namespace A006595.P3661291861929739436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001809 n + (Nat.factorial (n + 1) : ℤ)

end

end A006595.P3661291861929739436

/-! ## A006595.P17667717270797439647

`A138772(n+1)+n!`
-/

namespace A006595.P17667717270797439647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138772 (n + 1) + (Nat.factorial n : ℤ)

end

end A006595.P17667717270797439647

/-! ## A006595.P1465738723170439222

`n!*∑[A028310(n)+1]/2`
-/

namespace A006595.P1465738723170439222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 2

end

end A006595.P1465738723170439222

/-! ## A006595.P5284620622913558428

`(A000217(n+1)+1)*n!/2`
-/

namespace A006595.P5284620622913558428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000217 (n + 1) + 1) * (Nat.factorial n : ℤ) : ℚ) / 2

end

end A006595.P5284620622913558428

/-! ## A006595.P10445752900420663959

`(∑[n+1]+1)*A000142(n)/2`
-/

namespace A006595.P10445752900420663959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * A000142 n : ℚ) / 2

end

end A006595.P10445752900420663959

/-!
# A006596: Numbers k such that (2^(2k+1) - 2^(k+1) + 1)/5 is prime.

The programs for A006596, there is no canonical definition to state claims against.
-/

/-! ## A006596.P11044225070167722595

`floor(A125742(n+1)/2)`
-/

namespace A006596.P11044225070167722595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A125742 (n + 1) : ℚ) / 2⌋

end

end A006596.P11044225070167722595

/-! ## A006596.P15978511360343151095

`A046073(A125742(n+1))`
-/

namespace A006596.P15978511360343151095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (A125742 (n + 1)).toNat

end

end A006596.P15978511360343151095

/-! ## A006596.P5964684649436723043

`A014682(A125742(n+1)-1)`
-/

namespace A006596.P5964684649436723043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A125742 (n + 1) - 1).toNat

end

end A006596.P5964684649436723043

/-! ## A006596.P4361994203163123613

`(A125742(n+1)-A046208(2*n+5))/2`
-/

namespace A006596.P4361994203163123613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125742 (n + 1) - A046208 (2 * n + 5) : ℚ) / 2

end

end A006596.P4361994203163123613

/-! ## A006596.P12175753361301235325

`xor(1, A125742(n+1))/A020639(2*(n+1))`
-/

namespace A006596.P12175753361301235325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A125742 (n + 1)) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A006596.P12175753361301235325

/-!
# A006597: a(n) = n^2*(5*n-3)/2.

The programs for A006597, the canonical program `A006597.P2209000041902773856` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006597 has offset 0).

The definition of A006597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006597.P7300932625671109592

`n²*(5*n-3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006597.P7300932625671109592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) * (((5 * n : ℤ) - 3 : ℚ) / 2)

end

end A006597.P7300932625671109592

namespace A006597

/-- `n²*(5*n-3)/2` -/
def P7300932625671109592.Spec : Prop :=
  ∀ n, P7300932625671109592.a n = (A006597 n : ℚ)

end A006597

/-! ## A006597.P2209000041902773856

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=14, a(3)=54`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006597

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2209000041902773856.Spec : Prop :=
  ∀ n, P2209000041902773856.a n = A006597 n

theorem P2209000041902773856.correct : P2209000041902773856.Spec := by
  intro n
  simp only [A006597]

end A006597

/-! ## A006597.P14641277796594581011

`A006592(n)/4`
-/

namespace A006597.P14641277796594581011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006592 n : ℚ) / 4

end

end A006597.P14641277796594581011

namespace A006597

/-- `A006592(n)/4` -/
def P14641277796594581011.Spec : Prop :=
  ∀ n, P14641277796594581011.a n = (A006597 n : ℚ)

end A006597

/-! ## A006597.P14404130390837687848

`n*∑[a(n-1)+15]/3` with `a(0)=0, a(1)=3`
-/

namespace A006597.P14404130390837687848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 15

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 3

end

end A006597.P14404130390837687848

namespace A006597

/-- `n*∑[a(n-1)+15]/3` -/
def P14404130390837687848.Spec : Prop :=
  ∀ n, P14404130390837687848.a n = (A006597 n : ℚ)

end A006597

/-! ## A006597.P4208222410239293182

`abs(n*(5*C(2*n, 2)-n)/4)`
-/

namespace A006597.P4208222410239293182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) * (((5 * Nat.choose (2 * n) 2 : ℤ) - (n : ℤ) : ℚ) / 4)|

end

end A006597.P4208222410239293182

namespace A006597

/-- `abs(n*(5*C(2*n, 2)-n)/4)` -/
def P4208222410239293182.Spec : Prop :=
  ∀ n, P4208222410239293182.a n = (A006597 n : ℚ)

end A006597

/-! ## A006597.P8551856097240511087

`floor(n*(5*C(2*n, 2)-n)/4)`
-/

namespace A006597.P8551856097240511087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (((5 * Nat.choose (2 * n) 2 : ℤ) - (n : ℤ) : ℚ) / 4)⌋

end

end A006597.P8551856097240511087

namespace A006597

/-- `floor(n*(5*C(2*n, 2)-n)/4)` -/
def P8551856097240511087.Spec : Prop :=
  ∀ n, P8551856097240511087.a n = A006597 n

end A006597

/-! ## A006597.P931150475553574386

`(A104099(n)-n)/4`
-/

namespace A006597.P931150475553574386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104099 n - (n : ℤ) : ℚ) / 4

end

end A006597.P931150475553574386

namespace A006597

/-- `(A104099(n)-n)/4` -/
def P931150475553574386.Spec : Prop :=
  ∀ n, P931150475553574386.a n = (A006597 n : ℚ)

end A006597

/-! ## A006597.P9035992338255907116

`floor(n*A152773(n)/3)`
-/

namespace A006597.P9035992338255907116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((A152773 n : ℚ) / 3)⌋

end

end A006597.P9035992338255907116

namespace A006597

/-- `floor(n*A152773(n)/3)` -/
def P9035992338255907116.Spec : Prop :=
  ∀ n, P9035992338255907116.a n = A006597 n

end A006597

/-! ## A006597.P7380230901599557287

`C(n, 2)*A016873(n)+n`
-/

namespace A006597.P7380230901599557287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A016873 n + (n : ℤ)

end

end A006597.P7380230901599557287

namespace A006597

/-- `C(n, 2)*A016873(n)+n` -/
def P7380230901599557287.Spec : Prop :=
  ∀ n, P7380230901599557287.a n = A006597 n

end A006597

/-! ## A006597.P10567544518703182245

`A051673(n)+A005581(n)`
-/

namespace A006597.P10567544518703182245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051673 n + A005581 n

end

end A006597.P10567544518703182245

namespace A006597

/-- `A051673(n)+A005581(n)` -/
def P10567544518703182245.Spec : Prop :=
  ∀ n, P10567544518703182245.a n = A006597 n

end A006597

/-! ## A006597.P3125219495364871549

`A275876(n)+A245301(n)`
-/

namespace A006597.P3125219495364871549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275876 n + A245301 n

end

end A006597.P3125219495364871549

namespace A006597

/-- `A275876(n)+A245301(n)` -/
def P3125219495364871549.Spec : Prop :=
  ∀ n, P3125219495364871549.a n = A006597 n

end A006597

/-! ## A006597.P5705510144338209095

`A062392(n)-A019582(n)`
-/

namespace A006597.P5705510144338209095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 n - A019582 n

end

end A006597.P5705510144338209095

namespace A006597

/-- `A062392(n)-A019582(n)` -/
def P5705510144338209095.Spec : Prop :=
  ∀ n, P5705510144338209095.a n = A006597 n

end A006597

/-! ## A006597.P11794297904589235299

`A171272(n)-A027378(n)`
-/

namespace A006597.P11794297904589235299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171272 n - A027378 n

end

end A006597.P11794297904589235299

namespace A006597

/-- `A171272(n)-A027378(n)` -/
def P11794297904589235299.Spec : Prop :=
  ∀ n, P11794297904589235299.a n = A006597 n

end A006597

/-! ## A006597.P10560578531916992819

`A262000(n)-A045991(n)`
-/

namespace A006597.P10560578531916992819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262000 n - A045991 n

end

end A006597.P10560578531916992819

namespace A006597

/-- `A262000(n)-A045991(n)` -/
def P10560578531916992819.Spec : Prop :=
  ∀ n, P10560578531916992819.a n = A006597 n

end A006597

/-! ## A006597.P688505184504537735

`A385730(n)-A008778(n)`
-/

namespace A006597.P688505184504537735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385730 n - A008778 n

end

end A006597.P688505184504537735

namespace A006597

/-- `A385730(n)-A008778(n)` -/
def P688505184504537735.Spec : Prop :=
  ∀ n, P688505184504537735.a n = A006597 n

end A006597

/-! ## A006597.P15154010061615191846

`A001015(n)%A155121(n)`
-/

namespace A006597.P15154010061615191846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001015 n) (A155121 n)

end

end A006597.P15154010061615191846

namespace A006597

/-- `A001015(n)%A155121(n)` -/
def P15154010061615191846.Spec : Prop :=
  ∀ n, P15154010061615191846.a n = A006597 n

end A006597

/-! ## A006597.P11682888553247265883

`∑[A220083(n)]-A220083(n)`
-/

namespace A006597.P11682888553247265883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A220083 n

end

end A006597.P11682888553247265883

namespace A006597

/-- `∑[A220083(n)]-A220083(n)` -/
def P11682888553247265883.Spec : Prop :=
  ∀ n, P11682888553247265883.a n = A006597 n

end A006597

/-! ## A006597.P11132165108020171995

`A135916(n+1)-A171129(n)`
-/

namespace A006597.P11132165108020171995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135916 (n + 1) - A171129 n

end

end A006597.P11132165108020171995

namespace A006597

/-- `A135916(n+1)-A171129(n)` -/
def P11132165108020171995.Spec : Prop :=
  ∀ n, P11132165108020171995.a n = A006597 n

end A006597

/-!
# A006598: Numbers n such that 2^(2n+1) - 2^(n+1) + 1 is a prime.

The programs for A006598, there is no canonical definition to state claims against.
-/

/-! ## A006598.P14627234721521201947

`floor(A007670(n+1)/2)`
-/

namespace A006598.P14627234721521201947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007670 (n + 1) : ℚ) / 2⌋

end

end A006598.P14627234721521201947

/-! ## A006598.P9499557944653565745

`A004524(A007670(n+1))`
-/

namespace A006598.P9499557944653565745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A007670 (n + 1)).toNat

end

end A006598.P9499557944653565745

/-! ## A006598.P13950694190899723313

`A004526(p?[A007670(n+1)])`
-/

namespace A006598.P13950694190899723313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A006598.P13950694190899723313

/-! ## A006598.P10326452025057863640

`A028242(p?[A007670(n+1)])`
-/

namespace A006598.P10326452025057863640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A006598.P10326452025057863640

/-! ## A006598.P16600944452960167738

`A046667(A007670(n+1)+1)`
-/

namespace A006598.P16600944452960167738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A007670 (n + 1) + 1).toNat

end

end A006598.P16600944452960167738

/-!
# A006599: Numbers k such that 2^(2k+1) + 2^(k+1) + 1 is prime.

The programs for A006599, there is no canonical definition to state claims against.
-/

/-! ## A006599.P8866747653451847890

`A108062(n+1)-1`
-/

namespace A006599.P8866747653451847890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108062 (n + 1) - 1

end

end A006599.P8866747653451847890

/-! ## A006599.P1386614714804863062

`floor(A007671(n+1)/2)`
-/

namespace A006599.P1386614714804863062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007671 (n + 1) : ℚ) / 2⌋

end

end A006599.P1386614714804863062

/-! ## A006599.P1819558080928909938

`A007671(n+1)%A108062(n+1)`
-/

namespace A006599.P1819558080928909938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007671 (n + 1)) (A108062 (n + 1))

end

end A006599.P1819558080928909938

/-! ## A006599.P14091907995033471716

`A257098(A111107(n))+A108062(n+1)`
-/

namespace A006599.P14091907995033471716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257098 (A111107 n).toNat + A108062 (n + 1)

end

end A006599.P14091907995033471716

/-! ## A006599.P14869367411420851864

`A292866(A152846(n))+A108062(n+1)`
-/

namespace A006599.P14869367411420851864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292866 (A152846 n).toNat + A108062 (n + 1)

end

end A006599.P14869367411420851864

