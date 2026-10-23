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
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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

/-!
# A119301: Triangle read by rows: T(n,k) = binomial(3*n-k,n-k).

The programs for A119301, the canonical program `A119301.P2252977505407981584` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119301 has offset 0).

The definition of A119301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119301.P2252977505407981584

`C(A131894(n+1), A025581(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A119301

/-- `C(A131894(n+1), A025581(n))` -/
def P2252977505407981584.Spec : Prop :=
  ∀ n, (P2252977505407981584.a n : ℤ) = A119301 n

theorem P2252977505407981584.correct : P2252977505407981584.Spec := by
  intro n
  simp only [A119301]

end A119301

/-! ## A119301.P15196473536642206749

`A046899(A292564(A114327(n)+n))`
-/

namespace A119301.P15196473536642206749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A292564 (A114327 n + (n : ℤ)).toNat).toNat

end

end A119301.P15196473536642206749

namespace A119301

/-- `A046899(A292564(A114327(n)+n))` -/
def P15196473536642206749.Spec : Prop :=
  ∀ n, P15196473536642206749.a n = A119301 n

end A119301

/-! ## A119301.P15103021191686009873

`A092392(record[xor(1, n)+round(sqrt(n+1))²]-(n-C(∑[char[∑[n+1]]], 2)+2))`
-/

namespace A119301.P15103021191686009873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) + 2)).toNat

end

end A119301.P15103021191686009873

namespace A119301

/-- `A092392(record[xor(1, n)+round(sqrt(n+1))²]-(n-C(∑[char[∑[n+1]]], 2)+2))` -/
def P15103021191686009873.Spec : Prop :=
  ∀ n, P15103021191686009873.a n = A119301 n

end A119301

/-! ## A119301.P17918911039853726553

`A092392(A292564(n)+A003056(n))`
-/

namespace A119301.P17918911039853726553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (A292564 n + A003056 n).toNat

end

end A119301.P17918911039853726553

namespace A119301

/-- `A092392(A292564(n)+A003056(n))` -/
def P17918911039853726553.Spec : Prop :=
  ∀ n, P17918911039853726553.a n = A119301 n

end A119301

/-! ## A119301.P14848488192512127659

`A092392(A061885(n)+2*A057944(n))`
-/

namespace A119301.P14848488192512127659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (A061885 n + 2 * A057944 n).toNat

end

end A119301.P14848488192512127659

namespace A119301

/-- `A092392(A061885(n)+2*A057944(n))` -/
def P14848488192512127659.Spec : Prop :=
  ∀ n, P14848488192512127659.a n = A119301 n

end A119301

/-! ## A119301.P7886572412934475030

`A054142(A245300(A061579(n)))`
-/

namespace A119301.P7886572412934475030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (A245300 (A061579 n).toNat).toNat

end

end A119301.P7886572412934475030

namespace A119301

/-- `A054142(A245300(A061579(n)))` -/
def P7886572412934475030.Spec : Prop :=
  ∀ n, P7886572412934475030.a n = A119301 n

end A119301

/-! ## A119301.P759102320900855964

`A100100(∑[char[∑[n]]]²+C(comp[∑[n]]-n, 2)+n)`
-/

namespace A119301.P759102320900855964
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
  A100100 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n))

end

end A119301.P759102320900855964

namespace A119301

/-- `A100100(∑[char[∑[n]]]²+C(comp[∑[n]]-n, 2)+n)` -/
def P759102320900855964.Spec : Prop :=
  ∀ n, P759102320900855964.a n = A119301 n

end A119301

/-! ## A119301.P10911595403627841687

`A100100(A185869(n+1)+A025581(n))`
-/

namespace A119301.P10911595403627841687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 (A185869 (n + 1) + A025581 n).toNat

end

end A119301.P10911595403627841687

namespace A119301

/-- `A100100(A185869(n+1)+A025581(n))` -/
def P10911595403627841687.Spec : Prop :=
  ∀ n, P10911595403627841687.a n = A119301 n

end A119301

/-! ## A119301.P13834143138970634966

`A349727(A292565(n+1))`
-/

namespace A119301.P13834143138970634966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349727 (A292565 (n + 1)).toNat

end

end A119301.P13834143138970634966

namespace A119301

/-- `A349727(A292565(n+1))` -/
def P13834143138970634966.Spec : Prop :=
  ∀ n, P13834143138970634966.a n = A119301 n

end A119301

/-! ## A119301.P13155293446445967918

`A264772(A245300(n)+A002262(n))`
-/

namespace A119301.P13155293446445967918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 (A245300 n + A002262 n).toNat

end

end A119301.P13155293446445967918

namespace A119301

/-- `A264772(A245300(n)+A002262(n))` -/
def P13155293446445967918.Spec : Prop :=
  ∀ n, P13155293446445967918.a n = A119301 n

end A119301

/-!
# A119303: Expansion of (1 - 3x)/(1 - x + 2x^2 - x^3).

The programs for A119303, the canonical program `A119303.P2044450058520417188` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119303 has offset 0).

The definition of A119303 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x)/(1-x+2x^2-x^3))` (program `A119303.P2044450058520417188`, by `A119303.P2044450058520417188.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119303.P2044450058520417188

`ogf((1-3x)/(1-x+2x^2-x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A119303

/-- `ogf((1-3x)/(1-x+2x^2-x^3))` -/
def P2044450058520417188.Spec : Prop :=
  ∀ n, P2044450058520417188.a n = A119303 n

theorem P2044450058520417188.correct : P2044450058520417188.Spec := by
  intro n
  simp only [A119303]

end A119303

/-! ## A119303.P16273093180995537427

`a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=-2, a(2)=-4`
-/

namespace A119303.P16273093180995537427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, -4] fun n a =>
  a (n - 1) - 2 * a (n - 2) + a (n - 3)

end

end A119303.P16273093180995537427

namespace A119303

/-- `a(n-1)-2*a(n-2)+a(n-3)` -/
def P16273093180995537427.Spec : Prop :=
  ∀ n, P16273093180995537427.a n = A119303 n

end A119303

/-! ## A119303.P681771293883388764

`a(n-4)-(a(n-2)+a(n-3))` with `a(0)=1, a(1)=-2, a(2)=-4, a(3)=1`
-/

namespace A119303.P681771293883388764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, -4, 1] fun n a =>
  a (n - 4) - (a (n - 2) + a (n - 3))

end

end A119303.P681771293883388764

namespace A119303

/-- `a(n-4)-(a(n-2)+a(n-3))` -/
def P681771293883388764.Spec : Prop :=
  ∀ n, P681771293883388764.a n = A119303 n

end A119303

/-! ## A119303.P6782466869040300417

`a(n-4)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=-2, a(2)=-4, a(3)=1`
-/

namespace A119303.P6782466869040300417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, -4, 1] fun n a =>
  a (n - 4) - a (n - 2) - a (n - 3)

end

end A119303.P6782466869040300417

namespace A119303

/-- `a(n-4)-a(n-2)-a(n-3)` -/
def P6782466869040300417.Spec : Prop :=
  ∀ n, P6782466869040300417.a n = A119303 n

end A119303

/-! ## A119303.P12589450734421445880

`A078712(Δ[n²])`
-/

namespace A119303.P12589450734421445880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078712 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A119303.P12589450734421445880

namespace A119303

/-- `A078712(Δ[n²])` -/
def P12589450734421445880.Spec : Prop :=
  ∀ n, P12589450734421445880.a n = A119303 n

end A119303

/-! ## A119303.P2163529586452664995

`A077954(n+1)-A166117(n)`
-/

namespace A119303.P2163529586452664995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077954 (n + 1) - A166117 n

end

end A119303.P2163529586452664995

namespace A119303

/-- `A077954(n+1)-A166117(n)` -/
def P2163529586452664995.Spec : Prop :=
  ∀ n, P2163529586452664995.a n = A119303 n

end A119303

/-! ## A119303.P3252384989733606188

`2*A078013(2*n+1)-A247917(2*n+1)`
-/

namespace A119303.P3252384989733606188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078013 (2 * n + 1) - A247917 (2 * n + 1)

end

end A119303.P3252384989733606188

namespace A119303

/-- `2*A078013(2*n+1)-A247917(2*n+1)` -/
def P3252384989733606188.Spec : Prop :=
  ∀ n, P3252384989733606188.a n = A119303 n

end A119303

/-! ## A119303.P1964716848982142252

`A078019(n)+A078019(n)-A166117(n+1)`
-/

namespace A119303.P1964716848982142252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078019 n + (A078019 n - A166117 (n + 1))

end

end A119303.P1964716848982142252

namespace A119303

/-- `A078019(n)+A078019(n)-A166117(n+1)` -/
def P1964716848982142252.Spec : Prop :=
  ∀ n, P1964716848982142252.a n = A119303 n

end A119303

/-! ## A119303.P12908246504373538310

`∑[-A078712(A005843(n+1))]`
-/

namespace A119303.P12908246504373538310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A078712 (A005843 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119303.P12908246504373538310

namespace A119303

/-- `∑[-A078712(A005843(n+1))]` -/
def P12908246504373538310.Spec : Prop :=
  ∀ n, P12908246504373538310.a n = A119303 n

end A119303

/-! ## A119303.P1345964489426765976

`∑[-A078712(eq[0, A073097(n)])]`
-/

namespace A119303.P1345964489426765976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A078712 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119303.P1345964489426765976

namespace A119303

/-- `∑[-A078712(eq[0, A073097(n)])]` -/
def P1345964489426765976.Spec : Prop :=
  ∀ n, P1345964489426765976.a n = A119303 n

end A119303

/-! ## A119303.P575171318130678215

`A001945(2*n+1)-A001608(2*n+1)`
-/

namespace A119303.P575171318130678215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001945 (2 * n + 1) - A001608 (2 * n + 1)

end

end A119303.P575171318130678215

namespace A119303

/-- `A001945(2*n+1)-A001608(2*n+1)` -/
def P575171318130678215.Spec : Prop :=
  ∀ n, P575171318130678215.a n = A119303 n

end A119303

/-! ## A119303.P12875322157092222581

`A078712(2*n+1)+and(1, A000079(n+1))`
-/

namespace A119303.P12875322157092222581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078712 (2 * n + 1) + Int.land 1 (A000079 (n + 1))

end

end A119303.P12875322157092222581

namespace A119303

/-- `A078712(2*n+1)+and(1, A000079(n+1))` -/
def P12875322157092222581.Spec : Prop :=
  ∀ n, P12875322157092222581.a n = A119303 n

end A119303

/-! ## A119303.P7546631408614231717

`A078712(2*n+1)%A000975(n+2)`
-/

namespace A119303.P7546631408614231717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078712 (2 * n + 1)) (A000975 (n + 2))

end

end A119303.P7546631408614231717

namespace A119303

/-- `A078712(2*n+1)%A000975(n+2)` -/
def P7546631408614231717.Spec : Prop :=
  ∀ n, P7546631408614231717.a n = A119303 n

end A119303

/-!
# A119304: Triangle read by rows: T(n,k) = binomial(4n-k,n-k), 0 <= k <= n.

The programs for A119304, the canonical program `A119304.P4956205213881672858` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119304 has offset 0).

The definition of A119304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4753 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119304.P4956205213881672858

`C(A294317(A292564(n)), A025581(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A119304

/-- `C(A294317(A292564(n)), A025581(n))` -/
def P4956205213881672858.Spec : Prop :=
  ∀ n, (P4956205213881672858.a n : ℤ) = A119304 n

theorem P4956205213881672858.correct : P4956205213881672858.Spec := by
  intro n
  simp only [A119304]

end A119304

/-! ## A119304.P3719110189243679246

`C(A131873(n+1), A025581(n))`
-/

namespace A119304.P3719110189243679246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131873 (n + 1)).toNat (A025581 n).toNat

end

end A119304.P3719110189243679246

namespace A119304

/-- `C(A131873(n+1), A025581(n))` -/
def P3719110189243679246.Spec : Prop :=
  ∀ n, (P3719110189243679246.a n : ℤ) = A119304 n

end A119304

/-! ## A119304.P17788097828808002350

`A264773(n)+A079179(A055818(n))`
-/

namespace A119304.P17788097828808002350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264773 n + A079179 (A055818 n).toNat

end

end A119304.P17788097828808002350

namespace A119304

/-- `A264773(n)+A079179(A055818(n))` -/
def P17788097828808002350.Spec : Prop :=
  ∀ n, P17788097828808002350.a n = A119304 n

end A119304

/-!
# A119306: Expansion of (1-4*x)/(1-x*(1-x)^3).

The programs for A119306, the canonical program `A119306.P886598184993855997` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119306 has offset 0).

The definition of A119306 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x)/(1-x+3x^2-3x^3+x^4))` (program `A119306.P886598184993855997`, by `A119306.P886598184993855997.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119306.P886598184993855997

`ogf((1-4x)/(1-x+3x^2-3x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A119306

/-- `ogf((1-4x)/(1-x+3x^2-3x^3+x^4))` -/
def P886598184993855997.Spec : Prop :=
  ∀ n, P886598184993855997.a n = A119306 n

theorem P886598184993855997.correct : P886598184993855997.Spec := by
  intro n
  simp only [A119306]

end A119306

/-! ## A119306.P12763434152700857760

`a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=-3, a(2)=-6, a(3)=6`
-/

namespace A119306.P12763434152700857760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3, -6, 6] fun n a =>
  a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3) - a (n - 4)

end

end A119306.P12763434152700857760

namespace A119306

/-- `a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` -/
def P12763434152700857760.Spec : Prop :=
  ∀ n, P12763434152700857760.a n = A119306 n

end A119306

/-!
# A119307: Triangle read by rows: T(n, k) = Sum_{j=0..n} C(j, k)*C(j, n - k).

The programs for A119307, there is no canonical definition to state claims against.
-/

/-! ## A119307.P6190881095010099801

`A342438(A180959(n))`
-/

namespace A119307.P6190881095010099801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342438 (A180959 n).toNat

end

end A119307.P6190881095010099801

/-! ## A119307.P1514292505570969764

`A120067(A132787(n+1))`
-/

namespace A119307.P1514292505570969764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120067 (A132787 (n + 1)).toNat

end

end A119307.P1514292505570969764

/-! ## A119307.P14080527600836161539

`A089657(A181370(n+1))`
-/

namespace A119307.P14080527600836161539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089657 (A181370 (n + 1)).toNat

end

end A119307.P14080527600836161539

/-! ## A119307.P8601755765671392440

`A100862(n)+A035062(A100862(n))`
-/

namespace A119307.P8601755765671392440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100862 n + A035062 (A100862 n).toNat

end

end A119307.P8601755765671392440

/-!
# A119308: Triangle for first differences of Catalan numbers.

The programs for A119308, there is no canonical definition to state claims against.
-/

/-! ## A119308.P9846093013911465393

`A108838(n+2)-A001263(n+1)`
-/

namespace A119308.P9846093013911465393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108838 (n + 2) - A001263 (n + 1)

end

end A119308.P9846093013911465393

/-! ## A119308.P4629570849270118969

`A108838(n+2)-A090181(A014132(n+1))`
-/

namespace A119308.P4629570849270118969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108838 (n + 2) - A090181 (A014132 (n + 1)).toNat

end

end A119308.P4629570849270118969

/-! ## A119308.P4214812329956572577

`A108838(n+2)+A014473(n)-A132789(n+1)`
-/

namespace A119308.P4214812329956572577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108838 (n + 2) + (A014473 n - A132789 (n + 1))

end

end A119308.P4214812329956572577

/-! ## A119308.P9402142288399980235

`A108838(n+2)-A103371(n)/A004736(n+1)`
-/

namespace A119308.P9402142288399980235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108838 (n + 2) : ℚ) - (A103371 n : ℚ) / (A004736 (n + 1) : ℚ)

end

end A119308.P9402142288399980235

/-! ## A119308.P7905532448339615409

`A108838(n+2)-A132813(n)/A002260(n+1)`
-/

namespace A119308.P7905532448339615409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108838 (n + 2) : ℚ) - (A132813 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A119308.P7905532448339615409

/-! ## A119308.P4473102688210298630

`A108838(n+2)-A114656(n+1)/A130321(n)`
-/

namespace A119308.P4473102688210298630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108838 (n + 2) : ℚ) - (A114656 (n + 1) : ℚ) / (A130321 n : ℚ)

end

end A119308.P4473102688210298630

/-! ## A119308.P9947893673429658712

`A108838(n+2)-gcd(A155537(n+1), A174124(n))`
-/

namespace A119308.P9947893673429658712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108838 (n + 2) - (Int.gcd (A155537 (n + 1)) (A174124 n) : ℤ)

end

end A119308.P9947893673429658712

/-! ## A119308.P8980922131653784733

`A108838(n+2)-A132812(n+1)/A002024(n+1)`
-/

namespace A119308.P8980922131653784733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108838 (n + 2) : ℚ) - (A132812 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A119308.P8980922131653784733

/-! ## A119308.P10095737280315598076

`A108838(n+2)-sqrt(A174158(n+1))`
-/

namespace A119308.P10095737280315598076
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A108838 (n + 2) : ℝ) - Real.sqrt (A174158 (n + 1) : ℝ)

end

end A119308.P10095737280315598076

/-! ## A119308.P1202549957533017101

`A108838(n+2)-gcd(A114656(n+1), A174346(n+1))`
-/

namespace A119308.P1202549957533017101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108838 (n + 2) - (Int.gcd (A114656 (n + 1)) (A174346 (n + 1)) : ℤ)

end

end A119308.P1202549957533017101

/-!
# A119309: a(n) = binomial(2*n,n) * 6^n.

The programs for A119309, the canonical program `A119309.P9691047403375510349` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119309 has offset 0).

The definition of A119309 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n, n)*6^n` (program `A119309.P9691047403375510349`, by `A119309.P9691047403375510349.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119309.P9691047403375510349

`C(2*n, n)*6^n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A119309

/-- `C(2*n, n)*6^n` -/
def P9691047403375510349.Spec : Prop :=
  ∀ n, (P9691047403375510349.a n : ℤ) = A119309 n

theorem P9691047403375510349.correct : P9691047403375510349.Spec := by
  intro n
  simp only [A119309]

end A119309

/-! ## A119309.P5415247906500526611

`2^n*A098658(n)`
-/

namespace A119309.P5415247906500526611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A098658 n

end

end A119309.P5415247906500526611

namespace A119309

/-- `2^n*A098658(n)` -/
def P5415247906500526611.Spec : Prop :=
  ∀ n, P5415247906500526611.a n = A119309 n

end A119309

/-! ## A119309.P12848153866635789657

`3^n*A059304(n)`
-/

namespace A119309.P12848153866635789657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A059304 n

end

end A119309.P12848153866635789657

namespace A119309

/-- `3^n*A059304(n)` -/
def P12848153866635789657.Spec : Prop :=
  ∀ n, P12848153866635789657.a n = A119309 n

end A119309

/-! ## A119309.P6077086979516396839

`6^n*A000984(n)`
-/

namespace A119309.P6077086979516396839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A000984 n

end

end A119309.P6077086979516396839

namespace A119309

/-- `6^n*A000984(n)` -/
def P6077086979516396839.Spec : Prop :=
  ∀ n, P6077086979516396839.a n = A119309 n

end A119309

/-! ## A119309.P7120868110075847692

`6*(4-2/n)*a(n-1)` with `a(0)=1`
-/

namespace A119309.P7120868110075847692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  6 * ((4 - 2 / (n : ℚ)) * a (n - 1))

end

end A119309.P7120868110075847692

namespace A119309

/-- `6*(4-2/n)*a(n-1)` -/
def P7120868110075847692.Spec : Prop :=
  ∀ n, P7120868110075847692.a n = (A119309 n : ℚ)

end A119309

/-! ## A119309.P15427130262791153626

`6*2*(2-n^(-1))*a(n-1)` with `a(0)=1`
-/

namespace A119309.P15427130262791153626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  6 * (2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * a (n - 1)))

end

end A119309.P15427130262791153626

namespace A119309

/-- `6*2*(2-n^(-1))*a(n-1)` -/
def P15427130262791153626.Spec : Prop :=
  ∀ n, P15427130262791153626.a n = (A119309 n : ℚ)

end A119309

/-! ## A119309.P14786931540037767020

`(n+1)*A156128(n)`
-/

namespace A119309.P14786931540037767020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A156128 n

end

end A119309.P14786931540037767020

namespace A119309

/-- `(n+1)*A156128(n)` -/
def P14786931540037767020.Spec : Prop :=
  ∀ n, P14786931540037767020.a n = A119309 n

end A119309

/-! ## A119309.P7805203157490921002

`(n+1)*6^n*A000108(n)`
-/

namespace A119309.P7805203157490921002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((6 ^ n : ℤ) * A000108 n)

end

end A119309.P7805203157490921002

namespace A119309

/-- `(n+1)*6^n*A000108(n)` -/
def P7805203157490921002.Spec : Prop :=
  ∀ n, P7805203157490921002.a n = A119309 n

end A119309

/-! ## A119309.P2901856895531130163

`A000108(n)*A053469(n+1)`
-/

namespace A119309.P2901856895531130163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A053469 (n + 1)

end

end A119309.P2901856895531130163

namespace A119309

/-- `A000108(n)*A053469(n+1)` -/
def P2901856895531130163.Spec : Prop :=
  ∀ n, P2901856895531130163.a n = A119309 n

end A119309

/-! ## A119309.P14454947154917095041

`A000079(n)*A103978(2*n)`
-/

namespace A119309.P14454947154917095041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A103978 (2 * n)

end

end A119309.P14454947154917095041

namespace A119309

/-- `A000079(n)*A103978(2*n)` -/
def P14454947154917095041.Spec : Prop :=
  ∀ n, P14454947154917095041.a n = A119309 n

end A119309

/-!
# A119310: Alphabetical value of n in its Roman numerals-based representation.

The programs for A119310, there is no canonical definition to state claims against.
-/

/-! ## A119310.P8300611632756472972

`∑{digits}[A061493(n+1), A285511(A003587(#))]`
-/

namespace A119310.P8300611632756472972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A285511 (A003587 x).toNat).sum

end

end A119310.P8300611632756472972

/-!
# A119312: Smallest number having at least n divisors and a squarefree n-th divisor.

The programs for A119312, there is no canonical definition to state claims against.
-/

/-! ## A119312.P7081223092000014844

`A007947(A214799(n+1))*A272084(n+1)`
-/

namespace A119312.P7081223092000014844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A214799 (n + 1)).toNat * A272084 (n + 1)

end

end A119312.P7081223092000014844

/-! ## A119312.P9340311170187735054

`A109832(A023028(n+11)-A058294(n+1))`
-/

namespace A119312.P9340311170187735054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109832 (A023028 (n + 11) - A058294 (n + 1)).toNat

end

end A119312.P9340311170187735054

/-! ## A119312.P9682657482773681709

`A225652(p?[A225633(3*n)])`
-/

namespace A119312.P9682657482773681709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225633 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225652 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A119312.P9682657482773681709

/-! ## A119312.P9771384024802568453

`A046523(A114492(n²+n))`
-/

namespace A119312.P9771384024802568453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A114492 (n ^ 2 + n)).toNat

