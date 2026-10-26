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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A157200: Numbers k such that k*(2k)^k - 1 is a prime.

The programs for A157200, there is no canonical definition to state claims against.
-/

/-! ## A157200.P9180635444957799168

`A097745(record[A102707(n)+1])`
-/

namespace A157200.P9180635444957799168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102707 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097745 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A157200.P9180635444957799168

/-! ## A157200.P11535843195645106476

`A052430(n+1)+A010051(A052456(n))`
-/

namespace A157200.P11535843195645106476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052430 (n + 1) + A010051 (A052456 n).toNat

end

end A157200.P11535843195645106476

/-! ## A157200.P101574896686117748

`A126205(A346922(n+1))+A003459(n+1)`
-/

namespace A157200.P101574896686117748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126205 (A346922 (n + 1)).toNat + A003459 (n + 1)

end

end A157200.P101574896686117748

/-!
# A157201: Numbers k such that 66*k + 1 is prime.

The programs for A157201, the canonical program `A157201.P11307144783730024804` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157201 has offset 1).

The definition of A157201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157201.P8809445618644383700

`eq[1, A001222(66*n+1)]`
-/

namespace A157201.P8809445618644383700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (66 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157201.P8809445618644383700

namespace A157201

/-- `eq[1, A001222(66*n+1)]` -/
def P8809445618644383700.Spec : Prop :=
  ∀ n, (P8809445618644383700.a n : ℤ) = A157201 (n + 1)

end A157201

/-! ## A157201.P11307144783730024804

`eq[1, A010051(66*n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A157201

/-- `eq[1, A010051(66*n+1)]` -/
def P11307144783730024804.Spec : Prop :=
  ∀ n, (P11307144783730024804.a n : ℤ) = A157201 (n + 1)

theorem P11307144783730024804.correct : P11307144783730024804.Spec := by
  intro n
  simp only [A157201, Nat.add_sub_cancel]

end A157201

/-! ## A157201.P2179848151308559754

`eq[2, A000005(66*n+1)]`
-/

namespace A157201.P2179848151308559754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (66 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157201.P2179848151308559754

namespace A157201

/-- `eq[2, A000005(66*n+1)]` -/
def P2179848151308559754.Spec : Prop :=
  ∀ n, (P2179848151308559754.a n : ℤ) = A157201 (n + 1)

end A157201

/-! ## A157201.P1974342845302632487

`eq[1, A046079(66*n+1)]`
-/

namespace A157201.P1974342845302632487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (66 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157201.P1974342845302632487

namespace A157201

/-- `eq[1, A046079(66*n+1)]` -/
def P1974342845302632487.Spec : Prop :=
  ∀ n, (P1974342845302632487.a n : ℤ) = A157201 (n + 1)

end A157201

/-! ## A157201.P12619961824621669583

`eq[3, A145399(66*n+1)]`
-/

namespace A157201.P12619961824621669583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145399 (66 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157201.P12619961824621669583

namespace A157201

/-- `eq[3, A145399(66*n+1)]` -/
def P12619961824621669583.Spec : Prop :=
  ∀ n, (P12619961824621669583.a n : ℤ) = A157201 (n + 1)

end A157201

/-! ## A157201.P15193593673052024572

`eq[1, A007920(66*n)]`
-/

namespace A157201.P15193593673052024572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (66 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157201.P15193593673052024572

namespace A157201

/-- `eq[1, A007920(66*n)]` -/
def P15193593673052024572.Spec : Prop :=
  ∀ n, (P15193593673052024572.a n : ℤ) = A157201 (n + 1)

end A157201

/-!
# A157202: Numbers k such that 66*k + 5 is prime.

The programs for A157202, the canonical program `A157202.P3382835280700317586` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157202 has offset 1).

The definition of A157202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157202.P17678416446291237667

`eq[1, A001222(66*n+5)]`
-/

namespace A157202.P17678416446291237667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (66 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157202.P17678416446291237667

namespace A157202

/-- `eq[1, A001222(66*n+5)]` -/
def P17678416446291237667.Spec : Prop :=
  ∀ n, (P17678416446291237667.a n : ℤ) = A157202 (n + 1)

end A157202

/-! ## A157202.P15977934250169939042

`eq[2, A000005(66*n+5)]`
-/

namespace A157202.P15977934250169939042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (66 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157202.P15977934250169939042

namespace A157202

/-- `eq[2, A000005(66*n+5)]` -/
def P15977934250169939042.Spec : Prop :=
  ∀ n, (P15977934250169939042.a n : ℤ) = A157202 (n + 1)

end A157202

/-! ## A157202.P3382835280700317586

`eq[1, A075743(A161709(n))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A157202

/-- `eq[1, A075743(A161709(n))]` -/
def P3382835280700317586.Spec : Prop :=
  ∀ n, (P3382835280700317586.a n : ℤ) = A157202 (n + 1)

theorem P3382835280700317586.correct : P3382835280700317586.Spec := by
  intro n
  simp only [A157202, Nat.add_sub_cancel]

end A157202

/-! ## A157202.P4481512379019440601

`eq[2, A143112(66*n+5)]`
-/

namespace A157202.P4481512379019440601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143112 (66 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157202.P4481512379019440601

namespace A157202

/-- `eq[2, A143112(66*n+5)]` -/
def P4481512379019440601.Spec : Prop :=
  ∀ n, (P4481512379019440601.a n : ℤ) = A157202 (n + 1)

end A157202

/-! ## A157202.P4372012181870939199

`eq[1, A167020(11*n+1)]`
-/

namespace A157202.P4372012181870939199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (11 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157202.P4372012181870939199

namespace A157202

/-- `eq[1, A167020(11*n+1)]` -/
def P4372012181870939199.Spec : Prop :=
  ∀ n, (P4372012181870939199.a n : ℤ) = A157202 (n + 1)

end A157202

/-! ## A157202.P15027769213046870042

`eq[1, A001221(A016969(A008593(n)))]`
-/

namespace A157202.P15027769213046870042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A016969 (A008593 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157202.P15027769213046870042

namespace A157202

/-- `eq[1, A001221(A016969(A008593(n)))]` -/
def P15027769213046870042.Spec : Prop :=
  ∀ n, (P15027769213046870042.a n : ℤ) = A157202 (n + 1)

end A157202

/-! ## A157202.P7186662244854515352

`eq[66*n+5, A014963(66*n+5)]`
-/

namespace A157202.P7186662244854515352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  66 * n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (66 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157202.P7186662244854515352

namespace A157202

/-- `eq[66*n+5, A014963(66*n+5)]` -/
def P7186662244854515352.Spec : Prop :=
  ∀ n, (P7186662244854515352.a n : ℤ) = A157202 (n + 1)

end A157202

/-!
# A157207: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) + m*f(n,k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1, f(n, k) = k if k <= floor(n/2) otherwise n-k, and m = 1, read by rows.

The programs for A157207, there is no canonical definition to state claims against.
-/

/-! ## A157207.P112185127065708863

`A024417(A141686(n+1)+A022166(n))`
-/

namespace A157207.P112185127065708863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A141686 (n + 1) + A022166 n).toNat

end

end A157207.P112185127065708863

/-! ## A157207.P4001927884113904939

`A144438(n+1)+A004197(A174410(n))`
-/

namespace A157207.P4001927884113904939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144438 (n + 1) + A004197 (A174410 n).toNat

end

end A157207.P4001927884113904939

/-! ## A157207.P13349414526060763777

`A024417(A141689(n+1)+A141686(n+1))`
-/

namespace A157207.P13349414526060763777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A141689 (n + 1) + A141686 (n + 1)).toNat

end

end A157207.P13349414526060763777

/-! ## A157207.P4856841995864074887

`A331746(A157147(n)^A351311(3*n+5))`
-/

namespace A157207.P4856841995864074887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331746 (SequenceMachineLib.roundAway ((A157147 n : ℚ) ^ (A351311 (3 * n + 5) : ℤ))).toNat

end

end A157207.P4856841995864074887

/-! ## A157207.P3604299825025401274

`A051059(A081581(n))`
-/

namespace A157207.P3604299825025401274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051059 (A081581 n).toNat

end

end A157207.P3604299825025401274

/-!
# A157208: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) + m*f(n,k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1, f(n, k) = k if k <= floor(n/2) otherwise n-k, and m = 2, read by rows.

The programs for A157208, there is no canonical definition to state claims against.
-/

/-! ## A157208.P10354460357834817769

`∑{e}[3^(n+1), A144439(#)]`
-/

namespace A157208.P10354460357834817769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A144439 (Nat.factorization (f1 n) p)

end

end A157208.P10354460357834817769

/-! ## A157208.P8712980353983969836

`A024570(A157221(n))`
-/

namespace A157208.P8712980353983969836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024570 (A157221 n).toNat

end

end A157208.P8712980353983969836

/-! ## A157208.P15214988882169186027

`A276881(A022167(n))`
-/

namespace A157208.P15214988882169186027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276881 (A022167 n).toNat

end

end A157208.P15214988882169186027

/-! ## A157208.P18078816507400898294

`A192515(A168551(n))`
-/

namespace A157208.P18078816507400898294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192515 (A168551 n).toNat

end

end A157208.P18078816507400898294

/-! ## A157208.P7883479716529271823

`A189143(A178346(n))`
-/

namespace A157208.P7883479716529271823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189143 (A178346 n).toNat

end

end A157208.P7883479716529271823

/-!
# A157209: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) + m*f(n,k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1, f(n, k) = k if k <= floor(n/2) otherwise n-k, and m = 3, read by rows.

The programs for A157209, there is no canonical definition to state claims against.
-/

/-! ## A157209.P12255765126780086625

`A108141(A174672(n))`
-/

namespace A157209.P12255765126780086625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A174672 n).toNat

end

end A157209.P12255765126780086625

/-! ## A157209.P9015346007429307719

`A181160(A176152(n))`
-/

namespace A157209.P9015346007429307719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181160 (A176152 n).toNat

end

end A157209.P9015346007429307719

/-! ## A157209.P10686207277721621481

`A144440(A084192(∑[n]))`
-/

namespace A157209.P10686207277721621481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144440 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A157209.P10686207277721621481

/-! ## A157209.P10461689452351952780

`A144440(A084193(∑[n]))`
-/

namespace A157209.P10461689452351952780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144440 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A157209.P10461689452351952780

/-! ## A157209.P11067991038978734916

`A144440(A004918(n+2))`
-/

namespace A157209.P11067991038978734916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144440 (A004918 (n + 2)).toNat

end

end A157209.P11067991038978734916

/-!
# A157210: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) - m*f(n,k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1, f(n, k) = k if k <= floor(n/2) otherwise n-k, and m = 1, read by rows.

The programs for A157210, there is no canonical definition to state claims against.
-/

/-! ## A157210.P11119114649367772056

`A375110(A118190(n))`
-/

namespace A157210.P11119114649367772056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375110 (A118190 n).toNat

end

end A157210.P11119114649367772056

/-! ## A157210.P6567658033088955242

`A341620(A309555(n)!)`
-/

namespace A157210.P6567658033088955242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (Nat.factorial (A309555 n).toNat)

end

end A157210.P6567658033088955242

/-! ## A157210.P12763964159467189576

`A107686(A136126(n+1))`
-/

namespace A157210.P12763964159467189576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107686 (A136126 (n + 1)).toNat

end

end A157210.P12763964159467189576

/-! ## A157210.P16639902272696140714

`A323608(3*A299906(n))`
-/

namespace A157210.P16639902272696140714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323608 (3 * A299906 n).toNat

end

end A157210.P16639902272696140714

/-! ## A157210.P6279634518846411153

`A105223(5*A118185(n))`
-/

namespace A157210.P6279634518846411153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (5 * A118185 n).toNat

end

end A157210.P6279634518846411153

/-!
# A157211: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) - m*f(n,k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1, f(n, k) = k if k <= floor(n/2) otherwise n-k, and m = 2, read by rows.

The programs for A157211, there is no canonical definition to state claims against.
-/

/-! ## A157211.P6764416957466230917

`A034298(A022167(n))`
-/

namespace A157211.P6764416957466230917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (A022167 n).toNat

end

end A157211.P6764416957466230917

/-! ## A157211.P17993489198009468818

`A100798(A022177(n))`
-/

namespace A157211.P17993489198009468818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100798 (A022177 n).toNat

end

end A157211.P17993489198009468818

/-! ## A157211.P7198214300296387223

`A117535(A022184(n))`
-/

namespace A157211.P7198214300296387223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117535 (A022184 n).toNat

end

end A157211.P7198214300296387223

/-! ## A157211.P13880704770310728872

`A102528(A045912(n))`
-/

namespace A157211.P13880704770310728872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102528 (A045912 n).toNat

end

end A157211.P13880704770310728872

/-! ## A157211.P421981843836167694

`A005940(A157221(n))`
-/

namespace A157211.P421981843836167694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A157221 n).toNat

end

end A157211.P421981843836167694

/-!
# A157212: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) - m*f(n,k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1, f(n, k) = k if k <= floor(n/2) otherwise n-k, and m = 3, read by rows.

The programs for A157212, there is no canonical definition to state claims against.
-/

/-! ## A157212.P3389043841190941951

`A072650(A173006(n))`
-/

namespace A157212.P3389043841190941951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072650 (A173006 n).toNat

end

end A157212.P3389043841190941951

/-! ## A157212.P14336487260574386005

`A247189(A022182(n))`
-/

namespace A157212.P14336487260574386005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247189 (A022182 n).toNat

end

end A157212.P14336487260574386005

/-! ## A157212.P6669052059960219131

`A211964(A099759(n))`
-/

namespace A157212.P6669052059960219131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211964 (A099759 n).toNat

end

end A157212.P6669052059960219131

/-! ## A157212.P16861183349327012766

`A349523(A157180(n))`
-/

namespace A157212.P16861183349327012766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349523 (A157180 n).toNat

end

end A157212.P16861183349327012766

/-! ## A157212.P889636201106649569

`A135260(A116469(n+1))`
-/

namespace A157212.P889636201106649569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135260 (A116469 (n + 1)).toNat

end

end A157212.P889636201106649569

/-!
# A157214: Decimal expansion of 18 + 5*sqrt(2).

The programs for A157214, there is no canonical definition to state claims against.
-/

/-! ## A157214.P3406002308461250153

`A351898(n)+A063524(A000010(n+1))`
-/

namespace A157214.P3406002308461250153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351898 (n + 2) + A063524 (A000010 (n + 1)).toNat

end

end A157214.P3406002308461250153

/-! ## A157214.P6095334246086945708

`dr((6^n+1)*A174968(n))`
-/

namespace A157214.P6095334246086945708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((6 ^ n + 1 : ℤ) * A174968 (n + 1))

end

end A157214.P6095334246086945708

/-! ## A157214.P17964624199126637788

`A351898(n)+A063524(A000041(n))`
-/

namespace A157214.P17964624199126637788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351898 (n + 2) + A063524 (A000041 n).toNat

end

end A157214.P17964624199126637788

/-! ## A157214.P7755751942993726641

`A351898(n)+A063524(A035363(2*n))`
-/

namespace A157214.P7755751942993726641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351898 (n + 2) + A063524 (A035363 (2 * n)).toNat

end

end A157214.P7755751942993726641

/-!
# A157217: Mix A091411 and its differences.

The programs for A157217, there is no canonical definition to state claims against.
-/

/-! ## A157217.P6420083747337855087

`∪[A091411(n+1), Δ[A091411(n+1)]]`
-/

namespace A157217.P6420083747337855087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091411 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157217.P6420083747337855087

/-! ## A157217.P5397419194035010132

`∑[and(A032020(n), A229542(n+1))]`
-/

namespace A157217.P5397419194035010132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032020 n) (A229542 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157217.P5397419194035010132

/-! ## A157217.P11447335252956189356

`A160324(A055089(n)+4*(3^n-2^n)+3)`
-/

namespace A157217.P11447335252956189356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160324 (A055089 n + (4 * ((3 ^ n : ℤ) - (2 ^ n : ℤ)) + 3)).toNat

end

end A157217.P11447335252956189356

/-!
# A157219: Triangle T(n, k) = binomial(n*f(n,k), f(n,k)), where f(n, k) = k if k <= floor(n/2) otherwise n-k, read by rows.

The programs for A157219, the canonical program `A157219.P8471988911864010731` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157219 has offset 0).

The definition of A157219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157219.P8471988911864010731

`C(A003056(n)*A004197(n), A004197(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A157219

/-- `C(A003056(n)*A004197(n), A004197(n))` -/
def P8471988911864010731.Spec : Prop :=
  ∀ n, (P8471988911864010731.a n : ℤ) = A157219 n

theorem P8471988911864010731.correct : P8471988911864010731.Spec := by
  intro n
  simp only [A157219]

end A157219

/-! ## A157219.P11190325304462441188

`A259899(A157243(n)-A299905(n))`
-/

namespace A157219.P11190325304462441188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A157243 n - A299905 n).toNat

end

end A157219.P11190325304462441188

namespace A157219

/-- `A259899(A157243(n)-A299905(n))` -/
def P11190325304462441188.Spec : Prop :=
  ∀ n, P11190325304462441188.a n = A157219 n

end A157219

/-! ## A157219.P15972615059100081711

`A090706(A173786(n)^A072233(n))`
-/

namespace A157219.P15972615059100081711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (SequenceMachineLib.roundAway ((A173786 n : ℚ) ^ (A072233 n : ℤ))).toNat

end

end A157219.P15972615059100081711

namespace A157219

/-- `A090706(A173786(n)^A072233(n))` -/
def P15972615059100081711.Spec : Prop :=
  ∀ n, P15972615059100081711.a n = A157219 n

end A157219

/-! ## A157219.P17564344748097346007

`A259899(A157243(n))-A309785(n+1)`
-/

namespace A157219.P17564344748097346007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A157243 n).toNat - A309785 (n + 1)

end

end A157219.P17564344748097346007

namespace A157219

/-- `A259899(A157243(n))-A309785(n+1)` -/
def P17564344748097346007.Spec : Prop :=
  ∀ n, P17564344748097346007.a n = A157219 n

end A157219

/-! ## A157219.P13293481092561431093

`A117599(A059922(n))`
-/

namespace A157219.P13293481092561431093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117599 (A059922 n).toNat

end

end A157219.P13293481092561431093

namespace A157219

/-- `A117599(A059922(n))` -/
def P13293481092561431093.Spec : Prop :=
  ∀ n, P13293481092561431093.a n = A157219 n

end A157219

/-!
# A157221: Triangle T(n, k) = Eulerian(n*f(n, k) + 1, f(n, k)), where f(n, k) = k if k <= floor(n/2) otherwise n-k, read by rows.

The programs for A157221, there is no canonical definition to state claims against.
-/

/-! ## A157221.P15013433780407690169

`A008292((n+1)*A001710(A130461(n+1)))`
-/

namespace A157221.P15013433780407690169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 ((n + 1 : ℤ) * A001710 (A130461 (n + 1)).toNat).toNat

end

end A157221.P15013433780407690169

/-!
# A157223: Number of primitive inequivalent oblique sublattices of centered rectangular lattice of index n.

The programs for A157223, the canonical program `A157223.P7194206382201675726` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157223 has offset 1).

The definition of A157223 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A157223.P7194206382201675726

`(A001615(n+1)-A060594(n+1))/2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A157223

/-- `(A001615(n+1)-A060594(n+1))/2` -/
def P7194206382201675726.Spec : Prop :=
  ∀ n, P7194206382201675726.a n = (A157223 (n + 1) : ℚ)

end A157223

/-! ## A157223.P17730555165648844691

`A329152(n+1)+A318320(n+1)`
-/

namespace A157223.P17730555165648844691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329152 (n + 1) + A318320 (n + 1)

end

end A157223.P17730555165648844691

namespace A157223

/-- `A329152(n+1)+A318320(n+1)` -/
def P17730555165648844691.Spec : Prop :=
  ∀ n, P17730555165648844691.a n = A157223 (n + 1)

end A157223

/-! ## A157223.P358462214789336377

`∑{d}[n+1, A004525(#-1)*A008966((n+1)/#)]`
-/

namespace A157223.P358462214789336377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004525 (d - 1) * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A157223.P358462214789336377

namespace A157223

/-- `∑{d}[n+1, A004525(#-1)*A008966((n+1)/#)]` -/
def P358462214789336377.Spec : Prop :=
  ∀ n, P358462214789336377.a n = A157223 (n + 1)

end A157223

/-! ## A157223.P14707134063589225005

`A004525(∑{d}[∏{p}[n+1, #], (n+1)/#]-A060594(n+1))`
-/

namespace A157223.P14707134063589225005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) - (A060594 (n + 1) : ℚ))).toNat

