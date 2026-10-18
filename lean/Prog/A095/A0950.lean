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
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
import Seq.Opaque.C010
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
# A095000: E.g.f.: exp(x)/(1-x)^4.

The programs for A095000, the canonical program `A095000.P5835811688862229281` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095000 has offset 0).

The definition of A095000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095000.P5835811688862229281

`A001341(n)/6`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095000

/-- `A001341(n)/6` -/
def P5835811688862229281.Spec : Prop :=
  ∀ n, P5835811688862229281.a n = (A095000 n : ℚ)

end A095000

/-! ## A095000.P17929702285815690311

`A082030(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A095000.P17929702285815690311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082030 n + (n : ℤ) * a (n - 1)

end

end A095000.P17929702285815690311

namespace A095000

/-- `A082030(n)+n*a(n-1)` -/
def P17929702285815690311.Spec : Prop :=
  ∀ n, P17929702285815690311.a n = A095000 n

end A095000

/-! ## A095000.P4362011850991696715

`Δ[A082030(n)/3]`
-/

namespace A095000.P4362011850991696715
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082030 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095000.P4362011850991696715

namespace A095000

/-- `Δ[A082030(n)/3]` -/
def P4362011850991696715.Spec : Prop :=
  ∀ n, P4362011850991696715.a n = (A095000 n : ℚ)

end A095000

/-! ## A095000.P5337763062518351948

`Δ[A001340(n)/6]`
-/

namespace A095000.P5337763062518351948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001340 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095000.P5337763062518351948

namespace A095000

/-- `Δ[A001340(n)/6]` -/
def P5337763062518351948.Spec : Prop :=
  ∀ n, P5337763062518351948.a n = (A095000 n : ℚ)

end A095000

/-! ## A095000.P360877585108489526

`Δ[Δ[A001339(n)/6]]`
-/

namespace A095000.P360877585108489526
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001339 n : ℚ) / 6

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095000.P360877585108489526

namespace A095000

/-- `Δ[Δ[A001339(n)/6]]` -/
def P360877585108489526.Spec : Prop :=
  ∀ n, P360877585108489526.a n = (A095000 n : ℚ)

end A095000

/-! ## A095000.P15639738876996324423

`A292998(n+1)/(n+1)`
-/

namespace A095000.P15639738876996324423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292998 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A095000.P15639738876996324423

namespace A095000

/-- `A292998(n+1)/(n+1)` -/
def P15639738876996324423.Spec : Prop :=
  ∀ n, P15639738876996324423.a n = (A095000 n : ℚ)

end A095000

/-! ## A095000.P8420939913836792402

`A143409(A167614(n+2))`
-/

namespace A095000.P8420939913836792402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (A167614 (n + 2)).toNat

end

end A095000.P8420939913836792402

namespace A095000

/-- `A143409(A167614(n+2))` -/
def P8420939913836792402.Spec : Prop :=
  ∀ n, P8420939913836792402.a n = A095000 n

end A095000

/-! ## A095000.P1884564387208966845

`A143409(A055999(n)+9)`
-/

namespace A095000.P1884564387208966845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (A055999 n + 9).toNat

end

end A095000.P1884564387208966845

namespace A095000

/-- `A143409(A055999(n)+9)` -/
def P1884564387208966845.Spec : Prop :=
  ∀ n, P1884564387208966845.a n = A095000 n

end A095000

/-! ## A095000.P10122174183563786934

`A143409(eq[3, A002262(n)])`
-/

namespace A095000.P10122174183563786934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095000.P10122174183563786934

namespace A095000

/-- `A143409(eq[3, A002262(n)])` -/
def P10122174183563786934.Spec : Prop :=
  ∀ n, P10122174183563786934.a n = A095000 n

end A095000

/-! ## A095000.P6074387969174431255

`A143409(eq[1, A144328(n+1)-2])`
-/

namespace A095000.P6074387969174431255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095000.P6074387969174431255

namespace A095000

/-- `A143409(eq[1, A144328(n+1)-2])` -/
def P6074387969174431255.Spec : Prop :=
  ∀ n, P6074387969174431255.a n = A095000 n

end A095000

/-!
# A095001: a(n) = Sum_{d|n} rad(d)^(n/d), where rad(d) = A007947(d) is the squarefree kernel of d.

The programs for A095001, the canonical program `A095001.P3102358957211892500` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095001 has offset 1).

The definition of A095001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095001.P3102358957211892500

`∑{d}[n+1, A007947((n+1)/#)^#]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095001

/-- `∑{d}[n+1, A007947((n+1)/#)^#]` -/
def P3102358957211892500.Spec : Prop :=
  ∀ n, P3102358957211892500.a n = A095001 (n + 1)

theorem P3102358957211892500.correct : P3102358957211892500.Spec := by
  intro n
  simp only [A095001, Nat.add_sub_cancel]

end A095001

/-!
# A095002: a(n) = 9*a(n-1) - 9*a(n-2) + a(n-3); given a(1) = 1, a(2) = 3, a(3) = 19.

The programs for A095002, the canonical program `A095002.P4085239734705205856` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095002 has offset 1).

The definition of A095002 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-9*a(n-2)+a(n-3)` (program `A095002.P4085239734705205856`, by `A095002.P4085239734705205856.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095002.P4085239734705205856

`9*a(n-1)-9*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=19`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A095002

/-- `9*a(n-1)-9*a(n-2)+a(n-3)` -/
def P4085239734705205856.Spec : Prop :=
  ∀ n, P4085239734705205856.a n = A095002 (n + 1)

theorem P4085239734705205856.correct : P4085239734705205856.Spec := by
  intro n
  simp only [A095002, Nat.add_sub_cancel]

end A095002

/-! ## A095002.P2428178922390309441

`(2+A001090(n+2)-7*A001090(n+1))/3`
-/

namespace A095002.P2428178922390309441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + A001090 (n + 2) - 7 * A001090 (n + 1) : ℚ) / 3

end

end A095002.P2428178922390309441

namespace A095002

/-- `(2+A001090(n+2)-7*A001090(n+1))/3` -/
def P2428178922390309441.Spec : Prop :=
  ∀ n, P2428178922390309441.a n = (A095002 (n + 1) : ℚ)

end A095002

/-! ## A095002.P2928329651551918514

`8*a(n-1)-(a(n-2)+4)` with `a(0)=1, a(1)=3`
-/

namespace A095002.P2928329651551918514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  8 * a (n - 1) - (a (n - 2) + 4)

end

end A095002.P2928329651551918514

namespace A095002

/-- `8*a(n-1)-(a(n-2)+4)` -/
def P2928329651551918514.Spec : Prop :=
  ∀ n, P2928329651551918514.a n = A095002 (n + 1)

end A095002

/-! ## A095002.P17788466365724282951

`8*a(n-1)-4-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A095002.P17788466365724282951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  8 * a (n - 1) - 4 - a (n - 2)

end

end A095002.P17788466365724282951

namespace A095002

/-- `8*a(n-1)-4-a(n-2)` -/
def P17788466365724282951.Spec : Prop :=
  ∀ n, P17788466365724282951.a n = A095002 (n + 1)

end A095002

/-! ## A095002.P3462333734576352367

`∑[2*A001090(n)]+1`
-/

namespace A095002.P3462333734576352367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095002.P3462333734576352367

namespace A095002

/-- `∑[2*A001090(n)]+1` -/
def P3462333734576352367.Spec : Prop :=
  ∀ n, P3462333734576352367.a n = A095002 (n + 1)

end A095002

/-! ## A095002.P9676565028564943092

`∑[A144479(n)]-A001090(n)`
-/

namespace A095002.P9676565028564943092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001090 n

end

end A095002.P9676565028564943092

namespace A095002

/-- `∑[A144479(n)]-A001090(n)` -/
def P9676565028564943092.Spec : Prop :=
  ∀ n, P9676565028564943092.a n = A095002 (n + 1)

end A095002

/-! ## A095002.P10091544967817399466

`ceil(A070997(n)/3)`
-/

namespace A095002.P10091544967817399466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070997 n : ℚ) / 3⌉

end

end A095002.P10091544967817399466

namespace A095002

/-- `ceil(A070997(n)/3)` -/
def P10091544967817399466.Spec : Prop :=
  ∀ n, P10091544967817399466.a n = A095002 (n + 1)

end A095002

/-! ## A095002.P15561433138798570309

`(2*A182432(n)+1)/3`
-/

namespace A095002.P15561433138798570309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A182432 n + 1 : ℚ) / 3

end

end A095002.P15561433138798570309

namespace A095002

/-- `(2*A182432(n)+1)/3` -/
def P15561433138798570309.Spec : Prop :=
  ∀ n, P15561433138798570309.a n = (A095002 (n + 1) : ℚ)

end A095002

/-! ## A095002.P17595271813129975282

`(A041023(2*n)+2)/3`
-/

namespace A095002.P17595271813129975282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041023 (2 * n) + 2 : ℚ) / 3

end

end A095002.P17595271813129975282

namespace A095002

/-- `(A041023(2*n)+2)/3` -/
def P17595271813129975282.Spec : Prop :=
  ∀ n, P17595271813129975282.a n = (A095002 (n + 1) : ℚ)

end A095002

/-! ## A095002.P243513903032018669

`∑[A273053(n+1)/2]+1`
-/

namespace A095002.P243513903032018669
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273053 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095002.P243513903032018669

namespace A095002

/-- `∑[A273053(n+1)/2]+1` -/
def P243513903032018669.Spec : Prop :=
  ∀ n, P243513903032018669.a n = (A095002 (n + 1) : ℚ)

end A095002

/-! ## A095002.P17749363338532607599

`(A080871(2*n+1)+2)/3`
-/

namespace A095002.P17749363338532607599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080871 (2 * n + 1) + 2 : ℚ) / 3

end

end A095002.P17749363338532607599

namespace A095002

/-- `(A080871(2*n+1)+2)/3` -/
def P17749363338532607599.Spec : Prop :=
  ∀ n, P17749363338532607599.a n = (A095002 (n + 1) : ℚ)

end A095002

/-! ## A095002.P2501658778837101885

`∑[A341927(n)-A001091(n)]+1`
-/

namespace A095002.P2501658778837101885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341927 n - A001091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095002.P2501658778837101885

namespace A095002

/-- `∑[A341927(n)-A001091(n)]+1` -/
def P2501658778837101885.Spec : Prop :=
  ∀ n, P2501658778837101885.a n = A095002 (n + 1)

end A095002

/-! ## A095002.P18015796992112644316

`A070997(n)-∑[A273053(n+1)]`
-/

namespace A095002.P18015796992112644316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095002.P18015796992112644316

namespace A095002

/-- `A070997(n)-∑[A273053(n+1)]` -/
def P18015796992112644316.Spec : Prop :=
  ∀ n, P18015796992112644316.a n = A095002 (n + 1)

end A095002

/-! ## A095002.P3500179374710732080

`∑[A001091(n)-A001090(n)]-A001090(n)`
-/

namespace A095002.P3500179374710732080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001091 n - A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001090 n

end

end A095002.P3500179374710732080

namespace A095002

/-- `∑[A001091(n)-A001090(n)]-A001090(n)` -/
def P3500179374710732080.Spec : Prop :=
  ∀ n, P3500179374710732080.a n = A095002 (n + 1)

end A095002

/-!
# A095003: a(n) = 9*a(n-1) - 9*a(n-2) + a(n-3).

The programs for A095003, the canonical program `A095003.P11937971178776369156` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095003 has offset 1).

The definition of A095003 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-9*a(n-2)+a(n-3)` (program `A095003.P11937971178776369156`, by `A095003.P11937971178776369156.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095003.P11937971178776369156

`9*a(n-1)-9*a(n-2)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=45`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A095003

/-- `9*a(n-1)-9*a(n-2)+a(n-3)` -/
def P11937971178776369156.Spec : Prop :=
  ∀ n, P11937971178776369156.a n = A095003 (n + 1)

theorem P11937971178776369156.correct : P11937971178776369156.Spec := by
  intro n
  simp only [A095003, Nat.add_sub_cancel]

end A095003

/-! ## A095003.P17681685401907591704

`∑[8*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=5`
-/

namespace A095003.P17681685401907591704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  8 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095003.P17681685401907591704

namespace A095003

/-- `∑[8*a(n-1)-a(n-2)]` -/
def P17681685401907591704.Spec : Prop :=
  ∀ n, P17681685401907591704.a n = A095003 (n + 1)

end A095003

/-! ## A095003.P11199683424381445851

`8*a(n-1)-(a(n-2)+2)` with `a(0)=1, a(1)=6`
-/

namespace A095003.P11199683424381445851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  8 * a (n - 1) - (a (n - 2) + 2)

end

end A095003.P11199683424381445851

namespace A095003

/-- `8*a(n-1)-(a(n-2)+2)` -/
def P11199683424381445851.Spec : Prop :=
  ∀ n, P11199683424381445851.a n = A095003 (n + 1)

end A095003

/-! ## A095003.P10880591688963575001

`8*a(n-1)-2-a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A095003.P10880591688963575001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  8 * a (n - 1) - 2 - a (n - 2)

end

end A095003.P10880591688963575001

namespace A095003

/-- `8*a(n-1)-2-a(n-2)` -/
def P10880591688963575001.Spec : Prop :=
  ∀ n, P10880591688963575001.a n = A095003 (n + 1)

end A095003

/-! ## A095003.P11085439453877413764

`∑[A105426(n)]`
-/

namespace A095003.P11085439453877413764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095003.P11085439453877413764

namespace A095003

/-- `∑[A105426(n)]` -/
def P11085439453877413764.Spec : Prop :=
  ∀ n, P11085439453877413764.a n = A095003 (n + 1)

end A095003

/-! ## A095003.P12612678496576998924

`ceil(A077243(n)/3)`
-/

namespace A095003.P12612678496576998924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077243 n : ℚ) / 3⌉

end

end A095003.P12612678496576998924

namespace A095003

/-- `ceil(A077243(n)/3)` -/
def P12612678496576998924.Spec : Prop :=
  ∀ n, P12612678496576998924.a n = A095003 (n + 1)

end A095003

/-! ## A095003.P115093882236327906

`∑[A199336(Δ[n²])]`
-/

namespace A095003.P115093882236327906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199336 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095003.P115093882236327906

namespace A095003

/-- `∑[A199336(Δ[n²])]` -/
def P115093882236327906.Spec : Prop :=
  ∀ n, P115093882236327906.a n = A095003 (n + 1)

end A095003

/-! ## A095003.P14937864351614710055

`A076765(n)-A145608(n)`
-/

namespace A095003.P14937864351614710055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076765 n - A145608 n

end

end A095003.P14937864351614710055

namespace A095003

/-- `A076765(n)-A145608(n)` -/
def P14937864351614710055.Spec : Prop :=
  ∀ n, P14937864351614710055.a n = A095003 (n + 1)

end A095003

/-! ## A095003.P13413891367726921046

`∑[A001091(n)+A001090(n)]`
-/

namespace A095003.P13413891367726921046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001091 n + A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095003.P13413891367726921046

namespace A095003

/-- `∑[A001091(n)+A001090(n)]` -/
def P13413891367726921046.Spec : Prop :=
  ∀ n, P13413891367726921046.a n = A095003 (n + 1)

end A095003

/-! ## A095003.P8247155093895381146

`∑[A077244(n)-A077243(n)]`
-/

namespace A095003.P8247155093895381146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077244 n - A077243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095003.P8247155093895381146

namespace A095003

/-- `∑[A077244(n)-A077243(n)]` -/
def P8247155093895381146.Spec : Prop :=
  ∀ n, P8247155093895381146.a n = A095003 (n + 1)

end A095003

/-! ## A095003.P10900704143224240894

`∑[A341927(n)-A001090(n)]`
-/

namespace A095003.P10900704143224240894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341927 n - A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095003.P10900704143224240894

namespace A095003

/-- `∑[A341927(n)-A001090(n)]` -/
def P10900704143224240894.Spec : Prop :=
  ∀ n, P10900704143224240894.a n = A095003 (n + 1)

end A095003

/-! ## A095003.P16200014212179243867

`∑[A144479(n)+2*A001090(n)]`
-/

namespace A095003.P16200014212179243867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144479 n + 2 * A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095003.P16200014212179243867

namespace A095003

/-- `∑[A144479(n)+2*A001090(n)]` -/
def P16200014212179243867.Spec : Prop :=
  ∀ n, P16200014212179243867.a n = A095003 (n + 1)

end A095003

/-! ## A095003.P4145343006471335862

`∑[A070997(n)-2*A001090(n)]`
-/

namespace A095003.P4145343006471335862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n - 2 * A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095003.P4145343006471335862

namespace A095003

/-- `∑[A070997(n)-2*A001090(n)]` -/
def P4145343006471335862.Spec : Prop :=
  ∀ n, P4145343006471335862.a n = A095003 (n + 1)

end A095003

/-! ## A095003.P5803500590746355317

`∑[(A341927(n)+A001091(n))/2]`
-/

namespace A095003.P5803500590746355317
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341927 n + A001091 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095003.P5803500590746355317

namespace A095003

/-- `∑[(A341927(n)+A001091(n))/2]` -/
def P5803500590746355317.Spec : Prop :=
  ∀ n, P5803500590746355317.a n = (A095003 (n + 1) : ℚ)

end A095003

/-! ## A095003.P1419975778193207062

`∑[A070997(n)-A273053(n+1)/2]`
-/

namespace A095003.P1419975778193207062
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070997 n : ℚ) - (A273053 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095003.P1419975778193207062

namespace A095003

/-- `∑[A070997(n)-A273053(n+1)/2]` -/
def P1419975778193207062.Spec : Prop :=
  ∀ n, P1419975778193207062.a n = (A095003 (n + 1) : ℚ)

end A095003

/-! ## A095003.P17540735997117706229

`A001090(n+1)+A001090(n+1)-A095004(n+1)`
-/

namespace A095003.P17540735997117706229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 (n + 1) + (A001090 (n + 1) - A095004 (n + 1))

end

end A095003.P17540735997117706229

namespace A095003

/-- `A001090(n+1)+A001090(n+1)-A095004(n+1)` -/
def P17540735997117706229.Spec : Prop :=
  ∀ n, P17540735997117706229.a n = A095003 (n + 1)

end A095003

/-! ## A095003.P12339757364259121615

`A095002(n+2)-(A095004(n+1)+A095002(n+1))`
-/

namespace A095003.P12339757364259121615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095002 (n + 2) - (A095004 (n + 1) + A095002 (n + 1))

end

end A095003.P12339757364259121615

namespace A095003

/-- `A095002(n+2)-(A095004(n+1)+A095002(n+1))` -/
def P12339757364259121615.Spec : Prop :=
  ∀ n, P12339757364259121615.a n = A095003 (n + 1)

end A095003

/-!
# A095004: a(n) = 9*a(n-1) - 9*a(n-2) + a(n-3); given a(1) = 1, a(2) = 10, a(3) = 81.

The programs for A095004, the canonical program `A095004.P7776127249141827093` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095004 has offset 1).

The definition of A095004 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-9*a(n-2)+a(n-3)` (program `A095004.P7776127249141827093`, by `A095004.P7776127249141827093.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095004.P7776127249141827093

`9*a(n-1)-9*a(n-2)+a(n-3)` with `a(0)=1, a(1)=10, a(2)=81`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A095004

/-- `9*a(n-1)-9*a(n-2)+a(n-3)` -/
def P7776127249141827093.Spec : Prop :=
  ∀ n, P7776127249141827093.a n = A095004 (n + 1)

theorem P7776127249141827093.correct : P7776127249141827093.Spec := by
  intro n
  simp only [A095004, Nat.add_sub_cancel]

end A095004

/-! ## A095004.P16836114153926378316

`∑[8*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=9`
-/

namespace A095004.P16836114153926378316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  8 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095004.P16836114153926378316

namespace A095004

/-- `∑[8*a(n-1)-a(n-2)]` -/
def P16836114153926378316.Spec : Prop :=
  ∀ n, P16836114153926378316.a n = A095004 (n + 1)

end A095004

/-! ## A095004.P16545194172759419196

`∑[A057080(n)]`
-/

namespace A095004.P16545194172759419196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095004.P16545194172759419196

namespace A095004

/-- `∑[A057080(n)]` -/
def P16545194172759419196.Spec : Prop :=
  ∀ n, P16545194172759419196.a n = A095004 (n + 1)

end A095004

/-! ## A095004.P12305633627657622451

`∑[∑[A086903(n)]-1]`
-/

namespace A095004.P12305633627657622451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086903 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095004.P12305633627657622451

namespace A095004

/-- `∑[∑[A086903(n)]-1]` -/
def P12305633627657622451.Spec : Prop :=
  ∀ n, P12305633627657622451.a n = A095004 (n + 1)

end A095004

/-! ## A095004.P9885607818675230430

`∑[record[A177187(n+1)]]`
-/

namespace A095004.P9885607818675230430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177187 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095004.P9885607818675230430

namespace A095004

/-- `∑[record[A177187(n+1)]]` -/
def P9885607818675230430.Spec : Prop :=
  ∀ n, P9885607818675230430.a n = A095004 (n + 1)

end A095004

/-! ## A095004.P11528334749552279625

`∑[A177187(comp[2*n])]`
-/

namespace A095004.P11528334749552279625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177187 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095004.P11528334749552279625

namespace A095004

/-- `∑[A177187(comp[2*n])]` -/
def P11528334749552279625.Spec : Prop :=
  ∀ n, P11528334749552279625.a n = A095004 (n + 1)

end A095004

/-! ## A095004.P16849133258569722279

`∑[A145543(2*n+1)]`
-/

namespace A095004.P16849133258569722279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145543 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095004.P16849133258569722279

namespace A095004

/-- `∑[A145543(2*n+1)]` -/
def P16849133258569722279.Spec : Prop :=
  ∀ n, P16849133258569722279.a n = A095004 (n + 1)

end A095004

/-! ## A095004.P8167592723377729134

`∑[A322780(2*n+1)]`
-/

namespace A095004.P8167592723377729134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322780 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095004.P8167592723377729134

namespace A095004

/-- `∑[A322780(2*n+1)]` -/
def P8167592723377729134.Spec : Prop :=
  ∀ n, P8167592723377729134.a n = A095004 (n + 1)

end A095004

/-! ## A095004.P15207246018267082971

`∑[record[Δ[A103200(n+1)]]]`
-/

namespace A095004.P15207246018267082971
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095004.P15207246018267082971

namespace A095004

/-- `∑[record[Δ[A103200(n+1)]]]` -/
def P15207246018267082971.Spec : Prop :=
  ∀ n, P15207246018267082971.a n = A095004 (n + 1)

end A095004

/-! ## A095004.P12291119743271286280

`∑[record[Δ[A105076(n+1)]]]`
-/

namespace A095004.P12291119743271286280
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095004.P12291119743271286280

namespace A095004

/-- `∑[record[Δ[A105076(n+1)]]]` -/
def P12291119743271286280.Spec : Prop :=
  ∀ n, P12291119743271286280.a n = A095004 (n + 1)

end A095004

/-! ## A095004.P1094068456334333326

`∑[2*A145607(n+1)+1]`
-/

namespace A095004.P1094068456334333326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145607 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095004.P1094068456334333326

namespace A095004

/-- `∑[2*A145607(n+1)+1]` -/
def P1094068456334333326.Spec : Prop :=
  ∀ n, P1094068456334333326.a n = A095004 (n + 1)

end A095004

/-! ## A095004.P11781531568641461795

`∑[2*A253470(n+1)-1]`
-/

namespace A095004.P11781531568641461795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253470 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095004.P11781531568641461795

namespace A095004

/-- `∑[2*A253470(n+1)-1]` -/
def P11781531568641461795.Spec : Prop :=
  ∀ n, P11781531568641461795.a n = A095004 (n + 1)

end A095004

/-! ## A095004.P10216057835919628655

`A076765(n)+∑[A001090(n)]`
-/

namespace A095004.P10216057835919628655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076765 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095004.P10216057835919628655

namespace A095004

/-- `A076765(n)+∑[A001090(n)]` -/
def P10216057835919628655.Spec : Prop :=
  ∀ n, P10216057835919628655.a n = A095004 (n + 1)

end A095004

/-! ## A095004.P3315970627342728760

`∑[A077244(n)-A077246(n)]`
-/

namespace A095004.P3315970627342728760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077244 n - A077246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095004.P3315970627342728760

namespace A095004

/-- `∑[A077244(n)-A077246(n)]` -/
def P3315970627342728760.Spec : Prop :=
  ∀ n, P3315970627342728760.a n = A095004 (n + 1)

end A095004

/-! ## A095004.P11975759696350919332

`∑[A001090(n)+∑[A070997(n)]]`
-/

namespace A095004.P11975759696350919332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095004.P11975759696350919332

namespace A095004

/-- `∑[A001090(n)+∑[A070997(n)]]` -/
def P11975759696350919332.Spec : Prop :=
  ∀ n, P11975759696350919332.a n = A095004 (n + 1)

end A095004

/-! ## A095004.P15044957732246332064

`∑[A001090(n+1)+A001090(n)]`
-/

namespace A095004.P15044957732246332064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 (n + 1) + A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095004.P15044957732246332064

namespace A095004

/-- `∑[A001090(n+1)+A001090(n)]` -/
def P15044957732246332064.Spec : Prop :=
  ∀ n, P15044957732246332064.a n = A095004 (n + 1)

end A095004

/-! ## A095004.P1800014655493223073

`Δ[A077248(n)]*A177187(n+1)`
-/

namespace A095004.P1800014655493223073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A177187 (n + 1)

end

end A095004.P1800014655493223073

namespace A095004

/-- `Δ[A077248(n)]*A177187(n+1)` -/
def P1800014655493223073.Spec : Prop :=
  ∀ n, P1800014655493223073.a n = A095004 (n + 1)

end A095004

/-! ## A095004.P1219310241423761864

`∑[A070997(n)+A273053(n+1)/2]`
-/