end

end A119312.P9771384024802568453

/-!
# A119313: Numbers with a prime as third-smallest divisor.

The programs for A119313, there is no canonical definition to state claims against.
-/

/-! ## A119313.P12463315068557626124

`comp[A119314(n+1)-1]+1`
-/

namespace A119313.P12463315068557626124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119314 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A119313.P12463315068557626124

/-! ## A119313.P7424008478558798140

`filter[A119316(n+1), A066247(#)]`
-/

namespace A119313.P7424008478558798140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A119313.P7424008478558798140

/-! ## A119313.P7195728019937565343

`filter[A119316(n+1), A202238(#)]`
-/

namespace A119313.P7195728019937565343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A119313.P7195728019937565343

/-! ## A119313.P10681408033772592602

`filter[A119316(n+2), A005171(#)]`
-/

namespace A119313.P10681408033772592602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119316 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A119313.P10681408033772592602

/-! ## A119313.P5400188962222550297

`∩[A002808(n+1), A119316(n+1)]`
-/

namespace A119313.P5400188962222550297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119313.P5400188962222550297

/-! ## A119313.P1706260195191159248

`∩[A024619(n+1), A119316(n+1)]`
-/

namespace A119313.P1706260195191159248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119313.P1706260195191159248

/-! ## A119313.P11076496303067841663

`∩[A119316(n+1), A268388(n+1)]`
-/

namespace A119313.P11076496303067841663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119313.P11076496303067841663

/-! ## A119313.P17285337762596780859

`∩[A080257(n+1), A119316(n+1)]`
-/

namespace A119313.P17285337762596780859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119313.P17285337762596780859

/-! ## A119313.P3340842861678083614

`∩[A119316(n+1), A343311(n+1)]`
-/

namespace A119313.P3340842861678083614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119313.P3340842861678083614

/-! ## A119313.P5821423844428102717

`filter[A119316(n+1), A143731(#)]`
-/

namespace A119313.P5821423844428102717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A119313.P5821423844428102717

/-! ## A119313.P17935303744908846869

`eq[0, A005171(A292269(n+1))]+1`
-/

namespace A119313.P17935303744908846869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A292269 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119313.P17935303744908846869

/-! ## A119313.P6088387016806400359

`eq[2, A000005(A292269(A028310(n)))]`
-/

namespace A119313.P6088387016806400359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A292269 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119313.P6088387016806400359

/-! ## A119313.P3645341858457210596

`∩[A119316(n+1), A348718(n+1)]`
-/

namespace A119313.P3645341858457210596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119313.P3645341858457210596

/-! ## A119313.P5979391660226309836

`∩[A111774(n+1), A119316(n+1)]`
-/

namespace A119313.P5979391660226309836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119313.P5979391660226309836

/-! ## A119313.P7933339593009772463

`record[gcd(A027749(n+9), A136181(n+8))]`
-/

namespace A119313.P7933339593009772463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027749 (n + 9)) (A136181 (n + 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119313.P7933339593009772463

/-! ## A119313.P7695055991288036537

`eq[2, A001222(A292269(n+1)²)]+1`
-/

namespace A119313.P7695055991288036537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A292269 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119313.P7695055991288036537

/-!
# A119314: Complement of A119313.

The programs for A119314, there is no canonical definition to state claims against.
-/

/-! ## A119314.P2255313536216965574

`∪[A000961(n+1), A119315(n+1)]`
-/

namespace A119314.P2255313536216965574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119314.P2255313536216965574

/-! ## A119314.P3856254103368292025

`∪[A008578(n+1), A119315(n+1)]`
-/

namespace A119314.P3856254103368292025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119314.P3856254103368292025

/-! ## A119314.P3415896996278324038

`∪[A033946(n+1), A119315(n+1)]`
-/

namespace A119314.P3415896996278324038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119314.P3415896996278324038

/-! ## A119314.P4743332506792061801

`∪[A046022(n+1), A119315(n+1)]`
-/

namespace A119314.P4743332506792061801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119314.P4743332506792061801

/-! ## A119314.P6270118295141212020

`∪[A067126(n+1), A119315(n+1)]`
-/

namespace A119314.P6270118295141212020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119314.P6270118295141212020

/-! ## A119314.P12030215113884475110

`∪[A074583(n+1), A119315(n+1)]`
-/

namespace A119314.P12030215113884475110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119314.P12030215113884475110

/-! ## A119314.P83786602411005789

`∪[A084400(n+1), A119315(n+1)]`
-/

namespace A119314.P83786602411005789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119314.P83786602411005789

/-! ## A119314.P13564528182495137749

`∪[A115975(n+1), A119315(n+1)]`
-/

namespace A119314.P13564528182495137749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119314.P13564528182495137749

/-! ## A119314.P12605102524604246251

`∪[A119315(n+1), A164336(n+1)]`
-/

namespace A119314.P12605102524604246251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119314.P12605102524604246251

/-! ## A119314.P11283437931454187686

`∪[A119315(n+1), A166684(n+1)]`
-/

namespace A119314.P11283437931454187686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119314.P11283437931454187686

/-! ## A119314.P4105689660203924898

`∪[A119315(n+1), A174090(n+1)]`
-/

namespace A119314.P4105689660203924898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119314.P4105689660203924898

/-! ## A119314.P9671480387945052668

`∪[A119315(n+1), A235868(n+1)]`
-/

namespace A119314.P9671480387945052668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119314.P9671480387945052668

/-! ## A119314.P16350840171154377403

`∪[A119315(n+1), A284696(n+1)]`
-/

namespace A119314.P16350840171154377403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119314.P16350840171154377403

/-! ## A119314.P1815521253204172363

`∪[A119315(n+1), A375270(n+1)]`
-/

namespace A119314.P1815521253204172363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119314.P1815521253204172363

/-! ## A119314.P1340896446621726237

`∪[record[A006530(n+1)], A119315(n+1)]`
-/

namespace A119314.P1340896446621726237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A119314.P1340896446621726237

/-! ## A119314.P13469052081048616543

`eq[1, A005171(A292269(n+1))]+1`
-/

namespace A119314.P13469052081048616543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A292269 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119314.P13469052081048616543

/-! ## A119314.P16827974902041345747

`eq[char[A119313(n+1)], A000007(n)]`
-/

namespace A119314.P16827974902041345747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A119314.P16827974902041345747

/-! ## A119314.P253707098859628613

`eq[char[A119313(n+1)], A000038(n)]`
-/

namespace A119314.P253707098859628613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A119314.P253707098859628613

/-! ## A119314.P14510121076919318935

`∪[A119315(n+1), A323520(n+1)]`
-/

namespace A119314.P14510121076919318935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119314.P14510121076919318935

/-! ## A119314.P11533340977838883461

`∪[A119315(n+1), A171474(n+1)]`
-/

namespace A119314.P11533340977838883461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119314.P11533340977838883461

/-!
# A119315: Numbers with composite numbers as third divisors.

The programs for A119315, there is no canonical definition to state claims against.
-/

/-! ## A119315.P12993736479562399661

`lt[0, A355453(n+1)]+1`
-/

namespace A119315.P12993736479562399661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A119315.P12993736479562399661

/-! ## A119315.P11027733997815695771

`eq[1, A355453(n+2)]+2`
-/

namespace A119315.P11027733997815695771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355453 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A119315.P11027733997815695771

/-! ## A119315.P8342286643790542504

`filter[A119314(n+1), A066247(#)]`
-/

namespace A119315.P8342286643790542504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A119315.P8342286643790542504

/-! ## A119315.P272441322650769875

`filter[A119314(n+1), A319710(#)]`
-/

namespace A119315.P272441322650769875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A119315.P272441322650769875

/-! ## A119315.P6204033147746784145

`filter[A119314(n+1), A355453(#)]`
-/

namespace A119315.P6204033147746784145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A119315.P6204033147746784145

/-! ## A119315.P12015596401708777465

`filter[A119314(n+2), A005171(#)]`
-/

namespace A119315.P12015596401708777465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119314 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A119315.P12015596401708777465

/-! ## A119315.P17396591660607711054

`filter[A119314(n+2), A087049(#)]`
-/

namespace A119315.P17396591660607711054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119314 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A119315.P17396591660607711054

/-! ## A119315.P2670484334344643929

`∩[A013929(n+1), A119314(n+1)]`
-/

namespace A119315.P2670484334344643929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119315.P2670484334344643929

/-! ## A119315.P8932576792819861480

`filter[A283050(n+1), A355453(#)]`
-/

namespace A119315.P8932576792819861480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A119315.P8932576792819861480

/-! ## A119315.P7540257551379440482

`∩[A119314(n+1), A283050(n+1)]`
-/

namespace A119315.P7540257551379440482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119315.P7540257551379440482

/-! ## A119315.P10791092320577951426

`filter[A013929(n+1), A355453(#)]`
-/

namespace A119315.P10791092320577951426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A119315.P10791092320577951426

/-! ## A119315.P11864871177014943302

`filter[A162966(n+1), A355453(#)]`
-/

namespace A119315.P11864871177014943302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A119315.P11864871177014943302

/-! ## A119315.P3521648672292111935

`filter[A354360(n+1), A355453(#)]`
-/

namespace A119315.P3521648672292111935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A119315.P3521648672292111935

/-! ## A119315.P8702595104525795134

`filter[A389462(n+1), A355453(#)]`
-/

namespace A119315.P8702595104525795134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A119315.P8702595104525795134

/-! ## A119315.P16730787102187985461

`∩[A119314(n+1), A389462(n+1)]`
-/

namespace A119315.P16730787102187985461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119315.P16730787102187985461

/-! ## A119315.P16083857101692746733

`∩[A002808(n+1), A119314(n+1)]`
-/

namespace A119315.P16083857101692746733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119315.P16083857101692746733

/-! ## A119315.P2899029373174523694

`filter[A363597(n+1), A355453(#)]`
-/

namespace A119315.P2899029373174523694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A119315.P2899029373174523694

/-! ## A119315.P5209135154730300660

`filter[A366288(n+1), A355453(#)]`
-/

namespace A119315.P5209135154730300660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A119315.P5209135154730300660

/-! ## A119315.P10111715765290347711

`filter[A289553(n+1), A355453(#)]`
-/

namespace A119315.P10111715765290347711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A119315.P10111715765290347711

/-! ## A119315.P4177044693601710173

`filter[A088609(n+1), A355453(#)]`
-/

namespace A119315.P4177044693601710173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A119315.P4177044693601710173

/-!
# A119316: Complement of A119315.

The programs for A119316, there is no canonical definition to state claims against.
-/

/-! ## A119316.P17198226171319497583

`eq[0, A355453(n+1)]+1`
-/

namespace A119316.P17198226171319497583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119316.P17198226171319497583

/-! ## A119316.P1904585916635474313

`comp[A119315(n+1)-1]+1`
-/

namespace A119316.P1904585916635474313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A119316.P1904585916635474313

/-! ## A119316.P9208746818703967448

`∪[A119313(n+1), A260442(n)]`
-/

namespace A119316.P9208746818703967448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119316.P9208746818703967448

/-! ## A119316.P17616467099613131289

`∪[A003277(n+1), A119313(n+1)]`
-/

namespace A119316.P17616467099613131289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119316.P17616467099613131289

/-! ## A119316.P5212348347105980489

`∪[A005117(n+1), A119313(n+1)]`
-/

namespace A119316.P5212348347105980489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119316.P5212348347105980489

/-! ## A119316.P5673309593187796558

`∪[A008578(n+1), A119313(n+1)]`
-/

namespace A119316.P5673309593187796558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119316.P5673309593187796558

/-! ## A119316.P11789946700997024615

`∪[A015919(n+1), A119313(n+1)]`
-/

namespace A119316.P11789946700997024615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119316.P11789946700997024615

/-! ## A119316.P17179648357145358854

`∪[A073485(n+1), A119313(n+1)]`
-/

namespace A119316.P17179648357145358854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119316.P17179648357145358854

/-! ## A119316.P14520602987431526657

`∪[A077620(n+1), A119313(n+1)]`
-/

namespace A119316.P14520602987431526657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119316.P14520602987431526657

/-! ## A119316.P8606286928781906308

`∪[A087246(n+1), A119313(n+1)]`
-/

namespace A119316.P8606286928781906308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119316.P8606286928781906308

/-! ## A119316.P17993560251082647475

`∪[A097605(n+1), A119313(n+1)]`
-/

namespace A119316.P17993560251082647475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119316.P17993560251082647475

/-! ## A119316.P16965157504221385121

`∪[A119313(n+1), A143578(n+1)]`
-/

namespace A119316.P16965157504221385121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119316.P16965157504221385121

/-! ## A119316.P9539288441473937998

`∪[A119313(n+1), A187731(n+1)]`
-/

namespace A119316.P9539288441473937998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119316.P9539288441473937998

/-! ## A119316.P10312565816855878748

`∪[A119313(n+1), A235050(n+1)]`
-/

namespace A119316.P10312565816855878748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119316.P10312565816855878748

/-! ## A119316.P17790740234770681061

`∪[A340076(n+1), A119313(n+1)]`
-/

namespace A119316.P17790740234770681061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119316.P17790740234770681061

/-! ## A119316.P2013422421203200505

`∪[record[A006530(n+1)], A119313(n+1)]`
-/

namespace A119316.P2013422421203200505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A119316.P2013422421203200505

/-! ## A119316.P14721920578067390892

`lt[A000005(A292269(n+1)), 3]+1`
-/

namespace A119316.P14721920578067390892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A292269 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A119316.P14721920578067390892

/-! ## A119316.P6838281121570489222

`eq[A028310(n)-n, A355453(A028310(n))]`
-/

namespace A119316.P6838281121570489222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355453 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119316.P6838281121570489222

/-! ## A119316.P14006349328043801164

`∪[A005180(n+1), A119313(n+1)]`
-/

namespace A119316.P14006349328043801164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119316.P14006349328043801164

/-! ## A119316.P13272265955867690143

`comp[A105570(comp[A119313(n+1)])]`
-/

namespace A119316.P13272265955867690143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A119316.P13272265955867690143

/-!
# A119317: n-th divisor of A087134(n), the smallest number whose n-th divisor is prime (for n > 1).

The programs for A119317, there is no canonical definition to state claims against.
-/

/-! ## A119317.P14244358153150268168

`A006530(A087134(n+1)/A087134(A226764(n+4)))`
-/

namespace A119317.P14244358153150268168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A087134 (n + 1) : ℚ) / (A087134 (A226764 (n + 4)).toNat : ℚ))).toNat

end

end A119317.P14244358153150268168

/-! ## A119317.P5835398042873193626

`A006530(∏{p}[A087134(n+1), #])`
-/

namespace A119317.P5835398042873193626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A119317.P5835398042873193626

/-! ## A119317.P2342344829372484479

`A006530(A087134(n+1)/A320536(n+1))`
-/

namespace A119317.P2342344829372484479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A087134 (n + 1) : ℚ) / (A320536 (n + 1) : ℚ))).toNat

end

end A119317.P2342344829372484479

/-! ## A119317.P8668172142004934627

`A006530(A087134(n+1)/(A069637(n+1)+1))`
-/

namespace A119317.P8668172142004934627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A087134 (n + 1) : ℚ) / (A069637 (n + 1) + 1 : ℚ))).toNat

end

end A119317.P8668172142004934627

/-! ## A119317.P12363084315457867782

`A034699(∏{p}[A087134(n+1), #])`
-/

namespace A119317.P12363084315457867782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A119317.P12363084315457867782

/-!
# A119318: n-th divisor of A119311(n), the smallest number such that the n-th divisor is a prime power.

The programs for A119318, there is no canonical definition to state claims against.
-/

/-! ## A119318.P18031701243239415066

`A034699(A119311(n+1))`
-/

namespace A119318.P18031701243239415066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A119311 (n + 1)).toNat

end

end A119318.P18031701243239415066

/-!
# A119320: Difference between 10^n and the largest n-digit semiprime.

The programs for A119320, there is no canonical definition to state claims against.
-/

/-! ## A119320.P811406357672390215

`10^(n+1)-A098450(n+1)`
-/

namespace A119320.P811406357672390215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - A098450 (n + 1)

end

end A119320.P811406357672390215

/-!
# A119321: Hypotenuse of primitive Pythagorean triangles sorted on inradius (A020888), then on hypotenuse.

The programs for A119321, there is no canonical definition to state claims against.
-/

/-! ## A119321.P8660577131368934662

`A196394(n+1)-(A196393(n+1)+A185284(A198321(n)))`
-/

namespace A119321.P8660577131368934662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196394 (n + 1) - (A196393 (n + 1) + A185284 (A198321 n).toNat)

end

end A119321.P8660577131368934662

/-! ## A119321.P2367969299995673782

`A196394(n+1)-A196393(n+1)/A356157(A220220(n+1))`
-/

namespace A119321.P2367969299995673782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196394 (n + 1) : ℚ) - (A196393 (n + 1) : ℚ) / (A356157 (A220220 (n + 1)).toNat : ℚ)

end

end A119321.P2367969299995673782

/-! ## A119321.P12830823067498786888

`A196394(n+1)-A196393(n+1)/A204127(A335412(n+3))`
-/

namespace A119321.P12830823067498786888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196394 (n + 1) : ℚ) - (A196393 (n + 1) : ℚ) / (A204127 (A335412 (n + 3)).toNat : ℚ)

end

end A119321.P12830823067498786888

/-! ## A119321.P11865357972114987525

`A196394(n+1)-A196393(n+1)%A001844(A304489(n+1))`
-/

namespace A119321.P11865357972114987525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196394 (n + 1) - Int.tmod (A196393 (n + 1)) (A001844 (A304489 (n + 1)).toNat)

end

end A119321.P11865357972114987525

/-!
# A119322: Inradius of primitive Pythagorean triangles sorted on hypotenuse (A020882), then on inradius.

The programs for A119322, there is no canonical definition to state claims against.
-/

/-! ## A119322.P16117171402598054168

`A057229(n)/A020886(A187829(n+1))`
-/

namespace A119322.P16117171402598054168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057229 n : ℚ) / (A020886 (A187829 (n + 1)).toNat : ℚ)

end

end A119322.P16117171402598054168

/-! ## A119322.P405842847449473893

`A020886(n+1)-A118759(A081804(n+1))`
-/

namespace A119322.P405842847449473893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020886 (n + 1) - A118759 (A081804 (n + 1)).toNat

end

end A119322.P405842847449473893

/-! ## A119322.P15627800225361988768

`A020886(n+1)-A020882(A187829(n+1))`
-/

namespace A119322.P15627800225361988768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020886 (n + 1) - A020882 (A187829 (n + 1)).toNat

end

end A119322.P15627800225361988768

/-! ## A119322.P4740918149862066373

`A020886(A187829(n+1))-A081804(n+1)`
-/

namespace A119322.P4740918149862066373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020886 (A187829 (n + 1)).toNat - A081804 (n + 1)

end

end A119322.P4740918149862066373

/-! ## A119322.P2879137537805543636

`A020886(A187829(n+1))%A020882(n+1)`
-/

namespace A119322.P2879137537805543636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020886 (A187829 (n + 1)).toNat) (A020882 (n + 1))

end

end A119322.P2879137537805543636

/-!
# A119323: a(n) is the least prime p such that n*p#-1 is prime.

The programs for A119323, there is no canonical definition to state claims against.
-/

/-! ## A119323.P7342532474207634711

`A000040(A001222(A284464(2*n+1)+3))`
-/

namespace A119323.P7342532474207634711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001222 (A284464 (2 * n + 1) + 3).toNat).toNat

end

end A119323.P7342532474207634711