end

end A157223.P14707134063589225005

namespace A157223

/-- `A004525(∑{d}[∏{p}[n+1, #], (n+1)/#]-A060594(n+1))` -/
def P14707134063589225005.Spec : Prop :=
  ∀ n, P14707134063589225005.a n = A157223 (n + 1)

end A157223

/-! ## A157223.P5503464750338170947

`A004526(∑{d}[∏{p}[n+1, #], (n+1)/#]-A155828(n+1))`
-/

namespace A157223.P5503464750338170947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) - (A155828 (n + 1) : ℚ))).toNat

end

end A157223.P5503464750338170947

namespace A157223

/-- `A004526(∑{d}[∏{p}[n+1, #], (n+1)/#]-A155828(n+1))` -/
def P5503464750338170947.Spec : Prop :=
  ∀ n, P5503464750338170947.a n = A157223 (n + 1)

end A157223

/-! ## A157223.P14285815706266255774

`A001281(A001615(n+1)-A060594(n+1))`
-/

namespace A157223.P14285815706266255774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A001615 (n + 1) - A060594 (n + 1)).toNat

end

end A157223.P14285815706266255774

namespace A157223

/-- `A001281(A001615(n+1)-A060594(n+1))` -/
def P14285815706266255774.Spec : Prop :=
  ∀ n, P14285815706266255774.a n = A157223 (n + 1)

end A157223

/-! ## A157223.P10989104341609999645

`A004525(A001615(n+1)-A060594(n+1))`
-/

namespace A157223.P10989104341609999645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A001615 (n + 1) - A060594 (n + 1)).toNat

end

end A157223.P10989104341609999645

namespace A157223

/-- `A004525(A001615(n+1)-A060594(n+1))` -/
def P10989104341609999645.Spec : Prop :=
  ∀ n, P10989104341609999645.a n = A157223 (n + 1)

end A157223

/-! ## A157223.P7227260324949670740

`A004526(A001615(n+1)-A060594(n+1))`
-/

namespace A157223.P7227260324949670740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001615 (n + 1) - A060594 (n + 1)).toNat

end

end A157223.P7227260324949670740

namespace A157223

/-- `A004526(A001615(n+1)-A060594(n+1))` -/
def P7227260324949670740.Spec : Prop :=
  ∀ n, P7227260324949670740.a n = A157223 (n + 1)

end A157223

/-!
# A157224: Number of primitive inequivalent (up to Pi/2 rotation) nonsquare sublattices of square lattice of index n.

The programs for A157224, the canonical program `A157224.P6199870463600327874` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157224 has offset 1).

The definition of A157224 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A157224.P6199870463600327874

`(A001615(n+1)-A000089(n+1))/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A157224

/-- `(A001615(n+1)-A000089(n+1))/2` -/
def P6199870463600327874.Spec : Prop :=
  ∀ n, P6199870463600327874.a n = (A157224 (n + 1) : ℚ)

end A157224

/-! ## A157224.P4822192472757616947

`A014682(A306927(n+1)+1+n-A000089(n+1))`
-/

namespace A157224.P4822192472757616947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A306927 (n + 1) + 1 + (n : ℤ) - A000089 (n + 1)).toNat

end

end A157224.P4822192472757616947

namespace A157224

/-- `A014682(A306927(n+1)+1+n-A000089(n+1))` -/
def P4822192472757616947.Spec : Prop :=
  ∀ n, P4822192472757616947.a n = A157224 (n + 1)

end A157224

/-! ## A157224.P16952378262791301774

`A014682(A344705(n+1)+A001065(n+1)-A000089(n+1))`
-/

namespace A157224.P16952378262791301774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A344705 (n + 1) + A001065 (n + 1) - A000089 (n + 1)).toNat

end

end A157224.P16952378262791301774

namespace A157224

/-- `A014682(A344705(n+1)+A001065(n+1)-A000089(n+1))` -/
def P16952378262791301774.Spec : Prop :=
  ∀ n, P16952378262791301774.a n = A157224 (n + 1)

end A157224

/-! ## A157224.P18410895862290247631

`A014682(A318320(n+1)+A291784(n+1)-A000089(n+1))`
-/

namespace A157224.P18410895862290247631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A318320 (n + 1) + A291784 (n + 1) - A000089 (n + 1)).toNat

end

end A157224.P18410895862290247631

namespace A157224

/-- `A014682(A318320(n+1)+A291784(n+1)-A000089(n+1))` -/
def P18410895862290247631.Spec : Prop :=
  ∀ n, P18410895862290247631.a n = A157224 (n + 1)

end A157224

/-! ## A157224.P3017831037597732434

`A014682(A306927(n+1)+1+n-A000095(n+1)/A000034(n))`
-/

namespace A157224.P3017831037597732434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A306927 (n + 1) + 1 + (n : ℤ) : ℚ) - (A000095 (n + 1) : ℚ) / (A000034 n : ℚ))).toNat

end

end A157224.P3017831037597732434

namespace A157224

/-- `A014682(A306927(n+1)+1+n-A000095(n+1)/A000034(n))` -/
def P3017831037597732434.Spec : Prop :=
  ∀ n, P3017831037597732434.a n = A157224 (n + 1)

end A157224

/-! ## A157224.P11565737852612157943

`A014682(A306927(n+1)+1+n-A000095(n+1)/A068073(n))`
-/

namespace A157224.P11565737852612157943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A306927 (n + 1) + 1 + (n : ℤ) : ℚ) - (A000095 (n + 1) : ℚ) / (A068073 n : ℚ))).toNat

end

end A157224.P11565737852612157943

namespace A157224

/-- `A014682(A306927(n+1)+1+n-A000095(n+1)/A068073(n))` -/
def P11565737852612157943.Spec : Prop :=
  ∀ n, P11565737852612157943.a n = A157224 (n + 1)

end A157224

/-! ## A157224.P8203849290317972492

`A014682(A306927(n+1)+1+n-A000095(n+1)/A006519(n+1))`
-/

namespace A157224.P8203849290317972492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A306927 (n + 1) + 1 + (n : ℤ) : ℚ) - (A000095 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A157224.P8203849290317972492

namespace A157224

/-- `A014682(A306927(n+1)+1+n-A000095(n+1)/A006519(n+1))` -/
def P8203849290317972492.Spec : Prop :=
  ∀ n, P8203849290317972492.a n = A157224 (n + 1)

end A157224

/-! ## A157224.P6623908816080363642

`A001281(A001615(n+1)-A000089(n+1))`
-/

namespace A157224.P6623908816080363642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A001615 (n + 1) - A000089 (n + 1)).toNat

end

end A157224.P6623908816080363642

namespace A157224

/-- `A001281(A001615(n+1)-A000089(n+1))` -/
def P6623908816080363642.Spec : Prop :=
  ∀ n, P6623908816080363642.a n = A157224 (n + 1)

end A157224

/-! ## A157224.P11801547674653892952

`A004525(A001615(n+1)-A000089(n+1))`
-/

namespace A157224.P11801547674653892952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A001615 (n + 1) - A000089 (n + 1)).toNat

end

end A157224.P11801547674653892952

namespace A157224

/-- `A004525(A001615(n+1)-A000089(n+1))` -/
def P11801547674653892952.Spec : Prop :=
  ∀ n, P11801547674653892952.a n = A157224 (n + 1)

end A157224

/-! ## A157224.P10388344297988562390

`A004526(A001615(n+1)-A000089(n+1))`
-/

namespace A157224.P10388344297988562390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001615 (n + 1) - A000089 (n + 1)).toNat

end

end A157224.P10388344297988562390

namespace A157224

/-- `A004526(A001615(n+1)-A000089(n+1))` -/
def P10388344297988562390.Spec : Prop :=
  ∀ n, P10388344297988562390.a n = A157224 (n + 1)

end A157224

/-! ## A157224.P4397287685044617097

`A025480(A001615(n+1)-A000089(n+1))`
-/

namespace A157224.P4397287685044617097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A001615 (n + 1) - A000089 (n + 1)).toNat

end

end A157224.P4397287685044617097

namespace A157224

/-- `A025480(A001615(n+1)-A000089(n+1))` -/
def P4397287685044617097.Spec : Prop :=
  ∀ n, P4397287685044617097.a n = A157224 (n + 1)

end A157224

/-! ## A157224.P3399268290951219149

`A110654(A001615(n+1)-A000089(n+1))`
-/

namespace A157224.P3399268290951219149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001615 (n + 1) - A000089 (n + 1)).toNat

end

end A157224.P3399268290951219149

namespace A157224

/-- `A110654(A001615(n+1)-A000089(n+1))` -/
def P3399268290951219149.Spec : Prop :=
  ∀ n, P3399268290951219149.a n = A157224 (n + 1)

end A157224

/-! ## A157224.P16316708313976809874

`A001281(xor(A000089(n+1), A001615(n+1)))`
-/

namespace A157224.P16316708313976809874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.xor (A000089 (n + 1)) (A001615 (n + 1))).toNat

end

end A157224.P16316708313976809874

namespace A157224

/-- `A001281(xor(A000089(n+1), A001615(n+1)))` -/
def P16316708313976809874.Spec : Prop :=
  ∀ n, P16316708313976809874.a n = A157224 (n + 1)

end A157224

/-! ## A157224.P7516037455036592688

`A004525(xor(A000089(n+1), A001615(n+1)))`
-/

namespace A157224.P7516037455036592688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.xor (A000089 (n + 1)) (A001615 (n + 1))).toNat

end

end A157224.P7516037455036592688

namespace A157224

/-- `A004525(xor(A000089(n+1), A001615(n+1)))` -/
def P7516037455036592688.Spec : Prop :=
  ∀ n, P7516037455036592688.a n = A157224 (n + 1)

end A157224

/-! ## A157224.P17552067962681945085

`A025480(xor(A000089(n+1), A001615(n+1)))`
-/

namespace A157224.P17552067962681945085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.xor (A000089 (n + 1)) (A001615 (n + 1))).toNat

end

end A157224.P17552067962681945085

namespace A157224

/-- `A025480(xor(A000089(n+1), A001615(n+1)))` -/
def P17552067962681945085.Spec : Prop :=
  ∀ n, P17552067962681945085.a n = A157224 (n + 1)

end A157224

/-! ## A157224.P11815288274935101265

`A110654(xor(A000089(n+1), A001615(n+1)))`
-/

namespace A157224.P11815288274935101265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.xor (A000089 (n + 1)) (A001615 (n + 1))).toNat

end

end A157224.P11815288274935101265

namespace A157224

/-- `A110654(xor(A000089(n+1), A001615(n+1)))` -/
def P11815288274935101265.Spec : Prop :=
  ∀ n, P11815288274935101265.a n = A157224 (n + 1)

end A157224

/-!
# A157225: Number of ways to write the n-th positive odd integer in the form p+2^x+7*2^y with p a prime congruent to 5 mod 6 and x,y positive integers.

The programs for A157225, there is no canonical definition to state claims against.
-/

/-! ## A157225.P16709627793825801875

`A025458(record[A007318(or(2, n))])`
-/

namespace A157225.P16709627793825801875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A157225.P16709627793825801875

/-! ## A157225.P2840847050684579142

`A025458(record[A007318((n+1)/4^val(n+1, 4))])`
-/

namespace A157225.P2840847050684579142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A157225.P2840847050684579142

/-! ## A157225.P2075076210916962999

`A025458(record[A007318(A053438(n))])`
-/

namespace A157225.P2075076210916962999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A053438 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A157225.P2075076210916962999

/-! ## A157225.P7308729263745784902

`A025458(record[A007318(A098180(n))])`
-/

namespace A157225.P7308729263745784902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A098180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A157225.P7308729263745784902

/-!
# A157226: Number of primitive inequivalent sublattices of square lattice having mirrors parallel to the sides of the unit cell of the parent lattice of index n.

The programs for A157226, the canonical program `A157226.P2232521618856525876` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157226 has offset 1).

The definition of A157226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157226.P2232521618856525876

`floor(A304182(n+1)/2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A157226

/-- `floor(A304182(n+1)/2)` -/
def P2232521618856525876.Spec : Prop :=
  ∀ n, P2232521618856525876.a n = A157226 (n + 1)

theorem P2232521618856525876.correct : P2232521618856525876.Spec := by
  intro n
  simp only [A157226, Nat.add_sub_cancel]

end A157226

/-! ## A157226.P1370399898667318477

`A004526(A304182(n+1))`
-/

namespace A157226.P1370399898667318477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A304182 (n + 1)).toNat

end

end A157226.P1370399898667318477

namespace A157226

/-- `A004526(A304182(n+1))` -/
def P1370399898667318477.Spec : Prop :=
  ∀ n, P1370399898667318477.a n = A157226 (n + 1)

end A157226

/-! ## A157226.P15523503729272542357

`A002265(2*A304182(n+1))`
-/

namespace A157226.P15523503729272542357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A304182 (n + 1)).toNat

end

end A157226.P15523503729272542357

namespace A157226

/-- `A002265(2*A304182(n+1))` -/
def P15523503729272542357.Spec : Prop :=
  ∀ n, P15523503729272542357.a n = A157226 (n + 1)

end A157226

/-! ## A157226.P4111448421030390047

`A008619(A304182(n+1)+2)-2`
-/

namespace A157226.P4111448421030390047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A304182 (n + 1) + 2).toNat - 2

end

end A157226.P4111448421030390047

namespace A157226

/-- `A008619(A304182(n+1)+2)-2` -/
def P4111448421030390047.Spec : Prop :=
  ∀ n, P4111448421030390047.a n = A157226 (n + 1)

end A157226

/-! ## A157226.P18388402227564771045

`A026741(A304182(n+1)%(n²+1))`
-/

namespace A157226.P18388402227564771045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A304182 (n + 1)) (n ^ 2 + 1 : ℤ)).toNat

end

end A157226.P18388402227564771045

namespace A157226

/-- `A026741(A304182(n+1)%(n²+1))` -/
def P18388402227564771045.Spec : Prop :=
  ∀ n, P18388402227564771045.a n = A157226 (n + 1)

end A157226

/-! ## A157226.P8498581190325095935

`∑{d}[n+1, A063647(#)*A359591((n+1)/#)]`
-/

namespace A157226.P8498581190325095935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063647 d * A359591 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A157226.P8498581190325095935

namespace A157226

/-- `∑{d}[n+1, A063647(#)*A359591((n+1)/#)]` -/
def P8498581190325095935.Spec : Prop :=
  ∀ n, P8498581190325095935.a n = A157226 (n + 1)

end A157226

/-! ## A157226.P3476907313504995456

`∑{d}[n+1, A078461(#)*A359372((n+1)/#)]`
-/

namespace A157226.P3476907313504995456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078461 d * A359372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A157226.P3476907313504995456

namespace A157226

/-- `∑{d}[n+1, A078461(#)*A359372((n+1)/#)]` -/
def P3476907313504995456.Spec : Prop :=
  ∀ n, P3476907313504995456.a n = A157226 (n + 1)

end A157226

/-! ## A157226.P10871612030014685611

`∑{d}[n+1, A328729(#)*A378549((n+1)/#)]`
-/

namespace A157226.P10871612030014685611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328729 d * A378549 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A157226.P10871612030014685611

namespace A157226

/-- `∑{d}[n+1, A328729(#)*A378549((n+1)/#)]` -/
def P10871612030014685611.Spec : Prop :=
  ∀ n, P10871612030014685611.a n = A157226 (n + 1)

end A157226

/-! ## A157226.P733933977539159819

`∑{d}[n+1, A000034(#-1)*A252233((n+1)/#)]`
-/

namespace A157226.P733933977539159819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000034 (d - 1) * A252233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A157226.P733933977539159819

namespace A157226

/-- `∑{d}[n+1, A000034(#-1)*A252233((n+1)/#)]` -/
def P733933977539159819.Spec : Prop :=
  ∀ n, P733933977539159819.a n = A157226 (n + 1)

end A157226

/-! ## A157226.P14902927232477401825

`A002265(A304182(n+1)+A304182(n+1)+1)`
-/

namespace A157226.P14902927232477401825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A304182 (n + 1) + (A304182 (n + 1) + 1)).toNat

end

end A157226.P14902927232477401825

namespace A157226

/-- `A002265(A304182(n+1)+A304182(n+1)+1)` -/
def P14902927232477401825.Spec : Prop :=
  ∀ n, P14902927232477401825.a n = A157226 (n + 1)

end A157226

/-! ## A157226.P12460902538983711046

`A304182(n+1)-A062790(2*A304182(n+1))`
-/

namespace A157226.P12460902538983711046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304182 (n + 1) - A062790 (2 * A304182 (n + 1)).toNat

end

end A157226.P12460902538983711046

namespace A157226

/-- `A304182(n+1)-A062790(2*A304182(n+1))` -/
def P12460902538983711046.Spec : Prop :=
  ∀ n, P12460902538983711046.a n = A157226 (n + 1)

end A157226

/-! ## A157226.P4738891872375184999

`A024361(2*(n+1))+A024361(A026741(n+1)²)`
-/

namespace A157226.P4738891872375184999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (2 * (n + 1)) + A024361 (A026741 (n + 1) ^ 2).toNat

end

end A157226.P4738891872375184999

namespace A157226

/-- `A024361(2*(n+1))+A024361(A026741(n+1)²)` -/
def P4738891872375184999.Spec : Prop :=
  ∀ n, P4738891872375184999.a n = A157226 (n + 1)

end A157226

/-!
# A157227: Number of primitive inequivalent (up to Pi/3 rotation) non-hexagonal sublattices of hexagonal (triangular) lattice of index n.

The programs for A157227, the canonical program `A157227.P14866030658019215904` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157227 has offset 1).

The definition of A157227 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000086, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A157227.P14866030658019215904

`(A001615(n+1)-A000086(n+1))/3`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A157227

/-- `(A001615(n+1)-A000086(n+1))/3` -/
def P14866030658019215904.Spec : Prop :=
  ∀ n, P14866030658019215904.a n = (A157227 (n + 1) : ℚ)

end A157227

/-! ## A157227.P8191919204607678863

`A002264(A001615(n+1)-A000086(n+1))`
-/

namespace A157227.P8191919204607678863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A001615 (n + 1) - A000086 (n + 1)).toNat

end

end A157227.P8191919204607678863

namespace A157227

/-- `A002264(A001615(n+1)-A000086(n+1))` -/
def P8191919204607678863.Spec : Prop :=
  ∀ n, P8191919204607678863.a n = A157227 (n + 1)

end A157227

/-! ## A157227.P9539005050622895040

`A051176(A001615(n+1)-A000086(n+1))`
-/

namespace A157227.P9539005050622895040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A001615 (n + 1) - A000086 (n + 1)).toNat

end

end A157227.P9539005050622895040

namespace A157227

/-- `A051176(A001615(n+1)-A000086(n+1))` -/
def P9539005050622895040.Spec : Prop :=
  ∀ n, P9539005050622895040.a n = A157227 (n + 1)

end A157227

/-! ## A157227.P11854091629058979675

`A071281(A001615(n+1)-A000086(n+1))`
-/

namespace A157227.P11854091629058979675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071281 (A001615 (n + 1) - A000086 (n + 1)).toNat

end

end A157227.P11854091629058979675

namespace A157227