namespace A095004.P1219310241423761864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070997 n : ℚ) + (A273053 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095004.P1219310241423761864

namespace A095004

/-- `∑[A070997(n)+A273053(n+1)/2]` -/
def P1219310241423761864.Spec : Prop :=
  ∀ n, P1219310241423761864.a n = (A095004 (n + 1) : ℚ)

end A095004

/-!
# A095005: Number of odious primes (A027697) in range ]2^n,2^(n+1)].

The programs for A095005, there is no canonical definition to state claims against.
-/

/-! ## A095005.P17418652433373732656

`A036378(n+1)-A095006(n+1)`
-/

namespace A095005.P17418652433373732656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095006 (n + 1)

end

end A095005.P17418652433373732656

/-! ## A095005.P9539784365909579812

`Δ[A126279(A000124(n))]-A095006(n+1)`
-/

namespace A095005.P9539784365909579812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095006 (n + 1)

end

end A095005.P9539784365909579812

/-! ## A095005.P3703939041383118215

`A162145(A065475(n+1))-A095006(n+1)`
-/

namespace A095005.P3703939041383118215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095006 (n + 1)

end

end A095005.P3703939041383118215

/-! ## A095005.P16555482408822239863

`A095007(n+1)+A095008(n+1)-A095006(n+1)`
-/

namespace A095005.P16555482408822239863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095007 (n + 1) + (A095008 (n + 1) - A095006 (n + 1))

end

end A095005.P16555482408822239863

/-! ## A095005.P12977914370946971770

`A095013(n+1)+A095014(n+1)-A095006(n+1)`
-/

namespace A095005.P12977914370946971770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095013 (n + 1) + (A095014 (n + 1) - A095006 (n + 1))

end

end A095005.P12977914370946971770

/-!
# A095006: Number of evil primes (A027699) in range ]2^n,2^(n+1)].

The programs for A095006, there is no canonical definition to state claims against.
-/

/-! ## A095006.P8183817501283445213

`A036378(n+1)-A095005(n+1)`
-/

namespace A095006.P8183817501283445213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095005 (n + 1)

end

end A095006.P8183817501283445213

/-! ## A095006.P10918895381952459888

`Δ[A007053(n+1)]-A095005(n+1)`
-/

namespace A095006.P10918895381952459888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095005 (n + 1)

end

end A095006.P10918895381952459888

/-! ## A095006.P15150553358771367596

`Δ[A060967(2*(n+1))]-A095005(n+1)`
-/

namespace A095006.P15150553358771367596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095005 (n + 1)

end

end A095006.P15150553358771367596

/-! ## A095006.P8000194885399713344

`Δ[A126279(A000124(n))]-A095005(n+1)`
-/

namespace A095006.P8000194885399713344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095005 (n + 1)

end

end A095006.P8000194885399713344

/-! ## A095006.P9735239252693218574

`A162145(A065475(n+1))-A095005(n+1)`
-/

namespace A095006.P9735239252693218574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095005 (n + 1)

end

end A095006.P9735239252693218574

/-!
# A095007: Number of 4k+1 primes (A002144) in range ]2^n,2^(n+1)].

The programs for A095007, there is no canonical definition to state claims against.
-/

/-! ## A095007.P6339953359447066216

`A095009(n+1)+A095011(n+1)`
-/

namespace A095007.P6339953359447066216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095009 (n + 1) + A095011 (n + 1)

end

end A095007.P6339953359447066216

/-! ## A095007.P6031965354534622349

`A036378(n+1)-A095008(n+1)`
-/

namespace A095007.P6031965354534622349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095008 (n + 1)

end

end A095007.P6031965354534622349

/-! ## A095007.P6546265476484949742

`Δ[A007053(n+1)]-A095008(n+1)`
-/

namespace A095007.P6546265476484949742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095008 (n + 1)

end

end A095007.P6546265476484949742

/-! ## A095007.P5295014505120199679

`A162145(A065475(n+1))-A095008(n+1)`
-/

namespace A095007.P5295014505120199679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095008 (n + 1)

end

end A095007.P5295014505120199679

/-! ## A095007.P4394408951678206958

`A036378(n+1)-(A095012(n+1)+A095010(n+1))`
-/

namespace A095007.P4394408951678206958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - (A095012 (n + 1) + A095010 (n + 1))

end

end A095007.P4394408951678206958

/-!
# A095008: Number of 4k+3 primes (A002145) in range ]2^n,2^(n+1)].

The programs for A095008, there is no canonical definition to state claims against.
-/

/-! ## A095008.P5588823754419837767

`A095010(n+1)+A095012(n+1)`
-/

namespace A095008.P5588823754419837767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095010 (n + 1) + A095012 (n + 1)

end

end A095008.P5588823754419837767

/-! ## A095008.P12263615049529677997

`A036378(n+1)-A095007(n+1)`
-/

namespace A095008.P12263615049529677997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095007 (n + 1)

end

end A095008.P12263615049529677997

/-! ## A095008.P16432744639590159673

`A095092(n+1)+A095093(n+1)`
-/

namespace A095008.P16432744639590159673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095092 (n + 1) + A095093 (n + 1)

end

end A095008.P16432744639590159673

/-! ## A095008.P1370416024896428198

`Δ[A007053(n+1)]-A095007(n+1)`
-/

namespace A095008.P1370416024896428198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095007 (n + 1)

end

end A095008.P1370416024896428198

/-! ## A095008.P4690249334257545683

`A162145(A065475(n+1))-A095007(n+1)`
-/

namespace A095008.P4690249334257545683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095007 (n + 1)

end

end A095008.P4690249334257545683

/-!
# A095009: Number of 8k+1 primes (A007519) in range ]2^n,2^(n+1)].

The programs for A095009, there is no canonical definition to state claims against.
-/

/-! ## A095009.P12676925144327899996

`A095007(n+1)-A095011(n+1)`
-/

namespace A095009.P12676925144327899996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095007 (n + 1) - A095011 (n + 1)

end

end A095009.P12676925144327899996

/-! ## A095009.P13133162397049251338

`A095013(n+1)-A095012(n+1)`
-/

namespace A095009.P13133162397049251338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095013 (n + 1) - A095012 (n + 1)

end

end A095009.P13133162397049251338

/-! ## A095009.P13856048108159504889

`A036378(n+1)-(A095011(n+1)+A095008(n+1))`
-/

namespace A095009.P13856048108159504889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - (A095011 (n + 1) + A095008 (n + 1))

end

end A095009.P13856048108159504889

/-! ## A095009.P3698380739898718918

`A036378(n+1)-(A095014(n+1)+A095012(n+1))`
-/

namespace A095009.P3698380739898718918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - (A095014 (n + 1) + A095012 (n + 1))

end

end A095009.P3698380739898718918

/-! ## A095009.P9902664482766727469

`A095007(n+1)+A095010(n+1)-A095014(n+1)`
-/

namespace A095009.P9902664482766727469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095007 (n + 1) + (A095010 (n + 1) - A095014 (n + 1))

end

end A095009.P9902664482766727469

/-!
# A095010: Number of 8k+3 primes (A007520) in range [2^n,2^(n+1)].

The programs for A095010, there is no canonical definition to state claims against.
-/

/-! ## A095010.P2687063205543658147

`A095008(n+1)-A095012(n+1)`
-/

namespace A095010.P2687063205543658147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095008 (n + 1) - A095012 (n + 1)

end

end A095010.P2687063205543658147

/-! ## A095010.P5766527658125358662

`A095014(n+1)-A095011(n+1)`
-/

namespace A095010.P5766527658125358662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095014 (n + 1) - A095011 (n + 1)

end

end A095010.P5766527658125358662

/-! ## A095010.P14002934093034911457

`A036378(n+1)-(A095013(n+1)+A095011(n+1))`
-/

namespace A095010.P14002934093034911457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - (A095013 (n + 1) + A095011 (n + 1))

end

end A095010.P14002934093034911457

/-! ## A095010.P17760961771739442243

`A095008(n+1)+A095009(n+1)-A095013(n+1)`
-/

namespace A095010.P17760961771739442243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095008 (n + 1) + (A095009 (n + 1) - A095013 (n + 1))

end

end A095010.P17760961771739442243

/-! ## A095010.P15240341179125856552

`A095009(n+1)+A095014(n+1)-A095007(n+1)`
-/

namespace A095010.P15240341179125856552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095009 (n + 1) + (A095014 (n + 1) - A095007 (n + 1))

end

end A095010.P15240341179125856552

/-!
# A095011: Number of 8k+5 primes (A007521) in range ]2^n,2^(n+1)].

The programs for A095011, there is no canonical definition to state claims against.
-/

/-! ## A095011.P11983863289707408103

`A095014(n+1)-A095010(n+1)`
-/

namespace A095011.P11983863289707408103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095014 (n + 1) - A095010 (n + 1)

end

end A095011.P11983863289707408103

/-! ## A095011.P8198653697755416720

`A095007(n+1)-A095009(n+1)`
-/

namespace A095011.P8198653697755416720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095007 (n + 1) - A095009 (n + 1)

end

end A095011.P8198653697755416720

/-! ## A095011.P7609409195427986305

`A036378(n+1)-(A095009(n+1)+A095008(n+1))`
-/

namespace A095011.P7609409195427986305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - (A095009 (n + 1) + A095008 (n + 1))

end

end A095011.P7609409195427986305

/-! ## A095011.P12168500305508405794

`A036378(n+1)-(A095013(n+1)+A095010(n+1))`
-/

namespace A095011.P12168500305508405794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - (A095013 (n + 1) + A095010 (n + 1))

end

end A095011.P12168500305508405794

/-! ## A095011.P4932359332832051814

`A095007(n+1)+A095012(n+1)-A095013(n+1)`
-/

namespace A095011.P4932359332832051814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095007 (n + 1) + (A095012 (n + 1) - A095013 (n + 1))

end

end A095011.P4932359332832051814

/-!
# A095012: Number of 8k+7 primes (A007522) in range ]2^n,2^(n+1)].

The programs for A095012, there is no canonical definition to state claims against.
-/

/-! ## A095012.P8714849656656164562

`A095013(n+1)-A095009(n+1)`
-/

namespace A095012.P8714849656656164562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095013 (n + 1) - A095009 (n + 1)

end

end A095012.P8714849656656164562

/-! ## A095012.P16889615801849001171

`A095008(n+1)-A095010(n+1)`
-/

namespace A095012.P16889615801849001171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095008 (n + 1) - A095010 (n + 1)

end

end A095012.P16889615801849001171

/-! ## A095012.P13268762203496812848

`A036378(n+1)-(A095010(n+1)+A095007(n+1))`
-/

namespace A095012.P13268762203496812848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - (A095010 (n + 1) + A095007 (n + 1))

end

end A095012.P13268762203496812848

/-! ## A095012.P6186236449556288485

`A036378(n+1)-(A095014(n+1)+A095009(n+1))`
-/

namespace A095012.P6186236449556288485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - (A095014 (n + 1) + A095009 (n + 1))

end

end A095012.P6186236449556288485

/-! ## A095012.P16525071600097351510

`A095008(n+1)+A095011(n+1)-A095014(n+1)`
-/

namespace A095012.P16525071600097351510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095008 (n + 1) + (A095011 (n + 1) - A095014 (n + 1))

end

end A095012.P16525071600097351510

/-!
# A095013: Number of 8k+-1 primes (A001132) in range [2^n,2^(n+1)].

The programs for A095013, there is no canonical definition to state claims against.
-/

/-! ## A095013.P14204128957272836835

`A095009(n+1)+A095012(n+1)`
-/

namespace A095013.P14204128957272836835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095009 (n + 1) + A095012 (n + 1)

end

end A095013.P14204128957272836835

/-! ## A095013.P9991309252878381916

`A036378(n+1)-A095014(n+1)`
-/

namespace A095013.P9991309252878381916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095014 (n + 1)

end

end A095013.P9991309252878381916

/-! ## A095013.P1882178881858952487

`Δ[A007053(n+1)]-A095014(n+1)`
-/

namespace A095013.P1882178881858952487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095014 (n + 1)

end

end A095013.P1882178881858952487

/-! ## A095013.P5538444872682863647

`A162145(A065475(n+1))-A095014(n+1)`
-/

namespace A095013.P5538444872682863647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095014 (n + 1)

end

end A095013.P5538444872682863647

/-! ## A095013.P5369387272419081735

`A036378(n+1)-(A095011(n+1)+A095010(n+1))`
-/

namespace A095013.P5369387272419081735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - (A095011 (n + 1) + A095010 (n + 1))

end

end A095013.P5369387272419081735

/-!
# A095014: Number of 8k+-3 primes (A003629) in range [2^n,2^(n+1)].

The programs for A095014, there is no canonical definition to state claims against.
-/

/-! ## A095014.P15100459781983135135

`A095010(n+1)+A095011(n+1)`
-/

namespace A095014.P15100459781983135135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095010 (n + 1) + A095011 (n + 1)

end

end A095014.P15100459781983135135

/-! ## A095014.P2814026799521336857

`A036378(n+1)-A095013(n+1)`
-/

namespace A095014.P2814026799521336857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095013 (n + 1)

end

end A095014.P2814026799521336857

/-! ## A095014.P17877176303998755107

`Δ[A007053(n+1)]-A095013(n+1)`
-/

namespace A095014.P17877176303998755107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095013 (n + 1)

end

end A095014.P17877176303998755107

/-! ## A095014.P11286318515510496843

`A162145(A065475(n+1))-A095013(n+1)`
-/

namespace A095014.P11286318515510496843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095013 (n + 1)

end

end A095014.P11286318515510496843

/-! ## A095014.P7776726851230855177

`A036378(n+1)-(A095012(n+1)+A095009(n+1))`
-/

namespace A095014.P7776726851230855177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - (A095012 (n + 1) + A095009 (n + 1))

end

end A095014.P7776726851230855177

/-!
# A095015: Number of 6k+1 primes (A002476) in range ]2^n,2^(n+1)].

The programs for A095015, there is no canonical definition to state claims against.
-/

/-! ## A095015.P5687175852030826331

`Δ[A340763(∑[2^n])]`
-/

namespace A095015.P5687175852030826331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095015.P5687175852030826331

/-! ## A095015.P14083323665511785648

`abs(Δ[A340763(A048578(n))])`
-/

namespace A095015.P14083323665511785648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (A048578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095015.P14083323665511785648

/-! ## A095015.P17334296710439098982

`abs(Δ[A340763(A198633(n))])`
-/

namespace A095015.P17334296710439098982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (A198633 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095015.P17334296710439098982

/-! ## A095015.P3280729705686632879

`A002573(n+1)-A241833(A001936(n+4))`
-/

namespace A095015.P3280729705686632879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002573 (n + 1) - A241833 (A001936 (n + 4)).toNat

end

end A095015.P3280729705686632879

/-! ## A095015.P18329462486397250070

`A339186(A379065(n)+A000108(n))`
-/

namespace A095015.P18329462486397250070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339186 (A379065 n + A000108 n).toNat

end

end A095015.P18329462486397250070

/-!
# A095016: Number of 6k+5 primes (A007528) in range [2^n,2^(n+1)].

The programs for A095016, there is no canonical definition to state claims against.
-/

/-! ## A095016.P14770906064634110766

`Δ[A340764(2^(n+1))]`
-/

namespace A095016.P14770906064634110766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (2 ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095016.P14770906064634110766

/-! ## A095016.P17398022669921990616

`abs(Δ[A340764(A198633(n))])`
-/

namespace A095016.P17398022669921990616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A198633 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095016.P17398022669921990616

/-! ## A095016.P12903404482681511996

`abs(Δ[A340764(A014234(n+1))])`
-/

namespace A095016.P12903404482681511996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A014234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095016.P12903404482681511996

/-! ## A095016.P17784299157303848372

`Δ[A340764(A198633(n))]%A000045(n+3)`
-/

namespace A095016.P17784299157303848372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A198633 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000045 (n + 3))

end

end A095016.P17784299157303848372

/-! ## A095016.P14378841501148685820

`Δ[A340764(A014234(n+1))]%A000108(n+1)`
-/

namespace A095016.P14378841501148685820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A014234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000108 (n + 1))

end

end A095016.P14378841501148685820

/-!
# A095017: Number of lesser twin primes (A001359) in range ]2^n, 2^(n+1)].

The programs for A095017, there is no canonical definition to state claims against.
-/

/-! ## A095017.P10494449671184639621

`Δ[A033843(n+1)%A288235(n)]`
-/

namespace A095017.P10494449671184639621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033843 (n + 1)) (A288235 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095017.P10494449671184639621

/-! ## A095017.P12576698593806558888

`Δ[A033843(n+1)]%A033843(2*(n+2))`
-/

namespace A095017.P12576698593806558888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A033843 (2 * (n + 2)))

end

end A095017.P12576698593806558888

/-! ## A095017.P16871268758953623011

`Δ[A071538(2^(n+1))]`
-/

namespace A095017.P16871268758953623011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (2 ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095017.P16871268758953623011

/-!
# A095018: a(n) is the number of primes p which have exactly n zeros and n ones when written in binary.

The programs for A095018, there is no canonical definition to state claims against.
-/

/-! ## A095018.P10940678565406292169

`A095297(A254667(2*n+1))-A095019(2*n+1)`
-/

namespace A095018.P10940678565406292169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095297 (A254667 (2 * n + 1)).toNat - A095019 (2 * n + 1)

end

end A095018.P10940678565406292169

/-! ## A095018.P1942688317538151070

`A095054(A254667(2*n+1))-A095296(2*n+1)`
-/

namespace A095018.P1942688317538151070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095054 (A254667 (2 * n + 1)).toNat - A095296 (2 * n + 1)

end

end A095018.P1942688317538151070

/-!
# A095019: Number of zero-bit dominant primes (A095071) in range ]2^n,2^(n+1)].

The programs for A095019, there is no canonical definition to state claims against.
-/

/-! ## A095019.P322870625576544828

`A036378(n+1)-A095054(n+1)`
-/

namespace A095019.P322870625576544828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095054 (n + 1)

end

end A095019.P322870625576544828

/-! ## A095019.P1716193314494799046

`A162145(n+2)%A095054(n+1)`
-/

namespace A095019.P1716193314494799046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162145 (n + 2)) (A095054 (n + 1))

end

end A095019.P1716193314494799046

/-! ## A095019.P14060622331219478620

`Δ[A185192(n+1)]%A095054(n+1)`
-/

namespace A095019.P14060622331219478620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A095054 (n + 1))

end

end A095019.P14060622331219478620

/-! ## A095019.P6878730968089447265

`A162145(A065475(n+1))-A095054(n+1)`
-/

namespace A095019.P6878730968089447265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095054 (n + 1)

end

end A095019.P6878730968089447265

/-! ## A095019.P9123022053526124372

`A095324(n+1)+A095325(n+1)-A095054(n+1)`
-/

namespace A095019.P9123022053526124372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095324 (n + 1) + (A095325 (n + 1) - A095054 (n + 1))

end

end A095019.P9123022053526124372

/-!
# A095020: Number of one-bit dominant primes (A095070) in range ]2^n,2^(n+1)].

The programs for A095020, there is no canonical definition to state claims against.
-/

/-! ## A095020.P13379419969962073918

`A036378(n+1)-A095055(n+1)`
-/

namespace A095020.P13379419969962073918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095055 (n + 1)

end

end A095020.P13379419969962073918

/-! ## A095020.P7799263035791129953

`Δ[A007053(n+1)]-A095055(n+1)`
-/

namespace A095020.P7799263035791129953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095055 (n + 1)

end

end A095020.P7799263035791129953

/-! ## A095020.P15758045314997621632

`A162145(A065475(n+1))-A095055(n+1)`
-/

namespace A095020.P15758045314997621632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095055 (n + 1)

end

end A095020.P15758045314997621632

/-! ## A095020.P5540416137463073288

`A095005(n+1)+A095006(n+1)-A095055(n+1)`
-/

namespace A095020.P5540416137463073288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095005 (n + 1) + (A095006 (n + 1) - A095055 (n + 1))

end

end A095020.P5540416137463073288

/-! ## A095020.P13639621189844076942

`A095007(n+1)+A095008(n+1)-A095055(n+1)`
-/

namespace A095020.P13639621189844076942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095007 (n + 1) + (A095008 (n + 1) - A095055 (n + 1))

end

end A095020.P13639621189844076942

/-!
# A095021: Number of 5k+1 primes (A030430) in range [2^n,2^(n+1)].

The programs for A095021, there is no canonical definition to state claims against.
-/

/-! ## A095021.P5954675960628593571

`Δ[A185711(∑[2^n])]`
-/

namespace A095021.P5954675960628593571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185711 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095021.P5954675960628593571

/-! ## A095021.P1235795988371739085

`abs(Δ[A185711(A048578(n))])`
-/

namespace A095021.P1235795988371739085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185711 (A048578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095021.P1235795988371739085

/-! ## A095021.P3226270799214635660

`abs(Δ[A185711(A126646(n))])`
-/

namespace A095021.P3226270799214635660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185711 (A126646 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095021.P3226270799214635660

/-! ## A095021.P10914457632050590528

`abs(Δ[A185711(A130785(n))])`
-/

namespace A095021.P10914457632050590528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185711 (A130785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095021.P10914457632050590528

/-! ## A095021.P5782930689322001494

`abs(Δ[A185711(A151821(n+1))])`
-/

namespace A095021.P5782930689322001494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185711 (A151821 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095021.P5782930689322001494

/-!
# A095022: Number of 5k+2 primes (A030432) in range [2^n,2^(n+1)].

The programs for A095022, there is no canonical definition to state claims against.
-/

/-! ## A095022.P12930454113157137627

`Δ[A185714(∑[2^n])]`
-/

namespace A095022.P12930454113157137627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095022.P12930454113157137627

/-! ## A095022.P3633185666625915625

`abs(Δ[A185714(A126646(n))])`
-/

namespace A095022.P3633185666625915625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (A126646 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095022.P3633185666625915625

/-! ## A095022.P14052814713043032031

`abs(Δ[A185714(A130755(n))])`
-/

namespace A095022.P14052814713043032031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (A130755 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095022.P14052814713043032031

/-! ## A095022.P3273295356625033463

`abs(Δ[A185714(A198633(n))])`
-/

namespace A095022.P3273295356625033463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (A198633 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095022.P3273295356625033463

/-! ## A095022.P18314759588467881034

`abs(Δ[A185714(A284353(n))])`
-/

namespace A095022.P18314759588467881034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (A284353 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095022.P18314759588467881034

/-!
# A095023: Number of 5k+3 primes (A030431) in range ]2^n,2^(n+1)].

The programs for A095023, there is no canonical definition to state claims against.
-/

/-! ## A095023.P8569037251050071488

`Δ[A185712(∑[2^n])]`
-/

namespace A095023.P8569037251050071488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095023.P8569037251050071488

/-! ## A095023.P18012576651806550248

`abs(Δ[A185712(A077552(n))])`
-/

namespace A095023.P18012576651806550248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 (A077552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095023.P18012576651806550248

/-! ## A095023.P14272389838319264573

`abs(Δ[A185712(A126646(n))])`
-/

namespace A095023.P14272389838319264573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 (A126646 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095023.P14272389838319264573

/-! ## A095023.P15896367968266155666

`abs(Δ[A185712(A151821(n+1))])`
-/

namespace A095023.P15896367968266155666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 (A151821 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095023.P15896367968266155666

/-! ## A095023.P13853612784288424853

`A055941(A000111(n)+∑{e}[xor(n, n+1)+1, #])`
-/

namespace A095023.P13853612784288424853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A000111 n + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A095023.P13853612784288424853

/-!
# A095024: Number of 5k+4 primes (A030433) in range ]2^n,2^(n+1)].

The programs for A095024, there is no canonical definition to state claims against.
-/

/-! ## A095024.P5726837085994595698

`Δ[A185715(∑[2^n])]`
-/

namespace A095024.P5726837085994595698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185715 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095024.P5726837085994595698

/-! ## A095024.P14432856407960746303

`abs(Δ[A185715(A048578(n))])`
-/

namespace A095024.P14432856407960746303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185715 (A048578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095024.P14432856407960746303

/-! ## A095024.P1971238628241367117

`abs(Δ[A185715(A095121(n))])`
-/

namespace A095024.P1971238628241367117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185715 (A095121 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095024.P1971238628241367117

/-! ## A095024.P15254395025941445416

`abs(Δ[A185715(A198633(n))])`
-/

namespace A095024.P15254395025941445416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185715 (A198633 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095024.P15254395025941445416

/-! ## A095024.P51334491512224936

`abs(Δ[A185715(A000079(n+1))])`
-/

namespace A095024.P51334491512224936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185715 (A000079 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095024.P51334491512224936

/-!
# A095026: Triangle read by rows, where T(n,k) is the number of occurrences of the digit k as least significant digit in the base-n multiplication table, and 0 <= k < n.

The programs for A095026, there is no canonical definition to state claims against.
-/

/-! ## A095026.P3119686665263927431

`A227507(A245300(n)+1)`
-/

namespace A095026.P3119686665263927431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227507 (A245300 n + 1).toNat

end

end A095026.P3119686665263927431

/-!
# A095027: Semiprimes of the form 3^n - 2^n.

The programs for A095027, there is no canonical definition to state claims against.
-/

/-! ## A095027.P9926372836918970483

`A001047(A082869(n+1))`
-/

namespace A095027.P9926372836918970483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (A082869 (n + 1)).toNat

end

end A095027.P9926372836918970483

/-!
# A095034: An example of a (v,k,lambda)=(37,9,2) cyclic difference set.

The programs for A095034, there is no canonical definition to state claims against.
-/

/-! ## A095034.P14460564248392193118

`A065033(eq[A052126(n+1), A255668(n)])`
-/

namespace A095034.P14460564248392193118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A095034.P14460564248392193118

/-!
# A095039: An example of a (v,k,lambda)=(40,13,4) cyclic difference set.

The programs for A095039, there is no canonical definition to state claims against.
-/

/-! ## A095039.P3497687344005902489

`eq[lcm(3, A101890(n)), A101890(n)]`
-/

namespace A095039.P3497687344005902489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A101890 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101890 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095039.P3497687344005902489

/-! ## A095039.P18129208842525414548

`∪[A124177(n+1), A029877(n)]`
-/

namespace A095039.P18129208842525414548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095039.P18129208842525414548

/-! ## A095039.P4179760070424939610

`eq[A010051(3*n+2), A152243(A334710(n+1))]`
-/

namespace A095039.P4179760070424939610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152243 (A334710 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095039.P4179760070424939610

/-!
# A095041: One of two (v,k,lambda)=(31,15,7) cyclic difference sets. The other one is A095042.

The programs for A095041, there is no canonical definition to state claims against.
-/

/-! ## A095041.P2227190662749003021

`comp[n*A011746(n)]`
-/

namespace A095041.P2227190662749003021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011746 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095041.P2227190662749003021

/-! ## A095041.P3650655831378535147

`eq[0, A088002(n)%2]`
-/

namespace A095041.P3650655831378535147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088002 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095041.P3650655831378535147

/-! ## A095041.P3687597823083937602

`comp[(n+1)*A011662(n)]`
-/

namespace A095041.P3687597823083937602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011662 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095041.P3687597823083937602

/-! ## A095041.P17852868716061478843

`comp[n*A011751(3*n)]`
-/

namespace A095041.P17852868716061478843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011751 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095041.P17852868716061478843

/-! ## A095041.P1031228888030828974

`lt[n*A011746(n+1), 2]+1`
-/

namespace A095041.P1031228888030828974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011746 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A095041.P1031228888030828974

/-!
# A095042: One of two (v,k,lambda)=(31,15,7) cyclic difference sets. The other one is A095041.

The programs for A095042, there is no canonical definition to state claims against.
-/

/-! ## A095042.P3539302438446792481

`comp[n-(n²+n)%31]`
-/

namespace A095042.P3539302438446792481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n ^ 2 + n) % 31 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095042.P3539302438446792481

/-! ## A095042.P15258418516915833948

`record[n^(((n^5)%31)%2)]`
-/

namespace A095042.P15258418516915833948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n ^ 5 % 31 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095042.P15258418516915833948

/-! ## A095042.P7330429987600905254

`A010423(n+2)`
-/

namespace A095042.P7330429987600905254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010423 (n + 2)

end

end A095042.P7330429987600905254

/-! ## A095042.P7519311939830115837

`A063987(n+61)`
-/

namespace A095042.P7519311939830115837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063987 (n + 61)

end

end A095042.P7519311939830115837

/-! ## A095042.P1453525954706041322

`A046071(701+n)`
-/

namespace A095042.P1453525954706041322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046071 (701 + n)

end

end A095042.P1453525954706041322

/-!
# A095047: An example of a (v,k,lambda)=(107,53,26) cyclic difference set.

The programs for A095047, there is no canonical definition to state claims against.
-/

/-! ## A095047.P18121394707283298328

`record[n^A011605(n)]`
-/

namespace A095047.P18121394707283298328
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A011605 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095047.P18121394707283298328

/-! ## A095047.P9069659534164330818

`lt[A011605(65*n), 0]`
-/

namespace A095047.P9069659534164330818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011605 (65 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095047.P9069659534164330818

/-! ## A095047.P723411042514367049

`comp[n*A011605(2*n)]`
-/

namespace A095047.P723411042514367049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011605 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095047.P723411042514367049

/-! ## A095047.P7385544394923882889

`record[(n+1)*A011605(n+1)]`
-/

namespace A095047.P7385544394923882889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095047.P7385544394923882889

/-! ## A095047.P4988670261705556121

`eq[A011605(n), A329684(n)]`
-/

namespace A095047.P4988670261705556121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095047.P4988670261705556121

/-! ## A095047.P6152177362966500684

`eq[A011605(n), A361338(n)]`
-/

namespace A095047.P6152177362966500684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095047.P6152177362966500684

/-! ## A095047.P8398439452672220289

`eq[A011605(n), A318671(n+1)]`
-/

namespace A095047.P8398439452672220289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095047.P8398439452672220289

/-! ## A095047.P9321100857530980536

`eq[A011605(n), A376663(n+1)]`
-/

namespace A095047.P9321100857530980536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376663 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095047.P9321100857530980536

/-!
# A095048: Number of distinct digits needed to write all positive divisors of n in decimal representation.

The programs for A095048, there is no canonical definition to state claims against.
-/

/-! ## A095048.P6269315906734088209

`A034887(floor(log2(A256824(n+1))))`
-/

namespace A095048.P6269315906734088209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (Nat.log 2 (A256824 (n + 1)).toNat)

end

end A095048.P6269315906734088209

/-! ## A095048.P6192032100457350691

`∑{digits}[A256824(n+1), A014722(#)]`
-/

namespace A095048.P6192032100457350691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014722 x).sum

end

end A095048.P6192032100457350691

/-! ## A095048.P13246164841034786683

`∑{digits}[A256824(n+1), A014802(#)]`
-/

namespace A095048.P13246164841034786683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014802 x).sum

end

end A095048.P13246164841034786683

/-! ## A095048.P15604717745527727452

`∑{digits}[A256824(n+1), A014902(#)]`
-/

namespace A095048.P15604717745527727452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014902 x).sum

end

end A095048.P15604717745527727452

/-! ## A095048.P9306311338552028339

`∑{digits}[A256824(n+1), A014952(#)]`
-/

namespace A095048.P9306311338552028339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014952 x).sum

end

end A095048.P9306311338552028339

/-! ## A095048.P7092065745395464536

`∑{digits}[A256824(n+1), A015130(#)]`
-/

namespace A095048.P7092065745395464536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015130 x).sum

end

end A095048.P7092065745395464536

/-! ## A095048.P6475238216929725104

`∑{digits}[A256824(n+1), A055642(#)]`
-/

namespace A095048.P6475238216929725104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A095048.P6475238216929725104

/-! ## A095048.P1459029216116237405

`∑{digits}[A256824(n+1), A061901(#)]`
-/

namespace A095048.P1459029216116237405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A061901 x).sum

end

end A095048.P1459029216116237405

/-! ## A095048.P4096320668197802425

`∑{digits}[A256824(n+1), A109035(#)]`
-/

namespace A095048.P4096320668197802425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A109035 x).sum

end

end A095048.P4096320668197802425

/-! ## A095048.P230736944597345567

`∑{digits}[A256824(n+1), A178788(#)]`
-/

namespace A095048.P230736944597345567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A178788 x).sum

end

end A095048.P230736944597345567

/-! ## A095048.P12580259793144894754

`∑{digits}[A256824(n+1), A213217(#)]`
-/

namespace A095048.P12580259793144894754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A213217 x).sum

end

end A095048.P12580259793144894754

/-! ## A095048.P12818854000466217771

`∑{digits}[A256824(n+1), A262190(#)]`
-/

namespace A095048.P12818854000466217771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A262190 x).sum

end

end A095048.P12818854000466217771

/-! ## A095048.P10341099106576471009

`∑{digits}[A256824(n+1), A007318(A007318(#))]`
-/

namespace A095048.P10341099106576471009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum

end

end A095048.P10341099106576471009

/-! ## A095048.P17854647164202223342

`∑{digits}[A256824(n+1), A283991(A151800(#))]`
-/

namespace A095048.P17854647164202223342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A283991 (A151800 x).toNat).sum

end

end A095048.P17854647164202223342

/-!
# A095050: Numbers such that all ten digits are needed to write all positive divisors in decimal representation.

The programs for A095050, there is no canonical definition to state claims against.
-/

/-! ## A095050.P5521586066049542329

`eq[10, A095048(A028310(n))]`
-/

namespace A095050.P5521586066049542329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095050.P5521586066049542329

/-! ## A095050.P14372010877793303887

`A020725(eq[10, A095048(n+1)])`
-/

namespace A095050.P14372010877793303887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095050.P14372010877793303887

/-! ## A095050.P4082448174092077096

`A065475(eq[10, A095048(n+1)])`
-/

namespace A095050.P4082448174092077096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095050.P4082448174092077096

/-! ## A095050.P11214023068584307865

`A153152(eq[10, A095048(n+1)])`
-/

namespace A095050.P11214023068584307865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095050.P11214023068584307865

/-! ## A095050.P13857167840380103103

`eq[10, A095048(A060000(n+1))]`
-/

namespace A095050.P13857167840380103103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095050.P13857167840380103103

/-!
# A095051: E.g.f.: exp(-x)/eta(x), where eta(x) is the Dedekind eta function.

The programs for A095051, there is no canonical definition to state claims against.
-/

/-! ## A095051.P11359864668715849587

`xor(n, A161151(A152596(n)))`
-/

namespace A095051.P11359864668715849587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A161151 (A152596 n).toNat)

end

end A095051.P11359864668715849587

/-! ## A095051.P7685514690331139797

`and(∑[A146045(2*n+5)], A146068(3*n+5))`
-/

namespace A095051.P7685514690331139797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146045 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A146068 (3 * n + 5))

end

end A095051.P7685514690331139797

/-!
# A095052: Number of primes with number of 0-bits equal to one plus number of 1-bits (A095072) in range ]2^2n,2^(2n+1)].

The programs for A095052, there is no canonical definition to state claims against.
-/

/-! ## A095052.P4467195943108382260

`record[A095019(n+1)-A095327(n+1)]`
-/

namespace A095052.P4467195943108382260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095019 (n + 1) - A095327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095052.P4467195943108382260

/-! ## A095052.P8574240494150864541

`record[A095326(n+1)-A095054(n+1)]`
-/

namespace A095052.P8574240494150864541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095326 (n + 1) - A095054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095052.P8574240494150864541

/-! ## A095052.P13590352048178499676

`A095019(2*(n+1))-A095327(2*(n+1))`
-/

namespace A095052.P13590352048178499676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095019 (2 * (n + 1)) - A095327 (2 * (n + 1))

end

end A095052.P13590352048178499676

/-! ## A095052.P4189467694270330242

`A095326(2*(n+1))-A095054(2*(n+1))`
-/

namespace A095052.P4189467694270330242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095326 (2 * (n + 1)) - A095054 (2 * (n + 1))

end

end A095052.P4189467694270330242

/-! ## A095052.P6827343938371173869

`record[A095019(n+1)-(A036378(n+1)-A095326(n+1))]`
-/

namespace A095052.P6827343938371173869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095019 (n + 1) - (A036378 (n + 1) - A095326 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095052.P6827343938371173869

/-!
# A095053: Number of primes with number of 1-bits equal to one plus number 0-bits (A095073) in range ]2^2n,2^(2n+1)].

The programs for A095053, there is no canonical definition to state claims against.
-/

/-! ## A095053.P1451196844869885811

`A095297(2*(n+1))-A095019(2*(n+1))`
-/

namespace A095053.P1451196844869885811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095297 (2 * (n + 1)) - A095019 (2 * (n + 1))

end

end A095053.P1451196844869885811

/-! ## A095053.P15268195756222806339

`A095020(2*(n+1))-A095334(2*(n+1))`
-/

namespace A095053.P15268195756222806339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095020 (2 * (n + 1)) - A095334 (2 * (n + 1))

end

end A095053.P15268195756222806339

/-! ## A095053.P13505592587375984838

`A095054(2*(n+1))-A095296(2*(n+1))`
-/

namespace A095053.P13505592587375984838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095054 (2 * (n + 1)) - A095296 (2 * (n + 1))

end

end A095053.P13505592587375984838

/-! ## A095053.P8325039586127977240

`A095297(2*(n+1))-A095055(2*(n+1))`
-/

namespace A095053.P8325039586127977240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095297 (2 * (n + 1)) - A095055 (2 * (n + 1))

end

end A095053.P8325039586127977240

/-! ## A095053.P2578699944774364681

`A095335(2*(n+1))-A095019(2*(n+1))`
-/

namespace A095053.P2578699944774364681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095335 (2 * (n + 1)) - A095019 (2 * (n + 1))

end

end A095053.P2578699944774364681

/-!
# A095054: Number of primes with number of 0-bits <= number of 1-bits (A095074) in range ]2^n,2^(n+1)].

The programs for A095054, there is no canonical definition to state claims against.
-/

/-! ## A095054.P7595626921294658260

`A036378(n+1)-A095019(n+1)`
-/

namespace A095054.P7595626921294658260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095019 (n + 1)

end

end A095054.P7595626921294658260

/-! ## A095054.P8978892686498701463

`Δ[A007053(n+1)]-A095019(n+1)`
-/

namespace A095054.P8978892686498701463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095019 (n + 1)

end

end A095054.P8978892686498701463

/-! ## A095054.P9408257935453843437

`A162145(A065475(n+1))-A095019(n+1)`
-/

namespace A095054.P9408257935453843437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095019 (n + 1)

end

end A095054.P9408257935453843437

/-! ## A095054.P408117686199776413

`A095005(n+1)+A095006(n+1)-A095019(n+1)`
-/

namespace A095054.P408117686199776413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095005 (n + 1) + (A095006 (n + 1) - A095019 (n + 1))

end

end A095054.P408117686199776413

/-! ## A095054.P16044377384941978392

`A095007(n+1)+A095008(n+1)-A095019(n+1)`
-/

namespace A095054.P16044377384941978392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095007 (n + 1) + (A095008 (n + 1) - A095019 (n + 1))

end

end A095054.P16044377384941978392

/-!
# A095055: Number of primes with number of 1-bits <= number of 0-bits (A095075) in range ]2^n,2^(n+1)].

The programs for A095055, there is no canonical definition to state claims against.
-/

/-! ## A095055.P2984895461613187381

`A036378(n+1)-A095020(n+1)`
-/

namespace A095055.P2984895461613187381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095020 (n + 1)

end

end A095055.P2984895461613187381

/-! ## A095055.P7378666755032644892

`A162145(n+2)%A095020(n+1)`
-/

namespace A095055.P7378666755032644892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162145 (n + 2)) (A095020 (n + 1))

end

end A095055.P7378666755032644892

/-! ## A095055.P13392660477248215316

`Δ[A185192(n+1)]%A095020(n+1)`
-/

namespace A095055.P13392660477248215316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A095020 (n + 1))

end

end A095055.P13392660477248215316

/-! ## A095055.P14538275104025730741

`A162145(A065475(n+1))-A095020(n+1)`
-/

namespace A095055.P14538275104025730741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095020 (n + 1)

end

end A095055.P14538275104025730741

/-! ## A095055.P18286507679410619442

`A095328(n+1)+A095329(n+1)-A095020(n+1)`
-/

namespace A095055.P18286507679410619442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095328 (n + 1) + (A095329 (n + 1) - A095020 (n + 1))

end

end A095055.P18286507679410619442

/-!
# A095056: Number of primes with three 1-bits (A081091) in range [2^n,2^(n+1)].

The programs for A095056, there is no canonical definition to state claims against.
-/

/-! ## A095056.P11876210749880698591

`A333878(n+2)%A306209(A044499(n+1))`
-/

namespace A095056.P11876210749880698591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333878 (n + 2)) (A306209 (A044499 (n + 1)).toNat)

end

end A095056.P11876210749880698591

/-! ## A095056.P5162414467544773367

`A333878(n+2)-A010054(A141227(n+1))`
-/

namespace A095056.P5162414467544773367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333878 (n + 2) - A010054 (A141227 (n + 1)).toNat

end

end A095056.P5162414467544773367

/-! ## A095056.P321826895289823367

`A060576(A244170(n+7))*A333878(n+2)`
-/

namespace A095056.P321826895289823367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A244170 (n + 7)).toNat * A333878 (n + 2)