/-! ## A119323.P11957179524907116965

`p?[gcd(A018937(n+1), A225434(n))]`
-/

namespace A119323.P11957179524907116965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018937 (n + 1)) (A225434 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A119323.P11957179524907116965

/-! ## A119323.P15670545661644726546

`A020483(A063730(n)^A000120(n))`
-/

namespace A119323.P15670545661644726546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (SequenceMachineLib.roundAway ((A063730 n : ℚ) ^ (A000120 n : ℤ))).toNat

end

end A119323.P15670545661644726546

/-! ## A119323.P10564464270686445122

`p?[gcd(A028246(n+1), A147706(n+1))]`
-/

namespace A119323.P10564464270686445122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028246 (n + 1)) (A147706 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A119323.P10564464270686445122

/-! ## A119323.P16593347401923491215

`A096916(A013635(3*n+4)+A013619(n))`
-/

namespace A119323.P16593347401923491215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096916 (A013635 (3 * n + 4) + A013619 n).toNat

end

end A119323.P16593347401923491215

/-!
# A119325: Define a(1) = A119323(1), then a(n+1) = A119323(i) > a(n) with the least i.

The programs for A119325, there is no canonical definition to state claims against.
-/

/-! ## A119325.P4925367054510808558

`A119324(2*(n+1))`
-/

namespace A119325.P4925367054510808558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119324 (2 * (n + 1))

end

end A119325.P4925367054510808558

/-! ## A119325.P11976216545239930369

`p?[A119324(Δ[n²]+1)]`
-/

namespace A119325.P11976216545239930369
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119324 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119325.P11976216545239930369

/-! ## A119325.P7448985570602090737

`∑{p}[A119324(n+2+n), #]`
-/

namespace A119325.P7448985570602090737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119324 (n + 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A119325.P7448985570602090737

/-!
# A119326: Number triangle T(n,k) = Sum_{j=0..n-k} C(k,2j)*C(n-k,2j).

The programs for A119326, there is no canonical definition to state claims against.
-/

/-! ## A119326.P11212187026244178102

`(A098593(n)+A007318(n))/2`
-/

namespace A119326.P11212187026244178102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098593 n + A007318 n : ℚ) / 2

end

end A119326.P11212187026244178102

/-! ## A119326.P16791507541448220287

`A014682(A098593(n)+A007318(n))`
-/

namespace A119326.P16791507541448220287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A098593 n + A007318 n).toNat

end

end A119326.P16791507541448220287

/-! ## A119326.P13334886088212558103

`A014682(A098593(n)+Δ[A102363(n)])`
-/

namespace A119326.P13334886088212558103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A098593 n + (f1 (n + 1) - f1 n)).toNat

end

end A119326.P13334886088212558103

/-! ## A119326.P6660924863340164868

`A014682(A098593(n)+ceil(A109128(n)/2))`
-/

namespace A119326.P6660924863340164868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A098593 n + ⌈(A109128 n : ℚ) / 2⌉).toNat

end

end A119326.P6660924863340164868

/-! ## A119326.P1214973561533864668

`A014682(A098593(n)+ceil(A134058(n)/2))`
-/

namespace A119326.P1214973561533864668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A098593 n + ⌈(A134058 n : ℚ) / 2⌉).toNat

end

end A119326.P1214973561533864668

/-! ## A119326.P7828799572734640953

`A014682(A098593(n)+(A131063(n)+4)/5)`
-/

namespace A119326.P7828799572734640953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A098593 n : ℚ) + (A131063 n + 4 : ℚ) / 5)).toNat

end

end A119326.P7828799572734640953

/-! ## A119326.P5796640515285339999

`A004526(A098593(n)+A007318(n))`
-/

namespace A119326.P5796640515285339999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A098593 n + A007318 n).toNat

end

end A119326.P5796640515285339999

/-! ## A119326.P12949099702278270180

`A006370(A098593(n)+A007318(n))`
-/

namespace A119326.P12949099702278270180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A098593 n + A007318 n).toNat

end

end A119326.P12949099702278270180

/-! ## A119326.P1601155282784959036

`A026741(A098593(n)+A007318(n))`
-/

namespace A119326.P1601155282784959036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A098593 n + A007318 n).toNat

end

end A119326.P1601155282784959036

/-! ## A119326.P8980528903030684015

`A289435(A098593(n)+A007318(n))`
-/

namespace A119326.P8980528903030684015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (A098593 n + A007318 n).toNat

end

end A119326.P8980528903030684015

/-! ## A119326.P2364206305840087362

`A289436(A098593(n)+A007318(n))`
-/

namespace A119326.P2364206305840087362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A098593 n + A007318 n).toNat

end

end A119326.P2364206305840087362

/-! ## A119326.P13268464633561285290

`A001057(A098593(n)+A007318(n)-1)`
-/

namespace A119326.P13268464633561285290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A098593 n + A007318 n - 1).toNat

end

end A119326.P13268464633561285290

/-!
# A119327: Expansion of (1-4x+12x^2-16x^3+8x^4)/(1-x)^5.

The programs for A119327, the canonical program `A119327.P13126675522747056635` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119327 has offset 0).

The definition of A119327 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+12x^2-16x^3+8x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` (program `A119327.P13126675522747056635`, by `A119327.P13126675522747056635.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119327.P13126675522747056635

`ogf((1-4x+12x^2-16x^3+8x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A119327

/-- `ogf((1-4x+12x^2-16x^3+8x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P13126675522747056635.Spec : Prop :=
  ∀ n, P13126675522747056635.a n = A119327 n

theorem P13126675522747056635.correct : P13126675522747056635.Spec := by
  intro n
  simp only [A119327]

end A119327

/-! ## A119327.P14281202255656379580

`Δ[(n-1)^3]+C(n, 4)`
-/

namespace A119327.P14281202255656379580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose n 4 : ℤ)

end

end A119327.P14281202255656379580

namespace A119327

/-- `Δ[(n-1)^3]+C(n, 4)` -/
def P14281202255656379580.Spec : Prop :=
  ∀ n, P14281202255656379580.a n = A119327 n

end A119327

/-! ## A119327.P5506360493368211860

`A000332(n)+Δ[(n-1)^3]`
-/

namespace A119327.P5506360493368211860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n + (f1 (n + 1) - f1 n)

end

end A119327.P5506360493368211860

namespace A119327

/-- `A000332(n)+Δ[(n-1)^3]` -/
def P5506360493368211860.Spec : Prop :=
  ∀ n, P5506360493368211860.a n = A119327 n

end A119327

/-! ## A119327.P477159433800053873

`C(n, 4)-(1-A271740(n)+n)`
-/

namespace A119327.P477159433800053873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 : ℤ) - (1 - A271740 n + (n : ℤ))

end

end A119327.P477159433800053873

namespace A119327

/-- `C(n, 4)-(1-A271740(n)+n)` -/
def P477159433800053873.Spec : Prop :=
  ∀ n, P477159433800053873.a n = A119327 n

end A119327

/-! ## A119327.P3072332009257618339

`A006522(n)+A000566(n)`
-/

namespace A119327.P3072332009257618339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006522 n + A000566 n

end

end A119327.P3072332009257618339

namespace A119327

/-- `A006522(n)+A000566(n)` -/
def P3072332009257618339.Spec : Prop :=
  ∀ n, P3072332009257618339.a n = A119327 n

end A119327

/-! ## A119327.P1647125019342953379

`A005476(n)+A006522(n)-n`
-/

namespace A119327.P1647125019342953379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n + (A006522 n - (n : ℤ))

end

end A119327.P1647125019342953379

namespace A119327

/-- `A005476(n)+A006522(n)-n` -/
def P1647125019342953379.Spec : Prop :=
  ∀ n, P1647125019342953379.a n = A119327 n

end A119327

/-! ## A119327.P4345733365440068123

`Δ[A007531(n)+A000389(n)]+1`
-/

namespace A119327.P4345733365440068123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n + A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A119327.P4345733365440068123

namespace A119327

/-- `Δ[A007531(n)+A000389(n)]+1` -/
def P4345733365440068123.Spec : Prop :=
  ∀ n, P4345733365440068123.a n = A119327 n

end A119327

/-! ## A119327.P15437350117497721221

`A016921(A161680(n))+A000332(n)`
-/

namespace A119327.P15437350117497721221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A161680 n).toNat + A000332 n

end

end A119327.P15437350117497721221

namespace A119327

/-- `A016921(A161680(n))+A000332(n)` -/
def P15437350117497721221.Spec : Prop :=
  ∀ n, P15437350117497721221.a n = A119327 n

end A119327

/-! ## A119327.P9940442936733873208

`A119326(∑[n+5]+5)`
-/

namespace A119327.P9940442936733873208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119326 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A119327.P9940442936733873208

namespace A119327

/-- `A119326(∑[n+5]+5)` -/
def P9940442936733873208.Spec : Prop :=
  ∀ n, P9940442936733873208.a n = A119327 n

end A119327

/-!
# A119328: Number triangle T(n,k)=sum{i=0..n, (-1)^(n-i)*C(n,i)*sum{j=0..i-k, C(k,2j)*C(i-k,2j)}}.

The programs for A119328, there is no canonical definition to state claims against.
-/

/-! ## A119328.P1948439715581766516

`ceil(A097807(n)/2*A122542(n))`
-/

namespace A119328.P1948439715581766516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A097807 n : ℚ) / 2 * (A122542 n : ℚ)⌉

end

end A119328.P1948439715581766516

/-! ## A119328.P3041626922619416065

`A004525(A122542(n))*A097807(n)`
-/

namespace A119328.P3041626922619416065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A122542 n).toNat * A097807 n

end

end A119328.P3041626922619416065

/-! ## A119328.P1860408056605399408

`A004525(A122542(abs(1-n)+1))/A097807(n)`
-/

namespace A119328.P1860408056605399408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 (A122542 (|1 - (n : ℤ)| + 1).toNat).toNat : ℚ) / (A097807 n : ℚ)

end

end A119328.P1860408056605399408

/-! ## A119328.P4819937423846604703

`A004525(A122542(n))/A097807(n)^A033999(n)`
-/

namespace A119328.P4819937423846604703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 (A122542 n).toNat : ℚ) / (A097807 n : ℚ) ^ (A033999 n : ℤ)

end

end A119328.P4819937423846604703

/-! ## A119328.P7042507529911616475

`(A004525(A122542(n))/A097807(n))%A290503(n+1)`
-/

namespace A119328.P7042507529911616475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A004525 (A122542 n).toNat : ℚ) / (A097807 n : ℚ))) (A290503 (n + 1))

end

end A119328.P7042507529911616475

/-!
# A119329: Number triangle T(n,k)=sum{j=0..n-k, C(k,2j)C(n-k,2j)*2^j}.

The programs for A119329, there is no canonical definition to state claims against.
-/

/-! ## A119329.P14225548753757636869

`3-2*∏{p}[A016116(n), #-A119326(n)]`
-/

namespace A119329.P14225548753757636869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - A119326 n))

end

end A119329.P14225548753757636869

/-! ## A119329.P9889784038814577628

`A272269(A119326(n))+A119326(n)`
-/

namespace A119329.P9889784038814577628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272269 (A119326 n).toNat + A119326 n

end

end A119329.P9889784038814577628

/-! ## A119329.P5948203981671644156

`A105356(A119326(n)^A119326(n+4))`
-/

namespace A119329.P5948203981671644156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105356 (SequenceMachineLib.roundAway ((A119326 n : ℚ) ^ (A119326 (n + 4) : ℤ))).toNat

end

end A119329.P5948203981671644156

/-! ## A119329.P9339084873534555240

`A004273(A119326(n)%A347850(2*n+5))`
-/

namespace A119329.P9339084873534555240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.tmod (A119326 n) (A347850 (2 * n + 5))).toNat

end

end A119329.P9339084873534555240

/-! ## A119329.P9140686760699506833

`A004273(((A098593(n)+A007318(n))/2)%A347850(2*n+5))`
-/

namespace A119329.P9140686760699506833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.tmod (SequenceMachineLib.roundAway ((A098593 n + A007318 n : ℚ) / 2)) (A347850 (2 * n + 5))).toNat

end

end A119329.P9140686760699506833

/-!
# A119330: Expansion of (1-x)^2/((1-x)^4-2x^4).

The programs for A119330, the canonical program `A119330.P5686165316048851339` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119330 has offset 0).

The definition of A119330 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+x^2)/(1-4x+6x^2-4x^3-x^4))` (program `A119330.P5686165316048851339`, by `A119330.P5686165316048851339.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119330.P5686165316048851339

`ogf((1-2x+x^2)/(1-4x+6x^2-4x^3-x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A119330

/-- `ogf((1-2x+x^2)/(1-4x+6x^2-4x^3-x^4))` -/
def P5686165316048851339.Spec : Prop :=
  ∀ n, P5686165316048851339.a n = A119330 n

theorem P5686165316048851339.correct : P5686165316048851339.Spec := by
  intro n
  simp only [A119330]

end A119330

/-! ## A119330.P12868878672313972445

`4*a(n-1)-6*a(n-2)+4*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A119330.P12868878672313972445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) + a (n - 4)

end

end A119330.P12868878672313972445

namespace A119330

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)+a(n-4)` -/
def P12868878672313972445.Spec : Prop :=
  ∀ n, P12868878672313972445.a n = A119330 n

end A119330

/-! ## A119330.P3574134442354857371

`∑[A097081(n)]`
-/

namespace A119330.P3574134442354857371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119330.P3574134442354857371

namespace A119330

/-- `∑[A097081(n)]` -/
def P3574134442354857371.Spec : Prop :=
  ∀ n, P3574134442354857371.a n = A119330 n

end A119330

/-! ## A119330.P8915634164295273739

`∑[A093406(A004271(n+1)-n)]`
-/

namespace A119330.P8915634164295273739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093406 (A004271 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119330.P8915634164295273739

namespace A119330

/-- `∑[A093406(A004271(n+1)-n)]` -/
def P8915634164295273739.Spec : Prop :=
  ∀ n, P8915634164295273739.a n = A119330 n

end A119330

/-! ## A119330.P17281715942442871802

`A097081(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A119330.P17281715942442871802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097081 n + a (A028310 n - 1).toNat

end

end A119330.P17281715942442871802

namespace A119330

/-- `A097081(n)+a(A028310(n)-1)` -/
def P17281715942442871802.Spec : Prop :=
  ∀ n, P17281715942442871802.a n = A119330 n

end A119330

/-! ## A119330.P11871605815678792913

`A097081(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A119330.P11871605815678792913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097081 n + a (A004273 n - (n : ℤ)).toNat

end

end A119330.P11871605815678792913

namespace A119330

/-- `A097081(n)+a(A004273(n)-n)` -/
def P11871605815678792913.Spec : Prop :=
  ∀ n, P11871605815678792913.a n = A119330 n

end A119330

/-! ## A119330.P17456472729236820611

`A097081(n)+A000040(n+1)%2*a(n-1)` with `a(0)=1`
-/

namespace A119330.P17456472729236820611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097081 n + Int.tmod (A000040 (n + 1)) 2 * a (n - 1)

end

end A119330.P17456472729236820611

namespace A119330

/-- `A097081(n)+A000040(n+1)%2*a(n-1)` -/
def P17456472729236820611.Spec : Prop :=
  ∀ n, P17456472729236820611.a n = A119330 n

end A119330

/-! ## A119330.P1938279372003113045

`a(n-1)+A159075(A312450(n))+A097081(n)` with `a(0)=1`
-/

namespace A119330.P1938279372003113045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A159075 (A312450 n).toNat + A097081 n)

end

end A119330.P1938279372003113045

namespace A119330

/-- `a(n-1)+A159075(A312450(n))+A097081(n)` -/
def P1938279372003113045.Spec : Prop :=
  ∀ n, P1938279372003113045.a n = A119330 n

end A119330

/-!
# A119331: Number triangle T(n,k)=sum{i=0..n, (-1)^(n-i)*C(n,i)*sum{j=0..i-k, C(k,2j)*C(i-k,2j)*2^j}}.

The programs for A119331, there is no canonical definition to state claims against.
-/

/-! ## A119331.P4803821189511883967

`A119328(n)+A011731(A022171(n))`
-/

namespace A119331.P4803821189511883967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119328 n + A011731 (A022171 n).toNat

end

end A119331.P4803821189511883967

/-! ## A119331.P14018717838243241116

`A119328(n)+A055641(A022112(n))`
-/

namespace A119331.P14018717838243241116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119328 n + A055641 (A022112 n).toNat

end

end A119331.P14018717838243241116

/-! ## A119331.P2448494352420723951

`A119328(n)+A016389(A086645(n))`
-/

namespace A119331.P2448494352420723951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119328 n + A016389 (A086645 n).toNat

end

end A119331.P2448494352420723951

/-! ## A119331.P5314371001901129210

`A119328(n)+A018843(A131063(n))`
-/

namespace A119331.P5314371001901129210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119328 n + A018843 (A131063 n).toNat

end

end A119331.P5314371001901129210

/-! ## A119331.P4222300091145139247

`A119328(n)+A055641(A231908(n+1))`
-/

namespace A119331.P4222300091145139247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119328 n + A055641 (A231908 (n + 1)).toNat

end

end A119331.P4222300091145139247

/-!
# A119332: Expansion of (1+x)/(1-2x^4).

The programs for A119332, the canonical program `A119332.P8049384746216734533` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119332 has offset 0).

The definition of A119332 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-2x^4))` (program `A119332.P8049384746216734533`, by `A119332.P8049384746216734533.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119332.P8049384746216734533

`ogf((1+x)/(1-2x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A119332

/-- `ogf((1+x)/(1-2x^4))` -/
def P8049384746216734533.Spec : Prop :=
  ∀ n, P8049384746216734533.a n = A119332 n

theorem P8049384746216734533.correct : P8049384746216734533.Spec := by
  intro n
  simp only [A119332]

end A119332

/-! ## A119332.P7933388572401337295

`2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A119332.P7933388572401337295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 0] fun n a =>
  2 * a (n - 4)

end

end A119332.P7933388572401337295

namespace A119332

/-- `2*a(n-4)` -/
def P7933388572401337295.Spec : Prop :=
  ∀ n, (P7933388572401337295.a n : ℤ) = A119332 n

end A119332

/-! ## A119332.P841518985999767846

`and(2, n+2)^round(n/4)`
-/

namespace A119332.P841518985999767846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 (n + 2) : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / 4) : ℤ)

end

end A119332.P841518985999767846

namespace A119332

/-- `and(2, n+2)^round(n/4)` -/
def P841518985999767846.Spec : Prop :=
  ∀ n, P841518985999767846.a n = (A119332 n : ℚ)

end A119332

/-! ## A119332.P14463988923312202679

`(2-and(2, n))^round(n/4)`
-/

namespace A119332.P14463988923312202679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.land 2 n : ℤ) : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / 4) : ℤ)

end

end A119332.P14463988923312202679

namespace A119332

/-- `(2-and(2, n))^round(n/4)` -/
def P14463988923312202679.Spec : Prop :=
  ∀ n, P14463988923312202679.a n = (A119332 n : ℚ)

end A119332

/-! ## A119332.P615900990240798492

`a(n-4)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A119332.P615900990240798492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 0] fun n a =>
  a (n - 4) + a (n - 4)

end

end A119332.P615900990240798492

namespace A119332

/-- `a(n-4)+a(n-4)` -/
def P615900990240798492.Spec : Prop :=
  ∀ n, (P615900990240798492.a n : ℤ) = A119332 n

end A119332

/-! ## A119332.P10916635054232510607

`2^floor(n/4)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A119332.P10916635054232510607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ) - a (n - 2)

end

end A119332.P10916635054232510607

namespace A119332

/-- `2^floor(n/4)-a(n-2)` -/
def P10916635054232510607.Spec : Prop :=
  ∀ n, P10916635054232510607.a n = (A119332 n : ℚ)

end A119332

/-! ## A119332.P13727422450790108092

`a(n-4)/(1-1/2)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A119332.P13727422450790108092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 0, 0] fun n a =>
  a (n - 4) / (1 - (1 : ℚ) / 2)

end

end A119332.P13727422450790108092

namespace A119332

/-- `a(n-4)/(1-1/2)` -/
def P13727422450790108092.Spec : Prop :=
  ∀ n, P13727422450790108092.a n = (A119332 n : ℚ)

end A119332

/-! ## A119332.P13243631743384796571

`A077957(floor(n/2))`
-/

namespace A119332.P13243631743384796571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 ⌊(n : ℚ) / 2⌋.toNat

end

end A119332.P13243631743384796571

namespace A119332

/-- `A077957(floor(n/2))` -/
def P13243631743384796571.Spec : Prop :=
  ∀ n, P13243631743384796571.a n = A119332 n

end A119332

/-! ## A119332.P2438261942319944034

`∑[∑[∏[A164117(n)]]]`
-/

namespace A119332.P2438261942319944034
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119332.P2438261942319944034

namespace A119332

/-- `∑[∑[∏[A164117(n)]]]` -/
def P2438261942319944034.Spec : Prop :=
  ∀ n, P2438261942319944034.a n = A119332 n

end A119332

/-! ## A119332.P12204815717647598379

`A131575(∑[char[2*n]])`
-/

namespace A119332.P12204815717647598379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119332.P12204815717647598379

namespace A119332

/-- `A131575(∑[char[2*n]])` -/
def P12204815717647598379.Spec : Prop :=
  ∀ n, P12204815717647598379.a n = A119332 n

end A119332

/-! ## A119332.P7926737176410312553

`A077958(A057353(n))`
-/

namespace A119332.P7926737176410312553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 (A057353 n).toNat

end

end A119332.P7926737176410312553

namespace A119332

/-- `A077958(A057353(n))` -/
def P7926737176410312553.Spec : Prop :=
  ∀ n, P7926737176410312553.a n = A119332 n

end A119332

/-! ## A119332.P6053786183676329943

`A077958(A187321(n))`
-/

namespace A119332.P6053786183676329943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 (A187321 n).toNat

end

end A119332.P6053786183676329943

namespace A119332

/-- `A077958(A187321(n))` -/
def P6053786183676329943.Spec : Prop :=
  ∀ n, P6053786183676329943.a n = A119332 n

end A119332

/-! ## A119332.P1806175982980089195

`A052552(A004526(n))-1`
-/

namespace A119332.P1806175982980089195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (A004526 n).toNat - 1

end

end A119332.P1806175982980089195

namespace A119332

/-- `A052552(A004526(n))-1` -/
def P1806175982980089195.Spec : Prop :=
  ∀ n, P1806175982980089195.a n = A119332 n

end A119332

/-! ## A119332.P2165442726759011486

`A133872(n)*A200675(n)`
-/

namespace A119332.P2165442726759011486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n * A200675 n

end

end A119332.P2165442726759011486

namespace A119332

/-- `A133872(n)*A200675(n)` -/
def P2165442726759011486.Spec : Prop :=
  ∀ n, P2165442726759011486.a n = A119332 n

end A119332

/-! ## A119332.P6527576256998527670

`lcm(A128130(n), A200675(n))`
-/

namespace A119332.P6527576256998527670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128130 n) (A200675 n)

end

end A119332.P6527576256998527670

namespace A119332

/-- `lcm(A128130(n), A200675(n))` -/
def P6527576256998527670.Spec : Prop :=
  ∀ n, (P6527576256998527670.a n : ℤ) = A119332 n

end A119332

/-! ## A119332.P14990171847504505263

`A052552(A052928(n)/2)-1`
-/

namespace A119332.P14990171847504505263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (SequenceMachineLib.roundAway ((A052928 n : ℚ) / 2)).toNat - 1

end

end A119332.P14990171847504505263

namespace A119332

/-- `A052552(A052928(n)/2)-1` -/
def P14990171847504505263.Spec : Prop :=
  ∀ n, P14990171847504505263.a n = A119332 n

end A119332

/-! ## A119332.P18286363734048596152

`and(A200675(n+2), A200675(n))`
-/

namespace A119332.P18286363734048596152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A200675 (n + 2)) (A200675 n)