/-- `A071281(A001615(n+1)-A000086(n+1))` -/
def P11854091629058979675.Spec : Prop :=
  ∀ n, P11854091629058979675.a n = A157227 (n + 1)

end A157227

/-! ## A157227.P11065057043001589743

`A285870(A001615(n+1)-A000086(n+1))`
-/

namespace A157227.P11065057043001589743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (A001615 (n + 1) - A000086 (n + 1)).toNat

end

end A157227.P11065057043001589743

namespace A157227

/-- `A285870(A001615(n+1)-A000086(n+1))` -/
def P11065057043001589743.Spec : Prop :=
  ∀ n, P11065057043001589743.a n = A157227 (n + 1)

end A157227

/-! ## A157227.P14579359635040056996

`A002264(A001615(n+1))%p?[A082040(n)]`
-/

namespace A157227.P14579359635040056996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002264 (A001615 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A157227.P14579359635040056996

namespace A157227

/-- `A002264(A001615(n+1))%p?[A082040(n)]` -/
def P14579359635040056996.Spec : Prop :=
  ∀ n, P14579359635040056996.a n = A157227 (n + 1)

end A157227

/-! ## A157227.P12151261743494976422

`A002264(A001615(n+1))*A130296(A018900(n+1))`
-/

namespace A157227.P12151261743494976422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A001615 (n + 1)).toNat * A130296 (A018900 (n + 1)).toNat

end

end A157227.P12151261743494976422

namespace A157227

/-- `A002264(A001615(n+1))*A130296(A018900(n+1))` -/
def P12151261743494976422.Spec : Prop :=
  ∀ n, P12151261743494976422.a n = A157227 (n + 1)

end A157227

/-! ## A157227.P8366183429764524650

`A002264(A001615(n+1)%eq[2, A007968(n)])`
-/

namespace A157227.P8366183429764524650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.tmod (A001615 (n + 1)) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A157227.P8366183429764524650

namespace A157227

/-- `A002264(A001615(n+1)%eq[2, A007968(n)])` -/
def P8366183429764524650.Spec : Prop :=
  ∀ n, P8366183429764524650.a n = A157227 (n + 1)

end A157227

/-! ## A157227.P16295569381085767080

`A002264(A001615(n+1))+A008683(A016874(n))`
-/

namespace A157227.P16295569381085767080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A001615 (n + 1)).toNat + A008683 (A016874 n).toNat

end

end A157227.P16295569381085767080

namespace A157227

/-- `A002264(A001615(n+1))+A008683(A016874(n))` -/
def P16295569381085767080.Spec : Prop :=
  ∀ n, P16295569381085767080.a n = A157227 (n + 1)

end A157227

/-!
# A157228: Number of primitive inequivalent inclined square sublattices of square lattice of index n.

The programs for A157228, the canonical program `A157228.P6044199204996125931` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157228 has offset 1).

The definition of A157228 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, A019590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A157228.P6044199204996125931

`(A000089(n+1)-A019590(n+1))/2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A157228

/-- `(A000089(n+1)-A019590(n+1))/2` -/
def P6044199204996125931.Spec : Prop :=
  ∀ n, P6044199204996125931.a n = (A157228 (n + 1) : ℚ)

end A157228

/-! ## A157228.P11164977759098238015

`floor(A000089(n+1)/2)`
-/

namespace A157228.P11164977759098238015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000089 (n + 1) : ℚ) / 2⌋

end

end A157228.P11164977759098238015

namespace A157228

/-- `floor(A000089(n+1)/2)` -/
def P11164977759098238015.Spec : Prop :=
  ∀ n, P11164977759098238015.a n = A157228 (n + 1)

end A157228

/-! ## A157228.P307884998066575986

`A024362(lcm((n+1)/∏{p}[n+1, #], (n+1)/and(n+1, -(n+1))))`
-/

namespace A157228.P307884998066575986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))))

end

end A157228.P307884998066575986

namespace A157228

/-- `A024362(lcm((n+1)/∏{p}[n+1, #], (n+1)/and(n+1, -(n+1))))` -/
def P307884998066575986.Spec : Prop :=
  ∀ n, P307884998066575986.a n = A157228 (n + 1)

end A157228

/-! ## A157228.P10269432364052520931

`A004526(Δ[A305117(n)])`
-/

namespace A157228.P10269432364052520931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A157228.P10269432364052520931

namespace A157228

/-- `A004526(Δ[A305117(n)])` -/
def P10269432364052520931.Spec : Prop :=
  ∀ n, P10269432364052520931.a n = A157228 (n + 1)

end A157228

/-! ## A157228.P17392981678868679213

`A024362(A026741(n+1))`
-/

namespace A157228.P17392981678868679213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (A026741 (n + 1)).toNat

end

end A157228.P17392981678868679213

namespace A157228

/-- `A024362(A026741(n+1))` -/
def P17392981678868679213.Spec : Prop :=
  ∀ n, P17392981678868679213.a n = A157228 (n + 1)

end A157228

/-! ## A157228.P8747447315690328324

`A024362(A059816(n+1))`
-/

namespace A157228.P8747447315690328324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (A059816 (n + 1)).toNat

end

end A157228.P8747447315690328324

namespace A157228

/-- `A024362(A059816(n+1))` -/
def P8747447315690328324.Spec : Prop :=
  ∀ n, P8747447315690328324.a n = A157228 (n + 1)

end A157228

/-! ## A157228.P7946251171367817127

`A025426(A076109(n+1))`
-/

namespace A157228.P7946251171367817127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A076109 (n + 1)).toNat

end

end A157228.P7946251171367817127

namespace A157228

/-- `A025426(A076109(n+1))` -/
def P7946251171367817127.Spec : Prop :=
  ∀ n, P7946251171367817127.a n = A157228 (n + 1)

end A157228

/-! ## A157228.P400549526563274572

`A024362(A214682(n+1))`
-/

namespace A157228.P400549526563274572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (A214682 (n + 1)).toNat

end

end A157228.P400549526563274572

namespace A157228

/-- `A024362(A214682(n+1))` -/
def P400549526563274572.Spec : Prop :=
  ∀ n, P400549526563274572.a n = A157228 (n + 1)

end A157228

/-! ## A157228.P11283925467048412490

`A024362(A350509(n+1))`
-/

namespace A157228.P11283925467048412490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (A350509 (n + 1)).toNat

end

end A157228.P11283925467048412490

namespace A157228

/-- `A024362(A350509(n+1))` -/
def P11283925467048412490.Spec : Prop :=
  ∀ n, P11283925467048412490.a n = A157228 (n + 1)

end A157228

/-! ## A157228.P17891946849189935082

`A001221(Δ[A305117(n)]!)`
-/

namespace A157228.P17891946849189935082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A157228.P17891946849189935082

namespace A157228

/-- `A001221(Δ[A305117(n)]!)` -/
def P17891946849189935082.Spec : Prop :=
  ∀ n, P17891946849189935082.a n = A157228 (n + 1)

end A157228

/-! ## A157228.P7835965297386904727

`A157230(n+1)%A086669(n+1)`
-/

namespace A157228.P7835965297386904727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157230 (n + 1)) (A086669 (n + 1))

end

end A157228.P7835965297386904727

namespace A157228

/-- `A157230(n+1)%A086669(n+1)` -/
def P7835965297386904727.Spec : Prop :=
  ∀ n, P7835965297386904727.a n = A157228 (n + 1)

end A157228

/-! ## A157228.P12325891042351830579

`A291784(n+1)%A086669(n+1)`
-/

namespace A157228.P12325891042351830579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291784 (n + 1)) (A086669 (n + 1))

end

end A157228.P12325891042351830579

namespace A157228

/-- `A291784(n+1)%A086669(n+1)` -/
def P12325891042351830579.Spec : Prop :=
  ∀ n, P12325891042351830579.a n = A157228 (n + 1)

end A157228

/-! ## A157228.P10410293648925479086

`∑{d}[n+1, A019590(#)*A024362((n+1)/#)]`
-/

namespace A157228.P10410293648925479086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A024362 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A157228.P10410293648925479086

namespace A157228

/-- `∑{d}[n+1, A019590(#)*A024362((n+1)/#)]` -/
def P10410293648925479086.Spec : Prop :=
  ∀ n, P10410293648925479086.a n = A157228 (n + 1)

end A157228

/-! ## A157228.P15380326137330972852

`∑{d}[n+1, A025441(#)*A271102((n+1)/#)]`
-/

namespace A157228.P15380326137330972852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A025441 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A157228.P15380326137330972852

namespace A157228

/-- `∑{d}[n+1, A025441(#)*A271102((n+1)/#)]` -/
def P15380326137330972852.Spec : Prop :=
  ∀ n, P15380326137330972852.a n = A157228 (n + 1)

end A157228

/-! ## A157228.P12442442915539311573

`∑{d}[n+1, A046080(#)*A359591((n+1)/#)]`
-/

namespace A157228.P12442442915539311573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046080 d * A359591 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A157228.P12442442915539311573

namespace A157228

/-- `∑{d}[n+1, A046080(#)*A359591((n+1)/#)]` -/
def P12442442915539311573.Spec : Prop :=
  ∀ n, P12442442915539311573.a n = A157228 (n + 1)

end A157228

/-! ## A157228.P14113991432355706004

`A004526(A305117(n+1)-A305117(n))`
-/

namespace A157228.P14113991432355706004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A305117 (n + 1) - A305117 n).toNat

end

end A157228.P14113991432355706004

namespace A157228

/-- `A004526(A305117(n+1)-A305117(n))` -/
def P14113991432355706004.Spec : Prop :=
  ∀ n, P14113991432355706004.a n = A157228 (n + 1)

end A157228

/-! ## A157228.P10182275091549066293

`A086669(n+1)-A086669(A097272(n+1))`
-/

namespace A157228.P10182275091549066293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086669 (n + 1) - A086669 (A097272 (n + 1)).toNat

end

end A157228.P10182275091549066293

namespace A157228

/-- `A086669(n+1)-A086669(A097272(n+1))` -/
def P10182275091549066293.Spec : Prop :=
  ∀ n, P10182275091549066293.a n = A157228 (n + 1)

end A157228

/-! ## A157228.P9486092175899179798

`A024362(A246416(n+1))`
-/

namespace A157228.P9486092175899179798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (A246416 (n + 1)).toNat

end

end A157228.P9486092175899179798

namespace A157228

/-- `A024362(A246416(n+1))` -/
def P9486092175899179798.Spec : Prop :=
  ∀ n, P9486092175899179798.a n = A157228 (n + 1)

end A157228

/-! ## A157228.P4935345490442340887

`A024362(A283971(n+1))`
-/

namespace A157228.P4935345490442340887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (A283971 (n + 1)).toNat

end

end A157228.P4935345490442340887

namespace A157228

/-- `A024362(A283971(n+1))` -/
def P4935345490442340887.Spec : Prop :=
  ∀ n, P4935345490442340887.a n = A157228 (n + 1)

end A157228

/-! ## A157228.P10445000064583150727

`A024362(sqrt(A168077(n+1)))`
-/

namespace A157228.P10445000064583150727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (SequenceMachineLib.roundAway (Real.sqrt (A168077 (n + 1) : ℝ))).toNat

end

end A157228.P10445000064583150727

namespace A157228

/-- `A024362(sqrt(A168077(n+1)))` -/
def P10445000064583150727.Spec : Prop :=
  ∀ n, P10445000064583150727.a n = A157228 (n + 1)

end A157228

/-!
# A157229: For the n in A157017, the number of representations of n! as the product of distinct numbers in the range n+1 to 2n.

The programs for A157229, there is no canonical definition to state claims against.
-/

/-! ## A157229.P14931231318257922038

`A117546(A157703(n))`
-/

namespace A157229.P14931231318257922038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117546 (A157703 n).toNat

end

end A157229.P14931231318257922038

/-! ## A157229.P18052410905156811618

`A089309(A363014(n+1))`
-/

namespace A157229.P18052410905156811618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A363014 (n + 1)).toNat

end

end A157229.P18052410905156811618

/-! ## A157229.P12453847598668027886

`A207507(or(3, A207525(n+2)))`
-/

namespace A157229.P12453847598668027886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207507 (Int.lor 3 (A207525 (n + 2))).toNat

end

end A157229.P12453847598668027886

/-! ## A157229.P3341788409884174708

`A090822(A232309(n+1)-n)`
-/

namespace A157229.P3341788409884174708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A232309 (n + 1) - (n : ℤ)).toNat

end

end A157229.P3341788409884174708

/-! ## A157229.P15993175147241746346

`A001221(∑{p}[A221378(n+7), #])`
-/

namespace A157229.P15993175147241746346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A157229.P15993175147241746346

/-!
# A157230: Number of primitive inequivalent sublattices of square lattice having mirrors parallel to the diagonals of the unit cell of the parent lattice of index n.

The programs for A157230, the canonical program `A157230.P2365165212862762183` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157230 has offset 1).

The definition of A157230 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019590, A060594, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A157230.P2365165212862762183

`(A060594(n+1)-A019590(n+1))/2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A157230

/-- `(A060594(n+1)-A019590(n+1))/2` -/
def P2365165212862762183.Spec : Prop :=
  ∀ n, P2365165212862762183.a n = (A157230 (n + 1) : ℚ)

end A157230

/-! ## A157230.P15758155766881630836

`floor(A060594(n+1)/2)`
-/

namespace A157230.P15758155766881630836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060594 (n + 1) : ℚ) / 2⌋

end

end A157230.P15758155766881630836

namespace A157230

/-- `floor(A060594(n+1)/2)` -/
def P15758155766881630836.Spec : Prop :=
  ∀ n, P15758155766881630836.a n = A157230 (n + 1)

end A157230

/-! ## A157230.P15026570510736472122

`ceil(A155828(n+1)/2)`
-/

namespace A157230.P15026570510736472122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155828 (n + 1) : ℚ) / 2⌉

end

end A157230.P15026570510736472122

namespace A157230

/-- `ceil(A155828(n+1)/2)` -/
def P15026570510736472122.Spec : Prop :=
  ∀ n, P15026570510736472122.a n = A157230 (n + 1)

end A157230

/-! ## A157230.P9812188914613323460

`A004526(A060594(n+1))`
-/

namespace A157230.P9812188914613323460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A060594 (n + 1)).toNat

end

end A157230.P9812188914613323460

namespace A157230

/-- `A004526(A060594(n+1))` -/
def P9812188914613323460.Spec : Prop :=
  ∀ n, P9812188914613323460.a n = A157230 (n + 1)

end A157230

/-! ## A157230.P4382385827764800220

`A001057(A155828(n+1))`
-/

namespace A157230.P4382385827764800220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A155828 (n + 1)).toNat

end

end A157230.P4382385827764800220

namespace A157230

/-- `A001057(A155828(n+1))` -/
def P4382385827764800220.Spec : Prop :=
  ∀ n, P4382385827764800220.a n = A157230 (n + 1)

end A157230

/-! ## A157230.P13662432465007001514

`A274923(A060594(n+1)²)`
-/

namespace A157230.P13662432465007001514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A060594 (n + 1) ^ 2).toNat

end

end A157230.P13662432465007001514

namespace A157230

/-- `A274923(A060594(n+1)²)` -/
def P13662432465007001514.Spec : Prop :=
  ∀ n, P13662432465007001514.a n = A157230 (n + 1)

end A157230

/-! ## A157230.P9707857584867323557

`A004524(A060594(n+1)+1)`
-/

namespace A157230.P9707857584867323557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A060594 (n + 1) + 1).toNat

end

end A157230.P9707857584867323557

namespace A157230

/-- `A004524(A060594(n+1)+1)` -/
def P9707857584867323557.Spec : Prop :=
  ∀ n, P9707857584867323557.a n = A157230 (n + 1)

end A157230

/-! ## A157230.P13612713296326198016

`A004526(A155828(n+1)+1)`
-/

namespace A157230.P13612713296326198016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A155828 (n + 1) + 1).toNat

end

end A157230.P13612713296326198016

namespace A157230

/-- `A004526(A155828(n+1)+1)` -/
def P13612713296326198016.Spec : Prop :=
  ∀ n, P13612713296326198016.a n = A157230 (n + 1)

end A157230

/-! ## A157230.P9902980537646161374

`A029578(A155828(n+1)+1)`
-/

namespace A157230.P9902980537646161374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A155828 (n + 1) + 1).toNat

end

end A157230.P9902980537646161374

namespace A157230

/-- `A029578(A155828(n+1)+1)` -/
def P9902980537646161374.Spec : Prop :=
  ∀ n, P9902980537646161374.a n = A157230 (n + 1)

end A157230

/-! ## A157230.P18359389824969777079

`A157227(A155828(n+1)+1)`
-/

namespace A157230.P18359389824969777079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157227 (A155828 (n + 1) + 1).toNat

end

end A157230.P18359389824969777079

namespace A157230

/-- `A157227(A155828(n+1)+1)` -/
def P18359389824969777079.Spec : Prop :=
  ∀ n, P18359389824969777079.a n = A157230 (n + 1)

end A157230

/-! ## A157230.P4479724436155848184

`A004524(A155828(n+1)+2)`
-/

namespace A157230.P4479724436155848184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A155828 (n + 1) + 2).toNat

end

end A157230.P4479724436155848184

namespace A157230

/-- `A004524(A155828(n+1)+2)` -/
def P4479724436155848184.Spec : Prop :=
  ∀ n, P4479724436155848184.a n = A157230 (n + 1)

end A157230

/-! ## A157230.P493623465875604734

`A110654(A060594(n+1)-1)`
-/

namespace A157230.P493623465875604734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A060594 (n + 1) - 1).toNat

end

end A157230.P493623465875604734

namespace A157230

/-- `A110654(A060594(n+1)-1)` -/
def P493623465875604734.Spec : Prop :=
  ∀ n, P493623465875604734.a n = A157230 (n + 1)

end A157230

/-! ## A157230.P18312351814514507534

`A002265(2*A060594(n+1))`
-/

namespace A157230.P18312351814514507534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A060594 (n + 1)).toNat

end

end A157230.P18312351814514507534

namespace A157230

/-- `A002265(2*A060594(n+1))` -/
def P18312351814514507534.Spec : Prop :=
  ∀ n, P18312351814514507534.a n = A157230 (n + 1)

end A157230

/-! ## A157230.P2888901314994841788

`A300717(2*A060594(n+1))`
-/

namespace A157230.P2888901314994841788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300717 (2 * A060594 (n + 1)).toNat

end

end A157230.P2888901314994841788

namespace A157230

/-- `A300717(2*A060594(n+1))` -/
def P2888901314994841788.Spec : Prop :=
  ∀ n, P2888901314994841788.a n = A157230 (n + 1)

end A157230

/-! ## A157230.P10787216826887772484

`A065033(A060594(n+1)+1)-1`
-/

namespace A157230.P10787216826887772484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A060594 (n + 1) + 1).toNat - 1

end

end A157230.P10787216826887772484

namespace A157230

/-- `A065033(A060594(n+1)+1)-1` -/
def P10787216826887772484.Spec : Prop :=
  ∀ n, P10787216826887772484.a n = A157230 (n + 1)

end A157230

/-! ## A157230.P3781018969181994500

`A008619(A155828(n+1)+1)-1`
-/

namespace A157230.P3781018969181994500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A155828 (n + 1) + 1).toNat - 1

end

end A157230.P3781018969181994500

namespace A157230

/-- `A008619(A155828(n+1)+1)-1` -/
def P3781018969181994500.Spec : Prop :=
  ∀ n, P3781018969181994500.a n = A157230 (n + 1)

end A157230

/-! ## A157230.P535868002050783040

`A004525(A060594(n+1)+2)-1`
-/

namespace A157230.P535868002050783040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A060594 (n + 1) + 2).toNat - 1

end

end A157230.P535868002050783040

namespace A157230

/-- `A004525(A060594(n+1)+2)-1` -/
def P535868002050783040.Spec : Prop :=
  ∀ n, P535868002050783040.a n = A157230 (n + 1)

end A157230

/-! ## A157230.P6096327453417544205

`A123108(A060594(n+1)+2)-1`
-/

namespace A157230.P6096327453417544205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A060594 (n + 1) + 2).toNat - 1

end

end A157230.P6096327453417544205

namespace A157230

/-- `A123108(A060594(n+1)+2)-1` -/
def P6096327453417544205.Spec : Prop :=
  ∀ n, P6096327453417544205.a n = A157230 (n + 1)

end A157230

/-! ## A157230.P16018275717391114965

`A065033(A155828(n+1)+2)-1`
-/

namespace A157230.P16018275717391114965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A155828 (n + 1) + 2).toNat - 1

end

end A157230.P16018275717391114965

namespace A157230

/-- `A065033(A155828(n+1)+2)-1` -/
def P16018275717391114965.Spec : Prop :=
  ∀ n, P16018275717391114965.a n = A157230 (n + 1)

end A157230

/-! ## A157230.P10678741635646309728

`ceil((A060594(n+1)-A010054(n))/2)`
-/

namespace A157230.P10678741635646309728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060594 (n + 1) - A010054 n : ℚ) / 2⌉

end

end A157230.P10678741635646309728

namespace A157230

/-- `ceil((A060594(n+1)-A010054(n))/2)` -/
def P10678741635646309728.Spec : Prop :=
  ∀ n, P10678741635646309728.a n = A157230 (n + 1)

end A157230

/-!
# A157231: Number of primitive inequivalent oblique sublattices of square lattice of index n (equivalence and symmetry of sublattices are determined using parent lattice symmetries).

The programs for A157231, the canonical program `A157231.P4030601719210352928` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157231 has offset 1).

The definition of A157231 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019590, A157226, A157228, A157230, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A157231.P4030601719210352928

`(A001615(n+1)-A019590(n+1)-2*(A157228(n+1)+A157226(n+1)+A157230(n+1)))/4`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A157231

/-- `(A001615(n+1)-A019590(n+1)-2*(A157228(n+1)+A157226(n+1)+A157230(n+1)))/4` -/
def P4030601719210352928.Spec : Prop :=
  ∀ n, P4030601719210352928.a n = (A157231 (n + 1) : ℚ)

end A157231

/-!
# A157235: Number of primitive inequivalent oblique sublattices of hexagonal (triangular) lattice of index n (equivalence and symmetry of sublattices are determined using only parent lattice symmetries).

The programs for A157235, the canonical program `A157235.P8865157934849236561` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157235 has offset 1).

The definition of A157235 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000086, A003050, A060594, A154272, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A157235.P8865157934849236561

`A003050(n+1)-(A000086(n+1)-A154272(n+1))/2-A060594(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A157235

/-- `A003050(n+1)-(A000086(n+1)-A154272(n+1))/2-A060594(n+1)` -/
def P8865157934849236561.Spec : Prop :=
  ∀ n, P8865157934849236561.a n = (A157235 (n + 1) : ℚ)

end A157235

/-! ## A157235.P7031559876955070471

`floor((A157227(n+1)-A155828(n+1))/2)`
-/

namespace A157235.P7031559876955070471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157227 (n + 1) - A155828 (n + 1) : ℚ) / 2⌋

