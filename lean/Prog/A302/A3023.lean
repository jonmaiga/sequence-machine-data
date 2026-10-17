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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B002.C005
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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

/-!
# A302300: a(n) = Sum_{p in P} (Sum_{k_j = 1} 1)^2, where P is the set of partitions of n, and the k_j are the frequencies in p.

The programs for A302300, there is no canonical definition to state claims against.
-/

/-! ## A302300.P7392441181121866357

`A336426(A336414(n))-A336392(n+5)`
-/

namespace A302300.P7392441181121866357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336426 (A336414 n).toNat - A336392 (n + 5)

end

end A302300.P7392441181121866357

/-!
# A302301: Number of ways to write n as a sum of two distinct semiprimes.

The programs for A302301, there is no canonical definition to state claims against.
-/

/-! ## A302301.P2469621234171374079

`floor(A199331(A028310(n))/2)`
-/

namespace A302301.P2469621234171374079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199331 (A028310 n).toNat : ℚ) / 2⌋

end

end A302301.P2469621234171374079

/-! ## A302301.P13854261911934887509

`A072931(n)-char[A075818(n+1)]`
-/

namespace A302301.P13854261911934887509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A302301.P13854261911934887509

/-! ## A302301.P4161459745623338673

`A004526(A199331(A028310(n)))`
-/

namespace A302301.P4161459745623338673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A199331 (A028310 n).toNat).toNat

end

end A302301.P4161459745623338673

/-! ## A302301.P2588353871956850413

`A199331(A028310(n))-A072931(n)`
-/

namespace A302301.P2588353871956850413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199331 (A028310 n).toNat - A072931 n

end

end A302301.P2588353871956850413

/-! ## A302301.P5872518717052731702

`A004526(A199331(A233583(n+1)))`
-/

namespace A302301.P5872518717052731702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A199331 (A233583 (n + 1)).toNat).toNat

end

end A302301.P5872518717052731702

/-! ## A302301.P10943302921268901963

`A199331(A233583(n+1))-A072931(n)`
-/

namespace A302301.P10943302921268901963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199331 (A233583 (n + 1)).toNat - A072931 n

end

end A302301.P10943302921268901963

/-!
# A302302: Number of triples (i,j,k) such that i+j+k > 0 with -n <= i,j,k <= n.

The programs for A302302, the canonical program `A302302.P16252651853131304023` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302302 has offset 0).

The definition of A302302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302302.P16252651853131304023