end

end A095056.P321826895289823367

/-! ## A095056.P3207234799832738575

`A333878(n+2)%A066657(A022375(n))`
-/

namespace A095056.P3207234799832738575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333878 (n + 2)) (A066657 (A022375 n).toNat)

end

end A095056.P3207234799832738575

/-! ## A095056.P15573030756009972362

`A091247(A215690(n))*A333878(n+2)`
-/

namespace A095056.P15573030756009972362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (A215690 n).toNat * A333878 (n + 2)

end

end A095056.P15573030756009972362

/-!
# A095058: Number of primes with a single 0-bit (A095078) in range ]2^n,2^(n+1)].

The programs for A095058, there is no canonical definition to state claims against.
-/

/-! ## A095058.P9978028038265808243

`A272143(n+2)%(n+1)`
-/

namespace A095058.P9978028038265808243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272143 (n + 2)) (n + 1 : ℤ)

end

end A095058.P9978028038265808243

/-! ## A095058.P5588459257234204028

`A272143(ceil(sqrt(n²+n))+1)`
-/

namespace A095058.P5588459257234204028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272143 (⌈Real.sqrt (n ^ 2 + n : ℝ)⌉ + 1).toNat

end

end A095058.P5588459257234204028

/-! ## A095058.P7686540379599577805

`A272143(n+2)-A000007(n)`
-/

namespace A095058.P7686540379599577805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272143 (n + 2) - A000007 n

end

end A095058.P7686540379599577805

/-! ## A095058.P6392755591386878751

`A272143(n+2)-A000038(n)/2`
-/

namespace A095058.P6392755591386878751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272143 (n + 2) : ℚ) - (A000038 n : ℚ) / 2

end

end A095058.P6392755591386878751

/-! ## A095058.P44470099755031779

`A272143(n+2)-A089798(2*n)*A089798(3*n)`
-/

namespace A095058.P44470099755031779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272143 (n + 2) - A089798 (2 * n) * A089798 (3 * n)

end

end A095058.P44470099755031779

/-! ## A095058.P16057917680275640780

`A272143(n+2)-A089803(2*n)*A089803(3*n)`
-/

namespace A095058.P16057917680275640780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272143 (n + 2) - A089803 (2 * n) * A089803 (3 * n)

end

end A095058.P16057917680275640780

/-! ## A095058.P14890471478233670467

`and(1, A092909(2*n+1))*A272143(n+2)`
-/

namespace A095058.P14890471478233670467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A092909 (2 * n + 1)) * A272143 (n + 2)

end

end A095058.P14890471478233670467

/-! ## A095058.P15097772196758236220

`A272143(n+2)-A089798(n²)`
-/

namespace A095058.P15097772196758236220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272143 (n + 2) - A089798 (n ^ 2)

end

end A095058.P15097772196758236220

/-! ## A095058.P18122832997364735119

`A272143(n+2)-A089803(n²)`
-/

namespace A095058.P18122832997364735119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272143 (n + 2) - A089803 (n ^ 2)

end

end A095058.P18122832997364735119

/-!
# A095060: Number of fibeven primes (A095080) in range ]2^n,2^(n+1)].

The programs for A095060, there is no canonical definition to state claims against.
-/

/-! ## A095060.P824210223846175605

`A095062(n+1)+A095067(n+1)`
-/

namespace A095060.P824210223846175605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095062 (n + 1) + A095067 (n + 1)

end

end A095060.P824210223846175605

/-! ## A095060.P15358520006903731484

`A036378(n+1)-A095061(n+1)`
-/

namespace A095060.P15358520006903731484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095061 (n + 1)

end

end A095060.P15358520006903731484

/-! ## A095060.P822130839284169277

`Δ[A007053(n+1)]-A095061(n+1)`
-/

namespace A095060.P822130839284169277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095061 (n + 1)

end

end A095060.P822130839284169277

/-! ## A095060.P8081700661757954689

`Δ[A126279(A000124(n))]-A095061(n+1)`
-/

namespace A095060.P8081700661757954689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095061 (n + 1)

end

end A095060.P8081700661757954689

/-! ## A095060.P8842665723407490612

`A162145(A065475(n+1))-A095061(n+1)`
-/

namespace A095060.P8842665723407490612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095061 (n + 1)

end

end A095060.P8842665723407490612

/-!
# A095061: Number of fibodd primes (A095081) in range [2^n,2^(n+1)].

The programs for A095061, there is no canonical definition to state claims against.
-/

/-! ## A095061.P9669567770520870084

`A095066(n+1)+A095069(n+1)`
-/

namespace A095061.P9669567770520870084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095066 (n + 1) + A095069 (n + 1)

end

end A095061.P9669567770520870084

/-! ## A095061.P77110468762243904

`A036378(n+1)-A095060(n+1)`
-/

namespace A095061.P77110468762243904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095060 (n + 1)

end

end A095061.P77110468762243904

/-! ## A095061.P3164113054834213097

`Δ[A007053(n+1)]-A095060(n+1)`
-/

namespace A095061.P3164113054834213097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095060 (n + 1)

end

end A095061.P3164113054834213097

/-! ## A095061.P654581977432875637

`Δ[A126279(A000124(n))]-A095060(n+1)`
-/

namespace A095061.P654581977432875637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095060 (n + 1)

end

end A095061.P654581977432875637

/-! ## A095061.P12249395231864604027

`A162145(A065475(n+1))-A095060(n+1)`
-/

namespace A095061.P12249395231864604027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095060 (n + 1)

end

end A095061.P12249395231864604027

/-!
# A095062: Number of fib00 primes (A095082) in range [2^n,2^(n+1)].

The programs for A095062, there is no canonical definition to state claims against.
-/

/-! ## A095062.P618533829531185801

`A095065(n+1)+A095068(n+1)`
-/

namespace A095062.P618533829531185801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095065 (n + 1) + A095068 (n + 1)

end

end A095062.P618533829531185801

/-! ## A095062.P10920928792691512089

`A095060(n+1)-A095067(n+1)`
-/

namespace A095062.P10920928792691512089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095060 (n + 1) - A095067 (n + 1)

end

end A095062.P10920928792691512089

/-! ## A095062.P17991282241284533502

`A036378(n+1)-(A095067(n+1)+A095061(n+1))`
-/

namespace A095062.P17991282241284533502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - (A095067 (n + 1) + A095061 (n + 1))

end

end A095062.P17991282241284533502

/-! ## A095062.P13642350448644733914

`Δ[A007053(n+1)]-A095061(n+1)-A095067(n+1)`
-/

namespace A095062.P13642350448644733914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095061 (n + 1) - A095067 (n + 1)

end

end A095062.P13642350448644733914

/-! ## A095062.P15757692788337012

`A162145(A065475(n+1))-A095061(n+1)-A095067(n+1)`
-/

namespace A095062.P15757692788337012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095061 (n + 1) - A095067 (n + 1)

end

end A095062.P15757692788337012

/-!
# A095063: Number of fibodious primes (A095083) in range [2^n,2^(n+1)].

The programs for A095063, there is no canonical definition to state claims against.
-/

/-! ## A095063.P2735097837970516600

`A036378(n+1)-A095064(n+1)`
-/

namespace A095063.P2735097837970516600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095064 (n + 1)

end

end A095063.P2735097837970516600

/-! ## A095063.P2691039817989004691

`Δ[A007053(n+1)]-A095064(n+1)`
-/

namespace A095063.P2691039817989004691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095064 (n + 1)

end

end A095063.P2691039817989004691

/-! ## A095063.P12402847205331793612

`A095007(n+1)+A095008(n+1)-A095064(n+1)`
-/

namespace A095063.P12402847205331793612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095007 (n + 1) + (A095008 (n + 1) - A095064 (n + 1))

end

end A095063.P12402847205331793612

/-! ## A095063.P13286631427223658229

`A095013(n+1)+A095014(n+1)-A095064(n+1)`
-/

namespace A095063.P13286631427223658229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095013 (n + 1) + (A095014 (n + 1) - A095064 (n + 1))

end

end A095063.P13286631427223658229

/-! ## A095063.P14200843179498927522

`A095019(n+1)+A095054(n+1)-A095064(n+1)`
-/

namespace A095063.P14200843179498927522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095019 (n + 1) + (A095054 (n + 1) - A095064 (n + 1))

end

end A095063.P14200843179498927522

/-!
# A095064: Number of fibevil primes (A095084) in range ]2^n,2^(n+1)].

The programs for A095064, there is no canonical definition to state claims against.
-/

/-! ## A095064.P287946105840070675

`A036378(n+1)-A095063(n+1)`
-/

namespace A095064.P287946105840070675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095063 (n + 1)

end

end A095064.P287946105840070675

/-! ## A095064.P2562034400325228619

`Δ[A007053(n+1)]-A095063(n+1)`
-/

namespace A095064.P2562034400325228619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095063 (n + 1)

end

end A095064.P2562034400325228619

/-! ## A095064.P9393768479810559991

`A095005(n+1)+A095006(n+1)-A095063(n+1)`
-/

namespace A095064.P9393768479810559991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095005 (n + 1) + (A095006 (n + 1) - A095063 (n + 1))

end

end A095064.P9393768479810559991

/-! ## A095064.P13402357440460130826

`A095007(n+1)+A095008(n+1)-A095063(n+1)`
-/

namespace A095064.P13402357440460130826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095007 (n + 1) + (A095008 (n + 1) - A095063 (n + 1))

end

end A095064.P13402357440460130826

/-! ## A095064.P8365252389567977437

`A095013(n+1)+A095014(n+1)-A095063(n+1)`
-/

namespace A095064.P8365252389567977437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095013 (n + 1) + (A095014 (n + 1) - A095063 (n + 1))

end

end A095064.P8365252389567977437

/-!
# A095065: Number of fib000 primes (A095085) in range ]2^n,2^(n+1)].

The programs for A095065, there is no canonical definition to state claims against.
-/

/-! ## A095065.P7334926354878640031

`A095062(n+1)-A095068(n+1)`
-/

namespace A095065.P7334926354878640031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095062 (n + 1) - A095068 (n + 1)

end

end A095065.P7334926354878640031

/-! ## A095065.P12885736385656298370

`A095060(n+1)-(A095068(n+1)+A095067(n+1))`
-/

namespace A095065.P12885736385656298370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095060 (n + 1) - (A095068 (n + 1) + A095067 (n + 1))

end

end A095065.P12885736385656298370

/-! ## A095065.P16262702636312837382

`A036378(n+1)-(A095067(n+1)+A095061(n+1))-A095068(n+1)`
-/

namespace A095065.P16262702636312837382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - (A095067 (n + 1) + A095061 (n + 1)) - A095068 (n + 1)

end

end A095065.P16262702636312837382

/-! ## A095065.P16819802437780600019

`Δ[A007053(n+1)]-A095061(n+1)-A095067(n+1)-A095068(n+1)`
-/

namespace A095065.P16819802437780600019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095061 (n + 1) - A095067 (n + 1) - A095068 (n + 1)

end

end A095065.P16819802437780600019

/-! ## A095065.P2824976557690160313

`A095060(n+1)-A095067(n+1)-A095068(A031285(n))`
-/

namespace A095065.P2824976557690160313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095060 (n + 1) - A095067 (n + 1) - A095068 (A031285 n).toNat

end

end A095065.P2824976557690160313

/-!
# A095066: Number of fib001 primes (A095086) in range ]2^n,2^(n+1)].

The programs for A095066, there is no canonical definition to state claims against.
-/

/-! ## A095066.P17200614077310495788

`A095061(n+1)-A095069(n+1)`
-/

namespace A095066.P17200614077310495788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095061 (n + 1) - A095069 (n + 1)

end

end A095066.P17200614077310495788

/-! ## A095066.P14765554620388996309

`A036378(n+1)-(A095069(n+1)+A095060(n+1))`
-/

namespace A095066.P14765554620388996309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - (A095069 (n + 1) + A095060 (n + 1))

end

end A095066.P14765554620388996309

/-! ## A095066.P1186547231571159413

`Δ[A007053(n+1)]-A095060(n+1)-A095069(n+1)`
-/

namespace A095066.P1186547231571159413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095060 (n + 1) - A095069 (n + 1)

end

end A095066.P1186547231571159413

/-! ## A095066.P6236622085224383966

`Δ[A126279(A000124(n))]-A095060(n+1)-A095069(n+1)`
-/

namespace A095066.P6236622085224383966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095060 (n + 1) - A095069 (n + 1)

end

end A095066.P6236622085224383966

/-! ## A095066.P16480930748294344705

`A162145(A065475(n+1))-(A095069(n+1)+A095060(n+1))`
-/

namespace A095066.P16480930748294344705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - (A095069 (n + 1) + A095060 (n + 1))

end

end A095066.P16480930748294344705

/-!
# A095067: Number of fib010 primes (A095087) in range [2^n,2^(n+1)].

The programs for A095067, there is no canonical definition to state claims against.
-/

/-! ## A095067.P13755368671471712999

`A095060(n+1)-A095062(n+1)`
-/

namespace A095067.P13755368671471712999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095060 (n + 1) - A095062 (n + 1)

end

end A095067.P13755368671471712999

/-! ## A095067.P2996584784966191612

`A036378(n+1)-(A095062(n+1)+A095061(n+1))`
-/

namespace A095067.P2996584784966191612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - (A095062 (n + 1) + A095061 (n + 1))

end

end A095067.P2996584784966191612

/-! ## A095067.P9901199314401764340

`A095060(n+1)-(A095068(n+1)+A095065(n+1))`
-/

namespace A095067.P9901199314401764340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095060 (n + 1) - (A095068 (n + 1) + A095065 (n + 1))

end

end A095067.P9901199314401764340

/-! ## A095067.P521367284105670043

`Δ[A007053(n+1)]-A095061(n+1)-A095062(n+1)`
-/

namespace A095067.P521367284105670043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095061 (n + 1) - A095062 (n + 1)

end

end A095067.P521367284105670043

/-! ## A095067.P308934100260320529

`A162145(A065475(n+1))-(A095062(n+1)+A095061(n+1))`
-/

namespace A095067.P308934100260320529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - (A095062 (n + 1) + A095061 (n + 1))

end

end A095067.P308934100260320529

/-!
# A095068: Number of fib100 primes (A095088) in range ]2^n,2^(n+1)].

The programs for A095068, there is no canonical definition to state claims against.
-/

/-! ## A095068.P6731746930321438727

`A095062(n+1)-A095065(n+1)`
-/

namespace A095068.P6731746930321438727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095062 (n + 1) - A095065 (n + 1)

end

end A095068.P6731746930321438727

/-! ## A095068.P16179883216825110992

`A095060(n+1)-(A095067(n+1)+A095065(n+1))`
-/

namespace A095068.P16179883216825110992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095060 (n + 1) - (A095067 (n + 1) + A095065 (n + 1))

end

end A095068.P16179883216825110992

/-! ## A095068.P10997512098068884036

`A036378(n+1)-(A095067(n+1)+A095061(n+1))-A095065(n+1)`
-/

namespace A095068.P10997512098068884036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - (A095067 (n + 1) + A095061 (n + 1)) - A095065 (n + 1)

end

end A095068.P10997512098068884036

/-! ## A095068.P16299756132808070883

`Δ[A007053(n+1)]-A095061(n+1)-A095067(n+1)-A095065(n+1)`
-/

namespace A095068.P16299756132808070883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095061 (n + 1) - A095067 (n + 1) - A095065 (n + 1)

end

end A095068.P16299756132808070883

/-! ## A095068.P12670955959635957333

`A257998(A321413(n)+A245547(n+1))`
-/

namespace A095068.P12670955959635957333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257998 (A321413 n + A245547 (n + 1)).toNat

end

end A095068.P12670955959635957333

/-!
# A095069: Number of fib101 primes (A095089) in range ]2^n,2^(n+1)].

The programs for A095069, there is no canonical definition to state claims against.
-/

/-! ## A095069.P13525689427813244286

`A095061(n+1)-A095066(n+1)`
-/

namespace A095069.P13525689427813244286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095061 (n + 1) - A095066 (n + 1)

end

end A095069.P13525689427813244286

/-! ## A095069.P559928375293446496

`A036378(n+1)-(A095066(n+1)+A095060(n+1))`
-/

namespace A095069.P559928375293446496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - (A095066 (n + 1) + A095060 (n + 1))

end

end A095069.P559928375293446496

/-! ## A095069.P9358378110901159974

`Δ[A007053(n+1)]-A095060(n+1)-A095066(n+1)`
-/

namespace A095069.P9358378110901159974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095060 (n + 1) - A095066 (n + 1)

end

end A095069.P9358378110901159974

/-! ## A095069.P5466896482789061430

`A162145(A065475(n+1))-(A095066(n+1)+A095060(n+1))`
-/

namespace A095069.P5466896482789061430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - (A095066 (n + 1) + A095060 (n + 1))

end

end A095069.P5466896482789061430

/-!
# A095070: One-bit dominant primes, i.e., primes whose binary expansion contains more 1's than 0's.

The programs for A095070, there is no canonical definition to state claims against.
-/

/-! ## A095070.P10924944047353383816

`∪[A095073(n+1), A095286(n+1)]`
-/

namespace A095070.P10924944047353383816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095070.P10924944047353383816

/-! ## A095070.P11325892849562716795

`∪[A340466(n+1), A350577(n+1)]`
-/

namespace A095070.P11325892849562716795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095070.P11325892849562716795

/-! ## A095070.P14920711870257834239

`p?[2*A072601(n+1)+1]`
-/

namespace A095070.P14920711870257834239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072601 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095070.P14920711870257834239

/-! ## A095070.P6183220873224634620

`p?[A072600(n+1)]`
-/

namespace A095070.P6183220873224634620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095070.P6183220873224634620

/-! ## A095070.P17008015496294004198

`record[A006530(A072600(n+2))]`
-/

namespace A095070.P17008015496294004198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072600 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095070.P17008015496294004198

/-! ## A095070.P7129752984587732112

`filter[A072600(n+1), A010051(#)]`
-/

namespace A095070.P7129752984587732112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095070.P7129752984587732112

/-! ## A095070.P2630334676144486296

`∩[A000040(n+1), A072600(n+1)]`
-/

namespace A095070.P2630334676144486296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095070.P2630334676144486296

/-! ## A095070.P15932512810337466368

`∩[A065091(n+1), A072600(n+1)]`
-/

namespace A095070.P15932512810337466368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095070.P15932512810337466368

/-! ## A095070.P13021345478274401286

`∩[A066542(n+1), A072600(n+1)]`
-/

namespace A095070.P13021345478274401286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095070.P13021345478274401286

/-! ## A095070.P1095490558108591328

`∩[A072600(n+1), A095074(n+1)]`
-/

namespace A095070.P1095490558108591328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095070.P1095490558108591328

/-! ## A095070.P11848906549221469789

`∩[A072600(n+1), A095316(n+1)]`
-/

namespace A095070.P11848906549221469789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095070.P11848906549221469789

/-! ## A095070.P6148278091083090544

`∩[A072600(n+1), A095320(n+1)]`
-/

namespace A095070.P6148278091083090544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095070.P6148278091083090544

/-! ## A095070.P12091156732776018885

`∩[A072600(n+1), A140826(n+1)]`
-/

namespace A095070.P12091156732776018885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095070.P12091156732776018885

/-! ## A095070.P16129358283107806133

`∩[A072600(n+1), A175787(n+1)]`
-/

namespace A095070.P16129358283107806133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095070.P16129358283107806133

/-! ## A095070.P16761851380491350065

`∩[A072600(n+1), A182986(n+1)]`
-/

namespace A095070.P16761851380491350065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095070.P16761851380491350065

/-! ## A095070.P6705702469305993636

`∩[A072600(n+1), A351398(n+1)]`
-/

namespace A095070.P6705702469305993636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095070.P6705702469305993636

/-! ## A095070.P8512371356102110250

`p?[lt[0, A145037(n)]]`
-/

namespace A095070.P8512371356102110250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095070.P8512371356102110250

/-! ## A095070.P12221257795082857112

`∩[A044951(n+1), A095074(n+1)]`
-/

namespace A095070.P12221257795082857112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095070.P12221257795082857112

/-! ## A095070.P14714523250966283530

`p?[lt[A037861(n), 0]]`
-/

namespace A095070.P14714523250966283530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095070.P14714523250966283530

/-! ## A095070.P2045220387661100067

`p?[lt[2*n, A102376(n)]]`
-/

namespace A095070.P2045220387661100067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095070.P2045220387661100067

/-!
# A095071: Zero-bit dominant primes, i.e., primes whose binary expansion contains more 0's than 1's.

The programs for A095071, the canonical program `A095071.P691342850235203050` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095071 has offset 1).

The definition of A095071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095071.P691342850235203050