end

end A157235.P7031559876955070471

namespace A157235

/-- `floor((A157227(n+1)-A155828(n+1))/2)` -/
def P7031559876955070471.Spec : Prop :=
  ∀ n, P7031559876955070471.a n = A157235 (n + 1)

end A157235

/-! ## A157235.P8882070986501681236

`A002264(A157223(n+1)-A155828(n+1))`
-/

namespace A157235.P8882070986501681236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A157223 (n + 1) - A155828 (n + 1)).toNat

end

end A157235.P8882070986501681236

namespace A157235

/-- `A002264(A157223(n+1)-A155828(n+1))` -/
def P8882070986501681236.Spec : Prop :=
  ∀ n, P8882070986501681236.a n = A157235 (n + 1)

end A157235

/-! ## A157235.P12687907645837454273

`A004524(A157227(n+1)-A155828(n+1))`
-/

namespace A157235.P12687907645837454273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A157227 (n + 1) - A155828 (n + 1)).toNat

end

end A157235.P12687907645837454273

namespace A157235

/-- `A004524(A157227(n+1)-A155828(n+1))` -/
def P12687907645837454273.Spec : Prop :=
  ∀ n, P12687907645837454273.a n = A157235 (n + 1)

end A157235

/-! ## A157235.P2547070623426182707

`A004526(A157227(n+1)-A155828(n+1))`
-/

namespace A157235.P2547070623426182707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A157227 (n + 1) - A155828 (n + 1)).toNat

end

end A157235.P2547070623426182707

namespace A157235

/-- `A004526(A157227(n+1)-A155828(n+1))` -/
def P2547070623426182707.Spec : Prop :=
  ∀ n, P2547070623426182707.a n = A157235 (n + 1)

end A157235

/-! ## A157235.P9977588892734734425

`A285870(A001615(n+1))%A003050(n+1)`
-/

namespace A157235.P9977588892734734425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285870 (A001615 (n + 1)).toNat) (A003050 (n + 1))

end

end A157235.P9977588892734734425

namespace A157235

/-- `A285870(A001615(n+1))%A003050(n+1)` -/
def P9977588892734734425.Spec : Prop :=
  ∀ n, P9977588892734734425.a n = A157235 (n + 1)

end A157235

/-! ## A157235.P2115090586929979707

`A112689(2*A001615(n+1))-A003050(n+1)`
-/

namespace A157235.P2115090586929979707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (2 * A001615 (n + 1)).toNat - A003050 (n + 1)

end

end A157235.P2115090586929979707

namespace A157235

/-- `A112689(2*A001615(n+1))-A003050(n+1)` -/
def P2115090586929979707.Spec : Prop :=
  ∀ n, P2115090586929979707.a n = A157235 (n + 1)

end A157235

/-! ## A157235.P285534815265387583

`A065033(A157227(n+1))-A060594(A060594(n+1))`
-/

namespace A157235.P285534815265387583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A157227 (n + 1)).toNat - A060594 (A060594 (n + 1)).toNat

end

end A157235.P285534815265387583

namespace A157235

/-- `A065033(A157227(n+1))-A060594(A060594(n+1))` -/
def P285534815265387583.Spec : Prop :=
  ∀ n, P285534815265387583.a n = A157235 (n + 1)

end A157235

/-!
# A157238: 0-1 sequence generated by starting with a 0, and then by using whichever of 0, 1 will result in the shortest sequence repeated at the end.

The programs for A157238, there is no canonical definition to state claims against.
-/

/-! ## A157238.P784712241874107480

`A006345(n+1)-1`
-/

namespace A157238.P784712241874107480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006345 (n + 1) - 1

end

end A157238.P784712241874107480

/-! ## A157238.P2851121388701009591

`log2(A006345(n+1))`
-/

namespace A157238.P2851121388701009591
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A006345 (n + 1) : ℝ)

end

end A157238.P2851121388701009591

/-! ## A157238.P4001170692933365312

`dr(and(10, A283131(n+1)))`
-/

namespace A157238.P4001170692933365312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 10 (A283131 (n + 1)))

end

end A157238.P4001170692933365312

/-! ## A157238.P1662979634043605996

`A000328(n)%A006345(n+1)`
-/

namespace A157238.P1662979634043605996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000328 n) (A006345 (n + 1))

end

end A157238.P1662979634043605996

/-! ## A157238.P16568782123678805977

`A000466(n)%A006345(n+1)`
-/

namespace A157238.P16568782123678805977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000466 n) (A006345 (n + 1))

end

end A157238.P16568782123678805977

/-! ## A157238.P15033253782061106583

`A000605(n)%A006345(n+1)`
-/

namespace A157238.P15033253782061106583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000605 n) (A006345 (n + 1))

end

end A157238.P15033253782061106583

/-! ## A157238.P3244359528457721541

`A001148(n)%A006345(n+1)`
-/

namespace A157238.P3244359528457721541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001148 n) (A006345 (n + 1))

end

end A157238.P3244359528457721541

/-! ## A157238.P16173401982598547031

`A001218(n)%A006345(n+1)`
-/

namespace A157238.P16173401982598547031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001218 n) (A006345 (n + 1))

end

end A157238.P16173401982598547031

/-! ## A157238.P16301771456731606476

`A001513(n)%A006345(n+1)`
-/

namespace A157238.P16301771456731606476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A006345 (n + 1))

end

end A157238.P16301771456731606476

/-! ## A157238.P5539379612129093738

`A001520(n)%A006345(n+1)`
-/

namespace A157238.P5539379612129093738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001520 n) (A006345 (n + 1))

end

end A157238.P5539379612129093738

/-! ## A157238.P8538678896182817369

`A001533(n)%A006345(n+1)`
-/

namespace A157238.P8538678896182817369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001533 n) (A006345 (n + 1))

end

end A157238.P8538678896182817369

/-! ## A157238.P6750873917985043331

`A001535(n)%A006345(n+1)`
-/

namespace A157238.P6750873917985043331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001535 n) (A006345 (n + 1))

end

end A157238.P6750873917985043331

/-! ## A157238.P9615489761514115809

`A001538(n)%A006345(n+1)`
-/

namespace A157238.P9615489761514115809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A006345 (n + 1))

end

end A157238.P9615489761514115809

/-! ## A157238.P8318064322483065868

`A008379(n)%A006345(n+1)`
-/

namespace A157238.P8318064322483065868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008379 n) (A006345 (n + 1))

end

end A157238.P8318064322483065868

/-! ## A157238.P15123247089750541753

`A016760(n)%A006345(n+1)`
-/

namespace A157238.P15123247089750541753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016760 n) (A006345 (n + 1))

end

end A157238.P15123247089750541753

/-! ## A157238.P14293134927283241509

`A016761(n)%A006345(n+1)`
-/

namespace A157238.P14293134927283241509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016761 n) (A006345 (n + 1))

end

end A157238.P14293134927283241509

/-! ## A157238.P4722782638354324620

`A016819(n)%A006345(n+1)`
-/

namespace A157238.P4722782638354324620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016819 n) (A006345 (n + 1))

end

end A157238.P4722782638354324620

/-! ## A157238.P1748336056836868157

`A016820(n)%A006345(n+1)`
-/

namespace A157238.P1748336056836868157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016820 n) (A006345 (n + 1))

end

end A157238.P1748336056836868157

/-! ## A157238.P3092871934787321317

`A016843(n)%A006345(n+1)`
-/

namespace A157238.P3092871934787321317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016843 n) (A006345 (n + 1))

end

end A157238.P3092871934787321317

/-! ## A157238.P16251884974085475566

`A016927(n)%A006345(n+1)`
-/

namespace A157238.P16251884974085475566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016927 n) (A006345 (n + 1))

end

end A157238.P16251884974085475566

/-!
# A157240: a(n) = A128018(n) + 1.

The programs for A157240, the canonical program `A157240.P7590378561638020432` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157240 has offset 0).

The definition of A157240 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A128018(n)+1` (program `A157240.P7590378561638020432`, by `A157240.P7590378561638020432.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157240.P7590378561638020432

`A128018(n)+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A157240

/-- `A128018(n)+1` -/
def P7590378561638020432.Spec : Prop :=
  ∀ n, P7590378561638020432.a n = A157240 n

theorem P7590378561638020432.correct : P7590378561638020432.Spec := by
  intro n
  simp only [A157240]

end A157240

/-! ## A157240.P3111343968052953307

`A138230(n+1)+1`
-/

namespace A157240.P3111343968052953307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138230 (n + 1) + 1

end

end A157240.P3111343968052953307

namespace A157240

/-- `A138230(n+1)+1` -/
def P3111343968052953307.Spec : Prop :=
  ∀ n, P3111343968052953307.a n = A157240 n

end A157240

/-! ## A157240.P17944785934649706981

`3*a(n-1)-6*a(n-2)+4*a(n-3)` with `a(0)=2, a(1)=-1, a(2)=-7`
-/

namespace A157240.P17944785934649706981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, -1, -7] fun n a =>
  3 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3)

end

end A157240.P17944785934649706981

namespace A157240

/-- `3*a(n-1)-6*a(n-2)+4*a(n-3)` -/
def P17944785934649706981.Spec : Prop :=
  ∀ n, P17944785934649706981.a n = A157240 n

end A157240

/-! ## A157240.P15222036155501790285

`(-2)^∑[n%3]+1`
-/

namespace A157240.P15222036155501790285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A157240.P15222036155501790285

namespace A157240

/-- `(-2)^∑[n%3]+1` -/
def P15222036155501790285.Spec : Prop :=
  ∀ n, P15222036155501790285.a n = A157240 n

end A157240

/-! ## A157240.P12737709129958272096

`∑[ogf((2-7x+8x^2)/(1-2x+4x^2))]`
-/

namespace A157240.P12737709129958272096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -7, 8] [1, -2, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157240.P12737709129958272096

namespace A157240

/-- `∑[ogf((2-7x+8x^2)/(1-2x+4x^2))]` -/
def P12737709129958272096.Spec : Prop :=
  ∀ n, P12737709129958272096.a n = A157240 n

end A157240

/-! ## A157240.P3614196925264189707

`∏[2-4/a(n-1)]+1` with `a(0)=1`
-/

namespace A157240.P3614196925264189707
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - 4 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A157240.P3614196925264189707

namespace A157240

/-- `∏[2-4/a(n-1)]+1` -/
def P3614196925264189707.Spec : Prop :=
  ∀ n, P3614196925264189707.a n = (A157240 n : ℚ)

end A157240

/-! ## A157240.P17950303086892627245

`(-2)^∑[floor(a(n-3))]+1` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A157240.P17950303086892627245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A157240.P17950303086892627245

namespace A157240

/-- `(-2)^∑[floor(a(n-3))]+1` -/
def P17950303086892627245.Spec : Prop :=
  ∀ n, P17950303086892627245.a n = A157240 n

end A157240

/-! ## A157240.P9845592207455588003

`1-floor(-∏[2-4/a(n-1)])` with `a(0)=1`
-/

namespace A157240.P9845592207455588003
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - 4 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊-(∏ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A157240.P9845592207455588003

namespace A157240

/-- `1-floor(-∏[2-4/a(n-1)])` -/
def P9845592207455588003.Spec : Prop :=
  ∀ n, P9845592207455588003.a n = A157240 n

end A157240

/-! ## A157240.P7428805754828289115

`1-ceil(-∏[2-4/a(n-1)])` with `a(0)=1`
-/

namespace A157240.P7428805754828289115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - 4 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈-(∏ j ∈ Finset.range (n + 1), f1 j)⌉

end

end A157240.P7428805754828289115

namespace A157240

/-- `1-ceil(-∏[2-4/a(n-1)])` -/
def P7428805754828289115.Spec : Prop :=
  ∀ n, P7428805754828289115.a n = A157240 n

end A157240

/-! ## A157240.P9698720276684006951

`1-round(-∏[2-4/a(n-1)])` with `a(0)=1`
-/

namespace A157240.P9698720276684006951
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - 4 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway (-(∏ j ∈ Finset.range (n + 1), f1 j))

end

end A157240.P9698720276684006951

namespace A157240

/-- `1-round(-∏[2-4/a(n-1)])` -/
def P9698720276684006951.Spec : Prop :=
  ∀ n, P9698720276684006951.a n = A157240 n

end A157240

/-! ## A157240.P16590812234831761509

`2-3*A157241(n)`
-/

namespace A157240.P16590812234831761509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - 3 * A157241 n

end

end A157240.P16590812234831761509

namespace A157240

/-- `2-3*A157241(n)` -/
def P16590812234831761509.Spec : Prop :=
  ∀ n, P16590812234831761509.a n = A157240 n

end A157240

/-! ## A157240.P13794058041793361231

`∏[Δ[A004482(n)]]+1`
-/

namespace A157240.P13794058041793361231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A157240.P13794058041793361231

namespace A157240

/-- `∏[Δ[A004482(n)]]+1` -/
def P13794058041793361231.Spec : Prop :=
  ∀ n, P13794058041793361231.a n = A157240 n

end A157240

/-! ## A157240.P14650176720085147071

`Δ[A088138(n+1)]+1`
-/

namespace A157240.P14650176720085147071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A157240.P14650176720085147071

namespace A157240

/-- `Δ[A088138(n+1)]+1` -/
def P14650176720085147071.Spec : Prop :=
  ∀ n, P14650176720085147071.a n = A157240 n

end A157240

/-! ## A157240.P15301217642344918864

`∏[Δ[A130508(n+1)]]+1`
-/

namespace A157240.P15301217642344918864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130508 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A157240.P15301217642344918864

namespace A157240

/-- `∏[Δ[A130508(n+1)]]+1` -/
def P15301217642344918864.Spec : Prop :=
  ∀ n, P15301217642344918864.a n = A157240 n

end A157240

/-! ## A157240.P11009442591292391484

`A122803(char[3*n-1]+n)+1`
-/

namespace A157240.P11009442591292391484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n) + 1

end

end A157240.P11009442591292391484

namespace A157240

/-- `A122803(char[3*n-1]+n)+1` -/
def P11009442591292391484.Spec : Prop :=
  ∀ n, P11009442591292391484.a n = A157240 n

end A157240

/-! ## A157240.P10897607988102972243

`A123344(A147534(n+2))+1`
-/

namespace A157240.P10897607988102972243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 (A147534 (n + 2)).toNat + 1

end

end A157240.P10897607988102972243

namespace A157240

/-- `A123344(A147534(n+2))+1` -/
def P10897607988102972243.Spec : Prop :=
  ∀ n, P10897607988102972243.a n = A157240 n

end A157240

/-! ## A157240.P1096327919905062529

`A104537(n)*A132954(n)+1`
-/

namespace A157240.P1096327919905062529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104537 n * A132954 n + 1

end

end A157240.P1096327919905062529

namespace A157240

/-- `A104537(n)*A132954(n)+1` -/
def P1096327919905062529.Spec : Prop :=
  ∀ n, P1096327919905062529.a n = A157240 n

end A157240

/-! ## A157240.P6287951543237108464

`A061347(n+1)*A122803(n)+1`
-/

namespace A157240.P6287951543237108464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A122803 n + 1

end

end A157240.P6287951543237108464

namespace A157240

/-- `A061347(n+1)*A122803(n)+1` -/
def P6287951543237108464.Spec : Prop :=
  ∀ n, P6287951543237108464.a n = A157240 n

end A157240

/-! ## A157240.P9616402309795035899

`A088138(n+1)+A120580(n+1)+1`
-/

namespace A157240.P9616402309795035899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088138 (n + 1) + (A120580 (n + 1) + 1)

end

end A157240.P9616402309795035899

namespace A157240

/-- `A088138(n+1)+A120580(n+1)+1` -/
def P9616402309795035899.Spec : Prop :=
  ∀ n, P9616402309795035899.a n = A157240 n

end A157240

/-! ## A157240.P17441448891255748595

`A011782(n+1)*A100051(n+1)+1`
-/

namespace A157240.P17441448891255748595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A100051 (n + 1) + 1

end

end A157240.P17441448891255748595

namespace A157240

/-- `A011782(n+1)*A100051(n+1)+1` -/
def P17441448891255748595.Spec : Prop :=
  ∀ n, P17441448891255748595.a n = A157240 n

end A157240

/-!
# A157241: Expansion of x / ((1-x)*(4*x^2-2*x+1)).

The programs for A157241, the canonical program `A157241.P11094283215045744396` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157241 has offset 0).

The definition of A157241 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-3x+6x^2-4x^3))` (program `A157241.P11094283215045744396`, by `A157241.P11094283215045744396.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157241.P11094283215045744396

`ogf(x/(1-3x+6x^2-4x^3))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157241

/-- `ogf(x/(1-3x+6x^2-4x^3))` -/
def P11094283215045744396.Spec : Prop :=
  ∀ n, P11094283215045744396.a n = A157241 n

theorem P11094283215045744396.correct : P11094283215045744396.Spec := by
  intro n
  simp only [A157241]

end A157241

/-! ## A157241.P7178599095475352307

`3*a(n-1)-6*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A157241.P7178599095475352307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  3 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3)

end

end A157241.P7178599095475352307

namespace A157241

/-- `3*a(n-1)-6*a(n-2)+4*a(n-3)` -/
def P7178599095475352307.Spec : Prop :=
  ∀ n, P7178599095475352307.a n = A157241 n

end A157241

/-! ## A157241.P1871778821708767911

`3-8*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A157241.P1871778821708767911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  3 - 8 * a (n - 3)

end

end A157241.P1871778821708767911

namespace A157241

/-- `3-8*a(n-3)` -/
def P1871778821708767911.Spec : Prop :=
  ∀ n, P1871778821708767911.a n = A157241 n

end A157241

/-! ## A157241.P3767814369748264894

`∑[A088138(n)]`
-/

namespace A157241.P3767814369748264894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157241.P3767814369748264894

namespace A157241

/-- `∑[A088138(n)]` -/
def P3767814369748264894.Spec : Prop :=
  ∀ n, P3767814369748264894.a n = A157241 n

end A157241

/-! ## A157241.P12036646180201895718

`∑[2^(n-1)*A128834(n)]`
-/

namespace A157241.P12036646180201895718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A128834 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157241.P12036646180201895718

namespace A157241

/-- `∑[2^(n-1)*A128834(n)]` -/
def P12036646180201895718.Spec : Prop :=
  ∀ n, P12036646180201895718.a n = (A157241 n : ℚ)

end A157241

/-! ## A157241.P353137374126021163

`∑[A128834(n)*A131577(n)]`
-/

namespace A157241.P353137374126021163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157241.P353137374126021163

namespace A157241

/-- `∑[A128834(n)*A131577(n)]` -/
def P353137374126021163.Spec : Prop :=
  ∀ n, P353137374126021163.a n = A157241 n

end A157241

/-! ## A157241.P462818119100554326

`∑[∑[A138230(n)]-A138230(n)]`
-/

namespace A157241.P462818119100554326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138230 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A138230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157241.P462818119100554326

namespace A157241

/-- `∑[∑[A138230(n)]-A138230(n)]` -/
def P462818119100554326.Spec : Prop :=
  ∀ n, P462818119100554326.a n = A157241 n

end A157241

/-! ## A157241.P1862973653496538929

`(1-(-2)^∑[n%3])/3`
-/

namespace A157241.P1862973653496538929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (-2) ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A157241.P1862973653496538929

namespace A157241

/-- `(1-(-2)^∑[n%3])/3` -/
def P1862973653496538929.Spec : Prop :=
  ∀ n, P1862973653496538929.a n = (A157241 n : ℚ)

end A157241

/-! ## A157241.P5507295781016688212

`(1-∏[2-4/a(n-1)])/3` with `a(0)=1`
-/

namespace A157241.P5507295781016688212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - 4 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - ∏ j ∈ Finset.range (n + 1), f1 j) / 3