`n*(3+9*n+8*n²)/2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A302302

/-- `n*(3+9*n+8*n²)/2` -/
def P16252651853131304023.Spec : Prop :=
  ∀ n, P16252651853131304023.a n = (A302302 n : ℚ)

end A302302

/-! ## A302302.P8655156795818641969

`Δ[(2*n²+n)*C(n, 2)]`
-/

namespace A302302.P8655156795818641969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 + n) * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A302302.P8655156795818641969

namespace A302302

/-- `Δ[(2*n²+n)*C(n, 2)]` -/
def P8655156795818641969.Spec : Prop :=
  ∀ n, P8655156795818641969.a n = A302302 n

end A302302

/-! ## A302302.P2370596322513321570

`∑[A062783(n)]+n`
-/

namespace A302302.P2370596322513321570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A302302.P2370596322513321570

namespace A302302

/-- `∑[A062783(n)]+n` -/
def P2370596322513321570.Spec : Prop :=
  ∀ n, P2370596322513321570.a n = A302302 n

end A302302

/-! ## A302302.P14212409942210959497

`A084367(n)+∑[n]`
-/

namespace A302302.P14212409942210959497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084367 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A302302.P14212409942210959497

namespace A302302

/-- `A084367(n)+∑[n]` -/
def P14212409942210959497.Spec : Prop :=
  ∀ n, P14212409942210959497.a n = A302302 n

end A302302

/-! ## A302302.P10359634795629803357

`3*A132124(n)+n`
-/

namespace A302302.P10359634795629803357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A132124 n + (n : ℤ)

end

end A302302.P10359634795629803357

namespace A302302

/-- `3*A132124(n)+n` -/
def P10359634795629803357.Spec : Prop :=
  ∀ n, P10359634795629803357.a n = A302302 n

end A302302

/-! ## A302302.P728094830433285764

`A220443(n)+n^3`
-/

namespace A302302.P728094830433285764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 n + (n ^ 3 : ℤ)

end

end A302302.P728094830433285764

namespace A302302

/-- `A220443(n)+n^3` -/
def P728094830433285764.Spec : Prop :=
  ∀ n, P728094830433285764.a n = A302302 n

end A302302

/-! ## A302302.P6018770021350126560

`∑[A396288(n)]-n²`
-/

namespace A302302.P6018770021350126560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A302302.P6018770021350126560

namespace A302302

/-- `∑[A396288(n)]-n²` -/
def P6018770021350126560.Spec : Prop :=
  ∀ n, P6018770021350126560.a n = A302302 n

end A302302

/-! ## A302302.P6974348903423576003

`∑[A244802(n+1)]-1`
-/

namespace A302302.P6974348903423576003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A302302.P6974348903423576003

namespace A302302

/-- `∑[A244802(n+1)]-1` -/
def P6974348903423576003.Spec : Prop :=
  ∀ n, P6974348903423576003.a n = A302302 n

end A302302

/-! ## A302302.P2186269092288161358

`Δ[C(n, 2)*A014105(n)]`
-/

namespace A302302.P2186269092288161358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A014105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302302.P2186269092288161358

namespace A302302

/-- `Δ[C(n, 2)*A014105(n)]` -/
def P2186269092288161358.Spec : Prop :=
  ∀ n, P2186269092288161358.a n = A302302 n

end A302302

/-! ## A302302.P15996626795590550635

`floor((1/8+n)*A016754(n))`
-/

namespace A302302.P15996626795590550635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 : ℚ) / 8 + (n : ℚ)) * (A016754 n : ℚ)⌋

end

end A302302.P15996626795590550635

namespace A302302

/-- `floor((1/8+n)*A016754(n))` -/
def P15996626795590550635.Spec : Prop :=
  ∀ n, P15996626795590550635.a n = A302302 n

end A302302

/-! ## A302302.P5978253113963894917

`∑[A005914(n)-(3*n+1)]`
-/

namespace A302302.P5978253113963894917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 n - (3 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302302.P5978253113963894917

namespace A302302

/-- `∑[A005914(n)-(3*n+1)]` -/
def P5978253113963894917.Spec : Prop :=
  ∀ n, P5978253113963894917.a n = A302302 n

end A302302

/-! ## A302302.P2872836642781504266

`Δ[C(n, 2)*A000217(2*n)]`
-/

namespace A302302.P2872836642781504266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A000217 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302302.P2872836642781504266

namespace A302302

/-- `Δ[C(n, 2)*A000217(2*n)]` -/
def P2872836642781504266.Spec : Prop :=
  ∀ n, P2872836642781504266.a n = A302302 n

end A302302

/-! ## A302302.P18141416695075916108

`A063495(n+1)-(n+1)^3`
-/

namespace A302302.P18141416695075916108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063495 (n + 1) - ((n + 1) ^ 3 : ℤ)

end

end A302302.P18141416695075916108

namespace A302302

/-- `A063495(n+1)-(n+1)^3` -/
def P18141416695075916108.Spec : Prop :=
  ∀ n, P18141416695075916108.a n = A302302 n

end A302302

/-! ## A302302.P16729773111152360310

`Δ[(2*n²+n)*A161680(n)]`
-/

namespace A302302.P16729773111152360310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 + n : ℤ) * A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302302.P16729773111152360310

namespace A302302

/-- `Δ[(2*n²+n)*A161680(n)]` -/
def P16729773111152360310.Spec : Prop :=
  ∀ n, P16729773111152360310.a n = A302302 n

end A302302

/-! ## A302302.P15562177730878350762

`∑[A244803(n+1)-2*n]-1`
-/

namespace A302302.P15562177730878350762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244803 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A302302.P15562177730878350762

namespace A302302

/-- `∑[A244803(n+1)-2*n]-1` -/
def P15562177730878350762.Spec : Prop :=
  ∀ n, P15562177730878350762.a n = A302302 n

end A302302

/-! ## A302302.P12196445756522215881

`A061804(n)+A022266(n)`
-/

namespace A302302.P12196445756522215881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061804 n + A022266 n

end

end A302302.P12196445756522215881

namespace A302302

/-- `A061804(n)+A022266(n)` -/
def P12196445756522215881.Spec : Prop :=
  ∀ n, P12196445756522215881.a n = A302302 n

end A302302

/-! ## A302302.P6882557696690570871

`A062725(n)+A035328(n)`
-/

namespace A302302.P6882557696690570871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062725 n + A035328 n

end

end A302302.P6882557696690570871

namespace A302302

/-- `A062725(n)+A035328(n)` -/
def P6882557696690570871.Spec : Prop :=
  ∀ n, P6882557696690570871.a n = A302302 n

end A302302

/-! ## A302302.P17825928858390206788

`A081266(n)+A033430(n)`
-/

namespace A302302.P17825928858390206788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 n + A033430 n

end

end A302302.P17825928858390206788

namespace A302302

/-- `A081266(n)+A033430(n)` -/
def P17825928858390206788.Spec : Prop :=
  ∀ n, P17825928858390206788.a n = A302302 n

end A302302

/-! ## A302302.P4957780163007227759

`A110451(n)+A005475(n)`
-/

namespace A302302.P4957780163007227759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110451 n + A005475 n

end

end A302302.P4957780163007227759

namespace A302302

/-- `A110451(n)+A005475(n)` -/
def P4957780163007227759.Spec : Prop :=
  ∀ n, P4957780163007227759.a n = A302302 n

end A302302

/-! ## A302302.P9217008834760545549

`A099721(n)+A051895(n)`
-/

namespace A302302.P9217008834760545549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099721 n + A051895 n

end

end A302302.P9217008834760545549

namespace A302302

/-- `A099721(n)+A051895(n)` -/
def P9217008834760545549.Spec : Prop :=
  ∀ n, P9217008834760545549.a n = A302302 n

end A302302

/-!
# A302303: Number of n X n 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302303, there is no canonical definition to state claims against.
-/

/-! ## A302303.P3883309715413171765

`A302309(∑[4*n]+1)`
-/

namespace A302303.P3883309715413171765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302303.P3883309715413171765

/-! ## A302303.P1976124127497324619

`and(-1, A302309(A001844(n)))`
-/

namespace A302303.P1976124127497324619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A302309 (A001844 n).toNat)

end

end A302303.P1976124127497324619

/-! ## A302303.P10331792746028763651

`record[A302309(A330613(n+1))]`
-/

namespace A302303.P10331792746028763651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302303.P10331792746028763651

/-! ## A302303.P3770926404542579737

`record[A003982(n)*A302309(n+1)]`
-/

namespace A302303.P3770926404542579737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A302309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302303.P3770926404542579737

/-! ## A302303.P9771427001798614187

`record[A214505(n)*A302309(n+1)]`
-/

namespace A302303.P9771427001798614187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A302309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302303.P9771427001798614187

/-!
# A302304: Number of nX3 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302304, there is no canonical definition to state claims against.
-/

/-! ## A302304.P8386756610941342699

`A302309(∑[n+3]+1)`
-/

namespace A302304.P8386756610941342699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302304.P8386756610941342699

/-! ## A302304.P16054549678881998999

`record[A302309(A198464(n+1))]`
-/

namespace A302304.P16054549678881998999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302304.P16054549678881998999

/-! ## A302304.P18148917339851738677

`or(char[1], A302309(A034856(n+2)))`
-/

namespace A302304.P18148917339851738677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A302309 (A034856 (n + 2)).toNat)

end

end A302304.P18148917339851738677

/-! ## A302304.P5597072341524399802

`A302309(A034856(n+2))%A000108(n+3)`
-/

namespace A302304.P5597072341524399802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302309 (A034856 (n + 2)).toNat) (A000108 (n + 3))

end

end A302304.P5597072341524399802

/-! ## A302304.P3982321239154871353

`A007318(C(n, 2))*A302309(A034856(n+2))`
-/

namespace A302304.P3982321239154871353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A302309 (A034856 (n + 2)).toNat

end

end A302304.P3982321239154871353

/-!
# A302305: Number of nX4 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302305, there is no canonical definition to state claims against.
-/

/-! ## A302305.P8642761932310373805

`A302309(∑[n+4]+3)`
-/

namespace A302305.P8642761932310373805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A302305.P8642761932310373805

/-! ## A302305.P5436937347171196468

`A302309(Δ[A034857(n+1)])+char[37]`
-/

namespace A302305.P5436937347171196468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302305.P5436937347171196468

/-! ## A302305.P915722509756764184

`A326684(n)+A302309(Δ[A034857(n+1)])`
-/

namespace A302305.P915722509756764184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326684 n + A302309 (f1 (n + 1) - f1 n).toNat

end

end A302305.P915722509756764184

/-! ## A302305.P7023926065263163777

`A302309(Δ[A034857(n+1)])%A000032(4*(n+1))`
-/

namespace A302305.P7023926065263163777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302309 (f1 (n + 1) - f1 n).toNat) (A000032 (4 * (n + 1)))

end

end A302305.P7023926065263163777

/-! ## A302305.P17821912997406229736

`A000045(((-1)^n)²)*A302309(Δ[A034857(n+1)])`
-/

namespace A302305.P17821912997406229736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * A302309 (f1 (n + 1) - f1 n).toNat

end

end A302305.P17821912997406229736

/-!
# A302306: Number of nX5 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302306, there is no canonical definition to state claims against.
-/

/-! ## A302306.P676215060177108435

`A302309(∑[n+5]+6)`
-/

namespace A302306.P676215060177108435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A302306.P676215060177108435

/-! ## A302306.P1973301166412695705

`A302309(Δ[A023545(n+1)])+char[16]`
-/

namespace A302306.P1973301166412695705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302306.P1973301166412695705

/-! ## A302306.P10588030759507326470

`A302309(A046691(n+3))%A005758(n+3)`
-/

namespace A302306.P10588030759507326470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302309 (A046691 (n + 3)).toNat) (A005758 (n + 3))

end

end A302306.P10588030759507326470

/-! ## A302306.P8492698806013883593

`A302309(Δ[A023545(n+1)])%A007283(n)²`
-/

namespace A302306.P8492698806013883593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302309 (f1 (n + 1) - f1 n).toNat) (A007283 n ^ 2)

end

end A302306.P8492698806013883593

/-! ## A302306.P13275730130523404276

`A033999((2*n)²)*A302309(Δ[A023545(n+1)])`
-/

namespace A302306.P13275730130523404276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((2 * n) ^ 2) * A302309 (f1 (n + 1) - f1 n).toNat

end

end A302306.P13275730130523404276

/-!
# A302307: Number of nX6 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302307, there is no canonical definition to state claims against.
-/

/-! ## A302307.P11854994957304008471

`A302309(A052905(n+3))`
-/

namespace A302307.P11854994957304008471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (A052905 (n + 3)).toNat

end

end A302307.P11854994957304008471

/-! ## A302307.P6155255723075436893

`A302309(A302537(n)+15)`
-/

namespace A302307.P6155255723075436893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (A302537 n + 15).toNat

end

end A302307.P6155255723075436893

/-! ## A302307.P2958539826408273456

`A302309(A056119(n)+16)`
-/

namespace A302307.P2958539826408273456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (A056119 n + 16).toNat

end

end A302307.P2958539826408273456

/-! ## A302307.P14746196416779956701

`A302309(eq[3, A219347(n)])`
-/

namespace A302307.P14746196416779956701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302307.P14746196416779956701

/-! ## A302307.P11673453494165954431

`A302309(eq[5, A193592(n)])`
-/

namespace A302307.P11673453494165954431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302307.P11673453494165954431

/-!
# A302308: Number of n X 7 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302308, there is no canonical definition to state claims against.
-/

/-! ## A302308.P18274779368592769853

`A302309(A055999(n+4))`
-/

namespace A302308.P18274779368592769853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (A055999 (n + 4)).toNat

end

end A302308.P18274779368592769853

/-! ## A302308.P2882339522151325599

`A302309(A056121(n)+22)`
-/

namespace A302308.P2882339522151325599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (A056121 n + 22).toNat

end

end A302308.P2882339522151325599

/-! ## A302308.P10810260160946445486

`A302309(eq[4, A219347(n)])`
-/

namespace A302308.P10810260160946445486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302308.P10810260160946445486

/-! ## A302308.P15105624730688229235

`A302309(eq[6, A193592(n)])`
-/

namespace A302308.P15105624730688229235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302308.P15105624730688229235

/-! ## A302308.P8870716848689178825

`A302309(Δ[A023551(n+2)])`
-/

namespace A302308.P8870716848689178825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (f1 (n + 1) - f1 n).toNat

end

end A302308.P8870716848689178825

/-!
# A302309: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302309, there is no canonical definition to state claims against.
-/

/-! ## A302309.P5360405797256714450

`A303040(n+1)-A124763(A099594(n))`
-/

namespace A302309.P5360405797256714450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (n + 1) - A124763 (A099594 n).toNat

end

end A302309.P5360405797256714450

/-! ## A302309.P12059535936198920008

`A303040(n+1)-A037800(A296548(n))`
-/

namespace A302309.P12059535936198920008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (n + 1) - A037800 (A296548 n).toNat

end

end A302309.P12059535936198920008

/-! ## A302309.P13682766910106590929

`A303040(n+1)-A173920(A173917(n))`
-/

namespace A302309.P13682766910106590929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (n + 1) - A173920 (A173917 n).toNat

end

end A302309.P13682766910106590929

/-! ## A302309.P1528941209366556786

`A303040(n+1)-A185254(A133084(n+1))`
-/

namespace A302309.P1528941209366556786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (n + 1) - A185254 (A133084 (n + 1)).toNat

end

end A302309.P1528941209366556786

/-! ## A302309.P2794927493701974908

`A303040(n+1)-A305388(A304320(n+1))`
-/

namespace A302309.P2794927493701974908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (n + 1) - A305388 (A304320 (n + 1)).toNat

end

end A302309.P2794927493701974908

/-!
# A302310: Number of 2Xn 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302310, the canonical program `A302310.P8747799497545901157` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302310 has offset 1).

The definition of A302310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302310.P8747799497545901157

`2*a(n-1)-a(n-2)+4*a(n-3)+12*a(n-4)-16*a(n-5)` with `a(0)=2, a(1)=3, a(2)=11, a(3)=21, a(4)=31, a(5)=113`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A302310

/-- `2*a(n-1)-a(n-2)+4*a(n-3)+12*a(n-4)-16*a(n-5)` -/
def P8747799497545901157.Spec : Prop :=
  ∀ n, P8747799497545901157.a n = A302310 (n + 1)

theorem P8747799497545901157.correct : P8747799497545901157.Spec := by
  intro n
  simp only [A302310, Nat.add_sub_cancel]

end A302310

/-! ## A302310.P17435027699419542187

`A302309(∑[n+1]+2)`
-/

namespace A302310.P17435027699419542187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A302310.P17435027699419542187

namespace A302310

/-- `A302309(∑[n+1]+2)` -/
def P17435027699419542187.Spec : Prop :=
  ∀ n, P17435027699419542187.a n = A302310 (n + 1)

end A302310

/-! ## A302310.P7906535348785890424

`A303040(∑[n+1]+2)`
-/

namespace A302310.P7906535348785890424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A302310.P7906535348785890424

namespace A302310

/-- `A303040(∑[n+1]+2)` -/
def P7906535348785890424.Spec : Prop :=
  ∀ n, P7906535348785890424.a n = A302310 (n + 1)

end A302310

/-! ## A302310.P8603792308961198524

`record[A303040(A133263(abs(1-n)))]`
-/

namespace A302310.P8603792308961198524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302310.P8603792308961198524

namespace A302310

/-- `record[A303040(A133263(abs(1-n)))]` -/
def P8603792308961198524.Spec : Prop :=
  ∀ n, P8603792308961198524.a n = A302310 (n + 1)

end A302310

/-! ## A302310.P12388835475493740896

`record[A302309(A286237(n+1)+1)]`
-/

namespace A302310.P12388835475493740896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (A286237 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302310.P12388835475493740896

namespace A302310

/-- `record[A302309(A286237(n+1)+1)]` -/
def P12388835475493740896.Spec : Prop :=
  ∀ n, P12388835475493740896.a n = A302310 (n + 1)

end A302310

/-!
# A302311: Number of 3 X n 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302311, there is no canonical definition to state claims against.
-/

/-! ## A302311.P8586169311816854628

`A302309(∑[n+2]+4)`
-/

namespace A302311.P8586169311816854628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302311.P8586169311816854628

/-! ## A302311.P17836018199769053726

`A302309(A167614(n+1))+char[21]`
-/

namespace A302311.P17836018199769053726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302311.P17836018199769053726

/-! ## A302311.P2733693962639369561

`A326684(n)+A302309(A167614(n+1))`
-/

namespace A302311.P2733693962639369561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326684 n + A302309 (A167614 (n + 1)).toNat

end

end A302311.P2733693962639369561

/-! ## A302311.P9723264852561169173

`gcd(A185284(n), A302309(A167614(n+1)))`
-/

namespace A302311.P9723264852561169173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185284 n) (A302309 (A167614 (n + 1)).toNat)

end

end A302311.P9723264852561169173

/-! ## A302311.P3956905912032396752

`A302309(A167614(n+1))%A030514(n+1)`
-/

namespace A302311.P3956905912032396752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302309 (A167614 (n + 1)).toNat) (A030514 (n + 1))

end

end A302311.P3956905912032396752

/-!
# A302312: Number of 4 X n 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302312, there is no canonical definition to state claims against.
-/

/-! ## A302312.P8443862055533625578

`A302309(∑[n+3]+7)`
-/

namespace A302312.P8443862055533625578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A302312.P8443862055533625578

/-! ## A302312.P2206053659829347173

`A302309(A141214(n)+7)+char[23]`
-/

namespace A302312.P2206053659829347173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302312.P2206053659829347173

/-! ## A302312.P1154900799294898194

`A302309(A167614(n+2)+1)%A111346(n+1)`
-/

namespace A302312.P1154900799294898194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302309 (A167614 (n + 2) + 1).toNat) (A111346 (n + 1))

end

end A302312.P1154900799294898194

/-! ## A302312.P4627773299203266669

`A014963(6*(n+1))*A302309(A141214(n)+7)`
-/

namespace A302312.P4627773299203266669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A302309 (A141214 n + 7).toNat

end

end A302312.P4627773299203266669

/-! ## A302312.P12409262379921471385

`lcm(A280940(n+1), A302309(A167614(n+2)+1))`
-/

namespace A302312.P12409262379921471385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A280940 (n + 1)) (A302309 (A167614 (n + 2) + 1).toNat)

end

end A302312.P12409262379921471385

/-!
# A302313: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302313, there is no canonical definition to state claims against.
-/

/-! ## A302313.P16301422529033248177

`A302309(∑[n+4]+11)`
-/

namespace A302313.P16301422529033248177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A302313.P16301422529033248177

/-! ## A302313.P7406707591747721770

`A302309(A155212(n)+13)+char[17]`
-/

namespace A302313.P7406707591747721770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (A155212 n + 13).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302313.P7406707591747721770

/-! ## A302313.P7431906398716755699

`A302309(A046691(n+2)+9)+char[27]`
-/

namespace A302313.P7431906398716755699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (A046691 (n + 2) + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302313.P7431906398716755699

/-! ## A302313.P17543602387275462118

`A007318(C(2, n))*A302309(A155212(n)+13)`
-/

namespace A302313.P17543602387275462118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A302309 (A155212 n + 13).toNat

end

end A302313.P17543602387275462118

/-! ## A302313.P14159734375948468385

`A302309(A155212(n)+13)/A007318(C(n, 2))`
-/

namespace A302313.P14159734375948468385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302309 (A155212 n + 13).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A302313.P14159734375948468385

/-!
# A302314: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302314, there is no canonical definition to state claims against.
-/

/-! ## A302314.P16061833536778688595

`A302309(∑[n+5]+16)`
-/

namespace A302314.P16061833536778688595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A302314.P16061833536778688595

/-! ## A302314.P7827188287763882485

`A302309(A167499(n+4)+1)+char[16]`
-/

namespace A302314.P7827188287763882485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (A167499 (n + 4) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302314.P7827188287763882485

/-! ## A302314.P10491195961510039461

`A007318(and(1, -n))*A302309(A167499(n+4)+1)`
-/

namespace A302314.P10491195961510039461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A302309 (A167499 (n + 4) + 1).toNat

end

end A302314.P10491195961510039461

/-! ## A302314.P6796054249356911566

`A302309(A145018(n+6)+2)%A239035(2*n+3)`
-/

namespace A302314.P6796054249356911566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302309 (A145018 (n + 6) + 2).toNat) (A239035 (2 * n + 3))

end

end A302314.P6796054249356911566

/-! ## A302314.P7645176783990600316

`A000041(C(2, n+2))*A302309(A167499(n+4)+1)`
-/

namespace A302314.P7645176783990600316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A302309 (A167499 (n + 4) + 1).toNat

end

end A302314.P7645176783990600316

/-!
# A302315: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302315, there is no canonical definition to state claims against.
-/

/-! ## A302315.P13212094205690442813

`A302309(A302537(n)+27)`
-/

namespace A302315.P13212094205690442813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (A302537 n + 27).toNat

end

end A302315.P13212094205690442813

/-! ## A302315.P3173170884904815185

`A302309(eq[11, A066657(n)])`
-/

namespace A302315.P3173170884904815185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302315.P3173170884904815185

/-! ## A302315.P8333454708335244458

`A302309(A167499(n+5)+2)`
-/

namespace A302315.P8333454708335244458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (A167499 (n + 5) + 2).toNat

end

end A302315.P8333454708335244458

/-! ## A302315.P9566149373838305838

`A302309(A167614(n+5)+4)`
-/

namespace A302315.P9566149373838305838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (A167614 (n + 5) + 4).toNat

end

end A302315.P9566149373838305838

/-! ## A302315.P2053513273305531534

`A302309(A000124(n+6)+6)`
-/

namespace A302315.P2053513273305531534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (A000124 (n + 6) + 6).toNat

end

end A302315.P2053513273305531534

/-!
# A302316: Number of n X n 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302316, there is no canonical definition to state claims against.
-/

/-! ## A302316.P10007758878497781806

`A302322(∑[4*n]+1)`
-/

namespace A302316.P10007758878497781806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302316.P10007758878497781806

/-! ## A302316.P2996435078710272548

`record[A302322(A152271(n²))]`
-/

namespace A302316.P2996435078710272548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302316.P2996435078710272548

/-! ## A302316.P3109925370085691347

`record[A302322(Δ[A235355(n)])]`
-/

namespace A302316.P3109925370085691347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302316.P3109925370085691347

/-! ## A302316.P15459242470075523817

`record[A302322(A272267(n+1))]`
-/

namespace A302316.P15459242470075523817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302316.P15459242470075523817

/-! ## A302316.P10237144490653898617

`record[A302322(A330613(n+1))]`
-/

namespace A302316.P10237144490653898617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302316.P10237144490653898617

/-!
# A302317: Number of nX3 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302317, there is no canonical definition to state claims against.
-/

/-! ## A302317.P3274892858227816071

`A302322(∑[n+3]+1)`
-/

namespace A302317.P3274892858227816071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302317.P3274892858227816071

/-! ## A302317.P13229692256348441282

`record[A302322(A198464(n+1))]`
-/

namespace A302317.P13229692256348441282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302317.P13229692256348441282

/-! ## A302317.P5494393977364307986

`record[A302322(A237519(n+2))]`
-/

namespace A302317.P5494393977364307986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A237519 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302317.P5494393977364307986

/-! ## A302317.P7985338657547553911

`A302322(Δ[A008778(n)])+char[16]`
-/

namespace A302317.P7985338657547553911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302317.P7985338657547553911

/-! ## A302317.P18002466417169763589

`A302322(A034856(n+2))+char[16]`
-/

namespace A302317.P18002466417169763589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302317.P18002466417169763589

/-!
# A302318: Number of n X 4 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302318, there is no canonical definition to state claims against.
-/

/-! ## A302318.P5701501940062666059

`A302322(Δ[n²]+∑[n+2]+4)`
-/

namespace A302318.P5701501940062666059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A302318.P5701501940062666059

/-! ## A302318.P1893609664125208245

`A302322(A055998(n+2))+A185284(n)`
-/

namespace A302318.P1893609664125208245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A055998 (n + 2)).toNat + A185284 n

end

end A302318.P1893609664125208245

/-! ## A302318.P5833414714368156073

`or(A151755(n), A302322(A055998(n+2)))`
-/

namespace A302318.P5833414714368156073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151755 n) (A302322 (A055998 (n + 2)).toNat)

end

end A302318.P5833414714368156073

/-! ## A302318.P6030845519654804327

`or(A070105(n+1), A302322(A055998(n+2)))`
-/

namespace A302318.P6030845519654804327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070105 (n + 1)) (A302322 (A055998 (n + 2)).toNat)

end

end A302318.P6030845519654804327

/-! ## A302318.P1166004075578749990

`A302322(A141214(n+1))+A070105(2*(n+1))`
-/

namespace A302318.P1166004075578749990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A141214 (n + 1)).toNat + A070105 (2 * (n + 1))

end

end A302318.P1166004075578749990

/-!
# A302319: Number of nX5 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302319, there is no canonical definition to state claims against.
-/

/-! ## A302319.P2605466825676973680

`A302322(∑[n+5]+6)`
-/

namespace A302319.P2605466825676973680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A302319.P2605466825676973680

/-! ## A302319.P8278895472934466842

`A302322(A046691(n+3))+A185284(n)`
-/

namespace A302319.P8278895472934466842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A046691 (n + 3)).toNat + A185284 n

end

end A302319.P8278895472934466842

/-! ## A302319.P11327488067499742890

`or(A302322(A046691(n+3)), A308064(n+1))`
-/

namespace A302319.P11327488067499742890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A302322 (A046691 (n + 3)).toNat) (A308064 (n + 1))

end

end A302319.P11327488067499742890

/-!
# A302320: Number of nX6 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302320, there is no canonical definition to state claims against.
-/

/-! ## A302320.P17886243029525700067

`A302322(A052905(n+3))`
-/

namespace A302320.P17886243029525700067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A052905 (n + 3)).toNat

end

end A302320.P17886243029525700067

/-! ## A302320.P12798638725367207006

`A302322(A302537(n)+15)`
-/

namespace A302320.P12798638725367207006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A302537 n + 15).toNat

end

end A302320.P12798638725367207006

/-! ## A302320.P2798353453622495895

`A302322(A056119(n)+16)`
-/

namespace A302320.P2798353453622495895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A056119 n + 16).toNat

end

end A302320.P2798353453622495895

/-! ## A302320.P3475166148856943120

`A302322(eq[3, A219347(n)])`
-/

namespace A302320.P3475166148856943120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302320.P3475166148856943120

/-! ## A302320.P267624501171000289

`A302322(eq[5, A193592(n)])`
-/

namespace A302320.P267624501171000289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302320.P267624501171000289

/-!
# A302321: Number of nX7 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302321, there is no canonical definition to state claims against.
-/

/-! ## A302321.P7156633231726749556

`A302322(A055999(n+4))`
-/

namespace A302321.P7156633231726749556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A055999 (n + 4)).toNat

end

end A302321.P7156633231726749556

/-! ## A302321.P14565451911533802314

`A302322(A056121(n)+22)`
-/

namespace A302321.P14565451911533802314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A056121 n + 22).toNat

end

end A302321.P14565451911533802314

/-! ## A302321.P8361749545771410103

`A302322(eq[4, A219347(n)])`
-/

namespace A302321.P8361749545771410103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302321.P8361749545771410103

/-! ## A302321.P4587529012456832302

`A302322(eq[6, A193592(n)])`
-/

namespace A302321.P4587529012456832302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302321.P4587529012456832302

/-! ## A302321.P9646459288227255845

`A302322(Δ[A023551(n+2)])`
-/

namespace A302321.P9646459288227255845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (f1 (n + 1) - f1 n).toNat

end

end A302321.P9646459288227255845

/-!
# A302322: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302322, there is no canonical definition to state claims against.
-/

/-! ## A302322.P7280325732734277616

`A303016(n+1)-A151755(A102365(n))`
-/

namespace A302322.P7280325732734277616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (n + 1) - A151755 (A102365 n).toNat

end

end A302322.P7280325732734277616

/-! ## A302322.P10281113309524828698

`xor(A151755(A174546(n)), A303513(n+1))`
-/

namespace A302322.P10281113309524828698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151755 (A174546 n).toNat) (A303513 (n + 1))

end

end A302322.P10281113309524828698

/-! ## A302322.P12193658015613371309

`xor(A151755(A176420(n)), A303016(n+1))`
-/

namespace A302322.P12193658015613371309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151755 (A176420 n).toNat) (A303016 (n + 1))

end

end A302322.P12193658015613371309

/-! ## A302322.P10223802583824810982

`A303016(n+1)-A081221(A208408(n+1))`
-/

namespace A302322.P10223802583824810982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (n + 1) - A081221 (A208408 (n + 1)).toNat

end

end A302322.P10223802583824810982

/-! ## A302322.P11296612147310187154

`xor(A151755(A303513(n+1)), A303016(n+1))`
-/

namespace A302322.P11296612147310187154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151755 (A303513 (n + 1)).toNat) (A303016 (n + 1))

end

end A302322.P11296612147310187154

/-!
# A302323: Number of 2Xn 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302323, the canonical program `A302323.P569987669017276639` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302323 has offset 1).

The definition of A302323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302323.P569987669017276639

`2*(A131577(n)+A028859(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A302323

/-- `2*(A131577(n)+A028859(n))` -/
def P569987669017276639.Spec : Prop :=
  ∀ n, P569987669017276639.a n = A302323 (n + 1)

theorem P569987669017276639.correct : P569987669017276639.Spec := by
  intro n
  simp only [A302323, Nat.add_sub_cancel]

end A302323

/-! ## A302323.P3381205753784228816

`2*(A028859(n)+Δ[A011782(n)])`
-/

namespace A302323.P3381205753784228816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028859 n + (f1 (n + 1) - f1 n))

end

end A302323.P3381205753784228816

namespace A302323

/-- `2*(A028859(n)+Δ[A011782(n)])` -/
def P3381205753784228816.Spec : Prop :=
  ∀ n, P3381205753784228816.a n = A302323 (n + 1)

end A302323

/-! ## A302323.P9447893354438907087

`2*(A155020(n+1)+A034008(n+1))`
-/

namespace A302323.P9447893354438907087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155020 (n + 1) + A034008 (n + 1))

end

end A302323.P9447893354438907087

namespace A302323