`∪[A095072(n+1), A095317(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A095071

/-- `∪[A095072(n+1), A095317(n+1)]` -/
def P691342850235203050.Spec : Prop :=
  ∀ n, (P691342850235203050.a n : ℤ) = A095071 (n + 1)

theorem P691342850235203050.correct : P691342850235203050.Spec := by
  intro n
  simp only [A095071, Nat.add_sub_cancel]

end A095071

/-! ## A095071.P8233849870303473356

`p?[A072603(n+1)]`
-/

namespace A095071.P8233849870303473356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095071.P8233849870303473356

namespace A095071

/-- `p?[A072603(n+1)]` -/
def P8233849870303473356.Spec : Prop :=
  ∀ n, P8233849870303473356.a n = A095071 (n + 1)

end A095071

/-! ## A095071.P16474368301024332772

`p?[lt[A001316(n)², n]]`
-/

namespace A095071.P16474368301024332772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095071.P16474368301024332772

namespace A095071

/-- `p?[lt[A001316(n)², n]]` -/
def P16474368301024332772.Spec : Prop :=
  ∀ n, (P16474368301024332772.a n : ℤ) = A095071 (n + 1)

end A095071

/-! ## A095071.P13313375127603891311

`record[p?[A072603(A291766(n))]]`
-/

namespace A095071.P13313375127603891311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095071.P13313375127603891311

namespace A095071

/-- `record[p?[A072603(A291766(n))]]` -/
def P13313375127603891311.Spec : Prop :=
  ∀ n, P13313375127603891311.a n = A095071 (n + 1)

end A095071

/-! ## A095071.P7490724186702149120

`record[A006530(A072603(n+4))]`
-/

namespace A095071.P7490724186702149120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072603 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095071.P7490724186702149120

namespace A095071

/-- `record[A006530(A072603(n+4))]` -/
def P7490724186702149120.Spec : Prop :=
  ∀ n, P7490724186702149120.a n = A095071 (n + 1)

end A095071

/-! ## A095071.P13452274502135608963

`filter[A072603(n+1), A010051(#)]`
-/

namespace A095071.P13452274502135608963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095071.P13452274502135608963

namespace A095071

/-- `filter[A072603(n+1), A010051(#)]` -/
def P13452274502135608963.Spec : Prop :=
  ∀ n, P13452274502135608963.a n = A095071 (n + 1)

end A095071

/-! ## A095071.P17726233988206365504

`∩[A000040(n+1), A072603(n+1)]`
-/

namespace A095071.P17726233988206365504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095071.P17726233988206365504

namespace A095071

/-- `∩[A000040(n+1), A072603(n+1)]` -/
def P17726233988206365504.Spec : Prop :=
  ∀ n, (P17726233988206365504.a n : ℤ) = A095071 (n + 1)

end A095071

/-! ## A095071.P6325506213590280460

`∩[A004139(n+1), A072603(n+1)]`
-/

namespace A095071.P6325506213590280460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095071.P6325506213590280460

namespace A095071

/-- `∩[A004139(n+1), A072603(n+1)]` -/
def P6325506213590280460.Spec : Prop :=
  ∀ n, (P6325506213590280460.a n : ℤ) = A095071 (n + 1)

end A095071

/-! ## A095071.P835708093755757933

`∩[A006005(n+1), A072603(n+1)]`
-/

namespace A095071.P835708093755757933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095071.P835708093755757933

namespace A095071

/-- `∩[A006005(n+1), A072603(n+1)]` -/
def P835708093755757933.Spec : Prop :=
  ∀ n, (P835708093755757933.a n : ℤ) = A095071 (n + 1)

end A095071

/-! ## A095071.P15123508150267579118

`∩[A008578(n+1), A072603(n+1)]`
-/

namespace A095071.P15123508150267579118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095071.P15123508150267579118

namespace A095071

/-- `∩[A008578(n+1), A072603(n+1)]` -/
def P15123508150267579118.Spec : Prop :=
  ∀ n, (P15123508150267579118.a n : ℤ) = A095071 (n + 1)

end A095071

/-! ## A095071.P3452221264197804686

`∩[A033946(n+1), A072603(n+1)]`
-/

namespace A095071.P3452221264197804686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095071.P3452221264197804686

namespace A095071

/-- `∩[A033946(n+1), A072603(n+1)]` -/
def P3452221264197804686.Spec : Prop :=
  ∀ n, (P3452221264197804686.a n : ℤ) = A095071 (n + 1)

end A095071

/-! ## A095071.P16441978310409939946

`∩[A045319(n+1), A072603(n+1)]`
-/

namespace A095071.P16441978310409939946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095071.P16441978310409939946

namespace A095071

/-- `∩[A045319(n+1), A072603(n+1)]` -/
def P16441978310409939946.Spec : Prop :=
  ∀ n, (P16441978310409939946.a n : ℤ) = A095071 (n + 1)

end A095071

/-! ## A095071.P5013796404077093084

`∩[A045344(n+1), A072603(n+1)]`
-/

namespace A095071.P5013796404077093084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095071.P5013796404077093084

namespace A095071

/-- `∩[A045344(n+1), A072603(n+1)]` -/
def P5013796404077093084.Spec : Prop :=
  ∀ n, (P5013796404077093084.a n : ℤ) = A095071 (n + 1)

end A095071

/-! ## A095071.P3151997333815444032

`∩[A053813(n+1), A072603(n+1)]`
-/

namespace A095071.P3151997333815444032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095071.P3151997333815444032

namespace A095071

/-- `∩[A053813(n+1), A072603(n+1)]` -/
def P3151997333815444032.Spec : Prop :=
  ∀ n, (P3151997333815444032.a n : ℤ) = A095071 (n + 1)

end A095071

/-! ## A095071.P8008624506768388914

`∩[A064728(n+1), A072603(n+1)]`
-/

namespace A095071.P8008624506768388914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095071.P8008624506768388914

namespace A095071

/-- `∩[A064728(n+1), A072603(n+1)]` -/
def P8008624506768388914.Spec : Prop :=
  ∀ n, (P8008624506768388914.a n : ℤ) = A095071 (n + 1)

end A095071

/-! ## A095071.P17633519638531199787

`∩[A065091(n+1), A072603(n+1)]`
-/

namespace A095071.P17633519638531199787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095071.P17633519638531199787

namespace A095071

/-- `∩[A065091(n+1), A072603(n+1)]` -/
def P17633519638531199787.Spec : Prop :=
  ∀ n, (P17633519638531199787.a n : ℤ) = A095071 (n + 1)

end A095071

/-! ## A095071.P15192793231165343626

`∩[A065396(n+1), A072603(n+1)]`
-/

namespace A095071.P15192793231165343626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095071.P15192793231165343626

namespace A095071

/-- `∩[A065396(n+1), A072603(n+1)]` -/
def P15192793231165343626.Spec : Prop :=
  ∀ n, (P15192793231165343626.a n : ℤ) = A095071 (n + 1)

end A095071

/-! ## A095071.P8121226302315292805

`∩[A072603(n+1), A078138(n+1)]`
-/

namespace A095071.P8121226302315292805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095071.P8121226302315292805

namespace A095071

/-- `∩[A072603(n+1), A078138(n+1)]` -/
def P8121226302315292805.Spec : Prop :=
  ∀ n, (P8121226302315292805.a n : ℤ) = A095071 (n + 1)

end A095071

/-! ## A095071.P16934950686452714949

`∩[A072603(n+1), A095075(n+1)]`
-/

namespace A095071.P16934950686452714949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095071.P16934950686452714949

namespace A095071

/-- `∩[A072603(n+1), A095075(n+1)]` -/
def P16934950686452714949.Spec : Prop :=
  ∀ n, (P16934950686452714949.a n : ℤ) = A095071 (n + 1)

end A095071

/-! ## A095071.P7731294022816369971

`∩[A072603(n+1), A095287(n+1)]`
-/

namespace A095071.P7731294022816369971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095071.P7731294022816369971

namespace A095071

/-- `∩[A072603(n+1), A095287(n+1)]` -/
def P7731294022816369971.Spec : Prop :=
  ∀ n, (P7731294022816369971.a n : ℤ) = A095071 (n + 1)

end A095071

/-!
# A095072: Primes in whose binary expansion the number of 0-bits is one more than the number of 1-bits.

The programs for A095072, the canonical program `A095072.P9947537710572752630` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095072 has offset 1).

The definition of A095072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095072.P3249909482414362833

`∩[A095071(n+1), A095316(n+1)]`
-/

namespace A095072.P3249909482414362833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095072.P3249909482414362833

namespace A095072

/-- `∩[A095071(n+1), A095316(n+1)]` -/
def P3249909482414362833.Spec : Prop :=
  ∀ n, (P3249909482414362833.a n : ℤ) = A095072 (n + 1)

end A095072

/-! ## A095072.P9363716097223329067

`p?[A031446(n+1)+1]`
-/

namespace A095072.P9363716097223329067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031446 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095072.P9363716097223329067

namespace A095072

/-- `p?[A031446(n+1)+1]` -/
def P9363716097223329067.Spec : Prop :=
  ∀ n, P9363716097223329067.a n = A095072 (n + 1)

end A095072

/-! ## A095072.P12870765651342501665

`A000040(A372539(n+1))`
-/

namespace A095072.P12870765651342501665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A372539 (n + 1)).toNat

end

end A095072.P12870765651342501665

namespace A095072

/-- `A000040(A372539(n+1))` -/
def P12870765651342501665.Spec : Prop :=
  ∀ n, P12870765651342501665.a n = A095072 (n + 1)

end A095072

/-! ## A095072.P9947537710572752630

`A000040(eq[A014499(n+1)+1, A035103(n+1)]+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A095072

/-- `A000040(eq[A014499(n+1)+1, A035103(n+1)]+1)` -/
def P9947537710572752630.Spec : Prop :=
  ∀ n, P9947537710572752630.a n = A095072 (n + 1)

theorem P9947537710572752630.correct : P9947537710572752630.Spec := by
  intro n
  simp only [A095072, Nat.add_sub_cancel]

end A095072

/-! ## A095072.P18120118798397790743

`p?[A031444(n+1)]`
-/

namespace A095072.P18120118798397790743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095072.P18120118798397790743

namespace A095072

/-- `p?[A031444(n+1)]` -/
def P18120118798397790743.Spec : Prop :=
  ∀ n, P18120118798397790743.a n = A095072 (n + 1)

end A095072

/-! ## A095072.P17789849128156868673

`record[A006530(A031444(n+2))]`
-/

namespace A095072.P17789849128156868673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A031444 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095072.P17789849128156868673

namespace A095072

/-- `record[A006530(A031444(n+2))]` -/
def P17789849128156868673.Spec : Prop :=
  ∀ n, P17789849128156868673.a n = A095072 (n + 1)

end A095072

/-! ## A095072.P16902915113637518063

`filter[A031444(n+1), A010051(#)]`
-/

namespace A095072.P16902915113637518063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095072.P16902915113637518063

namespace A095072

/-- `filter[A031444(n+1), A010051(#)]` -/
def P16902915113637518063.Spec : Prop :=
  ∀ n, P16902915113637518063.a n = A095072 (n + 1)

end A095072

/-! ## A095072.P8615903033412480507

`∩[A000040(n+1), A031444(n+1)]`
-/

namespace A095072.P8615903033412480507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095072.P8615903033412480507

namespace A095072

/-- `∩[A000040(n+1), A031444(n+1)]` -/
def P8615903033412480507.Spec : Prop :=
  ∀ n, (P8615903033412480507.a n : ℤ) = A095072 (n + 1)

end A095072

/-! ## A095072.P13802706048444640113

`∩[A004139(n+1), A031444(n+1)]`
-/

namespace A095072.P13802706048444640113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095072.P13802706048444640113

namespace A095072

/-- `∩[A004139(n+1), A031444(n+1)]` -/
def P13802706048444640113.Spec : Prop :=
  ∀ n, (P13802706048444640113.a n : ℤ) = A095072 (n + 1)

end A095072

/-! ## A095072.P17025144729849365065

`∩[A006005(n+1), A031444(n+1)]`
-/

namespace A095072.P17025144729849365065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095072.P17025144729849365065

namespace A095072

/-- `∩[A006005(n+1), A031444(n+1)]` -/
def P17025144729849365065.Spec : Prop :=
  ∀ n, (P17025144729849365065.a n : ℤ) = A095072 (n + 1)

end A095072

/-! ## A095072.P4929461789933982297

`∩[A008578(n+1), A031444(n+1)]`
-/

namespace A095072.P4929461789933982297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095072.P4929461789933982297

namespace A095072

/-- `∩[A008578(n+1), A031444(n+1)]` -/
def P4929461789933982297.Spec : Prop :=
  ∀ n, (P4929461789933982297.a n : ℤ) = A095072 (n + 1)

end A095072

/-! ## A095072.P16873578907155264915

`∩[A031444(n+1), A033946(n+1)]`
-/

namespace A095072.P16873578907155264915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095072.P16873578907155264915

namespace A095072

/-- `∩[A031444(n+1), A033946(n+1)]` -/
def P16873578907155264915.Spec : Prop :=
  ∀ n, (P16873578907155264915.a n : ℤ) = A095072 (n + 1)

end A095072

/-! ## A095072.P13745565628852501652

`∩[A031444(n+1), A045319(n+1)]`
-/

namespace A095072.P13745565628852501652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095072.P13745565628852501652

namespace A095072

/-- `∩[A031444(n+1), A045319(n+1)]` -/
def P13745565628852501652.Spec : Prop :=
  ∀ n, (P13745565628852501652.a n : ℤ) = A095072 (n + 1)

end A095072

/-! ## A095072.P14963767637654340816

`∩[A031444(n+1), A045344(n+1)]`
-/

namespace A095072.P14963767637654340816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095072.P14963767637654340816

namespace A095072

/-- `∩[A031444(n+1), A045344(n+1)]` -/
def P14963767637654340816.Spec : Prop :=
  ∀ n, (P14963767637654340816.a n : ℤ) = A095072 (n + 1)

end A095072

/-! ## A095072.P13884134290569212985

`∩[A031444(n+1), A053813(n+1)]`
-/

namespace A095072.P13884134290569212985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095072.P13884134290569212985

namespace A095072

/-- `∩[A031444(n+1), A053813(n+1)]` -/
def P13884134290569212985.Spec : Prop :=
  ∀ n, (P13884134290569212985.a n : ℤ) = A095072 (n + 1)

end A095072

/-! ## A095072.P11388956416157876254

`∩[A031444(n+1), A060634(n+1)]`
-/

namespace A095072.P11388956416157876254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095072.P11388956416157876254

namespace A095072

/-- `∩[A031444(n+1), A060634(n+1)]` -/
def P11388956416157876254.Spec : Prop :=
  ∀ n, (P11388956416157876254.a n : ℤ) = A095072 (n + 1)

end A095072

/-! ## A095072.P2477556489577403446

`∩[A031444(n+1), A064728(n+1)]`
-/

namespace A095072.P2477556489577403446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095072.P2477556489577403446

namespace A095072

/-- `∩[A031444(n+1), A064728(n+1)]` -/
def P2477556489577403446.Spec : Prop :=
  ∀ n, (P2477556489577403446.a n : ℤ) = A095072 (n + 1)

end A095072

/-! ## A095072.P17312457163956852496

`∩[A031444(n+1), A065091(n+1)]`
-/

namespace A095072.P17312457163956852496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095072.P17312457163956852496

namespace A095072

/-- `∩[A031444(n+1), A065091(n+1)]` -/
def P17312457163956852496.Spec : Prop :=
  ∀ n, (P17312457163956852496.a n : ℤ) = A095072 (n + 1)

end A095072

/-! ## A095072.P9231137858487207825

`∩[A031444(n+1), A065396(n+1)]`
-/

namespace A095072.P9231137858487207825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095072.P9231137858487207825

namespace A095072

/-- `∩[A031444(n+1), A065396(n+1)]` -/
def P9231137858487207825.Spec : Prop :=
  ∀ n, (P9231137858487207825.a n : ℤ) = A095072 (n + 1)

end A095072

/-! ## A095072.P1852673270482287706

`∩[A031444(n+1), A078138(n+1)]`
-/

namespace A095072.P1852673270482287706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095072.P1852673270482287706

namespace A095072

/-- `∩[A031444(n+1), A078138(n+1)]` -/
def P1852673270482287706.Spec : Prop :=
  ∀ n, (P1852673270482287706.a n : ℤ) = A095072 (n + 1)

end A095072

/-!
# A095073: Primes in whose binary expansion the number of 1-bits is one more than the number of 0-bits.

The programs for A095073, there is no canonical definition to state claims against.
-/

/-! ## A095073.P13961324585432008281

`∩[A095070(n+1), A095287(n+1)]`
-/

namespace A095073.P13961324585432008281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095073.P13961324585432008281

/-! ## A095073.P2668181164083425195

`p?[2*A031443(n+1)+1]`
-/

namespace A095073.P2668181164083425195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A031443 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095073.P2668181164083425195

/-! ## A095073.P8289456789308546832

`∩[A095287(n+1), A340466(n+1)]`
-/

namespace A095073.P8289456789308546832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095073.P8289456789308546832

/-! ## A095073.P14110962203958176858

`A000040(A372538(n+1))`
-/

namespace A095073.P14110962203958176858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A372538 (n + 1)).toNat

end

end A095073.P14110962203958176858

/-! ## A095073.P200660464279673473

`p?[A000265(A031443(n+1)+A031443(n+1)+1)]`
-/

namespace A095073.P200660464279673473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A031443 (n + 1) + A031443 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095073.P200660464279673473

/-! ## A095073.P5894281905890175357

`p?[A031444(n+1)+1]`
-/

namespace A095073.P5894281905890175357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095073.P5894281905890175357

/-! ## A095073.P17736664595441673779

`∩[A000040(n+1), A031444(n+1)+1]`
-/

namespace A095073.P17736664595441673779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095073.P17736664595441673779

/-! ## A095073.P16897773035565419167

`∩[A006005(n+1), A031444(n+1)+1]`
-/

namespace A095073.P16897773035565419167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095073.P16897773035565419167

/-! ## A095073.P15593860349111671016

`∩[A008578(n+1), A031444(n+1)+1]`
-/

namespace A095073.P15593860349111671016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095073.P15593860349111671016

/-! ## A095073.P2773700085557417231

`∩[A031444(n+1)+1, A033946(n+1)]`
-/

namespace A095073.P2773700085557417231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095073.P2773700085557417231

/-! ## A095073.P12939344245326279748

`∩[A031444(n+1)+1, A045344(n+1)]`
-/

namespace A095073.P12939344245326279748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095073.P12939344245326279748

/-! ## A095073.P8556792630892643887

`∩[A031444(n+1)+1, A053813(n+1)]`
-/

namespace A095073.P8556792630892643887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095073.P8556792630892643887

/-! ## A095073.P917878006868462793

`∩[A031444(n+1)+1, A064728(n+1)]`
-/

namespace A095073.P917878006868462793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095073.P917878006868462793

/-! ## A095073.P8197731284678436881

`∩[A031444(n+1)+1, A065091(n+1)]`
-/

namespace A095073.P8197731284678436881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095073.P8197731284678436881

/-! ## A095073.P15278231010588117248

`∩[A031444(n+1)+1, A065396(n+1)]`
-/

namespace A095073.P15278231010588117248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095073.P15278231010588117248

/-! ## A095073.P2012287478730252510

`∩[A031444(n+1)+1, A083249(n+1)]`
-/

namespace A095073.P2012287478730252510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095073.P2012287478730252510

/-! ## A095073.P16334297942796530484

`∩[A031444(n+1)+1, A095285(n+1)]`
-/

namespace A095073.P16334297942796530484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095073.P16334297942796530484

/-! ## A095073.P4645684892744801498

`∩[A031444(n+1)+1, A095287(n+1)]`
-/

namespace A095073.P4645684892744801498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095073.P4645684892744801498

/-! ## A095073.P1595861824658607085

`∩[A031444(n+1)+1, A095315(n+1)]`
-/

namespace A095073.P1595861824658607085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031444 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095073.P1595861824658607085

/-!
# A095074: Primes in whose binary expansion the number of 0-bits is less than or equal to number of 1-bits.

The programs for A095074, there is no canonical definition to state claims against.
-/

/-! ## A095074.P10307547670866438308

`∪[A066196(n+1), A095070(n+1)]`
-/

namespace A095074.P10307547670866438308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095074.P10307547670866438308

/-! ## A095074.P17678686361661920673

`p?[A072601(n+1)]`
-/

namespace A095074.P17678686361661920673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095074.P17678686361661920673

/-! ## A095074.P5650433690168853774

`p?[lt[n, A001316(n)²]]`
-/

namespace A095074.P5650433690168853774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095074.P5650433690168853774

/-! ## A095074.P6866612144580872639

`p?[lt[0, A145037(n)+1]]`
-/

namespace A095074.P6866612144580872639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095074.P6866612144580872639

/-! ## A095074.P2315331484449848361

`record[A006530(A072601(n+2))]`
-/

namespace A095074.P2315331484449848361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072601 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095074.P2315331484449848361

/-! ## A095074.P15247909608932630666

`filter[A072601(n+1), A010051(#)]`
-/

namespace A095074.P15247909608932630666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095074.P15247909608932630666

/-! ## A095074.P7463661843369957291

`∩[A000040(n+1), A072601(n+1)]`
-/

namespace A095074.P7463661843369957291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095074.P7463661843369957291

/-! ## A095074.P16618471622462660289

`∩[A072601(n+1), A095316(n+1)]`
-/

namespace A095074.P16618471622462660289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095074.P16618471622462660289

/-! ## A095074.P527759021607999020

`∩[A072601(n+1), A095320(n+1)]`
-/

namespace A095074.P527759021607999020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095074.P527759021607999020

/-! ## A095074.P6796200843116619463

`∩[A072601(n+1), A175787(n+1)]`
-/

namespace A095074.P6796200843116619463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095074.P6796200843116619463

/-! ## A095074.P16967337081320475500

`∩[A072601(n+1), A182986(n+1)]`
-/

namespace A095074.P16967337081320475500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095074.P16967337081320475500

/-! ## A095074.P14426687439966375222

`p?[lt[A037861(n), 1]]`
-/

namespace A095074.P14426687439966375222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095074.P14426687439966375222

/-! ## A095074.P2092712881636064994

`p?[lt[n, A102376(n)]]`
-/

namespace A095074.P2092712881636064994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095074.P2092712881636064994

/-! ## A095074.P7482980815337905932

`eq[A072721(n), A115517(n)]`
-/

namespace A095074.P7482980815337905932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095074.P7482980815337905932

/-! ## A095074.P855320861267914518

`eq[A115517(n), A167865(n)]`
-/

namespace A095074.P855320861267914518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095074.P855320861267914518

/-! ## A095074.P11591996912854419459

`eq[A115517(n), A210442(n)]`
-/

namespace A095074.P11591996912854419459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095074.P11591996912854419459

/-! ## A095074.P1382850501882175002

`eq[A115517(n), A211110(n)]`
-/

namespace A095074.P1382850501882175002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095074.P1382850501882175002

/-! ## A095074.P8629718836580806557

`eq[A115517(n), A284289(n)]`
-/

namespace A095074.P8629718836580806557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095074.P8629718836580806557

/-! ## A095074.P6078030208659933437

`eq[A115517(n), A322968(n)]`
-/

namespace A095074.P6078030208659933437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095074.P6078030208659933437

/-! ## A095074.P10395616382929636091

`eq[A115517(n), A331887(n)]`
-/

namespace A095074.P10395616382929636091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095074.P10395616382929636091

/-!
# A095075: Primes in whose binary expansion the number of 1-bits is less than or equal to number of 0-bits.

The programs for A095075, there is no canonical definition to state claims against.
-/

/-! ## A095075.P18019142847651892164

`∪[A066196(n+1), A095071(n+1)]`
-/

namespace A095075.P18019142847651892164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095075.P18019142847651892164

/-! ## A095075.P8096871149792134423

`∪[A066196(n+1), A177835(n+1)]`
-/

namespace A095075.P8096871149792134423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095075.P8096871149792134423

/-! ## A095075.P6269038392650088255

`∪[A177835(n+1), A177836(n+1)]`
-/

namespace A095075.P6269038392650088255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095075.P6269038392650088255

/-! ## A095075.P1146838908295227610

`p?[A072602(n+1)]`
-/

namespace A095075.P1146838908295227610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095075.P1146838908295227610

/-! ## A095075.P15148656067783953919

`p?[A346300(n+1)+1]`
-/

namespace A095075.P15148656067783953919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346300 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095075.P15148656067783953919

/-! ## A095075.P12225172456169941784

`record[A006530(A072602(n+7))]`
-/

namespace A095075.P12225172456169941784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072602 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095075.P12225172456169941784

/-! ## A095075.P15910379195541531785

`∩[A000040(n+1), A072602(n+1)]`
-/

namespace A095075.P15910379195541531785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095075.P15910379195541531785

/-! ## A095075.P13577429475309679546

`∩[A008578(n+1), A072602(n+1)]`
-/

namespace A095075.P13577429475309679546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095075.P13577429475309679546

/-! ## A095075.P7918255903731694186

`∩[A045319(n+1), A072602(n+1)]`
-/

namespace A095075.P7918255903731694186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095075.P7918255903731694186

/-! ## A095075.P5258372435391507189

`∩[A045344(n+1), A072602(n+1)]`
-/

namespace A095075.P5258372435391507189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095075.P5258372435391507189

/-! ## A095075.P6911123396631241968

`∩[A053813(n+1), A072602(n+1)]`
-/

namespace A095075.P6911123396631241968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095075.P6911123396631241968

/-! ## A095075.P10591995714558479976

`∩[A072602(n+1), A095285(n+1)]`
-/

namespace A095075.P10591995714558479976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095075.P10591995714558479976

/-! ## A095075.P14819061397739158774

`∩[A072602(n+1), A095287(n+1)]`
-/

namespace A095075.P14819061397739158774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095075.P14819061397739158774

/-! ## A095075.P13534658238021046546

`∩[A072602(n+1), A095313(n+1)]`
-/

namespace A095075.P13534658238021046546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095075.P13534658238021046546

/-! ## A095075.P5986607833306244694

`∩[A072602(n+1), A095315(n+1)]`
-/

namespace A095075.P5986607833306244694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095075.P5986607833306244694

/-! ## A095075.P1749676087667368953

`∩[A072602(n+1), A095319(n+1)]`
-/

namespace A095075.P1749676087667368953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095075.P1749676087667368953

/-! ## A095075.P8209521650464616125

`∩[A072602(n+1), A095323(n+1)]`
-/

namespace A095075.P8209521650464616125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095075.P8209521650464616125

/-! ## A095075.P8392134897358701348

`∩[A072602(n+1), A106118(n+1)]`
-/

namespace A095075.P8392134897358701348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095075.P8392134897358701348

/-! ## A095075.P6925326961093852832

`∩[A072602(n+1), A116974(n+1)]`
-/

namespace A095075.P6925326961093852832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095075.P6925326961093852832

/-! ## A095075.P6422514110926883401

`∩[A072602(n+1), A158611(n+1)]`
-/

namespace A095075.P6422514110926883401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095075.P6422514110926883401

/-!
# A095076: Parity of 1-fibits in Zeckendorf expansion A014417(n).

The programs for A095076, the canonical program `A095076.P3589875723574390605` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095076 has offset 0).

The definition of A095076 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A095076.P6564835319458913976

`1-A095111(n)`
-/

namespace A095076.P6564835319458913976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A095111 n

end

end A095076.P6564835319458913976

namespace A095076

/-- `1-A095111(n)` -/
def P6564835319458913976.Spec : Prop :=
  ∀ n, P6564835319458913976.a n = A095076 n

end A095076

/-! ## A095076.P3589875723574390605