end

end A157241.P5507295781016688212

namespace A157241

/-- `(1-∏[2-4/a(n-1)])/3` -/
def P5507295781016688212.Spec : Prop :=
  ∀ n, P5507295781016688212.a n = (A157241 n : ℚ)

end A157241

/-! ## A157241.P4436841234777983941

`(1-A128018(n))/3`
-/

namespace A157241.P4436841234777983941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A128018 n : ℚ) / 3

end

end A157241.P4436841234777983941

namespace A157241

/-- `(1-A128018(n))/3` -/
def P4436841234777983941.Spec : Prop :=
  ∀ n, P4436841234777983941.a n = (A157241 n : ℚ)

end A157241

/-! ## A157241.P11775495154909863005

`(2-A157240(n))/3`
-/

namespace A157241.P11775495154909863005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - A157240 n : ℚ) / 3

end

end A157241.P11775495154909863005

namespace A157241

/-- `(2-A157240(n))/3` -/
def P11775495154909863005.Spec : Prop :=
  ∀ n, P11775495154909863005.a n = (A157241 n : ℚ)

end A157241

/-! ## A157241.P3970419219200871711

`(1-A138230(n+1))/3`
-/

namespace A157241.P3970419219200871711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A138230 (n + 1) : ℚ) / 3

end

end A157241.P3970419219200871711

namespace A157241

/-- `(1-A138230(n+1))/3` -/
def P3970419219200871711.Spec : Prop :=
  ∀ n, P3970419219200871711.a n = (A157241 n : ℚ)

end A157241

/-! ## A157241.P5162757084717272778

`(1-A122803(A130481(n)))/3`
-/

namespace A157241.P5162757084717272778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A122803 (A130481 n).toNat : ℚ) / 3

end

end A157241.P5162757084717272778

namespace A157241

/-- `(1-A122803(A130481(n)))/3` -/
def P5162757084717272778.Spec : Prop :=
  ∀ n, P5162757084717272778.a n = (A157241 n : ℚ)

end A157241

/-! ## A157241.P6719033171117093258

`A007583(n)-A000079(n)*A024493(n+1)`
-/

namespace A157241.P6719033171117093258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n - A000079 n * A024493 (n + 1)

end

end A157241.P6719033171117093258

namespace A157241

/-- `A007583(n)-A000079(n)*A024493(n+1)` -/
def P6719033171117093258.Spec : Prop :=
  ∀ n, P6719033171117093258.a n = A157241 n

end A157241

/-!
# A157242: Number of ways to write the n-th positive odd integer in the form p+2^x+11*2^y with p a prime congruent to 5 mod 6 and x,y positive integers.

The programs for A157242, there is no canonical definition to state claims against.
-/

/-! ## A157242.P14018922261499753355

`A350723(∏{p}[A350701(n), #])`
-/

namespace A157242.P14018922261499753355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350723 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A157242.P14018922261499753355

/-!
# A157243: Triangle T(n, k) = A001263(n*f(n,k) + 1, f(n,k) + 1), where f(n, k) = k if k <= floor(n/2) otherwise n-k, read by rows.

The programs for A157243, there is no canonical definition to state claims against.
-/

/-! ## A157243.P4758013257585015709

`A001263(A008278(A001263(n+1))+n)`
-/

namespace A157243.P4758013257585015709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A008278 (A001263 (n + 1)).toNat + (n : ℤ)).toNat

end

end A157243.P4758013257585015709

/-! ## A157243.P18422607661397054190

`A001263((n+1)*A355201(A090441(n)))`
-/

namespace A157243.P18422607661397054190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 ((n + 1 : ℤ) * A355201 (A090441 n).toNat).toNat

end

end A157243.P18422607661397054190

/-! ## A157243.P5379552089250703464

`A088925(n)*A339235(A339231(n+1))`
-/

namespace A157243.P5379552089250703464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088925 n * A339235 (A339231 (n + 1)).toNat

end

end A157243.P5379552089250703464

/-! ## A157243.P16483985445436401221

`A001263((n+1)*A134285(A001263(n+1)))`
-/

namespace A157243.P16483985445436401221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 ((n + 1 : ℤ) * A134285 (A001263 (n + 1)).toNat).toNat

end

end A157243.P16483985445436401221

/-! ## A157243.P16200767793364998591

`A001263((n+1)*A152175(A001263(n+1)))`
-/

namespace A157243.P16200767793364998591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 ((n + 1 : ℤ) * A152175 (A001263 (n + 1)).toNat).toNat

end

end A157243.P16200767793364998591

/-!
# A157244: Decimal expansion of estimate of the weakly triple-free set constant.

The programs for A157244, there is no canonical definition to state claims against.
-/

/-! ## A157244.P5282971377965349256

`9-A157245(n)`
-/

namespace A157244.P5282971377965349256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A157245 n

end

end A157244.P5282971377965349256

/-!
# A157245: Decimal expansion of estimate of 1 - (the weakly triple-free set constant).

The programs for A157245, there is no canonical definition to state claims against.
-/

/-! ## A157245.P12486095303396102897

`9-A157244(n)`
-/

namespace A157245.P12486095303396102897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A157244 n

end

end A157245.P12486095303396102897

/-!
# A157249: Generalized Wilson quotients (or Wilson quotients for composite moduli).

The programs for A157249, there is no canonical definition to state claims against.
-/

/-! ## A157249.P358028652441243341

`floor((A001783(n+1)+1)/(n+1))`
-/

namespace A157249.P358028652441243341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001783 (n + 1) + 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A157249.P358028652441243341

/-! ## A157249.P3416451314305923947

`floor(((n+1)!/A066570(n+1)+1)/(n+1))`
-/

namespace A157249.P3416451314305923947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.factorial (n + 1) : ℚ) / (A066570 (n + 1) : ℚ) + 1) / (n + 1 : ℚ)⌋

end

end A157249.P3416451314305923947

/-! ## A157249.P6298505844908358980

`A056111(abs(n+1-a(n-1)))` with `a(0)=2`
-/

namespace A157249.P6298505844908358980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A056111 |(n + 1 : ℤ) - a (n - 1)|.toNat

end

end A157249.P6298505844908358980

/-!
# A157252: Denominator of Euler(n, 1/29).

The programs for A157252, there is no canonical definition to state claims against.
-/

/-! ## A157252.P8164982326488930044

`2^val(n+1, 2)*29^n`
-/

namespace A157252.P8164982326488930044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * 29 ^ n

end

end A157252.P8164982326488930044

/-! ## A157252.P15196056185645012360

`29^n*A006519(n+1)`
-/

namespace A157252.P15196056185645012360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 ^ n : ℤ) * A006519 (n + 1)

end

end A157252.P15196056185645012360

/-! ## A157252.P3908970588945357014

`lcm(29^n, A055975(n+1))`
-/

namespace A157252.P3908970588945357014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (29 ^ n : ℤ) (A055975 (n + 1))

end

end A157252.P3908970588945357014

/-! ## A157252.P15358250739187455929

`2^A007814(n+1)*29^n`
-/

namespace A157252.P15358250739187455929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) * (29 ^ n : ℚ)

end

end A157252.P15358250739187455929

/-! ## A157252.P4239354752346024997

`29^n*A008619(A038712(n+1))`
-/

namespace A157252.P4239354752346024997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 ^ n : ℤ) * A008619 (A038712 (n + 1)).toNat

end

end A157252.P4239354752346024997

/-! ## A157252.P1379715335882547461

`29^n*A000010(A245092(xor(n, n+1)+1))`
-/

namespace A157252.P1379715335882547461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 ^ n : ℤ) * A000010 (A245092 (Nat.xor n (n + 1) + 1)).toNat

end

end A157252.P1379715335882547461

/-! ## A157252.P12269515133989257026

`A000079(A007814(n+1))*A009973(n)`
-/

namespace A157252.P12269515133989257026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A007814 (n + 1)).toNat * A009973 n

end

end A157252.P12269515133989257026

/-!
# A157253: Arises in combinatorial approach to the power of 2 in the number of involutions.

The programs for A157253, there is no canonical definition to state claims against.
-/

/-! ## A157253.P14873341028110432342

`A121902(7*A309845(n))`
-/

namespace A157253.P14873341028110432342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (7 * A309845 n).toNat

end

end A157253.P14873341028110432342

/-! ## A157253.P5435428954999411741

`A121902(lcm(7, A309845(n)))`
-/

namespace A157253.P5435428954999411741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (Int.lcm 7 (A309845 n))

end

end A157253.P5435428954999411741

/-! ## A157253.P17524825591435018800

`A339839(∏[A064986(n+1)])`
-/

namespace A157253.P17524825591435018800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339839 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A157253.P17524825591435018800

/-! ## A157253.P7544560903049553452

`round(A079496(n+1)/A211202(2*n+1))`
-/

namespace A157253.P7544560903049553452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A079496 (n + 1) : ℚ) / (A211202 (2 * n + 1) : ℚ))

end

end A157253.P7544560903049553452

/-! ## A157253.P3389035962671751261

`A287616(A287585(n)-A131689(n))`
-/

namespace A157253.P3389035962671751261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287616 (A287585 n - A131689 n).toNat

end

end A157253.P3389035962671751261

/-!
# A157254: a(n) = floor(n^(n^(1/3))).

The programs for A157254, the canonical program `A157254.P3469257009645950582` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157254 has offset 1).

The definition of A157254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157254.P3469257009645950582

`floor((n+1)^root(n+1, 3))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157254

/-- `floor((n+1)^root(n+1, 3))` -/
def P3469257009645950582.Spec : Prop :=
  ∀ n, P3469257009645950582.a n = A157254 (n + 1)

theorem P3469257009645950582.correct : P3469257009645950582.Spec := by
  intro n
  simp only [A157254, Nat.add_sub_cancel]

end A157254

/-! ## A157254.P13818169887132426942

`A356939(A115266(n))`
-/

namespace A157254.P13818169887132426942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356939 (A115266 n).toNat

end

end A157254.P13818169887132426942

namespace A157254

/-- `A356939(A115266(n))` -/
def P13818169887132426942.Spec : Prop :=
  ∀ n, P13818169887132426942.a n = A157254 (n + 1)

end A157254

/-! ## A157254.P2814069071558199946

`A100617(A100535(n))-n`
-/

namespace A157254.P2814069071558199946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A100535 n).toNat - (n : ℤ)

end

end A157254.P2814069071558199946

namespace A157254

/-- `A100617(A100535(n))-n` -/
def P2814069071558199946.Spec : Prop :=
  ∀ n, P2814069071558199946.a n = A157254 (n + 1)

end A157254

/-! ## A157254.P15826176095513296059

`floor((A320921(n)+A000125(n))/sqrt(3))+n`
-/

namespace A157254.P15826176095513296059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A320921 n + A000125 n : ℝ) / Real.sqrt (3 : ℝ)⌋ + (n : ℤ)

end

end A157254.P15826176095513296059

namespace A157254

/-- `floor((A320921(n)+A000125(n))/sqrt(3))+n` -/
def P15826176095513296059.Spec : Prop :=
  ∀ n, P15826176095513296059.a n = A157254 (n + 1)

end A157254

/-! ## A157254.P16206369555555570388

`A392695(A120452(n+1))+A000120(n)`
-/

namespace A157254.P16206369555555570388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392695 (A120452 (n + 1)).toNat + A000120 n

end

end A157254.P16206369555555570388

namespace A157254

/-- `A392695(A120452(n+1))+A000120(n)` -/
def P16206369555555570388.Spec : Prop :=
  ∀ n, P16206369555555570388.a n = A157254 (n + 1)

end A157254

/-!
# A157257: Positive numbers y such that y^2 is of the form x^2+(x+41)^2 with integer x.

The programs for A157257, the canonical program `A157257.P5278819744251056607` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157257 has offset 1).

The definition of A157257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157257.P5278819744251056607

`6*a(n-3)-a(n-6)` with `a(0)=29, a(1)=41, a(2)=85, a(3)=89, a(4)=205, a(5)=481`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157257

/-- `6*a(n-3)-a(n-6)` -/
def P5278819744251056607.Spec : Prop :=
  ∀ n, P5278819744251056607.a n = A157257 (n + 1)

theorem P5278819744251056607.correct : P5278819744251056607.Spec := by
  intro n
  simp only [A157257, Nat.add_sub_cancel]

end A157257

/-! ## A157257.P9912602046044213957

`3^a(n-1)` with `a(0)=29, a(1)=41, a(2)=85, a(3)=89, a(4)=205, a(5)=481`
-/

namespace A157257.P9912602046044213957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [29, 41, 85, 89, 205, 481] fun n a =>
  3 ^ a (n - 1)

end

end A157257.P9912602046044213957

namespace A157257

/-- `3^a(n-1)` -/
def P9912602046044213957.Spec : Prop :=
  ∀ n, (P9912602046044213957.a n : ℤ) = A157257 (n + 1)

end A157257

/-!
# A157258: Decimal expansion of 7 + 2*sqrt(2).

The programs for A157258, there is no canonical definition to state claims against.
-/

/-! ## A157258.P17358980085450272997

`A156035(n)+A000038(n)²`
-/

namespace A157258.P17358980085450272997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 (n + 1) + A000038 n ^ 2

end

end A157258.P17358980085450272997

/-! ## A157258.P7340211561540151840

`A156035(n)+4*A000007(n)`
-/

namespace A157258.P7340211561540151840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 (n + 1) + 4 * A000007 n

end

end A157258.P7340211561540151840

/-! ## A157258.P10313199759027177888

`A090488(n)+5*A000007(n)`
-/

namespace A157258.P10313199759027177888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1) + 5 * A000007 n

end

end A157258.P10313199759027177888

/-! ## A157258.P6417381324914824184

`a(A000038(n))-A157259(n)` with `a(0)=9`
-/

namespace A157258.P6417381324914824184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  a (A000038 n).toNat - A157259 (n + 1)

end

end A157258.P6417381324914824184

/-! ## A157258.P11403779319367195028

`A010466(A000007(n)+n)+A000007(n)`
-/

namespace A157258.P11403779319367195028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010466 ((A000007 n + (n : ℤ)).toNat + 1) + A000007 n

end

end A157258.P11403779319367195028

/-! ## A157258.P1063269847748014204

`A090488(A000007(n)+n)+A000007(n)`
-/

namespace A157258.P1063269847748014204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 ((A000007 n + (n : ℤ)).toNat + 1) + A000007 n

end

end A157258.P1063269847748014204

/-! ## A157258.P5078567382821357062

`A156035(A000007(n)+n)+A000007(n)`
-/

namespace A157258.P5078567382821357062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 ((A000007 n + (n : ℤ)).toNat + 1) + A000007 n

end

end A157258.P5078567382821357062

/-! ## A157258.P953440509931165978

`A028310(n)+A090488(A028310(n))-n`
-/

namespace A157258.P953440509931165978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A090488 ((A028310 n).toNat + 1) - (n : ℤ))

end

end A157258.P953440509931165978

/-! ## A157258.P15795780451506698478

`A104956(n+1)+A090488(n)-A176325(n+1)`
-/

namespace A157258.P15795780451506698478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104956 (n + 1 + 1) + (A090488 (n + 1) - A176325 (n + 1 + 1))

end

end A157258.P15795780451506698478

/-! ## A157258.P16612179755265691482

`A090488(C(A090488(n+1), A134869(n+2))+n)`
-/

namespace A157258.P16612179755265691482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (Nat.choose (A090488 (n + 1 + 1)).toNat (A134869 (n + 2)).toNat + n + 1)

end

end A157258.P16612179755265691482

/-! ## A157258.P16019603184094246182

`A086178(n)^A000034(A124508(n+1))`
-/

namespace A157258.P16019603184094246182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086178 (n + 1) : ℚ) ^ (A000034 (A124508 (n + 1)).toNat : ℤ)

end

end A157258.P16019603184094246182

/-!
# A157259: Decimal expansion of 7 - 2*sqrt(2).

The programs for A157259, there is no canonical definition to state claims against.
-/

/-! ## A157259.P17135429555129372062

`9-A156035(n)`
-/

namespace A157259.P17135429555129372062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A156035 (n + 1)

end

end A157259.P17135429555129372062

/-! ## A157259.P18398661942721047516

`9-(A090488(n)+A000007(n))`
-/

namespace A157259.P18398661942721047516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A090488 (n + 1) + A000007 n)

end

end A157259.P18398661942721047516

/-! ## A157259.P10232573218940153467

`9-(A028310(n)+A090488(n)-n)`
-/

namespace A157259.P10232573218940153467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A028310 n + (A090488 (n + 1) - (n : ℤ)))

end

end A157259.P10232573218940153467

/-! ## A157259.P17524888489347323589

`9-or(C(n+1, A000203(n+1)), A090488(n))`
-/

namespace A157259.P17524888489347323589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - Int.lor (Nat.choose (n + 1) (A000203 (n + 1)).toNat : ℤ) (A090488 (n + 1))

end

end A157259.P17524888489347323589

/-! ## A157259.P724688927728152362

`9-(A090488(n)+A008683(A008574(n)))`
-/

namespace A157259.P724688927728152362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A090488 (n + 1) + A008683 (A008574 n).toNat)

end

end A157259.P724688927728152362

/-! ## A157259.P7609220494339330302

`9-(A090388(n)+A090488(n)-A002194(n))`
-/

namespace A157259.P7609220494339330302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A090388 (n + 1) + (A090488 (n + 1) - A002194 (n + 1)))

end

end A157259.P7609220494339330302

/-! ## A157259.P15947045388465868428

`9-(A178809(n+1)+A090488(n)-A176532(n+1))`
-/

namespace A157259.P15947045388465868428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A178809 (n + 1 + 2) + (A090488 (n + 1) - A176532 (n + 1 + 2)))

end

end A157259.P15947045388465868428

/-!
# A157261: A run-length encoding of blocks of 2 in A090822.

The programs for A157261, the canonical program `A157261.P4017168066649199223` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157261 has offset 1).

The definition of A157261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157261.P4017168066649199223

`A141285(A185170(A006519(n+1)))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A157261