/-- `2*(A155020(n+1)+A034008(n+1))` -/
def P9447893354438907087.Spec : Prop :=
  ∀ n, P9447893354438907087.a n = A302323 (n + 1)

end A302323

/-! ## A302323.P16630537883751941662

`A131572(2*n)+2*A155020(n+1)`
-/

namespace A302323.P16630537883751941662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (2 * n) + 2 * A155020 (n + 1)

end

end A302323.P16630537883751941662

namespace A302323

/-- `A131572(2*n)+2*A155020(n+1)` -/
def P16630537883751941662.Spec : Prop :=
  ∀ n, P16630537883751941662.a n = A302323 (n + 1)

end A302323

/-! ## A302323.P4258477809749623375

`4*a(n-1)-2*a(n-2)-4*a(n-3)` with `a(0)=2, a(1)=8, a(2)=20, a(3)=52`
-/

namespace A302323.P4258477809749623375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8, 20, 52] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) - 4 * a (n - 3)

end

end A302323.P4258477809749623375

namespace A302323

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)` -/
def P4258477809749623375.Spec : Prop :=
  ∀ n, P4258477809749623375.a n = A302323 (n + 1)

end A302323

/-! ## A302323.P3139791815371170096

`Δ[A077846(n)+Δ[A083318(n)]]`
-/

namespace A302323.P3139791815371170096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077846 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302323.P3139791815371170096

namespace A302323

/-- `Δ[A077846(n)+Δ[A083318(n)]]` -/
def P3139791815371170096.Spec : Prop :=
  ∀ n, P3139791815371170096.a n = A302323 (n + 1)

end A302323

/-! ## A302323.P11612650724054842642

`Δ[or(1, A077846(n)+A000079(n))]`
-/

namespace A302323.P11612650724054842642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A077846 n + A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302323.P11612650724054842642

namespace A302323

/-- `Δ[or(1, A077846(n)+A000079(n))]` -/
def P11612650724054842642.Spec : Prop :=
  ∀ n, P11612650724054842642.a n = A302323 (n + 1)

end A302323

/-!
# A302324: Number of 3 X n 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302324, there is no canonical definition to state claims against.
-/

/-! ## A302324.P10572582682209162380

`A302322(∑[n+2]+4)`
-/

namespace A302324.P10572582682209162380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302324.P10572582682209162380

/-! ## A302324.P12628635668233755461

`and(-1, A302322(A167614(n+1)))`
-/

namespace A302324.P12628635668233755461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A302322 (A167614 (n + 1)).toNat)

end

end A302324.P12628635668233755461

/-! ## A302324.P1500598339268788046

`record[A302322(A286158(n+1)+3)]`
-/

namespace A302324.P1500598339268788046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A286158 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302324.P1500598339268788046

/-! ## A302324.P12329113029518780676

`record[A302322(A198455(n+1)+4)]`
-/

namespace A302324.P12329113029518780676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A198455 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302324.P12329113029518780676

/-! ## A302324.P16190956215702634079

`or(char[1], A302322(A000124(n+2)+2))`
-/

namespace A302324.P16190956215702634079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A302322 (A000124 (n + 2) + 2).toNat)

end

end A302324.P16190956215702634079

/-!
# A302325: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302325, there is no canonical definition to state claims against.
-/

/-! ## A302325.P3235927181832231072

`A302322(∑[n+3]+7)`
-/

namespace A302325.P3235927181832231072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A302325.P3235927181832231072

/-! ## A302325.P11848411101769626256

`A302322(A055999(n)+10)+char[16]`
-/

namespace A302325.P11848411101769626256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302325.P11848411101769626256

/-! ## A302325.P6792117126903056813

`A007318(C(2, n))*A302322(A055999(n)+10)`
-/

namespace A302325.P6792117126903056813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A302322 (A055999 n + 10).toNat

end

end A302325.P6792117126903056813

/-! ## A302325.P14201741608061716043

`A302322(A055999(n)+10)%Δ[A000108(n+5)]`
-/

namespace A302325.P14201741608061716043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302322 (A055999 n + 10).toNat) (f1 (n + 1) - f1 n)

end

end A302325.P14201741608061716043

/-! ## A302325.P17779744984076993807

`A000041(C(2, n+2))*A302322(A055999(n)+10)`
-/

namespace A302325.P17779744984076993807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A302322 (A055999 n + 10).toNat

end

end A302325.P17779744984076993807

/-!
# A302326: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302326, there is no canonical definition to state claims against.
-/

/-! ## A302326.P7348410084773842275

`A302322(∑[n+4]+11)`
-/

namespace A302326.P7348410084773842275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A302326.P7348410084773842275

/-!
# A302327: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302327, there is no canonical definition to state claims against.
-/

/-! ## A302327.P17313801918308121681

`A302322(A166136(n+4))`
-/

namespace A302327.P17313801918308121681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A166136 (n + 4)).toNat

end

end A302327.P17313801918308121681

/-! ## A302327.P15973744570608723835

`A302322(A056115(n)+21)`
-/

namespace A302327.P15973744570608723835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (A056115 n + 21).toNat

end

end A302327.P15973744570608723835

/-! ## A302327.P17558218311273279981

`A302322(Δ[A255994(n+2)])`
-/

namespace A302327.P17558218311273279981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255994 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (f1 (n + 1) - f1 n).toNat

end

end A302327.P17558218311273279981

/-! ## A302327.P6505150948555514704

`A302322(Δ[A264443(n)]+10)`
-/

namespace A302327.P6505150948555514704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (f1 (n + 1) - f1 n + 10).toNat

end

end A302327.P6505150948555514704

/-! ## A302327.P7699437831503891357

`A302322(∑[A020710(n)]+16)`
-/

namespace A302327.P7699437831503891357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A302327.P7699437831503891357

/-!
# A302328: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302328, there is no canonical definition to state claims against.
-/

/-! ## A302328.P7434032112644537506

`A302322(∑[n+6]+22)`
-/

namespace A302328.P7434032112644537506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302322 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A302328.P7434032112644537506

/-!
# A302329: a(0)=1, a(1)=61; for n>1, a(n) = 62*a(n-1) - a(n-2).

The programs for A302329, the canonical program `A302329.P17789608145965714380` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302329 has offset 0).

The definition of A302329 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `62*a(n-1)-a(n-2)` (program `A302329.P17789608145965714380`, by `A302329.P17789608145965714380.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302329.P17789608145965714380

`62*a(n-1)-a(n-2)` with `a(0)=1, a(1)=61`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A302329

/-- `62*a(n-1)-a(n-2)` -/
def P17789608145965714380.Spec : Prop :=
  ∀ n, P17789608145965714380.a n = A302329 n

theorem P17789608145965714380.correct : P17789608145965714380.Spec := by
  intro n
  simp only [A302329]

end A302329

/-! ## A302329.P4067394476230971231

`((4+sqrt(15))^(2*n+1)+1/(4+sqrt(15))^(2*n+1))/8`
-/

namespace A302329.P4067394476230971231
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (15 : ℝ)) ^ (2 * n + 1) + 1 / (4 + Real.sqrt (15 : ℝ)) ^ (2 * n + 1)) / 8

end

end A302329.P4067394476230971231

namespace A302329

/-- `((4+sqrt(15))^(2*n+1)+1/(4+sqrt(15))^(2*n+1))/8` -/
def P4067394476230971231.Spec : Prop :=
  ∀ n, P4067394476230971231.a n = (A302329 n : ℝ)

end A302329

/-! ## A302329.P2471937389627404978

`A041449(2*n)`
-/

namespace A302329.P2471937389627404978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041449 (2 * n)

end

end A302329.P2471937389627404978

namespace A302329

/-- `A041449(2*n)` -/
def P2471937389627404978.Spec : Prop :=
  ∀ n, P2471937389627404978.a n = A302329 n

end A302329

/-! ## A302329.P6262708392956854948

`A042859(2*n)`
-/

namespace A302329.P6262708392956854948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042859 (2 * n)

end

end A302329.P6262708392956854948

namespace A302329

/-- `A042859(2*n)` -/
def P6262708392956854948.Spec : Prop :=
  ∀ n, P6262708392956854948.a n = A302329 n

end A302329

/-! ## A302329.P17905570885648189471

`2*A131751(n+1)-1`
-/

namespace A302329.P17905570885648189471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131751 (n + 1) - 1

end

end A302329.P17905570885648189471

namespace A302329

/-- `2*A131751(n+1)-1` -/
def P17905570885648189471.Spec : Prop :=
  ∀ n, P17905570885648189471.a n = A302329 n

end A302329

/-!
# A302330: a(0)=1, a(1)=97; for n>1, a(n) = 98*a(n-1) - a(n-2).

The programs for A302330, the canonical program `A302330.P7701895885455678964` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302330 has offset 0).

The definition of A302330 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `98*a(n-1)-a(n-2)` (program `A302330.P7701895885455678964`, by `A302330.P7701895885455678964.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302330.P7701895885455678964

`98*a(n-1)-a(n-2)` with `a(0)=1, a(1)=97`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A302330

/-- `98*a(n-1)-a(n-2)` -/
def P7701895885455678964.Spec : Prop :=
  ∀ n, P7701895885455678964.a n = A302330 n

theorem P7701895885455678964.correct : P7701895885455678964.Spec := by
  intro n
  simp only [A302330]

end A302330

/-! ## A302330.P7962044532829860088

`((5+2*sqrt(6))^(2*n+1)+1/(5+2*sqrt(6))^(2*n+1))/10`
-/

namespace A302330.P7962044532829860088
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + 2 * Real.sqrt (6 : ℝ)) ^ (2 * n + 1) + 1 / (5 + 2 * Real.sqrt (6 : ℝ)) ^ (2 * n + 1)) / 10

end

end A302330.P7962044532829860088

namespace A302330

/-- `((5+2*sqrt(6))^(2*n+1)+1/(5+2*sqrt(6))^(2*n+1))/10` -/
def P7962044532829860088.Spec : Prop :=
  ∀ n, P7962044532829860088.a n = (A302330 n : ℝ)

end A302330

/-! ## A302330.P1877403214489140999

`A041275(2*n)`
-/

namespace A302330.P1877403214489140999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041275 (2 * n)

end

end A302330.P1877403214489140999

namespace A302330

/-- `A041275(2*n)` -/
def P1877403214489140999.Spec : Prop :=
  ∀ n, P1877403214489140999.a n = A302330 n

end A302330

/-! ## A302330.P15552988362443078014

`A042151(2*n)`
-/

namespace A302330.P15552988362443078014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042151 (2 * n)

end

end A302330.P15552988362443078014

namespace A302330

/-- `A042151(2*n)` -/
def P15552988362443078014.Spec : Prop :=
  ∀ n, P15552988362443078014.a n = A302330 n

end A302330

/-! ## A302330.P7445844304447664607

`2*A173205(n+1)-A046173(n+1)`
-/

namespace A302330.P7445844304447664607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173205 (n + 1) - A046173 (n + 1)

end

end A302330.P7445844304447664607

namespace A302330

/-- `2*A173205(n+1)-A046173(n+1)` -/
def P7445844304447664607.Spec : Prop :=
  ∀ n, P7445844304447664607.a n = A302330 n

end A302330

/-!
# A302331: a(0)=1, a(1)=141; for n>1, a(n) = 142*a(n-1) - a(n-2).

The programs for A302331, the canonical program `A302331.P14359139361334995112` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302331 has offset 0).

The definition of A302331 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `142*a(n-1)-a(n-2)` (program `A302331.P14359139361334995112`, by `A302331.P14359139361334995112.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302331.P14359139361334995112

`142*a(n-1)-a(n-2)` with `a(0)=1, a(1)=141`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A302331

/-- `142*a(n-1)-a(n-2)` -/
def P14359139361334995112.Spec : Prop :=
  ∀ n, P14359139361334995112.a n = A302331 n

theorem P14359139361334995112.correct : P14359139361334995112.Spec := by
  intro n
  simp only [A302331]

end A302331

/-! ## A302331.P15187080883256912120

`((6+sqrt(35))^(2*n+1)+1/(6+sqrt(35))^(2*n+1))/12`
-/

namespace A302331.P15187080883256912120
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((6 + Real.sqrt (35 : ℝ)) ^ (2 * n + 1) + 1 / (6 + Real.sqrt (35 : ℝ)) ^ (2 * n + 1)) / 12

end

end A302331.P15187080883256912120

namespace A302331

/-- `((6+sqrt(35))^(2*n+1)+1/(6+sqrt(35))^(2*n+1))/12` -/
def P15187080883256912120.Spec : Prop :=
  ∀ n, P15187080883256912120.a n = (A302331 n : ℝ)

end A302331

/-!
# A302332: a(0)=1, a(1)=193; for n>1, a(n) = 194*a(n-1) - a(n-2).

The programs for A302332, the canonical program `A302332.P16427807523462370643` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302332 has offset 0).