end

end A119332.P18286363734048596152

namespace A119332

/-- `and(A200675(n+2), A200675(n))` -/
def P18286363734048596152.Spec : Prop :=
  ∀ n, P18286363734048596152.a n = A119332 n

end A119332

/-! ## A119332.P11301639058330637404

`ceil(A131575(ceil((n+1)/2)+2)/2)`
-/

namespace A119332.P11301639058330637404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131575 (⌈(n + 1 : ℚ) / 2⌉ + 2).toNat : ℚ) / 2⌉

end

end A119332.P11301639058330637404

namespace A119332

/-- `ceil(A131575(ceil((n+1)/2)+2)/2)` -/
def P11301639058330637404.Spec : Prop :=
  ∀ n, P11301639058330637404.a n = A119332 n

end A119332

/-! ## A119332.P5514599133014198350

`A077957(A004526(n)+2)/2`
-/

namespace A119332.P5514599133014198350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077957 (A004526 n + 2).toNat : ℚ) / 2

end

end A119332.P5514599133014198350

namespace A119332

/-- `A077957(A004526(n)+2)/2` -/
def P5514599133014198350.Spec : Prop :=
  ∀ n, P5514599133014198350.a n = (A119332 n : ℚ)

end A119332

/-! ## A119332.P9949143850287248621

`A060546(A008619(n))-A016116(A008619(n))`
-/

namespace A119332.P9949143850287248621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A008619 n).toNat - A016116 (A008619 n).toNat

end

end A119332.P9949143850287248621

namespace A119332

/-- `A060546(A008619(n))-A016116(A008619(n))` -/
def P9949143850287248621.Spec : Prop :=
  ∀ n, P9949143850287248621.a n = A119332 n

end A119332

/-!
# A119335: Number triangle T(n,k) = Sum_{j=0..n-k} C(k,3j)*C(n-k,3j).

The programs for A119335, there is no canonical definition to state claims against.
-/

/-! ## A119335.P11491240252721921545

`A018892(A060328(3*n+4))-A307156(n)`
-/

namespace A119335.P11491240252721921545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (A060328 (3 * n + 4)).toNat - A307156 n

end

end A119335.P11491240252721921545

/-! ## A119335.P3639805575991613756

`A080425(A005448(lcm(16, n)/16+1))-A307156(n)`
-/

namespace A119335.P3639805575991613756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A005448 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16 + 1)).toNat).toNat - A307156 n

end

end A119335.P3639805575991613756

/-! ## A119335.P14098115877838738432

`A018892(∏{e}[A084920(2*(n+2))+1, #+1])-A307156(n)`
-/

namespace A119335.P14098115877838738432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (2 * (n + 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)) - A307156 n

end

end A119335.P14098115877838738432

/-! ## A119335.P4092663842514714999

`A080425(A005448(n+1))-A307156(n)`
-/

namespace A119335.P4092663842514714999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A005448 (n + 1)).toNat - A307156 n

end

end A119335.P4092663842514714999

/-! ## A119335.P10646293314499759205

`A077028(n)+1-A307156(n)-A086520(A082043(n))`
-/

namespace A119335.P10646293314499759205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + (1 - A307156 n) - A086520 (A082043 n).toNat

end

end A119335.P10646293314499759205

/-! ## A119335.P9004757454256187482

`A004247(n)+2-A307156(n)-A086520(A082043(n))`
-/

namespace A119335.P9004757454256187482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (2 - A307156 n) - A086520 (A082043 n).toNat

end

end A119335.P9004757454256187482

/-! ## A119335.P2858404249401660965

`A018892(A139643(Δ[n²]))-A307156(n)`
-/

namespace A119335.P2858404249401660965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (A139643 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat - A307156 n

end

end A119335.P2858404249401660965

/-! ## A119335.P5408010063809920414

`A020639(A299268(2*n+1))-A307156(n)`
-/

namespace A119335.P5408010063809920414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A299268 (2 * n + 1)).toNat - A307156 n

end

end A119335.P5408010063809920414

/-! ## A119335.P3821898067032161097

`A339749(A019546(2*n+5))-A307156(n)`
-/

namespace A119335.P3821898067032161097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339749 (A019546 (2 * n + 5)).toNat - A307156 n

end

end A119335.P3821898067032161097

/-!
# A119336: Expansion of (1-x)^4/((1-x)^6 - x^6).

The programs for A119336, the canonical program `A119336.P17317176141174688887` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119336 has offset 0).

The definition of A119336 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+6x^2-4x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5))` (program `A119336.P17317176141174688887`, by `A119336.P17317176141174688887.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119336.P17317176141174688887

`ogf((1-4x+6x^2-4x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A119336

/-- `ogf((1-4x+6x^2-4x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5))` -/
def P17317176141174688887.Spec : Prop :=
  ∀ n, P17317176141174688887.a n = A119336 n

theorem P17317176141174688887.correct : P17317176141174688887.Spec := by
  intro n
  simp only [A119336]

end A119336

/-! ## A119336.P9938671660412629344

`∑[A306847(n)]`
-/

namespace A119336.P9938671660412629344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119336.P9938671660412629344

namespace A119336

/-- `∑[A306847(n)]` -/
def P9938671660412629344.Spec : Prop :=
  ∀ n, P9938671660412629344.a n = A119336 n

end A119336

/-! ## A119336.P11624329244561536285

`A306847(n+1)+A134581(n)`
-/

namespace A119336.P11624329244561536285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (n + 1) + A134581 n

end

end A119336.P11624329244561536285

namespace A119336

/-- `A306847(n+1)+A134581(n)` -/
def P11624329244561536285.Spec : Prop :=
  ∀ n, P11624329244561536285.a n = A119336 n

end A119336

/-! ## A119336.P1883689935387922362

`A129339(n+1)-A227430(n)`
-/

namespace A119336.P1883689935387922362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129339 (n + 1) - A227430 n

end

end A119336.P1883689935387922362

namespace A119336

/-- `A129339(n+1)-A227430(n)` -/
def P1883689935387922362.Spec : Prop :=
  ∀ n, P1883689935387922362.a n = A119336 n

end A119336

/-! ## A119336.P9510472837074572641

`A131023(n+1)-A290993(n)`
-/

namespace A119336.P9510472837074572641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131023 (n + 1) - A290993 n

end

end A119336.P9510472837074572641

namespace A119336

/-- `A131023(n+1)-A290993(n)` -/
def P9510472837074572641.Spec : Prop :=
  ∀ n, P9510472837074572641.a n = A119336 n

end A119336

/-! ## A119336.P8440357862998306798

`Δ[A227430(n+1)]`
-/

namespace A119336.P8440357862998306798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119336.P8440357862998306798

namespace A119336

/-- `Δ[A227430(n+1)]` -/
def P8440357862998306798.Spec : Prop :=
  ∀ n, P8440357862998306798.a n = A119336 n

end A119336

/-! ## A119336.P10359349714896401405

`∑[abs(Δ[Δ[A227430(n)]])]`
-/

namespace A119336.P10359349714896401405
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227430 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119336.P10359349714896401405

namespace A119336

/-- `∑[abs(Δ[Δ[A227430(n)]])]` -/
def P10359349714896401405.Spec : Prop :=
  ∀ n, P10359349714896401405.a n = A119336 n

end A119336

/-! ## A119336.P1864715397417955175

`A227430(n+2)-A227430(n+1)`
-/

namespace A119336.P1864715397417955175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227430 (n + 2) - A227430 (n + 1)

end

end A119336.P1864715397417955175

namespace A119336

/-- `A227430(n+2)-A227430(n+1)` -/
def P1864715397417955175.Spec : Prop :=
  ∀ n, P1864715397417955175.a n = A119336 n

end A119336

/-! ## A119336.P12856586839283774663

`6*a(n-1)-15*a(n-2)+20*a(n-3)-15*a(n-4)+6*a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A119336.P12856586839283774663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5] fun n a =>
  6 * a (n - 1) - 15 * a (n - 2) + 20 * a (n - 3) - 15 * a (n - 4) + 6 * a (n - 5)

end

end A119336.P12856586839283774663

namespace A119336

/-- `6*a(n-1)-15*a(n-2)+20*a(n-3)-15*a(n-4)+6*a(n-5)` -/
def P12856586839283774663.Spec : Prop :=
  ∀ n, P12856586839283774663.a n = A119336 n

end A119336

/-! ## A119336.P3827249029468298445

`Δ[A024495(n+1)-A290993(n+1)]`
-/

namespace A119336.P3827249029468298445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (n + 1) - A290993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119336.P3827249029468298445

namespace A119336

/-- `Δ[A024495(n+1)-A290993(n+1)]` -/
def P3827249029468298445.Spec : Prop :=
  ∀ n, P3827249029468298445.a n = A119336 n

end A119336

/-! ## A119336.P15905243043906830699

`Δ[Δ[A306847(n+1)-A057681(n+1)]]`
-/

namespace A119336.P15905243043906830699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (n + 1) - A057681 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119336.P15905243043906830699

namespace A119336

/-- `Δ[Δ[A306847(n+1)-A057681(n+1)]]` -/
def P15905243043906830699.Spec : Prop :=
  ∀ n, P15905243043906830699.a n = A119336 n

end A119336

/-!
# A119337: Number triangle T(n,k)=sum{i=0..n, (-1)^(n-i)*C(n,i)*sum{j=0..i-k, C(k,3j)*C(i-k,3j)}}.

The programs for A119337, there is no canonical definition to state claims against.
-/

/-! ## A119337.P10709805345576103858

`A097805(n)*A106470(A185869(n+1))`
-/

namespace A119337.P10709805345576103858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A106470 (A185869 (n + 1)).toNat

end

end A119337.P10709805345576103858

/-! ## A119337.P7930038693373882623

`A062157(A327083(n+1))*A097805(n)`
-/

namespace A119337.P7930038693373882623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A327083 (n + 1)).toNat * A097805 n

end

end A119337.P7930038693373882623

/-! ## A119337.P14969744051802756699

`A110555(A061579(n))^A143632(n+3)`
-/

namespace A119337.P14969744051802756699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110555 (A061579 n).toNat : ℚ) ^ (A143632 (n + 3) : ℤ)

end

end A119337.P14969744051802756699

/-! ## A119337.P11745618820775007267

`A110555(A061579(n))%A112058(2*(n+2))`
-/

namespace A119337.P11745618820775007267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110555 (A061579 n).toNat) (A112058 (2 * (n + 2)))

end

end A119337.P11745618820775007267

/-! ## A119337.P13014788184827502978

`A119328(n)-A011731(A022171(n))`
-/

namespace A119337.P13014788184827502978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119328 n - A011731 (A022171 n).toNat

end

end A119337.P13014788184827502978

/-!
# A119338: Table by antidiagonals: a(m,n) is the number of m-dimensional partitions of n up to conjugacy, for m >= 0, n >= 1.

The programs for A119338, there is no canonical definition to state claims against.
-/

/-! ## A119338.P2621424924803603732

`A119269(∑[char[∑[n]]]²-n)`
-/

namespace A119338.P2621424924803603732
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119269 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A119338.P2621424924803603732

/-! ## A119338.P7533519909279327952

`xor(2, xor(2, A119269(A038722(n+1))))`
-/

namespace A119338.P7533519909279327952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A119269 (A038722 (n + 1)).toNat))

end

end A119338.P7533519909279327952

/-! ## A119338.P1021741453638805592

`A119269(A038722(n+1))+A000007(n+2)`
-/

namespace A119338.P1021741453638805592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119269 (A038722 (n + 1)).toNat + A000007 (n + 2)

end

end A119338.P1021741453638805592

/-! ## A119338.P6682305007881622221

`A119269(A038722(n+1))%A081092(n+1)`
-/

namespace A119338.P6682305007881622221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119269 (A038722 (n + 1)).toNat) (A081092 (n + 1))

end

end A119338.P6682305007881622221

/-! ## A119338.P5966442385301964400

`A119269(A038722(n+1))+A010054(3*n+2)`
-/

namespace A119338.P5966442385301964400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119269 (A038722 (n + 1)).toNat + A010054 (3 * n + 2)

end

end A119338.P5966442385301964400

/-! ## A119338.P10962519617258492816

`A119269(A038722(n+1))+A008448(n+3)%2`
-/

namespace A119338.P10962519617258492816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119269 (A038722 (n + 1)).toNat + Int.tmod (A008448 (n + 3)) 2

end

end A119338.P10962519617258492816

/-! ## A119338.P14417645095061595214

`A075432(n+1)%2*A119269(A038722(n+1))`
-/

namespace A119338.P14417645095061595214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075432 (n + 1)) 2 * A119269 (A038722 (n + 1)).toNat

end

end A119338.P14417645095061595214

/-! ## A119338.P315042102397669569

`A179890(n+1)%2*A119269(A038722(n+1))`
-/

namespace A119338.P315042102397669569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179890 (n + 1)) 2 * A119269 (A038722 (n + 1)).toNat

end

end A119338.P315042102397669569

/-! ## A119338.P15395003367811069798

`A221903(n+1)%2*A119269(A038722(n+1))`
-/

namespace A119338.P15395003367811069798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221903 (n + 1)) 2 * A119269 (A038722 (n + 1)).toNat

end

end A119338.P15395003367811069798

/-! ## A119338.P6580705013682725704

`A119269(A038722(n+1))+C(2, A249553(n+1))`
-/

namespace A119338.P6580705013682725704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119269 (A038722 (n + 1)).toNat + (Nat.choose 2 (A249553 (n + 1)).toNat : ℤ)

end

end A119338.P6580705013682725704

/-!
# A119339: Triangle: number of exactly (m-1)-dimensional partitions of n, up to conjugacy, for n >= 1, m=n..1.

The programs for A119339, there is no canonical definition to state claims against.
-/

/-! ## A119339.P5551865601028369510

`A119270(gcd(A038722(n+1), A133089(n)))`
-/

namespace A119339.P5551865601028369510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119270 (Int.gcd (A038722 (n + 1)) (A133089 n))

end

end A119339.P5551865601028369510

/-! ## A119339.P13544482320881001695

`A119270(A038722(n+1)%A163676(n+1))`
-/

namespace A119339.P13544482320881001695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119270 (Int.tmod (A038722 (n + 1)) (A163676 (n + 1))).toNat

end

end A119339.P13544482320881001695

/-! ## A119339.P16874266186805488733

`A119270(∑[char[∑[n]]]²-n)`
-/

namespace A119339.P16874266186805488733
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119270 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A119339.P16874266186805488733

/-! ## A119339.P6224506894669929429

`A119270(A038722(n+1))^A178334(n)`
-/

namespace A119339.P6224506894669929429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119270 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A119339.P6224506894669929429

/-! ## A119339.P15771559225407113090

`A119270(A038722(n+1))%A144914(n)`
-/

namespace A119339.P15771559225407113090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119270 (A038722 (n + 1)).toNat) (A144914 n)

end

end A119339.P15771559225407113090

/-! ## A119339.P3689832730510200450

`lcm(A057077(n), A119270(A038722(n+1)))`
-/

namespace A119339.P3689832730510200450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A119270 (A038722 (n + 1)).toNat)

end

end A119339.P3689832730510200450

/-! ## A119339.P4480765920215529389

`or(A000007(n), A119270(A038722(n+1)))`
-/

namespace A119339.P4480765920215529389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A119270 (A038722 (n + 1)).toNat)

end

end A119339.P4480765920215529389

/-!
# A119340: Number of 5-dimensional partitions of n up to conjugacy.

The programs for A119340, there is no canonical definition to state claims against.
-/

/-! ## A119340.P9214108788268674834

`A232746(A137549(n))`
-/

namespace A119340.P9214108788268674834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A137549 n).toNat

end

end A119340.P9214108788268674834

/-! ## A119340.P16704334653579237603

`A337125(A352044(n))`
-/

namespace A119340.P16704334653579237603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337125 (A352044 n).toNat

end

end A119340.P16704334653579237603

/-! ## A119340.P10995760173593157733

`A320456(A068330(n+1))`
-/

namespace A119340.P10995760173593157733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320456 (A068330 (n + 1)).toNat

end

end A119340.P10995760173593157733

/-! ## A119340.P2527948920930258824

`A172471(or(1, A122447(n)))`
-/

namespace A119340.P2527948920930258824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Int.lor 1 (A122447 n)).toNat

end

end A119340.P2527948920930258824

/-! ## A119340.P4488485251025253499

`A003056(floor(sqrt(A220352(n))))`
-/

namespace A119340.P4488485251025253499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.sqrt (A220352 n)).toNat

end

end A119340.P4488485251025253499

/-!
# A119341: Number of 6-dimensional partitions of n up to conjugacy.

The programs for A119341, there is no canonical definition to state claims against.
-/

/-! ## A119341.P11579934292777671538

`Δ[∑[A119342(n)]-A119268(n)]`
-/

namespace A119341.P11579934292777671538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119342 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A119268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119341.P11579934292777671538

/-! ## A119341.P17787489147964320448

`A119342(n+1)-Δ[A119268(n)]`
-/

namespace A119341.P17787489147964320448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119342 (n + 1) - (f1 (n + 1) - f1 n)

end

end A119341.P17787489147964320448

/-! ## A119341.P6460790211078457129

`A119342(n+1)+A119268(n)-A119268(n+1)`
-/

namespace A119341.P6460790211078457129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119342 (n + 1) + (A119268 n - A119268 (n + 1))

end

end A119341.P6460790211078457129

/-! ## A119341.P11642818233494087757

`A119342(n)-A340998(A000786(n))`
-/

namespace A119341.P11642818233494087757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119342 n - A340998 ((A000786 n).toNat + 140)

end

end A119341.P11642818233494087757

/-! ## A119341.P11464292171360461910

`A119342(n)-A273294(A309863(n))`
-/

namespace A119341.P11464292171360461910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119342 n - A273294 (A309863 n).toNat

end

end A119341.P11464292171360461910

/-!
# A119342: Number of 7-dimensional partitions of n up to conjugacy.

The programs for A119342, there is no canonical definition to state claims against.
-/

/-! ## A119342.P2129361590500130562

`A119268(n)-log2((2^C(n, 10))!)`
-/

namespace A119342.P2129361590500130562
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A119268 n : ℝ) - Real.logb 2 (Nat.factorial (2 ^ Nat.choose n 10) : ℝ)

end

end A119342.P2129361590500130562

/-! ## A119342.P2939014876253761570

`A157271(A004148(n)+A000786(n))`
-/

namespace A119342.P2939014876253761570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A004148 n + A000786 n).toNat

end

end A119342.P2939014876253761570

/-! ## A119342.P14254223876938500135

`A119268(n)-A286044(A000085(n))`
-/

namespace A119342.P14254223876938500135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119268 n - A286044 (A000085 n).toNat