/-- `A141285(A185170(A006519(n+1)))` -/
def P4017168066649199223.Spec : Prop :=
  ∀ n, P4017168066649199223.a n = A157261 (n + 1)

theorem P4017168066649199223.correct : P4017168066649199223.Spec := by
  intro n
  simp only [A157261, Nat.add_sub_cancel]

end A157261

/-! ## A157261.P9338572504881475735

`floor(A157339(and(n, 2*n)+1)/sqrt(20))`
-/

namespace A157261.P9338572504881475735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157339 (Nat.land n (2 * n) + 1) : ℝ) / Real.sqrt (20 : ℝ)⌋

end

end A157261.P9338572504881475735

namespace A157261

/-- `floor(A157339(and(n, 2*n)+1)/sqrt(20))` -/
def P9338572504881475735.Spec : Prop :=
  ∀ n, P9338572504881475735.a n = A157261 (n + 1)

end A157261

/-! ## A157261.P8953661062552356584

`floor(A157339(n)/sqrt(20))`
-/

namespace A157261.P8953661062552356584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157339 n : ℝ) / Real.sqrt (20 : ℝ)⌋

end

end A157261.P8953661062552356584

namespace A157261

/-- `floor(A157339(n)/sqrt(20))` -/
def P8953661062552356584.Spec : Prop :=
  ∀ n, P8953661062552356584.a n = A157261 (n + 1)

end A157261

/-! ## A157261.P217126801382977839

`A060384(A157339(n))`
-/

namespace A157261.P217126801382977839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A157339 n).toNat

end

end A157261.P217126801382977839

namespace A157261

/-- `A060384(A157339(n))` -/
def P217126801382977839.Spec : Prop :=
  ∀ n, P217126801382977839.a n = A157261 (n + 1)

end A157261

/-! ## A157261.P16028653733800860699

`A077463(A157339(n)-1)`
-/

namespace A157261.P16028653733800860699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077463 (A157339 n - 1).toNat

end

end A157261.P16028653733800860699

namespace A157261

/-- `A077463(A157339(n)-1)` -/
def P16028653733800860699.Spec : Prop :=
  ∀ n, P16028653733800860699.a n = A157261 (n + 1)

end A157261

/-! ## A157261.P9242838753652764369

`A105564(A157339(n)-1)`
-/

namespace A157261.P9242838753652764369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (A157339 n - 1).toNat

end

end A157261.P9242838753652764369

namespace A157261

/-- `A105564(A157339(n)-1)` -/
def P9242838753652764369.Spec : Prop :=
  ∀ n, P9242838753652764369.a n = A157261 (n + 1)

end A157261

/-! ## A157261.P12068332961340698295

`A187183(A157339(n)-1)`
-/

namespace A157261.P12068332961340698295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187183 (A157339 n - 1).toNat

end

end A157261.P12068332961340698295

namespace A157261

/-- `A187183(A157339(n)-1)` -/
def P12068332961340698295.Spec : Prop :=
  ∀ n, P12068332961340698295.a n = A157261 (n + 1)

end A157261

/-! ## A157261.P18202420349780150397

`A002266(A157339(n)+3)`
-/

namespace A157261.P18202420349780150397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A157339 n + 3).toNat

end

end A157261.P18202420349780150397

namespace A157261

/-- `A002266(A157339(n)+3)` -/
def P18202420349780150397.Spec : Prop :=
  ∀ n, P18202420349780150397.a n = A157261 (n + 1)

end A157261

/-! ## A157261.P15497349030209329187

`A226762(A157339(n)-3)`
-/

namespace A157261.P15497349030209329187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A157339 n - 3).toNat

end

end A157261.P15497349030209329187

namespace A157261

/-- `A226762(A157339(n)-3)` -/
def P15497349030209329187.Spec : Prop :=
  ∀ n, P15497349030209329187.a n = A157261 (n + 1)

end A157261

/-! ## A157261.P12102562881535214909

`A070098(or(1, A157339(n)))`
-/

namespace A157261.P12102562881535214909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (Int.lor 1 (A157339 n)).toNat

end

end A157261.P12102562881535214909

namespace A157261

/-- `A070098(or(1, A157339(n)))` -/
def P12102562881535214909.Spec : Prop :=
  ∀ n, P12102562881535214909.a n = A157261 (n + 1)

end A157261

/-!
# A157262: a(n) = 36*n^2 - 55*n + 21.

The programs for A157262, the canonical program `A157262.P13376411005116522935` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157262 has offset 1).

The definition of A157262 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36*(n+1)²-55*(n+1)+21` (program `A157262.P13376411005116522935`, by `A157262.P13376411005116522935.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157262.P13376411005116522935

`36*(n+1)²-55*(n+1)+21`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157262

/-- `36*(n+1)²-55*(n+1)+21` -/
def P13376411005116522935.Spec : Prop :=
  ∀ n, P13376411005116522935.a n = A157262 (n + 1)

theorem P13376411005116522935.correct : P13376411005116522935.Spec := by
  intro n
  simp only [A157262, Nat.add_sub_cancel]

end A157262

/-! ## A157262.P5314330951585965698

`A016813(n)*A017185(n)`
-/

namespace A157262.P5314330951585965698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n * A017185 n

end

end A157262.P5314330951585965698

namespace A157262

/-- `A016813(n)*A017185(n)` -/
def P5314330951585965698.Spec : Prop :=
  ∀ n, P5314330951585965698.a n = A157262 (n + 1)

theorem P5314330951585965698.correct : P5314330951585965698.Spec := by
  intro n
  simp only [A157262, Nat.add_sub_cancel, A157262.P5314330951585965698.a, A157262.P13376411005116522935.a, A016813, A016813.P15626904835145642280.a, A017185, A017185.P12174419037402659888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157262

/-! ## A157262.P9381206680800651136

`ceil((sqrt(a(n-1))+6)²)` with `a(0)=2`
-/

namespace A157262.P9381206680800651136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈(Real.sqrt (a (n - 1) : ℝ) + 6) ^ 2⌉

end

end A157262.P9381206680800651136

namespace A157262

/-- `ceil((sqrt(a(n-1))+6)²)` -/
def P9381206680800651136.Spec : Prop :=
  ∀ n, P9381206680800651136.a n = A157262 (n + 1)

end A157262

/-! ## A157262.P3575468893498790768

`round((sqrt(a(n-1))+6)²)` with `a(0)=2`
-/

namespace A157262.P3575468893498790768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (a (n - 1) : ℝ) + 6) ^ 2)

end

end A157262.P3575468893498790768

namespace A157262

/-- `round((sqrt(a(n-1))+6)²)` -/
def P3575468893498790768.Spec : Prop :=
  ∀ n, P3575468893498790768.a n = A157262 (n + 1)

end A157262

/-! ## A157262.P17620153903985551664

`A157626(n+1)%A017090(n)`
-/

namespace A157262.P17620153903985551664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157626 (n + 1)) (A017090 n)

end

end A157262.P17620153903985551664

namespace A157262

/-- `A157626(n+1)%A017090(n)` -/
def P17620153903985551664.Spec : Prop :=
  ∀ n, P17620153903985551664.a n = A157262 (n + 1)

end A157262

/-! ## A157262.P8985569211986241459

`A157842(n+1)%A017186(n)`
-/

namespace A157262.P8985569211986241459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157842 (n + 1)) (A017186 n)

end

end A157262.P8985569211986241459

namespace A157262

/-- `A157842(n+1)%A017186(n)` -/
def P8985569211986241459.Spec : Prop :=
  ∀ n, P8985569211986241459.a n = A157262 (n + 1)

end A157262

/-!
# A157263: a(n) = 1728*n - 1320.

The programs for A157263, the canonical program `A157263.P1163589545700994818` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157263 has offset 1).

The definition of A157263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157263.P1163589545700994818

`24*(72*n+17)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157263

/-- `24*(72*n+17)` -/
def P1163589545700994818.Spec : Prop :=
  ∀ n, (P1163589545700994818.a n : ℤ) = A157263 (n + 1)

theorem P1163589545700994818.correct : P1163589545700994818.Spec := by
  intro n
  simp only [A157263, Nat.add_sub_cancel]

end A157263

/-!
# A157264: a(n) = 10368*n^2 - 15840*n + 6049.

The programs for A157264, the canonical program `A157264.P9433360168294747943` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157264 has offset 1).

The definition of A157264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157264.P9433360168294747943

`A154514(4*n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A157264

/-- `A154514(4*n+1)` -/
def P9433360168294747943.Spec : Prop :=
  ∀ n, P9433360168294747943.a n = A157264 (n + 1)

theorem P9433360168294747943.correct : P9433360168294747943.Spec := by
  intro n
  simp only [A157264, Nat.add_sub_cancel]

end A157264

/-! ## A157264.P17264360712325204489

`record[A154514(n+1)^A056594(n)]`
-/

namespace A157264.P17264360712325204489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154514 (n + 1) : ℚ) ^ (A056594 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157264.P17264360712325204489

namespace A157264

/-- `record[A154514(n+1)^A056594(n)]` -/
def P17264360712325204489.Spec : Prop :=
  ∀ n, P17264360712325204489.a n = (A157264 (n + 1) : ℚ)

end A157264

/-! ## A157264.P5903870480820878345

`A157337(9*n+2)`
-/

namespace A157264.P5903870480820878345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157337 (9 * n + 2)

end

end A157264.P5903870480820878345

namespace A157264

/-- `A157337(9*n+2)` -/
def P5903870480820878345.Spec : Prop :=
  ∀ n, P5903870480820878345.a n = A157264 (n + 1)

theorem P5903870480820878345.correct : P5903870480820878345.Spec := by
  intro n
  simp only [A157264, Nat.add_sub_cancel, A157264.P5903870480820878345.a, A157264.P9433360168294747943.a, A154514, A154514.P4536566946415829167.a, A157337, A157337.P630669980650984077.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157264

/-! ## A157264.P1559311484710134631

`∩[A154514(n+1), A157337(n+1)]`
-/

namespace A157264.P1559311484710134631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157264.P1559311484710134631

namespace A157264

/-- `∩[A154514(n+1), A157337(n+1)]` -/
def P1559311484710134631.Spec : Prop :=
  ∀ n, (P1559311484710134631.a n : ℤ) = A157264 (n + 1)

end A157264

/-! ## A157264.P1961538074903254723

`A069129(xor(2, 6*6*n+11))`
-/

namespace A157264.P1961538074903254723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (Nat.xor 2 (6 * (6 * n) + 11))

end

end A157264.P1961538074903254723

namespace A157264

/-- `A069129(xor(2, 6*6*n+11))` -/
def P1961538074903254723.Spec : Prop :=
  ∀ n, P1961538074903254723.a n = A157264 (n + 1)

end A157264

/-! ## A157264.P43727953845263588

`A069129(A139609(n))`
-/

namespace A157264.P43727953845263588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A139609 n).toNat

end

end A157264.P43727953845263588

namespace A157264

/-- `A069129(A139609(n))` -/
def P43727953845263588.Spec : Prop :=
  ∀ n, P43727953845263588.a n = A157264 (n + 1)

end A157264

/-! ## A157264.P14449983060826807728

`A069129(3*A016945(2*n))`
-/

namespace A157264.P14449983060826807728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (3 * A016945 (2 * n)).toNat

end

end A157264.P14449983060826807728

namespace A157264

/-- `A069129(3*A016945(2*n))` -/
def P14449983060826807728.Spec : Prop :=
  ∀ n, P14449983060826807728.a n = A157264 (n + 1)

end A157264

/-! ## A157264.P16065922854564260607

`A105638(A044102(2*n+1)+A044102(2*n))`
-/

namespace A157264.P16065922854564260607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105638 (A044102 (2 * n + 1) + A044102 (2 * n)).toNat

end

end A157264.P16065922854564260607

namespace A157264

/-- `A105638(A044102(2*n+1)+A044102(2*n))` -/
def P16065922854564260607.Spec : Prop :=
  ∀ n, P16065922854564260607.a n = A157264 (n + 1)

end A157264

/-! ## A157264.P10154281784676034719

`A194274(A360927(A360927(A004767(n))-2))`
-/

namespace A157264.P10154281784676034719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (A360927 (A360927 (A004767 n).toNat - 2).toNat).toNat

end

end A157264.P10154281784676034719

namespace A157264

/-- `A194274(A360927(A360927(A004767(n))-2))` -/
def P10154281784676034719.Spec : Prop :=
  ∀ n, P10154281784676034719.a n = A157264 (n + 1)

end A157264

/-! ## A157264.P7952862358333953528

`A194274(A360927(A004767(A016777(2*n))))`
-/

namespace A157264.P7952862358333953528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (A360927 (A004767 (A016777 (2 * n)).toNat).toNat).toNat

end

end A157264.P7952862358333953528

namespace A157264

/-- `A194274(A360927(A004767(A016777(2*n))))` -/
def P7952862358333953528.Spec : Prop :=
  ∀ n, P7952862358333953528.a n = A157264 (n + 1)

end A157264

/-!
# A157265: a(n) = 36*n^2 - 17*n + 2.

The programs for A157265, the canonical program `A157265.P9165229674493035226` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157265 has offset 1).

The definition of A157265 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36*(n+1)²-17*(n+1)+2` (program `A157265.P9165229674493035226`, by `A157265.P9165229674493035226.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157265.P9165229674493035226