The definition of A302332 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `194*a(n-1)-a(n-2)` (program `A302332.P16427807523462370643`, by `A302332.P16427807523462370643.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302332.P16427807523462370643

`194*a(n-1)-a(n-2)` with `a(0)=1, a(1)=193`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A302332

/-- `194*a(n-1)-a(n-2)` -/
def P16427807523462370643.Spec : Prop :=
  ∀ n, P16427807523462370643.a n = A302332 n

theorem P16427807523462370643.correct : P16427807523462370643.Spec := by
  intro n
  simp only [A302332]

end A302332

/-! ## A302332.P12525387803966871972

`((7+4*sqrt(3))^(2*n+1)+1/(7+4*sqrt(3))^(2*n+1))/14`
-/

namespace A302332.P12525387803966871972
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((7 + 4 * Real.sqrt (3 : ℝ)) ^ (2 * n + 1) + 1 / (7 + 4 * Real.sqrt (3 : ℝ)) ^ (2 * n + 1)) / 14

end

end A302332.P12525387803966871972

namespace A302332

/-- `((7+4*sqrt(3))^(2*n+1)+1/(7+4*sqrt(3))^(2*n+1))/14` -/
def P12525387803966871972.Spec : Prop :=
  ∀ n, P12525387803966871972.a n = (A302332 n : ℝ)

end A302332

/-! ## A302332.P15337821766253554880

`A041269(2*n)`
-/

namespace A302332.P15337821766253554880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041269 (2 * n)

end

end A302332.P15337821766253554880

namespace A302332

/-- `A041269(2*n)` -/
def P15337821766253554880.Spec : Prop :=
  ∀ n, P15337821766253554880.a n = A302332 n

end A302332

/-! ## A302332.P7405329170651237763

`A042127(2*n)`
-/

namespace A302332.P7405329170651237763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042127 (2 * n)

end

end A302332.P7405329170651237763

namespace A302332

/-- `A042127(2*n)` -/
def P7405329170651237763.Spec : Prop :=
  ∀ n, P7405329170651237763.a n = A302332 n

end A302332

/-! ## A302332.P16491991316206038753

`record[A041269(A091453(n))]`
-/

namespace A302332.P16491991316206038753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041269 (A091453 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302332.P16491991316206038753

namespace A302332

/-- `record[A041269(A091453(n))]` -/
def P16491991316206038753.Spec : Prop :=
  ∀ n, P16491991316206038753.a n = A302332 n

end A302332

/-!
# A302333: 

The programs for A302333, there is no canonical definition to state claims against.
-/

/-! ## A302333.P8896873366264168782

`A001045(A107360(n+1))`
-/

namespace A302333.P8896873366264168782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A107360 (n + 1)).toNat

end

end A302333.P8896873366264168782

/-! ## A302333.P15356054694909330518

`A001045(A152961(n+2))`
-/

namespace A302333.P15356054694909330518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A152961 (n + 2)).toNat

end

end A302333.P15356054694909330518

/-! ## A302333.P4446962678184784380

`record[A286567(2*A000040(n+2))]`
-/

namespace A302333.P4446962678184784380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286567 (2 * A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302333.P4446962678184784380

/-! ## A302333.P9462314117811586485

`A105603(A107360(2*n+1-n))`
-/

namespace A302333.P9462314117811586485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105603 (A107360 (2 * n + 1 - n)).toNat

end

end A302333.P9462314117811586485

/-! ## A302333.P18445268671502431826

`A000979(A099802(A099802(A066720(A066720(n+1)))))`
-/

namespace A302333.P18445268671502431826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000979 (A099802 (A099802 (A066720 (A066720 (n + 1)).toNat).toNat).toNat).toNat

end

end A302333.P18445268671502431826

/-!
# A302334: A weighted smoothing applied to the primes as a data set: a(n) = floor(A007443(2n-1)/2^(2n-2)), where A007443 is binomial transform of primes.

The programs for A302334, there is no canonical definition to state claims against.
-/

/-! ## A302334.P10074481807615912644

`record[floor(A007443(n+1)/A122803(n))]`
-/

namespace A302334.P10074481807615912644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007443 (n + 1) : ℚ) / (A122803 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302334.P10074481807615912644

/-! ## A302334.P17787455495582775313

`floor(A007443(2*n+1)/A122803(n)²)`
-/

namespace A302334.P17787455495582775313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007443 (2 * n + 1) : ℚ) / (A122803 n ^ 2 : ℚ)⌋

end

end A302334.P17787455495582775313

/-! ## A302334.P12618814703935974986

`floor(A007443(2*n+1)/A122803(2*n))`
-/

namespace A302334.P12618814703935974986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007443 (2 * n + 1) : ℚ) / (A122803 (2 * n) : ℚ)⌋

end

end A302334.P12618814703935974986

/-! ## A302334.P12416029359627471782

`floor(A007443(2*n+1)/A011782(2*n+1))`
-/

namespace A302334.P12416029359627471782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007443 (2 * n + 1) : ℚ) / (A011782 (2 * n + 1) : ℚ)⌋

end

end A302334.P12416029359627471782

/-! ## A302334.P14271731029255425836

`∑[A061395(Δ[A094348(2*n+1)])]`
-/

namespace A302334.P14271731029255425836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094348 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302334.P14271731029255425836

/-!
# A302335: Constant coefficient of the quadratic polynomials giving the numbers of 2k-cycles in the n X n grid graph for n >= k-1.

The programs for A302335, there is no canonical definition to state claims against.
-/

/-! ## A302335.P462438547931933418

`A008611(A006964(n+1)-n)`
-/

namespace A302335.P462438547931933418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A006964 (n + 1) - (n : ℤ)).toNat

end

end A302335.P462438547931933418

/-! ## A302335.P6028242651032622996

`A123087(A006964(n+1)-n)`
-/

namespace A302335.P6028242651032622996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (A006964 (n + 1) - (n : ℤ)).toNat

end

end A302335.P6028242651032622996

/-!
# A302336: Linear coefficient (in absolute value) of the quadratic polynomials giving the numbers of 2k-cycles in the n X n grid graph for n >= k-1.

The programs for A302336, there is no canonical definition to state claims against.
-/

/-! ## A302336.P15095362857611541699

`2*A006772(n+1)`
-/

namespace A302336.P15095362857611541699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006772 (n + 1)

end

end A302336.P15095362857611541699

/-! ## A302336.P4694624939631240944

`A006772(A000027(n+1))+A006772(n+1)`
-/

namespace A302336.P4694624939631240944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006772 (A000027 (n + 1)).toNat + A006772 (n + 1)

end

end A302336.P4694624939631240944

/-! ## A302336.P12087985187322906696

`A006772(n+1)+A006772(A090108(n+1))`
-/

namespace A302336.P12087985187322906696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006772 (n + 1) + A006772 (A090108 (n + 1)).toNat

end

end A302336.P12087985187322906696

/-!
# A302338: a(n) = 3*n + 2^v(n) where v(n) denotes the 2-adic valuation of n.

The programs for A302338, the canonical program `A302338.P15302871616617014488` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302338 has offset 1).

The definition of A302338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302338.P15302871616617014488

`∑[Δ[and(n, -n)]+3]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A302338

/-- `∑[Δ[and(n, -n)]+3]` -/
def P15302871616617014488.Spec : Prop :=
  ∀ n, P15302871616617014488.a n = A302338 (n + 1)

theorem P15302871616617014488.correct : P15302871616617014488.Spec := by
  intro n
  simp only [A302338, Nat.add_sub_cancel]

end A302338

/-! ## A302338.P3585877102110178199

`2*n+3+or(n, n+1)`
-/

namespace A302338.P3585877102110178199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3 + Nat.lor n (n + 1)

end

end A302338.P3585877102110178199

namespace A302338

/-- `2*n+3+or(n, n+1)` -/
def P3585877102110178199.Spec : Prop :=
  ∀ n, (P3585877102110178199.a n : ℤ) = A302338 (n + 1)

end A302338

/-! ## A302338.P3405499104506069645

`4*(n+1)-and(n, n+1)`
-/

namespace A302338.P3405499104506069645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - (Nat.land n (n + 1) : ℤ)

end

end A302338.P3405499104506069645

namespace A302338

/-- `4*(n+1)-and(n, n+1)` -/
def P3405499104506069645.Spec : Prop :=
  ∀ n, P3405499104506069645.a n = A302338 (n + 1)

end A302338

/-! ## A302338.P1630017504761600397

`n+3+or(n, n+1)+n`
-/

namespace A302338.P1630017504761600397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3 + (Nat.lor n (n + 1) + n)

end

end A302338.P1630017504761600397

namespace A302338

/-- `n+3+or(n, n+1)+n` -/
def P1630017504761600397.Spec : Prop :=
  ∀ n, (P1630017504761600397.a n : ℤ) = A302338 (n + 1)

end A302338

/-! ## A302338.P14689929603882508423

`3*n+and(n, -(n+2))+4`
-/

namespace A302338.P14689929603882508423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (Int.land (n : ℤ) (-(n + 2 : ℤ)) + 4)

end

end A302338.P14689929603882508423

namespace A302338

/-- `3*n+and(n, -(n+2))+4` -/
def P14689929603882508423.Spec : Prop :=
  ∀ n, P14689929603882508423.a n = A302338 (n + 1)

end A302338

/-! ## A302338.P6808135689595685000

`∑[2-Δ[and(n, n-1)-2*n]]`
-/

namespace A302338.P6808135689595685000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) - (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302338.P6808135689595685000

namespace A302338

/-- `∑[2-Δ[and(n, n-1)-2*n]]` -/
def P6808135689595685000.Spec : Prop :=
  ∀ n, P6808135689595685000.a n = A302338 (n + 1)

end A302338

/-! ## A302338.P14777761181912287583

`∑[n+1]-(∑[n-3]+and(n, n+1))`
-/

namespace A302338.P14777761181912287583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (∑ j ∈ Finset.range (n + 1), f2 j + (Nat.land n (n + 1) : ℤ))

end

end A302338.P14777761181912287583

namespace A302338

/-- `∑[n+1]-(∑[n-3]+and(n, n+1))` -/
def P14777761181912287583.Spec : Prop :=
  ∀ n, P14777761181912287583.a n = A302338 (n + 1)

end A302338

/-! ## A302338.P18280240205009405440

`2*n+gcd(n+1, and(n, n+1))+n+3`
-/

namespace A302338.P18280240205009405440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (Nat.gcd (n + 1) (Nat.land n (n + 1)) + (n + 3))

end

end A302338.P18280240205009405440

namespace A302338

/-- `2*n+gcd(n+1, and(n, n+1))+n+3` -/
def P18280240205009405440.Spec : Prop :=
  ∀ n, (P18280240205009405440.a n : ℤ) = A302338 (n + 1)

end A302338

/-! ## A302338.P784211630739162413

`A341522(n)+2+n`
-/

namespace A302338.P784211630739162413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341522 n + 2 + (n : ℤ)

end

end A302338.P784211630739162413

namespace A302338

/-- `A341522(n)+2+n` -/
def P784211630739162413.Spec : Prop :=
  ∀ n, P784211630739162413.a n = A302338 (n + 1)

end A302338

/-! ## A302338.P18121246072016621103

`∑[2*(A214546(n)+1)]`
-/

namespace A302338.P18121246072016621103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A214546 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302338.P18121246072016621103

namespace A302338

/-- `∑[2*(A214546(n)+1)]` -/
def P18121246072016621103.Spec : Prop :=
  ∀ n, P18121246072016621103.a n = A302338 (n + 1)

end A302338

/-! ## A302338.P5959615510119998055

`2*(A109168(n+1)+n+1)`
-/

namespace A302338.P5959615510119998055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A109168 (n + 1) + (n + 1 : ℤ))

end

end A302338.P5959615510119998055

namespace A302338

/-- `2*(A109168(n+1)+n+1)` -/
def P5959615510119998055.Spec : Prop :=
  ∀ n, P5959615510119998055.a n = A302338 (n + 1)

end A302338

/-! ## A302338.P9015604790582928312

`2*(n+1+A140472(n+1))`
-/

namespace A302338.P9015604790582928312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) + A140472 (n + 1))

end

end A302338.P9015604790582928312

namespace A302338

/-- `2*(n+1+A140472(n+1))` -/
def P9015604790582928312.Spec : Prop :=
  ∀ n, P9015604790582928312.a n = A302338 (n + 1)

end A302338

/-! ## A302338.P6492602551809248076

`A006519(n+1)+3*(n+1)`
-/

namespace A302338.P6492602551809248076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) + (3 * (n + 1) : ℤ)

end

end A302338.P6492602551809248076

namespace A302338

/-- `A006519(n+1)+3*(n+1)` -/
def P6492602551809248076.Spec : Prop :=
  ∀ n, P6492602551809248076.a n = A302338 (n + 1)

end A302338

/-! ## A302338.P736330709789018744

`A086799(n+1)+2*n+3`
-/

namespace A302338.P736330709789018744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (n + 1) + (2 * n + 3 : ℤ)

end

end A302338.P736330709789018744

namespace A302338

/-- `A086799(n+1)+2*n+3` -/
def P736330709789018744.Spec : Prop :=
  ∀ n, P736330709789018744.a n = A302338 (n + 1)

end A302338

/-! ## A302338.P1293964557656093333

`4*(n+1)-A129760(n+1)`
-/

namespace A302338.P1293964557656093333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A129760 (n + 1)

end

end A302338.P1293964557656093333

namespace A302338

/-- `4*(n+1)-A129760(n+1)` -/
def P1293964557656093333.Spec : Prop :=
  ∀ n, P1293964557656093333.a n = A302338 (n + 1)

end A302338

/-! ## A302338.P11226009015347846375

`A349102(n+1)+A339597(n)`
-/

namespace A302338.P11226009015347846375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349102 (n + 1) + A339597 n

end

end A302338.P11226009015347846375

namespace A302338

/-- `A349102(n+1)+A339597(n)` -/
def P11226009015347846375.Spec : Prop :=
  ∀ n, P11226009015347846375.a n = A302338 (n + 1)

end A302338

/-! ## A302338.P13863875198939672915

`A008486(n+1)+A006519(n+1)`
-/

namespace A302338.P13863875198939672915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) + A006519 (n + 1)

end

end A302338.P13863875198939672915

namespace A302338

/-- `A008486(n+1)+A006519(n+1)` -/
def P13863875198939672915.Spec : Prop :=
  ∀ n, P13863875198939672915.a n = A302338 (n + 1)

end A302338

/-! ## A302338.P15760980028890678491

`A144396(n+1)+A086799(n+1)`
-/

namespace A302338.P15760980028890678491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) + A086799 (n + 1)

end

end A302338.P15760980028890678491

namespace A302338

/-- `A144396(n+1)+A086799(n+1)` -/
def P15760980028890678491.Spec : Prop :=
  ∀ n, P15760980028890678491.a n = A302338 (n + 1)

end A302338

/-! ## A302338.P13217551807292610487

`A385047(n+1)+A047270(n+1)`
-/

namespace A302338.P13217551807292610487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385047 (n + 1) + A047270 (n + 1)

end

end A302338.P13217551807292610487

namespace A302338

/-- `A385047(n+1)+A047270(n+1)` -/
def P13217551807292610487.Spec : Prop :=
  ∀ n, P13217551807292610487.a n = A302338 (n + 1)

end A302338

/-! ## A302338.P7909419522819889783

`A005843(n+1)+A005843(A140472(n+1))`
-/

namespace A302338.P7909419522819889783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A005843 (A140472 (n + 1)).toNat

end

end A302338.P7909419522819889783

namespace A302338

/-- `A005843(n+1)+A005843(A140472(n+1))` -/
def P7909419522819889783.Spec : Prop :=
  ∀ n, P7909419522819889783.a n = A302338 (n + 1)

end A302338

/-!
# A302339: Triangle read by rows: T(n,k) = number of linear operators T on an n-dimensional vector space over GF(2) such that U is invariant under T for some given k-dimensional subspace U.

The programs for A302339, there is no canonical definition to state claims against.
-/

/-! ## A302339.P7575366495284020181

`2^A073254(n)`
-/

namespace A302339.P7575366495284020181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A073254 n : ℤ)

end

end A302339.P7575366495284020181

/-! ## A302339.P17078485915569958625

`A016116((n+1-C(comp[∑[n]]-n, 2))²+∑[char[∑[n+1]]]²+(n-C(∑[char[∑[n]]], 2))²)`
-/

namespace A302339.P17078485915569958625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2 + ((((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 : ℕ) : ℤ) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f6 j) 2 : ℤ)) ^ 2)).toNat

end

end A302339.P17078485915569958625

/-! ## A302339.P9304962316298562541

`A000079(A073254(n))`
-/

namespace A302339.P9304962316298562541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A073254 n).toNat

end

end A302339.P9304962316298562541

/-! ## A302339.P965577769210323464

`A175268(A073254(n)²)`
-/

namespace A302339.P965577769210323464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175268 (A073254 n ^ 2).toNat

end

end A302339.P965577769210323464

/-! ## A302339.P1863930593906917896

`A011782(A073254(n)+1)`
-/

namespace A302339.P1863930593906917896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A073254 n + 1).toNat

end

end A302339.P1863930593906917896

/-!
# A302342: Cumulative sums of the bits in the binary representation of Pi.

The programs for A302342, there is no canonical definition to state claims against.
-/

/-! ## A302342.P15833245058137189580

`∑[∑[A155482(n)]]`
-/

namespace A302342.P15833245058137189580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302342.P15833245058137189580

/-! ## A302342.P4322489019776559316

`∑[A004601(n+2)]`
-/

namespace A302342.P4322489019776559316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302342.P4322489019776559316

/-! ## A302342.P1673956005231365286

`∑[1-A180433(n+1)]`
-/

namespace A302342.P1673956005231365286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A180433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302342.P1673956005231365286

/-! ## A302342.P14308020959623956900

`∑[char[A004711(n+1)-1]]`
-/

namespace A302342.P14308020959623956900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302342.P14308020959623956900

/-! ## A302342.P9285293131651688013

`(A166006(n+1)+n+1)/2`
-/

namespace A302342.P9285293131651688013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166006 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A302342.P9285293131651688013

/-! ## A302342.P13326788468691044026

`a(n-1)+1-(A000010(ceil(1/(n+1)))-A004601(n+2))` with `a(0)=1`
-/

namespace A302342.P13326788468691044026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (A000010 ⌈1 / (n + 1 : ℚ)⌉.toNat - A004601 (n + 2))

end

end A302342.P13326788468691044026

/-! ## A302342.P17556118592982575987

`∑[floor(2^n*asin(1))%2]`
-/

namespace A302342.P17556118592982575987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 ^ n : ℝ) * Real.arcsin (1 : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302342.P17556118592982575987

/-! ## A302342.P12772220565352442695

`∑[and(1, floor(2^n*asin(1)))]`
-/

namespace A302342.P12772220565352442695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(2 ^ n : ℝ) * Real.arcsin (1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302342.P12772220565352442695

/-! ## A302342.P4506014675378232578

`∑[∑[A155996(n)]%2]`
-/

namespace A302342.P4506014675378232578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302342.P4506014675378232578

/-!
# A302343: Solutions to the congruence 1^n + 2^n + ... + n^n == 79 (mod n).

The programs for A302343, there is no canonical definition to state claims against.
-/

/-! ## A302343.P1770562980112458526

`A302344(n+1)%(6*A280041(n+1))`
-/

namespace A302343.P1770562980112458526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302344 (n + 1)) (6 * A280041 (n + 1))

end

end A302343.P1770562980112458526

/-! ## A302343.P5021875173867982153

`A302344(n+1)%A008458(A280041(n+1))`
-/

namespace A302343.P5021875173867982153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302344 (n + 1)) (A008458 (A280041 (n + 1)).toNat)

end

end A302343.P5021875173867982153

/-!
# A302344: Solutions to the congruence 1^n + 2^n + ... + n^n == 193 (mod n).

The programs for A302344, there is no canonical definition to state claims against.
-/

/-! ## A302344.P6653868815679085545

`record[gcd(n+1, A181343(2*n+5))]`
-/

namespace A302344.P6653868815679085545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A181343 (2 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302344.P6653868815679085545

/-! ## A302344.P7945328177769464841

`record[gcd(A034262(n), A100156(n+1))]`
-/

namespace A302344.P7945328177769464841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034262 n) (A100156 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302344.P7945328177769464841

/-!
# A302345: Primes p such that the set { 1+2p, 1+6p, 1+14p, 1+42p, 1+86p, 1+258p, 1+602p, 1+1806p } does not contain any primes.

The programs for A302345, there is no canonical definition to state claims against.
-/

/-! ## A302345.P13022162960564714426

`A117911(A117863(2*n+1))+A117873(2*n+3)`
-/

namespace A302345.P13022162960564714426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117911 (A117863 (2 * n + 1)).toNat + A117873 (2 * n + 3)

end

end A302345.P13022162960564714426

/-!
# A302346: Triangle read by rows. Number of invertible linear operators T on an n-dimensional vector space over GF(2) such that T(U) = U for some given k-dimensional subspace U.

The programs for A302346, there is no canonical definition to state claims against.
-/

/-! ## A302346.P12284565633757806543

`A002884(A003056(n))/A022166(n)`
-/

namespace A302346.P12284565633757806543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002884 (A003056 n).toNat : ℚ) / (A022166 n : ℚ)

end

end A302346.P12284565633757806543

/-! ## A302346.P16720719943485184335

`A059773(A137688(n))/A022166(n)`
-/

namespace A302346.P16720719943485184335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059773 (A137688 n).toNat : ℚ) / (A022166 n : ℚ)

end

end A302346.P16720719943485184335

/-! ## A302346.P3286369242836630202

`A002884(A003056(n))/sqrt(A359313(n))`
-/

namespace A302346.P3286369242836630202
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002884 (A003056 n).toNat : ℝ) / Real.sqrt (A359313 n : ℝ)

end

end A302346.P3286369242836630202

/-! ## A302346.P17721548566059059341

`A002884(A003056(n))/A000265(A108084(n))`
-/

namespace A302346.P17721548566059059341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002884 (A003056 n).toNat : ℚ) / (A000265 (A108084 n).toNat : ℚ)

end

end A302346.P17721548566059059341