`A010060(A003714(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A095076

/-- `A010060(A003714(n))` -/
def P3589875723574390605.Spec : Prop :=
  ∀ n, P3589875723574390605.a n = A095076 n

theorem P3589875723574390605.correct : P3589875723574390605.Spec := by
  intro n
  simp only [A095076]

end A095076

/-! ## A095076.P3356305535190923349

`A007895(n)%2`
-/

namespace A095076.P3356305535190923349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007895 n) 2

end

end A095076.P3356305535190923349

namespace A095076

/-- `A007895(n)%2` -/
def P3356305535190923349.Spec : Prop :=
  ∀ n, P3356305535190923349.a n = A095076 n

end A095076

/-! ## A095076.P16630661189262967773

`A060140(n)%2`
-/

namespace A095076.P16630661189262967773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060140 n) 2

end

end A095076.P16630661189262967773

namespace A095076

/-- `A060140(n)%2` -/
def P16630661189262967773.Spec : Prop :=
  ∀ n, P16630661189262967773.a n = A095076 n

end A095076

/-! ## A095076.P11923658904573910365

`A227351(n)%2`
-/

namespace A095076.P11923658904573910365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227351 n) 2

end

end A095076.P11923658904573910365

namespace A095076

/-- `A227351(n)%2` -/
def P11923658904573910365.Spec : Prop :=
  ∀ n, P11923658904573910365.a n = A095076 n

end A095076

/-! ## A095076.P9095092461706688480

`dr(A014417(n))%2`
-/

namespace A095076.P9095092461706688480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014417 n) % 2

end

end A095076.P9095092461706688480

namespace A095076

/-- `dr(A014417(n))%2` -/
def P9095092461706688480.Spec : Prop :=
  ∀ n, (P9095092461706688480.a n : ℤ) = A095076 n

end A095076

/-! ## A095076.P4320427119546931347

`char[A020899(n+1)]`
-/

namespace A095076.P4320427119546931347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A095076.P4320427119546931347

namespace A095076

/-- `char[A020899(n+1)]` -/
def P4320427119546931347.Spec : Prop :=
  ∀ n, (P4320427119546931347.a n : ℤ) = A095076 n

end A095076

/-! ## A095076.P3706126102818117902

`A288625(n+1)%2`
-/

namespace A095076.P3706126102818117902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288625 (n + 1)) 2

end

end A095076.P3706126102818117902

namespace A095076

/-- `A288625(n+1)%2` -/
def P3706126102818117902.Spec : Prop :=
  ∀ n, P3706126102818117902.a n = A095076 n

end A095076

/-! ## A095076.P8863509413394335976

`1-a(A019586(n))` with `a(0)=0`
-/

namespace A095076.P8863509413394335976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (A019586 n).toNat

end

end A095076.P8863509413394335976

namespace A095076

/-- `1-a(A019586(n))` -/
def P8863509413394335976.Spec : Prop :=
  ∀ n, P8863509413394335976.a n = A095076 n

end A095076

/-! ## A095076.P10599564273196987889

`(A219641(n)+n)%2`
-/

namespace A095076.P10599564273196987889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219641 n + (n : ℤ)) 2

end

end A095076.P10599564273196987889

namespace A095076

/-- `(A219641(n)+n)%2` -/
def P10599564273196987889.Spec : Prop :=
  ∀ n, P10599564273196987889.a n = A095076 n

end A095076

/-! ## A095076.P560192770184037759

`1-char[A095096(n+1)]`
-/

namespace A095076.P560192770184037759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095076.P560192770184037759

namespace A095076

/-- `1-char[A095096(n+1)]` -/
def P560192770184037759.Spec : Prop :=
  ∀ n, P560192770184037759.a n = A095076 n

end A095076

/-! ## A095076.P18303652046821081029

`and(1, A143299(n+1)+1)`
-/

namespace A095076.P18303652046821081029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A143299 (n + 1) + 1)

end

end A095076.P18303652046821081029

namespace A095076

/-- `and(1, A143299(n+1)+1)` -/
def P18303652046821081029.Spec : Prop :=
  ∀ n, P18303652046821081029.a n = A095076 n

end A095076

/-! ## A095076.P6926949751658797102

`and(1, A007895(2*n-n))`
-/

namespace A095076.P6926949751658797102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007895 (2 * n - n))

end

end A095076.P6926949751658797102

namespace A095076

/-- `and(1, A007895(2*n-n))` -/
def P6926949751658797102.Spec : Prop :=
  ∀ n, P6926949751658797102.a n = A095076 n

end A095076

/-! ## A095076.P6768649749091890902

`and(A007895(n), A008349(n))`
-/

namespace A095076.P6768649749091890902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007895 n) (A008349 n)

end

end A095076.P6768649749091890902

namespace A095076

/-- `and(A007895(n), A008349(n))` -/
def P6768649749091890902.Spec : Prop :=
  ∀ n, P6768649749091890902.a n = A095076 n

end A095076

/-! ## A095076.P15090645594999513318

`and(A007895(n), A008362(n))`
-/

namespace A095076.P15090645594999513318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007895 n) (A008362 n)

end

end A095076.P15090645594999513318

namespace A095076

/-- `and(A007895(n), A008362(n))` -/
def P15090645594999513318.Spec : Prop :=
  ∀ n, P15090645594999513318.a n = A095076 n

end A095076

/-! ## A095076.P2943002988188065916

`and(A007895(n), A008417(n))`
-/

namespace A095076.P2943002988188065916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007895 n) (A008417 n)

end

end A095076.P2943002988188065916

namespace A095076

/-- `and(A007895(n), A008417(n))` -/
def P2943002988188065916.Spec : Prop :=
  ∀ n, P2943002988188065916.a n = A095076 n

end A095076

/-! ## A095076.P6666602995281360599

`and(A007895(n), A008514(n))`
-/

namespace A095076.P6666602995281360599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007895 n) (A008514 n)

end

end A095076.P6666602995281360599

namespace A095076

/-- `and(A007895(n), A008514(n))` -/
def P6666602995281360599.Spec : Prop :=
  ∀ n, P6666602995281360599.a n = A095076 n

end A095076

/-! ## A095076.P3257223808630719998

`and(A007895(n), A016760(n))`
-/

namespace A095076.P3257223808630719998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007895 n) (A016760 n)

end

end A095076.P3257223808630719998

namespace A095076

/-- `and(A007895(n), A016760(n))` -/
def P3257223808630719998.Spec : Prop :=
  ∀ n, P3257223808630719998.a n = A095076 n

end A095076

/-! ## A095076.P758462627516257944

`and(A007895(n), A016820(n))`
-/

namespace A095076.P758462627516257944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007895 n) (A016820 n)

end

end A095076.P758462627516257944

namespace A095076

/-- `and(A007895(n), A016820(n))` -/
def P758462627516257944.Spec : Prop :=
  ∀ n, P758462627516257944.a n = A095076 n

end A095076

/-! ## A095076.P743392416275793005

`and(A007895(n), A282997(n+1))`
-/

namespace A095076.P743392416275793005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007895 n) (A282997 (n + 1))

end

end A095076.P743392416275793005

namespace A095076

/-- `and(A007895(n), A282997(n+1))` -/
def P743392416275793005.Spec : Prop :=
  ∀ n, P743392416275793005.a n = A095076 n

end A095076

/-!
# A095077: Primes with four 1-bits in their binary expansion.

The programs for A095077, the canonical program `A095077.P13354407846713250107` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095077 has offset 1).

The definition of A095077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095077.P10279292756605674922

`A362979(∑[n+1]+4)`
-/

namespace A095077.P10279292756605674922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362979 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A095077.P10279292756605674922

namespace A095077

/-- `A362979(∑[n+1]+4)` -/
def P10279292756605674922.Spec : Prop :=
  ∀ n, P10279292756605674922.a n = A095077 (n + 1)

end A095077

/-! ## A095077.P13354407846713250107

`p?[A014312(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A095077

/-- `p?[A014312(n+1)]` -/
def P13354407846713250107.Spec : Prop :=
  ∀ n, P13354407846713250107.a n = A095077 (n + 1)

theorem P13354407846713250107.correct : P13354407846713250107.Spec := by
  intro n
  simp only [A095077, Nat.add_sub_cancel]

end A095077

/-! ## A095077.P1430173636638789279

`p?[A014311(n+1)+1]`
-/

namespace A095077.P1430173636638789279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095077.P1430173636638789279

namespace A095077

/-- `p?[A014311(n+1)+1]` -/
def P1430173636638789279.Spec : Prop :=
  ∀ n, P1430173636638789279.a n = A095077 (n + 1)

end A095077

/-! ## A095077.P9477903235824896820

`p?[A048679(A179243(n+1))+1]`
-/

namespace A095077.P9477903235824896820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A179243 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095077.P9477903235824896820

namespace A095077

/-- `p?[A048679(A179243(n+1))+1]` -/
def P9477903235824896820.Spec : Prop :=
  ∀ n, P9477903235824896820.a n = A095077 (n + 1)

end A095077

/-! ## A095077.P9249843334496261899

`∩[A014312(n+1), A027699(n+1)]`
-/

namespace A095077.P9249843334496261899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095077.P9249843334496261899

namespace A095077

/-- `∩[A014312(n+1), A027699(n+1)]` -/
def P9249843334496261899.Spec : Prop :=
  ∀ n, (P9249843334496261899.a n : ℤ) = A095077 (n + 1)

end A095077

/-! ## A095077.P5716732802271001648

`∩[A014312(n+1), A095319(n+1)]`
-/

namespace A095077.P5716732802271001648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095077.P5716732802271001648

namespace A095077

/-- `∩[A014312(n+1), A095319(n+1)]` -/
def P5716732802271001648.Spec : Prop :=
  ∀ n, (P5716732802271001648.a n : ℤ) = A095077 (n + 1)

end A095077

/-! ## A095077.P15617672766398497955

`record[A006530(A014312(n+2))]`
-/

namespace A095077.P15617672766398497955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014312 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095077.P15617672766398497955

namespace A095077

/-- `record[A006530(A014312(n+2))]` -/
def P15617672766398497955.Spec : Prop :=
  ∀ n, P15617672766398497955.a n = A095077 (n + 1)

end A095077

/-! ## A095077.P6569406424091099024

`filter[A014312(n+1), A010051(#)]`
-/

namespace A095077.P6569406424091099024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095077.P6569406424091099024

namespace A095077

/-- `filter[A014312(n+1), A010051(#)]` -/
def P6569406424091099024.Spec : Prop :=
  ∀ n, P6569406424091099024.a n = A095077 (n + 1)

end A095077

/-! ## A095077.P5095268627759430917

`∩[A000040(n+1), A014312(n+1)]`
-/

namespace A095077.P5095268627759430917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095077.P5095268627759430917

namespace A095077

/-- `∩[A000040(n+1), A014312(n+1)]` -/
def P5095268627759430917.Spec : Prop :=
  ∀ n, (P5095268627759430917.a n : ℤ) = A095077 (n + 1)

end A095077

/-! ## A095077.P5949027155198674113

`∩[A004139(n+1), A014312(n+1)]`
-/

namespace A095077.P5949027155198674113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095077.P5949027155198674113

namespace A095077

/-- `∩[A004139(n+1), A014312(n+1)]` -/
def P5949027155198674113.Spec : Prop :=
  ∀ n, (P5949027155198674113.a n : ℤ) = A095077 (n + 1)

end A095077

/-! ## A095077.P14689517870362009609

`∩[A006005(n+1), A014312(n+1)]`
-/

namespace A095077.P14689517870362009609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095077.P14689517870362009609

namespace A095077

/-- `∩[A006005(n+1), A014312(n+1)]` -/
def P14689517870362009609.Spec : Prop :=
  ∀ n, (P14689517870362009609.a n : ℤ) = A095077 (n + 1)

end A095077

/-! ## A095077.P12738987950314083135

`∩[A008578(n+1), A014312(n+1)]`
-/

namespace A095077.P12738987950314083135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095077.P12738987950314083135

namespace A095077

/-- `∩[A008578(n+1), A014312(n+1)]` -/
def P12738987950314083135.Spec : Prop :=
  ∀ n, (P12738987950314083135.a n : ℤ) = A095077 (n + 1)

end A095077

/-! ## A095077.P12965557516587194007

`∩[A014312(n+1), A033946(n+1)]`
-/

namespace A095077.P12965557516587194007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095077.P12965557516587194007

namespace A095077

/-- `∩[A014312(n+1), A033946(n+1)]` -/
def P12965557516587194007.Spec : Prop :=
  ∀ n, (P12965557516587194007.a n : ℤ) = A095077 (n + 1)

end A095077

/-! ## A095077.P6743431739920330877

`∩[A014312(n+1), A045319(n+1)]`
-/

namespace A095077.P6743431739920330877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095077.P6743431739920330877

namespace A095077

/-- `∩[A014312(n+1), A045319(n+1)]` -/
def P6743431739920330877.Spec : Prop :=
  ∀ n, (P6743431739920330877.a n : ℤ) = A095077 (n + 1)

end A095077

/-! ## A095077.P15718790507663487571

`∩[A014312(n+1), A045344(n+1)]`
-/

namespace A095077.P15718790507663487571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095077.P15718790507663487571

namespace A095077

/-- `∩[A014312(n+1), A045344(n+1)]` -/
def P15718790507663487571.Spec : Prop :=
  ∀ n, (P15718790507663487571.a n : ℤ) = A095077 (n + 1)

end A095077

/-! ## A095077.P17861103503739765131

`∩[A014312(n+1), A046022(n+1)]`
-/

namespace A095077.P17861103503739765131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095077.P17861103503739765131

namespace A095077

/-- `∩[A014312(n+1), A046022(n+1)]` -/
def P17861103503739765131.Spec : Prop :=
  ∀ n, (P17861103503739765131.a n : ℤ) = A095077 (n + 1)

end A095077

/-! ## A095077.P15694309676378363717

`∩[A014312(n+1), A049549(n+1)]`
-/

namespace A095077.P15694309676378363717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095077.P15694309676378363717

namespace A095077

/-- `∩[A014312(n+1), A049549(n+1)]` -/
def P15694309676378363717.Spec : Prop :=
  ∀ n, (P15694309676378363717.a n : ℤ) = A095077 (n + 1)

end A095077

/-! ## A095077.P15823528856529457231

`∩[A014312(n+1), A051948(n+1)]`
-/

namespace A095077.P15823528856529457231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095077.P15823528856529457231

namespace A095077

/-- `∩[A014312(n+1), A051948(n+1)]` -/
def P15823528856529457231.Spec : Prop :=
  ∀ n, (P15823528856529457231.a n : ℤ) = A095077 (n + 1)

end A095077

/-! ## A095077.P11410477449192011120

`∩[A014312(n+1), A053577(n+1)]`
-/

namespace A095077.P11410477449192011120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095077.P11410477449192011120

namespace A095077

/-- `∩[A014312(n+1), A053577(n+1)]` -/
def P11410477449192011120.Spec : Prop :=
  ∀ n, (P11410477449192011120.a n : ℤ) = A095077 (n + 1)

end A095077

/-! ## A095077.P15827827078062460162

`∩[A014312(n+1), A053813(n+1)]`
-/

namespace A095077.P15827827078062460162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095077.P15827827078062460162

namespace A095077

/-- `∩[A014312(n+1), A053813(n+1)]` -/
def P15827827078062460162.Spec : Prop :=
  ∀ n, (P15827827078062460162.a n : ℤ) = A095077 (n + 1)

end A095077

/-!
# A095078: Primes with a single 0 bit in their binary expansion.

The programs for A095078, the canonical program `A095078.P7800583986125222091` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095078 has offset 1).

The definition of A095078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 427 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095078.P7800583986125222091

`∩[A030130(n+1), A100724(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A095078

/-- `∩[A030130(n+1), A100724(n+1)]` -/
def P7800583986125222091.Spec : Prop :=
  ∀ n, (P7800583986125222091.a n : ℤ) = A095078 (n + 1)

theorem P7800583986125222091.correct : P7800583986125222091.Spec := by
  intro n
  simp only [A095078, Nat.add_sub_cancel]

end A095078

/-! ## A095078.P11500835067460063963

`∩[A100724(n+1), A384021(n+1)]`
-/

namespace A095078.P11500835067460063963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095078.P11500835067460063963

namespace A095078

/-- `∩[A100724(n+1), A384021(n+1)]` -/
def P11500835067460063963.Spec : Prop :=
  ∀ n, (P11500835067460063963.a n : ℤ) = A095078 (n + 1)

end A095078

/-! ## A095078.P7159191016497046835

`∩[A100724(n+1), A164874(n+1)]`
-/

namespace A095078.P7159191016497046835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095078.P7159191016497046835

namespace A095078

/-- `∩[A100724(n+1), A164874(n+1)]` -/
def P7159191016497046835.Spec : Prop :=
  ∀ n, (P7159191016497046835.a n : ℤ) = A095078 (n + 1)

end A095078

/-! ## A095078.P14827408565717326128

`∩[A100724(n+1), A161793(n+1)]`
-/

namespace A095078.P14827408565717326128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095078.P14827408565717326128

namespace A095078

/-- `∩[A100724(n+1), A161793(n+1)]` -/
def P14827408565717326128.Spec : Prop :=
  ∀ n, (P14827408565717326128.a n : ℤ) = A095078 (n + 1)

end A095078

/-! ## A095078.P11257225943680188610

`∩[A100724(n+1), A140707(n+1)]`
-/

namespace A095078.P11257225943680188610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095078.P11257225943680188610

namespace A095078

/-- `∩[A100724(n+1), A140707(n+1)]` -/
def P11257225943680188610.Spec : Prop :=
  ∀ n, (P11257225943680188610.a n : ℤ) = A095078 (n + 1)

end A095078

/-! ## A095078.P10437053004032900979

`∩[A030130(n+1), A181172(n+1)]`
-/

namespace A095078.P10437053004032900979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095078.P10437053004032900979

namespace A095078

/-- `∩[A030130(n+1), A181172(n+1)]` -/
def P10437053004032900979.Spec : Prop :=
  ∀ n, (P10437053004032900979.a n : ℤ) = A095078 (n + 1)

end A095078

/-! ## A095078.P18333986255858754494

`∩[A140707(n+1), A181172(n+1)]`
-/

namespace A095078.P18333986255858754494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095078.P18333986255858754494

namespace A095078

/-- `∩[A140707(n+1), A181172(n+1)]` -/
def P18333986255858754494.Spec : Prop :=
  ∀ n, (P18333986255858754494.a n : ℤ) = A095078 (n + 1)

end A095078

/-! ## A095078.P1915728054122590558

`∩[A181172(n+1), A384021(n+1)]`
-/

namespace A095078.P1915728054122590558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095078.P1915728054122590558

namespace A095078

/-- `∩[A181172(n+1), A384021(n+1)]` -/
def P1915728054122590558.Spec : Prop :=
  ∀ n, (P1915728054122590558.a n : ℤ) = A095078 (n + 1)

end A095078

/-!
# A095079: Primes with two 0-bits in their binary expansion.

The programs for A095079, the canonical program `A095079.P17346675219366142704` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095079 has offset 1).

The definition of A095079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095079.P17346675219366142704

`p?[A379267(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A095079

/-- `p?[A379267(n+1)]` -/
def P17346675219366142704.Spec : Prop :=
  ∀ n, P17346675219366142704.a n = A095079 (n + 1)

theorem P17346675219366142704.correct : P17346675219366142704.Spec := by
  intro n
  simp only [A095079, Nat.add_sub_cancel]

end A095079

/-! ## A095079.P17534354724984013

`∩[A066148(n+1), A144213(n+1)]`
-/

namespace A095079.P17534354724984013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095079.P17534354724984013

namespace A095079

/-- `∩[A066148(n+1), A144213(n+1)]` -/
def P17534354724984013.Spec : Prop :=
  ∀ n, (P17534354724984013.a n : ℤ) = A095079 (n + 1)

end A095079

/-! ## A095079.P7359835957059764068

`p?[A152088(n+1)]`
-/

namespace A095079.P7359835957059764068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095079.P7359835957059764068

namespace A095079

/-- `p?[A152088(n+1)]` -/
def P7359835957059764068.Spec : Prop :=
  ∀ n, P7359835957059764068.a n = A095079 (n + 1)

end A095079

/-! ## A095079.P7415463310830388341

`∩[A042987(n+1), A152088(n+1)]`
-/

namespace A095079.P7415463310830388341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095079.P7415463310830388341

namespace A095079

/-- `∩[A042987(n+1), A152088(n+1)]` -/
def P7415463310830388341.Spec : Prop :=
  ∀ n, (P7415463310830388341.a n : ℤ) = A095079 (n + 1)

end A095079

/-! ## A095079.P1443715956786153126

`∩[A045395(n+1), A152088(n+1)]`
-/

namespace A095079.P1443715956786153126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095079.P1443715956786153126

namespace A095079

/-- `∩[A045395(n+1), A152088(n+1)]` -/
def P1443715956786153126.Spec : Prop :=
  ∀ n, (P1443715956786153126.a n : ℤ) = A095079 (n + 1)

end A095079

/-! ## A095079.P4396281455090200761

`∩[A066148(n+1), A152088(n+1)]`
-/

namespace A095079.P4396281455090200761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095079.P4396281455090200761

namespace A095079

/-- `∩[A066148(n+1), A152088(n+1)]` -/
def P4396281455090200761.Spec : Prop :=
  ∀ n, (P4396281455090200761.a n : ℤ) = A095079 (n + 1)

end A095079

/-! ## A095079.P781315108950435228

`∩[A090456(n+1), A152088(n+1)]`
-/

namespace A095079.P781315108950435228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095079.P781315108950435228

namespace A095079

/-- `∩[A090456(n+1), A152088(n+1)]` -/
def P781315108950435228.Spec : Prop :=
  ∀ n, (P781315108950435228.a n : ℤ) = A095079 (n + 1)

end A095079

/-! ## A095079.P15226883642842854526

`∩[A095070(n+1), A152088(n+1)]`
-/

namespace A095079.P15226883642842854526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095079.P15226883642842854526

namespace A095079

/-- `∩[A095070(n+1), A152088(n+1)]` -/
def P15226883642842854526.Spec : Prop :=
  ∀ n, (P15226883642842854526.a n : ℤ) = A095079 (n + 1)

end A095079

/-! ## A095079.P16826629405881511825

`∩[A095074(n+1), A152088(n+1)]`
-/

namespace A095079.P16826629405881511825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095079.P16826629405881511825

namespace A095079

/-- `∩[A095074(n+1), A152088(n+1)]` -/
def P16826629405881511825.Spec : Prop :=
  ∀ n, (P16826629405881511825.a n : ℤ) = A095079 (n + 1)

end A095079

/-! ## A095079.P8958454107333744484

`∩[A144213(n+1), A152088(n+1)]`
-/

namespace A095079.P8958454107333744484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095079.P8958454107333744484

namespace A095079

/-- `∩[A144213(n+1), A152088(n+1)]` -/
def P8958454107333744484.Spec : Prop :=
  ∀ n, (P8958454107333744484.a n : ℤ) = A095079 (n + 1)

end A095079

/-! ## A095079.P3079236705799541401

`∩[A152088(n+1), A340466(n+1)]`
-/

namespace A095079.P3079236705799541401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095079.P3079236705799541401

namespace A095079

/-- `∩[A152088(n+1), A340466(n+1)]` -/
def P3079236705799541401.Spec : Prop :=
  ∀ n, (P3079236705799541401.a n : ℤ) = A095079 (n + 1)

end A095079

/-! ## A095079.P2083904458917276761

`∩[A152088(n+1), A350577(n+1)]`
-/

namespace A095079.P2083904458917276761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095079.P2083904458917276761

namespace A095079

/-- `∩[A152088(n+1), A350577(n+1)]` -/
def P2083904458917276761.Spec : Prop :=
  ∀ n, (P2083904458917276761.a n : ℤ) = A095079 (n + 1)

end A095079

/-!
# A095080: Fibeven primes, i.e., primes p whose Zeckendorf-expansion A014417(p) ends with zero.

The programs for A095080, the canonical program `A095080.P7709350697235318281` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095080 has offset 1).

The definition of A095080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095080.P7709350697235318281

`∪[A095082(n+1), A095281(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A095080

/-- `∪[A095082(n+1), A095281(n+1)]` -/
def P7709350697235318281.Spec : Prop :=
  ∀ n, (P7709350697235318281.a n : ℤ) = A095080 (n + 1)

theorem P7709350697235318281.correct : P7709350697235318281.Spec := by
  intro n
  simp only [A095080, Nat.add_sub_cancel]

end A095080

/-! ## A095080.P18251837457697843236

`p?[floor(ϕ*(n+1))-1]`
-/

namespace A095080.P18251837457697843236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095080.P18251837457697843236

namespace A095080

/-- `p?[floor(ϕ*(n+1))-1]` -/
def P18251837457697843236.Spec : Prop :=
  ∀ n, P18251837457697843236.a n = A095080 (n + 1)

end A095080

/-! ## A095080.P9247487608858749902

`∩[floor(ϕ*(n+1))-1, A000040(n+1)]`
-/

namespace A095080.P9247487608858749902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095080.P9247487608858749902

namespace A095080

/-- `∩[floor(ϕ*(n+1))-1, A000040(n+1)]` -/
def P9247487608858749902.Spec : Prop :=
  ∀ n, (P9247487608858749902.a n : ℤ) = A095080 (n + 1)

end A095080

/-! ## A095080.P5471895578440325260

`∩[floor(ϕ*(n+1))-1, A008578(n+1)]`
-/

namespace A095080.P5471895578440325260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095080.P5471895578440325260

namespace A095080

/-- `∩[floor(ϕ*(n+1))-1, A008578(n+1)]` -/
def P5471895578440325260.Spec : Prop :=
  ∀ n, (P5471895578440325260.a n : ℤ) = A095080 (n + 1)

end A095080

/-! ## A095080.P12285566973775691976

`record[A006530(A022342(n+2))]`
-/

namespace A095080.P12285566973775691976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A022342 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095080.P12285566973775691976

namespace A095080

/-- `record[A006530(A022342(n+2))]` -/
def P12285566973775691976.Spec : Prop :=
  ∀ n, P12285566973775691976.a n = A095080 (n + 1)

end A095080

/-! ## A095080.P9814450348089766856

`filter[A022342(n+2), A010051(#)]`
-/

namespace A095080.P9814450348089766856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095080.P9814450348089766856

namespace A095080

/-- `filter[A022342(n+2), A010051(#)]` -/
def P9814450348089766856.Spec : Prop :=
  ∀ n, P9814450348089766856.a n = A095080 (n + 1)

end A095080

/-! ## A095080.P15132266031480254134

`record[A001414(A026273(n+1)+1)]`
-/

namespace A095080.P15132266031480254134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A026273 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095080.P15132266031480254134

namespace A095080

/-- `record[A001414(A026273(n+1)+1)]` -/
def P15132266031480254134.Spec : Prop :=
  ∀ n, P15132266031480254134.a n = A095080 (n + 1)

end A095080

/-! ## A095080.P5567749058897019357

`record[A006530(A026273(n+1)+1)]`
-/

namespace A095080.P5567749058897019357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A026273 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095080.P5567749058897019357

namespace A095080

/-- `record[A006530(A026273(n+1)+1)]` -/
def P5567749058897019357.Spec : Prop :=
  ∀ n, P5567749058897019357.a n = A095080 (n + 1)

end A095080

/-! ## A095080.P727090520887065547

`record[A006530(A283233(n+2)-2)]`
-/

namespace A095080.P727090520887065547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A283233 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095080.P727090520887065547

namespace A095080

/-- `record[A006530(A283233(n+2)-2)]` -/
def P727090520887065547.Spec : Prop :=
  ∀ n, P727090520887065547.a n = A095080 (n + 1)

end A095080

/-! ## A095080.P14956116837919700841

`record[A006530(A019446(n+2)+n)]`
-/

namespace A095080.P14956116837919700841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A019446 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095080.P14956116837919700841

namespace A095080

/-- `record[A006530(A019446(n+2)+n)]` -/
def P14956116837919700841.Spec : Prop :=
  ∀ n, P14956116837919700841.a n = A095080 (n + 1)

end A095080

/-! ## A095080.P9886485657709137202

`record[A020639(A019446(n+2)+n)]`
-/

namespace A095080.P9886485657709137202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A019446 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095080.P9886485657709137202

namespace A095080

/-- `record[A020639(A019446(n+2)+n)]` -/
def P9886485657709137202.Spec : Prop :=
  ∀ n, P9886485657709137202.a n = A095080 (n + 1)

end A095080

/-! ## A095080.P506475559461965618

`∩[A000040(n+1), A022342(n+1)]`
-/

namespace A095080.P506475559461965618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095080.P506475559461965618

namespace A095080

/-- `∩[A000040(n+1), A022342(n+1)]` -/
def P506475559461965618.Spec : Prop :=
  ∀ n, (P506475559461965618.a n : ℤ) = A095080 (n + 1)

end A095080

/-! ## A095080.P18034895636273223289

`∩[A008578(n+1), A022342(n+1)]`
-/

namespace A095080.P18034895636273223289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095080.P18034895636273223289

namespace A095080

/-- `∩[A008578(n+1), A022342(n+1)]` -/
def P18034895636273223289.Spec : Prop :=
  ∀ n, (P18034895636273223289.a n : ℤ) = A095080 (n + 1)

end A095080

/-! ## A095080.P3724258041371703268

`∩[A022342(n+1), A046022(n+1)]`
-/

namespace A095080.P3724258041371703268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095080.P3724258041371703268

namespace A095080

/-- `∩[A022342(n+1), A046022(n+1)]` -/
def P3724258041371703268.Spec : Prop :=
  ∀ n, (P3724258041371703268.a n : ℤ) = A095080 (n + 1)

end A095080

/-! ## A095080.P8709129316727899097

`∩[A022342(n+1), A051948(n+1)]`
-/

namespace A095080.P8709129316727899097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095080.P8709129316727899097

namespace A095080

/-- `∩[A022342(n+1), A051948(n+1)]` -/
def P8709129316727899097.Spec : Prop :=
  ∀ n, (P8709129316727899097.a n : ℤ) = A095080 (n + 1)

end A095080

/-! ## A095080.P17412515901161926300

`∩[A022342(n+1), A067126(n+1)]`
-/

namespace A095080.P17412515901161926300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095080.P17412515901161926300

namespace A095080

/-- `∩[A022342(n+1), A067126(n+1)]` -/
def P17412515901161926300.Spec : Prop :=
  ∀ n, (P17412515901161926300.a n : ℤ) = A095080 (n + 1)

end A095080

/-! ## A095080.P11439780817028259361

`∩[A022342(n+1), A116974(n+1)]`
-/

namespace A095080.P11439780817028259361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095080.P11439780817028259361

namespace A095080

/-- `∩[A022342(n+1), A116974(n+1)]` -/
def P11439780817028259361.Spec : Prop :=
  ∀ n, (P11439780817028259361.a n : ℤ) = A095080 (n + 1)

end A095080

/-! ## A095080.P12235037152430736794

`∩[A022342(n+1), A175787(n+1)]`
-/

namespace A095080.P12235037152430736794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095080.P12235037152430736794

namespace A095080

/-- `∩[A022342(n+1), A175787(n+1)]` -/
def P12235037152430736794.Spec : Prop :=
  ∀ n, (P12235037152430736794.a n : ℤ) = A095080 (n + 1)

end A095080

/-! ## A095080.P4359211004676272276

`∩[A022342(n+1), A348440(n+1)]`
-/

namespace A095080.P4359211004676272276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095080.P4359211004676272276

namespace A095080

/-- `∩[A022342(n+1), A348440(n+1)]` -/
def P4359211004676272276.Spec : Prop :=
  ∀ n, (P4359211004676272276.a n : ℤ) = A095080 (n + 1)

end A095080

/-! ## A095080.P15303785989085945941

`∩[A000040(n+1), A066096(n)-1]`
-/

namespace A095080.P15303785989085945941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095080.P15303785989085945941

namespace A095080

/-- `∩[A000040(n+1), A066096(n)-1]` -/
def P15303785989085945941.Spec : Prop :=
  ∀ n, (P15303785989085945941.a n : ℤ) = A095080 (n + 1)

end A095080

/-!
# A095081: Fibodd primes, i.e., primes p whose Zeckendorf-expansion A014417(p) ends with one.

The programs for A095081, the canonical program `A095081.P9683721317157080993` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095081 has offset 1).

The definition of A095081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8873 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095081.P9683721317157080993

`p?[floor(n*ϕ²+ϕ)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A095081

/-- `p?[floor(n*ϕ²+ϕ)]` -/
def P9683721317157080993.Spec : Prop :=
  ∀ n, P9683721317157080993.a n = A095081 (n + 1)

theorem P9683721317157080993.correct : P9683721317157080993.Spec := by
  intro n
  simp only [A095081, Nat.add_sub_cancel]

end A095081

/-! ## A095081.P12871046358873409643

`filter[A003622(n+1), A010051(#)]`
-/

namespace A095081.P12871046358873409643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095081.P12871046358873409643

namespace A095081

/-- `filter[A003622(n+1), A010051(#)]` -/
def P12871046358873409643.Spec : Prop :=
  ∀ n, P12871046358873409643.a n = A095081 (n + 1)

end A095081

/-! ## A095081.P9020388048569384195

`∩[A000040(n+1), A003622(n+1)]`
-/

namespace A095081.P9020388048569384195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095081.P9020388048569384195

namespace A095081

/-- `∩[A000040(n+1), A003622(n+1)]` -/
def P9020388048569384195.Spec : Prop :=
  ∀ n, (P9020388048569384195.a n : ℤ) = A095081 (n + 1)

end A095081

/-! ## A095081.P7031969079779042979

`∩[A003622(n+1), A004139(n+1)]`
-/

namespace A095081.P7031969079779042979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095081.P7031969079779042979

namespace A095081

/-- `∩[A003622(n+1), A004139(n+1)]` -/
def P7031969079779042979.Spec : Prop :=
  ∀ n, (P7031969079779042979.a n : ℤ) = A095081 (n + 1)

end A095081

/-! ## A095081.P16919522375285069075

`∩[A003622(n+1), A045319(n+1)]`
-/

namespace A095081.P16919522375285069075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095081.P16919522375285069075

namespace A095081

/-- `∩[A003622(n+1), A045319(n+1)]` -/
def P16919522375285069075.Spec : Prop :=
  ∀ n, (P16919522375285069075.a n : ℤ) = A095081 (n + 1)

end A095081

/-! ## A095081.P13274713817172713033

`∩[A003622(n+1), A045344(n+1)]`
-/

namespace A095081.P13274713817172713033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095081.P13274713817172713033

namespace A095081

/-- `∩[A003622(n+1), A045344(n+1)]` -/
def P13274713817172713033.Spec : Prop :=
  ∀ n, (P13274713817172713033.a n : ℤ) = A095081 (n + 1)

end A095081

/-! ## A095081.P11632458689587980100

`∩[A003622(n+1), A065091(n+1)]`
-/

namespace A095081.P11632458689587980100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095081.P11632458689587980100

namespace A095081

/-- `∩[A003622(n+1), A065091(n+1)]` -/
def P11632458689587980100.Spec : Prop :=
  ∀ n, (P11632458689587980100.a n : ℤ) = A095081 (n + 1)

end A095081

/-! ## A095081.P8029843491297923236

`∩[A003622(n+1), A095280(n+1)]`
-/

namespace A095081.P8029843491297923236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095081.P8029843491297923236

namespace A095081

/-- `∩[A003622(n+1), A095280(n+1)]` -/
def P8029843491297923236.Spec : Prop :=
  ∀ n, (P8029843491297923236.a n : ℤ) = A095081 (n + 1)

end A095081

/-! ## A095081.P2784203920661092956

`∩[A003622(n+1), A108719(n+1)]`
-/

namespace A095081.P2784203920661092956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095081.P2784203920661092956

namespace A095081

/-- `∩[A003622(n+1), A108719(n+1)]` -/
def P2784203920661092956.Spec : Prop :=
  ∀ n, (P2784203920661092956.a n : ℤ) = A095081 (n + 1)

end A095081

/-! ## A095081.P1800328467974728726

`∩[A003622(n+1), A157996(n+1)]`
-/

namespace A095081.P1800328467974728726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095081.P1800328467974728726

namespace A095081

/-- `∩[A003622(n+1), A157996(n+1)]` -/
def P1800328467974728726.Spec : Prop :=
  ∀ n, (P1800328467974728726.a n : ℤ) = A095081 (n + 1)

end A095081

/-! ## A095081.P12265006082387775652

`∩[A003622(n+1), A182986(n+1)]`
-/

namespace A095081.P12265006082387775652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095081.P12265006082387775652

namespace A095081

/-- `∩[A003622(n+1), A182986(n+1)]` -/
def P12265006082387775652.Spec : Prop :=
  ∀ n, (P12265006082387775652.a n : ℤ) = A095081 (n + 1)

end A095081

/-! ## A095081.P11148708467590325687

`∩[A003622(n+1), A197636(n+1)]`
-/

namespace A095081.P11148708467590325687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095081.P11148708467590325687

namespace A095081

/-- `∩[A003622(n+1), A197636(n+1)]` -/
def P11148708467590325687.Spec : Prop :=
  ∀ n, (P11148708467590325687.a n : ℤ) = A095081 (n + 1)

end A095081

/-! ## A095081.P11068941760825611644

`∩[A003622(n+1), A215848(n+1)]`
-/

namespace A095081.P11068941760825611644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095081.P11068941760825611644

namespace A095081

/-- `∩[A003622(n+1), A215848(n+1)]` -/
def P11068941760825611644.Spec : Prop :=
  ∀ n, (P11068941760825611644.a n : ℤ) = A095081 (n + 1)

end A095081

/-! ## A095081.P17600148084097756407

`∩[A003622(n+1), A261123(n+1)]`
-/

namespace A095081.P17600148084097756407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095081.P17600148084097756407

namespace A095081

/-- `∩[A003622(n+1), A261123(n+1)]` -/
def P17600148084097756407.Spec : Prop :=
  ∀ n, (P17600148084097756407.a n : ℤ) = A095081 (n + 1)

end A095081

/-! ## A095081.P296327588374162559

`∩[A000040(n+1), A026274(n+1)+1]`
-/

namespace A095081.P296327588374162559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095081.P296327588374162559

namespace A095081

/-- `∩[A000040(n+1), A026274(n+1)+1]` -/
def P296327588374162559.Spec : Prop :=
  ∀ n, (P296327588374162559.a n : ℤ) = A095081 (n + 1)

end A095081

/-! ## A095081.P17048613350025214576

`∩[A006005(n+1), A026274(n+1)+1]`
-/

namespace A095081.P17048613350025214576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095081.P17048613350025214576

namespace A095081

/-- `∩[A006005(n+1), A026274(n+1)+1]` -/
def P17048613350025214576.Spec : Prop :=
  ∀ n, (P17048613350025214576.a n : ℤ) = A095081 (n + 1)

end A095081

/-! ## A095081.P17990401053424045758

`∩[A008578(n+1), A026274(n+1)+1]`
-/

namespace A095081.P17990401053424045758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095081.P17990401053424045758

namespace A095081

/-- `∩[A008578(n+1), A026274(n+1)+1]` -/
def P17990401053424045758.Spec : Prop :=
  ∀ n, (P17990401053424045758.a n : ℤ) = A095081 (n + 1)

end A095081

/-! ## A095081.P10029374053673529517

`∩[A026274(n+1)+1, A065091(n+1)]`
-/

namespace A095081.P10029374053673529517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095081.P10029374053673529517

namespace A095081

/-- `∩[A026274(n+1)+1, A065091(n+1)]` -/
def P10029374053673529517.Spec : Prop :=
  ∀ n, (P10029374053673529517.a n : ℤ) = A095081 (n + 1)

end A095081

/-! ## A095081.P17714015510049798799

`∩[A000040(n+1), A001950(n+1)-1]`
-/

namespace A095081.P17714015510049798799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095081.P17714015510049798799

namespace A095081

/-- `∩[A000040(n+1), A001950(n+1)-1]` -/
def P17714015510049798799.Spec : Prop :=
  ∀ n, (P17714015510049798799.a n : ℤ) = A095081 (n + 1)

end A095081

/-! ## A095081.P3443624339401610383

`∩[A001950(n+1)-1, A045344(n+1)]`
-/

namespace A095081.P3443624339401610383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095081.P3443624339401610383

namespace A095081

/-- `∩[A001950(n+1)-1, A045344(n+1)]` -/
def P3443624339401610383.Spec : Prop :=
  ∀ n, (P3443624339401610383.a n : ℤ) = A095081 (n + 1)

end A095081

/-!
# A095082: Fib00 primes, i.e., primes p whose Zeckendorf-expansion A014417(p) ends with two zeros.

The programs for A095082, the canonical program `A095082.P2898843738196785764` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095082 has offset 1).

The definition of A095082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095082.P2898843738196785764

`∪[A095085(n+1), A095088(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095082

/-- `∪[A095085(n+1), A095088(n+1)]` -/
def P2898843738196785764.Spec : Prop :=
  ∀ n, (P2898843738196785764.a n : ℤ) = A095082 (n + 1)

theorem P2898843738196785764.correct : P2898843738196785764.Spec := by
  intro n
  simp only [A095082, Nat.add_sub_cancel]

end A095082

/-! ## A095082.P3502166863830123754

`p?[floor(n*ϕ²)-2]`
-/

namespace A095082.P3502166863830123754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095082.P3502166863830123754

namespace A095082

/-- `p?[floor(n*ϕ²)-2]` -/
def P3502166863830123754.Spec : Prop :=
  ∀ n, P3502166863830123754.a n = A095082 (n + 1)

end A095082

/-! ## A095082.P12812684569460572834

`or(1, p?[ceil(n*ϕ²)-3])`
-/

namespace A095082.P12812684569460572834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉ - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A095082.P12812684569460572834

namespace A095082

/-- `or(1, p?[ceil(n*ϕ²)-3])` -/
def P12812684569460572834.Spec : Prop :=
  ∀ n, P12812684569460572834.a n = A095082 (n + 1)

end A095082

/-! ## A095082.P12624027787313695281

`∏{d}[p?[floor(ϕ*(n+2)+n)], #]`
-/

namespace A095082.P12624027787313695281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ) + (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A095082.P12624027787313695281

namespace A095082

/-- `∏{d}[p?[floor(ϕ*(n+2)+n)], #]` -/
def P12624027787313695281.Spec : Prop :=
  ∀ n, (P12624027787313695281.a n : ℤ) = A095082 (n + 1)

end A095082

/-! ## A095082.P12468326015229160048

`∑{p}[p?[floor(ϕ*(n+2)+n)], #]`
-/

namespace A095082.P12468326015229160048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ) + (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A095082.P12468326015229160048

namespace A095082

/-- `∑{p}[p?[floor(ϕ*(n+2)+n)], #]` -/
def P12468326015229160048.Spec : Prop :=
  ∀ n, (P12468326015229160048.a n : ℤ) = A095082 (n + 1)

end A095082

/-! ## A095082.P10363384664170270650

`∏{p}[p?[floor(ϕ*(n+2)+n)], #]`
-/

namespace A095082.P10363384664170270650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ) + (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A095082.P10363384664170270650

namespace A095082

/-- `∏{p}[p?[floor(ϕ*(n+2)+n)], #]` -/
def P10363384664170270650.Spec : Prop :=
  ∀ n, (P10363384664170270650.a n : ℤ) = A095082 (n + 1)

end A095082

/-! ## A095082.P700737643676669587

`record[A006530(floor(ϕ*(n+2)+n))]`
-/

namespace A095082.P700737643676669587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌊Real.goldenRatio * (n + 2 : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095082.P700737643676669587

namespace A095082

/-- `record[A006530(floor(ϕ*(n+2)+n))]` -/
def P700737643676669587.Spec : Prop :=
  ∀ n, P700737643676669587.a n = A095082 (n + 1)

end A095082

/-! ## A095082.P3233837694064907683

`record[A020639(floor(ϕ*(n+2)+n))]`
-/

namespace A095082.P3233837694064907683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊Real.goldenRatio * (n + 2 : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095082.P3233837694064907683

namespace A095082

/-- `record[A020639(floor(ϕ*(n+2)+n))]` -/
def P3233837694064907683.Spec : Prop :=
  ∀ n, P3233837694064907683.a n = A095082 (n + 1)

end A095082

/-! ## A095082.P16977126200897339826

`filter[A026274(n+1), A010051(#)]`
-/

namespace A095082.P16977126200897339826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095082.P16977126200897339826

namespace A095082

/-- `filter[A026274(n+1), A010051(#)]` -/
def P16977126200897339826.Spec : Prop :=
  ∀ n, P16977126200897339826.a n = A095082 (n + 1)

end A095082

/-! ## A095082.P7321151515551921049

`filter[A026274(n+1), A323152(#)]`
-/

namespace A095082.P7321151515551921049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A095082.P7321151515551921049

namespace A095082

/-- `filter[A026274(n+1), A323152(#)]` -/
def P7321151515551921049.Spec : Prop :=
  ∀ n, P7321151515551921049.a n = A095082 (n + 1)

end A095082

/-! ## A095082.P1414765077677109685

`filter[A026274(n+1), A323153(#)]`
-/

namespace A095082.P1414765077677109685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A095082.P1414765077677109685

namespace A095082

/-- `filter[A026274(n+1), A323153(#)]` -/
def P1414765077677109685.Spec : Prop :=
  ∀ n, P1414765077677109685.a n = A095082 (n + 1)

end A095082

/-! ## A095082.P14091596420327858530

`∩[A000040(n+1), A026274(n+1)]`
-/

namespace A095082.P14091596420327858530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095082.P14091596420327858530

namespace A095082

/-- `∩[A000040(n+1), A026274(n+1)]` -/
def P14091596420327858530.Spec : Prop :=
  ∀ n, (P14091596420327858530.a n : ℤ) = A095082 (n + 1)

end A095082

/-! ## A095082.P12567180496554453190

`∩[A006005(n+1), A026274(n+1)]`
-/

namespace A095082.P12567180496554453190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095082.P12567180496554453190

namespace A095082

/-- `∩[A006005(n+1), A026274(n+1)]` -/
def P12567180496554453190.Spec : Prop :=
  ∀ n, (P12567180496554453190.a n : ℤ) = A095082 (n + 1)

end A095082

/-! ## A095082.P15265759308395304378

`∩[A008578(n+1), A026274(n+1)]`
-/

namespace A095082.P15265759308395304378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095082.P15265759308395304378

namespace A095082

/-- `∩[A008578(n+1), A026274(n+1)]` -/
def P15265759308395304378.Spec : Prop :=
  ∀ n, (P15265759308395304378.a n : ℤ) = A095082 (n + 1)

end A095082

/-! ## A095082.P8580917428976220048

`∩[A026274(n+1), A046022(n+1)]`
-/

namespace A095082.P8580917428976220048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095082.P8580917428976220048

namespace A095082

/-- `∩[A026274(n+1), A046022(n+1)]` -/
def P8580917428976220048.Spec : Prop :=
  ∀ n, (P8580917428976220048.a n : ℤ) = A095082 (n + 1)

end A095082

/-! ## A095082.P5267751019564533056

`∩[A026274(n+1), A051948(n+1)]`
-/

namespace A095082.P5267751019564533056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095082.P5267751019564533056

namespace A095082

/-- `∩[A026274(n+1), A051948(n+1)]` -/
def P5267751019564533056.Spec : Prop :=
  ∀ n, (P5267751019564533056.a n : ℤ) = A095082 (n + 1)

end A095082

/-! ## A095082.P1663171551189905090

`∩[A026274(n+1), A053813(n+1)]`
-/

namespace A095082.P1663171551189905090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095082.P1663171551189905090

namespace A095082

/-- `∩[A026274(n+1), A053813(n+1)]` -/
def P1663171551189905090.Spec : Prop :=
  ∀ n, (P1663171551189905090.a n : ℤ) = A095082 (n + 1)

end A095082

/-! ## A095082.P14106888363145020626

`∩[A026274(n+1), A065091(n+1)]`
-/

namespace A095082.P14106888363145020626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095082.P14106888363145020626

namespace A095082

/-- `∩[A026274(n+1), A065091(n+1)]` -/
def P14106888363145020626.Spec : Prop :=
  ∀ n, (P14106888363145020626.a n : ℤ) = A095082 (n + 1)

end A095082

/-! ## A095082.P12285769252248424161

`∩[A026274(n+1), A065396(n+1)]`
-/

namespace A095082.P12285769252248424161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095082.P12285769252248424161

namespace A095082

/-- `∩[A026274(n+1), A065396(n+1)]` -/
def P12285769252248424161.Spec : Prop :=
  ∀ n, (P12285769252248424161.a n : ℤ) = A095082 (n + 1)

end A095082

/-! ## A095082.P1939068307909801107

`∩[A026274(n+1), A066050(n+1)]`
-/

namespace A095082.P1939068307909801107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095082.P1939068307909801107

namespace A095082

/-- `∩[A026274(n+1), A066050(n+1)]` -/
def P1939068307909801107.Spec : Prop :=
  ∀ n, (P1939068307909801107.a n : ℤ) = A095082 (n + 1)

end A095082

/-!
# A095083: Fibodious primes, i.e., primes p whose Zeckendorf-expansion A014417(p) contains an odd number of 1-fibits.

The programs for A095083, the canonical program `A095083.P9414976609862842338` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095083 has offset 1).

The definition of A095083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095083.P9414976609862842338

`record[and(1, A182535(n+1))*A000040(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A095083

/-- `record[and(1, A182535(n+1))*A000040(n+1)]` -/
def P9414976609862842338.Spec : Prop :=
  ∀ n, P9414976609862842338.a n = A095083 (n + 1)

theorem P9414976609862842338.correct : P9414976609862842338.Spec := by
  intro n
  simp only [A095083, Nat.add_sub_cancel]

end A095083

/-! ## A095083.P6928371536169364014

`p?[A020899(n+1)]`
-/

namespace A095083.P6928371536169364014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095083.P6928371536169364014

namespace A095083

/-- `p?[A020899(n+1)]` -/
def P6928371536169364014.Spec : Prop :=
  ∀ n, P6928371536169364014.a n = A095083 (n + 1)

end A095083

/-! ## A095083.P17486509395447669077

`p?[comp[A095096(n+1)]]`
-/

namespace A095083.P17486509395447669077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095083.P17486509395447669077

namespace A095083

/-- `p?[comp[A095096(n+1)]]` -/
def P17486509395447669077.Spec : Prop :=
  ∀ n, (P17486509395447669077.a n : ℤ) = A095083 (n + 1)

end A095083

/-! ## A095083.P17512264681122644823

`record[A006530(A020899(n+2))]`
-/

namespace A095083.P17512264681122644823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A020899 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095083.P17512264681122644823

namespace A095083

/-- `record[A006530(A020899(n+2))]` -/
def P17512264681122644823.Spec : Prop :=
  ∀ n, P17512264681122644823.a n = A095083 (n + 1)

end A095083

/-! ## A095083.P16630562561855479517

`filter[A020899(n+1), A010051(#)]`
-/

namespace A095083.P16630562561855479517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095083.P16630562561855479517

namespace A095083

/-- `filter[A020899(n+1), A010051(#)]` -/
def P16630562561855479517.Spec : Prop :=
  ∀ n, P16630562561855479517.a n = A095083 (n + 1)

end A095083

/-! ## A095083.P13949740368775546526

`∩[A000040(n+1), A020899(n+1)]`
-/

namespace A095083.P13949740368775546526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095083.P13949740368775546526

namespace A095083

/-- `∩[A000040(n+1), A020899(n+1)]` -/
def P13949740368775546526.Spec : Prop :=
  ∀ n, (P13949740368775546526.a n : ℤ) = A095083 (n + 1)

end A095083

/-! ## A095083.P7344406464762892440

`∩[A020899(n+1), A051948(n+1)]`
-/

namespace A095083.P7344406464762892440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095083.P7344406464762892440

namespace A095083

/-- `∩[A020899(n+1), A051948(n+1)]` -/
def P7344406464762892440.Spec : Prop :=
  ∀ n, (P7344406464762892440.a n : ℤ) = A095083 (n + 1)

end A095083

/-! ## A095083.P16156579004798157409

`∩[A020899(n+1), A116974(n+1)]`
-/

namespace A095083.P16156579004798157409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095083.P16156579004798157409

namespace A095083

/-- `∩[A020899(n+1), A116974(n+1)]` -/
def P16156579004798157409.Spec : Prop :=
  ∀ n, (P16156579004798157409.a n : ℤ) = A095083 (n + 1)

end A095083

/-! ## A095083.P5383786614129140156

`∩[A020899(n+1), A175787(n+1)]`
-/

namespace A095083.P5383786614129140156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095083.P5383786614129140156

namespace A095083

/-- `∩[A020899(n+1), A175787(n+1)]` -/
def P5383786614129140156.Spec : Prop :=
  ∀ n, (P5383786614129140156.a n : ℤ) = A095083 (n + 1)

end A095083

/-! ## A095083.P11405753149678099143

`∩[A020899(n+1), A182986(n+1)]`
-/

namespace A095083.P11405753149678099143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095083.P11405753149678099143

namespace A095083

/-- `∩[A020899(n+1), A182986(n+1)]` -/
def P11405753149678099143.Spec : Prop :=
  ∀ n, (P11405753149678099143.a n : ℤ) = A095083 (n + 1)

end A095083

/-! ## A095083.P17669367564812478422

`∩[A020899(n+1), A251595(n+1)]`
-/

namespace A095083.P17669367564812478422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095083.P17669367564812478422

namespace A095083

/-- `∩[A020899(n+1), A251595(n+1)]` -/
def P17669367564812478422.Spec : Prop :=
  ∀ n, (P17669367564812478422.a n : ℤ) = A095083 (n + 1)

end A095083

/-! ## A095083.P11915099006517554288

`p?[eq[1, A095076(n)]]`
-/

namespace A095083.P11915099006517554288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095083.P11915099006517554288

namespace A095083

/-- `p?[eq[1, A095076(n)]]` -/
def P11915099006517554288.Spec : Prop :=
  ∀ n, (P11915099006517554288.a n : ℤ) = A095083 (n + 1)

end A095083

/-! ## A095083.P11359175495448839184

`p?[n*(A095111(n)+1)]`
-/

namespace A095083.P11359175495448839184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A095111 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095083.P11359175495448839184

namespace A095083

/-- `p?[n*(A095111(n)+1)]` -/
def P11359175495448839184.Spec : Prop :=
  ∀ n, P11359175495448839184.a n = A095083 (n + 1)

end A095083

/-! ## A095083.P16742590613018614877

`p?[n*gcd(2, A007895(n))]`
-/

namespace A095083.P16742590613018614877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd 2 (A007895 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095083.P16742590613018614877

namespace A095083

/-- `p?[n*gcd(2, A007895(n))]` -/
def P16742590613018614877.Spec : Prop :=
  ∀ n, (P16742590613018614877.a n : ℤ) = A095083 (n + 1)

end A095083

/-! ## A095083.P16368459991659429024

`p?[(n+1)*A007895(n+1)%2]`
-/

namespace A095083.P16368459991659429024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A007895 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095083.P16368459991659429024

namespace A095083

/-- `p?[(n+1)*A007895(n+1)%2]` -/
def P16368459991659429024.Spec : Prop :=
  ∀ n, P16368459991659429024.a n = A095083 (n + 1)

end A095083

/-! ## A095083.P14857071470348491095

`p?[abs(A219641(n)%(n%2+1)-n)]`
-/

namespace A095083.P14857071470348491095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A219641 n) ((n % 2 + 1 : ℕ) : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095083.P14857071470348491095

namespace A095083

/-- `p?[abs(A219641(n)%(n%2+1)-n)]` -/
def P14857071470348491095.Spec : Prop :=
  ∀ n, P14857071470348491095.a n = A095083 (n + 1)

end A095083

/-! ## A095083.P6741356688643272763

`eq[A072480(n), A095111(n)]`
-/

namespace A095083.P6741356688643272763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095083.P6741356688643272763

namespace A095083

/-- `eq[A072480(n), A095111(n)]` -/
def P6741356688643272763.Spec : Prop :=
  ∀ n, (P6741356688643272763.a n : ℤ) = A095083 (n + 1)

end A095083

/-! ## A095083.P6984116831903379849

`eq[A072721(n), A095076(n)]`
-/

namespace A095083.P6984116831903379849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095083.P6984116831903379849

namespace A095083

/-- `eq[A072721(n), A095076(n)]` -/
def P6984116831903379849.Spec : Prop :=
  ∀ n, (P6984116831903379849.a n : ℤ) = A095083 (n + 1)

end A095083

/-! ## A095083.P6928096778634594397

`eq[A095076(n), A167865(n)]`
-/

namespace A095083.P6928096778634594397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095083.P6928096778634594397

namespace A095083

/-- `eq[A095076(n), A167865(n)]` -/
def P6928096778634594397.Spec : Prop :=
  ∀ n, (P6928096778634594397.a n : ℤ) = A095083 (n + 1)

end A095083

/-! ## A095083.P7637457788122645709

`eq[A095076(n), A210442(n)]`
-/

namespace A095083.P7637457788122645709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095083.P7637457788122645709

namespace A095083

/-- `eq[A095076(n), A210442(n)]` -/
def P7637457788122645709.Spec : Prop :=
  ∀ n, (P7637457788122645709.a n : ℤ) = A095083 (n + 1)

end A095083

/-!
# A095084: Fibevil primes, i.e., primes p whose Zeckendorf-expansion A014417(p) contains an even number of 1-fibits.

The programs for A095084, the canonical program `A095084.P11348282661228116740` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095084 has offset 1).

The definition of A095084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1087 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095084.P11348282661228116740

`p?[A095096(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A095084

/-- `p?[A095096(n+1)]` -/
def P11348282661228116740.Spec : Prop :=
  ∀ n, P11348282661228116740.a n = A095084 (n + 1)

theorem P11348282661228116740.correct : P11348282661228116740.Spec := by
  intro n
  simp only [A095084, Nat.add_sub_cancel]

end A095084

/-! ## A095084.P8045871027218534892

`or(1, p?[A095096(n-log2(1/2))])`
-/

namespace A095084.P8045871027218534892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A095084.P8045871027218534892

namespace A095084

/-- `or(1, p?[A095096(n-log2(1/2))])` -/
def P8045871027218534892.Spec : Prop :=
  ∀ n, P8045871027218534892.a n = A095084 (n + 1)

end A095084

/-! ## A095084.P16664849019424138371

`record[A006530(A095096(n+4))]`
-/

namespace A095084.P16664849019424138371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A095096 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095084.P16664849019424138371

namespace A095084

/-- `record[A006530(A095096(n+4))]` -/
def P16664849019424138371.Spec : Prop :=
  ∀ n, P16664849019424138371.a n = A095084 (n + 1)

end A095084

/-! ## A095084.P9257042256661334920

`filter[A095096(n+2), A010051(#)]`
-/

namespace A095084.P9257042256661334920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095084.P9257042256661334920

namespace A095084

/-- `filter[A095096(n+2), A010051(#)]` -/
def P9257042256661334920.Spec : Prop :=
  ∀ n, P9257042256661334920.a n = A095084 (n + 1)

end A095084

/-! ## A095084.P7740958246404629164

`p?[comp[A020899(n+1)]]`
-/

namespace A095084.P7740958246404629164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095084.P7740958246404629164

namespace A095084

/-- `p?[comp[A020899(n+1)]]` -/
def P7740958246404629164.Spec : Prop :=
  ∀ n, (P7740958246404629164.a n : ℤ) = A095084 (n + 1)

end A095084

/-! ## A095084.P3157993505498517068

`∩[A000040(n+1), A095096(n+1)]`
-/

namespace A095084.P3157993505498517068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095084.P3157993505498517068

namespace A095084

/-- `∩[A000040(n+1), A095096(n+1)]` -/
def P3157993505498517068.Spec : Prop :=
  ∀ n, (P3157993505498517068.a n : ℤ) = A095084 (n + 1)

end A095084

/-! ## A095084.P1223930611537386118

`∩[A004139(n+1), A095096(n+1)]`
-/

namespace A095084.P1223930611537386118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095084.P1223930611537386118

namespace A095084

/-- `∩[A004139(n+1), A095096(n+1)]` -/
def P1223930611537386118.Spec : Prop :=
  ∀ n, (P1223930611537386118.a n : ℤ) = A095084 (n + 1)

end A095084

/-! ## A095084.P3130944364114404728

`∩[A006005(n+1), A095096(n+1)]`
-/

namespace A095084.P3130944364114404728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095084.P3130944364114404728

namespace A095084

/-- `∩[A006005(n+1), A095096(n+1)]` -/
def P3130944364114404728.Spec : Prop :=
  ∀ n, (P3130944364114404728.a n : ℤ) = A095084 (n + 1)

end A095084

/-! ## A095084.P7986230223397029107

`∩[A008578(n+1), A095096(n+1)]`
-/

namespace A095084.P7986230223397029107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095084.P7986230223397029107

namespace A095084

/-- `∩[A008578(n+1), A095096(n+1)]` -/
def P7986230223397029107.Spec : Prop :=
  ∀ n, (P7986230223397029107.a n : ℤ) = A095084 (n + 1)

end A095084

/-! ## A095084.P17137703621119373135

`∩[A045319(n+1), A095096(n+1)]`
-/

namespace A095084.P17137703621119373135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095084.P17137703621119373135

namespace A095084

/-- `∩[A045319(n+1), A095096(n+1)]` -/
def P17137703621119373135.Spec : Prop :=
  ∀ n, (P17137703621119373135.a n : ℤ) = A095084 (n + 1)

end A095084

/-! ## A095084.P13145886992529804327

`∩[A045344(n+1), A095096(n+1)]`
-/

namespace A095084.P13145886992529804327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095084.P13145886992529804327

namespace A095084

/-- `∩[A045344(n+1), A095096(n+1)]` -/
def P13145886992529804327.Spec : Prop :=
  ∀ n, (P13145886992529804327.a n : ℤ) = A095084 (n + 1)

end A095084

/-! ## A095084.P10461780664333320964

`∩[A060634(n+1), A095096(n+1)]`
-/

namespace A095084.P10461780664333320964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095084.P10461780664333320964

namespace A095084

/-- `∩[A060634(n+1), A095096(n+1)]` -/
def P10461780664333320964.Spec : Prop :=
  ∀ n, (P10461780664333320964.a n : ℤ) = A095084 (n + 1)

end A095084

/-! ## A095084.P8912318310472604581

`∩[A065091(n+1), A095096(n+1)]`
-/

namespace A095084.P8912318310472604581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095084.P8912318310472604581

namespace A095084

/-- `∩[A065091(n+1), A095096(n+1)]` -/
def P8912318310472604581.Spec : Prop :=
  ∀ n, (P8912318310472604581.a n : ℤ) = A095084 (n + 1)

end A095084

/-! ## A095084.P16034472162056430138

`∩[A095096(n+1), A140475(n+1)]`
-/

namespace A095084.P16034472162056430138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095084.P16034472162056430138

namespace A095084

/-- `∩[A095096(n+1), A140475(n+1)]` -/
def P16034472162056430138.Spec : Prop :=
  ∀ n, (P16034472162056430138.a n : ℤ) = A095084 (n + 1)

end A095084

/-! ## A095084.P398252975558540027

`∩[A095096(n+1), A215848(n+1)]`
-/

namespace A095084.P398252975558540027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095084.P398252975558540027

namespace A095084

/-- `∩[A095096(n+1), A215848(n+1)]` -/
def P398252975558540027.Spec : Prop :=
  ∀ n, (P398252975558540027.a n : ℤ) = A095084 (n + 1)

end A095084

/-! ## A095084.P15463562401221607662

`p?[eq[0, A095076(n)]]`
-/

namespace A095084.P15463562401221607662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095084.P15463562401221607662

namespace A095084

/-- `p?[eq[0, A095076(n)]]` -/
def P15463562401221607662.Spec : Prop :=
  ∀ n, (P15463562401221607662.a n : ℤ) = A095084 (n + 1)

end A095084

/-! ## A095084.P10193521835323245614

`p?[n*A095111(n)]`
-/

namespace A095084.P10193521835323245614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A095111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095084.P10193521835323245614

namespace A095084

/-- `p?[n*A095111(n)]` -/
def P10193521835323245614.Spec : Prop :=
  ∀ n, P10193521835323245614.a n = A095084 (n + 1)

end A095084

/-! ## A095084.P12871168637263466837

`filter[A128059(n), A095111(#)]`
-/

namespace A095084.P12871168637263466837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095111 (f1 j).toNat = 1) n)

end

end A095084.P12871168637263466837

namespace A095084

/-- `filter[A128059(n), A095111(#)]` -/
def P12871168637263466837.Spec : Prop :=
  ∀ n, P12871168637263466837.a n = A095084 (n + 1)

end A095084

/-! ## A095084.P10573760517122827512

`filter[A130008(n), A095111(#)]`
-/

namespace A095084.P10573760517122827512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095111 (f1 j).toNat = 1) n)

end

end A095084.P10573760517122827512

namespace A095084

/-- `filter[A130008(n), A095111(#)]` -/
def P10573760517122827512.Spec : Prop :=
  ∀ n, P10573760517122827512.a n = A095084 (n + 1)

end A095084

/-! ## A095084.P15408555231012161692

`eq[A072491(n), A095111(n)]`
-/

namespace A095084.P15408555231012161692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095084.P15408555231012161692

namespace A095084

/-- `eq[A072491(n), A095111(n)]` -/
def P15408555231012161692.Spec : Prop :=
  ∀ n, (P15408555231012161692.a n : ℤ) = A095084 (n + 1)

end A095084

/-!
# A095085: Fib000 primes, i.e., primes p whose Zeckendorf-expansion A014417(p) ends with three zeros.

The programs for A095085, the canonical program `A095085.P14997784795030530110` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095085 has offset 1).

The definition of A095085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095085.P14997784795030530110

`p?[2*floor(ϕ*n)+n-3]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A095085

/-- `p?[2*floor(ϕ*n)+n-3]` -/
def P14997784795030530110.Spec : Prop :=
  ∀ n, P14997784795030530110.a n = A095085 (n + 1)

theorem P14997784795030530110.correct : P14997784795030530110.Spec := by
  intro n
  simp only [A095085, Nat.add_sub_cancel]

end A095085

/-! ## A095085.P7325398393972136830

`or(1, p?[round(ϕ*floor(ϕ*(n+2)+n))])`
-/

namespace A095085.P7325398393972136830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (⌊Real.goldenRatio * (n + 2 : ℝ) + (n : ℝ)⌋ : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A095085.P7325398393972136830

namespace A095085

/-- `or(1, p?[round(ϕ*floor(ϕ*(n+2)+n))])` -/
def P7325398393972136830.Spec : Prop :=
  ∀ n, P7325398393972136830.a n = A095085 (n + 1)

end A095085

/-! ## A095085.P1163909608443232899

`∏{p}[p?[round(ϕ*floor(ϕ*(n+2)+n))], #]`
-/

namespace A095085.P1163909608443232899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (⌊Real.goldenRatio * (n + 2 : ℝ) + (n : ℝ)⌋ : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A095085.P1163909608443232899

namespace A095085

/-- `∏{p}[p?[round(ϕ*floor(ϕ*(n+2)+n))], #]` -/
def P1163909608443232899.Spec : Prop :=
  ∀ n, (P1163909608443232899.a n : ℤ) = A095085 (n + 1)

end A095085

/-! ## A095085.P10391511316233124130

`record[A006530(round(ϕ*floor(ϕ*(n+2)+n)))]`
-/

namespace A095085.P10391511316233124130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.goldenRatio * (⌊Real.goldenRatio * (n + 2 : ℝ) + (n : ℝ)⌋ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095085.P10391511316233124130

namespace A095085

/-- `record[A006530(round(ϕ*floor(ϕ*(n+2)+n)))]` -/
def P10391511316233124130.Spec : Prop :=
  ∀ n, P10391511316233124130.a n = A095085 (n + 1)

end A095085

/-! ## A095085.P8209172888456500484

`record[A020639(round(ϕ*floor(ϕ*(n+2)+n)))]`
-/

namespace A095085.P8209172888456500484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.goldenRatio * (⌊Real.goldenRatio * (n + 2 : ℝ) + (n : ℝ)⌋ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095085.P8209172888456500484

namespace A095085

/-- `record[A020639(round(ϕ*floor(ϕ*(n+2)+n)))]` -/
def P8209172888456500484.Spec : Prop :=
  ∀ n, P8209172888456500484.a n = A095085 (n + 1)

end A095085

/-! ## A095085.P11997233100161004876

`filter[A101345(n+1), A010051(#)]`
-/

namespace A095085.P11997233100161004876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095085.P11997233100161004876

namespace A095085

/-- `filter[A101345(n+1), A010051(#)]` -/
def P11997233100161004876.Spec : Prop :=
  ∀ n, P11997233100161004876.a n = A095085 (n + 1)

end A095085

/-! ## A095085.P2648037230362422245

`filter[A101345(n+1), A323152(#)]`
-/

namespace A095085.P2648037230362422245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A095085.P2648037230362422245

namespace A095085

/-- `filter[A101345(n+1), A323152(#)]` -/
def P2648037230362422245.Spec : Prop :=
  ∀ n, P2648037230362422245.a n = A095085 (n + 1)

end A095085

/-! ## A095085.P478177651079302578

`filter[A101345(n+1), A323153(#)]`
-/

namespace A095085.P478177651079302578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A095085.P478177651079302578

namespace A095085

/-- `filter[A101345(n+1), A323153(#)]` -/
def P478177651079302578.Spec : Prop :=
  ∀ n, P478177651079302578.a n = A095085 (n + 1)

end A095085

/-! ## A095085.P17137117291392846017

`filter[A101345(2*n+1), A340371(#)]`
-/

namespace A095085.P17137117291392846017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A095085.P17137117291392846017

namespace A095085

/-- `filter[A101345(2*n+1), A340371(#)]` -/
def P17137117291392846017.Spec : Prop :=
  ∀ n, P17137117291392846017.a n = A095085 (n + 1)

end A095085

/-! ## A095085.P7367821372787671729

`filter[A101345(2*n+1), A353670(#)]`
-/

namespace A095085.P7367821372787671729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A095085.P7367821372787671729

namespace A095085

/-- `filter[A101345(2*n+1), A353670(#)]` -/
def P7367821372787671729.Spec : Prop :=
  ∀ n, P7367821372787671729.a n = A095085 (n + 1)

end A095085

/-! ## A095085.P9496812537567248114

`filter[A101345(2*n+1), A365716(#)]`
-/

namespace A095085.P9496812537567248114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A095085.P9496812537567248114

namespace A095085

/-- `filter[A101345(2*n+1), A365716(#)]` -/
def P9496812537567248114.Spec : Prop :=
  ∀ n, P9496812537567248114.a n = A095085 (n + 1)

end A095085

/-! ## A095085.P12193287537454228443

`filter[A101345(2*n+1), A379969(#)]`
-/

namespace A095085.P12193287537454228443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A095085.P12193287537454228443

namespace A095085

/-- `filter[A101345(2*n+1), A379969(#)]` -/
def P12193287537454228443.Spec : Prop :=
  ∀ n, P12193287537454228443.a n = A095085 (n + 1)

end A095085

/-! ## A095085.P10230852424987553365

`filter[A101345(2*n+1), A380467(#)]`
-/

namespace A095085.P10230852424987553365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A095085.P10230852424987553365

namespace A095085

/-- `filter[A101345(2*n+1), A380467(#)]` -/
def P10230852424987553365.Spec : Prop :=
  ∀ n, P10230852424987553365.a n = A095085 (n + 1)

end A095085

/-! ## A095085.P13164952070725553297

`∩[A000040(n+1), A101345(n+1)]`
-/

namespace A095085.P13164952070725553297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095085.P13164952070725553297

namespace A095085

/-- `∩[A000040(n+1), A101345(n+1)]` -/
def P13164952070725553297.Spec : Prop :=
  ∀ n, (P13164952070725553297.a n : ℤ) = A095085 (n + 1)

end A095085

/-! ## A095085.P11472868885880079776

`∩[A006005(n+1), A101345(n+1)]`
-/

namespace A095085.P11472868885880079776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095085.P11472868885880079776

namespace A095085

/-- `∩[A006005(n+1), A101345(n+1)]` -/
def P11472868885880079776.Spec : Prop :=
  ∀ n, (P11472868885880079776.a n : ℤ) = A095085 (n + 1)

end A095085

/-! ## A095085.P688316418422127399

`∩[A008578(n+1), A101345(n+1)]`
-/

namespace A095085.P688316418422127399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095085.P688316418422127399

namespace A095085

/-- `∩[A008578(n+1), A101345(n+1)]` -/
def P688316418422127399.Spec : Prop :=
  ∀ n, (P688316418422127399.a n : ℤ) = A095085 (n + 1)

end A095085

/-! ## A095085.P12887488696931100142

`∩[A033946(n+1), A101345(n+1)]`
-/

namespace A095085.P12887488696931100142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095085.P12887488696931100142

namespace A095085

/-- `∩[A033946(n+1), A101345(n+1)]` -/
def P12887488696931100142.Spec : Prop :=
  ∀ n, (P12887488696931100142.a n : ℤ) = A095085 (n + 1)

end A095085

/-! ## A095085.P8946139023092244338

`∩[A045344(n+1), A101345(n+1)]`
-/

namespace A095085.P8946139023092244338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095085.P8946139023092244338

namespace A095085

/-- `∩[A045344(n+1), A101345(n+1)]` -/
def P8946139023092244338.Spec : Prop :=
  ∀ n, (P8946139023092244338.a n : ℤ) = A095085 (n + 1)

end A095085

/-! ## A095085.P4489100362985476163

`∩[A046022(n+1), A101345(n+1)]`
-/

namespace A095085.P4489100362985476163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095085.P4489100362985476163

namespace A095085

/-- `∩[A046022(n+1), A101345(n+1)]` -/
def P4489100362985476163.Spec : Prop :=
  ∀ n, (P4489100362985476163.a n : ℤ) = A095085 (n + 1)

end A095085

/-! ## A095085.P13854210082517309659

`∩[A051948(n+1), A101345(n+1)]`
-/

namespace A095085.P13854210082517309659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095085.P13854210082517309659

namespace A095085

/-- `∩[A051948(n+1), A101345(n+1)]` -/
def P13854210082517309659.Spec : Prop :=
  ∀ n, (P13854210082517309659.a n : ℤ) = A095085 (n + 1)

end A095085

/-!
# A095086: Fib001 primes, i.e., primes p whose Zeckendorf-expansion A014417(p) ends with two zeros and final 1.

The programs for A095086, there is no canonical definition to state claims against.
-/

/-! ## A095086.P881997704636628842

`p?[2*floor(ϕ*(n+2))+n]`
-/

namespace A095086.P881997704636628842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.goldenRatio * (n + 2 : ℝ)⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095086.P881997704636628842

/-! ## A095086.P11732561763754307270

`or(1, p?[A095098(n+1)])`
-/

namespace A095086.P11732561763754307270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A095086.P11732561763754307270

/-! ## A095086.P18225879904413111874

`∏{d}[p?[A095098(n+2)], #]`
-/

namespace A095086.P18225879904413111874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095098 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A095086.P18225879904413111874

/-! ## A095086.P11898585526511421601

`∑{p}[p?[A095098(n+3)], #]`
-/

namespace A095086.P11898585526511421601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095098 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A095086.P11898585526511421601

/-! ## A095086.P11137518166892975190

`eq[A053204(n), A085358(n)]`
-/

namespace A095086.P11137518166892975190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095086.P11137518166892975190

/-!
# A095087: Fib010 primes, i.e., primes p whose Zeckendorf-expansion A014417(p) ends with zero, one and zero.

The programs for A095087, the canonical program `A095087.P11806844873516157844` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095087 has offset 1).

The definition of A095087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095087.P11806844873516157844

`p?[2*(floor(n*ϕ^3)-1)+1]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A095087

/-- `p?[2*(floor(n*ϕ^3)-1)+1]` -/
def P11806844873516157844.Spec : Prop :=
  ∀ n, P11806844873516157844.a n = A095087 (n + 1)

theorem P11806844873516157844.correct : P11806844873516157844.Spec := by
  intro n
  simp only [A095087, Nat.add_sub_cancel]

end A095087

/-! ## A095087.P13833848016230614993

`record[A006530(A035336(n+2))]`
-/

namespace A095087.P13833848016230614993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035336 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095087.P13833848016230614993

namespace A095087

/-- `record[A006530(A035336(n+2))]` -/
def P13833848016230614993.Spec : Prop :=
  ∀ n, P13833848016230614993.a n = A095087 (n + 1)

end A095087

/-! ## A095087.P15419236510141738353

`record[A008472(A035336(n+5))]`
-/

namespace A095087.P15419236510141738353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A035336 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095087.P15419236510141738353

namespace A095087

/-- `record[A008472(A035336(n+5))]` -/
def P15419236510141738353.Spec : Prop :=
  ∀ n, P15419236510141738353.a n = A095087 (n + 1)

end A095087

/-! ## A095087.P6648577069241232827

`filter[A035336(n+2), A010051(#)]`
-/

namespace A095087.P6648577069241232827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095087.P6648577069241232827

namespace A095087

/-- `filter[A035336(n+2), A010051(#)]` -/
def P6648577069241232827.Spec : Prop :=
  ∀ n, P6648577069241232827.a n = A095087 (n + 1)

end A095087

/-! ## A095087.P14752100013321423636

`filter[A035336(2*(n+1)), A323152(#)]`
-/

namespace A095087.P14752100013321423636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A095087.P14752100013321423636

namespace A095087

/-- `filter[A035336(2*(n+1)), A323152(#)]` -/
def P14752100013321423636.Spec : Prop :=
  ∀ n, P14752100013321423636.a n = A095087 (n + 1)

end A095087

/-! ## A095087.P6733451277049355897

`filter[A035336(2*(n+1)), A323153(#)]`
-/

namespace A095087.P6733451277049355897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A095087.P6733451277049355897

namespace A095087

/-- `filter[A035336(2*(n+1)), A323153(#)]` -/
def P6733451277049355897.Spec : Prop :=
  ∀ n, P6733451277049355897.a n = A095087 (n + 1)

end A095087

/-! ## A095087.P3275807907503362602

`filter[A035336(2*(n+1)), A340371(#)]`
-/

namespace A095087.P3275807907503362602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A095087.P3275807907503362602

namespace A095087

/-- `filter[A035336(2*(n+1)), A340371(#)]` -/
def P3275807907503362602.Spec : Prop :=
  ∀ n, P3275807907503362602.a n = A095087 (n + 1)

end A095087

/-! ## A095087.P16179201290620254853

`filter[A035336(2*(n+1)), A353670(#)]`
-/

namespace A095087.P16179201290620254853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A095087.P16179201290620254853

namespace A095087

/-- `filter[A035336(2*(n+1)), A353670(#)]` -/
def P16179201290620254853.Spec : Prop :=
  ∀ n, P16179201290620254853.a n = A095087 (n + 1)

end A095087

/-! ## A095087.P9354833933723054123

`filter[A035336(2*(n+1)), A365716(#)]`
-/

namespace A095087.P9354833933723054123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A095087.P9354833933723054123

namespace A095087

/-- `filter[A035336(2*(n+1)), A365716(#)]` -/
def P9354833933723054123.Spec : Prop :=
  ∀ n, P9354833933723054123.a n = A095087 (n + 1)

end A095087

/-! ## A095087.P13608003892448510949

`filter[A035336(2*(n+1)), A379969(#)]`
-/

namespace A095087.P13608003892448510949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A095087.P13608003892448510949

namespace A095087

/-- `filter[A035336(2*(n+1)), A379969(#)]` -/
def P13608003892448510949.Spec : Prop :=
  ∀ n, P13608003892448510949.a n = A095087 (n + 1)

end A095087

/-! ## A095087.P14889612591989367542

`filter[A035336(2*(n+1)), A380467(#)]`
-/

namespace A095087.P14889612591989367542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A095087.P14889612591989367542

namespace A095087

/-- `filter[A035336(2*(n+1)), A380467(#)]` -/
def P14889612591989367542.Spec : Prop :=
  ∀ n, P14889612591989367542.a n = A095087 (n + 1)

end A095087

/-! ## A095087.P5163852837953676960

`∩[A004139(n+1), A035336(n+1)]`
-/

namespace A095087.P5163852837953676960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095087.P5163852837953676960

namespace A095087

/-- `∩[A004139(n+1), A035336(n+1)]` -/
def P5163852837953676960.Spec : Prop :=
  ∀ n, (P5163852837953676960.a n : ℤ) = A095087 (n + 1)

end A095087

/-! ## A095087.P15589157293635247780

`∩[A006005(n+1), A035336(n+1)]`
-/

namespace A095087.P15589157293635247780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095087.P15589157293635247780

namespace A095087

/-- `∩[A006005(n+1), A035336(n+1)]` -/
def P15589157293635247780.Spec : Prop :=
  ∀ n, (P15589157293635247780.a n : ℤ) = A095087 (n + 1)

end A095087

/-! ## A095087.P1322917437587607496

`∩[A035336(n+1), A065091(n+1)]`
-/

namespace A095087.P1322917437587607496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095087.P1322917437587607496

namespace A095087

/-- `∩[A035336(n+1), A065091(n+1)]` -/
def P1322917437587607496.Spec : Prop :=
  ∀ n, (P1322917437587607496.a n : ℤ) = A095087 (n + 1)

end A095087

/-! ## A095087.P17637153906960999754

`∩[A035336(n+1), A083249(n+1)]`
-/

namespace A095087.P17637153906960999754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095087.P17637153906960999754

namespace A095087

/-- `∩[A035336(n+1), A083249(n+1)]` -/
def P17637153906960999754.Spec : Prop :=
  ∀ n, (P17637153906960999754.a n : ℤ) = A095087 (n + 1)

end A095087

/-! ## A095087.P6915916745321759937

`∩[A035336(n+1), A108719(n+1)]`
-/

namespace A095087.P6915916745321759937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095087.P6915916745321759937

namespace A095087

/-- `∩[A035336(n+1), A108719(n+1)]` -/
def P6915916745321759937.Spec : Prop :=
  ∀ n, (P6915916745321759937.a n : ℤ) = A095087 (n + 1)

end A095087

/-! ## A095087.P7969425667720724413

`∩[A035336(n+1), A140475(n+1)]`
-/

namespace A095087.P7969425667720724413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095087.P7969425667720724413

namespace A095087

/-- `∩[A035336(n+1), A140475(n+1)]` -/
def P7969425667720724413.Spec : Prop :=
  ∀ n, (P7969425667720724413.a n : ℤ) = A095087 (n + 1)

end A095087

/-! ## A095087.P16417968207182370938

`∩[A035336(n+1), A161346(n+1)]`
-/

namespace A095087.P16417968207182370938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095087.P16417968207182370938

namespace A095087

/-- `∩[A035336(n+1), A161346(n+1)]` -/
def P16417968207182370938.Spec : Prop :=
  ∀ n, (P16417968207182370938.a n : ℤ) = A095087 (n + 1)

end A095087

/-! ## A095087.P15240496422746507861

`∩[A035336(n+1), A161428(n+1)]`
-/

namespace A095087.P15240496422746507861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095087.P15240496422746507861

namespace A095087

/-- `∩[A035336(n+1), A161428(n+1)]` -/
def P15240496422746507861.Spec : Prop :=
  ∀ n, (P15240496422746507861.a n : ℤ) = A095087 (n + 1)

end A095087

/-! ## A095087.P8264147089618073302

`∩[A035336(n+1), A171577(n+1)]`
-/

namespace A095087.P8264147089618073302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095087.P8264147089618073302

namespace A095087

/-- `∩[A035336(n+1), A171577(n+1)]` -/
def P8264147089618073302.Spec : Prop :=
  ∀ n, (P8264147089618073302.a n : ℤ) = A095087 (n + 1)

end A095087

/-!
# A095088: Fib100 primes, i.e., primes p whose Zeckendorf-expansion A014417(p) ends with one and two final zeros.

The programs for A095088, the canonical program `A095088.P7844118793563130582` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095088 has offset 1).

The definition of A095088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8064 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095088.P7844118793563130582

`p?[3*floor(n*ϕ²)-(n+2)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A095088

/-- `p?[3*floor(n*ϕ²)-(n+2)]` -/
def P7844118793563130582.Spec : Prop :=
  ∀ n, P7844118793563130582.a n = A095088 (n + 1)

theorem P7844118793563130582.correct : P7844118793563130582.Spec := by
  intro n
  simp only [A095088, Nat.add_sub_cancel]

end A095088

/-! ## A095088.P1757747729935590954

`or(1, p?[2*n+3*floor(ϕ*(n+1))])`
-/

namespace A095088.P1757747729935590954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + 3 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A095088.P1757747729935590954

namespace A095088

/-- `or(1, p?[2*n+3*floor(ϕ*(n+1))])` -/
def P1757747729935590954.Spec : Prop :=
  ∀ n, P1757747729935590954.a n = A095088 (n + 1)

end A095088

/-! ## A095088.P238962948640987282

`record[A001414(3*floor(n*ϕ²+ϕ)-n)]`
-/

namespace A095088.P238962948640987282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (3 * ⌊(n : ℝ) * Real.goldenRatio ^ 2 + Real.goldenRatio⌋ - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095088.P238962948640987282

namespace A095088

/-- `record[A001414(3*floor(n*ϕ²+ϕ)-n)]` -/
def P238962948640987282.Spec : Prop :=
  ∀ n, P238962948640987282.a n = A095088 (n + 1)

end A095088

/-! ## A095088.P1281350829752667964

`∏{d}[p?[A035337(n)], #]`
-/

namespace A095088.P1281350829752667964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A095088.P1281350829752667964

namespace A095088

/-- `∏{d}[p?[A035337(n)], #]` -/
def P1281350829752667964.Spec : Prop :=
  ∀ n, (P1281350829752667964.a n : ℤ) = A095088 (n + 1)

end A095088

/-! ## A095088.P4777020261920550168

`∩[A348283(n+1), A035337(n)]`
-/

namespace A095088.P4777020261920550168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095088.P4777020261920550168

namespace A095088

/-- `∩[A348283(n+1), A035337(n)]` -/
def P4777020261920550168.Spec : Prop :=
  ∀ n, (P4777020261920550168.a n : ℤ) = A095088 (n + 1)

end A095088

/-! ## A095088.P7359804295619295071

`filter[A035337(n), A010051(#)]`
-/

namespace A095088.P7359804295619295071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095088.P7359804295619295071

namespace A095088

/-- `filter[A035337(n), A010051(#)]` -/
def P7359804295619295071.Spec : Prop :=
  ∀ n, P7359804295619295071.a n = A095088 (n + 1)

end A095088

/-! ## A095088.P5828151991145751040

`∩[A000040(n+1), A035337(n)]`
-/

namespace A095088.P5828151991145751040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095088.P5828151991145751040

namespace A095088

/-- `∩[A000040(n+1), A035337(n)]` -/
def P5828151991145751040.Spec : Prop :=
  ∀ n, (P5828151991145751040.a n : ℤ) = A095088 (n + 1)

end A095088

/-! ## A095088.P10214901453546911861

`∩[A004139(n+1), A035337(n)]`
-/

namespace A095088.P10214901453546911861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095088.P10214901453546911861

namespace A095088

/-- `∩[A004139(n+1), A035337(n)]` -/
def P10214901453546911861.Spec : Prop :=
  ∀ n, (P10214901453546911861.a n : ℤ) = A095088 (n + 1)

end A095088

/-! ## A095088.P11426002786856875219

`∩[A006005(n+1), A035337(n)]`
-/

namespace A095088.P11426002786856875219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095088.P11426002786856875219

namespace A095088

/-- `∩[A006005(n+1), A035337(n)]` -/
def P11426002786856875219.Spec : Prop :=
  ∀ n, (P11426002786856875219.a n : ℤ) = A095088 (n + 1)

end A095088

/-! ## A095088.P15959256214458854353

`∩[A008578(n+1), A035337(n)]`
-/

namespace A095088.P15959256214458854353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095088.P15959256214458854353

namespace A095088

/-- `∩[A008578(n+1), A035337(n)]` -/
def P15959256214458854353.Spec : Prop :=
  ∀ n, (P15959256214458854353.a n : ℤ) = A095088 (n + 1)

end A095088

/-! ## A095088.P10052510303855832021

`∩[A045319(n+1), A035337(n)]`
-/

namespace A095088.P10052510303855832021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095088.P10052510303855832021

namespace A095088

/-- `∩[A045319(n+1), A035337(n)]` -/
def P10052510303855832021.Spec : Prop :=
  ∀ n, (P10052510303855832021.a n : ℤ) = A095088 (n + 1)

end A095088

/-! ## A095088.P9044025448228409848

`∩[A046022(n+1), A035337(n)]`
-/

namespace A095088.P9044025448228409848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095088.P9044025448228409848

namespace A095088

/-- `∩[A046022(n+1), A035337(n)]` -/
def P9044025448228409848.Spec : Prop :=
  ∀ n, (P9044025448228409848.a n : ℤ) = A095088 (n + 1)

end A095088

/-! ## A095088.P12805004509098370082

`∩[A051948(n+1), A035337(n)]`
-/

namespace A095088.P12805004509098370082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095088.P12805004509098370082

namespace A095088

/-- `∩[A051948(n+1), A035337(n)]` -/
def P12805004509098370082.Spec : Prop :=
  ∀ n, (P12805004509098370082.a n : ℤ) = A095088 (n + 1)

end A095088

/-! ## A095088.P16285360145368995647

`∩[A053813(n+1), A035337(n)]`
-/

namespace A095088.P16285360145368995647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095088.P16285360145368995647

namespace A095088

/-- `∩[A053813(n+1), A035337(n)]` -/
def P16285360145368995647.Spec : Prop :=
  ∀ n, (P16285360145368995647.a n : ℤ) = A095088 (n + 1)

end A095088

/-! ## A095088.P3206038961893213960

`∩[A060634(n+1), A035337(n)]`
-/

namespace A095088.P3206038961893213960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095088.P3206038961893213960

namespace A095088

/-- `∩[A060634(n+1), A035337(n)]` -/
def P3206038961893213960.Spec : Prop :=
  ∀ n, (P3206038961893213960.a n : ℤ) = A095088 (n + 1)

end A095088

/-! ## A095088.P1559083939851011557

`∩[A062972(n+1), A035337(n)]`
-/

namespace A095088.P1559083939851011557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095088.P1559083939851011557

namespace A095088

/-- `∩[A062972(n+1), A035337(n)]` -/
def P1559083939851011557.Spec : Prop :=
  ∀ n, (P1559083939851011557.a n : ℤ) = A095088 (n + 1)

end A095088

/-! ## A095088.P1441751934267235562

`∩[A064728(n+1), A035337(n)]`
-/

namespace A095088.P1441751934267235562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095088.P1441751934267235562

namespace A095088

/-- `∩[A064728(n+1), A035337(n)]` -/
def P1441751934267235562.Spec : Prop :=
  ∀ n, (P1441751934267235562.a n : ℤ) = A095088 (n + 1)

end A095088

/-! ## A095088.P15047704670920429240

`∩[A065091(n+1), A035337(n)]`
-/

namespace A095088.P15047704670920429240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095088.P15047704670920429240

namespace A095088

/-- `∩[A065091(n+1), A035337(n)]` -/
def P15047704670920429240.Spec : Prop :=
  ∀ n, (P15047704670920429240.a n : ℤ) = A095088 (n + 1)

end A095088

/-! ## A095088.P3833946685304149664

`∩[A065396(n+1), A035337(n)]`
-/

namespace A095088.P3833946685304149664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095088.P3833946685304149664

namespace A095088

/-- `∩[A065396(n+1), A035337(n)]` -/
def P3833946685304149664.Spec : Prop :=
  ∀ n, (P3833946685304149664.a n : ℤ) = A095088 (n + 1)

end A095088

/-! ## A095088.P3848807659143855262

`∩[A066050(n+1), A035337(n)]`
-/

namespace A095088.P3848807659143855262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095088.P3848807659143855262

namespace A095088

/-- `∩[A066050(n+1), A035337(n)]` -/
def P3848807659143855262.Spec : Prop :=
  ∀ n, (P3848807659143855262.a n : ℤ) = A095088 (n + 1)

end A095088

/-!
# A095089: Fib101 primes, i.e., primes p whose Zeckendorf-expansion A014417(p) ends as one, zero, one.

The programs for A095089, there is no canonical definition to state claims against.
-/

/-! ## A095089.P5581096310861876394

`p?[3*floor(n*ϕ²)-(n+1)]`
-/

namespace A095089.P5581096310861876394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095089.P5581096310861876394

/-! ## A095089.P16720281788145903955

`or(1, p?[A134860(n+1)])`
-/

namespace A095089.P16720281788145903955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A095089.P16720281788145903955

/-! ## A095089.P2176593658090682951

`∏{d}[p?[A134860(n+2)], #]`
-/

namespace A095089.P2176593658090682951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134860 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A095089.P2176593658090682951

/-! ## A095089.P3653765915171256936

`∏{p}[p?[A035337(n)+1], #]`
-/

namespace A095089.P3653765915171256936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A095089.P3653765915171256936

/-! ## A095089.P10698078849046446282

`A001414(p?[A035337(n)+1])`
-/

namespace A095089.P10698078849046446282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095089.P10698078849046446282

/-!
# A095090: Number of 4k+3 integers in range ]2^n,2^(n+1)] whose Jacobi-vector is a Motzkin-path (A095100).

The programs for A095090, there is no canonical definition to state claims against.
-/

/-! ## A095090.P12285161988344283127

`ceil(2^(n-1))-A095091(n+1)`
-/

namespace A095090.P12285161988344283127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A095091 (n + 1)

end

end A095090.P12285161988344283127

/-! ## A095090.P11448875659953357299

`abs(A095091(n+1)-A011782(n))`
-/

namespace A095090.P11448875659953357299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A095091 (n + 1) - A011782 n|

end

end A095090.P11448875659953357299

/-! ## A095090.P17950775610163199525

`A000027(A011782(n)-A095091(n+1))`
-/

namespace A095090.P17950775610163199525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A011782 n - A095091 (n + 1)).toNat

end

end A095090.P17950775610163199525

/-! ## A095090.P2524485734700203944

`A028310(A011782(n)-A095091(n+1))`
-/

namespace A095090.P2524485734700203944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A011782 n - A095091 (n + 1)).toNat

end

end A095090.P2524485734700203944

/-! ## A095090.P6781443380743527297

`A028310(A131577(n)-A095091(n+1))`
-/

namespace A095090.P6781443380743527297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A131577 n - A095091 (n + 1)).toNat

end

end A095090.P6781443380743527297

/-!
# A095091: Number of 4k+3 integers in range [2^n, 2^(n+1)] whose Jacobi-vector is not a valid Motzkin-path (A095101).

The programs for A095091, there is no canonical definition to state claims against.
-/

/-! ## A095091.P14526800834567884720

`Δ[floor(2^(n-1))]-A095090(n+1)`
-/

namespace A095091.P14526800834567884720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095090 (n + 1)

end

end A095091.P14526800834567884720

/-! ## A095091.P11511500023125506553

`abs(A095090(n+1)-A011782(n))`
-/

namespace A095091.P11511500023125506553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A095090 (n + 1) - A011782 n|

end

end A095091.P11511500023125506553

/-! ## A095091.P7345223380677315019

`A011782(n)-(A103822(n)+A055086(A135336(n)))`
-/

namespace A095091.P7345223380677315019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (A103822 n + A055086 (A135336 n).toNat)

end

end A095091.P7345223380677315019

/-! ## A095091.P17471062541840046114

`A338236(A369296(n))`
-/

namespace A095091.P17471062541840046114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338236 (A369296 n).toNat

end

end A095091.P17471062541840046114

/-! ## A095091.P4085937398882871061

`A166018(A008930(n))-1`
-/

namespace A095091.P4085937398882871061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166018 (A008930 n).toNat - 1

end

end A095091.P4085937398882871061

/-!
# A095092: Number of 4k+3 primes whose Legendre-vector is a Dyck-path (A095102) in range ]2^n,2^(n+1)].

The programs for A095092, there is no canonical definition to state claims against.
-/

/-! ## A095092.P3198972191892368645

`A095008(n+1)-A095093(n+1)`
-/

namespace A095092.P3198972191892368645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095008 (n + 1) - A095093 (n + 1)

end

end A095092.P3198972191892368645

/-! ## A095092.P12404566868967904759

`A095094(n+1)-char[A203509(n)]`
-/

namespace A095092.P12404566868967904759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203509 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095094 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095092.P12404566868967904759

/-! ## A095092.P4874955527717590305

`A095094(n+1)-char[A023175(n+1)]`
-/

namespace A095092.P4874955527717590305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023175 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095094 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095092.P4874955527717590305

/-! ## A095092.P17981128523210223372

`A095094(n+1)-char[A063184(n+1)]`
-/

namespace A095092.P17981128523210223372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063184 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095094 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095092.P17981128523210223372

/-! ## A095092.P10349714458402515389

`A095094(n+1)-char[A290606(n+1)]`
-/

namespace A095092.P10349714458402515389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290606 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095094 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095092.P10349714458402515389

/-!
# A095093: Number of 4k+3 primes whose Legendre-vector is not Dyck-path (A095103) in range ]2^n,2^(n+1)].

The programs for A095093, there is no canonical definition to state claims against.
-/

/-! ## A095093.P10901900305726988208

`A095008(n+1)-A095092(n+1)`
-/

namespace A095093.P10901900305726988208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095008 (n + 1) - A095092 (n + 1)

end

end A095093.P10901900305726988208

/-! ## A095093.P4412377852094256767

`A095008(n+1)+char[A203509(n)]-A095094(n+1)`
-/

namespace A095093.P4412377852094256767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203509 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095008 (n + 1) + (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A095094 (n + 1))

end

end A095093.P4412377852094256767

/-! ## A095093.P12536703274657021584

`A036378(n+1)-(A095092(n+1)+A095007(n+1))`
-/

namespace A095093.P12536703274657021584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - (A095092 (n + 1) + A095007 (n + 1))

end

end A095093.P12536703274657021584

/-! ## A095093.P10058164346295735858

`A095010(n+1)+A095012(n+1)-A095092(n+1)`
-/

namespace A095093.P10058164346295735858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095010 (n + 1) + (A095012 (n + 1) - A095092 (n + 1))

end

end A095093.P10058164346295735858

/-! ## A095093.P11353194721469765916

`round(A095107(n+1)/A095358(n+1))-A095092(n+1)`
-/

namespace A095093.P11353194721469765916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A095107 (n + 1) : ℚ) / (A095358 (n + 1) : ℚ)) - A095092 (n + 1)

end

end A095093.P11353194721469765916

/-!
# A095094: Number of A080114-primes in range ]2^n,2^(n+1)].

The programs for A095094, there is no canonical definition to state claims against.
-/

/-! ## A095094.P9163751641950505049

`A036378(n+1)-A095095(n+1)`
-/

namespace A095094.P9163751641950505049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095095 (n + 1)

end

end A095094.P9163751641950505049

/-! ## A095094.P3012497165461016700

`A095092(n+1)+char[A203509(n)]`
-/

namespace A095094.P3012497165461016700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203509 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095092 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095094.P3012497165461016700

/-! ## A095094.P4105793005397738673

`A095092(n+1)+char[A063184(n+1)]`
-/

namespace A095094.P4105793005397738673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063184 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095092 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095094.P4105793005397738673

/-! ## A095094.P572147135561476608

`A095092(n+1)+char[A290606(n+1)]`
-/

namespace A095094.P572147135561476608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290606 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095092 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095094.P572147135561476608

/-! ## A095094.P17639881020267077936

`A095092(n+1)+A000007(A000931(n))`
-/

namespace A095094.P17639881020267077936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095092 (n + 1) + A000007 (A000931 n).toNat

end

end A095094.P17639881020267077936

/-!
# A095095: Number of A080115-primes in range [2^n,2^(n+1)].

The programs for A095095, there is no canonical definition to state claims against.
-/

/-! ## A095095.P17882470844354596126

`A036378(n+1)-A095094(n+1)`
-/

namespace A095095.P17882470844354596126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095094 (n + 1)

end

end A095095.P17882470844354596126

/-! ## A095095.P16965290385484137772

`A062778(A017910(2*(n+2)))-A095094(n+1)`
-/

namespace A095095.P16965290385484137772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062778 (A017910 (2 * (n + 2))).toNat - A095094 (n + 1)

end

end A095095.P16965290385484137772

/-! ## A095095.P6959217918482272094

`A010049(n)-A070176(A080929(n))`
-/

namespace A095095.P6959217918482272094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n - A070176 (A080929 n).toNat

end

end A095095.P6959217918482272094

/-! ## A095095.P7029202204626014397

`xor(A039982(A000166(n)), A374518(n))`
-/

namespace A095095.P7029202204626014397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039982 (A000166 n).toNat) (A374518 n)

end

end A095095.P7029202204626014397

/-! ## A095095.P3702999644011075735

`A000196(A237670(n+1))-A089408(n)`
-/

namespace A095095.P3702999644011075735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A237670 (n + 1)).toNat - A089408 n

end

end A095095.P3702999644011075735

/-!
# A095096: Fibevil numbers: those numbers k for which the parity of 1-fibits in Zeckendorf expansion A014417(k) is even, i.e., for which A095076(k) = 0.

The programs for A095096, the canonical program `A095096.P2257537572395009446` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095096 has offset 1).

The definition of A095096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095096.P15371785802071197514

`comp[A020899(n+1)]`
-/

namespace A095096.P15371785802071197514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095096.P15371785802071197514

namespace A095096

/-- `comp[A020899(n+1)]` -/
def P15371785802071197514.Spec : Prop :=
  ∀ n, (P15371785802071197514.a n : ℤ) = A095096 (n + 1)

end A095096

/-! ## A095096.P2802488738137370768

`∪[A337287(n+1), A337288(n+1)]`
-/

namespace A095096.P2802488738137370768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095096.P2802488738137370768

namespace A095096

/-- `∪[A337287(n+1), A337288(n+1)]` -/
def P2802488738137370768.Spec : Prop :=
  ∀ n, (P2802488738137370768.a n : ℤ) = A095096 (n + 1)

end A095096

/-! ## A095096.P2257537572395009446

`eq[1, A001511(ceil(A104324(n)/2)+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A095096

/-- `eq[1, A001511(ceil(A104324(n)/2)+1)]` -/
def P2257537572395009446.Spec : Prop :=
  ∀ n, (P2257537572395009446.a n : ℤ) = A095096 (n + 1)

theorem P2257537572395009446.correct : P2257537572395009446.Spec := by
  intro n
  simp only [A095096, Nat.add_sub_cancel]

end A095096

/-! ## A095096.P8442732434130764671

`eq[1, A227351(n)%2+1]`
-/

namespace A095096.P8442732434130764671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227351 n) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095096.P8442732434130764671

namespace A095096

/-- `eq[1, A227351(n)%2+1]` -/
def P8442732434130764671.Spec : Prop :=
  ∀ n, (P8442732434130764671.a n : ℤ) = A095096 (n + 1)

end A095096

/-! ## A095096.P16396163950349111952

`eq[A343647(n)+1, A105774(n+1)]`
-/

namespace A095096.P16396163950349111952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343647 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105774 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095096.P16396163950349111952

namespace A095096

/-- `eq[A343647(n)+1, A105774(n+1)]` -/
def P16396163950349111952.Spec : Prop :=
  ∀ n, (P16396163950349111952.a n : ℤ) = A095096 (n + 1)

end A095096

/-! ## A095096.P2532461471678002100

`eq[0, A095076(n)]`
-/

namespace A095096.P2532461471678002100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095096.P2532461471678002100

namespace A095096

/-- `eq[0, A095076(n)]` -/
def P2532461471678002100.Spec : Prop :=
  ∀ n, (P2532461471678002100.a n : ℤ) = A095096 (n + 1)

end A095096

/-! ## A095096.P18103723854778894935

`eq[1, A095111(n)]`
-/

namespace A095096.P18103723854778894935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095096.P18103723854778894935

namespace A095096

/-- `eq[1, A095111(n)]` -/
def P18103723854778894935.Spec : Prop :=
  ∀ n, (P18103723854778894935.a n : ℤ) = A095096 (n + 1)

end A095096

/-! ## A095096.P3603585147396604834

`eq[0, A007895(n)%2]`
-/

namespace A095096.P3603585147396604834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007895 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095096.P3603585147396604834

namespace A095096

/-- `eq[0, A007895(n)%2]` -/
def P3603585147396604834.Spec : Prop :=
  ∀ n, (P3603585147396604834.a n : ℤ) = A095096 (n + 1)

end A095096

/-! ## A095096.P5606562685282780802

`eq[2, gcd(2, A219641(n)+n)]`
-/

namespace A095096.P5606562685282780802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A219641 n + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095096.P5606562685282780802

namespace A095096

/-- `eq[2, gcd(2, A219641(n)+n)]` -/
def P5606562685282780802.Spec : Prop :=
  ∀ n, (P5606562685282780802.a n : ℤ) = A095096 (n + 1)

end A095096

/-! ## A095096.P1727128727370371664

`eq[0, A120324(n-A219641(n))]`
-/

namespace A095096.P1727128727370371664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120324 ((n : ℤ) - A219641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095096.P1727128727370371664

namespace A095096

/-- `eq[0, A120324(n-A219641(n))]` -/
def P1727128727370371664.Spec : Prop :=
  ∀ n, (P1727128727370371664.a n : ℤ) = A095096 (n + 1)

end A095096

/-! ## A095096.P10742391563689856463

`filter[A089389(2*(n+1)), A095111(#)]`
-/

namespace A095096.P10742391563689856463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089389 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095111 (f1 j).toNat = 1) n)

end

end A095096.P10742391563689856463

namespace A095096

/-- `filter[A089389(2*(n+1)), A095111(#)]` -/
def P10742391563689856463.Spec : Prop :=
  ∀ n, P10742391563689856463.a n = A095096 (n + 1)

end A095096

/-! ## A095096.P6323279672414641734

`lt[A232723(n+1), 1]`
-/

namespace A095096.P6323279672414641734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232723 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095096.P6323279672414641734

namespace A095096

/-- `lt[A232723(n+1), 1]` -/
def P6323279672414641734.Spec : Prop :=
  ∀ n, (P6323279672414641734.a n : ℤ) = A095096 (n + 1)

end A095096

/-! ## A095096.P3342810491467717634

`lt[2, A020639(A288625(n+1)+1)]`
-/

namespace A095096.P3342810491467717634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A288625 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A095096.P3342810491467717634

namespace A095096

/-- `lt[2, A020639(A288625(n+1)+1)]` -/
def P3342810491467717634.Spec : Prop :=
  ∀ n, (P3342810491467717634.a n : ℤ) = A095096 (n + 1)

end A095096

/-! ## A095096.P14527709979294873071

`lt[2, A020639(A288601(n+2))]`
-/

namespace A095096.P14527709979294873071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A288601 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A095096.P14527709979294873071

namespace A095096

/-- `lt[2, A020639(A288601(n+2))]` -/
def P14527709979294873071.Spec : Prop :=
  ∀ n, (P14527709979294873071.a n : ℤ) = A095096 (n + 1)

end A095096

/-! ## A095096.P852502952417984396

`lt[A095076(n), A001222(A095074(n+1))]`
-/

namespace A095096.P852502952417984396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A095074 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095096.P852502952417984396

namespace A095096

/-- `lt[A095076(n), A001222(A095074(n+1))]` -/
def P852502952417984396.Spec : Prop :=
  ∀ n, (P852502952417984396.a n : ℤ) = A095096 (n + 1)

end A095096

/-! ## A095096.P2432222446165248859

`filter[A092942(n), A095111(#)]`
-/

namespace A095096.P2432222446165248859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095111 (f1 j).toNat = 1) n)