end

end A119342.P14254223876938500135

/-! ## A119342.P12068458047634602445

`A119268(A114806(n))-A241173(n)`
-/

namespace A119342.P12068458047634602445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119268 (A114806 n).toNat - A241173 n

end

end A119342.P12068458047634602445

/-! ## A119342.P4564612213186526383

`xor(A119268(n), A151843(A130662(n)))`
-/

namespace A119342.P4564612213186526383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A119268 n) (A151843 (A130662 n).toNat)

end

end A119342.P4564612213186526383

/-!
# A119344: Integer lengths of Theodorus-primes: numbers n such that the concatenation of the first n decimal digits of the Theodorus's constant sqrt(3) is prime.

The programs for A119344, there is no canonical definition to state claims against.
-/

/-! ## A119344.P6079588384626120119

`filter[A229550(n+1), A335617(#)]`
-/

namespace A119344.P6079588384626120119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A335617 (f1 j).toNat = 1) n)

end

end A119344.P6079588384626120119

/-!
# A119345: Numbers having exactly one representation as sum of two triangular numbers.

The programs for A119345, the canonical program `A119345.P15651874011805489413` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119345 has offset 1).

The definition of A119345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119345.P15651874011805489413

`eq[1, A052343(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A119345

/-- `eq[1, A052343(n)]` -/
def P15651874011805489413.Spec : Prop :=
  ∀ n, (P15651874011805489413.a n : ℤ) = A119345 (n + 1)

theorem P15651874011805489413.correct : P15651874011805489413.Spec := by
  intro n
  simp only [A119345, Nat.add_sub_cancel]

end A119345

/-! ## A119345.P3275649840147719851

`eq[1, round(sqrt(A008441(n)))]`
-/

namespace A119345.P3275649840147719851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008441 n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119345.P3275649840147719851

namespace A119345

/-- `eq[1, round(sqrt(A008441(n)))]` -/
def P3275649840147719851.Spec : Prop :=
  ∀ n, (P3275649840147719851.a n : ℤ) = A119345 (n + 1)

end A119345

/-! ## A119345.P4832549947633964691

`floor(A125018(n+1)/4)`
-/

namespace A119345.P4832549947633964691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A125018 (n + 1) : ℚ) / 4⌋

end

end A119345.P4832549947633964691

namespace A119345

/-- `floor(A125018(n+1)/4)` -/
def P4832549947633964691.Spec : Prop :=
  ∀ n, P4832549947633964691.a n = A119345 (n + 1)

end A119345

/-! ## A119345.P1028967754852897626

`eq[1, ceil(A129447(2*n)/2)]`
-/

namespace A119345.P1028967754852897626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A129447 (2 * n) : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119345.P1028967754852897626

namespace A119345

/-- `eq[1, ceil(A129447(2*n)/2)]` -/
def P1028967754852897626.Spec : Prop :=
  ∀ n, (P1028967754852897626.a n : ℤ) = A119345 (n + 1)

end A119345

/-! ## A119345.P9691132033352041220

`eq[1, round(A125079(2*n)/2)]`
-/

namespace A119345.P9691132033352041220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A125079 (2 * n) : ℚ) / 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119345.P9691132033352041220

namespace A119345

/-- `eq[1, round(A125079(2*n)/2)]` -/
def P9691132033352041220.Spec : Prop :=
  ∀ n, (P9691132033352041220.a n : ℤ) = A119345 (n + 1)

end A119345

/-! ## A119345.P8396638739080009440

`eq[0, A277253(A008441(n))]`
-/

namespace A119345.P8396638739080009440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 (A008441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119345.P8396638739080009440

namespace A119345

/-- `eq[0, A277253(A008441(n))]` -/
def P8396638739080009440.Spec : Prop :=
  ∀ n, (P8396638739080009440.a n : ℤ) = A119345 (n + 1)

end A119345

/-! ## A119345.P11578943046053793282

`lt[A067661(abs(A134343(n))), 1]`
-/

namespace A119345.P11578943046053793282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 |A134343 n|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A119345.P11578943046053793282

namespace A119345

/-- `lt[A067661(abs(A134343(n))), 1]` -/
def P11578943046053793282.Spec : Prop :=
  ∀ n, (P11578943046053793282.a n : ℤ) = A119345 (n + 1)

end A119345

/-! ## A119345.P12496770121435831826

`eq[1, A000045(A129447(2*n))]`
-/

namespace A119345.P12496770121435831826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A129447 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119345.P12496770121435831826

namespace A119345

/-- `eq[1, A000045(A129447(2*n))]` -/
def P12496770121435831826.Spec : Prop :=
  ∀ n, (P12496770121435831826.a n : ℤ) = A119345 (n + 1)

end A119345

/-! ## A119345.P18349387212642757298

`eq[1, A052344(n)+A010054(n)]`
-/

namespace A119345.P18349387212642757298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 n + A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119345.P18349387212642757298

namespace A119345

/-- `eq[1, A052344(n)+A010054(n)]` -/
def P18349387212642757298.Spec : Prop :=
  ∀ n, (P18349387212642757298.a n : ℤ) = A119345 (n + 1)

end A119345

/-! ## A119345.P15032616230978964246

`eq[2, A008441(n)+A005369(n)]`
-/

namespace A119345.P15032616230978964246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n + A005369 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119345.P15032616230978964246

namespace A119345

/-- `eq[2, A008441(n)+A005369(n)]` -/
def P15032616230978964246.Spec : Prop :=
  ∀ n, (P15032616230978964246.a n : ℤ) = A119345 (n + 1)

end A119345

/-! ## A119345.P7109707241239590192

`∪[A005098(n+1), A125020(n+1)]`
-/

namespace A119345.P7109707241239590192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119345.P7109707241239590192

namespace A119345

/-- `∪[A005098(n+1), A125020(n+1)]` -/
def P7109707241239590192.Spec : Prop :=
  ∀ n, (P7109707241239590192.a n : ℤ) = A119345 (n + 1)

end A119345

/-! ## A119345.P7569850442710690987

`∪[A125020(n+1), A364868(n+1)]`
-/

namespace A119345.P7569850442710690987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119345.P7569850442710690987

namespace A119345

/-- `∪[A125020(n+1), A364868(n+1)]` -/
def P7569850442710690987.Spec : Prop :=
  ∀ n, (P7569850442710690987.a n : ℤ) = A119345 (n + 1)

end A119345

/-! ## A119345.P7382222989044865419

`eq[A001055(A008441(n)+2), A008441(n)]`
-/

namespace A119345.P7382222989044865419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A008441 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119345.P7382222989044865419

namespace A119345

/-- `eq[A001055(A008441(n)+2), A008441(n)]` -/
def P7382222989044865419.Spec : Prop :=
  ∀ n, (P7382222989044865419.a n : ℤ) = A119345 (n + 1)

end A119345

/-! ## A119345.P12571583949345520553

`eq[A000108(A138741(2*n)), A138741(2*n)]`
-/

namespace A119345.P12571583949345520553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A138741 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138741 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119345.P12571583949345520553

namespace A119345

/-- `eq[A000108(A138741(2*n)), A138741(2*n)]` -/
def P12571583949345520553.Spec : Prop :=
  ∀ n, (P12571583949345520553.a n : ℤ) = A119345 (n + 1)

end A119345

/-! ## A119345.P3127544567172106609

`record[A020756(n+1)/A052343(A020756(n+1))]`
-/

namespace A119345.P3127544567172106609
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020756 (n + 1) : ℚ) / (A052343 (A020756 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119345.P3127544567172106609

namespace A119345

/-- `record[A020756(n+1)/A052343(A020756(n+1))]` -/
def P3127544567172106609.Spec : Prop :=
  ∀ n, P3127544567172106609.a n = (A119345 (n + 1) : ℚ)

end A119345

/-! ## A119345.P12750383524194149367

`eq[1, A000161(4*n+1)]`
-/

namespace A119345.P12750383524194149367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119345.P12750383524194149367

namespace A119345

/-- `eq[1, A000161(4*n+1)]` -/
def P12750383524194149367.Spec : Prop :=
  ∀ n, (P12750383524194149367.a n : ℤ) = A119345 (n + 1)

end A119345

/-! ## A119345.P1583613549812937333

`eq[1, A025435(4*n+1)]`
-/

namespace A119345.P1583613549812937333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119345.P1583613549812937333

namespace A119345

/-- `eq[1, A025435(4*n+1)]` -/
def P1583613549812937333.Spec : Prop :=
  ∀ n, (P1583613549812937333.a n : ℤ) = A119345 (n + 1)

end A119345

/-! ## A119345.P931873810991950014

`eq[2, A000925(2*n+1)]/2`
-/

namespace A119345.P931873810991950014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A119345.P931873810991950014

namespace A119345

/-- `eq[2, A000925(2*n+1)]/2` -/
def P931873810991950014.Spec : Prop :=
  ∀ n, P931873810991950014.a n = (A119345 (n + 1) : ℚ)

end A119345

/-! ## A119345.P15512384391749662912

`eq[2*n+1, A143574(2*n+1)]/2`
-/

namespace A119345.P15512384391749662912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143574 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A119345.P15512384391749662912

namespace A119345

/-- `eq[2*n+1, A143574(2*n+1)]/2` -/
def P15512384391749662912.Spec : Prop :=
  ∀ n, P15512384391749662912.a n = (A119345 (n + 1) : ℚ)

end A119345

/-! ## A119345.P3204619783396442098

`A002265(A125018(n+1))`
-/

namespace A119345.P3204619783396442098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A125018 (n + 1)).toNat

end

end A119345.P3204619783396442098

namespace A119345

/-- `A002265(A125018(n+1))` -/
def P3204619783396442098.Spec : Prop :=
  ∀ n, P3204619783396442098.a n = A119345 (n + 1)

end A119345

/-!
# A119346: Sequence of nim-values for the game in which two players alternately cut off one inch or root two inches from a piece of string of length n. Player who runs out of string loses.

The programs for A119346, there is no canonical definition to state claims against.
-/

/-! ## A119346.P579538911503570477

`C(A190487(n), a(n-1))` with `a(0)=0`
-/

namespace A119346.P579538911503570477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (A190487 n).toNat (a (n - 1))

end

end A119346.P579538911503570477

/-! ## A119346.P9871752757491629905

`C(A190483(n), a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A119346.P9871752757491629905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.choose (A190483 n).toNat (a (n - 1))

end

end A119346.P9871752757491629905

/-! ## A119346.P16093735073439185340

`(1-A188037(n))*A002577(a(n-1))` with `a(0)=0`
-/

namespace A119346.P16093735073439185340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (1 - A188037 n) * A002577 (a (n - 1)).toNat

end

end A119346.P16093735073439185340

/-! ## A119346.P9725166642772832355

`(1-A188037(n))*A026776(a(n-1))` with `a(0)=0`
-/

namespace A119346.P9725166642772832355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (1 - A188037 n) * A026776 (a (n - 1)).toNat

end

end A119346.P9725166642772832355

/-! ## A119346.P1365882666156530355

`(1-A188037(n))*A049622(a(n-1))` with `a(0)=0`
-/

namespace A119346.P1365882666156530355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (1 - A188037 n) * A049622 (a (n - 1)).toNat

end

end A119346.P1365882666156530355

/-!
# A119347: Number of distinct sums of distinct divisors of n. Here 0 (as the sum of an empty subset) is excluded from the count.

The programs for A119347, there is no canonical definition to state claims against.
-/

/-! ## A119347.P2281605881791908189

`A308605(n+1)-1`
-/

namespace A119347.P2281605881791908189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308605 (n + 1) - 1

end

end A119347.P2281605881791908189

/-! ## A119347.P588519966156508121

`2*A237290(n+1)/A000203(n+1)-1`
-/

namespace A119347.P588519966156508121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A237290 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)) - 1

end

end A119347.P588519966156508121

/-! ## A119347.P11749970949544853870

`∑{d}[n+1, A378596(#)]`
-/

namespace A119347.P11749970949544853870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378596 d

end

end A119347.P11749970949544853870

/-! ## A119347.P6601413212278658788

`A378447(n+1)+A193279(n+1)`
-/

namespace A119347.P6601413212278658788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378447 (n + 1) + A193279 (n + 1)

end

end A119347.P6601413212278658788

/-! ## A119347.P5504670051853060974

`A000203(n+1)-A378450(n+1)`
-/

namespace A119347.P5504670051853060974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A378450 (n + 1)

end

end A119347.P5504670051853060974

/-! ## A119347.P4391226773509225208

`A088580(n+1)-(A378450(n+1)+1)`
-/

namespace A119347.P4391226773509225208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A378450 (n + 1) + 1)

end

end A119347.P4391226773509225208

/-! ## A119347.P8629198349777992151

`2*A237290(n+1)/∑[A340793(n+1)]-1`
-/

namespace A119347.P8629198349777992151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A237290 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)) - 1

end

end A119347.P8629198349777992151

/-! ## A119347.P11770147968965011048

`ratio[A033999(n)]+2/A000203(n+1)*A237290(n+1)`
-/

namespace A119347.P11770147968965011048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) + 2 / (A000203 (n + 1) : ℚ) * (A237290 (n + 1) : ℚ)

end

end A119347.P11770147968965011048

/-! ## A119347.P5536430582469530433

`A023443(A308605(n+1))`
-/

namespace A119347.P5536430582469530433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A308605 (n + 1)).toNat

end

end A119347.P5536430582469530433

/-! ## A119347.P3756759244606402365

`A023443(2/A000203(n+1)*A237290(n+1))`
-/

namespace A119347.P3756759244606402365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.roundAway (2 / (A000203 (n + 1) : ℚ) * (A237290 (n + 1) : ℚ))).toNat

end

end A119347.P3756759244606402365

/-! ## A119347.P11208199435865624703

`A023443(2*A237290(n+1)/∑[A340793(n+1)])`
-/

namespace A119347.P11208199435865624703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.roundAway (2 * ((A237290 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)))).toNat

end

end A119347.P11208199435865624703

/-! ## A119347.P9079587291240492565

`A289207(2/A000203(n+1)*A237290(n+1)+1)`
-/

namespace A119347.P9079587291240492565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (SequenceMachineLib.roundAway (2 / (A000203 (n + 1) : ℚ) * (A237290 (n + 1) : ℚ) + 1)).toNat

end

end A119347.P9079587291240492565

/-! ## A119347.P11991494867709270573

`A289207(2*A237290(n+1)/∑[A340793(n+1)]+1)`
-/

namespace A119347.P11991494867709270573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (SequenceMachineLib.roundAway (2 * ((A237290 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)) + 1)).toNat

end

end A119347.P11991494867709270573

/-! ## A119347.P1556973836986785281

`A008683(A048637(n+1))+2/A000203(n+1)*A237290(n+1)`
-/

namespace A119347.P1556973836986785281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A048637 (n + 1)).toNat : ℚ) + 2 / (A000203 (n + 1) : ℚ) * (A237290 (n + 1) : ℚ)

end

end A119347.P1556973836986785281

/-! ## A119347.P4836079253619460429

`A008683(A053070(n+1))+2/A000203(n+1)*A237290(n+1)`
-/

namespace A119347.P4836079253619460429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A053070 (n + 1)).toNat : ℚ) + 2 / (A000203 (n + 1) : ℚ) * (A237290 (n + 1) : ℚ)

end

end A119347.P4836079253619460429

/-! ## A119347.P12083904833859362286

`A033999(A152714(n))+2/A000203(n+1)*A237290(n+1)`
-/

namespace A119347.P12083904833859362286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (A152714 n).toNat : ℚ) + 2 / (A000203 (n + 1) : ℚ) * (A237290 (n + 1) : ℚ)

end

end A119347.P12083904833859362286

/-!
# A119349: Denominators of expansion of Jacobi nome q in parameter m.

The programs for A119349, there is no canonical definition to state claims against.
-/

/-! ## A119349.P1267391417858207516

`record[and(A070004(n+1), A360039(n+1))]`
-/

namespace A119349.P1267391417858207516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070004 (n + 1)) (A360039 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119349.P1267391417858207516

/-! ## A119349.P8105111057894859181

`record[and(A026532(n+1), A360039(n+2))]`
-/

namespace A119349.P8105111057894859181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026532 (n + 1)) (A360039 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119349.P8105111057894859181

/-! ## A119349.P11683878449357675143

`A029748(eq[A073636(n+1), A265373(n+1)])`
-/

namespace A119349.P11683878449357675143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029748 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A119349.P11683878449357675143

/-!
# A119350: First differences of A118374.

The programs for A119350, there is no canonical definition to state claims against.
-/

/-! ## A119350.P9256205038348700538

`Δ[A118374(n+1)]`
-/

namespace A119350.P9256205038348700538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119350.P9256205038348700538

/-! ## A119350.P11125381040258238987

`abs(Δ[A118374(-xor(n, -1))])`
-/

namespace A119350.P11125381040258238987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118374 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A119350.P11125381040258238987

/-! ## A119350.P4562964897410045267

`Δ[record[A118374(A020986(n))]]`
-/

namespace A119350.P4562964897410045267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118374 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119350.P4562964897410045267

/-! ## A119350.P5054093263978846327

`Δ[record[A118374(A193739(n))]]`
-/

namespace A119350.P5054093263978846327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118374 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119350.P5054093263978846327

/-! ## A119350.P9287862062793113473

`A000027(Δ[A118374(-xor(n, -1))])`
-/

namespace A119350.P9287862062793113473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118374 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A119350.P9287862062793113473

/-! ## A119350.P4805340920751163686

`A118374(n+2)-A118374(n+1)`
-/

namespace A119350.P4805340920751163686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118374 (n + 2) - A118374 (n + 1)

end

end A119350.P4805340920751163686

/-! ## A119350.P17490928833378952217

`Δ[A118374(-xor(n, -1))%A017497(n)]`
-/

namespace A119350.P17490928833378952217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118374 (-Int.xor (n : ℤ) (-1)).toNat) (A017497 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119350.P17490928833378952217

/-! ## A119350.P3605408124852310638

`A033999(n)²*Δ[A118374(-xor(n, -1))]`
-/

namespace A119350.P3605408124852310638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118374 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A119350.P3605408124852310638

/-! ## A119350.P18189470361031791452

`A087960(n)²*Δ[A118374(-xor(n, -1))]`
-/

namespace A119350.P18189470361031791452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118374 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A119350.P18189470361031791452

/-!
# A119351: Indices k of prime palindromic numbers formed by taking k digits in the decimal expansion of Pi and reflecting about the last digit.

The programs for A119351, there is no canonical definition to state claims against.
-/

/-! ## A119351.P3045171839364105519

`or(n+1, A038516(A008965(n+1)))`
-/

namespace A119351.P3045171839364105519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A038516 (A008965 (n + 1)).toNat)

end

end A119351.P3045171839364105519

/-!
# A119352: Smallest base b > 1 such that n in base b uses no digit b-1.

The programs for A119352, there is no canonical definition to state claims against.
-/

/-! ## A119352.P7067885495265246892

`A318928(A308076(n+1))+A176137(n)`
-/

namespace A119352.P7067885495265246892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318928 (A308076 (n + 1)).toNat + A176137 n

end

end A119352.P7067885495265246892

/-! ## A119352.P1920881295903214407

`A320110(n+1)+A036987(A189866(n+1))`
-/

namespace A119352.P1920881295903214407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320110 (n + 1) + A036987 (A189866 (n + 1)).toNat

end

end A119352.P1920881295903214407

/-! ## A119352.P146887962665979742

`A231555(n+1)+A000034(A300913(n))`
-/

namespace A119352.P146887962665979742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231555 (n + 1) + A000034 (A300913 n).toNat

end

end A119352.P146887962665979742

/-!
# A119354: Smallest number which does not use digit n-1 written in base n, but does use digit b-1 written in base b for any 1

The programs for A119354, there is no canonical definition to state claims against.
-/

/-! ## A119354.P16781539317227544870

`A236308(A130583(n+1))`
-/

namespace A119354.P16781539317227544870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236308 (A130583 (n + 1)).toNat

end

end A119354.P16781539317227544870

/-! ## A119354.P10465135305245959725

`∑[∑[A005128(A003436(n))]]`
-/

namespace A119354.P10465135305245959725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 (A003436 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119354.P10465135305245959725

/-! ## A119354.P18286426705434548863

`∩[A351897(n+1), A000075(n)]`
-/

namespace A119354.P18286426705434548863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000075 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119354.P18286426705434548863

/-!
# A119355: Triangle generated from binomial transforms of (1; 2, 3; 3, 4, 5; ...).

The programs for A119355, there is no canonical definition to state claims against.
-/

/-! ## A119355.P10607216693869624393

`A142354(A247306(n+1))+A104732(n+1)`
-/

namespace A119355.P10607216693869624393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142354 (A247306 (n + 1)).toNat + A104732 (n + 1)

end

end A119355.P10607216693869624393

/-!
# A119356: Numbers k such that A000330(k) is squarefree.

The programs for A119356, the canonical program `A119356.P3406510715932935683` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119356 has offset 1).

The definition of A119356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119356.P3406510715932935683