/-!
# A302347: a(n) = Sum of (Y(2,p)^2) over the partitions p of n, Y(2,p) = number of part sizes with multiplicity 2 or greater in p.

The programs for A302347, there is no canonical definition to state claims against.
-/

/-! ## A302347.P12808128363621104910

`(A302348(n)+A024788(n+2))/2`
-/

namespace A302347.P12808128363621104910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302348 n + A024788 (n + 2) : ℚ) / 2

end

end A302347.P12808128363621104910

/-! ## A302347.P16880073359313118071

`A014682(A302348(n)+A024788(n+2))`
-/

namespace A302347.P16880073359313118071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A302348 n + A024788 (n + 2)).toNat

end

end A302347.P16880073359313118071

/-! ## A302347.P7589276311699247894

`A004525(A302348(n)+A024788(n+2))`
-/

namespace A302347.P7589276311699247894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A302348 n + A024788 (n + 2)).toNat

end

end A302347.P7589276311699247894

/-! ## A302347.P11712761997588165629

`A004526(A302348(n)+A024788(n+2))`
-/

namespace A302347.P11712761997588165629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A302348 n + A024788 (n + 2)).toNat

end

end A302347.P11712761997588165629

/-! ## A302347.P4183765691896153845

`A025480(A302348(n)+A024788(n+2))`
-/

namespace A302347.P4183765691896153845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A302348 n + A024788 (n + 2)).toNat

end

end A302347.P4183765691896153845

/-!
# A302348: a(n) = Sum_{p in P} (H(2,p)^2)/2, where P is the set of partitions of n, and H(2,p) is the number of hooks of length 2 in p.

The programs for A302348, there is no canonical definition to state claims against.
-/

/-! ## A302348.P8428328326274343248

`A301313(n)+∑[A182712(n)]`
-/

namespace A302348.P8428328326274343248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301313 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302348.P8428328326274343248

/-! ## A302348.P8199981915207879329

`A301313(n)+A024786(A028310(n))`
-/

namespace A302348.P8199981915207879329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301313 n + A024786 (A028310 n).toNat

end

end A302348.P8199981915207879329

/-! ## A302348.P4275761897746868590

`A194452(n)+A301313(n)-A096541(n)`
-/

namespace A302348.P4275761897746868590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194452 n + (A301313 n - A096541 n)

end

end A302348.P4275761897746868590

/-! ## A302348.P551672822399595497

`∑[A087787(n)]+A301313(n)-A000041(n)`
-/

namespace A302348.P551672822399595497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A301313 n - A000041 n)

end

end A302348.P551672822399595497

/-! ## A302348.P3106557100867487363

`A024786(n+2)+A301313(n)-A000041(n)`
-/

namespace A302348.P3106557100867487363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 2) + (A301313 n - A000041 n)

end

end A302348.P3106557100867487363

/-! ## A302348.P10786093819164875662

`A302347(n)+A302347(n)-A024788(n+2)`
-/

namespace A302348.P10786093819164875662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302347 n + (A302347 n - A024788 (n + 2))

end

end A302348.P10786093819164875662

/-!
# A302352: a(n) = Sum_{k=0..n} k^4*binomial(2*n-k,n).

The programs for A302352, there is no canonical definition to state claims against.
-/

/-! ## A302352.P346644723829028849

`A353708(A224419(n+1))-A095106(n+1)`
-/

namespace A302352.P346644723829028849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353708 (A224419 (n + 1)).toNat - A095106 (n + 1)

end

end A302352.P346644723829028849

/-!
# A302353: a(n) = Sum_{k=0..n} k^n*binomial(2*n-k,n).

The programs for A302353, there is no canonical definition to state claims against.
-/

/-! ## A302353.P6978940814384112110

`A211235(A004277(n²))`
-/

namespace A302353.P6978940814384112110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211235 (A004277 (n ^ 2)).toNat

end

end A302353.P6978940814384112110

/-! ## A302353.P342898542564642874

`A211235(A336489(n+2))`
-/

namespace A302353.P342898542564642874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211235 (A336489 (n + 2)).toNat

end

end A302353.P342898542564642874

/-!
# A302354: Expansion of (Sum_{i>=1} x^prime(i))*(Sum_{j>=0} x^(j^3)).

The programs for A302354, there is no canonical definition to state claims against.
-/

/-! ## A302354.P6338288769574138993

`A283760(n+1)+char[eq[1, ∑{e}[n+1, #]]]`
-/

namespace A302354.P6338288769574138993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302354.P6338288769574138993

/-! ## A302354.P2008224219331197195

`A283760(n+1)+Δ[A230980(n)]`
-/

namespace A302354.P2008224219331197195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + (f1 (n + 1) - f1 n)

end

end A302354.P2008224219331197195

/-! ## A302354.P8487595109573428979

`A283760(n+1)+A010051(n+1)`
-/

namespace A302354.P8487595109573428979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + A010051 (n + 1)

end

end A302354.P8487595109573428979

/-! ## A302354.P4570287969196733296

`A283760(n+1)+A129950(n+1)²`
-/

namespace A302354.P4570287969196733296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + A129950 (n + 1) ^ 2

end

end A302354.P4570287969196733296

/-! ## A302354.P1511610451052348391

`A283760(n+1)+char[A006093(n+1)]`
-/

namespace A302354.P1511610451052348391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A302354.P1511610451052348391

/-! ## A302354.P18372068934145699148

`A283760(n+1)+char[A057237(n+1)]`
-/

namespace A302354.P18372068934145699148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A302354.P18372068934145699148

/-! ## A302354.P16139286045833272247

`A283760(n+1)+char[A007918(n)-1]`
-/

namespace A302354.P16139286045833272247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A302354.P16139286045833272247

/-! ## A302354.P1239777377756020821

`A283760(n+1)+char[record[A000010(n+1)]]`
-/

namespace A302354.P1239777377756020821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A302354.P1239777377756020821

/-! ## A302354.P7346325893758235792

`A283760(n+1)+char[A000040(n+1)-1]`
-/

namespace A302354.P7346325893758235792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A302354.P7346325893758235792

/-! ## A302354.P18007149744981764173

`A283760(n+1)+char[A006530(n+2)-1]`
-/

namespace A302354.P18007149744981764173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A302354.P18007149744981764173

/-! ## A302354.P9847372307805379518

`A283760(n+1)+char[A020639(n+2)-1]`
-/

namespace A302354.P9847372307805379518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A302354.P9847372307805379518

/-! ## A302354.P10236837025362423178

`A283760(n+1)+char[eq[1, A001222(n+1)]]`
-/

namespace A302354.P10236837025362423178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302354.P10236837025362423178

/-! ## A302354.P2028391067500668748

`A283760(n+1)+char[p?[A005117(n+1)]-1]`
-/

namespace A302354.P2028391067500668748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A302354.P2028391067500668748

/-! ## A302354.P11290880536550680632

`A283760(n+1)+char[comp[A018252(n+1)-1]]`
-/

namespace A302354.P11290880536550680632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302354.P11290880536550680632

/-! ## A302354.P5357721529763264232

`A283760(n+1)+A001222(A089026(n+1))`
-/

namespace A302354.P5357721529763264232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + A001222 (A089026 (n + 1)).toNat

end

end A302354.P5357721529763264232

/-! ## A302354.P8316808004491170561

`A283760(n+1)+char[A000010(A006530(n+1))]`
-/

namespace A302354.P8316808004491170561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006530 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A302354.P8316808004491170561

/-! ## A302354.P11843274246864410106

`A283760(n+1)+char[A000010(A014963(n+1))]`
-/

namespace A302354.P11843274246864410106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A302354.P11843274246864410106

/-! ## A302354.P1467723965768483002

`A283760(n+1)+char[A000010(A020639(n+1))]`
-/

namespace A302354.P1467723965768483002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A020639 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A302354.P1467723965768483002

/-! ## A302354.P11230232997064370817

`A283760(n+1)+val(A000040(A000005(n+1)), 3)`
-/

namespace A302354.P11230232997064370817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + (SequenceMachineLib.valuation (A000040 (A000005 (n + 1)).toNat).toNat 3 : ℤ)

end

end A302354.P11230232997064370817

/-! ## A302354.P15933830086124407673

`A283760(n+1)+∑{d}[A001222(n+1), A008683(#)]`
-/

namespace A302354.P15933830086124407673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (n + 1) + ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A302354.P15933830086124407673

/-!
# A302357: a(n) = coefficient of x^n in the n-th iteration (n-fold self-composition) of the g.f. of Fibonacci numbers (A000045).

The programs for A302357, there is no canonical definition to state claims against.
-/

/-! ## A302357.P5167511112348910318

`A286012(∑[4*n]+1)`
-/

namespace A302357.P5167511112348910318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286012 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302357.P5167511112348910318

/-!
# A302358: a(n) = coefficient of x^n in the n-th iteration (n-fold self-composition) of e.g.f. -log(1 - x).

The programs for A302358, there is no canonical definition to state claims against.
-/

/-! ## A302358.P5309284829353170953

`A111933(∑[4*n]+1)`
-/

namespace A302358.P5309284829353170953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302358.P5309284829353170953

/-! ## A302358.P8528489408141365517

`record[gcd(A080232(n), A111933(n+1))]`
-/

namespace A302358.P8528489408141365517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080232 n) (A111933 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302358.P8528489408141365517

/-! ## A302358.P17840155666359147083

`lcm(A033999(n), A111933(A001844(n)))`
-/

namespace A302358.P17840155666359147083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A111933 (A001844 n).toNat)

end

end A302358.P17840155666359147083

/-! ## A302358.P8469531495495482132

`or(A000007(n), A111933(A001844(n)))`
-/

namespace A302358.P8469531495495482132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A111933 (A001844 n).toNat)

end

end A302358.P8469531495495482132

/-! ## A302358.P13195427027052851790

`A007318(∑[n])*A111933(A001844(n))`
-/

namespace A302358.P13195427027052851790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A111933 (A001844 n).toNat

end

end A302358.P13195427027052851790

/-!
# A302359: Numbers that are the sum of 3 squares > 1.

The programs for A302359, there is no canonical definition to state claims against.
-/

/-! ## A302359.P2910692040950790067

`lt[0, A281155(n)]`
-/

namespace A302359.P2910692040950790067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A302359.P2910692040950790067

/-! ## A302359.P14290397183665201514

`eq[1, A002828(A281155(n)²)]`
-/

namespace A302359.P14290397183665201514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A281155 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302359.P14290397183665201514

/-! ## A302359.P13703577879630379712

`eq[1, A089309(A281155(n)²)]`
-/

namespace A302359.P13703577879630379712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A281155 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302359.P13703577879630379712

/-! ## A302359.P755687772440903131

`eq[1, gcd(A000040(n+1), A281155(n))]`
-/

namespace A302359.P755687772440903131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A281155 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302359.P755687772440903131

/-! ## A302359.P11622159645158283853

`eq[A000038(n+1), A000038(A281155(n))]`
-/

namespace A302359.P11622159645158283853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A281155 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302359.P11622159645158283853

/-! ## A302359.P498901809311532973

`eq[0, A000038(A281155(n)²)]`
-/

namespace A302359.P498901809311532973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A281155 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302359.P498901809311532973

/-! ## A302359.P14592392472079773205

`eq[1, A190321(A281155(n)²)]`
-/

namespace A302359.P14592392472079773205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190321 (A281155 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302359.P14592392472079773205

/-! ## A302359.P9675740749950146487

`lt[A243148(A238531(n)), A025427(n)]`
-/

namespace A302359.P9675740749950146487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A238531 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302359.P9675740749950146487

/-!
# A302360: Numbers that are the sum of 3 cubes > 1.

The programs for A302360, there is no canonical definition to state claims against.
-/

/-! ## A302360.P6338016419979101382

`lt[A320841(A238531(n)), A025456(n)]`
-/

namespace A302360.P6338016419979101382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A238531 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302360.P6338016419979101382

/-!
# A302361: Number of n X n 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302361, there is no canonical definition to state claims against.
-/

/-! ## A302361.P6612613977842233295

`A302367(∑[4*n]+1)`
-/

namespace A302361.P6612613977842233295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302361.P6612613977842233295

/-! ## A302361.P1585757457570579909

`record[A302367(Δ[A235355(n)])]`
-/

namespace A302361.P1585757457570579909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302361.P1585757457570579909

/-! ## A302361.P16599624516708014404

`record[A302367(A330613(n+1))]`
-/

namespace A302361.P16599624516708014404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302361.P16599624516708014404

/-! ## A302361.P15718035566628060098

`or(char[2], A302367(A001844(n)))`
-/

namespace A302361.P15718035566628060098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A302367 (A001844 n).toNat)

end

end A302361.P15718035566628060098

/-! ## A302361.P63152158499169893

`record[A302367(Δ[A079824(n+1)])]`
-/

namespace A302361.P63152158499169893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302361.P63152158499169893

/-!
# A302362: Number of nX3 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302362, there is no canonical definition to state claims against.
-/

/-! ## A302362.P14101223352666957078

`A302367(∑[n+3]+1)`
-/

namespace A302362.P14101223352666957078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302362.P14101223352666957078

/-! ## A302362.P16277536067134337789

`record[A302367(A128373(n+2))]`
-/

namespace A302362.P16277536067134337789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A128373 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302362.P16277536067134337789

/-! ## A302362.P7619971022200892879

`or(A025465(n), A302367(A034856(n+2)))`
-/

namespace A302362.P7619971022200892879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025465 n) (A302367 (A034856 (n + 2)).toNat)

end

end A302362.P7619971022200892879

/-! ## A302362.P258796114319735058

`or(A016389(n+1), A302367(A034856(n+2)))`
-/

namespace A302362.P258796114319735058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 (n + 1)) (A302367 (A034856 (n + 2)).toNat)

end

end A302362.P258796114319735058

/-! ## A302362.P7800643931632476324

`or(A019590(n+2), A302367(A034856(n+2)))`
-/

namespace A302362.P7800643931632476324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019590 (n + 2)) (A302367 (A034856 (n + 2)).toNat)

end

end A302362.P7800643931632476324

/-!
# A302363: Number of nX4 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302363, there is no canonical definition to state claims against.
-/

/-! ## A302363.P10683633491078334774

`A302367(A141214(n+1))`
-/

namespace A302363.P10683633491078334774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A141214 (n + 1)).toNat

end

end A302363.P10683633491078334774

/-! ## A302363.P15504371852609449207

`A302367(A027379(n+2))`
-/

namespace A302363.P15504371852609449207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A027379 (n + 2)).toNat

end

end A302363.P15504371852609449207

/-! ## A302363.P12109260685122462796

`A302367(A056000(n)+7)`
-/

namespace A302363.P12109260685122462796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A056000 n + 7).toNat

end

end A302363.P12109260685122462796

/-! ## A302363.P15107782345783699167

`A302367(eq[3, A193592(n)])`
-/

namespace A302363.P15107782345783699167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302363.P15107782345783699167

/-! ## A302363.P1116335347135326483

`A302367(A052905(n+1)+2)`
-/

namespace A302363.P1116335347135326483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A052905 (n + 1) + 2).toNat

end

end A302363.P1116335347135326483

/-!
# A302364: Number of nX5 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302364, there is no canonical definition to state claims against.
-/

/-! ## A302364.P14394101175842353171

`A302367(Δ[A264443(n)])`
-/

namespace A302364.P14394101175842353171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (f1 (n + 1) - f1 n).toNat

end

end A302364.P14394101175842353171

/-! ## A302364.P13567114859030309068

`A302367(A046691(n+3))`
-/

namespace A302364.P13567114859030309068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A046691 (n + 3)).toNat

end

end A302364.P13567114859030309068

/-! ## A302364.P17568108981595615514

`A302367(eq[8, A140996(n)])`
-/

namespace A302364.P17568108981595615514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302364.P17568108981595615514

/-! ## A302364.P3711280594558370895

`A302367(eq[8, A166065(n)])`
-/

namespace A302364.P3711280594558370895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302364.P3711280594558370895

/-! ## A302364.P17458119544170789798

`A302367(Δ[A023545(n+1)])`
-/

namespace A302364.P17458119544170789798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (f1 (n + 1) - f1 n).toNat

end

end A302364.P17458119544170789798

/-!
# A302365: Number of nX6 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302365, there is no canonical definition to state claims against.
-/

/-! ## A302365.P8941761133029477344

`A302367(A052905(n+3))`
-/

namespace A302365.P8941761133029477344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A052905 (n + 3)).toNat

end

end A302365.P8941761133029477344

/-! ## A302365.P9832879061866391086

`A302367(eq[3, A219347(n)])`
-/

namespace A302365.P9832879061866391086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302365.P9832879061866391086

/-! ## A302365.P12499479518666023842

`A302367(eq[5, A193592(n)])`
-/

namespace A302365.P12499479518666023842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302365.P12499479518666023842

/-! ## A302365.P13630392078988247720

`A302367(eq[16, A057728(n+1)])`
-/

namespace A302365.P13630392078988247720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302365.P13630392078988247720

/-! ## A302365.P10970916573933672208

`A302367(Δ[Δ[A006504(n+1)]])`
-/

namespace A302365.P10970916573933672208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (f1 (n + 1) - f1 n).toNat

end

end A302365.P10970916573933672208

/-!
# A302366: Number of nX7 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302366, there is no canonical definition to state claims against.
-/

/-! ## A302366.P5157927763680082167

`A302367(A055999(n+4))`
-/

namespace A302366.P5157927763680082167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A055999 (n + 4)).toNat

end

end A302366.P5157927763680082167

/-! ## A302366.P7754957927824133199