end

end A095096.P2432222446165248859

namespace A095096

/-- `filter[A092942(n), A095111(#)]` -/
def P2432222446165248859.Spec : Prop :=
  ∀ n, P2432222446165248859.a n = A095096 (n + 1)

end A095096

/-! ## A095096.P12428246230711657292

`lt[A095076(n), A001222(A095070(n+1))]`
-/

namespace A095096.P12428246230711657292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A095070 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095096.P12428246230711657292

namespace A095096

/-- `lt[A095076(n), A001222(A095070(n+1))]` -/
def P12428246230711657292.Spec : Prop :=
  ∀ n, (P12428246230711657292.a n : ℤ) = A095096 (n + 1)

end A095096

/-! ## A095096.P16584096570718535041

`filter[A179820(n), A095111(#)]`
-/

namespace A095096.P16584096570718535041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179820 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095111 (f1 j).toNat = 1) n)

end

end A095096.P16584096570718535041

namespace A095096

/-- `filter[A179820(n), A095111(#)]` -/
def P16584096570718535041.Spec : Prop :=
  ∀ n, P16584096570718535041.a n = A095096 (n + 1)

end A095096

/-! ## A095096.P11128865339045585467

`filter[A267530(2*n), A095111(#)]`
-/

namespace A095096.P11128865339045585467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267530 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095111 (f1 j).toNat = 1) n)