`eq[1, A375970(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A119356

/-- `eq[1, A375970(n+1)]+1` -/
def P3406510715932935683.Spec : Prop :=
  ∀ n, (P3406510715932935683.a n : ℤ) = A119356 (n + 1)

theorem P3406510715932935683.correct : P3406510715932935683.Spec := by
  intro n
  simp only [A119356, Nat.add_sub_cancel]

end A119356

/-! ## A119356.P16900889718229641979

`record[A000027(n+1)/A375970(n+1)]`
-/

namespace A119356.P16900889718229641979
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A375970 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119356.P16900889718229641979

namespace A119356

/-- `record[A000027(n+1)/A375970(n+1)]` -/
def P16900889718229641979.Spec : Prop :=
  ∀ n, P16900889718229641979.a n = (A119356 (n + 1) : ℚ)

end A119356

/-! ## A119356.P11434109432815459024

`record[A366994(n+1)/A375970(n+1)]`
-/

namespace A119356.P11434109432815459024
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366994 (n + 1) : ℚ) / (A375970 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119356.P11434109432815459024

namespace A119356

/-- `record[A366994(n+1)/A375970(n+1)]` -/
def P11434109432815459024.Spec : Prop :=
  ∀ n, P11434109432815459024.a n = (A119356 (n + 1) : ℚ)

end A119356

/-! ## A119356.P9932069559526981324

`eq[∑[n²], ∏{p}[∑[n²], #]]`
-/

namespace A119356.P9932069559526981324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A119356.P9932069559526981324

namespace A119356

/-- `eq[∑[n²], ∏{p}[∑[n²], #]]` -/
def P9932069559526981324.Spec : Prop :=
  ∀ n, (P9932069559526981324.a n : ℤ) = A119356 (n + 1)

end A119356

/-! ## A119356.P1823568287603292651

`record[(n+1)/∏{e}[∑[(n+1)²], #]]`
-/

namespace A119356.P1823568287603292651
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119356.P1823568287603292651

namespace A119356

/-- `record[(n+1)/∏{e}[∑[(n+1)²], #]]` -/
def P1823568287603292651.Spec : Prop :=
  ∀ n, P1823568287603292651.a n = (A119356 (n + 1) : ℚ)

end A119356

/-! ## A119356.P7370199303051614181

`record[root(n+1, ∏{e}[∑[(n+1)²], #])]`
-/

namespace A119356.P7370199303051614181
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119356.P7370199303051614181

namespace A119356

/-- `record[root(n+1, ∏{e}[∑[(n+1)²], #])]` -/
def P7370199303051614181.Spec : Prop :=
  ∀ n, P7370199303051614181.a n = (A119356 (n + 1) : ℝ)

end A119356

/-!
# A119357: Numbers k for which there exist two distinct subsets of the set of divisors of k having the same sum.

The programs for A119357, there is no canonical definition to state claims against.
-/

/-! ## A119357.P8986975529936518516

`lt[1, A308608(n+1)]+1`
-/

namespace A119357.P8986975529936518516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308608 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A119357.P8986975529936518516

/-! ## A119357.P845929046840503510

`lt[1, A308608(A028310(n))]`
-/

namespace A119357.P845929046840503510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308608 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A119357.P845929046840503510

/-! ## A119357.P11132540750684764027

`lt[1, A308608(A000007(n)+n)]`
-/

namespace A119357.P11132540750684764027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308608 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A119357.P11132540750684764027

/-! ## A119357.P9955682112200793791

`lt[1, A308608(A020761(n)+n)]`
-/

namespace A119357.P9955682112200793791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308608 (A020761 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A119357.P9955682112200793791

/-! ## A119357.P12486569061361251637

`lt[1, A308608(or(n, A020761(n)))]`
-/

namespace A119357.P12486569061361251637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308608 (Int.lor (n : ℤ) (A020761 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A119357.P12486569061361251637

/-! ## A119357.P3592096182235321787

`lt[1, A308608(A233583(n+1))]`
-/

namespace A119357.P3592096182235321787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308608 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A119357.P3592096182235321787

/-!
# A119358: Number of n-element subsets of [2n] having an even sum.

The programs for A119358, there is no canonical definition to state claims against.
-/

/-! ## A119358.P9030520660360888143

`A000984(n)-A110145(n)`
-/

namespace A119358.P9030520660360888143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A110145 n

end

end A119358.P9030520660360888143

/-! ## A119358.P6245152174146868410

`record[A126869(n)]-A110145(n)`
-/

namespace A119358.P6245152174146868410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A110145 n

end

end A119358.P6245152174146868410

/-! ## A119358.P16320308232951833546

`record[A126930(n)]-A110145(n)`
-/

namespace A119358.P16320308232951833546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A110145 n

end

end A119358.P16320308232951833546

/-! ## A119358.P7811948155128562562

`A001405(2*n)-A110145(n)`
-/

namespace A119358.P7811948155128562562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - A110145 n

end

end A119358.P7811948155128562562

/-! ## A119358.P17872183578436565807

`A126869(2*n)-A110145(n)`
-/

namespace A119358.P17872183578436565807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - A110145 n

end

end A119358.P17872183578436565807

/-! ## A119358.P2267873498680285008

`A126930(2*n)-A110145(n)`
-/

namespace A119358.P2267873498680285008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) - A110145 n

end

end A119358.P2267873498680285008

/-! ## A119358.P5604986017702134280

`A282011(∑[4*n])`
-/

namespace A119358.P5604986017702134280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119358.P5604986017702134280

/-! ## A119358.P17102166492311635752

`A318557(∑[n+3])`
-/

namespace A119358.P17102166492311635752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119358.P17102166492311635752

/-! ## A119358.P12901842882424816672

`A119326(∑[4*n])`
-/

namespace A119358.P12901842882424816672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119326 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119358.P12901842882424816672

/-!
# A119359: Central coefficients of number triangle A119326.

The programs for A119359, there is no canonical definition to state claims against.
-/

/-! ## A119359.P16220670599428246776

`A119326(∑[4*n]+1)%(4^n)`
-/

namespace A119359.P16220670599428246776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119326 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (4 ^ n : ℤ)

end

end A119359.P16220670599428246776

/-! ## A119359.P6587728075920647348

`char[A007318(n)]*A119326(∑[4*n]+1)`
-/

namespace A119359.P6587728075920647348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A119326 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A119359.P6587728075920647348

/-! ## A119359.P7810608907022129546

`A119326(∑[4*n]+1)+A008683(2*(n+1)²)`
-/

namespace A119359.P7810608907022129546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119326 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A008683 (2 * (n + 1) ^ 2)

end

end A119359.P7810608907022129546

/-! ## A119359.P8611288415346027500

`A001221(2-C(2, n+2))*A119326(∑[4*n]+1)`
-/

namespace A119359.P8611288415346027500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 - Nat.choose 2 (n + 2)) * A119326 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A119359.P8611288415346027500

/-! ## A119359.P6191615639764109945

`A001222(2-C(2, n+2))*A119326(∑[4*n]+1)`
-/

namespace A119359.P6191615639764109945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 - Nat.choose 2 (n + 2)) * A119326 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A119359.P6191615639764109945

/-!
# A119361: a(n) is the n-th positive integer which is divisible by the same distinct primes as n and which is divisible by no other primes.

The programs for A119361, there is no canonical definition to state claims against.
-/

/-! ## A119361.P8537824180678744216

`A007947(n+1)*A121067(n+1)`
-/

namespace A119361.P8537824180678744216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A121067 (n + 1)

end

end A119361.P8537824180678744216

/-! ## A119361.P13296139180161429624

`A015052(n+1)*A121067(n+1)`
-/

namespace A119361.P13296139180161429624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (n + 1) * A121067 (n + 1)

end

end A119361.P13296139180161429624

/-! ## A119361.P14747418167575605177

`abs(A062953(n+1)*A121067(n+1))`
-/

namespace A119361.P14747418167575605177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062953 (n + 1) * A121067 (n + 1)|

end

end A119361.P14747418167575605177

/-! ## A119361.P2911604558278557617

`sqrt(A078615(n+1))*A121067(n+1)`
-/

namespace A119361.P2911604558278557617
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A078615 (n + 1) : ℝ) * (A121067 (n + 1) : ℝ)

end

end A119361.P2911604558278557617

/-! ## A119361.P14043095839308895673

`A007913(A350390(n+1))*A121067(n+1)`
-/

namespace A119361.P14043095839308895673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A350390 (n + 1)).toNat * A121067 (n + 1)

end

end A119361.P14043095839308895673

/-! ## A119361.P9816158474405413086

`A121067(n+1)*A350390(A007948(n+1))`
-/

namespace A119361.P9816158474405413086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121067 (n + 1) * A350390 (A007948 (n + 1)).toNat

end

end A119361.P9816158474405413086

/-! ## A119361.P4669120847052060414

`A121067(n+1)*A350390(A066990(n+1))`
-/

namespace A119361.P4669120847052060414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121067 (n + 1) * A350390 (A066990 (n + 1)).toNat

end

end A119361.P4669120847052060414

/-!
# A119363: a(n) = Sum_{k=0..n} C(n,3k)^2.

The programs for A119363, there is no canonical definition to state claims against.
-/

/-! ## A119363.P7935186132923253417

`A119365(n)+A119364(n)`
-/

namespace A119363.P7935186132923253417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119365 n + A119364 n

end

end A119363.P7935186132923253417

/-! ## A119363.P15503140475691801451

`A119335(∑[4*n])`
-/

namespace A119363.P15503140475691801451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119363.P15503140475691801451

/-! ## A119363.P11093149527563874263

`and(-1, A119335(A046092(n)))`
-/

namespace A119363.P11093149527563874263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A119335 (A046092 n).toNat)

end

end A119363.P11093149527563874263

/-! ## A119363.P1842934385670402011

`or(A000007(n), A119335(A046092(n)))`
-/

namespace A119363.P1842934385670402011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A119335 (A046092 n).toNat)

end

end A119363.P1842934385670402011

/-! ## A119363.P18159212091054390482

`abs(A033999(n)*A119335(A046092(n)))`
-/

namespace A119363.P18159212091054390482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A119335 (A046092 n).toNat|

end

end A119363.P18159212091054390482

/-! ## A119363.P13573004548553973508

`A119335(A046092(n))+A000007(n+1)`
-/

namespace A119363.P13573004548553973508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 (A046092 n).toNat + A000007 (n + 1)

end

end A119363.P13573004548553973508

/-! ## A119363.P7091671487160222884

`A119335(A046092(n))+A000035(2*n)`
-/

namespace A119363.P7091671487160222884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 (A046092 n).toNat + A000035 (2 * n)

end

end A119363.P7091671487160222884

/-!
# A119364: Central coefficients of number triangle A119335.

The programs for A119364, there is no canonical definition to state claims against.
-/

/-! ## A119364.P4033950016613956599

`A119363(n)-A119365(n)`
-/

namespace A119364.P4033950016613956599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119363 n - A119365 n

end

end A119364.P4033950016613956599

/-! ## A119364.P1039926440279298575

`A119335(A001844(n))%(4^n)`
-/

namespace A119364.P1039926440279298575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119335 (A001844 n).toNat) (4 ^ n : ℤ)

end

end A119364.P1039926440279298575

/-! ## A119364.P13340901027711559139

`A119335(∑[4*n])-A119365(n)`
-/

namespace A119364.P13340901027711559139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 (∑ j ∈ Finset.range (n + 1), f1 j) - A119365 n

end

end A119364.P13340901027711559139

/-! ## A119364.P6886790142805771221

`A119335(∑[4*n]+1)%A330795(n)`
-/

namespace A119364.P6886790142805771221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119335 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A330795 n)

end

end A119364.P6886790142805771221

/-! ## A119364.P9088765423377247751

`A119335(A001844(n))-A000007(n)`
-/

namespace A119364.P9088765423377247751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 (A001844 n).toNat - A000007 n

end

end A119364.P9088765423377247751

/-!
# A119365: Generalized Catalan numbers for triangle A119335.

The programs for A119365, there is no canonical definition to state claims against.
-/

/-! ## A119365.P8350981252527216554

`A119363(n)-A119364(n)`
-/

namespace A119365.P8350981252527216554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119363 n - A119364 n

end

end A119365.P8350981252527216554

/-! ## A119365.P469623182827216964

`A119335(∑[4*n])-A119364(n)`
-/

namespace A119365.P469623182827216964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 (∑ j ∈ Finset.range (n + 1), f1 j) - A119364 n

end

end A119365.P469623182827216964

/-! ## A119365.P15330177350925793399

`A119363(n)-A119335(A001844(n))%(4^n)`
-/

namespace A119365.P15330177350925793399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119363 n - Int.tmod (A119335 (A001844 n).toNat) (4 ^ n : ℤ)

end

end A119365.P15330177350925793399

/-! ## A119365.P11233732358895431959

`A119363(n)-A119335(∑[4*n]+1)%A330795(n)`
-/

namespace A119365.P11233732358895431959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119363 n - Int.tmod (A119335 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A330795 n)

end

end A119365.P11233732358895431959

/-! ## A119365.P13957389773226338685

`A000108(n)-(A119367(n)+A119366(n))`
-/

namespace A119365.P13957389773226338685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - (A119367 n + A119366 n)

end

end A119365.P13957389773226338685

/-!
# A119366: Number of rooted planar n-trees whose number of leaves is equal to 1 modulo 3.

The programs for A119366, there is no canonical definition to state claims against.
-/

/-! ## A119366.P18086565171172931711

`A000108(n)-(A119367(n)+A119365(n))`
-/

namespace A119366.P18086565171172931711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - (A119367 n + A119365 n)

end

end A119366.P18086565171172931711

/-! ## A119366.P12772662508693322807

`A089408(2*n+1)-(A119367(n)+A119365(n))`
-/

namespace A119366.P12772662508693322807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n + 1) - (A119367 n + A119365 n)

end

end A119366.P12772662508693322807

/-! ## A119366.P15647188516243952529

`A097331(2*n+1)-(A119367(n)+A119365(n))`
-/

namespace A119366.P15647188516243952529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n + 1) - (A119367 n + A119365 n)

end

end A119366.P15647188516243952529

/-! ## A119366.P4745665821180819824

`A110488(A000124(n))-(A119367(n)+A119365(n))`
-/

namespace A119366.P4745665821180819824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110488 (A000124 n).toNat - (A119367 n + A119365 n)

end

end A119366.P4745665821180819824

/-!
# A119367: Number of rooted planar n-trees whose number of leaves is equal to 2 modulo 3.

The programs for A119367, there is no canonical definition to state claims against.
-/

/-! ## A119367.P1702411889469135985

`A000108(n)-(A119366(n)+A119365(n))`
-/

namespace A119367.P1702411889469135985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - (A119366 n + A119365 n)

end

end A119367.P1702411889469135985

/-! ## A119367.P18046642828321165687

`A050723(A026790(n))`
-/

namespace A119367.P18046642828321165687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050723 (A026790 n).toNat

end

end A119367.P18046642828321165687

/-! ## A119367.P5363195006505737124

`A085980(A000984(n))+A001465(n)`
-/

namespace A119367.P5363195006505737124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085980 (A000984 n).toNat + A001465 n

end

end A119367.P5363195006505737124

/-! ## A119367.P4918604412579675527

`A054908(A155955(n))+A001465(n)`
-/

namespace A119367.P4918604412579675527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054908 (A155955 n).toNat + A001465 n

end

end A119367.P4918604412579675527

/-!
# A119368: Palindromes whose smallest palindromic proper multiple is the number concatenated with itself.

The programs for A119368, there is no canonical definition to state claims against.
-/

/-! ## A119368.P15865363064754225839

`A314156(A120488(n+1)!)+n`
-/

namespace A119368.P15865363064754225839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314156 (Nat.factorial (A120488 (n + 1)).toNat) + (n : ℤ)

end

end A119368.P15865363064754225839

/-! ## A119368.P6079003828538397177

`A110046(A057940(a(n-1)))` with `a(0)=5, a(1)=6, a(2)=7, a(3)=8, a(4)=9`
-/

namespace A119368.P6079003828538397177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 6, 7, 8, 9] fun n a =>
  A110046 (A057940 (a (n - 1)).toNat).toNat

end

end A119368.P6079003828538397177

/-!
# A119369: Pendular trinomial triangle, read by rows of 2n+1 terms (n>=0), defined by the recurrence: if 0 < k < n, T(n,k) = T(n-1,k) + T(n,2n-1-k); otherwise, if n-1 < k < 2n-1, T(n,k) = T(n-1,k) + T(n,2n-2-k); with T(n,0)=T(n+1,2n)=1 and T(n+1,2n+1)=T(n+1,2n+2)=0.

The programs for A119369, there is no canonical definition to state claims against.
-/

/-! ## A119369.P423214801325013945

`A145569(A122445(n))^A014963(A079832(n+1))`
-/

namespace A119369.P423214801325013945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145569 (A122445 n).toNat : ℚ) ^ (A014963 (A079832 (n + 1)).toNat : ℤ)

end

end A119369.P423214801325013945

/-! ## A119369.P2167547719288621137

`A122445(n)-A086016(A371767(n))`
-/

namespace A119369.P2167547719288621137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 n - A086016 (A371767 n).toNat

end

end A119369.P2167547719288621137

/-! ## A119369.P17569301654312966600

`A167769(n)+A107846(A008997(n+1))`
-/

namespace A119369.P17569301654312966600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167769 n + A107846 (A008997 (n + 1)).toNat

end

end A119369.P17569301654312966600

/-! ## A119369.P16877909434848816214

`∑{e}[A002110(A122445(n)), #]`
-/

namespace A119369.P16877909434848816214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A122445 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A119369.P16877909434848816214

/-!
# A119370: G.f. satisfies A(x) = 1 + x*A(x)^2 + x^2*(A(x)^2 - A(x)).

The programs for A119370, there is no canonical definition to state claims against.
-/

/-! ## A119370.P13605130782823863901

`A171199(n)-a(n-1)` with `a(0)=1`
-/

namespace A119370.P13605130782823863901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A171199 n - a (n - 1)

end

end A119370.P13605130782823863901

/-! ## A119370.P8362295017239307316

`A143330(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A119370.P8362295017239307316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A143330 n - a (n - 1)

end

end A119370.P8362295017239307316

/-! ## A119370.P8783639008146689228

`A192738(n)-A174903(A275027(n))`
-/

namespace A119370.P8783639008146689228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192738 n - A174903 (A275027 n).toNat

end

end A119370.P8783639008146689228

/-!
# A119371: G.f. satisfies: A(x) = (1+x) - x*(4+x)*A(x) + x*(3+2*x)*A(x)^2.

The programs for A119371, there is no canonical definition to state claims against.
-/

/-! ## A119371.P8923799010740283318

`A119372(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A119371.P8923799010740283318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A119372 (n - 1) - a (n - 1)

end

end A119371.P8923799010740283318

/-! ## A119371.P7005854734122648461

`A119369(∑[2*n])`
-/

namespace A119371.P7005854734122648461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119371.P7005854734122648461

/-! ## A119371.P7249440778218100379

`A119369(n²+n)^(Δ[n²]%2)`
-/

namespace A119371.P7249440778218100379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119369 (n ^ 2 + n) : ℚ) ^ (Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 : ℤ)

end

end A119371.P7249440778218100379

/-! ## A119371.P10761952758831422653

`A119369(n²+n)*A119369(n²)`
-/

namespace A119371.P10761952758831422653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 (n ^ 2 + n) * A119369 (n ^ 2)

end

end A119371.P10761952758831422653

/-! ## A119371.P7081859595809886564

`A119369(n²+n)-A039897(∑{p}[n, C(#, n)])`
-/

namespace A119371.P7081859595809886564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 (n ^ 2 + n) - A039897 (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n)

end

end A119371.P7081859595809886564

/-! ## A119371.P17800156059850593649

`A119369(A002378(n))%A006862(n)`
-/

namespace A119371.P17800156059850593649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119369 (A002378 n).toNat) (A006862 n)

end

end A119371.P17800156059850593649

/-! ## A119371.P1691222399775980481

`gcd(A000038(n), A119369(A002378(n)))`
-/

namespace A119371.P1691222399775980481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A119369 (A002378 n).toNat)

end

end A119371.P1691222399775980481

/-! ## A119371.P774850359086526906

`or(A000007(n), A119369(A002378(n)))`
-/

namespace A119371.P774850359086526906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A119369 (A002378 n).toNat)

end

end A119371.P774850359086526906

/-! ## A119371.P6516949618544532926

`A119369(A002378(n))+A000007(n+1)`
-/

namespace A119371.P6516949618544532926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 (A002378 n).toNat + A000007 (n + 1)

end

end A119371.P6516949618544532926

/-! ## A119371.P15082677178586809384

`A119369(A002378(n))+A000038(n+1)`
-/

namespace A119371.P15082677178586809384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 (A002378 n).toNat + A000038 (n + 1)

end

end A119371.P15082677178586809384

/-!
# A119372: G.f. satisfies: A(x) = 1 + x*(1-x-x^2)*A(x) + x^2*(3+2*x)*A(x)^2.

The programs for A119372, there is no canonical definition to state claims against.
-/

/-! ## A119372.P12896434941844471175

`A119371(n+1)+A119371(n)`
-/

namespace A119372.P12896434941844471175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119371 (n + 1) + A119371 n

end

end A119372.P12896434941844471175

/-! ## A119372.P6431570778302193463

`A119369((n+1)²+n)`
-/

namespace A119372.P6431570778302193463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 ((n + 1) ^ 2 + n)

end

end A119372.P6431570778302193463

/-! ## A119372.P3806169842403009894

`A119369(A028387(n))%A006862(n)`
-/