`A302367(eq[4, A219347(n)])`
-/

namespace A302366.P7754957927824133199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302366.P7754957927824133199

/-! ## A302366.P5830177904690175208

`A302367(eq[6, A193592(n)])`
-/

namespace A302366.P5830177904690175208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302366.P5830177904690175208

/-! ## A302366.P11644885115091564985

`A302367(A167499(n+6)-11)`
-/

namespace A302366.P11644885115091564985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A167499 (n + 6) - 11).toNat

end

end A302366.P11644885115091564985

/-! ## A302366.P15642342145458178949

`A302367(eq[6, A025581(n)]+1)`
-/

namespace A302366.P15642342145458178949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A302366.P15642342145458178949

/-!
# A302367: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302367, there is no canonical definition to state claims against.
-/

/-! ## A302367.P11841308187182981898

`A303084(n+1)+A016389(A022166(n))`
-/

namespace A302367.P11841308187182981898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (n + 1) + A016389 (A022166 n).toNat

end

end A302367.P11841308187182981898

/-! ## A302367.P8646886483526876510

`A303084(n+1)+A016389(A027336(n))`
-/

namespace A302367.P8646886483526876510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (n + 1) + A016389 (A027336 n).toNat

end

end A302367.P8646886483526876510

/-! ## A302367.P3628745788138799755

`A303084(n+1)+A016389(A176561(n))`
-/

namespace A302367.P3628745788138799755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (n + 1) + A016389 (A176561 n).toNat

end

end A302367.P3628745788138799755

/-! ## A302367.P5425113004371068030

`A303084(n+1)-A006927(A028326(n))`
-/

namespace A302367.P5425113004371068030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (n + 1) - A006927 (A028326 n).toNat

end

end A302367.P5425113004371068030

/-! ## A302367.P8194008557570607698

`A303084(n+1)-A014707(A022171(n))`
-/

namespace A302367.P8194008557570607698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (n + 1) - A014707 (A022171 n).toNat

end

end A302367.P8194008557570607698

/-!
# A302368: Number of 2Xn 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302368, the canonical program `A302368.P10590595780588651810` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302368 has offset 1).

The definition of A302368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302368.P10590595780588651810

`2*xor(a(n-1)+a(n-2), and(1-a(n-1), a(n-1)))` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A302368

/-- `2*xor(a(n-1)+a(n-2), and(1-a(n-1), a(n-1)))` -/
def P10590595780588651810.Spec : Prop :=
  ∀ n, P10590595780588651810.a n = A302368 (n + 1)

theorem P10590595780588651810.correct : P10590595780588651810.Spec := by
  intro n
  simp only [A302368, Nat.add_sub_cancel]

end A302368

/-! ## A302368.P10777207015734338153

`2*a(n-1)+4*a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=2, a(2)=12, a(3)=20`
-/

namespace A302368.P10777207015734338153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 12, 20] fun n a =>
  2 * a (n - 1) + 4 * a (n - 2) - 4 * a (n - 3) - 4 * a (n - 4)

end

end A302368.P10777207015734338153

namespace A302368

/-- `2*a(n-1)+4*a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P10777207015734338153.Spec : Prop :=
  ∀ n, P10777207015734338153.a n = A302368 (n + 1)

end A302368

/-! ## A302368.P9899016734533094737

`2*(a(n-2)+2*A293007(n))` with `a(0)=2, a(1)=2`
-/

namespace A302368.P9899016734533094737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * (a (n - 2) + 2 * A293007 n)

end

end A302368.P9899016734533094737

namespace A302368

/-- `2*(a(n-2)+2*A293007(n))` -/
def P9899016734533094737.Spec : Prop :=
  ∀ n, P9899016734533094737.a n = A302368 (n + 1)

end A302368

/-! ## A302368.P2728348475301263047

`A302367(∑[n+1]+2)`
-/

namespace A302368.P2728348475301263047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A302368.P2728348475301263047

namespace A302368

/-- `A302367(∑[n+1]+2)` -/
def P2728348475301263047.Spec : Prop :=
  ∀ n, P2728348475301263047.a n = A302368 (n + 1)

end A302368

/-!
# A302369: Number of 3Xn 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302369, there is no canonical definition to state claims against.
-/

/-! ## A302369.P4291964878988170355

`A302367(∑[n+2]+4)`
-/

namespace A302369.P4291964878988170355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302369.P4291964878988170355

/-! ## A302369.P509813559932405599

`lcm((-1)^n, A302367(A167614(n+1)))`
-/

namespace A302369.P509813559932405599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A302367 (A167614 (n + 1)).toNat)

end

end A302369.P509813559932405599

/-! ## A302369.P1228409342412228993

`A302367(A167614(n+1))+A025469(n)`
-/

namespace A302369.P1228409342412228993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A167614 (n + 1)).toNat + A025469 n

end

end A302369.P1228409342412228993

/-! ## A302369.P13838096043187016186

`A302367(A167614(n+1))+A185037(n)`
-/

namespace A302369.P13838096043187016186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A167614 (n + 1)).toNat + A185037 n

end

end A302369.P13838096043187016186

/-! ## A302369.P2268689776807504918

`A302367(A167614(n+1))+A185284(n)`
-/

namespace A302369.P2268689776807504918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A167614 (n + 1)).toNat + A185284 n

end

end A302369.P2268689776807504918

/-!
# A302370: Number of 4Xn 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302370, there is no canonical definition to state claims against.
-/

/-! ## A302370.P8941497719123967154

`A302367(A141214(n)+7)`
-/

namespace A302370.P8941497719123967154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A141214 n + 7).toNat

end

end A302370.P8941497719123967154

/-! ## A302370.P931762463674509114

`A302367(A052905(n)+9)`
-/

namespace A302370.P931762463674509114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A052905 n + 9).toNat

end

end A302370.P931762463674509114

/-! ## A302370.P6868928245487185986

`A302367(A055999(n)+10)`
-/

namespace A302370.P6868928245487185986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A055999 n + 10).toNat

end

end A302370.P6868928245487185986

/-! ## A302370.P7332762080460544512

`A302367(Δ[A008778(n)]+6)`
-/

namespace A302370.P7332762080460544512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (f1 (n + 1) - f1 n + 6).toNat

end

end A302370.P7332762080460544512

/-! ## A302370.P10550131972553084623

`A302367(A167614(n+2)+1)`
-/

namespace A302370.P10550131972553084623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A167614 (n + 2) + 1).toNat

end

end A302370.P10550131972553084623

/-!
# A302371: Number of 5Xn 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302371, there is no canonical definition to state claims against.
-/

/-! ## A302371.P7295096657787096092

`A302367(A167499(n+3))`
-/

namespace A302371.P7295096657787096092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A167499 (n + 3)).toNat

end

end A302371.P7295096657787096092

/-! ## A302371.P4106241658768703950

`A302367(A155212(n)+13)`
-/

namespace A302371.P4106241658768703950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A155212 n + 13).toNat

end

end A302371.P4106241658768703950

/-! ## A302371.P6485468209165852664

`A302367(A056000(n)+15)`
-/

namespace A302371.P6485468209165852664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A056000 n + 15).toNat

end

end A302371.P6485468209165852664

/-! ## A302371.P17558685399443717702

`A302367(eq[7, A066657(n)])`
-/

namespace A302371.P17558685399443717702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302371.P17558685399443717702

/-! ## A302371.P4610254778639695473

`A302367(A051936(n+4)+14)`
-/

namespace A302371.P4610254778639695473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A051936 (n + 4) + 14).toNat

end

end A302371.P4610254778639695473

/-!
# A302372: Number of 6Xn 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302372, there is no canonical definition to state claims against.
-/

/-! ## A302372.P3495320969100067238

`A302367(A056115(n)+21)`
-/

namespace A302372.P3495320969100067238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A056115 n + 21).toNat

end

end A302372.P3495320969100067238

/-! ## A302372.P15388705494902177482

`A302367(A141214(n+2)+9)`
-/

namespace A302372.P15388705494902177482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A141214 (n + 2) + 9).toNat

end

end A302372.P15388705494902177482

/-! ## A302372.P11387573239101805088

`A302367(A155212(n+1)+14)`
-/

namespace A302372.P11387573239101805088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A155212 (n + 1) + 14).toNat

end

end A302372.P11387573239101805088

/-! ## A302372.P15801379417480693933

`A302367(A051936(n+5)+15)`
-/

namespace A302372.P15801379417480693933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A051936 (n + 5) + 15).toNat

end

end A302372.P15801379417480693933

/-! ## A302372.P13955819763777814174

`A302367(eq[7, A131818(n+1)])`
-/

namespace A302372.P13955819763777814174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302372.P13955819763777814174

/-!
# A302373: Number of 7Xn 0..1 arrays with every element equal to 0, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302373, there is no canonical definition to state claims against.
-/

/-! ## A302373.P9543122584740821697

`A302367(A056119(n)+28)`
-/

namespace A302373.P9543122584740821697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A056119 n + 28).toNat

end

end A302373.P9543122584740821697

/-! ## A302373.P9643068819875770919

`A302367(eq[11, A066657(n)])`
-/

namespace A302373.P9643068819875770919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302373.P9643068819875770919

/-! ## A302373.P17242188706851156243

`A302367(A027379(n+4)+10)`
-/

namespace A302373.P17242188706851156243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A027379 (n + 4) + 10).toNat

end

end A302373.P17242188706851156243

/-! ## A302373.P9269611919026932545

`A302367(A046691(n+4)+11)`
-/

namespace A302373.P9269611919026932545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (A046691 (n + 4) + 11).toNat

end

end A302373.P9269611919026932545

/-! ## A302373.P5854030511079568551

`A302367(eq[8, A131818(n+1)])`
-/

namespace A302373.P5854030511079568551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302373.P5854030511079568551

/-!
# A302374: Number of families of 3-subsets of an n-set that cover every element.

The programs for A302374, there is no canonical definition to state claims against.
-/

/-! ## A302374.P7909712395325471770

`A077272(a(n-1)-1+n)` with `a(0)=1`
-/

namespace A302374.P7909712395325471770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077272 (a (n - 1) - 1 + (n : ℤ)).toNat

end

end A302374.P7909712395325471770

/-! ## A302374.P2347960500983014674

`A077272(n-(1-a(n-1)))` with `a(0)=1`
-/

namespace A302374.P2347960500983014674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077272 ((n : ℤ) - (1 - a (n - 1))).toNat

end

end A302374.P2347960500983014674

/-!
# A302375: Number of n X n 0..1 arrays with every element equal to 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302375, there is no canonical definition to state claims against.
-/

/-! ## A302375.P4200259619874863051

`A302381(∑[4*n]+1)`
-/

namespace A302375.P4200259619874863051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302375.P4200259619874863051

/-! ## A302375.P5234885441002707213

`A302381(A001844(n))+A011738(n)`
-/

namespace A302375.P5234885441002707213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A001844 n).toNat + A011738 n

end

end A302375.P5234885441002707213

/-! ## A302375.P12641676222477711747

`A302381(A001844(n))+A056965(n)`
-/

namespace A302375.P12641676222477711747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A001844 n).toNat + A056965 n

end

end A302375.P12641676222477711747

/-! ## A302375.P13897062797618515869

`A302381(A001844(n))+A277159(n)`
-/

namespace A302375.P13897062797618515869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A001844 n).toNat + A277159 n

end

end A302375.P13897062797618515869

/-! ## A302375.P9288389245352617822

`A302381(A001844(n))+A008683(4*(n+1))`
-/

namespace A302375.P9288389245352617822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A302375.P9288389245352617822

/-!
# A302376: Number of nX3 0..1 arrays with every element equal to 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302376, there is no canonical definition to state claims against.
-/

/-! ## A302376.P13648678994012986651

`A302381(∑[n+3]+1)`
-/

namespace A302376.P13648678994012986651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302376.P13648678994012986651

/-! ## A302376.P5518945780270281093

`record[A302381(A198464(n+1))]`
-/

namespace A302376.P5518945780270281093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302376.P5518945780270281093

/-! ## A302376.P7961366795568746361

`record[gcd(A055138(n), A302381(n+1))]`
-/

namespace A302376.P7961366795568746361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055138 n) (A302381 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302376.P7961366795568746361

/-! ## A302376.P184295583576431091

`A302381(A034856(n+2))+A025469(n)`
-/

namespace A302376.P184295583576431091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A034856 (n + 2)).toNat + A025469 n

end

end A302376.P184295583576431091

/-! ## A302376.P4035732869225810490

`A302381(A034856(n+2))+A185255(n)`
-/

namespace A302376.P4035732869225810490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A034856 (n + 2)).toNat + A185255 n

end

end A302376.P4035732869225810490

/-!
# A302377: Number of nX4 0..1 arrays with every element equal to 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302377, there is no canonical definition to state claims against.
-/

/-! ## A302377.P3492382369761911111

`A302381(A141214(n+1))`
-/

namespace A302377.P3492382369761911111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A141214 (n + 1)).toNat

end

end A302377.P3492382369761911111

/-! ## A302377.P10029195930913075393

`A302381(A055998(n+2))`
-/

namespace A302377.P10029195930913075393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A055998 (n + 2)).toNat

end

end A302377.P10029195930913075393

/-! ## A302377.P12391656230452123118

`A302381(A155212(n)+5)`
-/

namespace A302377.P12391656230452123118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A155212 n + 5).toNat

end

end A302377.P12391656230452123118

/-! ## A302377.P417831315018854596

`A302381(A056000(n)+7)`
-/

namespace A302377.P417831315018854596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A056000 n + 7).toNat

end

end A302377.P417831315018854596

/-! ## A302377.P12678422096490261289

`A302381(eq[3, A193592(n)])`
-/

namespace A302377.P12678422096490261289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302377.P12678422096490261289

/-!
# A302378: Number of nX5 0..1 arrays with every element equal to 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302378, there is no canonical definition to state claims against.
-/

/-! ## A302378.P5051405546185215244

`A302381(Δ[A264443(n)])`
-/

namespace A302378.P5051405546185215244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (f1 (n + 1) - f1 n).toNat

end

end A302378.P5051405546185215244

/-! ## A302378.P10790914272219526748

`A302381(eq[4, A193592(n)])`
-/

namespace A302378.P10790914272219526748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302378.P10790914272219526748

/-! ## A302378.P11681570398577540054

`A302381(Δ[A023545(n+1)])`
-/

namespace A302378.P11681570398577540054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (f1 (n + 1) - f1 n).toNat

end

end A302378.P11681570398577540054

/-! ## A302378.P6790498698718590917

`A302381(eq[5, A194921(n+1)])`
-/

namespace A302378.P6790498698718590917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302378.P6790498698718590917

/-! ## A302378.P17592790680347151508

`A302381(eq[5, A200370(n+1)])`
-/

namespace A302378.P17592790680347151508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302378.P17592790680347151508

/-!
# A302379: Number of nX6 0..1 arrays with every element equal to 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302379, there is no canonical definition to state claims against.
-/

/-! ## A302379.P10019900050586805788

`A302381(A052905(n+3))`
-/

namespace A302379.P10019900050586805788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A052905 (n + 3)).toNat

end

end A302379.P10019900050586805788

/-! ## A302379.P13698427425820634281

`A302381(A056119(n)+16)`
-/

namespace A302379.P13698427425820634281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A056119 n + 16).toNat

end

end A302379.P13698427425820634281

/-! ## A302379.P10643688817655066321

`A302381(eq[3, A219347(n)])`
-/

namespace A302379.P10643688817655066321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302379.P10643688817655066321

/-! ## A302379.P12512557430945910335

`A302381(eq[5, A193592(n)])`
-/

namespace A302379.P12512557430945910335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302379.P12512557430945910335

/-! ## A302379.P18100579144621739776

`A302381(eq[6, A200370(n+1)])`
-/

namespace A302379.P18100579144621739776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302379.P18100579144621739776

/-!
# A302380: Number of nX7 0..1 arrays with every element equal to 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302380, there is no canonical definition to state claims against.
-/

/-! ## A302380.P1801460683422766042

`A302381(eq[4, A219347(n)])`
-/

namespace A302380.P1801460683422766042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302380.P1801460683422766042

/-! ## A302380.P4727159068642601082

`A302381(eq[6, A193592(n)])`
-/

namespace A302380.P4727159068642601082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302380.P4727159068642601082

/-! ## A302380.P119294213099732207

`A302381(A000096(n+6)-5)`
-/

namespace A302380.P119294213099732207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A000096 (n + 6) - 5).toNat

end

end A302380.P119294213099732207

/-! ## A302380.P17044353573458994586

`A302381(eq[7, A200370(n+1)])`
-/

namespace A302380.P17044353573458994586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302380.P17044353573458994586

/-! ## A302380.P11231911029770374663

`A302381(eq[10, A185782(n+1)])`
-/

namespace A302380.P11231911029770374663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302380.P11231911029770374663

/-!
# A302381: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302381, there is no canonical definition to state claims against.
-/

/-! ## A302381.P2309697739608494401

`A303102(n+1)-A044941(A264617(n+1))`
-/

namespace A302381.P2309697739608494401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (n + 1) - A044941 (A264617 (n + 1)).toNat

end

end A302381.P2309697739608494401

/-! ## A302381.P16304223527584901997

`A303102(n+1)+A016389(A022166(n))`
-/

namespace A302381.P16304223527584901997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (n + 1) + A016389 (A022166 n).toNat

end

end A302381.P16304223527584901997

/-! ## A302381.P10091327979272953889

`A303102(n+1)+A016389(A027336(n))`
-/

namespace A302381.P10091327979272953889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (n + 1) + A016389 (A027336 n).toNat

end

end A302381.P10091327979272953889

/-! ## A302381.P81305452832901482

`A303102(n+1)-A014707(A022171(n))`
-/

namespace A302381.P81305452832901482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (n + 1) - A014707 (A022171 n).toNat

end

end A302381.P81305452832901482

/-! ## A302381.P16543589363226409751

`A303102(n+1)-A025469(A022345(n))`
-/

namespace A302381.P16543589363226409751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (n + 1) - A025469 (A022345 n).toNat

end

end A302381.P16543589363226409751

/-!
# A302382: Number of 3Xn 0..1 arrays with every element equal to 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302382, there is no canonical definition to state claims against.
-/

/-! ## A302382.P7480656237807470895

`A302381(∑[n+2]+4)`
-/

namespace A302382.P7480656237807470895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302382.P7480656237807470895

/-! ## A302382.P8182004307029893591

`A302381(A167614(n+1))+A025469(n)`
-/

namespace A302382.P8182004307029893591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A167614 (n + 1)).toNat + A025469 n

end

end A302382.P8182004307029893591

/-! ## A302382.P17233174890892711482

`A302381(A167614(n+1))+A185037(n)`
-/

namespace A302382.P17233174890892711482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A167614 (n + 1)).toNat + A185037 n

end

end A302382.P17233174890892711482

/-! ## A302382.P14968519650297436553

`A302381(A167614(n+1))+A185284(n)`
-/

namespace A302382.P14968519650297436553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A167614 (n + 1)).toNat + A185284 n

end

end A302382.P14968519650297436553

/-! ## A302382.P71583630593372078

`A057427(n)*A302381(A167614(n+1))`
-/

namespace A302382.P71583630593372078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A302381 (A167614 (n + 1)).toNat

end

end A302382.P71583630593372078

/-!
# A302383: Number of 4Xn 0..1 arrays with every element equal to 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302383, there is no canonical definition to state claims against.
-/

/-! ## A302383.P4502739836293732960

`A302381(A141214(n)+7)`
-/

namespace A302383.P4502739836293732960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A141214 n + 7).toNat

end

end A302383.P4502739836293732960

/-! ## A302383.P6012685532967227034

`A302381(A052905(n)+9)`
-/

namespace A302383.P6012685532967227034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A052905 n + 9).toNat

end

end A302383.P6012685532967227034

/-! ## A302383.P6208644783738820389

`A302381(A055999(n)+10)`
-/

namespace A302383.P6208644783738820389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A055999 n + 10).toNat

end

end A302383.P6208644783738820389

/-! ## A302383.P5521561479691672570

`A302381(A167614(n+2)+1)`
-/

namespace A302383.P5521561479691672570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A167614 (n + 2) + 1).toNat

end

end A302383.P5521561479691672570

/-! ## A302383.P7870700711017163721

`A302381(eq[5, A131818(n+1)])`
-/

namespace A302383.P7870700711017163721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302383.P7870700711017163721

/-!
# A302384: Number of 5Xn 0..1 arrays with every element equal to 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302384, there is no canonical definition to state claims against.
-/

/-! ## A302384.P1151170573797477893

`A302381(A155212(n)+13)`
-/

namespace A302384.P1151170573797477893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A155212 n + 13).toNat

end

end A302384.P1151170573797477893

/-! ## A302384.P960390114164128428

`A302381(A056000(n)+15)`
-/

namespace A302384.P960390114164128428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A056000 n + 15).toNat

end

end A302384.P960390114164128428

/-! ## A302384.P3823230102538804867

`A302381(eq[7, A066657(n)])`
-/

namespace A302384.P3823230102538804867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302384.P3823230102538804867

/-! ## A302384.P1116516771129990457

`A302381(A000217(n+4)+5)`
-/

namespace A302384.P1116516771129990457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A000217 (n + 4) + 5).toNat

end

end A302384.P1116516771129990457

/-! ## A302384.P15275866004526524710

`A302381(A055998(n+2)+8)`
-/

namespace A302384.P15275866004526524710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A055998 (n + 2) + 8).toNat

end

end A302384.P15275866004526524710

/-!
# A302385: Number of 6Xn 0..1 arrays with every element equal to 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302385, there is no canonical definition to state claims against.
-/

/-! ## A302385.P12154020913884332628

`A302381(A056000(n+1)+16)`
-/

namespace A302385.P12154020913884332628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A056000 (n + 1) + 16).toNat

end

end A302385.P12154020913884332628

/-! ## A302385.P2997808672026438432

`A302381(eq[6, A130270(n+1)])`
-/

namespace A302385.P2997808672026438432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302385.P2997808672026438432

/-! ## A302385.P9669812130072759399

`A302381(eq[7, A131818(n+1)])`
-/

namespace A302385.P9669812130072759399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302385.P9669812130072759399

/-! ## A302385.P2305981716805470739

`A302381(eq[5, A144328(n+1)]+1)`
-/

namespace A302385.P2305981716805470739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A302385.P2305981716805470739

/-! ## A302385.P14413206260631980709

`A302381(eq[7, A200370(n+1)]-(2*n+1))`
-/

namespace A302385.P14413206260631980709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (2 * n + 1))

end

end A302385.P14413206260631980709

/-!
# A302386: Number of 7Xn 0..1 arrays with every element equal to 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302386, there is no canonical definition to state claims against.
-/

/-! ## A302386.P11485879421260110878

`A302381(A056119(n)+28)`
-/

namespace A302386.P11485879421260110878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A056119 n + 28).toNat

end

end A302386.P11485879421260110878

/-! ## A302386.P1126500461103258242

`A302381(eq[11, A066657(n)])`
-/

namespace A302386.P1126500461103258242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302386.P1126500461103258242

/-! ## A302386.P11701463814651065882

`A302381(A167499(n+5)+2)`
-/

namespace A302386.P11701463814651065882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A167499 (n + 5) + 2).toNat

end

end A302386.P11701463814651065882

/-! ## A302386.P6886386607373778078

`A302381(eq[8, A131818(n+1)])`
-/

namespace A302386.P6886386607373778078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302386.P6886386607373778078

/-! ## A302386.P18201799442239404299

`A302381(A000096(n+6)+1-n)`
-/

namespace A302386.P18201799442239404299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (A000096 (n + 6) + 1 - (n : ℤ)).toNat

end

end A302386.P18201799442239404299

/-!
# A302387: a(n) is least number k >= 3 such that (k^(2^n) + (k-2)^(2^n))/2 is prime.

The programs for A302387, there is no canonical definition to state claims against.
-/

/-! ## A302387.P12865382712215592257

`A108013(((n+1)/∏{p}[n+1, #])^∑{d}[3^val(n+1, 3), #])`
-/

namespace A302387.P12865382712215592257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108013 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ (∑ d ∈ Nat.divisors (f2 n), d))).toNat

end

end A302387.P12865382712215592257

/-! ## A302387.P5033303203219003073

`A152079(((n+1)/∏{p}[n+1, #])^((n+1)/4^val(n+1, 4)))`
-/

namespace A302387.P5033303203219003073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152079 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) : ℝ) ^ ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ) : ℝ))).toNat