end

end A095096.P11128865339045585467

namespace A095096

/-- `filter[A267530(2*n), A095111(#)]` -/
def P11128865339045585467.Spec : Prop :=
  ∀ n, P11128865339045585467.a n = A095096 (n + 1)

end A095096

/-! ## A095096.P1342061031430392197

`lt[n, A279270(A219641(n)+n)]`
-/

namespace A095096.P1342061031430392197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279270 (A219641 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A095096.P1342061031430392197

namespace A095096

/-- `lt[n, A279270(A219641(n)+n)]` -/
def P1342061031430392197.Spec : Prop :=
  ∀ n, (P1342061031430392197.a n : ℤ) = A095096 (n + 1)

end A095096

/-!
# A095098: Fib001 numbers: those k for which the Zeckendorf expansion A014417(k) ends with two zeros and a final one.

The programs for A095098, the canonical program `A095098.P13291382261606550439` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095098 has offset 1).

The definition of A095098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095098.P17927526222615950828

`2*floor(ϕ*(n+2))+n`
-/

namespace A095098.P17927526222615950828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.goldenRatio * (n + 2 : ℝ)⌋ + (n : ℤ)

end

end A095098.P17927526222615950828

namespace A095098

/-- `2*floor(ϕ*(n+2))+n` -/
def P17927526222615950828.Spec : Prop :=
  ∀ n, P17927526222615950828.a n = A095098 (n + 1)