namespace A119372.P3806169842403009894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119369 (A028387 n).toNat) (A006862 n)

end

end A119372.P3806169842403009894

/-! ## A119372.P1766408102711522152

`gcd(A000038(n), A119369(A028387(n)))`
-/

namespace A119372.P1766408102711522152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A119369 (A028387 n).toNat)

end

end A119372.P1766408102711522152

/-! ## A119372.P9147761344397355732

`or(A000007(n), A119369(A028387(n)))`
-/

namespace A119372.P9147761344397355732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A119369 (A028387 n).toNat)

end

end A119372.P9147761344397355732

/-! ## A119372.P15471366543350218300

`A007318(val(n+1, 4))*A119369(A028387(n))`
-/

namespace A119372.P15471366543350218300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 4) * A119369 (A028387 n).toNat

end

end A119372.P15471366543350218300

/-!
# A119373: A lower diagonal of pendular trinomial triangle A119369.

The programs for A119373, there is no canonical definition to state claims against.
-/

/-! ## A119373.P12370885279471922675

`A119372(n+1)+A119372(n)-A119370(n+1)`
-/

namespace A119373.P12370885279471922675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119372 (n + 1) + (A119372 n - A119370 (n + 1))

end

end A119373.P12370885279471922675

/-! ## A119373.P12795683546082401312

`A119374(n+1)+A119374(n)-A119375(n+1)`
-/

namespace A119373.P12795683546082401312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119374 (n + 1) + (A119374 n - A119375 (n + 1))

end

end A119373.P12795683546082401312

/-! ## A119373.P17490054787397228432

`A119369(∑[2*(n+2)])`
-/

namespace A119373.P17490054787397228432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119373.P17490054787397228432

/-! ## A119373.P4912556211367460980

`record[A119369(A193422(n+1))]`
-/

namespace A119373.P4912556211367460980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 (A193422 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119373.P4912556211367460980

/-! ## A119373.P9040992129370555896

`record[A119369(2*A061579(n))]`
-/

namespace A119373.P9040992129370555896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 (2 * A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119373.P9040992129370555896

/-!
# A119374: A lower diagonal of pendular trinomial triangle A119369.

The programs for A119374, there is no canonical definition to state claims against.
-/

/-! ## A119374.P521146223486987688

`A119369((n+3)²+n)`
-/

namespace A119374.P521146223486987688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 ((n + 3) ^ 2 + n)

end

end A119374.P521146223486987688

/-! ## A119374.P11276959429552974809

`record[A119369(A004280(∑[n+1]))]`
-/

namespace A119374.P11276959429552974809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 (A004280 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119374.P11276959429552974809

/-! ## A119374.P3685846072216581769

`record[A119369(A193422(n+2)-1)]`
-/

namespace A119374.P3685846072216581769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 (A193422 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119374.P3685846072216581769

/-! ## A119374.P14318770739950275208

`record[A119369(A014681(A028552(n)))]`
-/

namespace A119374.P14318770739950275208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 (A014681 (A028552 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119374.P14318770739950275208

/-! ## A119374.P5386736056315824355

`record[A119369(A004273(A061579(n)))]`
-/

namespace A119374.P5386736056315824355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 (A004273 (A061579 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119374.P5386736056315824355

/-!
# A119375: Diagonal above the central terms of pendular trinomial triangle A119369, ignoring leading zeros.

The programs for A119375, there is no canonical definition to state claims against.
-/

/-! ## A119375.P13916198402595814214

`A119373(n+1)-A119372(n+1)`
-/

namespace A119375.P13916198402595814214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119373 (n + 1) - A119372 (n + 1)

end

end A119375.P13916198402595814214

/-! ## A119375.P7021078642565830173

`A119372(n+2)-A119370(n+2)`
-/

namespace A119375.P7021078642565830173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119372 (n + 2) - A119370 (n + 2)

end

end A119375.P7021078642565830173

/-! ## A119375.P7919683064923599194

`A119374(n+1)-(A119376(n)+A119372(n+1))`
-/

namespace A119375.P7919683064923599194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119374 (n + 1) - (A119376 n + A119372 (n + 1))

end

end A119375.P7919683064923599194

/-! ## A119375.P1460282732076321739

`record[A119369(n²+1+n)]`
-/

namespace A119375.P1460282732076321739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 (n ^ 2 + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119375.P1460282732076321739

/-! ## A119375.P6821429496908194316

`A119369(∑[n+3]+A000124(n+3)+3)`
-/

namespace A119375.P6821429496908194316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A000124 (n + 3) + 3)).toNat

end

end A119375.P6821429496908194316

/-!
# A119376: Second diagonal above the central terms of pendular trinomial triangle A119369, ignoring leading zeros.

The programs for A119376, there is no canonical definition to state claims against.
-/

/-! ## A119376.P3265211932043762018

`A119374(n+1)-A119373(n+1)`
-/

namespace A119376.P3265211932043762018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119374 (n + 1) - A119373 (n + 1)

end

end A119376.P3265211932043762018

/-! ## A119376.P2424366706586984051

`A119374(n+1)-(A119375(n)+A119372(n+1))`
-/

namespace A119376.P2424366706586984051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119374 (n + 1) - (A119375 n + A119372 (n + 1))

end

end A119376.P2424366706586984051

/-! ## A119376.P6435106425133939308

`A119375(n+2)-A119374(n+2)`
-/

namespace A119376.P6435106425133939308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119375 (n + 2) - A119374 (n + 2)

end

end A119376.P6435106425133939308

/-! ## A119376.P17237133697218833844

`record[A119369((2-n)²+n)]`
-/

namespace A119376.P17237133697218833844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 ((2 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119376.P17237133697218833844

/-! ## A119376.P3103090585936920380

`A119369(A028552(n+3)+4)`
-/

namespace A119376.P3103090585936920380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 (A028552 (n + 3) + 4).toNat

end

end A119376.P3103090585936920380

/-!
# A119378: Palindromic composites such that some digit permutation is prime.

The programs for A119378, there is no canonical definition to state claims against.
-/

/-! ## A119378.P12558697653133585697

`∩[A007935(n+1), A056142(n)]`
-/

namespace A119378.P12558697653133585697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119378.P12558697653133585697

/-!
# A119379: Untouchable semiprimes: semiprimes which are not the sum of the aliquot parts of any number.

The programs for A119379, there is no canonical definition to state claims against.
-/

/-! ## A119379.P5691026845162251409

`2*p?[A014682(A005114(n+1))]`
-/

namespace A119379.P5691026845162251409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A005114 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119379.P5691026845162251409

/-! ## A119379.P6424019903741059228

`∩[A005114(n+1), A054395(n+1)]`
-/

namespace A119379.P6424019903741059228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119379.P6424019903741059228

/-! ## A119379.P3766176771762696296

`∩[A005114(n+1), A064899(n+1)]`
-/

namespace A119379.P3766176771762696296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119379.P3766176771762696296

/-! ## A119379.P3193304178615655798

`∩[A005114(n+1), A066190(n+1)]`
-/

namespace A119379.P3193304178615655798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119379.P3193304178615655798

/-! ## A119379.P120845165767414111

`∩[A005114(n+1), A066664(n+1)]`
-/

namespace A119379.P120845165767414111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119379.P120845165767414111

/-! ## A119379.P1752945467761127709

`∩[A005114(n+1), A073582(n+1)]`
-/

namespace A119379.P1752945467761127709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119379.P1752945467761127709

/-! ## A119379.P7157034427077274542

`∩[A005114(n+1), A074845(n+1)]`
-/

namespace A119379.P7157034427077274542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119379.P7157034427077274542

/-! ## A119379.P5318679519955110276

`∩[A005114(n+1), A100484(n+1)]`
-/

namespace A119379.P5318679519955110276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119379.P5318679519955110276

/-! ## A119379.P4274939922984848756

`∩[A005114(n+1), A119431(n+1)]`
-/

namespace A119379.P4274939922984848756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119379.P4274939922984848756

/-! ## A119379.P15249839917686606522

`∩[A005114(n+1), A157931(n+1)]`
-/

namespace A119379.P15249839917686606522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119379.P15249839917686606522

/-! ## A119379.P11416192550387863733

`∩[A005114(n+1), A161344(n+1)]`
-/

namespace A119379.P11416192550387863733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119379.P11416192550387863733

/-! ## A119379.P1017499153649020647

`∩[A005114(n+1), A161425(n+1)]`
-/

namespace A119379.P1017499153649020647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119379.P1017499153649020647

/-! ## A119379.P18389664384197076289

`∩[A005114(n+1), A197638(n+1)]`
-/

namespace A119379.P18389664384197076289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119379.P18389664384197076289

/-! ## A119379.P5886767562544608079

`∩[A005114(n+1), A253106(n+1)]`
-/

namespace A119379.P5886767562544608079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119379.P5886767562544608079

/-! ## A119379.P16752689388518500981

`∩[A005114(n+1), A318990(n+1)]`
-/

namespace A119379.P16752689388518500981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119379.P16752689388518500981

/-! ## A119379.P3570618960247074253

`∩[A005114(n+1), A387722(n+1)]`
-/

namespace A119379.P3570618960247074253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119379.P3570618960247074253

/-! ## A119379.P9343284658456663375

`∩[A005114(n+1), A389863(n+1)]`
-/

namespace A119379.P9343284658456663375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119379.P9343284658456663375

/-! ## A119379.P2811069578744681561

`∩[A005114(n+1), A091376(n+1)]`
-/

namespace A119379.P2811069578744681561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119379.P2811069578744681561

/-! ## A119379.P6291994781139394984

`∩[A001358(n+1), A005114(n+1)]`
-/

namespace A119379.P6291994781139394984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119379.P6291994781139394984

/-! ## A119379.P121544432497071399

`∩[A005114(n+1), A387787(n+1)]`
-/

namespace A119379.P121544432497071399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119379.P121544432497071399

/-!
# A119380: Remainder when the integer part of e^n is divided by the n-th prime number.

The programs for A119380, the canonical program `A119380.P3462034748689167672` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119380 has offset 1).

The definition of A119380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119380.P1663727719646647734

`floor(exp(n+1))%p?[A001057(n)]`
-/

namespace A119380.P1663727719646647734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.exp (n + 1 : ℝ)⌋ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A119380.P1663727719646647734

namespace A119380

/-- `floor(exp(n+1))%p?[A001057(n)]` -/
def P1663727719646647734.Spec : Prop :=
  ∀ n, P1663727719646647734.a n = A119380 (n + 1)

end A119380

/-! ## A119380.P8778992595683981064

`∑[A064780(n)]%A008578(n+2)`
-/

namespace A119380.P8778992595683981064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A008578 (n + 2))

end

end A119380.P8778992595683981064

namespace A119380

/-- `∑[A064780(n)]%A008578(n+2)` -/
def P8778992595683981064.Spec : Prop :=
  ∀ n, P8778992595683981064.a n = A119380 (n + 1)

end A119380

/-! ## A119380.P3462034748689167672

`A000149(n+1)%p?[A006370(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A119380

/-- `A000149(n+1)%p?[A006370(n)]` -/
def P3462034748689167672.Spec : Prop :=
  ∀ n, P3462034748689167672.a n = A119380 (n + 1)

theorem P3462034748689167672.correct : P3462034748689167672.Spec := by
  intro n
  simp only [A119380, Nat.add_sub_cancel]

end A119380

/-! ## A119380.P17505171256578330769

`A000149(A000027(n+1))%(A008347(n+1)+A008347(n))`
-/

namespace A119380.P17505171256578330769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000149 (A000027 (n + 1)).toNat) (A008347 (n + 1) + A008347 n)

end

end A119380.P17505171256578330769

namespace A119380

/-- `A000149(A000027(n+1))%(A008347(n+1)+A008347(n))` -/
def P17505171256578330769.Spec : Prop :=
  ∀ n, P17505171256578330769.a n = A119380 (n + 1)

end A119380

/-! ## A119380.P1563528967685013983

`floor(2*sinh(n+1))%record[A014963(n+2)]`
-/

namespace A119380.P1563528967685013983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sinh (n + 1 : ℝ)⌋ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A119380.P1563528967685013983

namespace A119380

/-- `floor(2*sinh(n+1))%record[A014963(n+2)]` -/
def P1563528967685013983.Spec : Prop :=
  ∀ n, P1563528967685013983.a n = A119380 (n + 1)

end A119380

/-!
# A119381: Primes p(n) for which (p(n-1) + p(n+2)) / p(n) = 2.

The programs for A119381, the canonical program `A119381.P9500418666100049897` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119381 has offset 1).

The definition of A119381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119381.P9500418666100049897

`∩[A071680(n+1), A098029(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A119381

/-- `∩[A071680(n+1), A098029(n+1)]` -/
def P9500418666100049897.Spec : Prop :=
  ∀ n, (P9500418666100049897.a n : ℤ) = A119381 (n + 1)

theorem P9500418666100049897.correct : P9500418666100049897.Spec := by
  intro n
  simp only [A119381, Nat.add_sub_cancel]

end A119381

/-! ## A119381.P17736783916583881497

`∩[A051634(n+1), A098029(n+1)]`
-/

namespace A119381.P17736783916583881497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119381.P17736783916583881497

namespace A119381

/-- `∩[A051634(n+1), A098029(n+1)]` -/
def P17736783916583881497.Spec : Prop :=
  ∀ n, (P17736783916583881497.a n : ℤ) = A119381 (n + 1)

end A119381

/-! ## A119381.P2287246281786594787

`∩[A046869(n+1), A098029(n+1)]`
-/

namespace A119381.P2287246281786594787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119381.P2287246281786594787

namespace A119381

/-- `∩[A046869(n+1), A098029(n+1)]` -/
def P2287246281786594787.Spec : Prop :=
  ∀ n, (P2287246281786594787.a n : ℤ) = A119381 (n + 1)

end A119381

/-! ## A119381.P1172294065259710202

`A008578(A066515(n+1))`
-/

namespace A119381.P1172294065259710202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A066515 (n + 1)).toNat

end

end A119381.P1172294065259710202

namespace A119381

/-- `A008578(A066515(n+1))` -/
def P1172294065259710202.Spec : Prop :=
  ∀ n, P1172294065259710202.a n = A119381 (n + 1)

end A119381

/-! ## A119381.P17000977340829320890

`A000040(A119382(n+1))`
-/

namespace A119381.P17000977340829320890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A119382 (n + 1)).toNat

end

end A119381.P17000977340829320890

namespace A119381

/-- `A000040(A119382(n+1))` -/
def P17000977340829320890.Spec : Prop :=
  ∀ n, P17000977340829320890.a n = A119381 (n + 1)

end A119381

/-! ## A119381.P9717529958196786930

`A046022(A066515(n+1)+1)`
-/

namespace A119381.P9717529958196786930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A066515 (n + 1) + 1).toNat

end

end A119381.P9717529958196786930

namespace A119381

/-- `A046022(A066515(n+1)+1)` -/
def P9717529958196786930.Spec : Prop :=
  ∀ n, P9717529958196786930.a n = A119381 (n + 1)

end A119381

/-! ## A119381.P17350642667969651841

`A008578(A119382(n+1)+1)`
-/

namespace A119381.P17350642667969651841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A119382 (n + 1) + 1).toNat

end

end A119381.P17350642667969651841

namespace A119381

/-- `A008578(A119382(n+1)+1)` -/
def P17350642667969651841.Spec : Prop :=
  ∀ n, P17350642667969651841.a n = A119381 (n + 1)

end A119381

/-! ## A119381.P15350858683669475347

`A000040(A066515(n+1)-1)`
-/

namespace A119381.P15350858683669475347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A066515 (n + 1) - 1).toNat

end

end A119381.P15350858683669475347

namespace A119381

/-- `A000040(A066515(n+1)-1)` -/
def P15350858683669475347.Spec : Prop :=
  ∀ n, P15350858683669475347.a n = A119381 (n + 1)

end A119381

/-! ## A119381.P13542714235772231253

`∩[A098029(n+1), A225493(n+1)]`
-/

namespace A119381.P13542714235772231253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119381.P13542714235772231253

namespace A119381

/-- `∩[A098029(n+1), A225493(n+1)]` -/
def P13542714235772231253.Spec : Prop :=
  ∀ n, (P13542714235772231253.a n : ℤ) = A119381 (n + 1)

end A119381

/-!
# A119382: Indices j of prime numbers p(j) such that (p(j-1) + p(j+2)) / p(j) = 2.

The programs for A119382, there is no canonical definition to state claims against.
-/

/-! ## A119382.P1172155449766452913

`A066515(n+1)-1`
-/

namespace A119382.P1172155449766452913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066515 (n + 1) - 1

end

end A119382.P1172155449766452913

/-! ## A119382.P8593145057893344450

`A260196(n+2)+A066515(n+1)`
-/

namespace A119382.P8593145057893344450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A066515 (n + 1)

end

end A119382.P8593145057893344450

/-! ## A119382.P14226957027529044109

`A067856(A004139(n+1))+A066515(n+1)`
-/

namespace A119382.P14226957027529044109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A004139 (n + 1)).toNat + A066515 (n + 1)

end

end A119382.P14226957027529044109

/-! ## A119382.P3847495489605553223

`A067856(A007348(n+1))+A066515(n+1)`
-/

namespace A119382.P3847495489605553223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A007348 (n + 1)).toNat + A066515 (n + 1)

end

end A119382.P3847495489605553223

/-! ## A119382.P8325395115836049509

`A086831(A171688(n+1))+A066515(n+1)`
-/

namespace A119382.P8325395115836049509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086831 (A171688 (n + 1)).toNat + A066515 (n + 1)

end

end A119382.P8325395115836049509

/-! ## A119382.P2017394428302734781

`A067856(A007349(n+1))+A066515(n+1)`
-/

namespace A119382.P2017394428302734781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A007349 (n + 1)).toNat + A066515 (n + 1)

end

end A119382.P2017394428302734781

/-! ## A119382.P12683301078353889012

`A107393(A139967(n+1))+A066515(n+1)`
-/

namespace A119382.P12683301078353889012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A139967 (n + 1)).toNat + A066515 (n + 1)

end

end A119382.P12683301078353889012

/-! ## A119382.P17306297586642384049

`A023443(A066515(n+1))`
-/

namespace A119382.P17306297586642384049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A066515 (n + 1)).toNat

end

end A119382.P17306297586642384049

/-! ## A119382.P3871799382945963673

`eq[A075527(n), A181346(n)]`
-/

namespace A119382.P3871799382945963673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119382.P3871799382945963673

/-! ## A119382.P8418179337593759838

`A289207(A066515(n+1)+1)`
-/

namespace A119382.P8418179337593759838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A066515 (n + 1) + 1).toNat

end

end A119382.P8418179337593759838

/-! ## A119382.P7565255024117580180

`A023446(A066515(n+1)+3)`
-/

namespace A119382.P7565255024117580180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A066515 (n + 1) + 3).toNat

end

end A119382.P7565255024117580180

/-! ## A119382.P14992963981948504735

`eq[A031131(n+1), A054541(n+1)]+1`
-/

namespace A119382.P14992963981948504735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A119382.P14992963981948504735

/-! ## A119382.P11684049602701289435

`A000720(A119381(n+1))`
-/

namespace A119382.P11684049602701289435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A119381 (n + 1)).toNat

end

end A119382.P11684049602701289435

/-! ## A119382.P3062348632693701911

`A107393(p?[A066515(n+1)])+A066515(n+1)`
-/

namespace A119382.P3062348632693701911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A066515 (n + 1)

end

end A119382.P3062348632693701911

/-! ## A119382.P6269778876822652436

`A140106(2*A066515(n+1))`
-/

namespace A119382.P6269778876822652436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A066515 (n + 1)).toNat

end

end A119382.P6269778876822652436

/-! ## A119382.P14507562546586646317

`A140106(A066515(n+1)+A066515(n+1)+1)`
-/

namespace A119382.P14507562546586646317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A066515 (n + 1) + (A066515 (n + 1) + 1)).toNat

end

end A119382.P14507562546586646317

/-!
# A119383: a(n) = n!- A088921(n).

The programs for A119383, the canonical program `A119383.P11382926864932356454` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119383 has offset 0).

The definition of A119383 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119383.P11382926864932356454