end

end A302387.P5033303203219003073

/-! ## A302387.P17027849509721296798

`A167796(((n+1)/∏{p}[n+1, #])^((n+1)/4^val(n+1, 4)))`
-/

namespace A302387.P17027849509721296798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167796 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) : ℝ) ^ ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ) : ℝ))).toNat

end

end A302387.P17027849509721296798

/-! ## A302387.P5719851564666884535

`A023585(A092477(n+2))`
-/

namespace A302387.P5719851564666884535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023585 (A092477 (n + 2)).toNat

end

end A302387.P5719851564666884535

/-!
# A302389: A fractal-like sequence: erasing all pairs of contiguous terms that don't have a digit in common leaves the sequence unchanged.

The programs for A302389, there is no canonical definition to state claims against.
-/

/-! ## A302389.P8909164752560009255

`A238880(n+4)%A007684(A072946(n))`
-/

namespace A302389.P8909164752560009255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238880 (n + 4)) (A007684 (A072946 n).toNat)

end

end A302389.P8909164752560009255

/-! ## A302389.P11332984663099460165

`A073731(A335043(n+1))`
-/

namespace A302389.P11332984663099460165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 ((A335043 (n + 1)).toNat + 10)

end

end A302389.P11332984663099460165

/-! ## A302389.P3384217484945238640

`a(n-2)+A000108(A015161(n))` with `a(0)=1, a(1)=2, a(2)=12`
-/

namespace A302389.P3384217484945238640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 12] fun n a =>
  a (n - 2) + A000108 (A015161 n).toNat

end

end A302389.P3384217484945238640

/-! ## A302389.P11340258524122453355

`A130858(n+3)%record[A338590(3*n+1)]`
-/

namespace A302389.P11340258524122453355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338590 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130858 (n + 3)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A302389.P11340258524122453355

/-! ## A302389.P10120104667420353490

`A317330(n+4)%A000040(A008654(n))`
-/

namespace A302389.P10120104667420353490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317330 (n + 4)) (A000040 (A008654 n).toNat)

end

end A302389.P10120104667420353490

/-!
# A302390: Triameter of the n-cube-connected cycle graph.

The programs for A302390, the canonical program `A302390.P15472306667370707159` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302390 has offset 3).

The definition of A302390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302390.P17607204133269617303

`A008458(n+2)+C(2, A267354(n))`
-/

namespace A302390.P17607204133269617303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (n + 2) + (Nat.choose 2 (A267354 n).toNat : ℤ)

end

end A302390.P17607204133269617303

namespace A302390

/-- `A008458(n+2)+C(2, A267354(n))` -/
def P17607204133269617303.Spec : Prop :=
  ∀ n, P17607204133269617303.a n = A302390 (n + 3)

end A302390

/-! ## A302390.P15472306667370707159

`round(A016789(n+2)²/A007494(n+3))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A302390

/-- `round(A016789(n+2)²/A007494(n+3))` -/
def P15472306667370707159.Spec : Prop :=
  ∀ n, P15472306667370707159.a n = A302390 (n + 3)

theorem P15472306667370707159.correct : P15472306667370707159.Spec := by
  intro n
  simp only [A302390, Nat.add_sub_cancel]

end A302390

/-! ## A302390.P17436535315550161596

`A154272(n+1)+A080458(2*(n+2))`
-/

namespace A302390.P17436535315550161596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (n + 1) + A080458 (2 * (n + 2))

end

end A302390.P17436535315550161596

namespace A302390

/-- `A154272(n+1)+A080458(2*(n+2))` -/
def P17436535315550161596.Spec : Prop :=
  ∀ n, P17436535315550161596.a n = A302390 (n + 3)

end A302390

/-! ## A302390.P5128407484275691375

`A072833(2*(n+2))+char[A120007(2*(n+1))]`
-/

namespace A302390.P5128407484275691375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072833 (2 * (n + 2)) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A302390.P5128407484275691375

namespace A302390

/-- `A072833(2*(n+2))+char[A120007(2*(n+1))]` -/
def P5128407484275691375.Spec : Prop :=
  ∀ n, P5128407484275691375.a n = A302390 (n + 3)

end A302390

/-! ## A302390.P12450386759621127098

`A072839(A072860(n+1))+A072833(2*(n+2))`
-/

namespace A302390.P12450386759621127098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072839 (A072860 (n + 1)).toNat + A072833 (2 * (n + 2))

end

end A302390.P12450386759621127098

namespace A302390

/-- `A072839(A072860(n+1))+A072833(2*(n+2))` -/
def P12450386759621127098.Spec : Prop :=
  ∀ n, P12450386759621127098.a n = A302390 (n + 3)

end A302390

/-! ## A302390.P18137312871687606076

`and(-A000005(A131016(3*n+2)), A016945(n+2))`
-/

namespace A302390.P18137312871687606076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000005 (A131016 (3 * n + 2)).toNat) (A016945 (n + 2))

end

end A302390.P18137312871687606076

namespace A302390

/-- `and(-A000005(A131016(3*n+2)), A016945(n+2))` -/
def P18137312871687606076.Spec : Prop :=
  ∀ n, P18137312871687606076.a n = A302390 (n + 3)

end A302390

/-! ## A302390.P6755896806055835342

`A072833(2*(n+2))+A051731(A046691(n+4))`
-/

namespace A302390.P6755896806055835342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072833 (2 * (n + 2)) + A051731 (A046691 (n + 4)).toNat

end

end A302390.P6755896806055835342

namespace A302390

/-- `A072833(2*(n+2))+A051731(A046691(n+4))` -/
def P6755896806055835342.Spec : Prop :=
  ∀ n, P6755896806055835342.a n = A302390 (n + 3)

end A302390

/-!
# A302391: Number of partitions of 2n into two parts with at least one nonsquarefree part.

The programs for A302391, there is no canonical definition to state claims against.
-/

/-! ## A302391.P12913122866659495953

`1-A280226(n+1)+n`
-/

namespace A302391.P12913122866659495953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A280226 (n + 1) + (n : ℤ)

end

end A302391.P12913122866659495953

/-! ## A302391.P7690170269925783236

`Δ[n²]-n-A280226(Δ[n²]-n)`
-/

namespace A302391.P7690170269925783236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) - A280226 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

end

end A302391.P7690170269925783236

/-! ## A302391.P2575988265288286151

`n-A023443(A280226(n+1))`
-/

namespace A302391.P2575988265288286151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A280226 (n + 1)).toNat

end

end A302391.P2575988265288286151

/-! ## A302391.P11159470254052067221

`1-A071068(2*(n+1))+n`
-/

namespace A302391.P11159470254052067221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A071068 (2 * (n + 1)) + (n : ℤ)

end

end A302391.P11159470254052067221

/-! ## A302391.P14727294581206871505

`n+1-A071068(n+2+n)`
-/

namespace A302391.P14727294581206871505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A071068 (n + 2 + n)

end

end A302391.P14727294581206871505

/-! ## A302391.P8975007449258923597

`1-ceil(A098235(2*(n+1))/2)+n`
-/

namespace A302391.P8975007449258923597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈(A098235 (2 * (n + 1)) : ℚ) / 2⌉ + (n : ℤ)

end

end A302391.P8975007449258923597

/-! ## A302391.P276381749832521430

`n+1-A262351(2*(n+1))/(2*(n+1))`
-/

namespace A302391.P276381749832521430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A262351 (2 * (n + 1)) : ℚ) / (2 * (n + 1) : ℚ)

end

end A302391.P276381749832521430

/-! ## A302391.P2884599472065028825

`A024000(A071068(2*(n+1)))+n`
-/

namespace A302391.P2884599472065028825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A071068 (2 * (n + 1))).toNat + (n : ℤ)

end

end A302391.P2884599472065028825

/-! ## A302391.P10869636126877796831

`n+1-A110654(A098235(2*(n+1)))`
-/

namespace A302391.P10869636126877796831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A110654 (A098235 (2 * (n + 1))).toNat

end

end A302391.P10869636126877796831

/-! ## A302391.P2054410105951402967

`abs(A071068(2*(n+1))+A001489(n+1))`
-/

namespace A302391.P2054410105951402967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071068 (2 * (n + 1)) + A001489 (n + 1)|

end

end A302391.P2054410105951402967

/-!
# A302392: Number of odd parts in the partitions of 3n into 3 parts.

The programs for A302392, the canonical program `A302392.P7698044016696591427` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302392 has offset 1).

The definition of A302392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302392.P7698044016696591427

`(n+1)²+2*A008733(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A302392

/-- `(n+1)²+2*A008733(n)` -/
def P7698044016696591427.Spec : Prop :=
  ∀ n, P7698044016696591427.a n = A302392 (n + 1)

theorem P7698044016696591427.correct : P7698044016696591427.Spec := by
  intro n
  simp only [A302392, Nat.add_sub_cancel]

end A302392

/-! ## A302392.P1360680605578362623

`A007590(A028242(n)+1)+(n+1)²`
-/

namespace A302392.P1360680605578362623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A028242 n + 1).toNat + ((n + 1) ^ 2 : ℤ)

end

end A302392.P1360680605578362623

namespace A302392

/-- `A007590(A028242(n)+1)+(n+1)²` -/
def P1360680605578362623.Spec : Prop :=
  ∀ n, P1360680605578362623.a n = A302392 (n + 1)

end A302392

/-! ## A302392.P16193679857341052170

`(n+1)²+A008795(n)+A008624(n)`
-/

namespace A302392.P16193679857341052170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A008795 n + A008624 n)

end

end A302392.P16193679857341052170

namespace A302392

/-- `(n+1)²+A008795(n)+A008624(n)` -/
def P16193679857341052170.Spec : Prop :=
  ∀ n, P16193679857341052170.a n = A302392 (n + 1)

end A302392

/-! ## A302392.P13174260880176330047

`A397107(n+1)+A396813(n+1)`
-/

namespace A302392.P13174260880176330047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397107 (n + 1) + A396813 (n + 1)

end

end A302392.P13174260880176330047

namespace A302392

/-- `A397107(n+1)+A396813(n+1)` -/
def P13174260880176330047.Spec : Prop :=
  ∀ n, P13174260880176330047.a n = A302392 (n + 1)

end A302392

/-! ## A302392.P13087245231503161516

`A396813(n+1)+A396814(n+1)+A396813(n+1)`
-/

namespace A302392.P13087245231503161516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396813 (n + 1) + (A396814 (n + 1) + A396813 (n + 1))

end

end A302392.P13087245231503161516

namespace A302392