end A095098

/-! ## A095098.P15248179578118269600

`A134859(n+2)`
-/

namespace A095098.P15248179578118269600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (n + 2)

end

end A095098.P15248179578118269600

namespace A095098

/-- `A134859(n+2)` -/
def P15248179578118269600.Spec : Prop :=
  ∀ n, P15248179578118269600.a n = A095098 (n + 1)

end A095098

/-! ## A095098.P16456556894914175727

`floor(A035337(n+1)/ϕ)`
-/

namespace A095098.P16456556894914175727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035337 (n + 1) : ℝ) / Real.goldenRatio⌋

end

end A095098.P16456556894914175727

namespace A095098

/-- `floor(A035337(n+1)/ϕ)` -/
def P16456556894914175727.Spec : Prop :=
  ∀ n, P16456556894914175727.a n = A095098 (n + 1)

end A095098

/-! ## A095098.P4854408399707261438

`abs(A101345(n+1)+C(n+1, n)-n)`
-/

namespace A095098.P4854408399707261438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A101345 (n + 1) + (Nat.choose (n + 1) n : ℤ) - (n : ℤ)|

end

end A095098.P4854408399707261438

namespace A095098

/-- `abs(A101345(n+1)+C(n+1, n)-n)` -/
def P4854408399707261438.Spec : Prop :=
  ∀ n, P4854408399707261438.a n = A095098 (n + 1)

end A095098

/-! ## A095098.P14560167329011771436

`A000027(A101345(n+1)+1)`
-/

namespace A095098.P14560167329011771436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A101345 (n + 1) + 1).toNat

end

end A095098.P14560167329011771436

namespace A095098

/-- `A000027(A101345(n+1)+1)` -/
def P14560167329011771436.Spec : Prop :=
  ∀ n, P14560167329011771436.a n = A095098 (n + 1)

end A095098

/-! ## A095098.P10726836254436014367

`A003622(A026273(n+1)+2)`
-/

namespace A095098.P10726836254436014367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A026273 (n + 1) + 2).toNat

end

end A095098.P10726836254436014367

namespace A095098

/-- `A003622(A026273(n+1)+2)` -/
def P10726836254436014367.Spec : Prop :=
  ∀ n, P10726836254436014367.a n = A095098 (n + 1)

end A095098

/-! ## A095098.P13291382261606550439

`A003622(A026274(n+1)-n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A095098

/-- `A003622(A026274(n+1)-n)` -/
def P13291382261606550439.Spec : Prop :=
  ∀ n, P13291382261606550439.a n = A095098 (n + 1)

theorem P13291382261606550439.correct : P13291382261606550439.Spec := by
  intro n
  simp only [A095098, Nat.add_sub_cancel]

end A095098

/-! ## A095098.P14265232280337135668

`A003622(A005206(n+1)+n+2)`
-/

namespace A095098.P14265232280337135668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A005206 (n + 1) + (n + 2 : ℤ)).toNat

end

end A095098.P14265232280337135668

namespace A095098

/-- `A003622(A005206(n+1)+n+2)` -/
def P14265232280337135668.Spec : Prop :=
  ∀ n, P14265232280337135668.a n = A095098 (n + 1)

end A095098

/-! ## A095098.P17000253102387310153

`A003622(A003622(n+2)-(n+1))`
-/

namespace A095098.P17000253102387310153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A003622 (n + 2) - (n + 1 : ℤ)).toNat

end

end A095098.P17000253102387310153

namespace A095098

/-- `A003622(A003622(n+2)-(n+1))` -/
def P17000253102387310153.Spec : Prop :=
  ∀ n, P17000253102387310153.a n = A095098 (n + 1)

end A095098

/-! ## A095098.P16074724961426469694

`abs(A023443(n)-A101345(n+1)-n)`
-/

namespace A095098.P16074724961426469694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023443 n - A101345 (n + 1) - (n : ℤ)|

end

end A095098.P16074724961426469694

namespace A095098

/-- `abs(A023443(n)-A101345(n+1)-n)` -/
def P16074724961426469694.Spec : Prop :=
  ∀ n, P16074724961426469694.a n = A095098 (n + 1)

end A095098

/-! ## A095098.P5678971354966127915

`Δ[∑[A035336(n+1)]-n]`
-/

namespace A095098.P5678971354966127915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095098.P5678971354966127915

namespace A095098

/-- `Δ[∑[A035336(n+1)]-n]` -/
def P5678971354966127915.Spec : Prop :=
  ∀ n, P5678971354966127915.a n = A095098 (n + 1)

end A095098

/-! ## A095098.P14745441591218233339

`A003622(A000201(n+2))`
-/

namespace A095098.P14745441591218233339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A000201 (n + 2)).toNat

end

end A095098.P14745441591218233339

namespace A095098

/-- `A003622(A000201(n+2))` -/
def P14745441591218233339.Spec : Prop :=
  ∀ n, P14745441591218233339.a n = A095098 (n + 1)

end A095098

/-! ## A095098.P11302344829069656100

`A003622(A066096(n+2))`
-/

namespace A095098.P11302344829069656100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A066096 (n + 2)).toNat

end

end A095098.P11302344829069656100

namespace A095098

/-- `A003622(A066096(n+2))` -/
def P11302344829069656100.Spec : Prop :=
  ∀ n, P11302344829069656100.a n = A095098 (n + 1)

end A095098

/-! ## A095098.P14161777603733485470

`A003622(A022342(n+2)+1)`
-/

namespace A095098.P14161777603733485470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A022342 (n + 2) + 1).toNat

end

end A095098.P14161777603733485470

namespace A095098

/-- `A003622(A022342(n+2)+1)` -/
def P14161777603733485470.Spec : Prop :=
  ∀ n, P14161777603733485470.a n = A095098 (n + 1)

end A095098

/-! ## A095098.P12982948124706166037

`A003622(A026351(n+2)-1)`
-/

namespace A095098.P12982948124706166037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A026351 (n + 2) - 1).toNat

end

end A095098.P12982948124706166037

namespace A095098

/-- `A003622(A026351(n+2)-1)` -/
def P12982948124706166037.Spec : Prop :=
  ∀ n, P12982948124706166037.a n = A095098 (n + 1)

end A095098

/-! ## A095098.P1522187184712665530

`A003622(A019446(n+2)+n+1)`
-/

namespace A095098.P1522187184712665530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A019446 (n + 2) + (n + 1 : ℤ)).toNat

end

end A095098.P1522187184712665530

namespace A095098

/-- `A003622(A019446(n+2)+n+1)` -/
def P1522187184712665530.Spec : Prop :=
  ∀ n, P1522187184712665530.a n = A095098 (n + 1)

end A095098

/-! ## A095098.P17974696754382014342

`record[Δ[A026275(n+2)]-1]`
-/

namespace A095098.P17974696754382014342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026275 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095098.P17974696754382014342

namespace A095098

/-- `record[Δ[A026275(n+2)]-1]` -/
def P17974696754382014342.Spec : Prop :=
  ∀ n, P17974696754382014342.a n = A095098 (n + 1)

end A095098

/-! ## A095098.P13540392651262113682

`A003259(∑[A014675(n)]+1)`
-/

namespace A095098.P13540392651262113682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003259 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A095098.P13540392651262113682

namespace A095098

/-- `A003259(∑[A014675(n)]+1)` -/
def P13540392651262113682.Spec : Prop :=
  ∀ n, P13540392651262113682.a n = A095098 (n + 1)

end A095098

/-! ## A095098.P323432220873814306

`A003259(A005206(n+1)+n+2)`
-/

namespace A095098.P323432220873814306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003259 (A005206 (n + 1) + (n + 2 : ℤ)).toNat

end

end A095098.P323432220873814306

namespace A095098

/-- `A003259(A005206(n+1)+n+2)` -/
def P323432220873814306.Spec : Prop :=
  ∀ n, P323432220873814306.a n = A095098 (n + 1)

end A095098