`n!-(2^(n+1)-C(n+1, 3)-2*n-1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A119383

/-- `n!-(2^(n+1)-C(n+1, 3)-2*n-1)` -/
def P11382926864932356454.Spec : Prop :=
  ∀ n, P11382926864932356454.a n = A119383 n

theorem P11382926864932356454.correct : P11382926864932356454.Spec := by
  intro n
  simp only [A119383]

end A119383

/-! ## A119383.P10391748824318459904

`A005095(n)-A084635(n+1)`
-/

namespace A119383.P10391748824318459904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005095 n - A084635 (n + 1)

end

end A119383.P10391748824318459904

namespace A119383

/-- `A005095(n)-A084635(n+1)` -/
def P10391748824318459904.Spec : Prop :=
  ∀ n, P10391748824318459904.a n = A119383 n

end A119383

/-! ## A119383.P4292929356338048371

`A000142(n)-A088921(A028310(n))`
-/

namespace A119383.P4292929356338048371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A088921 (A028310 n).toNat

end

end A119383.P4292929356338048371

namespace A119383

/-- `A000142(n)-A088921(A028310(n))` -/
def P4292929356338048371.Spec : Prop :=
  ∀ n, P4292929356338048371.a n = A119383 n

end A119383

/-! ## A119383.P15797890436382741150

`A005095(n)-(A002663(n)+A000079(n))`
-/

namespace A119383.P15797890436382741150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005095 n - (A002663 n + A000079 n)

end

end A119383.P15797890436382741150

namespace A119383

/-- `A005095(n)-(A002663(n)+A000079(n))` -/
def P15797890436382741150.Spec : Prop :=
  ∀ n, P15797890436382741150.a n = A119383 n

end A119383

/-! ## A119383.P7570704741993666430

`A047920(A000217(n))-A088921(A028310(n))`
-/

namespace A119383.P7570704741993666430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A000217 n).toNat - A088921 (A028310 n).toNat

end

end A119383.P7570704741993666430

namespace A119383

/-- `A047920(A000217(n))-A088921(A028310(n))` -/
def P7570704741993666430.Spec : Prop :=
  ∀ n, P7570704741993666430.a n = A119383 n

end A119383

/-!
# A119384: Ten's complement of the factorials.

The programs for A119384, there is no canonical definition to state claims against.
-/

/-! ## A119384.P9269058679192240690

`A011557(A034886(n+1))-(n+1)!`
-/

namespace A119384.P9269058679192240690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A034886 (n + 1)).toNat - (Nat.factorial (n + 1) : ℤ)

end

end A119384.P9269058679192240690

/-! ## A119384.P2488458174734194547

`A011557(A034886(n+1))-record[A273730(n)]`
-/

namespace A119384.P2488458174734194547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A034886 (n + 1)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119384.P2488458174734194547

/-! ## A119384.P10477185200965436878

`A011557(A034886(n+1))-A000142(n+1)`
-/

namespace A119384.P10477185200965436878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A034886 (n + 1)).toNat - A000142 (n + 1)

end

end A119384.P10477185200965436878

/-! ## A119384.P10399335960314931448

`A011557(A034886(n+1))-∏[A008619(2*n)]`
-/

namespace A119384.P10399335960314931448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A034886 (n + 1)).toNat - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A119384.P10399335960314931448

/-! ## A119384.P1894636626603256416

`A011557(A034886(n+1))-A130534(A000217(n+1))`
-/

namespace A119384.P1894636626603256416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A034886 (n + 1)).toNat - A130534 (A000217 (n + 1)).toNat

end

end A119384.P1894636626603256416

/-!
# A119385: Write out the digits of the integers in order (cf. A007376): 0 1 2 3 4 5 6 7 8 9 1 0 1 1 1 2 1 3 1 4 1 5 ...; a(n) = sum of digits between successive zeros.

The programs for A119385, there is no canonical definition to state claims against.
-/

/-! ## A119385.P7928129482199582149

`Δ[A119417(floor(n²/(n+1)))]`
-/

namespace A119385.P7928129482199582149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119417 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119385.P7928129482199582149

/-! ## A119385.P8001011365740819147

`abs(Δ[A119417(A259361(n²))])`
-/

namespace A119385.P8001011365740819147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119417 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A119385.P8001011365740819147

/-! ## A119385.P6980714000810640012

`-Δ[-A119417(log2(A011782(n)))]`
-/

namespace A119385.P6980714000810640012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A119417 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A119385.P6980714000810640012

/-! ## A119385.P7218099499154033196

`A119417(n)-A119417((n-1)%(n+1))`
-/

namespace A119385.P7218099499154033196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119417 n - A119417 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A119385.P7218099499154033196

/-! ## A119385.P11225103138493139114

`A119417(n)-A119417(A259361(n²))`
-/

namespace A119385.P11225103138493139114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119417 n - A119417 (A259361 (n ^ 2)).toNat

end

end A119385.P11225103138493139114

/-!
# A119386: Numbers k such that 2^(2*k) - (2*k-1) is prime.

The programs for A119386, there is no canonical definition to state claims against.
-/

/-! ## A119386.P8650166098754246514

`floor(A100361(n+2)/2)`
-/

namespace A119386.P8650166098754246514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100361 (n + 2) : ℚ) / 2⌋

end

end A119386.P8650166098754246514

/-! ## A119386.P2023943781309522872

`record[A100361(n+1)/(2-C(3, n²))]`
-/

namespace A119386.P2023943781309522872
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100361 (n + 1) : ℚ) / (2 - (Nat.choose 3 (n ^ 2) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119386.P2023943781309522872

/-! ## A119386.P9850549937881746125

`A100361(A065475(n+1))/2`
-/

namespace A119386.P9850549937881746125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100361 (A065475 (n + 1)).toNat : ℚ) / 2

end

end A119386.P9850549937881746125

/-! ## A119386.P11483439161811488351

`A100361(n+2)/2*A057427(n)`
-/

namespace A119386.P11483439161811488351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100361 (n + 2) : ℚ) / 2 * (A057427 n : ℚ)

end

end A119386.P11483439161811488351

/-! ## A119386.P1851136963403534511

`A100361(n+2)%A027327(n)/2`
-/

namespace A119386.P1851136963403534511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A100361 (n + 2)) (A027327 n) : ℚ) / 2

end

end A119386.P1851136963403534511

/-!
# A119387: a(n) is the number of binary digits (1's and nonleading 0's) which remain unchanged in their positions when n and (n+1) are written in binary.

The programs for A119387, the canonical program `A119387.P13172798002277399247` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119387 has offset 0).

The definition of A119387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119387.P16696404718065768201

`floor(log(n+1)/log(2))-val(n+1, 2)`
-/

namespace A119387.P16696404718065768201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (n + 1 : ℝ) / Real.log (2 : ℝ)⌋ - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A119387.P16696404718065768201

namespace A119387

/-- `floor(log(n+1)/log(2))-val(n+1, 2)` -/
def P16696404718065768201.Spec : Prop :=
  ∀ n, P16696404718065768201.a n = A119387 n

end A119387

/-! ## A119387.P14372908292105519588

`floor(log2(A000265(n+1)))`
-/

namespace A119387.P14372908292105519588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A000265 (n + 1)).toNat

end

end A119387.P14372908292105519588

namespace A119387

/-- `floor(log2(A000265(n+1)))` -/
def P14372908292105519588.Spec : Prop :=
  ∀ n, (P14372908292105519588.a n : ℤ) = A119387 n

end A119387

/-! ## A119387.P10245334240305242766

`A048881(n)+A086784(n+1)`
-/

namespace A119387.P10245334240305242766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n + A086784 (n + 1)

end

end A119387.P10245334240305242766

namespace A119387

/-- `A048881(n)+A086784(n+1)` -/
def P10245334240305242766.Spec : Prop :=
  ∀ n, P10245334240305242766.a n = A119387 n

end A119387

/-! ## A119387.P9507305112992096379

`A000523(n+1)-A007814(n+1)`
-/

namespace A119387.P9507305112992096379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) - A007814 (n + 1)

end

end A119387.P9507305112992096379

namespace A119387

/-- `A000523(n+1)-A007814(n+1)` -/
def P9507305112992096379.Spec : Prop :=
  ∀ n, P9507305112992096379.a n = A119387 n

end A119387

/-! ## A119387.P13172798002277399247

`A070939(n+1)-A001511(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A119387

/-- `A070939(n+1)-A001511(n+1)` -/
def P13172798002277399247.Spec : Prop :=
  ∀ n, P13172798002277399247.a n = A119387 n

theorem P13172798002277399247.correct : P13172798002277399247.Spec := by
  intro n
  simp only [A119387]

end A119387

/-! ## A119387.P8925445066266092779

`floor(log2((n+1)/2^val(n+1, 2)))`
-/

namespace A119387.P8925445066266092779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) : ℝ)⌋

end

end A119387.P8925445066266092779

namespace A119387

/-- `floor(log2((n+1)/2^val(n+1, 2)))` -/
def P8925445066266092779.Spec : Prop :=
  ∀ n, P8925445066266092779.a n = A119387 n

end A119387

/-! ## A119387.P15749734833357411636

`floor(log2((n+1)/xor(n, or(n, n+1))))`
-/

namespace A119387.P15749734833357411636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ) : ℝ)⌋

end

end A119387.P15749734833357411636

namespace A119387

/-- `floor(log2((n+1)/xor(n, or(n, n+1))))` -/
def P15749734833357411636.Spec : Prop :=
  ∀ n, P15749734833357411636.a n = A119387 n

end A119387

/-! ## A119387.P5151004563302102110

`floor(log2((n+1)*2^-val(n+1, 2)))`
-/

namespace A119387.P5151004563302102110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ) : ℝ)⌋

end

end A119387.P5151004563302102110

namespace A119387

/-- `floor(log2((n+1)*2^-val(n+1, 2)))` -/
def P5151004563302102110.Spec : Prop :=
  ∀ n, P5151004563302102110.a n = A119387 n

end A119387

/-! ## A119387.P544911462147293878

`floor(log2((n+1)/and(n+1, -(n+1))))`
-/

namespace A119387.P544911462147293878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) : ℝ)⌋

end

end A119387.P544911462147293878

namespace A119387

/-- `floor(log2((n+1)/and(n+1, -(n+1))))` -/
def P544911462147293878.Spec : Prop :=
  ∀ n, P544911462147293878.a n = A119387 n

end A119387

/-! ## A119387.P4803453590381788811

`ceil(log2(floor(n/(xor(n, n+1)+1))+1))`
-/

namespace A119387.P4803453590381788811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1 : ℝ)⌉

end

end A119387.P4803453590381788811

namespace A119387

/-- `ceil(log2(floor(n/(xor(n, n+1)+1))+1))` -/
def P4803453590381788811.Spec : Prop :=
  ∀ n, P4803453590381788811.a n = A119387 n

end A119387

/-! ## A119387.P15370858846130183511

`ceil(log2(ceil((n+1)/(xor(n, n+1)+1))))`
-/

namespace A119387.P15370858846130183511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (⌈(n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌉ : ℝ)⌉

end

end A119387.P15370858846130183511

namespace A119387

/-- `ceil(log2(ceil((n+1)/(xor(n, n+1)+1))))` -/
def P15370858846130183511.Spec : Prop :=
  ∀ n, P15370858846130183511.a n = A119387 n

end A119387

/-! ## A119387.P12419822319488010494

`∑[char[2^n-1]]-(val(n+1, 2)+1)`
-/

namespace A119387.P12419822319488010494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ)

end

end A119387.P12419822319488010494

namespace A119387

/-- `∑[char[2^n-1]]-(val(n+1, 2)+1)` -/
def P12419822319488010494.Spec : Prop :=
  ∀ n, P12419822319488010494.a n = A119387 n

end A119387

/-! ## A119387.P959619233493619030

`log2(A082908(n))`
-/

namespace A119387.P959619233493619030
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A082908 n : ℝ)

end

end A119387.P959619233493619030

namespace A119387

/-- `log2(A082908(n))` -/
def P959619233493619030.Spec : Prop :=
  ∀ n, P959619233493619030.a n = (A119387 n : ℝ)

end A119387

/-! ## A119387.P7932785920016312229

`A070940(n+1)-1`
-/

namespace A119387.P7932785920016312229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (n + 1) - 1

end

end A119387.P7932785920016312229

namespace A119387

/-- `A070940(n+1)-1` -/
def P7932785920016312229.Spec : Prop :=
  ∀ n, P7932785920016312229.a n = A119387 n

end A119387

/-! ## A119387.P7665498485391181022

`floor(log2(A030101(n+1)))`
-/

namespace A119387.P7665498485391181022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A030101 (n + 1)).toNat

end

end A119387.P7665498485391181022

namespace A119387

/-- `floor(log2(A030101(n+1)))` -/
def P7665498485391181022.Spec : Prop :=
  ∀ n, (P7665498485391181022.a n : ℤ) = A119387 n

end A119387

/-! ## A119387.P2057190527562452358

`floor(log2(A153733(n)+1))`
-/

namespace A119387.P2057190527562452358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A153733 n + 1).toNat

end

end A119387.P2057190527562452358

namespace A119387

/-- `floor(log2(A153733(n)+1))` -/
def P2057190527562452358.Spec : Prop :=
  ∀ n, (P2057190527562452358.a n : ℤ) = A119387 n

end A119387

/-! ## A119387.P5642689715135488245

`floor(log2(A322250(n+1)))`
-/

namespace A119387.P5642689715135488245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A322250 (n + 1)).toNat

end

end A119387.P5642689715135488245

namespace A119387

/-- `floor(log2(A322250(n+1)))` -/
def P5642689715135488245.Spec : Prop :=
  ∀ n, (P5642689715135488245.a n : ℤ) = A119387 n

end A119387

/-! ## A119387.P67992198142105953

`floor(log2(A325401(n+1)))`
-/

namespace A119387.P67992198142105953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A325401 (n + 1)).toNat

end

end A119387.P67992198142105953

namespace A119387

/-- `floor(log2(A325401(n+1)))` -/
def P67992198142105953.Spec : Prop :=
  ∀ n, (P67992198142105953.a n : ℤ) = A119387 n

end A119387

/-! ## A119387.P7331058372836273624

`floor(log2(A378299(n+1)))`
-/

namespace A119387.P7331058372836273624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A378299 (n + 1)).toNat

end

end A119387.P7331058372836273624

namespace A119387

/-- `floor(log2(A378299(n+1)))` -/
def P7331058372836273624.Spec : Prop :=
  ∀ n, (P7331058372836273624.a n : ℤ) = A119387 n

end A119387

/-! ## A119387.P9994391096261574890

`ceil(log2(A003602(n+1)))`
-/

namespace A119387.P9994391096261574890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A003602 (n + 1) : ℝ)⌉

end

end A119387.P9994391096261574890

namespace A119387

/-- `ceil(log2(A003602(n+1)))` -/
def P9994391096261574890.Spec : Prop :=
  ∀ n, P9994391096261574890.a n = A119387 n

end A119387

/-!
# A119388: Numbers k such that k == -1 (mod phi(k-1)).

The programs for A119388, there is no canonical definition to state claims against.
-/

/-! ## A119388.P13275515170462300249

`A207667(n+1)+1`
-/

namespace A119388.P13275515170462300249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207667 (n + 1) + 1

end

end A119388.P13275515170462300249

/-! ## A119388.P4455168750094956964

`A060474(A207667(n+1))`
-/

namespace A119388.P4455168750094956964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060474 (A207667 (n + 1)).toNat

end

end A119388.P4455168750094956964

/-! ## A119388.P12126386913986921052

`A124027(A000931(3*n))+A004087(n+1)`
-/

namespace A119388.P12126386913986921052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124027 (A000931 (3 * n)).toNat + A004087 (n + 1)

end

end A119388.P12126386913986921052

/-! ## A119388.P2088985873926833909

`A067933(A047592(n+1))%A033586(n+1)`
-/

namespace A119388.P2088985873926833909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067933 (A047592 (n + 1)).toNat) (A033586 (n + 1))

end

end A119388.P2088985873926833909

/-!
# A119389: Numerator of (1^2/n + 2^2/(n-1) + ... + k^2/(n-k+1) + ... + (n-1)^2/2 + n^2/1).

The programs for A119389, there is no canonical definition to state claims against.
-/

/-! ## A119389.P14257395393770138582

`A232783(A192744(n))%A073214(n)`
-/

namespace A119389.P14257395393770138582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232783 (A192744 n).toNat) (A073214 n)

end

end A119389.P14257395393770138582

/-!
# A119390: a(n) = n!*Sum_{k=0..n} (-1)^(n-k)*Stirling1(n,k)/k!.

The programs for A119390, there is no canonical definition to state claims against.
-/

/-! ## A119390.P10408948365559817200

`Δ[A118082(2^n)]`
-/

namespace A119390.P10408948365559817200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118082 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119390.P10408948365559817200

/-!
# A119391: a(n) = n!*Sum_{k=0..n} Stirling1(n,k)/k!.

The programs for A119391, there is no canonical definition to state claims against.
-/

/-! ## A119391.P18371429380089079098

`A251660(∑[n+2])-A243055(A023359(3*n+1)+2)`
-/

namespace A119391.P18371429380089079098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251660 (∑ j ∈ Finset.range (n + 1), f1 j) - A243055 (A023359 (3 * n + 1) + 2).toNat

end

end A119391.P18371429380089079098

/-!
# A119392: a(n) = n! * Sum_{k=0..n} Stirling2(n,k)/k!.

The programs for A119392, there is no canonical definition to state claims against.
-/

/-! ## A119392.P14681661150232621631

`A008619(n^n+n²)-n`
-/

namespace A119392.P14681661150232621631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n ^ n + n ^ 2) - (n : ℤ)

end

end A119392.P14681661150232621631

/-! ## A119392.P15088325731174743729

`A133622(n^n+n²)-n`
-/

namespace A119392.P15088325731174743729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n ^ n + n ^ 2) - (n : ℤ)

end

end A119392.P15088325731174743729

/-!
# A119393: Numbers n such that the index of the prime and the prime share some digit.

The programs for A119393, there is no canonical definition to state claims against.
-/

/-! ## A119393.P8335854997955345540

`eq[1, A000010(a(A081227(n)))]` with `a(0)=3`
-/

namespace A119393.P8335854997955345540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A081227 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119393.P8335854997955345540

/-! ## A119393.P13160325792111988531

`eq[1, A000045(a(A081227(n)))]` with `a(0)=3`
-/

namespace A119393.P13160325792111988531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A081227 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119393.P13160325792111988531

/-! ## A119393.P7165971752732633176

`eq[1, A001222(a(A081227(n)))]` with `a(0)=4`
-/

namespace A119393.P7165971752732633176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A001222 (f2 (A081227 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119393.P7165971752732633176

/-! ## A119393.P633274247136929442

`eq[1, A007318(a(A081227(n)))]` with `a(0)=4`
-/

namespace A119393.P633274247136929442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A007318 (f2 (A081227 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119393.P633274247136929442

/-! ## A119393.P10641013468755712938

`eq[1, A001221(a(A081227(n)))]` with `a(0)=6`
-/

namespace A119393.P10641013468755712938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A001221 (f2 (A081227 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119393.P10641013468755712938

/-!
# A119394: a(n) = Sum_{k=0..n} (-1)^(n-k)*(n!/k!)^2*binomial(n-1,k-1).

The programs for A119394, there is no canonical definition to state claims against.
-/

/-! ## A119394.P3878927148078328322

`A347084(A276625(n!))`
-/

namespace A119394.P3878927148078328322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347084 (A276625 (Nat.factorial n)).toNat

end

end A119394.P3878927148078328322

/-!
# A119395: Number of nonnegative integer solutions to the equation x^2 + 3y^2 = n.

The programs for A119395, there is no canonical definition to state claims against.
-/

/-! ## A119395.P8196922889753130592

`ceil(A033716(n)/4)`
-/

namespace A119395.P8196922889753130592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033716 n : ℚ) / 4⌉

end

end A119395.P8196922889753130592

/-! ## A119395.P7690532112963366640

`A110655(A033716(n))`
-/

namespace A119395.P7690532112963366640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A033716 n).toNat

end

end A119395.P7690532112963366640

/-! ## A119395.P12221708482787380214

`A008624(A033716(n)+1)`
-/

namespace A119395.P12221708482787380214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A033716 n + 1).toNat

end

end A119395.P12221708482787380214

/-! ## A119395.P3232816911191739062

`A002265(A033716(n)+3)`
-/

namespace A119395.P3232816911191739062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A033716 n + 3).toNat

end

end A119395.P3232816911191739062

/-! ## A119395.P9967601365817037582

`A110655(lcm(2, A115978(n)))`
-/

namespace A119395.P9967601365817037582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (Int.lcm 2 (A115978 n))

end

end A119395.P9967601365817037582

/-! ## A119395.P11412588122144932599

`A195198(n)+A092573(n)`
-/

namespace A119395.P11412588122144932599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195198 n + A092573 n

end

end A119395.P11412588122144932599

/-! ## A119395.P6015953157435906693

`floor((A000027(A033716(n)+2)+1)/4)`
-/

namespace A119395.P6015953157435906693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000027 (A033716 n + 2).toNat + 1 : ℚ) / 4⌋

end

end A119395.P6015953157435906693

/-! ## A119395.P2941322177706045417

`A078898(A033716(n))-A092573(n)`
-/

namespace A119395.P2941322177706045417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A033716 n).toNat - A092573 n

end

end A119395.P2941322177706045417

/-! ## A119395.P2915862781795613290

`A300763(2*A033716(n)-A033716(n))`
-/

namespace A119395.P2915862781795613290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (2 * A033716 n - A033716 n).toNat

end

end A119395.P2915862781795613290

/-! ## A119395.P14286918412207282615

`∑{d}[A033716(n), A033778(#*A198604(#))]`
-/

namespace A119395.P14286918412207282615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A033778 ((d : ℤ) * A198604 d).toNat

end

end A119395.P14286918412207282615

/-! ## A119395.P11741505463781638281

`A000700(A033716(n)+A000122((n+1)²))`
-/

namespace A119395.P11741505463781638281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A033716 n + A000122 ((n + 1) ^ 2)).toNat

end

end A119395.P11741505463781638281

/-!
# A119399: a(n) = Sum_{k=0..n} (n!/k!)^2*binomial(n-1,k-1).

The programs for A119399, there is no canonical definition to state claims against.
-/

/-! ## A119399.P13203551931056908095

`A288449(n^ceil(n/2))`
-/

namespace A119399.P13203551931056908095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288449 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat

end

end A119399.P13203551931056908095