`36*(n+1)²-17*(n+1)+2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157265

/-- `36*(n+1)²-17*(n+1)+2` -/
def P9165229674493035226.Spec : Prop :=
  ∀ n, P9165229674493035226.a n = A157265 (n + 1)

theorem P9165229674493035226.correct : P9165229674493035226.Spec := by
  intro n
  simp only [A157265, Nat.add_sub_cancel]

end A157265

/-! ## A157265.P11034569746721154877

`(4*n+3)*A017245(n)`
-/

namespace A157265.P11034569746721154877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) * A017245 n

end

end A157265.P11034569746721154877

namespace A157265

/-- `(4*n+3)*A017245(n)` -/
def P11034569746721154877.Spec : Prop :=
  ∀ n, P11034569746721154877.a n = A157265 (n + 1)

theorem P11034569746721154877.correct : P11034569746721154877.Spec := by
  intro n
  simp only [A157265, Nat.add_sub_cancel, A157265.P11034569746721154877.a, A157265.P9165229674493035226.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157265

/-! ## A157265.P1406197894481715465

`(9*n+7)*A004767(n)`
-/

namespace A157265.P1406197894481715465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 7 : ℤ) * A004767 n

end

end A157265.P1406197894481715465

namespace A157265

/-- `(9*n+7)*A004767(n)` -/
def P1406197894481715465.Spec : Prop :=
  ∀ n, P1406197894481715465.a n = A157265 (n + 1)

theorem P1406197894481715465.correct : P1406197894481715465.Spec := by
  intro n
  simp only [A157265, Nat.add_sub_cancel, A157265.P1406197894481715465.a, A157265.P9165229674493035226.a, A004767, A004767.P13352534504447192883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157265

/-! ## A157265.P13502995658931374987

`A157651(n+1)%A017138(n)`
-/

namespace A157265.P13502995658931374987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157651 (n + 1)) (A017138 n)

end

end A157265.P13502995658931374987

namespace A157265

/-- `A157651(n+1)%A017138(n)` -/
def P13502995658931374987.Spec : Prop :=
  ∀ n, P13502995658931374987.a n = A157265 (n + 1)

end A157265

/-! ## A157265.P8874806884879551371

`A157853(n+1)%A017246(n)`
-/

namespace A157265.P8874806884879551371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157853 (n + 1)) (A017246 n)

end

end A157265.P8874806884879551371

namespace A157265

/-- `A157853(n+1)%A017246(n)` -/
def P8874806884879551371.Spec : Prop :=
  ∀ n, P8874806884879551371.a n = A157265 (n + 1)

end A157265

/-! ## A157265.P1986763457267403479

`(A131098(n+2)+A016897(n))*A131098(n+2)`
-/

namespace A157265.P1986763457267403479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131098 (n + 2) + A016897 n) * A131098 (n + 2)

end

end A157265.P1986763457267403479

namespace A157265

/-- `(A131098(n+2)+A016897(n))*A131098(n+2)` -/
def P1986763457267403479.Spec : Prop :=
  ∀ n, P1986763457267403479.a n = A157265 (n + 1)

end A157265

/-!
# A157266: a(n) = 1728*n - 408.

The programs for A157266, the canonical program `A157266.P4819740598114228326` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157266 has offset 1).

The definition of A157266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157266.P4819740598114228326

`2*A154519(A004767(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A157266

/-- `2*A154519(A004767(n))` -/
def P4819740598114228326.Spec : Prop :=
  ∀ n, P4819740598114228326.a n = A157266 (n + 1)

theorem P4819740598114228326.correct : P4819740598114228326.Spec := by
  intro n
  simp only [A157266, Nat.add_sub_cancel]

end A157266

/-!
# A157267: a(n) = 10368*n^2 - 4896*n + 577.

The programs for A157267, the canonical program `A157267.P12656285102130768072` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157267 has offset 1).

The definition of A157267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157267.P12656285102130768072

`A154515(4*n+3)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A157267

/-- `A154515(4*n+3)` -/
def P12656285102130768072.Spec : Prop :=
  ∀ n, P12656285102130768072.a n = A157267 (n + 1)

theorem P12656285102130768072.correct : P12656285102130768072.Spec := by
  intro n
  simp only [A157267, Nat.add_sub_cancel]

end A157267

/-! ## A157267.P6724320999065753944

`record[A154515(A271478(n)+3)]`
-/

namespace A157267.P6724320999065753944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154515 (A271478 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157267.P6724320999065753944

namespace A157267

/-- `record[A154515(A271478(n)+3)]` -/
def P6724320999065753944.Spec : Prop :=
  ∀ n, P6724320999065753944.a n = A157267 (n + 1)

end A157267

/-! ## A157267.P8899332975879121240

`A157331(9*n+7)`
-/

namespace A157267.P8899332975879121240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157331 (9 * n + 7)

end

end A157267.P8899332975879121240

namespace A157267

/-- `A157331(9*n+7)` -/
def P8899332975879121240.Spec : Prop :=
  ∀ n, P8899332975879121240.a n = A157267 (n + 1)

theorem P8899332975879121240.correct : P8899332975879121240.Spec := by
  intro n
  simp only [A157267, Nat.add_sub_cancel, A157267.P8899332975879121240.a, A157267.P12656285102130768072.a, A154515, A154515.P13234221948631977921.a, A157331, A157331.P15354641868334867170.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157267

/-! ## A157267.P12936980930597070130

`∩[A154515(n+1), A157331(n+1)]`
-/

namespace A157267.P12936980930597070130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157267.P12936980930597070130

namespace A157267

/-- `∩[A154515(n+1), A157331(n+1)]` -/
def P12936980930597070130.Spec : Prop :=
  ∀ n, (P12936980930597070130.a n : ℤ) = A157267 (n + 1)

end A157267

/-! ## A157267.P17232248667036062464

`A081275(Δ[A004538(2*n)])`
-/

namespace A157267.P17232248667036062464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081275 (f1 (n + 1) - f1 n).toNat

end

end A157267.P17232248667036062464

namespace A157267

/-- `A081275(Δ[A004538(2*n)])` -/
def P17232248667036062464.Spec : Prop :=
  ∀ n, P17232248667036062464.a n = A157267 (n + 1)

end A157267

/-! ## A157267.P5977561290034790999

`A069129(4*A017245(n))`
-/

namespace A157267.P5977561290034790999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (4 * A017245 n).toNat

end

end A157267.P5977561290034790999

namespace A157267

/-- `A069129(4*A017245(n))` -/
def P5977561290034790999.Spec : Prop :=
  ∀ n, P5977561290034790999.a n = A157267 (n + 1)

end A157267

/-! ## A157267.P18141252328910278495

`A069129(A209876(n+1)-2)`
-/

namespace A157267.P18141252328910278495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A209876 (n + 1) - 2).toNat

end

end A157267.P18141252328910278495

namespace A157267

/-- `A069129(A209876(n+1)-2)` -/
def P18141252328910278495.Spec : Prop :=
  ∀ n, P18141252328910278495.a n = A157267 (n + 1)

end A157267

/-! ## A157267.P15087625802883023032

`A069129(A158065(n+1)-9)`
-/

namespace A157267.P15087625802883023032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A158065 (n + 1) - 9).toNat

end

end A157267.P15087625802883023032

namespace A157267

/-- `A069129(A158065(n+1)-9)` -/
def P15087625802883023032.Spec : Prop :=
  ∀ n, P15087625802883023032.a n = A157267 (n + 1)

end A157267

/-! ## A157267.P9130990762396875591

`A069129(xor(2, A209876(n+1)))`
-/

namespace A157267.P9130990762396875591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (Int.xor 2 (A209876 (n + 1))).toNat

end

end A157267.P9130990762396875591

namespace A157267

/-- `A069129(xor(2, A209876(n+1)))` -/
def P9130990762396875591.Spec : Prop :=
  ∀ n, P9130990762396875591.a n = A157267 (n + 1)

end A157267

/-! ## A157267.P5600728633725283061

`A056220(A016777(6*(A016825(n)+1)))`
-/

namespace A157267.P5600728633725283061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A016777 (6 * (A016825 n + 1)).toNat).toNat

end

end A157267.P5600728633725283061

namespace A157267

/-- `A056220(A016777(6*(A016825(n)+1)))` -/
def P5600728633725283061.Spec : Prop :=
  ∀ n, P5600728633725283061.a n = A157267 (n + 1)

end A157267

/-!
# A157268: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) + m*f(n,k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1, f(n, k) = 2^k if k <= floor(n/2) otherwise 2^(n-k), and m = 1, read by rows.

The programs for A157268, there is no canonical definition to state claims against.
-/

/-! ## A157268.P11885837433240144988

`A376755(A157275(n))`
-/

namespace A157268.P11885837433240144988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376755 (A157275 n).toNat

end

end A157268.P11885837433240144988

/-! ## A157268.P11107430544461439511

`A001281(2*A157275(n))`
-/

namespace A157268.P11107430544461439511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A157275 n).toNat

end

end A157268.P11107430544461439511

/-! ## A157268.P11837854693388857977

`A004525(2*A157275(n))`
-/

namespace A157268.P11837854693388857977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A157275 n).toNat

end

end A157268.P11837854693388857977

/-! ## A157268.P14568526503809228841

`A004526(2*A157275(n))`
-/

namespace A157268.P14568526503809228841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A157275 n).toNat

end

end A157268.P14568526503809228841

/-! ## A157268.P10115744466166477092

`A006370(2*A157275(n))`
-/

namespace A157268.P10115744466166477092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (2 * A157275 n).toNat

end

end A157268.P10115744466166477092

/-!
# A157271: Size of the largest set encompassing no {x, 2x} nor {x, 3x} contained in D(n) = the first n 3-smooth numbers {1, 2, 3, 4, 6, 8, 9, 12, 16, 18, 24, 27,...} (A003586).

The programs for A157271, there is no canonical definition to state claims against.
-/

/-! ## A157271.P15637712425221419759

`A010052(A028394(n))+∑[char[2*n]]`
-/

namespace A157271.P15637712425221419759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A028394 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A157271.P15637712425221419759

/-! ## A157271.P16408508015761941983

`or(val(A284742(n+1), n+2), A008619(n))`
-/

namespace A157271.P16408508015761941983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.valuation (A284742 (n + 1)).toNat (n + 2) : ℤ) (A008619 n)

end

end A157271.P16408508015761941983

/-! ## A157271.P2849452635019523106

`floor(n/2)+val(A028310(n), A167790(n+1))+1`
-/

namespace A157271.P2849452635019523106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + (SequenceMachineLib.valuation (A028310 n).toNat (A167790 (n + 1)).toNat + 1 : ℤ)

end

end A157271.P2849452635019523106

/-! ## A157271.P8838118630421666171

`A008619(A010052(A028394(n))+n)`
-/

namespace A157271.P8838118630421666171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A010052 (A028394 n).toNat + (n : ℤ)).toNat

end

end A157271.P8838118630421666171

/-! ## A157271.P17826001253554939128

`or(A008619(n), A010052(A028394(n)))`
-/

namespace A157271.P17826001253554939128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008619 n) (A010052 (A028394 n).toNat)

end

end A157271.P17826001253554939128

/-!
# A157272: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) + m*f(n,k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1, f(n, k) = 2*k+1 if k <= floor(n/2) otherwise 2*(n-k)+1, and m = 1, read by rows.

The programs for A157272, there is no canonical definition to state claims against.
-/

/-! ## A157272.P11937316245825935297

`A048206(A022177(n))`
-/

namespace A157272.P11937316245825935297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048206 (A022177 n).toNat

end

end A157272.P11937316245825935297

/-! ## A157272.P5904151515886758927

`A003144(A157221(n))`
-/

namespace A157272.P5904151515886758927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (A157221 n).toNat

end

end A157272.P5904151515886758927

/-! ## A157272.P13298669757740867786

`A120234(A056940(n))`
-/

namespace A157272.P13298669757740867786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120234 (A056940 n).toNat

end

end A157272.P13298669757740867786

/-! ## A157272.P12720662141679704027

`A088750(A141690(n))`
-/

namespace A157272.P12720662141679704027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088750 (A141690 n).toNat

end

end A157272.P12720662141679704027

/-! ## A157272.P4546856715763337822

`A084618(A154979(n))`
-/

namespace A157272.P4546856715763337822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084618 (A154979 n).toNat

end

end A157272.P4546856715763337822

/-!
# A157273: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) + m*f(n,k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1, f(n, k) = 2*k+1 if k <= floor(n/2) otherwise 2*(n-k)+1, and m = 2, read by rows.

The programs for A157273, there is no canonical definition to state claims against.
-/

/-! ## A157273.P4949817703480432206

`A082447(A168517(n)²)`
-/

namespace A157273.P4949817703480432206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A168517 n ^ 2).toNat

end

end A157273.P4949817703480432206

/-! ## A157273.P7375920357177380309

`A179774(A157208(n))-2`
-/

namespace A157273.P7375920357177380309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179774 (A157208 n).toNat - 2

end

end A157273.P7375920357177380309

/-! ## A157273.P6693948059368196336

`A176198(n)+A098893(A154337(n))`
-/

namespace A157273.P6693948059368196336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176198 n + A098893 (A154337 n).toNat

end

end A157273.P6693948059368196336

/-! ## A157273.P11794508270150676392

`A157189(A157221(n))+A157148(n)`
-/

namespace A157273.P11794508270150676392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157189 (A157221 n).toNat + A157148 n

end

end A157273.P11794508270150676392

/-! ## A157273.P17763883107430156725

`A003159(A157208(n)%A134105(n+1))`
-/

namespace A157273.P17763883107430156725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (Int.tmod (A157208 n) (A134105 (n + 1))).toNat

end

end A157273.P17763883107430156725

/-!
# A157274: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) + m*f(n,k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1, f(n, k) = 2*k+1 if k <= floor(n/2) otherwise 2*(n-k)+1, and m = 3, read by rows.

The programs for A157274, there is no canonical definition to state claims against.
-/

/-! ## A157274.P7766352432397105050

`A004277(A157209(n))-A072650(A173006(n))`
-/

namespace A157274.P7766352432397105050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A157209 n).toNat - A072650 (A173006 n).toNat

end

end A157274.P7766352432397105050

/-! ## A157274.P7970129112642775270

`A329137(A081580(n)-A008626(n))-(1-A118185(n))`
-/

namespace A157274.P7970129112642775270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329137 (A081580 n - A008626 n).toNat - (1 - A118185 n)

end

end A157274.P7970129112642775270

/-! ## A157274.P11342936044151175989

`A239667(A007318(n)%A322643(n+2))`
-/

namespace A157274.P11342936044151175989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239667 (Int.tmod (A007318 n) (A322643 (n + 2))).toNat

end

end A157274.P11342936044151175989

/-! ## A157274.P16258146370380878467

`A000695(A157207(n))%A020328(n+4)`
-/

namespace A157274.P16258146370380878467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000695 (A157207 n).toNat) (A020328 (n + 4))

end

end A157274.P16258146370380878467

/-! ## A157274.P14715814080964956238

`A344523(A007318(n))%A037043(n+4)`
-/

namespace A157274.P14715814080964956238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344523 (A007318 n).toNat) (A037043 (n + 4))

end

end A157274.P14715814080964956238

/-!
# A157276: a(n) = A157107(n) - 220*n.

The programs for A157276, there is no canonical definition to state claims against.
-/

/-! ## A157276.P17689523295575420307

`A157107(n+1)-220*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A157276.P17689523295575420307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157107 (n + 1) - (220 * (n + 1) : ℤ)

end

end A157276.P17689523295575420307

/-! ## A157276.P6266527514741615815

`A156799(n+1)-A122111(A122111(n+1))`
-/

namespace A157276.P6266527514741615815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156799 (n + 1) - A122111 (A122111 (n + 1)).toNat

end

end A157276.P6266527514741615815

/-!
# A157277: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) + m*f(n,k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1, f(n, k) = 2*k if k <= floor(n/2) otherwise 2*(n-k), and m = 2, read by rows.

The programs for A157277, there is no canonical definition to state claims against.
-/

/-! ## A157277.P6438630093046701788

`A184419(A168517(n))`
-/

namespace A157277.P6438630093046701788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184419 (A168517 n).toNat

end

end A157277.P6438630093046701788

/-! ## A157277.P2803237509675522863

`A383016(A141690(n))`
-/

namespace A157277.P2803237509675522863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383016 (A141690 n).toNat

end

end A157277.P2803237509675522863

/-! ## A157277.P18159386163808773470

`A383016(A168289(n))`
-/

namespace A157277.P18159386163808773470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383016 (A168289 n).toNat

end

end A157277.P18159386163808773470

/-! ## A157277.P14275293819732506781

`A325412(A347672(n+1))`
-/

namespace A157277.P14275293819732506781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325412 (A347672 (n + 1)).toNat

end

end A157277.P14275293819732506781

/-! ## A157277.P4985586062056102827

`A168524(A004914(n+1))`
-/

namespace A157277.P4985586062056102827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168524 (A004914 (n + 1)).toNat

end

end A157277.P4985586062056102827

/-!
# A157278: Triangle T(n, k, m) = (m*(n-k) + 1)*T(n-1, k-1, m) + (m*k + 1)*T(n-1, k, m) + m*f(n,k)*T(n-2, k-1, m) with T(n, 0, m) = T(n, n, m) = 1, f(n, k) = 2*k if k <= floor(n/2) otherwise 2*(n-k), and m = 3, read by rows.

The programs for A157278, there is no canonical definition to state claims against.
-/

/-! ## A157278.P9960668507090707714

`A157271(A157274(n)+A157209(n))`
-/

namespace A157278.P9960668507090707714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A157274 n + A157209 n).toNat

end

end A157278.P9960668507090707714

/-! ## A157278.P6657399091335546818

`A329137(A081580(n)-A008626(n))`
-/

namespace A157278.P6657399091335546818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329137 (A081580 n - A008626 n).toNat

end

end A157278.P6657399091335546818

/-! ## A157278.P1822851828175765

`A007318(n)*A333764(A157268(n))`
-/

namespace A157278.P1822851828175765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A333764 (A157268 n).toNat

end

end A157278.P1822851828175765

/-! ## A157278.P18221831848455253106

`A157271(A157209(n)-(1-A157274(n)))`
-/

namespace A157278.P18221831848455253106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A157209 n - (1 - A157274 n)).toNat

end

end A157278.P18221831848455253106

/-! ## A157278.P5680257158275205318

`A333383(A056940(n)+A056492(n+1))`
-/

namespace A157278.P5680257158275205318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333383 (A056940 n + A056492 (n + 1)).toNat

end

end A157278.P5680257158275205318

/-!
# A157279: Product 1*2*...*r mod n, where r = integer part of sqrt(n).

The programs for A157279, the canonical program `A157279.P11324402340348740727` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157279 has offset 1).

The definition of A157279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157279.P11324402340348740727

`floor(sqrt(n+1))!%(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157279

/-- `floor(sqrt(n+1))!%(n+1)` -/
def P11324402340348740727.Spec : Prop :=
  ∀ n, (P11324402340348740727.a n : ℤ) = A157279 (n + 1)

theorem P11324402340348740727.correct : P11324402340348740727.Spec := by
  intro n
  simp only [A157279, Nat.add_sub_cancel]

end A157279

/-! ## A157279.P12374207989528048106

`A214080(n+1)%(n+1)`
-/

namespace A157279.P12374207989528048106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214080 (n + 1)) (n + 1 : ℤ)

end

end A157279.P12374207989528048106

namespace A157279

/-- `A214080(n+1)%(n+1)` -/
def P12374207989528048106.Spec : Prop :=
  ∀ n, P12374207989528048106.a n = A157279 (n + 1)

end A157279

/-! ## A157279.P15214613871543216890

`∏[A056926(n+1)]%(n+1)`
-/

namespace A157279.P15214613871543216890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A157279.P15214613871543216890

namespace A157279

/-- `∏[A056926(n+1)]%(n+1)` -/
def P15214613871543216890.Spec : Prop :=
  ∀ n, P15214613871543216890.a n = A157279 (n + 1)

end A157279

/-! ## A157279.P8746116274737854203

`A000142(floor(sqrt(n+1)))%(n+1)`
-/

namespace A157279.P8746116274737854203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (Nat.sqrt (n + 1))) (n + 1 : ℤ)

end

end A157279.P8746116274737854203

namespace A157279

/-- `A000142(floor(sqrt(n+1)))%(n+1)` -/
def P8746116274737854203.Spec : Prop :=
  ∀ n, P8746116274737854203.a n = A157279 (n + 1)

end A157279

/-! ## A157279.P2745260196583961328

`A152693(floor(sqrt(n+1)))%(n+1)`
-/

namespace A157279.P2745260196583961328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152693 (Nat.sqrt (n + 1))) (n + 1 : ℤ)

end

end A157279.P2745260196583961328

namespace A157279

/-- `A152693(floor(sqrt(n+1)))%(n+1)` -/
def P2745260196583961328.Spec : Prop :=
  ∀ n, P2745260196583961328.a n = A157279 (n + 1)

end A157279

/-!
# A157280: a(n) arises in the normal ordering of n-th power of the operator (d/dx)(x(d/dx))^4.

The programs for A157280, there is no canonical definition to state claims against.
-/

/-! ## A157280.P7893514577226796796

`A090210(A249157(n+1)+A000217(n+4))`
-/

namespace A157280.P7893514577226796796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090210 (A249157 (n + 1) + A000217 (n + 4)).toNat

end

end A157280.P7893514577226796796

/-!
# A157282: Maximum cardinality of a weakly triple-free subset of {1, 2, ..., n}.

The programs for A157282, there is no canonical definition to state claims against.
-/

/-! ## A157282.P1170348680267873352

`∑[C(val(n+1, 6), val(n+1, 3))]`
-/

namespace A157282.P1170348680267873352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.valuation (n + 1) 6) (SequenceMachineLib.valuation (n + 1) 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157282.P1170348680267873352

/-! ## A157282.P10174868516582630941

`∑[((n+1)/6^val(n+1, 6))²%3]`
-/

namespace A157282.P10174868516582630941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (6 ^ SequenceMachineLib.valuation (n + 1) 6 : ℚ)) ^ 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157282.P10174868516582630941

/-! ## A157282.P4709548213480655168

`∑[char[(n+1)*2^val(n+1, 3)-1]]`
-/

namespace A157282.P4709548213480655168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 2 ^ SequenceMachineLib.valuation (n + 1) 3 : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157282.P4709548213480655168

/-! ## A157282.P7624721542442794329

`∑[A137457(n+1)%2]`
-/

namespace A157282.P7624721542442794329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137457 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157282.P7624721542442794329

/-! ## A157282.P9617489502908880381

`∑[A319627(n+1)%2]`
-/

namespace A157282.P9617489502908880381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319627 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157282.P9617489502908880381

/-! ## A157282.P5141039718177622754

`∑[A277544(n+1)²%3]`
-/

namespace A157282.P5141039718177622754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277544 (n + 1) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157282.P5141039718177622754

/-! ## A157282.P10755583488161863120

`∑[A328478((n+1)²)%3]`
-/

namespace A157282.P10755583488161863120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328478 ((n + 1) ^ 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157282.P10755583488161863120

/-! ## A157282.P9943157956767039286

`∑[A348990((n+1)²)%3]`
-/

namespace A157282.P9943157956767039286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348990 ((n + 1) ^ 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157282.P9943157956767039286

/-! ## A157282.P18033638136716238356

`∑[A000032((n+1)/6^val(n+1, 6))%2]`
-/

namespace A157282.P18033638136716238356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (6 ^ SequenceMachineLib.valuation (n + 1) 6 : ℚ))).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157282.P18033638136716238356

/-! ## A157282.P4402624922731989489

`∑[A000045((n+1)/6^val(n+1, 6))%2]`
-/

namespace A157282.P4402624922731989489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (6 ^ SequenceMachineLib.valuation (n + 1) 6 : ℚ))).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157282.P4402624922731989489

/-!
# A157283: Triangle read by rows: T(n,k) is the determinant of the k X k matrix, values taken from A126988 with columns starting on the first column and rows finishing on the n-th row.

The programs for A157283, there is no canonical definition to state claims against.
-/

/-! ## A157283.P11371773590427854425

`A007318(n)*A122944(A102480(n))`
-/

namespace A157283.P11371773590427854425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A122944 (A102480 n).toNat

end

end A157283.P11371773590427854425

/-! ## A157283.P853106346435699475

`A034932(n)*A122944(A102480(n))`
-/

namespace A157283.P853106346435699475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034932 n * A122944 (A102480 n).toNat

end

end A157283.P853106346435699475

/-! ## A157283.P4554510124218572565

`A122944(A102480(n))*A275198(n)`
-/

namespace A157283.P4554510124218572565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122944 (A102480 n).toNat * A275198 n

end

end A157283.P4554510124218572565

/-! ## A157283.P17752238507871015395

`abs(A108086(n))*A122944(A102480(n))`
-/

namespace A157283.P17752238507871015395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| * A122944 (A102480 n).toNat

end

end A157283.P17752238507871015395

/-! ## A157283.P14494517457631836007

`abs(A130595(n))*A122944(A102480(n))`
-/

namespace A157283.P14494517457631836007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| * A122944 (A102480 n).toNat

end

end A157283.P14494517457631836007

/-!
# A157284: Triangle T(n, k, m) = (m+1)^n*binomial(n,k)*f(n,m)*f(k,n-m)/n!, with T(n, 0, m) = 1, where f(n, k) = Product_{j=1..n} ( (1 - (k+1)^J)/(-k)^j ), f(n, 0) = n!, and m = 0, read by rows.

The programs for A157284, there is no canonical definition to state claims against.
-/

/-! ## A157284.P2488081226588577053

`A245809(A128570(n)%A230054(n+1))`
-/

namespace A157284.P2488081226588577053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245809 (Int.tmod (A128570 n) (A230054 (n + 1))).toNat

end

end A157284.P2488081226588577053

/-!
# A157286: a(n) = 36*n^2 - n.

The programs for A157286, the canonical program `A157286.P1200146671575327365` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157286 has offset 1).

The definition of A157286 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36*(n+1)²-(n+1)` (program `A157286.P1200146671575327365`, by `A157286.P1200146671575327365.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157286.P1274597994812411983

`(6*(n+1))²-(n+1)`
-/

namespace A157286.P1274597994812411983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * (n + 1)) ^ 2 : ℤ) - (n + 1 : ℤ)

end

end A157286.P1274597994812411983

namespace A157286

/-- `(6*(n+1))²-(n+1)` -/
def P1274597994812411983.Spec : Prop :=
  ∀ n, P1274597994812411983.a n = A157286 (n + 1)

theorem P1274597994812411983.correct : P1274597994812411983.Spec := by
  intro n
  simp only [A157286, Nat.add_sub_cancel, A157286.P1274597994812411983.a, A157286.P1200146671575327365.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A157286

/-! ## A157286.P1200146671575327365

`36*(n+1)²-(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157286

/-- `36*(n+1)²-(n+1)` -/
def P1200146671575327365.Spec : Prop :=
  ∀ n, P1200146671575327365.a n = A157286 (n + 1)

theorem P1200146671575327365.correct : P1200146671575327365.Spec := by
  intro n
  simp only [A157286, Nat.add_sub_cancel]

end A157286

/-! ## A157286.P10134953714660916218

`∑[a(n-1)+72]` with `a(0)=35`
-/

namespace A157286.P10134953714660916218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [35] fun n f1 =>
  f1 (n - 1) + 72

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157286.P10134953714660916218

namespace A157286

/-- `∑[a(n-1)+72]` -/
def P10134953714660916218.Spec : Prop :=
  ∀ n, (P10134953714660916218.a n : ℤ) = A157286 (n + 1)

end A157286

/-! ## A157286.P9062497804229591219

`ceil((sqrt(a(n-1))+6)²)` with `a(0)=35`
-/

namespace A157286.P9062497804229591219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [35] fun n a =>
  ⌈(Real.sqrt (a (n - 1) : ℝ) + 6) ^ 2⌉

end

end A157286.P9062497804229591219

namespace A157286

/-- `ceil((sqrt(a(n-1))+6)²)` -/
def P9062497804229591219.Spec : Prop :=
  ∀ n, P9062497804229591219.a n = A157286 (n + 1)

end A157286

/-! ## A157286.P152449386670085223

`(n+1)*A350055(n)`
-/

namespace A157286.P152449386670085223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A350055 n

end

end A157286.P152449386670085223

namespace A157286

/-- `(n+1)*A350055(n)` -/
def P152449386670085223.Spec : Prop :=
  ∀ n, P152449386670085223.a n = A157286 (n + 1)

theorem P152449386670085223.correct : P152449386670085223.Spec := by
  intro n
  simp only [A157286, Nat.add_sub_cancel, A157286.P152449386670085223.a, A157286.P1200146671575327365.a, A350055, A350055.P14338216184358329555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157286

/-! ## A157286.P7277502556953446304

`floor(A158738(n+1)/2-n)`
-/

namespace A157286.P7277502556953446304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158738 (n + 1) : ℚ) / 2 - (n : ℚ)⌋

end

end A157286.P7277502556953446304

namespace A157286

/-- `floor(A158738(n+1)/2-n)` -/
def P7277502556953446304.Spec : Prop :=
  ∀ n, P7277502556953446304.a n = A157286 (n + 1)

end A157286

/-! ## A157286.P17015026888936435353

`(n+1)*(A158065(n+1)-2)`
-/

namespace A157286.P17015026888936435353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158065 (n + 1) - 2)

end

end A157286.P17015026888936435353

namespace A157286

/-- `(n+1)*(A158065(n+1)-2)` -/
def P17015026888936435353.Spec : Prop :=
  ∀ n, P17015026888936435353.a n = A157286 (n + 1)

theorem P17015026888936435353.correct : P17015026888936435353.Spec := by
  intro n
  simp only [A157286, Nat.add_sub_cancel, A157286.P17015026888936435353.a, A157286.P1200146671575327365.a, A158065, A158065.P14397513440059553790.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157286

/-! ## A157286.P11867338137629443294

`(n+1)*(A209876(n+1)+5)`
-/

namespace A157286.P11867338137629443294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A209876 (n + 1) + 5)

end

end A157286.P11867338137629443294

namespace A157286

/-- `(n+1)*(A209876(n+1)+5)` -/
def P11867338137629443294.Spec : Prop :=
  ∀ n, P11867338137629443294.a n = A157286 (n + 1)

theorem P11867338137629443294.correct : P11867338137629443294.Spec := by
  intro n
  simp only [A157286, Nat.add_sub_cancel, A157286.P11867338137629443294.a, A157286.P1200146671575327365.a, A209876, A209876.P240243196379828847.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157286

/-! ## A157286.P2093753799638923341

`lcm(A000027(n+1), A350055(n))`
-/

namespace A157286.P2093753799638923341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A350055 n)

end

end A157286.P2093753799638923341

namespace A157286

/-- `lcm(A000027(n+1), A350055(n))` -/
def P2093753799638923341.Spec : Prop :=
  ∀ n, (P2093753799638923341.a n : ℤ) = A157286 (n + 1)

end A157286

/-! ## A157286.P5919570595838461029

`A158132(n+1)%A157324(n+1)`
-/

namespace A157286.P5919570595838461029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158132 (n + 1)) (A157324 (n + 1))