/-- `A396813(n+1)+A396814(n+1)+A396813(n+1)` -/
def P13087245231503161516.Spec : Prop :=
  ∀ n, P13087245231503161516.a n = A302392 (n + 1)

end A302392

/-! ## A302392.P14540638400495459418

`A000217(A007494(n+1))-A007494(A004526(n+1))`
-/

namespace A302392.P14540638400495459418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A007494 (n + 1)).toNat - A007494 (A004526 (n + 1)).toNat

end

end A302392.P14540638400495459418

namespace A302392

/-- `A000217(A007494(n+1))-A007494(A004526(n+1))` -/
def P14540638400495459418.Spec : Prop :=
  ∀ n, P14540638400495459418.a n = A302392 (n + 1)

end A302392

/-! ## A302392.P3416232809009686809

`record[or(floor((n+2)²/2), A057078(n))]`
-/

namespace A302392.P3416232809009686809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊((n + 2) ^ 2 : ℚ) / 2⌋ (A057078 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302392.P3416232809009686809

namespace A302392

/-- `record[or(floor((n+2)²/2), A057078(n))]` -/
def P3416232809009686809.Spec : Prop :=
  ∀ n, P3416232809009686809.a n = A302392 (n + 1)

end A302392

/-! ## A302392.P7438298697034835163

`∑[A004273(A342131(n+1))]`
-/

namespace A302392.P7438298697034835163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A342131 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302392.P7438298697034835163

namespace A302392

/-- `∑[A004273(A342131(n+1))]` -/
def P7438298697034835163.Spec : Prop :=
  ∀ n, P7438298697034835163.a n = A302392 (n + 1)

end A302392

/-! ## A302392.P2191618338773342655

`∑[A047273(Δ[A133146(n)])]`
-/

namespace A302392.P2191618338773342655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133146 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302392.P2191618338773342655

namespace A302392

/-- `∑[A047273(Δ[A133146(n)])]` -/
def P2191618338773342655.Spec : Prop :=
  ∀ n, P2191618338773342655.a n = A302392 (n + 1)

end A302392

/-! ## A302392.P1518027847459450726

`∑[A047273(A059029(n+1))]`
-/

namespace A302392.P1518027847459450726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (A059029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302392.P1518027847459450726

namespace A302392

/-- `∑[A047273(A059029(n+1))]` -/
def P1518027847459450726.Spec : Prop :=
  ∀ n, P1518027847459450726.a n = A302392 (n + 1)

end A302392

/-! ## A302392.P16468891577177917872

`A008734(A042948(n)+2)+(n+1)²`
-/

namespace A302392.P16468891577177917872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008734 (A042948 n + 2).toNat + ((n + 1) ^ 2 : ℤ)

end

end A302392.P16468891577177917872

namespace A302392

/-- `A008734(A042948(n)+2)+(n+1)²` -/
def P16468891577177917872.Spec : Prop :=
  ∀ n, P16468891577177917872.a n = A302392 (n + 1)

end A302392

/-! ## A302392.P11389233460081096842

`∑[A063198(A006368(A016789(n)))]`
-/

namespace A302392.P11389233460081096842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063198 (A006368 (A016789 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302392.P11389233460081096842

namespace A302392

/-- `∑[A063198(A006368(A016789(n)))]` -/
def P11389233460081096842.Spec : Prop :=
  ∀ n, P11389233460081096842.a n = A302392 (n + 1)

end A302392

/-! ## A302392.P9691033991451189170

`A309511(3*(n+1))`
-/

namespace A302392.P9691033991451189170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309511 (3 * (n + 1))

end

end A302392.P9691033991451189170

namespace A302392

/-- `A309511(3*(n+1))` -/
def P9691033991451189170.Spec : Prop :=
  ∀ n, P9691033991451189170.a n = A302392 (n + 1)

end A302392

/-! ## A302392.P15475000094733006411

`A005563(n)+A005408(A008733(n))`
-/

namespace A302392.P15475000094733006411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + A005408 (A008733 n).toNat

end

end A302392.P15475000094733006411

namespace A302392

/-- `A005563(n)+A005408(A008733(n))` -/
def P15475000094733006411.Spec : Prop :=
  ∀ n, P15475000094733006411.a n = A302392 (n + 1)

end A302392

/-! ## A302392.P13087697926256196354

`A032766(A397107(n+1))`
-/

namespace A302392.P13087697926256196354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A397107 (n + 1)).toNat

end

end A302392.P13087697926256196354

namespace A302392

/-- `A032766(A397107(n+1))` -/
def P13087697926256196354.Spec : Prop :=
  ∀ n, P13087697926256196354.a n = A302392 (n + 1)

end A302392

/-! ## A302392.P1745589175099202983

`A032766(∑[A065260(2*n+1)])`
-/

namespace A302392.P1745589175099202983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065260 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A302392.P1745589175099202983

namespace A302392

/-- `A032766(∑[A065260(2*n+1)])` -/
def P1745589175099202983.Spec : Prop :=
  ∀ n, P1745589175099202983.a n = A302392 (n + 1)

end A302392

/-! ## A302392.P10940075255017222265

`A032766(A032438(n+2)-(n+1))`
-/

namespace A302392.P10940075255017222265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A032438 (n + 2) - (n + 1 : ℤ)).toNat

end

end A302392.P10940075255017222265

namespace A302392

/-- `A032766(A032438(n+2)-(n+1))` -/
def P10940075255017222265.Spec : Prop :=
  ∀ n, P10940075255017222265.a n = A302392 (n + 1)

end A302392

/-! ## A302392.P2823988097518758122

`A032766(A059841(n)+A014255(n))`
-/

namespace A302392.P2823988097518758122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A059841 n + A014255 n).toNat

end

end A302392.P2823988097518758122

namespace A302392

/-- `A032766(A059841(n)+A014255(n))` -/
def P2823988097518758122.Spec : Prop :=
  ∀ n, P2823988097518758122.a n = A302392 (n + 1)

end A302392

/-! ## A302392.P18119758650163849120

`A001651(A001082(n+3))-A016777(n+1)`
-/

namespace A302392.P18119758650163849120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A001082 (n + 3)).toNat - A016777 (n + 1)

end

end A302392.P18119758650163849120

namespace A302392

/-- `A001651(A001082(n+3))-A016777(n+1)` -/
def P18119758650163849120.Spec : Prop :=
  ∀ n, P18119758650163849120.a n = A302392 (n + 1)

end A302392

/-!
# A302393: Number of even parts in the partitions of 3n into 3 parts.

The programs for A302393, the canonical program `A302393.P17459900131682349134` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302393 has offset 1).

The definition of A302393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302393.P17459900131682349134

`A238411(n+1)+A166515(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A302393

/-- `A238411(n+1)+A166515(n)` -/
def P17459900131682349134.Spec : Prop :=
  ∀ n, P17459900131682349134.a n = A302393 (n + 1)

theorem P17459900131682349134.correct : P17459900131682349134.Spec := by
  intro n
  simp only [A302393, Nat.add_sub_cancel]

end A302393

/-! ## A302393.P13729797835871701043

`A117748(n+1)+A007494(A007494(n)-n)`
-/

namespace A302393.P13729797835871701043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117748 (n + 1) + A007494 (A007494 n - (n : ℤ)).toNat

end

end A302393.P13729797835871701043

namespace A302393

/-- `A117748(n+1)+A007494(A007494(n)-n)` -/
def P13729797835871701043.Spec : Prop :=
  ∀ n, P13729797835871701043.a n = A302393 (n + 1)

end A302393

/-! ## A302393.P11306635293317603244

`A007494(A110654(n))+A000217(A007494(n))`
-/

namespace A302393.P11306635293317603244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A110654 n).toNat + A000217 (A007494 n).toNat

end

end A302393.P11306635293317603244

namespace A302393

/-- `A007494(A110654(n))+A000217(A007494(n))` -/
def P11306635293317603244.Spec : Prop :=
  ∀ n, P11306635293317603244.a n = A302393 (n + 1)

end A302393

/-! ## A302393.P9114851505275786821

`A117748(n+1)+A110654(n)+A110654(A110654(n))`
-/

namespace A302393.P9114851505275786821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117748 (n + 1) + (A110654 n + A110654 (A110654 n).toNat)

end

end A302393.P9114851505275786821

namespace A302393

/-- `A117748(n+1)+A110654(n)+A110654(A110654(n))` -/
def P9114851505275786821.Spec : Prop :=
  ∀ n, P9114851505275786821.a n = A302393 (n + 1)

end A302393

/-! ## A302393.P9424562559906517489

`A117748(n+1)+A110654(3*A110654(n))`
-/

namespace A302393.P9424562559906517489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117748 (n + 1) + A110654 (3 * A110654 n).toNat

end

end A302393.P9424562559906517489

namespace A302393

/-- `A117748(n+1)+A110654(3*A110654(n))` -/
def P9424562559906517489.Spec : Prop :=
  ∀ n, P9424562559906517489.a n = A302393 (n + 1)

end A302393

/-! ## A302393.P11538314651895052939

`record[A000982(n)-A091684(n)]`
-/

namespace A302393.P11538314651895052939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n - A091684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302393.P11538314651895052939

namespace A302393

/-- `record[A000982(n)-A091684(n)]` -/
def P11538314651895052939.Spec : Prop :=
  ∀ n, P11538314651895052939.a n = A302393 (n + 1)

end A302393

/-! ## A302393.P3590952140279002368

`A000217(A037915(2*n+1))-A037915(n)`
-/

namespace A302393.P3590952140279002368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A037915 (2 * n + 1)).toNat - A037915 n

end

end A302393.P3590952140279002368

namespace A302393

/-- `A000217(A037915(2*n+1))-A037915(n)` -/
def P3590952140279002368.Spec : Prop :=
  ∀ n, P3590952140279002368.a n = A302393 (n + 1)

end A302393

/-! ## A302393.P18403152333951796144

`A008818(3*n+1)`
-/

namespace A302393.P18403152333951796144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008818 (3 * n + 1)

end

end A302393.P18403152333951796144

namespace A302393

/-- `A008818(3*n+1)` -/
def P18403152333951796144.Spec : Prop :=
  ∀ n, P18403152333951796144.a n = A302393 (n + 1)

end A302393

/-! ## A302393.P7563205174219392543

`A166515(4*n+1-xor(1, n))`
-/

namespace A302393.P7563205174219392543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166515 (4 * n + 1 - Nat.xor 1 n)

end

end A302393.P7563205174219392543

namespace A302393

/-- `A166515(4*n+1-xor(1, n))` -/
def P7563205174219392543.Spec : Prop :=
  ∀ n, P7563205174219392543.a n = A302393 (n + 1)

end A302393

/-! ## A302393.P1397455840214476710

`A166515(A047264(n+1))`
-/

namespace A302393.P1397455840214476710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166515 (A047264 (n + 1)).toNat

end

end A302393.P1397455840214476710

namespace A302393

/-- `A166515(A047264(n+1))` -/
def P1397455840214476710.Spec : Prop :=
  ∀ n, P1397455840214476710.a n = A302393 (n + 1)

end A302393

/-! ## A302393.P13815461022136015552

`record[A008818(A123684(n+1))]`
-/

namespace A302393.P13815461022136015552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008818 (A123684 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302393.P13815461022136015552

namespace A302393

/-- `record[A008818(A123684(n+1))]` -/
def P13815461022136015552.Spec : Prop :=
  ∀ n, P13815461022136015552.a n = A302393 (n + 1)

end A302393

/-! ## A302393.P15284361158695668371

`A166515(2*n+A004442(n+1))`
-/

namespace A302393.P15284361158695668371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166515 ((2 * n : ℤ) + A004442 (n + 1)).toNat

end

end A302393.P15284361158695668371

namespace A302393

/-- `A166515(2*n+A004442(n+1))` -/
def P15284361158695668371.Spec : Prop :=
  ∀ n, P15284361158695668371.a n = A302393 (n + 1)

end A302393

/-! ## A302393.P15786967271962756144

`A309513(3*(n+1))`
-/

namespace A302393.P15786967271962756144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309513 (3 * (n + 1))

end

end A302393.P15786967271962756144

namespace A302393

/-- `A309513(3*(n+1))` -/
def P15786967271962756144.Spec : Prop :=
  ∀ n, P15786967271962756144.a n = A302393 (n + 1)

end A302393

/-! ## A302393.P17381662781077551119

`A007494(∑[lcm(n+1, and(1, n))+n])`
-/

namespace A302393.P17381662781077551119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.land 1 n) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302393.P17381662781077551119

namespace A302393

/-- `A007494(∑[lcm(n+1, and(1, n))+n])` -/
def P17381662781077551119.Spec : Prop :=
  ∀ n, P17381662781077551119.a n = A302393 (n + 1)

end A302393

/-! ## A302393.P6752835905447570975

`A007494(∑[A059029(n)])`
-/

namespace A302393.P6752835905447570975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A302393.P6752835905447570975

namespace A302393

/-- `A007494(∑[A059029(n)])` -/
def P6752835905447570975.Spec : Prop :=
  ∀ n, P6752835905447570975.a n = A302393 (n + 1)

end A302393

/-! ## A302393.P16578154185976155228

`A007494(A032438(n+1))`
-/

namespace A302393.P16578154185976155228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A032438 (n + 1)).toNat

end

end A302393.P16578154185976155228

namespace A302393

/-- `A007494(A032438(n+1))` -/
def P16578154185976155228.Spec : Prop :=
  ∀ n, P16578154185976155228.a n = A302393 (n + 1)

end A302393

/-! ## A302393.P13594453404124084696

`A047273(A133146(n))-1`
-/

namespace A302393.P13594453404124084696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (A133146 n).toNat - 1

end

end A302393.P13594453404124084696

namespace A302393

/-- `A047273(A133146(n))-1` -/
def P13594453404124084696.Spec : Prop :=
  ∀ n, P13594453404124084696.a n = A302393 (n + 1)

end A302393

/-! ## A302393.P2242328254973385021

`A007494(A133146(n)-2)`
-/

namespace A302393.P2242328254973385021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A133146 n - 2).toNat

end

end A302393.P2242328254973385021

namespace A302393

/-- `A007494(A133146(n)-2)` -/
def P2242328254973385021.Spec : Prop :=
  ∀ n, P2242328254973385021.a n = A302393 (n + 1)

end A302393

/-! ## A302393.P18261136526220735151

`A007494(Δ[(n+1)*A002620(n)])`
-/

namespace A302393.P18261136526220735151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (f1 (n + 1) - f1 n).toNat

end

end A302393.P18261136526220735151

namespace A302393

/-- `A007494(Δ[(n+1)*A002620(n)])` -/
def P18261136526220735151.Spec : Prop :=
  ∀ n, P18261136526220735151.a n = A302393 (n + 1)

end A302393

/-! ## A302393.P17004972557134913661

`A007494(∑[A007494(n)+A001057(n)])`
-/

namespace A302393.P17004972557134913661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n + A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A302393.P17004972557134913661

namespace A302393

/-- `A007494(∑[A007494(n)+A001057(n)])` -/
def P17004972557134913661.Spec : Prop :=
  ∀ n, P17004972557134913661.a n = A302393 (n + 1)

end A302393

/-!
# A302394: Number of families of 3-subsets of an n-set that cover all 2-subsets.

The programs for A302394, there is no canonical definition to state claims against.
-/

/-! ## A302394.P5700911934000099684

`A320606(A212342(n)+5)`
-/

namespace A302394.P5700911934000099684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320606 (A212342 n + 5).toNat

end

end A302394.P5700911934000099684

/-! ## A302394.P14178131463503885210

`A320606(A253198(n)+9)`
-/

namespace A302394.P14178131463503885210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320606 (A253198 n + 9).toNat

end

end A302394.P14178131463503885210

/-! ## A302394.P8530072685993071326

`A320606(10-A309764(n))`
-/

namespace A302394.P8530072685993071326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320606 (10 - A309764 n).toNat

end

end A302394.P8530072685993071326

/-!
# A302397: Expansion of e.g.f. 1/(1 + x*exp(x)).

The programs for A302397, there is no canonical definition to state claims against.
-/

/-! ## A302397.P17461853144999086612

`A033999(n)*A351791(∑[n+2]-1)`
-/

namespace A302397.P17461853144999086612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A351791 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A302397.P17461853144999086612

/-! ## A302397.P2105809451984426330

`A351791(A034856(n+1))/A033999(n)`
-/

namespace A302397.P2105809451984426330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351791 (A034856 (n + 1)).toNat : ℚ) / (A033999 n : ℚ)

end

end A302397.P2105809451984426330

/-! ## A302397.P15489634581948214974

`A351776(∑[n+2]-1)`
-/

namespace A302397.P15489634581948214974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351776 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A302397.P15489634581948214974

/-!
# A302398: a(n) = n! * [x^n] 1/(1 + x*exp(n*x)).

The programs for A302398, there is no canonical definition to state claims against.
-/

/-! ## A302398.P9527179558770988797

`A056278(a(n-1)²)-n` with `a(0)=1`
-/

namespace A302398.P9527179558770988797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056278 (a (n - 1) ^ 2).toNat - (n : ℤ)

end

end A302398.P9527179558770988797

/-!
# A302399: Expansion of e.g.f. Product_{k>=1} 1/(1 - exp(x)*x^k)^k.

The programs for A302399, there is no canonical definition to state claims against.
-/

/-! ## A302399.P13397807803947885445

`n*A028242(lcm(a(n-1), ∑[n+1]))` with `a(0)=1`
-/

namespace A302399.P13397807803947885445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A028242 (Int.lcm (a (n - 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A302399.P13397807803947885445