end

end A157286.P5919570595838461029

namespace A157286

/-- `A158132(n+1)%A157324(n+1)` -/
def P5919570595838461029.Spec : Prop :=
  ∀ n, P5919570595838461029.a n = A157286 (n + 1)

end A157286

/-! ## A157286.P4637473769766426497

`(n+1)*(A044102(n+1)-1)`
-/

namespace A157286.P4637473769766426497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A044102 (n + 1) - 1)

end

end A157286.P4637473769766426497

namespace A157286

/-- `(n+1)*(A044102(n+1)-1)` -/
def P4637473769766426497.Spec : Prop :=
  ∀ n, P4637473769766426497.a n = A157286 (n + 1)

theorem P4637473769766426497.correct : P4637473769766426497.Spec := by
  intro n
  simp only [A157286, Nat.add_sub_cancel, A157286.P4637473769766426497.a, A157286.P1200146671575327365.a, A044102, A044102.P13317920450440868156.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157286

/-! ## A157286.P15047803979894282333

`∑[A350055(2*n)]`
-/

namespace A157286.P15047803979894282333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350055 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157286.P15047803979894282333

namespace A157286

/-- `∑[A350055(2*n)]` -/
def P15047803979894282333.Spec : Prop :=
  ∀ n, P15047803979894282333.a n = A157286 (n + 1)

end A157286

/-! ## A157286.P12116685779798515390

`A158062(2*(n+1))/4`
-/

namespace A157286.P12116685779798515390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158062 (2 * (n + 1)) : ℚ) / 4

end

end A157286.P12116685779798515390

namespace A157286

/-- `A158062(2*(n+1))/4` -/
def P12116685779798515390.Spec : Prop :=
  ∀ n, P12116685779798515390.a n = (A157286 (n + 1) : ℚ)

end A157286

/-! ## A157286.P6184474695609671238

`(n+1)*A239129(2*(n+1))`
-/

namespace A157286.P6184474695609671238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A239129 (2 * (n + 1))

end

end A157286.P6184474695609671238

namespace A157286

/-- `(n+1)*A239129(2*(n+1))` -/
def P6184474695609671238.Spec : Prop :=
  ∀ n, P6184474695609671238.a n = A157286 (n + 1)

end A157286

/-! ## A157286.P12725273709679795594

`A396288(3*(n+1))/3`
-/

namespace A157286.P12725273709679795594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396288 (3 * (n + 1)) : ℚ) / 3

end

end A157286.P12725273709679795594

namespace A157286

/-- `A396288(3*(n+1))/3` -/
def P12725273709679795594.Spec : Prop :=
  ∀ n, P12725273709679795594.a n = (A157286 (n + 1) : ℚ)

theorem P12725273709679795594.correct : P12725273709679795594.Spec := by
  intro n
  simp only [A157286, Nat.add_sub_cancel, A157286.P12725273709679795594.a, A157286.P1200146671575327365.a, A396288, A396288.P9785100004130404729.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157286

/-! ## A157286.P8481385761261381124

`(n+1)*A017653(A016789(n))`
-/

namespace A157286.P8481385761261381124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017653 (A016789 n).toNat

end

end A157286.P8481385761261381124

namespace A157286

/-- `(n+1)*A017653(A016789(n))` -/
def P8481385761261381124.Spec : Prop :=
  ∀ n, P8481385761261381124.a n = A157286 (n + 1)

end A157286

/-! ## A157286.P7441622344190150599

`(n+1)*A017653(A014682(2*n+1))`
-/

namespace A157286.P7441622344190150599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017653 (A014682 (2 * n + 1)).toNat

end

end A157286.P7441622344190150599

namespace A157286

/-- `(n+1)*A017653(A014682(2*n+1))` -/
def P7441622344190150599.Spec : Prop :=
  ∀ n, P7441622344190150599.a n = A157286 (n + 1)

end A157286

/-! ## A157286.P2804315472770020333

`(n+1)*A017257(A004767(n))`
-/

namespace A157286.P2804315472770020333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017257 (A004767 n).toNat

end

end A157286.P2804315472770020333

namespace A157286

/-- `(n+1)*A017257(A004767(n))` -/
def P2804315472770020333.Spec : Prop :=
  ∀ n, P2804315472770020333.a n = A157286 (n + 1)

end A157286

/-! ## A157286.P1246520104578627346

`(n+1)*A016969(A016969(n))`
-/

namespace A157286.P1246520104578627346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016969 (A016969 n).toNat

end

end A157286.P1246520104578627346

namespace A157286

/-- `(n+1)*A016969(A016969(n))` -/
def P1246520104578627346.Spec : Prop :=
  ∀ n, P1246520104578627346.a n = A157286 (n + 1)

end A157286

/-!
# A157287: a(n) = 1728*n - 24.

The programs for A157287, the canonical program `A157287.P2654609442783675831` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157287 has offset 1).

The definition of A157287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157287.P2654609442783675831

`24*(72*n+71)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157287

/-- `24*(72*n+71)` -/
def P2654609442783675831.Spec : Prop :=
  ∀ n, (P2654609442783675831.a n : ℤ) = A157287 (n + 1)

theorem P2654609442783675831.correct : P2654609442783675831.Spec := by
  intro n
  simp only [A157287, Nat.add_sub_cancel]

end A157287

/-!
# A157288: a(n) = 10368*n^2 - 288*n + 1.

The programs for A157288, the canonical program `A157288.P8220059802701160179` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157288 has offset 1).

The definition of A157288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157288.P8220059802701160179

`2*A157921(n+1)²-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A157288

/-- `2*A157921(n+1)²-1` -/
def P8220059802701160179.Spec : Prop :=
  ∀ n, P8220059802701160179.a n = A157288 (n + 1)

theorem P8220059802701160179.correct : P8220059802701160179.Spec := by
  intro n
  simp only [A157288, Nat.add_sub_cancel]

end A157288

/-! ## A157288.P1945348150777333492

`A275543(8*9*(n+1)-1)`
-/

namespace A157288.P1945348150777333492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (8 * (9 * (n + 1)) - 1)

end

end A157288.P1945348150777333492

namespace A157288

/-- `A275543(8*9*(n+1)-1)` -/
def P1945348150777333492.Spec : Prop :=
  ∀ n, P1945348150777333492.a n = A157288 (n + 1)

end A157288

/-! ## A157288.P5297071412098788469

`A154514(4*(n+1))`
-/

namespace A157288.P5297071412098788469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154514 (4 * (n + 1))

end

end A157288.P5297071412098788469

namespace A157288

/-- `A154514(4*(n+1))` -/
def P5297071412098788469.Spec : Prop :=
  ∀ n, P5297071412098788469.a n = A157288 (n + 1)

end A157288

/-! ## A157288.P13938961480888706831

`record[A154514(or(1, A266593(n+2))+1)]`
-/

namespace A157288.P13938961480888706831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154514 (Int.lor 1 (A266593 (n + 2)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157288.P13938961480888706831

namespace A157288

/-- `record[A154514(or(1, A266593(n+2))+1)]` -/
def P13938961480888706831.Spec : Prop :=
  ∀ n, P13938961480888706831.a n = A157288 (n + 1)

end A157288

/-! ## A157288.P12437890549893146702

`A157331(9*(n+1))`
-/

namespace A157288.P12437890549893146702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157331 (9 * (n + 1))

end

end A157288.P12437890549893146702

namespace A157288

/-- `A157331(9*(n+1))` -/
def P12437890549893146702.Spec : Prop :=
  ∀ n, P12437890549893146702.a n = A157288 (n + 1)

end A157288

/-! ## A157288.P10309414764020220769

`∩[A154514(n+1), A157331(n+1)]`
-/

namespace A157288.P10309414764020220769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157288.P10309414764020220769

namespace A157288

/-- `∩[A154514(n+1), A157331(n+1)]` -/
def P10309414764020220769.Spec : Prop :=
  ∀ n, (P10309414764020220769.a n : ℤ) = A157288 (n + 1)

end A157288

/-! ## A157288.P10464261763396770944

`A081593(A008600(n+1))`
-/

namespace A157288.P10464261763396770944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081593 (A008600 (n + 1)).toNat

end

end A157288.P10464261763396770944

namespace A157288

/-- `A081593(A008600(n+1))` -/
def P10464261763396770944.Spec : Prop :=
  ∀ n, P10464261763396770944.a n = A157288 (n + 1)

end A157288

/-! ## A157288.P17762204646807740591

`A081593(2*(A004768(n)+n))`
-/

namespace A157288.P17762204646807740591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081593 (2 * (A004768 n + (n : ℤ))).toNat

end

end A157288.P17762204646807740591

namespace A157288

/-- `A081593(2*(A004768(n)+n))` -/
def P17762204646807740591.Spec : Prop :=
  ∀ n, P17762204646807740591.a n = A157288 (n + 1)

end A157288

/-! ## A157288.P10933076211968923158

`A081275(A008606(n+1))-A008606(A008606(n+1))`
-/

namespace A157288.P10933076211968923158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081275 (A008606 (n + 1)).toNat - A008606 (A008606 (n + 1)).toNat

end

end A157288.P10933076211968923158

namespace A157288

/-- `A081275(A008606(n+1))-A008606(A008606(n+1))` -/
def P10933076211968923158.Spec : Prop :=
  ∀ n, P10933076211968923158.a n = A157288 (n + 1)

end A157288

/-! ## A157288.P15892243661723253596

`A077591(6*6*(n+1))-1`
-/

namespace A157288.P15892243661723253596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 (6 * (6 * (n + 1))) - 1

end

end A157288.P15892243661723253596

namespace A157288

/-- `A077591(6*6*(n+1))-1` -/
def P15892243661723253596.Spec : Prop :=
  ∀ n, P15892243661723253596.a n = A157288 (n + 1)

end A157288

/-! ## A157288.P1044130410643787730

`A069129(A044102(n+1))`
-/

namespace A157288.P1044130410643787730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A044102 (n + 1)).toNat

end

end A157288.P1044130410643787730

namespace A157288

/-- `A069129(A044102(n+1))` -/
def P1044130410643787730.Spec : Prop :=
  ∀ n, P1044130410643787730.a n = A157288 (n + 1)

end A157288

/-! ## A157288.P7203487400739910028

`A069129(A158065(n+1)-1)`
-/

namespace A157288.P7203487400739910028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A158065 (n + 1) - 1).toNat

end

end A157288.P7203487400739910028

namespace A157288

/-- `A069129(A158065(n+1)-1)` -/
def P7203487400739910028.Spec : Prop :=
  ∀ n, P7203487400739910028.a n = A157288 (n + 1)

end A157288

/-! ## A157288.P15273971128563949254

`A069129(A016910(n+1)/(n+1))`
-/

namespace A157288.P15273971128563949254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (SequenceMachineLib.roundAway ((A016910 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A157288.P15273971128563949254

namespace A157288

/-- `A069129(A016910(n+1)/(n+1))` -/
def P15273971128563949254.Spec : Prop :=
  ∀ n, P15273971128563949254.a n = A157288 (n + 1)

end A157288

/-! ## A157288.P15437676108074878530

`A069129(A162940(2*n+1)/(2*n+1))`
-/

namespace A157288.P15437676108074878530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (SequenceMachineLib.roundAway ((A162940 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ))).toNat

end

end A157288.P15437676108074878530

namespace A157288

/-- `A069129(A162940(2*n+1)/(2*n+1))` -/
def P15437676108074878530.Spec : Prop :=
  ∀ n, P15437676108074878530.a n = A157288 (n + 1)

end A157288

/-! ## A157288.P16588095326132751971

`A069129(A162940(n+1)-A162940(n))`
-/

namespace A157288.P16588095326132751971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A162940 (n + 1) - A162940 n).toNat

end

end A157288.P16588095326132751971

namespace A157288

/-- `A069129(A162940(n+1)-A162940(n))` -/
def P16588095326132751971.Spec : Prop :=
  ∀ n, P16588095326132751971.a n = A157288 (n + 1)

end A157288

/-! ## A157288.P17252648208199304201

`A069129(A164016(n+1)-A164016(n))`
-/

namespace A157288.P17252648208199304201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A164016 (n + 1) - A164016 n).toNat

end

end A157288.P17252648208199304201

namespace A157288

/-- `A069129(A164016(n+1)-A164016(n))` -/
def P17252648208199304201.Spec : Prop :=
  ∀ n, P17252648208199304201.a n = A157288 (n + 1)

end A157288

/-! ## A157288.P8406781355217066302

`A069129(A195316(n+2)-A195316(n+1))`
-/

namespace A157288.P8406781355217066302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A195316 (n + 2) - A195316 (n + 1)).toNat

end

end A157288.P8406781355217066302

namespace A157288

/-- `A069129(A195316(n+2)-A195316(n+1))` -/
def P8406781355217066302.Spec : Prop :=
  ∀ n, P8406781355217066302.a n = A157288 (n + 1)

end A157288

/-! ## A157288.P10112837294976667487

`A069129(A139609(2*n+1)-A139609(n))`
-/

namespace A157288.P10112837294976667487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A139609 (2 * n + 1) - A139609 n).toNat

end

end A157288.P10112837294976667487

namespace A157288

/-- `A069129(A139609(2*n+1)-A139609(n))` -/
def P10112837294976667487.Spec : Prop :=
  ∀ n, P10112837294976667487.a n = A157288 (n + 1)

end A157288

/-! ## A157288.P5779020776314494218

`A056220(A157921(n+1))`
-/

namespace A157288.P5779020776314494218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A157921 (n + 1)).toNat

end

end A157288.P5779020776314494218

namespace A157288

/-- `A056220(A157921(n+1))` -/
def P5779020776314494218.Spec : Prop :=
  ∀ n, P5779020776314494218.a n = A157288 (n + 1)

end A157288

/-! ## A157288.P14795737722368821914

`A077221(A016969(12*n+11))`
-/

namespace A157288.P14795737722368821914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (A016969 (12 * n + 11)).toNat

end

end A157288.P14795737722368821914

namespace A157288

/-- `A077221(A016969(12*n+11))` -/
def P14795737722368821914.Spec : Prop :=
  ∀ n, P14795737722368821914.a n = A157288 (n + 1)

end A157288

