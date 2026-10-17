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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A005802: Number of permutations in S_n with longest increasing subsequence of length <= 3 (i.e., 1234-avoiding permutations); vexillary permutations (i.e., 2143-avoiding).

The programs for A005802, there is no canonical definition to state claims against.
-/

/-! ## A005802.P8067426042617280978

`((18*n+45)*A002893(n)-(7+2*n)*A002893(n+1))/(6*(n+2)²)`
-/

namespace A005802.P8067426042617280978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((18 * n + 45 : ℤ) * A002893 n - (7 + 2 * n : ℤ) * A002893 (n + 1) : ℚ) / (6 * (n + 2) ^ 2 : ℚ)

end

end A005802.P8067426042617280978

/-! ## A005802.P6001242578927238316

`Δ[A246138(n+1)]`
-/

namespace A005802.P6001242578927238316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005802.P6001242578927238316

/-! ## A005802.P12581542017310923415

`A389602(A004273(n))`
-/

namespace A005802.P12581542017310923415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389602 (A004273 n).toNat

end

end A005802.P12581542017310923415

/-! ## A005802.P4974266558698309559

`A389602(A004274(n+1))`
-/

namespace A005802.P4974266558698309559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389602 (A004274 (n + 1)).toNat

end

end A005802.P4974266558698309559

/-! ## A005802.P1736993582333189581

`A389602(A004280(n+1))`
-/

namespace A005802.P1736993582333189581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389602 (A004280 (n + 1)).toNat

end

end A005802.P1736993582333189581

/-! ## A005802.P13768124467202157158

`A246138(n+2)-A246138(n+1)`
-/

namespace A005802.P13768124467202157158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246138 (n + 2) - A246138 (n + 1)

end

end A005802.P13768124467202157158

/-! ## A005802.P17871650912216895098

`A128088(n)/(n+1)`
-/

namespace A005802.P17871650912216895098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128088 n : ℚ) / (n + 1 : ℚ)

end

end A005802.P17871650912216895098

/-! ## A005802.P16042430984887925128

`Δ[∑[A246065(n)]/(n+1)²]`
-/

namespace A005802.P16042430984887925128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246065 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005802.P16042430984887925128

/-! ## A005802.P11611653962181009567

`A047888(∑[n+1]+3)`
-/

namespace A005802.P11611653962181009567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047888 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A005802.P11611653962181009567

/-! ## A005802.P252766119190368247

`A214015(∑[n+3]+n+3)`
-/

namespace A005802.P252766119190368247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A005802.P252766119190368247

/-!
# A005803: Second-order Eulerian numbers: a(n) = 2^n - 2*n.

The programs for A005803, the canonical program `A005803.P14873078838690914956` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005803 has offset 0).

The definition of A005803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-2*n` (program `A005803.P14873078838690914956`, by `A005803.P14873078838690914956.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005803.P14873078838690914956

`2^n-2*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005803

/-- `2^n-2*n` -/
def P14873078838690914956.Spec : Prop :=
  ∀ n, P14873078838690914956.a n = A005803 n

theorem P14873078838690914956.correct : P14873078838690914956.Spec := by
  intro n
  simp only [A005803]

end A005803

/-! ## A005803.P11575479863235625268

`abs(xor(-2*n, -2^n))`
-/

namespace A005803.P11575479863235625268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-(2 * n : ℤ)) (-(2 ^ n : ℤ))|

end

end A005803.P11575479863235625268

namespace A005803

/-- `abs(xor(-2*n, -2^n))` -/
def P11575479863235625268.Spec : Prop :=
  ∀ n, P11575479863235625268.a n = A005803 n

end A005803

/-! ## A005803.P17495657473012672347

`2*(a(n-1)-2+n)` with `a(0)=1`
-/

namespace A005803.P17495657473012672347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - 2 + (n : ℤ))

end

end A005803.P17495657473012672347

namespace A005803

/-- `2*(a(n-1)-2+n)` -/
def P17495657473012672347.Spec : Prop :=
  ∀ n, P17495657473012672347.a n = A005803 n

end A005803

/-! ## A005803.P15208001017140430012

`2*(a(n-1)-(2-n))` with `a(0)=1`
-/

namespace A005803.P15208001017140430012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - (2 - (n : ℤ)))

end

end A005803.P15208001017140430012

namespace A005803

/-- `2*(a(n-1)-(2-n))` -/
def P15208001017140430012.Spec : Prop :=
  ∀ n, P15208001017140430012.a n = A005803 n

end A005803

/-! ## A005803.P15193657699850310524

`∑[a(n-1)+2^(n-2)]` with `a(0)=1, a(1)=-1`
-/

namespace A005803.P15193657699850310524
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  f1 (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005803.P15193657699850310524

namespace A005803

/-- `∑[a(n-1)+2^(n-2)]` -/
def P15193657699850310524.Spec : Prop :=
  ∀ n, P15193657699850310524.a n = (A005803 n : ℚ)

end A005803

/-! ## A005803.P3940402641988588002

`(2-(a(n-1)+n))/(1/2-1)` with `a(0)=1`
-/

namespace A005803.P3940402641988588002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 - (a (n - 1) + (n : ℚ))) / ((1 : ℚ) / 2 - 1)

end

end A005803.P3940402641988588002

namespace A005803

/-- `(2-(a(n-1)+n))/(1/2-1)` -/
def P3940402641988588002.Spec : Prop :=
  ∀ n, P3940402641988588002.a n = (A005803 n : ℚ)

end A005803

/-! ## A005803.P11968455758694946211

`(2-a(n-1)-n)/(1/2-1)` with `a(0)=1`
-/

namespace A005803.P11968455758694946211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 - a (n - 1) - (n : ℚ)) / ((1 : ℚ) / 2 - 1)

end

end A005803.P11968455758694946211

namespace A005803

/-- `(2-a(n-1)-n)/(1/2-1)` -/
def P11968455758694946211.Spec : Prop :=
  ∀ n, P11968455758694946211.a n = (A005803 n : ℚ)

end A005803

/-! ## A005803.P17497906634024552589

`∑[floor(a(n-1)+a(n-1)+2)]` with `a(0)=1, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A005803.P17497906634024552589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005803.P17497906634024552589

namespace A005803

/-- `∑[floor(a(n-1)+a(n-1)+2)]` -/
def P17497906634024552589.Spec : Prop :=
  ∀ n, P17497906634024552589.a n = A005803 n

end A005803

/-! ## A005803.P7280689434179497872

`floor(a(n-1)-4+a(n-1)+n+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A005803.P7280689434179497872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 4 + (a (n - 1) + (n : ℤ) + (n : ℤ))

end

end A005803.P7280689434179497872

namespace A005803

/-- `floor(a(n-1)-4+a(n-1)+n+n)` -/
def P7280689434179497872.Spec : Prop :=
  ∀ n, P7280689434179497872.a n = A005803 n

end A005803

/-! ## A005803.P6351450534459899833

`floor(a(n-1)-(4-a(n-1)-n-n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A005803.P6351450534459899833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (4 - a (n - 1) - (n : ℤ) - (n : ℤ))

end

end A005803.P6351450534459899833

namespace A005803

/-- `floor(a(n-1)-(4-a(n-1)-n-n))` -/
def P6351450534459899833.Spec : Prop :=
  ∀ n, P6351450534459899833.a n = A005803 n

end A005803

/-! ## A005803.P15854236805015442031

`A356185(2*n)`
-/

namespace A005803.P15854236805015442031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356185 (2 * n)

end

end A005803.P15854236805015442031

namespace A005803

/-- `A356185(2*n)` -/
def P15854236805015442031.Spec : Prop :=
  ∀ n, P15854236805015442031.a n = A005803 n

end A005803

/-! ## A005803.P2290913937651961888

`abs(2*n-A000079(n))`
-/

namespace A005803.P2290913937651961888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A000079 n|

end

end A005803.P2290913937651961888

namespace A005803

/-- `abs(2*n-A000079(n))` -/
def P2290913937651961888.Spec : Prop :=
  ∀ n, P2290913937651961888.a n = A005803 n

end A005803

/-! ## A005803.P9035965207608727953

`abs(∑[A011782(n)]-2*n)`
-/

namespace A005803.P9035965207608727953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (2 * n : ℤ)|

end

end A005803.P9035965207608727953

namespace A005803

/-- `abs(∑[A011782(n)]-2*n)` -/
def P9035965207608727953.Spec : Prop :=
  ∀ n, P9035965207608727953.a n = A005803 n

end A005803

/-! ## A005803.P3879210927595459498

`abs(2*n-A000225(n)-1)`
-/

namespace A005803.P3879210927595459498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A000225 n - 1|

end

end A005803.P3879210927595459498

namespace A005803

/-- `abs(2*n-A000225(n)-1)` -/
def P3879210927595459498.Spec : Prop :=
  ∀ n, P3879210927595459498.a n = A005803 n

end A005803

/-! ## A005803.P3121229321722302050

`A130102(n)%A036563(n)`
-/

namespace A005803.P3121229321722302050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130102 n) (A036563 n)

end

end A005803.P3121229321722302050

namespace A005803

/-- `A130102(n)%A036563(n)` -/
def P3121229321722302050.Spec : Prop :=
  ∀ n, P3121229321722302050.a n = A005803 n

end A005803

/-! ## A005803.P10966559091758707677

`lcm(A130102(n), A288699(n))`
-/

namespace A005803.P10966559091758707677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130102 n) (A288699 n)

end

end A005803.P10966559091758707677

namespace A005803

/-- `lcm(A130102(n), A288699(n))` -/
def P10966559091758707677.Spec : Prop :=
  ∀ n, (P10966559091758707677.a n : ℤ) = A005803 n

end A005803

/-! ## A005803.P18203714421897683375

`and(A000918(n), A165747(n))`
-/

namespace A005803.P18203714421897683375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000918 n) (A165747 n)

end

end A005803.P18203714421897683375

namespace A005803

/-- `and(A000918(n), A165747(n))` -/
def P18203714421897683375.Spec : Prop :=
  ∀ n, P18203714421897683375.a n = A005803 n

end A005803

/-!
# A005804: Number of phylogenetic rooted trees with n labels.

The programs for A005804, there is no canonical definition to state claims against.
-/

/-! ## A005804.P18042882880739559911

`A330762(∑[n+1])`
-/

namespace A005804.P18042882880739559911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330762 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005804.P18042882880739559911

/-! ## A005804.P18387076307731897479

`A330763(∑[n+1])`
-/

namespace A005804.P18387076307731897479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330763 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005804.P18387076307731897479

/-! ## A005804.P684320748084592283

`record[gcd(A318757(n), A330763(n+1))]`
-/

namespace A005804.P684320748084592283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A318757 n) (A330763 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005804.P684320748084592283

/-! ## A005804.P5835405518379380904

`record[A330763(n+1)/A142458(n+1)]`
-/

namespace A005804.P5835405518379380904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330763 (n + 1) : ℚ) / (A142458 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005804.P5835405518379380904

/-! ## A005804.P9602928577962128433

`record[A330762(n+1)/A330787(n+1)]`
-/

namespace A005804.P9602928577962128433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330762 (n + 1) : ℚ) / (A330787 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005804.P9602928577962128433

/-! ## A005804.P6695096683788047445

`record[A330763(n+1)/A330787(n+1)]`
-/

namespace A005804.P6695096683788047445
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330763 (n + 1) : ℚ) / (A330787 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005804.P6695096683788047445

/-! ## A005804.P8119683439869185126

`record[A330763(n+1)/A201811(n+2)]`
-/

namespace A005804.P8119683439869185126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330763 (n + 1) : ℚ) / (A201811 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005804.P8119683439869185126

/-!
# A005805: Number of phylogenetic trees with n labels.

The programs for A005805, there is no canonical definition to state claims against.
-/

/-! ## A005805.P7513466541138418131

`A184524(A001831(n))+n`
-/

namespace A005805.P7513466541138418131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184524 (A001831 n).toNat + (n : ℤ)

end

end A005805.P7513466541138418131

/-! ## A005805.P17313187072458230532

`∑{d}[A002110(n), A281118(#)]`
-/

namespace A005805.P17313187072458230532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A281118 d

end

end A005805.P17313187072458230532

/-!
# A005806: Number of comparative probability orderings on n elements.

The programs for A005806, there is no canonical definition to state claims against.
-/

/-! ## A005806.P3653225285186802747

`∏{p}[∏[A161132(n)], #]`
-/

namespace A005806.P3653225285186802747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161132 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A005806.P3653225285186802747

/-! ## A005806.P5883535290214098320

`∏[A293994(floor((n/2)²))]`
-/

namespace A005806.P5883535290214098320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293994 ⌊((n : ℚ) / 2) ^ 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A005806.P5883535290214098320

/-!
# A005807: Sum of adjacent Catalan numbers.

The programs for A005807, the canonical program `A005807.P17161073048331093725` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005807 has offset 0).

The definition of A005807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005807.P17161073048331093725

`(5*n+4)*(2*n)!/(n!*(n+2)!)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005807

/-- `(5*n+4)*(2*n)!/(n!*(n+2)!)` -/
def P17161073048331093725.Spec : Prop :=
  ∀ n, P17161073048331093725.a n = (A005807 n : ℚ)

end A005807

/-! ## A005807.P17613702752460193019

`abs(Δ[(6/(n+1)-4)*a(n-1)])` with `a(0)=1`
-/

namespace A005807.P17613702752460193019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (6 / (n + 1 : ℚ) - 4) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A005807.P17613702752460193019

namespace A005807

/-- `abs(Δ[(6/(n+1)-4)*a(n-1)])` -/
def P17613702752460193019.Spec : Prop :=
  ∀ n, P17613702752460193019.a n = (A005807 n : ℚ)

end A005807

/-! ## A005807.P8357623291882017646

`A000778(n)+1`
-/

namespace A005807.P8357623291882017646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000778 n + 1

end

end A005807.P8357623291882017646

namespace A005807

/-- `A000778(n)+1` -/
def P8357623291882017646.Spec : Prop :=
  ∀ n, P8357623291882017646.a n = A005807 n

end A005807

/-! ## A005807.P347497388083260230

`A167422(n+1)`
-/

namespace A005807.P347497388083260230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167422 (n + 1)

end

end A005807.P347497388083260230

namespace A005807

/-- `A167422(n+1)` -/
def P347497388083260230.Spec : Prop :=
  ∀ n, P347497388083260230.a n = A005807 n

end A005807

/-! ## A005807.P2868887347925359860

`abs(Δ[A168491(n)])`
-/

namespace A005807.P2868887347925359860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A005807.P2868887347925359860

namespace A005807

/-- `abs(Δ[A168491(n)])` -/
def P2868887347925359860.Spec : Prop :=
  ∀ n, P2868887347925359860.a n = A005807 n

end A005807

/-! ## A005807.P13581520089135546914

`Δ[A155051(2*n)]`
-/

namespace A005807.P13581520089135546914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155051 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005807.P13581520089135546914

namespace A005807

/-- `Δ[A155051(2*n)]` -/
def P13581520089135546914.Spec : Prop :=
  ∀ n, P13581520089135546914.a n = A005807 n

end A005807

/-! ## A005807.P18225876647512392291

`record[Δ[Δ[A126120(n)]]]`
-/

namespace A005807.P18225876647512392291
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005807.P18225876647512392291

namespace A005807

/-- `record[Δ[Δ[A126120(n)]]]` -/
def P18225876647512392291.Spec : Prop :=
  ∀ n, P18225876647512392291.a n = A005807 n

end A005807

/-! ## A005807.P12607349886534266647

`A059348(2*(n+1))`
-/

namespace A005807.P12607349886534266647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059348 (2 * (n + 1))

end

end A005807.P12607349886534266647

namespace A005807

/-- `A059348(2*(n+1))` -/
def P12607349886534266647.Spec : Prop :=
  ∀ n, P12607349886534266647.a n = A005807 n

end A005807

/-! ## A005807.P13302105945647399354

`record[A167422(abs(1-n))]`
-/

namespace A005807.P13302105945647399354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167422 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005807.P13302105945647399354

namespace A005807

/-- `record[A167422(abs(1-n))]` -/
def P13302105945647399354.Spec : Prop :=
  ∀ n, P13302105945647399354.a n = A005807 n

end A005807

/-! ## A005807.P9989190794290375585

`abs(Δ[A090192(Δ[n²])])`
-/

namespace A005807.P9989190794290375585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A005807.P9989190794290375585

namespace A005807

/-- `abs(Δ[A090192(Δ[n²])])` -/
def P9989190794290375585.Spec : Prop :=
  ∀ n, P9989190794290375585.a n = A005807 n

end A005807

/-! ## A005807.P1450744831022570332

`abs(Δ[A105523(Δ[n²])])`
-/

namespace A005807.P1450744831022570332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A005807.P1450744831022570332

namespace A005807

/-- `abs(Δ[A105523(Δ[n²])])` -/
def P1450744831022570332.Spec : Prop :=
  ∀ n, P1450744831022570332.a n = A005807 n

end A005807

/-! ## A005807.P17986798958409929011

`A280891(n)+a(n-1)` with `a(0)=2`
-/

namespace A005807.P17986798958409929011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A280891 n + a (n - 1)

end

end A005807.P17986798958409929011

namespace A005807

/-- `A280891(n)+a(n-1)` -/
def P17986798958409929011.Spec : Prop :=
  ∀ n, P17986798958409929011.a n = A005807 n

end A005807

/-! ## A005807.P7230342617152818010

`abs(Δ[Δ[A156906(2*n+1)]])`
-/

namespace A005807.P7230342617152818010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156906 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A005807.P7230342617152818010

namespace A005807

/-- `abs(Δ[Δ[A156906(2*n+1)]])` -/
def P7230342617152818010.Spec : Prop :=
  ∀ n, P7230342617152818010.a n = A005807 n

end A005807

/-! ## A005807.P12854318547552969205

`A104722(A004277(n))`
-/

namespace A005807.P12854318547552969205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A004277 n).toNat

end

end A005807.P12854318547552969205

namespace A005807

/-- `A104722(A004277(n))` -/
def P12854318547552969205.Spec : Prop :=
  ∀ n, P12854318547552969205.a n = A005807 n

end A005807

/-! ## A005807.P13241023320564699338

`A104722(A004275(n+1))`
-/

namespace A005807.P13241023320564699338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A004275 (n + 1)).toNat

end

end A005807.P13241023320564699338

namespace A005807

/-- `A104722(A004275(n+1))` -/
def P13241023320564699338.Spec : Prop :=
  ∀ n, P13241023320564699338.a n = A005807 n

end A005807

/-! ## A005807.P2903536209992374260

`A104722(A004273(n)+1)`
-/

namespace A005807.P2903536209992374260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A004273 n + 1).toNat

end

end A005807.P2903536209992374260

namespace A005807

/-- `A104722(A004273(n)+1)` -/
def P2903536209992374260.Spec : Prop :=
  ∀ n, P2903536209992374260.a n = A005807 n

end A005807

/-! ## A005807.P4599045688473140608

`A104722(A028310(2*n))`
-/

namespace A005807.P4599045688473140608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A028310 (2 * n)).toNat

end

end A005807.P4599045688473140608

namespace A005807

/-- `A104722(A028310(2*n))` -/
def P4599045688473140608.Spec : Prop :=
  ∀ n, P4599045688473140608.a n = A005807 n

end A005807

/-! ## A005807.P4869167880989504702

`A104722(A028310(n)+n)`
-/

namespace A005807.P4869167880989504702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A028310 n + (n : ℤ)).toNat

end

end A005807.P4869167880989504702

namespace A005807

/-- `A104722(A028310(n)+n)` -/
def P4869167880989504702.Spec : Prop :=
  ∀ n, P4869167880989504702.a n = A005807 n

end A005807

/-! ## A005807.P3470471249921929349

`A071724(n)+A068875(n)`
-/

namespace A005807.P3470471249921929349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n + A068875 n

end

end A005807.P3470471249921929349

namespace A005807

/-- `A071724(n)+A068875(n)` -/
def P3470471249921929349.Spec : Prop :=
  ∀ n, P3470471249921929349.a n = A005807 n

end A005807

/-!
# A005808: Numbers k such that (11^k - 1)/10 is prime.

The programs for A005808, there is no canonical definition to state claims against.
-/

/-! ## A005808.P6012714632205468334

`p?[A330734(A138919(n+1))]`
-/

namespace A005808.P6012714632205468334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330734 (A138919 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005808.P6012714632205468334

/-! ## A005808.P2705710076673808526

`p?[record[A302792(A138919(n+2))]]`
-/

namespace A005808.P2705710076673808526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (A138919 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005808.P2705710076673808526

/-!
# A005809: a(n) = binomial(3n,n).

The programs for A005809, the canonical program `A005809.P5005780551759923958` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005809 has offset 0).

The definition of A005809 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005809.P5005780551759923958

`(2*n+1)*A001764(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005809

/-- `(2*n+1)*A001764(n)` -/
def P5005780551759923958.Spec : Prop :=
  ∀ n, P5005780551759923958.a n = A005809 n

theorem P5005780551759923958.correct : P5005780551759923958.Spec := by
  intro n
  simp only [A005809]

end A005809

/-! ## A005809.P7971485676262751928

`A006480(n)/A000984(n)`
-/

namespace A005809.P7971485676262751928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006480 n : ℚ) / (A000984 n : ℚ)

end

end A005809.P7971485676262751928

namespace A005809

/-- `A006480(n)/A000984(n)` -/
def P7971485676262751928.Spec : Prop :=
  ∀ n, P7971485676262751928.a n = (A005809 n : ℚ)

end A005809

/-! ## A005809.P14772115136692380095

`A119301(∑[n])`
-/

namespace A005809.P14772115136692380095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119301 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005809.P14772115136692380095

namespace A005809

/-- `A119301(∑[n])` -/
def P14772115136692380095.Spec : Prop :=
  ∀ n, P14772115136692380095.a n = A005809 n

end A005809

/-! ## A005809.P9263255349798173794

`A264772(∑[n])`
-/

namespace A005809.P9263255349798173794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005809.P9263255349798173794

namespace A005809

/-- `A264772(∑[n])` -/
def P9263255349798173794.Spec : Prop :=
  ∀ n, P9263255349798173794.a n = A005809 n

end A005809

/-! ## A005809.P15046263694367058065

`record[A119301(n)]`
-/

namespace A005809.P15046263694367058065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005809.P15046263694367058065

namespace A005809

/-- `record[A119301(n)]` -/
def P15046263694367058065.Spec : Prop :=
  ∀ n, P15046263694367058065.a n = A005809 n

end A005809

/-! ## A005809.P1556777246641222095

`record[A264772(n)]`
-/

namespace A005809.P1556777246641222095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005809.P1556777246641222095

namespace A005809

/-- `record[A264772(n)]` -/
def P1556777246641222095.Spec : Prop :=
  ∀ n, P1556777246641222095.a n = A005809 n

end A005809

/-! ## A005809.P11131667301195365445

`A065942(2*n)`
-/

namespace A005809.P11131667301195365445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 (2 * n)

end

end A005809.P11131667301195365445

namespace A005809

/-- `A065942(2*n)` -/
def P11131667301195365445.Spec : Prop :=
  ∀ n, P11131667301195365445.a n = A005809 n

end A005809

/-! ## A005809.P337597936544633

`A081204(2*n)`
-/

namespace A005809.P337597936544633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081204 (2 * n)

end

end A005809.P337597936544633

namespace A005809

/-- `A081204(2*n)` -/
def P337597936544633.Spec : Prop :=
  ∀ n, P337597936544633.a n = A005809 n

end A005809

/-! ## A005809.P11159792395899022373

`A051033(3*n)`
-/

namespace A005809.P11159792395899022373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 (3 * n)

end

end A005809.P11159792395899022373

namespace A005809

/-- `A051033(3*n)` -/
def P11159792395899022373.Spec : Prop :=
  ∀ n, P11159792395899022373.a n = A005809 n

end A005809

/-! ## A005809.P5287062266905504909

`A303259(Δ[n²])`
-/

namespace A005809.P5287062266905504909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303259 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005809.P5287062266905504909

namespace A005809

/-- `A303259(Δ[n²])` -/
def P5287062266905504909.Spec : Prop :=
  ∀ n, P5287062266905504909.a n = A005809 n

end A005809

/-! ## A005809.P12181667210362320497

`Δ[n²]*A047749(2*n)`
-/

namespace A005809.P12181667210362320497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A047749 (2 * n)

end

end A005809.P12181667210362320497

namespace A005809

/-- `Δ[n²]*A047749(2*n)` -/
def P12181667210362320497.Spec : Prop :=
  ∀ n, P12181667210362320497.a n = A005809 n

end A005809

/-! ## A005809.P1587725408747731977

`lcm(2*n+1, A303259(2*n+1))`
-/

namespace A005809.P1587725408747731977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A303259 (2 * n + 1))

end

end A005809.P1587725408747731977

namespace A005809

/-- `lcm(2*n+1, A303259(2*n+1))` -/
def P1587725408747731977.Spec : Prop :=
  ∀ n, (P1587725408747731977.a n : ℤ) = A005809 n

end A005809

/-! ## A005809.P7327287986871216265

`record[A303259(A141310(n))]`
-/

namespace A005809.P7327287986871216265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303259 (A141310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005809.P7327287986871216265

namespace A005809

/-- `record[A303259(A141310(n))]` -/
def P7327287986871216265.Spec : Prop :=
  ∀ n, P7327287986871216265.a n = A005809 n

end A005809

/-! ## A005809.P17444954985477106823

`A000984(n)+A000846(n)`
-/

namespace A005809.P17444954985477106823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + A000846 n

end

end A005809.P17444954985477106823

namespace A005809

/-- `A000984(n)+A000846(n)` -/
def P17444954985477106823.Spec : Prop :=
  ∀ n, P17444954985477106823.a n = A005809 n

end A005809

/-! ## A005809.P6802196295279065714

`A165817(n)+A025174(n)`
-/

namespace A005809.P6802196295279065714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 n + A025174 n

end

end A005809.P6802196295279065714

namespace A005809

/-- `A165817(n)+A025174(n)` -/
def P6802196295279065714.Spec : Prop :=
  ∀ n, P6802196295279065714.a n = A005809 n

end A005809

/-! ## A005809.P11379209409245398965

`A227726(n)-A025174(n)`
-/

namespace A005809.P11379209409245398965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227726 n - A025174 n

end

end A005809.P11379209409245398965

namespace A005809

/-- `A227726(n)-A025174(n)` -/
def P11379209409245398965.Spec : Prop :=
  ∀ n, P11379209409245398965.a n = A005809 n

end A005809

/-! ## A005809.P1383636785456869396

`A001764(n)*A005408(n)`
-/

namespace A005809.P1383636785456869396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A005408 n

end

end A005809.P1383636785456869396

namespace A005809

/-- `A001764(n)*A005408(n)` -/
def P1383636785456869396.Spec : Prop :=
  ∀ n, P1383636785456869396.a n = A005809 n

end A005809

/-! ## A005809.P11750189444687566680

`A001764(n)*A109613(2*n)`
-/

namespace A005809.P11750189444687566680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A109613 (2 * n)

end

end A005809.P11750189444687566680

namespace A005809

/-- `A001764(n)*A109613(2*n)` -/
def P11750189444687566680.Spec : Prop :=
  ∀ n, P11750189444687566680.a n = A005809 n

end A005809

/-! ## A005809.P368573260836003962

`A174687(n)+n*A001764(n)`
-/

namespace A005809.P368573260836003962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174687 n + (n : ℤ) * A001764 n

end

end A005809.P368573260836003962

namespace A005809

/-- `A174687(n)+n*A001764(n)` -/
def P368573260836003962.Spec : Prop :=
  ∀ n, P368573260836003962.a n = A005809 n

end A005809

/-! ## A005809.P15826899877638843083

`A045721(n)-n*A001764(n)`
-/

namespace A005809.P15826899877638843083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 n - (n : ℤ) * A001764 n

end

end A005809.P15826899877638843083

namespace A005809

/-- `A045721(n)-n*A001764(n)` -/
def P15826899877638843083.Spec : Prop :=
  ∀ n, P15826899877638843083.a n = A005809 n

end A005809

/-!
# A005810: a(n) = binomial(4n,n).

The programs for A005810, the canonical program `A005810.P11226820359042522109` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005810 has offset 0).

The definition of A005810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005810.P15833927411088938343

`A119304(∑[n])`
-/

namespace A005810.P15833927411088938343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119304 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005810.P15833927411088938343

namespace A005810

/-- `A119304(∑[n])` -/
def P15833927411088938343.Spec : Prop :=
  ∀ n, P15833927411088938343.a n = A005810 n

end A005810

/-! ## A005810.P1113566619204331684

`A264773(∑[n])`
-/

namespace A005810.P1113566619204331684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264773 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005810.P1113566619204331684

namespace A005810

/-- `A264773(∑[n])` -/
def P1113566619204331684.Spec : Prop :=
  ∀ n, P1113566619204331684.a n = A005810 n

end A005810

/-! ## A005810.P15900176115578324075

`record[A119304(n)]`
-/

namespace A005810.P15900176115578324075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005810.P15900176115578324075

namespace A005810

/-- `record[A119304(n)]` -/
def P15900176115578324075.Spec : Prop :=
  ∀ n, P15900176115578324075.a n = A005810 n

end A005810

/-! ## A005810.P7062124771007946805

`record[A264773(n)]`
-/

namespace A005810.P7062124771007946805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005810.P7062124771007946805

namespace A005810

/-- `record[A264773(n)]` -/
def P7062124771007946805.Spec : Prop :=
  ∀ n, P7062124771007946805.a n = A005810 n

end A005810

/-! ## A005810.P11226820359042522109

`A051036(4*n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005810

/-- `A051036(4*n)` -/
def P11226820359042522109.Spec : Prop :=
  ∀ n, P11226820359042522109.a n = A005810 n

theorem P11226820359042522109.correct : P11226820359042522109.Spec := by
  intro n
  simp only [A005810]

end A005810

/-! ## A005810.P7844589697871982846

`(3*n+1)*A002293(n)`
-/

namespace A005810.P7844589697871982846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A002293 n

end

end A005810.P7844589697871982846

namespace A005810

/-- `(3*n+1)*A002293(n)` -/
def P7844589697871982846.Spec : Prop :=
  ∀ n, P7844589697871982846.a n = A005810 n

end A005810

/-! ## A005810.P10107153845218601859

`A002293(n)*A016777(n)`
-/

namespace A005810.P10107153845218601859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A016777 n

end

end A005810.P10107153845218601859

namespace A005810

/-- `A002293(n)*A016777(n)` -/
def P10107153845218601859.Spec : Prop :=
  ∀ n, P10107153845218601859.a n = A005810 n

end A005810

/-! ## A005810.P3423302401512544018

`record[A000034(n)*A208983(n)]`
-/

namespace A005810.P3423302401512544018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A208983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005810.P3423302401512544018

namespace A005810

/-- `record[A000034(n)*A208983(n)]` -/
def P3423302401512544018.Spec : Prop :=
  ∀ n, P3423302401512544018.a n = A005810 n

end A005810

/-! ## A005810.P18332814029876835344

`2*A052203(n)-A052204(n)`
-/

namespace A005810.P18332814029876835344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052203 n - A052204 n

end

end A005810.P18332814029876835344

namespace A005810

/-- `2*A052203(n)-A052204(n)` -/
def P18332814029876835344.Spec : Prop :=
  ∀ n, P18332814029876835344.a n = A005810 n

end A005810

/-! ## A005810.P17207777578539764464

`A126596(n)+n*A002293(n)`
-/

namespace A005810.P17207777578539764464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126596 n + (n : ℤ) * A002293 n

end

end A005810.P17207777578539764464

namespace A005810

/-- `A126596(n)+n*A002293(n)` -/
def P17207777578539764464.Spec : Prop :=
  ∀ n, P17207777578539764464.a n = A005810 n

end A005810

/-! ## A005810.P5433768778496979499

`A052203(n)-n*A002293(n)`
-/

namespace A005810.P5433768778496979499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052203 n - (n : ℤ) * A002293 n

end

end A005810.P5433768778496979499

namespace A005810

/-- `A052203(n)-n*A002293(n)` -/
def P5433768778496979499.Spec : Prop :=
  ∀ n, P5433768778496979499.a n = A005810 n

end A005810

/-! ## A005810.P6998029502668883463

`A032766(2*n+1)*A124753(3*n)`
-/

namespace A005810.P6998029502668883463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (2 * n + 1) * A124753 (3 * n)

end

end A005810.P6998029502668883463

namespace A005810

/-- `A032766(2*n+1)*A124753(3*n)` -/
def P6998029502668883463.Spec : Prop :=
  ∀ n, P6998029502668883463.a n = A005810 n

end A005810

/-! ## A005810.P7578567504397650155

`A002293(n)*A008619(A008458(n))`
-/

namespace A005810.P7578567504397650155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A008619 (A008458 n).toNat

end

end A005810.P7578567504397650155

namespace A005810

/-- `A002293(n)*A008619(A008458(n))` -/
def P7578567504397650155.Spec : Prop :=
  ∀ n, P7578567504397650155.a n = A005810 n

end A005810

/-! ## A005810.P8511759691510015271

`A002293(n)*A008619(A008588(n))`
-/

namespace A005810.P8511759691510015271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A008619 (A008588 n).toNat

end

end A005810.P8511759691510015271

namespace A005810

/-- `A002293(n)*A008619(A008588(n))` -/
def P8511759691510015271.Spec : Prop :=
  ∀ n, P8511759691510015271.a n = A005810 n

end A005810

/-! ## A005810.P15254606033876362280

`lcm(A000034(n), A119304(A000217(n)))`
-/

namespace A005810.P15254606033876362280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A119304 (A000217 n).toNat)

end

end A005810.P15254606033876362280

namespace A005810

/-- `lcm(A000034(n), A119304(A000217(n)))` -/
def P15254606033876362280.Spec : Prop :=
  ∀ n, (P15254606033876362280.a n : ℤ) = A005810 n

end A005810

/-! ## A005810.P1050943220550318456

`A051924(n+1)/A051944(n)*A052203(n)`
-/

namespace A005810.P1050943220550318456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051924 (n + 1) : ℚ) / (A051944 n : ℚ) * (A052203 n : ℚ)

end

end A005810.P1050943220550318456

namespace A005810

/-- `A051924(n+1)/A051944(n)*A052203(n)` -/
def P1050943220550318456.Spec : Prop :=
  ∀ n, P1050943220550318456.a n = (A005810 n : ℚ)

end A005810

/-! ## A005810.P4910906967123676687

`A306290(n)/A016813(n)`
-/

namespace A005810.P4910906967123676687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306290 n : ℚ) / (A016813 n : ℚ)

end

end A005810.P4910906967123676687

namespace A005810

/-- `A306290(n)/A016813(n)` -/
def P4910906967123676687.Spec : Prop :=
  ∀ n, P4910906967123676687.a n = (A005810 n : ℚ)

end A005810

/-! ## A005810.P7607819401033753846

`A016777(n)*A243663(A152947(n+1))`
-/

namespace A005810.P7607819401033753846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n * A243663 (A152947 (n + 1)).toNat

end

end A005810.P7607819401033753846

namespace A005810

/-- `A016777(n)*A243663(A152947(n+1))` -/
def P7607819401033753846.Spec : Prop :=
  ∀ n, P7607819401033753846.a n = A005810 n

end A005810

/-!
# A005811: Number of runs in binary expansion of n (n>0); number of 1's in Gray code for n.

The programs for A005811, the canonical program `A005811.P8696411420205566785` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005811 has offset 0).

The definition of A005811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005811.P18361968419463607786

`A069010(n)+A033264(n)`
-/

namespace A005811.P18361968419463607786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n + A033264 n

end

end A005811.P18361968419463607786

namespace A005811

/-- `A069010(n)+A033264(n)` -/
def P18361968419463607786.Spec : Prop :=
  ∀ n, P18361968419463607786.a n = A005811 n

end A005811

/-! ## A005811.P8696411420205566785

`A000120(A003188(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005811

/-- `A000120(A003188(n))` -/
def P8696411420205566785.Spec : Prop :=
  ∀ n, P8696411420205566785.a n = A005811 n

theorem P8696411420205566785.correct : P8696411420205566785.Spec := by
  intro n
  simp only [A005811]

end A005811

/-! ## A005811.P13365808176114479131

`a(n-1-and(n, 2*n))+1` with `a(0)=0`
-/

namespace A005811.P13365808176114479131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1

end

end A005811.P13365808176114479131

namespace A005811

/-- `a(n-1-and(n, 2*n))+1` -/
def P13365808176114479131.Spec : Prop :=
  ∀ n, (P13365808176114479131.a n : ℤ) = A005811 n

end A005811

/-! ## A005811.P2906791806399460492

`∑[Δ[xor(n, 2*n-1)]%2]-1`
-/

namespace A005811.P2906791806399460492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005811.P2906791806399460492

namespace A005811

/-- `∑[Δ[xor(n, 2*n-1)]%2]-1` -/
def P2906791806399460492.Spec : Prop :=
  ∀ n, P2906791806399460492.a n = A005811 n

end A005811

/-! ## A005811.P573489921421084336

`n-∑[2*char[comp[and(n, n-1)+n]]]`
-/

namespace A005811.P573489921421084336
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005811.P573489921421084336

namespace A005811

/-- `n-∑[2*char[comp[and(n, n-1)+n]]]` -/
def P573489921421084336.Spec : Prop :=
  ∀ n, P573489921421084336.a n = A005811 n

end A005811

/-! ## A005811.P2307683006105049160

`∑{e}[2*a(n-1-and(n, 2*n)), #]` with `a(0)=1`
-/

namespace A005811.P2307683006105049160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A005811.P2307683006105049160

namespace A005811

/-- `∑{e}[2*a(n-1-and(n, 2*n)), #]` -/
def P2307683006105049160.Spec : Prop :=
  ∀ n, (P2307683006105049160.a n : ℤ) = A005811 n

end A005811

/-! ## A005811.P520979998591571314

`a(floor(n/2))+(n%2+a(floor(n/2)))%2` with `a(0)=0`
-/

namespace A005811.P520979998591571314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (n % 2 + a ⌊(n : ℚ) / 2⌋.toNat) % 2

end

end A005811.P520979998591571314

namespace A005811

/-- `a(floor(n/2))+(n%2+a(floor(n/2)))%2` -/
def P520979998591571314.Spec : Prop :=
  ∀ n, (P520979998591571314.a n : ℤ) = A005811 n

end A005811

/-! ## A005811.P16784727449535336899

`∑[A112347(n)]`
-/

namespace A005811.P16784727449535336899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005811.P16784727449535336899

namespace A005811

/-- `∑[A112347(n)]` -/
def P16784727449535336899.Spec : Prop :=
  ∀ n, P16784727449535336899.a n = A005811 n

end A005811

/-! ## A005811.P4499751792827665870

`A088748(n)-1`
-/

namespace A005811.P4499751792827665870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n - 1

end

end A005811.P4499751792827665870

namespace A005811

/-- `A088748(n)-1` -/
def P4499751792827665870.Spec : Prop :=
  ∀ n, P4499751792827665870.a n = A005811 n

end A005811

/-! ## A005811.P13819477553493300015

`A136004(n)-4`
-/

namespace A005811.P13819477553493300015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 n - 4

end

end A005811.P13819477553493300015

namespace A005811

/-- `A136004(n)-4` -/
def P13819477553493300015.Spec : Prop :=
  ∀ n, P13819477553493300015.a n = A005811 n

end A005811

/-! ## A005811.P5727035465509448108

`n-A236840(n)`
-/

namespace A005811.P5727035465509448108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A236840 n

end

end A005811.P5727035465509448108

namespace A005811

/-- `n-A236840(n)` -/
def P5727035465509448108.Spec : Prop :=
  ∀ n, P5727035465509448108.a n = A005811 n

end A005811

/-! ## A005811.P3113130980857960002

`∑{e}[A382255(n), #]`
-/

namespace A005811.P3113130980857960002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A005811.P3113130980857960002

namespace A005811

/-- `∑{e}[A382255(n), #]` -/
def P3113130980857960002.Spec : Prop :=
  ∀ n, (P3113130980857960002.a n : ℤ) = A005811 n

end A005811

/-! ## A005811.P3140073363887535645

`∑{digits}[A014550(n), #]`
-/

namespace A005811.P3140073363887535645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014550 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A005811.P3140073363887535645

namespace A005811

/-- `∑{digits}[A014550(n), #]` -/
def P3140073363887535645.Spec : Prop :=
  ∀ n, (P3140073363887535645.a n : ℤ) = A005811 n

end A005811

/-! ## A005811.P11793639823621573701

`∑[A121238(n)]-1`
-/

namespace A005811.P11793639823621573701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005811.P11793639823621573701

namespace A005811

/-- `∑[A121238(n)]-1` -/
def P11793639823621573701.Spec : Prop :=
  ∀ n, P11793639823621573701.a n = A005811 n

end A005811

/-! ## A005811.P6477830682077292141

`a(A035327(n))+1` with `a(0)=0`
-/

namespace A005811.P6477830682077292141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A035327 n).toNat + 1

end

end A005811.P6477830682077292141

namespace A005811

/-- `a(A035327(n))+1` -/
def P6477830682077292141.Spec : Prop :=
  ∀ n, (P6477830682077292141.a n : ℤ) = A005811 n

end A005811

/-! ## A005811.P3195120424685524342

`n-2*A255070(n)`
-/

namespace A005811.P3195120424685524342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A255070 n

end

end A005811.P3195120424685524342

namespace A005811

/-- `n-2*A255070(n)` -/
def P3195120424685524342.Spec : Prop :=
  ∀ n, P3195120424685524342.a n = A005811 n

end A005811

/-! ## A005811.P12188780207352237258

`∑[∏[A121241(n)]]-1`
-/

namespace A005811.P12188780207352237258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121241 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005811.P12188780207352237258

namespace A005811

/-- `∑[∏[A121241(n)]]-1` -/
def P12188780207352237258.Spec : Prop :=
  ∀ n, P12188780207352237258.a n = A005811 n

end A005811

/-! ## A005811.P17237571148449489831

`n-∑[2*A038189(n)]`
-/

namespace A005811.P17237571148449489831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005811.P17237571148449489831

namespace A005811

/-- `n-∑[2*A038189(n)]` -/
def P17237571148449489831.Spec : Prop :=
  ∀ n, P17237571148449489831.a n = A005811 n

end A005811

/-! ## A005811.P12873145038107078241

`n-∑[and(2, A300867(n))]`
-/

namespace A005811.P12873145038107078241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A300867 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005811.P12873145038107078241

namespace A005811

/-- `n-∑[and(2, A300867(n))]` -/
def P12873145038107078241.Spec : Prop :=
  ∀ n, P12873145038107078241.a n = A005811 n

end A005811

/-!
# A005812: Weight of balanced ternary representation of n.

The programs for A005812, the canonical program `A005812.P15868546208220252248` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005812 has offset 0).

The definition of A005812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005812.P15868546208220252248

`a(A081134(n))+1` with `a(0)=0`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005812

/-- `a(A081134(n))+1` -/
def P15868546208220252248.Spec : Prop :=
  ∀ n, (P15868546208220252248.a n : ℤ) = A005812 n

theorem P15868546208220252248.correct : P15868546208220252248.Spec := by
  intro n
  simp only [A005812]

end A005812

/-! ## A005812.P7705360581598299664

`a(A308364(n)-1)+1` with `a(0)=0`
-/

namespace A005812.P7705360581598299664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A308364 n - 1).toNat + 1

end

end A005812.P7705360581598299664

namespace A005812

/-- `a(A308364(n)-1)+1` -/
def P7705360581598299664.Spec : Prop :=
  ∀ n, (P7705360581598299664.a n : ℤ) = A005812 n

end A005812

/-! ## A005812.P865388594940670908

`A053735(A308364(n))`
-/

namespace A005812.P865388594940670908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A308364 n).toNat

end

end A005812.P865388594940670908

namespace A005812

/-- `A053735(A308364(n))` -/
def P865388594940670908.Spec : Prop :=
  ∀ n, P865388594940670908.a n = A005812 n

end A005812

/-! ## A005812.P10531822887699747922

`A134024(n)+A134022(n)`
-/

namespace A005812.P10531822887699747922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 n + A134022 n

end

end A005812.P10531822887699747922

namespace A005812

/-- `A134024(n)+A134022(n)` -/
def P10531822887699747922.Spec : Prop :=
  ∀ n, P10531822887699747922.a n = A005812 n

end A005812

/-! ## A005812.P16168141935686704513

`A134021(n)-A134023(n)`
-/

namespace A005812.P16168141935686704513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 n - A134023 n

end

end A005812.P16168141935686704513

namespace A005812

/-- `A134021(n)-A134023(n)` -/
def P16168141935686704513.Spec : Prop :=
  ∀ n, P16168141935686704513.a n = A005812 n

end A005812

/-! ## A005812.P16133298728548819928

`∑{digits}[A140267(n), A000045(#)]`
-/

namespace A005812.P16133298728548819928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 x).sum

end

end A005812.P16133298728548819928

namespace A005812

/-- `∑{digits}[A140267(n), A000045(#)]` -/
def P16133298728548819928.Spec : Prop :=
  ∀ n, P16133298728548819928.a n = A005812 n

end A005812

/-! ## A005812.P8658482997231899666

`∑{digits}[A140267(n), A140318(#)²]`
-/

namespace A005812.P8658482997231899666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A140318 x ^ 2).sum

end

end A005812.P8658482997231899666

namespace A005812

/-- `∑{digits}[A140267(n), A140318(#)²]` -/
def P8658482997231899666.Spec : Prop :=
  ∀ n, P8658482997231899666.a n = A005812 n

end A005812

/-! ## A005812.P6125639270941385494

`A065363(n)+2*A134022(n)`
-/

namespace A005812.P6125639270941385494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n + 2 * A134022 n

end

end A005812.P6125639270941385494

namespace A005812

/-- `A065363(n)+2*A134022(n)` -/
def P6125639270941385494.Spec : Prop :=
  ∀ n, P6125639270941385494.a n = A005812 n

end A005812

/-! ## A005812.P203422813626762902

`2*A134024(n)-A065363(n)`
-/

namespace A005812.P203422813626762902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134024 n - A065363 n

end

end A005812.P203422813626762902

namespace A005812

/-- `2*A134024(n)-A065363(n)` -/
def P203422813626762902.Spec : Prop :=
  ∀ n, P203422813626762902.a n = A005812 n

end A005812

/-! ## A005812.P2609572853434350511

`∑{digits}[A140267(n), 1-A140313(#)]`
-/

namespace A005812.P2609572853434350511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A140313 x).sum

end

end A005812.P2609572853434350511

namespace A005812

/-- `∑{digits}[A140267(n), 1-A140313(#)]` -/
def P2609572853434350511.Spec : Prop :=
  ∀ n, P2609572853434350511.a n = A005812 n

end A005812

/-! ## A005812.P8478506318973499423

`∑{digits}[A140267(n), A140313(#+2)]`
-/

namespace A005812.P8478506318973499423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A140313 (x + 2)).sum

end

end A005812.P8478506318973499423

namespace A005812

/-- `∑{digits}[A140267(n), A140313(#+2)]` -/
def P8478506318973499423.Spec : Prop :=
  ∀ n, P8478506318973499423.a n = A005812 n

end A005812

/-! ## A005812.P1078913134124117530

`∑{digits}[A140267(n), #-A140287(#)]`
-/

namespace A005812.P1078913134124117530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℤ) - A140287 x).sum

end

end A005812.P1078913134124117530

namespace A005812

/-- `∑{digits}[A140267(n), #-A140287(#)]` -/
def P1078913134124117530.Spec : Prop :=
  ∀ n, P1078913134124117530.a n = A005812 n

end A005812

/-! ## A005812.P3678268065144499545

`∑{digits}[A140267(n), #-A140289(#)]`
-/

namespace A005812.P3678268065144499545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℤ) - A140289 x).sum

end

end A005812.P3678268065144499545

namespace A005812

/-- `∑{digits}[A140267(n), #-A140289(#)]` -/
def P3678268065144499545.Spec : Prop :=
  ∀ n, P3678268065144499545.a n = A005812 n

end A005812

/-! ## A005812.P6549033685738325998

`∑{digits}[A140267(n), #-A140302(#)]`
-/

namespace A005812.P6549033685738325998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℤ) - A140302 x).sum

end

end A005812.P6549033685738325998

namespace A005812

/-- `∑{digits}[A140267(n), #-A140302(#)]` -/
def P6549033685738325998.Spec : Prop :=
  ∀ n, P6549033685738325998.a n = A005812 n

end A005812

/-! ## A005812.P1807177102345727556

`A006287(A060374(n))`
-/

namespace A005812.P1807177102345727556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006287 (A060374 n).toNat

end

end A005812.P1807177102345727556

namespace A005812

/-- `A006287(A060374(n))` -/
def P1807177102345727556.Spec : Prop :=
  ∀ n, P1807177102345727556.a n = A005812 n

end A005812

/-! ## A005812.P16656992158431743897

`A160384(A117967(n))`
-/

namespace A005812.P16656992158431743897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 (A117967 n).toNat

end

end A005812.P16656992158431743897

namespace A005812

/-- `A160384(A117967(n))` -/
def P16656992158431743897.Spec : Prop :=
  ∀ n, P16656992158431743897.a n = A005812 n

end A005812

/-! ## A005812.P17045137586197546956

`A001222(A290091(2*n)*A290091(n))`
-/

namespace A005812.P17045137586197546956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290091 (2 * n) * A290091 n).toNat

end

end A005812.P17045137586197546956

namespace A005812

/-- `A001222(A290091(2*n)*A290091(n))` -/
def P17045137586197546956.Spec : Prop :=
  ∀ n, P17045137586197546956.a n = A005812 n

end A005812

/-! ## A005812.P8696069830790084109

`A000120(A343231(n))`
-/

namespace A005812.P8696069830790084109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A343231 n).toNat

end

end A005812.P8696069830790084109

namespace A005812

/-- `A000120(A343231(n))` -/
def P8696069830790084109.Spec : Prop :=
  ∀ n, P8696069830790084109.a n = A005812 n

end A005812

/-! ## A005812.P15011540003125886473

`A089643(A343317(n))`
-/

namespace A005812.P15011540003125886473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (A343317 n).toNat

end

end A005812.P15011540003125886473

namespace A005812

/-- `A089643(A343317(n))` -/
def P15011540003125886473.Spec : Prop :=
  ∀ n, P15011540003125886473.a n = A005812 n

end A005812

/-!
# A005813: Molien series for 6-dimensional complex representation of double cover of J2.

The programs for A005813, there is no canonical definition to state claims against.
-/

/-! ## A005813.P4176659481295783167

`A055640(C(A187500(n), A337524(n+1)))`
-/

namespace A005813.P4176659481295783167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (Nat.choose (A187500 n).toNat (A337524 (n + 1)).toNat)

end

end A005813.P4176659481295783167

/-! ## A005813.P4194429169915197750

`A178691(A342384(n+2)%A342373(n+3))`
-/

namespace A005813.P4194429169915197750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178691 (Int.tmod (A342384 (n + 2)) (A342373 (n + 3))).toNat

end

end A005813.P4194429169915197750

/-! ## A005813.P3376703562132773078

`A005136(A091533(n))*A321665(n)`
-/

namespace A005813.P3376703562132773078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A091533 n).toNat * A321665 n

end

end A005813.P3376703562132773078

/-! ## A005813.P3263764270431755640

`A013679(A275422(3*(n+1)))*A321378(n)`
-/

namespace A005813.P3263764270431755640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013679 (A275422 (3 * (n + 1))).toNat * A321378 n

end

end A005813.P3263764270431755640

/-! ## A005813.P10703509361104230557

`A319330(A083169(n+1))`
-/

namespace A005813.P10703509361104230557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319330 (A083169 (n + 1)).toNat

end

end A005813.P10703509361104230557

/-!
# A005814: Number of 3-regular (trivalent) labeled graphs on 2n vertices with multiple edges and loops allowed.

The programs for A005814, there is no canonical definition to state claims against.
-/

/-! ## A005814.P16529375739239730631

`record[A333467(abs(∑[n+2]-3))]`
-/

namespace A005814.P16529375739239730631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333467 |((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005814.P16529375739239730631

/-! ## A005814.P7970240110185185989

`A333467(A046691(2*(n+1)))`
-/

namespace A005814.P7970240110185185989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333467 (A046691 (2 * (n + 1))).toNat

end

end A005814.P7970240110185185989

/-! ## A005814.P11801078986805646453

`A333467(A141214(2*n+1)-1)`
-/

namespace A005814.P11801078986805646453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333467 (A141214 (2 * n + 1) - 1).toNat

end

end A005814.P11801078986805646453

/-! ## A005814.P9629239614392562081

`A333467(A000096(2*n+3)-3)`
-/

namespace A005814.P9629239614392562081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333467 (A000096 (2 * n + 3) - 3).toNat

end

end A005814.P9629239614392562081

/-!
# A005815: Number of 4-valent labeled graphs with n nodes.

The programs for A005815, there is no canonical definition to state claims against.
-/

/-! ## A005815.P12386729817445172032

`A324163(lcm(A077169(n), A170824(n+4)))`
-/

namespace A005815.P12386729817445172032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324163 (Int.lcm (A077169 n) (A170824 (n + 4)))

end

end A005815.P12386729817445172032

/-! ## A005815.P17457507245388286455

`C(A192262(round(2^(n-2))), A008621(n))`
-/

namespace A005815.P17457507245388286455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A192262 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat).toNat (A008621 n).toNat

end

end A005815.P17457507245388286455

/-! ## A005815.P522866607773728093

`A242887(A000797(n*a(n-1)/(n-4)))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1`
-/

namespace A005815.P522866607773728093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 1] fun n a =>
  A242887 (A000797 (SequenceMachineLib.roundAway (((n : ℤ) * a (n - 1) : ℚ) / ((n : ℤ) - 4 : ℚ))).toNat).toNat

end

end A005815.P522866607773728093

/-!
# A005816: Number of 4-valent labeled graphs with n nodes where multiple edges and loops are allowed.

The programs for A005816, there is no canonical definition to state claims against.
-/

/-! ## A005816.P15113179522782445498

`A333467(∑[n+5]+5)`
-/

namespace A005816.P15113179522782445498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333467 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A005816.P15113179522782445498

/-! ## A005816.P7685835809854101676

`A057354(C(2*n, n)/(n+1)*n!)+A028310(n)`
-/

namespace A005816.P7685835809854101676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (SequenceMachineLib.roundAway ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (Nat.factorial n : ℚ))).toNat + A028310 n

end

end A005816.P7685835809854101676

/-!
# A005817: a(n) = C(floor(n/2 + 1/2))*C(floor(n/2 + 1)) where C(i) = Catalan numbers A000108.

The programs for A005817, the canonical program `A005817.P16626410066484048791` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005817 has offset 0).

The definition of A005817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005817.P16310608023362577826

`abs(A099363(n)*A129996(n))`
-/

namespace A005817.P16310608023362577826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099363 n * A129996 n|

end

end A005817.P16310608023362577826

namespace A005817

/-- `abs(A099363(n)*A129996(n))` -/
def P16310608023362577826.Spec : Prop :=
  ∀ n, P16310608023362577826.a n = A005817 n

end A005817

/-! ## A005817.P8706058439239438526

`A106181(n+1)*A129996(n)`
-/

namespace A005817.P8706058439239438526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106181 (n + 1) * A129996 n

end

end A005817.P8706058439239438526

namespace A005817

/-- `A106181(n+1)*A129996(n)` -/
def P8706058439239438526.Spec : Prop :=
  ∀ n, P8706058439239438526.a n = A005817 n

end A005817

/-! ## A005817.P16626410066484048791

`A208355(n+1)*A208355(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005817

/-- `A208355(n+1)*A208355(n)` -/
def P16626410066484048791.Spec : Prop :=
  ∀ n, P16626410066484048791.a n = A005817 n

theorem P16626410066484048791.correct : P16626410066484048791.Spec := by
  intro n
  simp only [A005817]

end A005817

/-! ## A005817.P8126445725867534615

`abs(A099363(n+1)*A099363(n))`
-/

namespace A005817.P8126445725867534615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099363 (n + 1) * A099363 n|

end

end A005817.P8126445725867534615

namespace A005817

/-- `abs(A099363(n+1)*A099363(n))` -/
def P8126445725867534615.Spec : Prop :=
  ∀ n, P8126445725867534615.a n = A005817 n

end A005817

/-! ## A005817.P5186279953301155810

`∏[A126324(n+2)/A126324(n)]`
-/

namespace A005817.P5186279953301155810
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126324 (n + 2) : ℚ) / (A126324 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A005817.P5186279953301155810

namespace A005817

/-- `∏[A126324(n+2)/A126324(n)]` -/
def P5186279953301155810.Spec : Prop :=
  ∀ n, P5186279953301155810.a n = (A005817 n : ℚ)

end A005817

/-! ## A005817.P8517195099536851193

`Δ[A126120(n+1)]*Δ[A210628(n+1)]`
-/

namespace A005817.P8517195099536851193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A005817.P8517195099536851193

namespace A005817

/-- `Δ[A126120(n+1)]*Δ[A210628(n+1)]` -/
def P8517195099536851193.Spec : Prop :=
  ∀ n, P8517195099536851193.a n = A005817 n

end A005817

/-! ## A005817.P9119682260885445711

`A329686(2*n+1)*A329686(2*n+3)`
-/

namespace A005817.P9119682260885445711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329686 (2 * n + 1) * A329686 (2 * n + 3)

end

end A005817.P9119682260885445711

namespace A005817

/-- `A329686(2*n+1)*A329686(2*n+3)` -/
def P9119682260885445711.Spec : Prop :=
  ∀ n, P9119682260885445711.a n = A005817 n

end A005817

/-! ## A005817.P5020481899085902763

`A000108(A008619(n))*A208355(n)`
-/

namespace A005817.P5020481899085902763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A008619 n).toNat * A208355 n

end

end A005817.P5020481899085902763

namespace A005817

/-- `A000108(A008619(n))*A208355(n)` -/
def P5020481899085902763.Spec : Prop :=
  ∀ n, P5020481899085902763.a n = A005817 n

end A005817

/-! ## A005817.P16944157392400143346

`A120588(A266977(n))*A208355(n)`
-/

namespace A005817.P16944157392400143346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A266977 n).toNat * A208355 n

end

end A005817.P16944157392400143346

namespace A005817

/-- `A120588(A266977(n))*A208355(n)` -/
def P16944157392400143346.Spec : Prop :=
  ∀ n, P16944157392400143346.a n = A005817 n

end A005817

/-! ## A005817.P2643643882378673319

`(A129110(n+1)-A129110(n))*A106181(n+1)`
-/

namespace A005817.P2643643882378673319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A129110 (n + 1) - A129110 n) * A106181 (n + 1)

end

end A005817.P2643643882378673319

namespace A005817

/-- `(A129110(n+1)-A129110(n))*A106181(n+1)` -/
def P2643643882378673319.Spec : Prop :=
  ∀ n, P2643643882378673319.a n = A005817 n

end A005817

/-! ## A005817.P9642525783645584562

`A000108(A008619(n))*A000108(A065033(n))`
-/

namespace A005817.P9642525783645584562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A008619 n).toNat * A000108 (A065033 n).toNat

end

end A005817.P9642525783645584562

namespace A005817

/-- `A000108(A008619(n))*A000108(A065033(n))` -/
def P9642525783645584562.Spec : Prop :=
  ∀ n, P9642525783645584562.a n = A005817 n

end A005817

/-! ## A005817.P18044413190494831941

`A000108(A008619(n))*A000108(A110654(n))`
-/

namespace A005817.P18044413190494831941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A008619 n).toNat * A000108 (A110654 n).toNat

end

end A005817.P18044413190494831941

namespace A005817

/-- `A000108(A008619(n))*A000108(A110654(n))` -/
def P18044413190494831941.Spec : Prop :=
  ∀ n, P18044413190494831941.a n = A005817 n

end A005817

/-! ## A005817.P14194676015096792896

`A000108(A065033(n+1))*A000108(A065033(n))`
-/

namespace A005817.P14194676015096792896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A065033 (n + 1)).toNat * A000108 (A065033 n).toNat

end

end A005817.P14194676015096792896

namespace A005817

/-- `A000108(A065033(n+1))*A000108(A065033(n))` -/
def P14194676015096792896.Spec : Prop :=
  ∀ n, P14194676015096792896.a n = A005817 n

end A005817

/-! ## A005817.P2705794365930905450

`A000108(A110655(2*(n+1)))*A000108(A110655(2*n))`
-/

namespace A005817.P2705794365930905450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A110655 (2 * (n + 1))).toNat * A000108 (A110655 (2 * n)).toNat

end

end A005817.P2705794365930905450

namespace A005817

/-- `A000108(A110655(2*(n+1)))*A000108(A110655(2*n))` -/
def P2705794365930905450.Spec : Prop :=
  ∀ n, P2705794365930905450.a n = A005817 n

end A005817

/-! ## A005817.P6610286354580636457

`∏[(n+1)²/A035106(n+1)]/(n+1)`
-/

namespace A005817.P6610286354580636457
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A035106 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / (n + 1 : ℚ)

end

end A005817.P6610286354580636457

namespace A005817

/-- `∏[(n+1)²/A035106(n+1)]/(n+1)` -/
def P6610286354580636457.Spec : Prop :=
  ∀ n, P6610286354580636457.a n = (A005817 n : ℚ)

end A005817

/-! ## A005817.P1673777480844329901

`A078391(A074148(n+1))`
-/

namespace A005817.P1673777480844329901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078391 (A074148 (n + 1)).toNat

end

end A005817.P1673777480844329901

namespace A005817

/-- `A078391(A074148(n+1))` -/
def P1673777480844329901.Spec : Prop :=
  ∀ n, P1673777480844329901.a n = A005817 n

end A005817

/-! ## A005817.P16770177198148604020

`A078391(A194274(n+1))`
-/

namespace A005817.P16770177198148604020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078391 (A194274 (n + 1)).toNat

end

end A005817.P16770177198148604020

namespace A005817

/-- `A078391(A194274(n+1))` -/
def P16770177198148604020.Spec : Prop :=
  ∀ n, P16770177198148604020.a n = A005817 n

end A005817

/-! ## A005817.P4044103442559127153

`A078391(A080476(n+2))`
-/

namespace A005817.P4044103442559127153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078391 (A080476 (n + 2)).toNat

end

end A005817.P4044103442559127153

namespace A005817

/-- `A078391(A080476(n+2))` -/
def P4044103442559127153.Spec : Prop :=
  ∀ n, P4044103442559127153.a n = A005817 n

end A005817

/-!
# A005818: Numbers n that are primitive solutions to n^2 = a^2 + b^2 + c^2 (a,b,c > 0).

The programs for A005818, the canonical program `A005818.P15690983902128365850` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005818 has offset 1).

The definition of A005818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005818.P15690983902128365850

`a(n-1)+2` with `a(0)=3, a(1)=7`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005818

/-- `a(n-1)+2` -/
def P15690983902128365850.Spec : Prop :=
  ∀ n, (P15690983902128365850.a n : ℤ) = A005818 (n + 1)

theorem P15690983902128365850.correct : P15690983902128365850.Spec := by
  intro n
  simp only [A005818, Nat.add_sub_cancel]

end A005818

/-!
# A005819: Number of words of length n in a certain language.

The programs for A005819, the canonical program `A005819.P8576469674546640238` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005819 has offset 1).

The definition of A005819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005819.P14208483545681216151

`record[xor(1, A103116(n))]`
-/

namespace A005819.P14208483545681216151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103116 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005819.P14208483545681216151

namespace A005819

/-- `record[xor(1, A103116(n))]` -/
def P14208483545681216151.Spec : Prop :=
  ∀ n, P14208483545681216151.a n = A005819 (n + 1)

end A005819

/-! ## A005819.P7396382324557436680

`∑[A002088(n+1)-char[1]]`
-/

namespace A005819.P7396382324557436680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005819.P7396382324557436680

namespace A005819

/-- `∑[A002088(n+1)-char[1]]` -/
def P7396382324557436680.Spec : Prop :=
  ∀ n, P7396382324557436680.a n = A005819 (n + 1)

end A005819

/-! ## A005819.P2223883149979695265

`∑[∑[A000010(n+1)]-char[1]]`
-/

namespace A005819.P2223883149979695265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005819.P2223883149979695265

namespace A005819

/-- `∑[∑[A000010(n+1)]-char[1]]` -/
def P2223883149979695265.Spec : Prop :=
  ∀ n, P2223883149979695265.a n = A005819 (n + 1)

end A005819

/-! ## A005819.P8576469674546640238

`A092249(n+1)+a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A005819

/-- `A092249(n+1)+a(n-1)` -/
def P8576469674546640238.Spec : Prop :=
  ∀ n, P8576469674546640238.a n = A005819 (n + 1)

theorem P8576469674546640238.correct : P8576469674546640238.Spec := by
  intro n
  simp only [A005819, Nat.add_sub_cancel]

end A005819

/-! ## A005819.P16370661945928594321

`∑[∑[A039649(n+1)-1]-char[1]]`
-/

namespace A005819.P16370661945928594321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005819.P16370661945928594321

namespace A005819

/-- `∑[∑[A039649(n+1)-1]-char[1]]` -/
def P16370661945928594321.Spec : Prop :=
  ∀ n, P16370661945928594321.a n = A005819 (n + 1)

end A005819

/-! ## A005819.P17284602361023796251

`A028310(n)+∑[A015614(n+1)]`
-/

namespace A005819.P17284602361023796251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005819.P17284602361023796251

namespace A005819

/-- `A028310(n)+∑[A015614(n+1)]` -/
def P17284602361023796251.Spec : Prop :=
  ∀ n, P17284602361023796251.a n = A005819 (n + 1)

end A005819

/-! ## A005819.P2806207613667435832

`∑[∑[A000010(n+1)]]-A057427(n)`
-/

namespace A005819.P2806207613667435832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A005819.P2806207613667435832

namespace A005819

/-- `∑[∑[A000010(n+1)]]-A057427(n)` -/
def P2806207613667435832.Spec : Prop :=
  ∀ n, P2806207613667435832.a n = A005819 (n + 1)

end A005819

/-! ## A005819.P14614660175254391753

`∑[∑[A000010(n+1)]]-A000040(n+1)%2`
-/

namespace A005819.P14614660175254391753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (A000040 (n + 1)) 2

end

end A005819.P14614660175254391753

namespace A005819

/-- `∑[∑[A000010(n+1)]]-A000040(n+1)%2` -/
def P14614660175254391753.Spec : Prop :=
  ∀ n, P14614660175254391753.a n = A005819 (n + 1)

end A005819

/-! ## A005819.P16186679162754567084

`record[xor(1, ∑[A002088(n)])]`
-/

namespace A005819.P16186679162754567084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005819.P16186679162754567084

namespace A005819

/-- `record[xor(1, ∑[A002088(n)])]` -/
def P16186679162754567084.Spec : Prop :=
  ∀ n, P16186679162754567084.a n = A005819 (n + 1)

end A005819

/-! ## A005819.P13499887848655867360

`record[abs(∑[1-A049643(n)])]`
-/

namespace A005819.P13499887848655867360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A049643 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005819.P13499887848655867360

namespace A005819

/-- `record[abs(∑[1-A049643(n)])]` -/
def P13499887848655867360.Spec : Prop :=
  ∀ n, P13499887848655867360.a n = A005819 (n + 1)

end A005819

/-! ## A005819.P8896705366755355413

`record[xor(1, ∑[A005728(n)-1])]`
-/

namespace A005819.P8896705366755355413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005819.P8896705366755355413

namespace A005819

/-- `record[xor(1, ∑[A005728(n)-1])]` -/
def P8896705366755355413.Spec : Prop :=
  ∀ n, P8896705366755355413.a n = A005819 (n + 1)

end A005819

/-! ## A005819.P15576637422325262297

`A005598(n+1)-(A057427(n)+1)`
-/

namespace A005819.P15576637422325262297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 (n + 1) - (A057427 n + 1)

end

end A005819.P15576637422325262297

namespace A005819

/-- `A005598(n+1)-(A057427(n)+1)` -/
def P15576637422325262297.Spec : Prop :=
  ∀ n, P15576637422325262297.a n = A005819 (n + 1)

end A005819

/-! ## A005819.P17506099434443764909

`A057428(n)+A005598(n+1)-1`
-/

namespace A005819.P17506099434443764909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A005598 (n + 1) - 1)

end

end A005819.P17506099434443764909

namespace A005819

/-- `A057428(n)+A005598(n+1)-1` -/
def P17506099434443764909.Spec : Prop :=
  ∀ n, P17506099434443764909.a n = A005819 (n + 1)

end A005819

/-! ## A005819.P6754046810257903201

`A135342(n+2)-(A057427(n)+2)`
-/

namespace A005819.P6754046810257903201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135342 (n + 2) - (A057427 n + 2)

end

end A005819.P6754046810257903201

namespace A005819

/-- `A135342(n+2)-(A057427(n)+2)` -/
def P6754046810257903201.Spec : Prop :=
  ∀ n, P6754046810257903201.a n = A005819 (n + 1)

end A005819

/-! ## A005819.P10309683119073743536

`A057428(n)+A135342(n+2)-2`
-/

namespace A005819.P10309683119073743536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A135342 (n + 2) - 2)

end

end A005819.P10309683119073743536

namespace A005819

/-- `A057428(n)+A135342(n+2)-2` -/
def P10309683119073743536.Spec : Prop :=
  ∀ n, P10309683119073743536.a n = A005819 (n + 1)

end A005819

/-! ## A005819.P17351206703447177543

`A005598(n+1)-A020639(A000010(n+2))`
-/

namespace A005819.P17351206703447177543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 (n + 1) - A020639 (A000010 (n + 2)).toNat

end

end A005819.P17351206703447177543

namespace A005819

/-- `A005598(n+1)-A020639(A000010(n+2))` -/
def P17351206703447177543.Spec : Prop :=
  ∀ n, P17351206703447177543.a n = A005819 (n + 1)

end A005819

/-! ## A005819.P15410442311665064932

`A005598(n+1)+A103116(n)-A135342(n+1)`
-/

namespace A005819.P15410442311665064932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 (n + 1) + (A103116 n - A135342 (n + 1))

end

end A005819.P15410442311665064932

namespace A005819

/-- `A005598(n+1)+A103116(n)-A135342(n+1)` -/
def P15410442311665064932.Spec : Prop :=
  ∀ n, P15410442311665064932.a n = A005819 (n + 1)

end A005819

/-! ## A005819.P1543777627413507093

`A005598(n+1)-A020639(A005574(n+1))`
-/

namespace A005819.P1543777627413507093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 (n + 1) - A020639 (A005574 (n + 1)).toNat

end

end A005819.P1543777627413507093

namespace A005819

/-- `A005598(n+1)-A020639(A005574(n+1))` -/
def P1543777627413507093.Spec : Prop :=
  ∀ n, P1543777627413507093.a n = A005819 (n + 1)

end A005819

/-!
# A005820: 3-perfect (triply perfect, tri-perfect, triperfect or sous-double) numbers: numbers such that the sum of the divisors of n is 3n.

The programs for A005820, there is no canonical definition to state claims against.
-/

/-! ## A005820.P3404058496311844906

`2*A326051(n+1)`
-/

namespace A005820.P3404058496311844906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326051 (n + 1)

end

end A005820.P3404058496311844906

/-!
# A005821: a(n) = floor(tau*a(n-1)) + a(n-2) with a(0)=0 and a(1)=1.

The programs for A005821, the canonical program `A005821.P8945521000045990272` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005821 has offset 0).

The definition of A005821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005821.P8945521000045990272

`floor(a(n-2)+ϕ*a(n-1))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005821

/-- `floor(a(n-2)+ϕ*a(n-1))` -/
def P8945521000045990272.Spec : Prop :=
  ∀ n, P8945521000045990272.a n = A005821 n

theorem P8945521000045990272.correct : P8945521000045990272.Spec := by
  intro n
  simp only [A005821]

end A005821

/-! ## A005821.P290281855209061594

`ceil(ϕ*a(n-1)+a(n-2)-1)` with `a(0)=0, a(1)=1`
-/

namespace A005821.P290281855209061594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ) + (a (n - 2) - 1 : ℝ)⌉

end

end A005821.P290281855209061594

namespace A005821

/-- `ceil(ϕ*a(n-1)+a(n-2)-1)` -/
def P290281855209061594.Spec : Prop :=
  ∀ n, P290281855209061594.a n = A005821 n

end A005821

/-! ## A005821.P6238116735821673929

`floor(a(n-2)+a(n-1)/(ϕ-1))` with `a(0)=0, a(1)=1`
-/

namespace A005821.P6238116735821673929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (n - 2) : ℝ) + (a (n - 1) : ℝ) / (Real.goldenRatio - 1)⌋

end

end A005821.P6238116735821673929

namespace A005821

/-- `floor(a(n-2)+a(n-1)/(ϕ-1))` -/
def P6238116735821673929.Spec : Prop :=
  ∀ n, P6238116735821673929.a n = A005821 n

end A005821

/-! ## A005821.P14827262459526281547

`ceil(ϕ*a(n-1)-(1-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A005821.P14827262459526281547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ) - (1 - a (n - 2) : ℝ)⌉

end

end A005821.P14827262459526281547

namespace A005821

/-- `ceil(ϕ*a(n-1)-(1-a(n-2)))` -/
def P14827262459526281547.Spec : Prop :=
  ∀ n, P14827262459526281547.a n = A005821 n

end A005821

/-! ## A005821.P8964884902144007341

`a(n-2)-ceil(a(n-1)/(1-ϕ))` with `a(0)=0, a(1)=1`
-/

namespace A005821.P8964884902144007341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - ⌈(a (n - 1) : ℝ) / (1 - Real.goldenRatio)⌉

end

end A005821.P8964884902144007341

namespace A005821

/-- `a(n-2)-ceil(a(n-1)/(1-ϕ))` -/
def P8964884902144007341.Spec : Prop :=
  ∀ n, P8964884902144007341.a n = A005821 n

end A005821

/-!
# A005822: G.f.: x*(1-x^2)*(x^4+x^3-x^2+x+1) / (x^8-4*x^6-x^4-4*x^2+1).

The programs for A005822, there is no canonical definition to state claims against.
-/

/-! ## A005822.P14509221080582580667

`A002024(A354758(n+1))-A034178(n+1)`
-/

namespace A005822.P14509221080582580667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A354758 (n + 1)).toNat - A034178 (n + 1)

end

end A005822.P14509221080582580667

/-!
# A005823: Numbers whose ternary expansion contains no 1's.

The programs for A005823, the canonical program `A005823.P15253501149959078210` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005823 has offset 1).

The definition of A005823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005823.P15253501149959078210

`2*A005836(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005823

/-- `2*A005836(n+1)` -/
def P15253501149959078210.Spec : Prop :=
  ∀ n, P15253501149959078210.a n = A005823 (n + 1)

theorem P15253501149959078210.correct : P15253501149959078210.Spec := by
  intro n
  simp only [A005823, Nat.add_sub_cancel]

end A005823

/-! ## A005823.P11686840976661540511

`∑[and(n, -n)^log2(3)]+n`
-/

namespace A005823.P11686840976661540511
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)

end

end A005823.P11686840976661540511

namespace A005823

/-- `∑[and(n, -n)^log2(3)]+n` -/
def P11686840976661540511.Spec : Prop :=
  ∀ n, P11686840976661540511.a n = (A005823 (n + 1) : ℝ)

end A005823

/-! ## A005823.P7796447698700719247

`a(n-1)+3^val(n, 2)+1` with `a(0)=0`
-/

namespace A005823.P7796447698700719247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 3 ^ SequenceMachineLib.valuation n 2 + 1

end

end A005823.P7796447698700719247

namespace A005823

/-- `a(n-1)+3^val(n, 2)+1` -/
def P7796447698700719247.Spec : Prop :=
  ∀ n, (P7796447698700719247.a n : ℤ) = A005823 (n + 1)

end A005823

/-! ## A005823.P14463805280927694962

`∑[3*a(floor(n/2))-a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A005823.P14463805280927694962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005823.P14463805280927694962

namespace A005823

/-- `∑[3*a(floor(n/2))-a(n-1)]` -/
def P14463805280927694962.Spec : Prop :=
  ∀ n, P14463805280927694962.a n = A005823 (n + 1)

end A005823

/-! ## A005823.P17342657509197010334

`A091311(n)+n`
-/

namespace A005823.P17342657509197010334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091311 n + (n : ℤ)

end

end A005823.P17342657509197010334

namespace A005823

/-- `A091311(n)+n` -/
def P17342657509197010334.Spec : Prop :=
  ∀ n, P17342657509197010334.a n = A005823 (n + 1)

end A005823

/-! ## A005823.P2350788507959456411

`∑[A061393(n)]-1`
-/

namespace A005823.P2350788507959456411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005823.P2350788507959456411

namespace A005823

/-- `∑[A061393(n)]-1` -/
def P2350788507959456411.Spec : Prop :=
  ∀ n, P2350788507959456411.a n = A005823 (n + 1)

end A005823

/-! ## A005823.P7482414020752038745

`A191106(n+1)-1`
-/

namespace A005823.P7482414020752038745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191106 (n + 1) - 1

end

end A005823.P7482414020752038745

namespace A005823

/-- `A191106(n+1)-1` -/
def P7482414020752038745.Spec : Prop :=
  ∀ n, P7482414020752038745.a n = A005823 (n + 1)

end A005823

/-! ## A005823.P7298791402841272498

`floor(A191108(n+1)/2)`
-/

namespace A005823.P7298791402841272498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191108 (n + 1) : ℚ) / 2⌋

end

end A005823.P7298791402841272498

namespace A005823

/-- `floor(A191108(n+1)/2)` -/
def P7298791402841272498.Spec : Prop :=
  ∀ n, P7298791402841272498.a n = A005823 (n + 1)

end A005823

/-! ## A005823.P9526979244806230888

`2*(A003278(n+1)-1)`
-/

namespace A005823.P9526979244806230888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003278 (n + 1) - 1)

end

end A005823.P9526979244806230888

namespace A005823

/-- `2*(A003278(n+1)-1)` -/
def P9526979244806230888.Spec : Prop :=
  ∀ n, P9526979244806230888.a n = A005823 (n + 1)

end A005823

/-! ## A005823.P8895297887385587144

`2*(A033159(n+1)-2)`
-/

namespace A005823.P8895297887385587144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033159 (n + 1) - 2)

end

end A005823.P8895297887385587144

namespace A005823

/-- `2*(A033159(n+1)-2)` -/
def P8895297887385587144.Spec : Prop :=
  ∀ n, P8895297887385587144.a n = A005823 (n + 1)

end A005823

/-! ## A005823.P4067800983842274088

`2*(A033162(n+1)-3)`
-/

namespace A005823.P4067800983842274088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033162 (n + 1) - 3)

end

end A005823.P4067800983842274088

namespace A005823

/-- `2*(A033162(n+1)-3)` -/
def P4067800983842274088.Spec : Prop :=
  ∀ n, P4067800983842274088.a n = A005823 (n + 1)

end A005823

/-! ## A005823.P16683733191698620216

`(A055246(n+1)-1)/3`
-/

namespace A005823.P16683733191698620216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055246 (n + 1) - 1 : ℚ) / 3

end

end A005823.P16683733191698620216

namespace A005823

/-- `(A055246(n+1)-1)/3` -/
def P16683733191698620216.Spec : Prop :=
  ∀ n, P16683733191698620216.a n = (A005823 (n + 1) : ℚ)

end A005823

/-! ## A005823.P4388763988932159950

`2*(A033164(n+1)-4)`
-/

namespace A005823.P4388763988932159950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033164 (n + 1) - 4)

end

end A005823.P4388763988932159950

namespace A005823

/-- `2*(A033164(n+1)-4)` -/
def P4388763988932159950.Spec : Prop :=
  ∀ n, P4388763988932159950.a n = A005823 (n + 1)

end A005823

/-! ## A005823.P17299545818099367930

`(A190640(n+1)-2)/3`
-/

namespace A005823.P17299545818099367930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190640 (n + 1) - 2 : ℚ) / 3

end

end A005823.P17299545818099367930

namespace A005823

/-- `(A190640(n+1)-2)/3` -/
def P17299545818099367930.Spec : Prop :=
  ∀ n, P17299545818099367930.a n = (A005823 (n + 1) : ℚ)

end A005823

/-! ## A005823.P11207410087407549521

`2/3*A081601(n+1)`
-/

namespace A005823.P11207410087407549521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A081601 (n + 1) : ℚ)

end

end A005823.P11207410087407549521

namespace A005823

/-- `2/3*A081601(n+1)` -/
def P11207410087407549521.Spec : Prop :=
  ∀ n, P11207410087407549521.a n = (A005823 (n + 1) : ℚ)

end A005823

/-! ## A005823.P701858099310496577

`or(1, A055247(n+1))-1`
-/

namespace A005823.P701858099310496577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055247 (n + 1)) - 1

end

end A005823.P701858099310496577

namespace A005823

/-- `or(1, A055247(n+1))-1` -/
def P701858099310496577.Spec : Prop :=
  ∀ n, P701858099310496577.a n = A005823 (n + 1)

end A005823

/-! ## A005823.P17861590353615246615

`A055247(n+1)-A059841(n)`
-/

namespace A005823.P17861590353615246615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055247 (n + 1) - A059841 n

end

end A005823.P17861590353615246615

namespace A005823

/-- `A055247(n+1)-A059841(n)` -/
def P17861590353615246615.Spec : Prop :=
  ∀ n, P17861590353615246615.a n = A005823 (n + 1)

end A005823

/-! ## A005823.P3537479133150534722

`A081601(n+1)-A005836(n+1)`
-/

namespace A005823.P3537479133150534722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081601 (n + 1) - A005836 (n + 1)

end

end A005823.P3537479133150534722

namespace A005823

/-- `A081601(n+1)-A005836(n+1)` -/
def P3537479133150534722.Spec : Prop :=
  ∀ n, P3537479133150534722.a n = A005823 (n + 1)

end A005823

/-! ## A005823.P4721678444779658041

`A191107(n+1)-A003278(n+1)`
-/

namespace A005823.P4721678444779658041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (n + 1) - A003278 (n + 1)

end

end A005823.P4721678444779658041

namespace A005823

/-- `A191107(n+1)-A003278(n+1)` -/
def P4721678444779658041.Spec : Prop :=
  ∀ n, P4721678444779658041.a n = A005823 (n + 1)

end A005823

/-! ## A005823.P15918369241217599874

`A055246(n+1)-A191108(n+1)`
-/

namespace A005823.P15918369241217599874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055246 (n + 1) - A191108 (n + 1)

end

end A005823.P15918369241217599874

namespace A005823

/-- `A055246(n+1)-A191108(n+1)` -/
def P15918369241217599874.Spec : Prop :=
  ∀ n, P15918369241217599874.a n = A005823 (n + 1)

end A005823

/-!
# A005824: a(n) = 5*a(n-2) - 2*a(n-4), with initial terms 0,1,1,3.

The programs for A005824, the canonical program `A005824.P4946524699460849175` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005824 has offset 0).

The definition of A005824 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-2)-2*a(n-4)` (program `A005824.P4946524699460849175`, by `A005824.P4946524699460849175.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005824.P4946524699460849175

`5*a(n-2)-2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005824

/-- `5*a(n-2)-2*a(n-4)` -/
def P4946524699460849175.Spec : Prop :=
  ∀ n, P4946524699460849175.a n = A005824 n

theorem P4946524699460849175.correct : P4946524699460849175.Spec := by
  intro n
  simp only [A005824]

end A005824

/-! ## A005824.P7730175502387255340

`a(n-1)+a(n-gcd(2, n))+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A005824.P7730175502387255340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - Nat.gcd 2 n) + a (n - 2))

end

end A005824.P7730175502387255340

namespace A005824

/-- `a(n-1)+a(n-gcd(2, n))+a(n-2)` -/
def P7730175502387255340.Spec : Prop :=
  ∀ n, (P7730175502387255340.a n : ℤ) = A005824 n

end A005824

/-! ## A005824.P16377105467087759322

`A249581(2*n)`
-/

namespace A005824.P16377105467087759322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249581 (2 * n)

end

end A005824.P16377105467087759322

namespace A005824

/-- `A249581(2*n)` -/
def P16377105467087759322.Spec : Prop :=
  ∀ n, P16377105467087759322.a n = A005824 n

end A005824

/-! ## A005824.P1040730608507250465

`or(n%2, A249581(A005843(n)))`
-/

namespace A005824.P1040730608507250465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A249581 (A005843 n).toNat)

end

end A005824.P1040730608507250465

namespace A005824

/-- `or(n%2, A249581(A005843(n)))` -/
def P1040730608507250465.Spec : Prop :=
  ∀ n, P1040730608507250465.a n = A005824 n

end A005824

/-! ## A005824.P9723449010682209837

`A249581(A004277(n))-A000007(n)`
-/

namespace A005824.P9723449010682209837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249581 (A004277 n).toNat - A000007 n

end

end A005824.P9723449010682209837

namespace A005824

/-- `A249581(A004277(n))-A000007(n)` -/
def P9723449010682209837.Spec : Prop :=
  ∀ n, P9723449010682209837.a n = A005824 n

end A005824

/-! ## A005824.P3171544150058416560

`A249581(A004277(n))-A010052(A005117(n+1))`
-/

namespace A005824.P3171544150058416560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249581 (A004277 n).toNat - A010052 (A005117 (n + 1)).toNat

end

end A005824.P3171544150058416560

namespace A005824

/-- `A249581(A004277(n))-A010052(A005117(n+1))` -/
def P3171544150058416560.Spec : Prop :=
  ∀ n, P3171544150058416560.a n = A005824 n

end A005824

/-! ## A005824.P11688135712719556253

`A249581(A005843(n))/A018783(A006530(n+2))`
-/

namespace A005824.P11688135712719556253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249581 (A005843 n).toNat : ℚ) / (A018783 (A006530 (n + 2)).toNat : ℚ)

end

end A005824.P11688135712719556253

namespace A005824

/-- `A249581(A005843(n))/A018783(A006530(n+2))` -/
def P11688135712719556253.Spec : Prop :=
  ∀ n, P11688135712719556253.a n = (A005824 n : ℚ)

end A005824

/-! ## A005824.P15868629666986801140

`A109165(n+1)-(A109165(n)+A079162(n+1))`
-/

namespace A005824.P15868629666986801140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109165 (n + 1) - (A109165 n + A079162 (n + 1))

end

end A005824.P15868629666986801140

namespace A005824

/-- `A109165(n+1)-(A109165(n)+A079162(n+1))` -/
def P15868629666986801140.Spec : Prop :=
  ∀ n, P15868629666986801140.a n = A005824 n

end A005824

/-! ## A005824.P10184217192731886515

`A384611(n+1)-(A079162(n+1)+A079162(n+1))`
-/

namespace A005824.P10184217192731886515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384611 (n + 1) - (A079162 (n + 1) + A079162 (n + 1))

end

end A005824.P10184217192731886515

namespace A005824

/-- `A384611(n+1)-(A079162(n+1)+A079162(n+1))` -/
def P10184217192731886515.Spec : Prop :=
  ∀ n, P10184217192731886515.a n = A005824 n

end A005824

/-! ## A005824.P5932213300340174001

`A249581(A005843(n))%A054486(n)`
-/

namespace A005824.P5932213300340174001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249581 (A005843 n).toNat) (A054486 n)

end

end A005824.P5932213300340174001

namespace A005824

/-- `A249581(A005843(n))%A054486(n)` -/
def P5932213300340174001.Spec : Prop :=
  ∀ n, P5932213300340174001.a n = A005824 n

end A005824

/-! ## A005824.P7968414373523856059

`A249581(A004277(n))%A000244(n)`
-/

namespace A005824.P7968414373523856059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249581 (A004277 n).toNat) (A000244 n)

end

end A005824.P7968414373523856059

namespace A005824

/-- `A249581(A004277(n))%A000244(n)` -/
def P7968414373523856059.Spec : Prop :=
  ∀ n, P7968414373523856059.a n = A005824 n

end A005824

/-! ## A005824.P14282158357612782950

`A249581(A004277(n))+A014893(A000040(n+1))`
-/

namespace A005824.P14282158357612782950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249581 (A004277 n).toNat + A014893 (A000040 (n + 1)).toNat

end

end A005824.P14282158357612782950

namespace A005824

/-- `A249581(A004277(n))+A014893(A000040(n+1))` -/
def P14282158357612782950.Spec : Prop :=
  ∀ n, P14282158357612782950.a n = A005824 n

end A005824

/-! ## A005824.P2121763727532269144

`A249581(A004277(n))-A010052(n²+1)`
-/

namespace A005824.P2121763727532269144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249581 (A004277 n).toNat - A010052 (n ^ 2 + 1)

end

end A005824.P2121763727532269144

namespace A005824

/-- `A249581(A004277(n))-A010052(n²+1)` -/
def P2121763727532269144.Spec : Prop :=
  ∀ n, P2121763727532269144.a n = A005824 n

end A005824

/-!
# A005825: Numerators in a worst case of a Jacobi symbol algorithm.

The programs for A005825, the canonical program `A005825.P16789346492011069980` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005825 has offset 0).

The definition of A005825 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005825.P16789346492011069980

`5*a(n-1)-10*a(n-3)+4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=31`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005825

/-- `5*a(n-1)-10*a(n-3)+4*a(n-4)` -/
def P16789346492011069980.Spec : Prop :=
  ∀ n, P16789346492011069980.a n = A005825 n

theorem P16789346492011069980.correct : P16789346492011069980.Spec := by
  intro n
  simp only [A005825]

end A005825

/-!
# A005826: Worst case of a Jacobi symbol algorithm.

The programs for A005826, the canonical program `A005826.P12132282120657980729` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005826 has offset 0).

The definition of A005826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005826.P12132282120657980729

`5*a(n-1)-10*a(n-3)+4*a(n-4)` with `a(0)=1, a(1)=5, a(2)=31, a(3)=141`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005826

/-- `5*a(n-1)-10*a(n-3)+4*a(n-4)` -/
def P12132282120657980729.Spec : Prop :=
  ∀ n, P12132282120657980729.a n = A005826 n

theorem P12132282120657980729.correct : P12132282120657980729.Spec := by
  intro n
  simp only [A005826]

end A005826

/-! ## A005826.P9515081124104643615

`A005827(n+2)%A005827(n+1)`
-/

namespace A005826.P9515081124104643615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005827 (n + 2)) (A005827 (n + 1))

end

end A005826.P9515081124104643615

namespace A005826

/-- `A005827(n+2)%A005827(n+1)` -/
def P9515081124104643615.Spec : Prop :=
  ∀ n, P9515081124104643615.a n = A005826 n

end A005826

/-!
# A005827: Worst case of a Jacobi symbol algorithm.

The programs for A005827, the canonical program `A005827.P8488430265767579183` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005827 has offset 0).

The definition of A005827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005827.P8488430265767579183

`5*a(n-1)-10*a(n-3)+4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=13, a(3)=57`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005827

/-- `5*a(n-1)-10*a(n-3)+4*a(n-4)` -/
def P8488430265767579183.Spec : Prop :=
  ∀ n, P8488430265767579183.a n = A005827 n

theorem P8488430265767579183.correct : P8488430265767579183.Spec := by
  intro n
  simp only [A005827]

end A005827

/-! ## A005827.P11969978494684840123

`a(n-1)+A005825(n)+a(n-1)` with `a(0)=1`
-/

namespace A005827.P11969978494684840123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A005825 n + a (n - 1))

end

end A005827.P11969978494684840123

namespace A005827

/-- `a(n-1)+A005825(n)+a(n-1)` -/
def P11969978494684840123.Spec : Prop :=
  ∀ n, P11969978494684840123.a n = A005827 n

end A005827

/-!
# A005828: a(n) = 2*a(n-1)^2 - 1, a(0) = 4, a(1) = 31.

The programs for A005828, the canonical program `A005828.P9946927872827783259` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005828 has offset 0).

The definition of A005828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005828.P9946927872827783259

`1/2*((4+sqrt(15))^2^n+(4-sqrt(15))^2^n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005828

/-- `1/2*((4+sqrt(15))^2^n+(4-sqrt(15))^2^n)` -/
def P9946927872827783259.Spec : Prop :=
  ∀ n, P9946927872827783259.a n = (A005828 n : ℝ)

end A005828

/-! ## A005828.P4604658176513407634

`2*a(n-1)²-1` with `a(0)=4`
-/

namespace A005828.P4604658176513407634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  2 * a (n - 1) ^ 2 - 1

end

end A005828.P4604658176513407634

namespace A005828

/-- `2*a(n-1)²-1` -/
def P4604658176513407634.Spec : Prop :=
  ∀ n, P4604658176513407634.a n = A005828 n

end A005828

/-! ## A005828.P9685761604989335789

`2*a(n-1)^(4/2)-1` with `a(0)=4`
-/

namespace A005828.P9685761604989335789
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [4] fun n a =>
  2 * a (n - 1) ^ ((4 : ℚ) / 2 : ℝ) - 1

end

end A005828.P9685761604989335789

namespace A005828

/-- `2*a(n-1)^(4/2)-1` -/
def P9685761604989335789.Spec : Prop :=
  ∀ n, P9685761604989335789.a n = (A005828 n : ℝ)

end A005828

/-!
# A005829: a(n) = floor(tau*a(n-1)) + a(n-2) with a(0)=0 and a(1)=2.

The programs for A005829, the canonical program `A005829.P8802334293581343623` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005829 has offset 0).

The definition of A005829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005829.P8802334293581343623

`floor(a(n-2)+ϕ*a(n-1))` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005829

/-- `floor(a(n-2)+ϕ*a(n-1))` -/
def P8802334293581343623.Spec : Prop :=
  ∀ n, P8802334293581343623.a n = A005829 n

theorem P8802334293581343623.correct : P8802334293581343623.Spec := by
  intro n
  simp only [A005829]

end A005829

/-! ## A005829.P670394944015300159

`ceil(ϕ*a(n-1)+a(n-2)-1)` with `a(0)=0, a(1)=2`
-/

namespace A005829.P670394944015300159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ) + (a (n - 2) - 1 : ℝ)⌉

end

end A005829.P670394944015300159

namespace A005829

/-- `ceil(ϕ*a(n-1)+a(n-2)-1)` -/
def P670394944015300159.Spec : Prop :=
  ∀ n, P670394944015300159.a n = A005829 n

end A005829

/-! ## A005829.P8069114658679812816

`floor(a(n-2)+a(n-1)/(ϕ-1))` with `a(0)=0, a(1)=2`
-/

namespace A005829.P8069114658679812816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ⌊(a (n - 2) : ℝ) + (a (n - 1) : ℝ) / (Real.goldenRatio - 1)⌋

end

end A005829.P8069114658679812816

namespace A005829

/-- `floor(a(n-2)+a(n-1)/(ϕ-1))` -/
def P8069114658679812816.Spec : Prop :=
  ∀ n, P8069114658679812816.a n = A005829 n

end A005829

/-! ## A005829.P6826438795864303390

`ceil(ϕ*a(n-1)-(1-a(n-2)))` with `a(0)=0, a(1)=2`
-/

namespace A005829.P6826438795864303390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ) - (1 - a (n - 2) : ℝ)⌉

end

end A005829.P6826438795864303390

namespace A005829

/-- `ceil(ϕ*a(n-1)-(1-a(n-2)))` -/
def P6826438795864303390.Spec : Prop :=
  ∀ n, P6826438795864303390.a n = A005829 n

end A005829

/-! ## A005829.P5390524921360068593

`a(n-2)-ceil(a(n-1)/(1-ϕ))` with `a(0)=0, a(1)=2`
-/

namespace A005829.P5390524921360068593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) - ⌈(a (n - 1) : ℝ) / (1 - Real.goldenRatio)⌉

end

end A005829.P5390524921360068593

namespace A005829

/-- `a(n-2)-ceil(a(n-1)/(1-ϕ))` -/
def P5390524921360068593.Spec : Prop :=
  ∀ n, P5390524921360068593.a n = A005829 n

end A005829

/-!
# A005830: a(n) = floor(phi*a(n-1)) + a(n-2) where phi is the golden ratio.

The programs for A005830, the canonical program `A005830.P7868252562569809794` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005830 has offset 0).

The definition of A005830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005830.P7868252562569809794

`floor(a(n-2)+ϕ*a(n-1))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005830

/-- `floor(a(n-2)+ϕ*a(n-1))` -/
def P7868252562569809794.Spec : Prop :=
  ∀ n, P7868252562569809794.a n = A005830 n

theorem P7868252562569809794.correct : P7868252562569809794.Spec := by
  intro n
  simp only [A005830]

end A005830

/-! ## A005830.P16666857420548151517

`ceil(ϕ*a(n-1)+a(n-2)-1)` with `a(0)=1, a(1)=3`
-/

namespace A005830.P16666857420548151517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ) + (a (n - 2) - 1 : ℝ)⌉

end

end A005830.P16666857420548151517

namespace A005830

/-- `ceil(ϕ*a(n-1)+a(n-2)-1)` -/
def P16666857420548151517.Spec : Prop :=
  ∀ n, P16666857420548151517.a n = A005830 n

end A005830

/-! ## A005830.P13122033986851493813

`floor(a(n-2)+a(n-1)/(ϕ-1))` with `a(0)=1, a(1)=3`
-/

namespace A005830.P13122033986851493813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊(a (n - 2) : ℝ) + (a (n - 1) : ℝ) / (Real.goldenRatio - 1)⌋

end

end A005830.P13122033986851493813

namespace A005830

/-- `floor(a(n-2)+a(n-1)/(ϕ-1))` -/
def P13122033986851493813.Spec : Prop :=
  ∀ n, P13122033986851493813.a n = A005830 n

end A005830

/-! ## A005830.P589130483421741573

`ceil(ϕ*a(n-1)-(1-a(n-2)))` with `a(0)=1, a(1)=3`
-/

namespace A005830.P589130483421741573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ) - (1 - a (n - 2) : ℝ)⌉

end

end A005830.P589130483421741573

namespace A005830

/-- `ceil(ϕ*a(n-1)-(1-a(n-2)))` -/
def P589130483421741573.Spec : Prop :=
  ∀ n, P589130483421741573.a n = A005830 n

end A005830

/-! ## A005830.P1896267618821085959

`a(n-2)-ceil(a(n-1)/(1-ϕ))` with `a(0)=1, a(1)=3`
-/

namespace A005830.P1896267618821085959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) - ⌈(a (n - 1) : ℝ) / (1 - Real.goldenRatio)⌉

end

end A005830.P1896267618821085959

namespace A005830

/-- `a(n-2)-ceil(a(n-1)/(1-ϕ))` -/
def P1896267618821085959.Spec : Prop :=
  ∀ n, P1896267618821085959.a n = A005830 n

end A005830

/-!
# A005831: a(n+1) = a(n) * (a(n-1) + 1).

The programs for A005831, the canonical program `A005831.P13247137067257136840` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005831 has offset 0).

The definition of A005831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005831.P13247137067257136840

`a(n-1)*(a(n-2)+1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005831

/-- `a(n-1)*(a(n-2)+1)` -/
def P13247137067257136840.Spec : Prop :=
  ∀ n, (P13247137067257136840.a n : ℤ) = A005831 n

theorem P13247137067257136840.correct : P13247137067257136840.Spec := by
  intro n
  simp only [A005831]

end A005831

/-! ## A005831.P8097959916984123266

`a(n-1)/(a(n-2)+1)^(-1)` with `a(0)=0, a(1)=1`
-/

namespace A005831.P8097959916984123266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) / (a (n - 2) + 1) ^ (-1 : ℤ)

end

end A005831.P8097959916984123266

namespace A005831

/-- `a(n-1)/(a(n-2)+1)^(-1)` -/
def P8097959916984123266.Spec : Prop :=
  ∀ n, P8097959916984123266.a n = (A005831 n : ℚ)

end A005831

/-! ## A005831.P10470195240669116961

`(4/2-(1-a(n-2)))*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A005831.P10470195240669116961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((4 : ℚ) / 2 - (1 - a (n - 2))) * a (n - 1)

end

end A005831.P10470195240669116961

namespace A005831

/-- `(4/2-(1-a(n-2)))*a(n-1)` -/
def P10470195240669116961.Spec : Prop :=
  ∀ n, P10470195240669116961.a n = (A005831 n : ℚ)

end A005831

/-! ## A005831.P7671640970869392422

`2*a(n-1)-(1-a(n-2))*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A005831.P7671640970869392422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) - (1 - a (n - 2)) * a (n - 1)

end

end A005831.P7671640970869392422

namespace A005831

/-- `2*a(n-1)-(1-a(n-2))*a(n-1)` -/
def P7671640970869392422.Spec : Prop :=
  ∀ n, P7671640970869392422.a n = A005831 n

end A005831

/-! ## A005831.P12138869732546708241

`A057427(n)+A007807(A028310(n))`
-/

namespace A005831.P12138869732546708241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A007807 (A028310 n).toNat

end

end A005831.P12138869732546708241

namespace A005831

/-- `A057427(n)+A007807(A028310(n))` -/
def P12138869732546708241.Spec : Prop :=
  ∀ n, P12138869732546708241.a n = A005831 n

end A005831

/-!
# A005832: 

The programs for A005832, there is no canonical definition to state claims against.
-/

/-! ## A005832.P11918738475437501954

`∏[(n+1)^2^n]`
-/

namespace A005832.P11918738475437501954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A005832.P11918738475437501954

/-! ## A005832.P9556332205831766875

`(n+1)^2^n*a(n-1)` with `a(0)=1`
-/

namespace A005832.P9556332205831766875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) ^ 2 ^ n * a (n - 1)

end

end A005832.P9556332205831766875

/-! ## A005832.P11487766683448230950

`∏{d}[2^n, A000005(#)^#]`
-/

namespace A005832.P11487766683448230950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000005 d ^ d

end

end A005832.P11487766683448230950

/-!
# A005833: a(n) = floor(tau*a(n-2)) + a(n-1) with a(0)=0 and a(1)=1.

The programs for A005833, the canonical program `A005833.P4231608999459851139` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005833 has offset 0).

The definition of A005833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005833.P4231608999459851139

`floor(a(n-1)+ϕ*a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005833

/-- `floor(a(n-1)+ϕ*a(n-2))` -/
def P4231608999459851139.Spec : Prop :=
  ∀ n, P4231608999459851139.a n = A005833 n

theorem P4231608999459851139.correct : P4231608999459851139.Spec := by
  intro n
  simp only [A005833]

end A005833

/-! ## A005833.P17489545143772483673

`floor(ϕ²*a(n-2))-(a(n-2)-a(n-1))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A005833.P17489545143772483673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 2) : ℝ)⌋ - (a (n - 2) - a (n - 1))

end

end A005833.P17489545143772483673

namespace A005833

/-- `floor(ϕ²*a(n-2))-(a(n-2)-a(n-1))` -/
def P17489545143772483673.Spec : Prop :=
  ∀ n, P17489545143772483673.a n = A005833 n

end A005833

/-! ## A005833.P5068090488709479619

`A066096(a(n-2))+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A005833.P5068090488709479619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A066096 (a (n - 2)).toNat + a (n - 1)

end

end A005833.P5068090488709479619

namespace A005833

/-- `A066096(a(n-2))+a(n-1)` -/
def P5068090488709479619.Spec : Prop :=
  ∀ n, P5068090488709479619.a n = A005833 n

end A005833

/-! ## A005833.P6664477342657336638

`A049859(n)-A289139(A049859(n))`
-/

namespace A005833.P6664477342657336638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 n - A289139 (A049859 n).toNat

end

end A005833.P6664477342657336638

namespace A005833

/-- `A049859(n)-A289139(A049859(n))` -/
def P6664477342657336638.Spec : Prop :=
  ∀ n, P6664477342657336638.a n = A005833 n

end A005833

/-! ## A005833.P1204903540752666886

`A002264(A000523(n+1)+2*A049864(n))`
-/

namespace A005833.P1204903540752666886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000523 (n + 1) + 2 * A049864 n).toNat

end

end A005833.P1204903540752666886

namespace A005833

/-- `A002264(A000523(n+1)+2*A049864(n))` -/
def P1204903540752666886.Spec : Prop :=
  ∀ n, P1204903540752666886.a n = A005833 n

end A005833

/-!
# A005834: a(n) = floor(phi*a(n-2)) + a(n-1) where phi is the golden ratio.

The programs for A005834, the canonical program `A005834.P15931665257972964332` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005834 has offset 0).

The definition of A005834 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(ϕ*a(n-2))+a(n-1)` (program `A005834.P15931665257972964332`, by `A005834.P15931665257972964332.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005834.P15931665257972964332

`floor(ϕ*a(n-2))+a(n-1)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005834

/-- `floor(ϕ*a(n-2))+a(n-1)` -/
def P15931665257972964332.Spec : Prop :=
  ∀ n, P15931665257972964332.a n = A005834 n

theorem P15931665257972964332.correct : P15931665257972964332.Spec := by
  intro n
  simp only [A005834]

end A005834

/-! ## A005834.P2792924439840287749

`a(n-1)-ceil(-ϕ*a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A005834.P2792924439840287749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) - ⌈-(Real.goldenRatio * (a (n - 2) : ℝ))⌉

end

end A005834.P2792924439840287749

namespace A005834

/-- `a(n-1)-ceil(-ϕ*a(n-2))` -/
def P2792924439840287749.Spec : Prop :=
  ∀ n, P2792924439840287749.a n = A005834 n

end A005834

/-! ## A005834.P11694858701514972608

`floor(a(n-1)+a(n-2)/(ϕ-1))` with `a(0)=0, a(1)=2`
-/

namespace A005834.P11694858701514972608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ⌊(a (n - 1) : ℝ) + (a (n - 2) : ℝ) / (Real.goldenRatio - 1)⌋

end

end A005834.P11694858701514972608

namespace A005834

/-- `floor(a(n-1)+a(n-2)/(ϕ-1))` -/
def P11694858701514972608.Spec : Prop :=
  ∀ n, P11694858701514972608.a n = A005834 n

end A005834

/-! ## A005834.P8568888787112010455

`ceil(ϕ*a(n-2)+a(n-1)-1)` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A005834.P8568888787112010455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  ⌈Real.goldenRatio * (a (n - 2) : ℝ) + (a (n - 1) - 1 : ℝ)⌉

end

end A005834.P8568888787112010455

namespace A005834

/-- `ceil(ϕ*a(n-2)+a(n-1)-1)` -/
def P8568888787112010455.Spec : Prop :=
  ∀ n, P8568888787112010455.a n = A005834 n

end A005834

/-! ## A005834.P12716202326144050958

`floor(ϕ²*a(n-2))-(a(n-2)-a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A005834.P12716202326144050958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 2) : ℝ)⌋ - (a (n - 2) - a (n - 1))

end

end A005834.P12716202326144050958

namespace A005834

/-- `floor(ϕ²*a(n-2))-(a(n-2)-a(n-1))` -/
def P12716202326144050958.Spec : Prop :=
  ∀ n, P12716202326144050958.a n = A005834 n

end A005834

/-!
# A005835: Pseudoperfect (or semiperfect) numbers k: some subset of the proper divisors of k sums to k.

The programs for A005835, there is no canonical definition to state claims against.
-/

/-! ## A005835.P15885394889912697107

`∪[A006036(n+1), A136446(n+1)]`
-/

namespace A005835.P15885394889912697107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005835.P15885394889912697107

/-! ## A005835.P4354387485793390448

`A392652(n+1)/2`
-/

namespace A005835.P4354387485793390448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392652 (n + 1) : ℚ) / 2

end

end A005835.P4354387485793390448

/-! ## A005835.P1481693328252784822

`lt[1, A074971(n+1)]+1`
-/

namespace A005835.P1481693328252784822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A005835.P1481693328252784822

/-! ## A005835.P13878790045469149792

`lt[1, A033630(n)]`
-/

namespace A005835.P13878790045469149792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A005835.P13878790045469149792

/-! ## A005835.P133620601485743285

`filter[n+1, A210455(#)]`
-/

namespace A005835.P133620601485743285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j) = 1) n)

end

end A005835.P133620601485743285

/-! ## A005835.P4295707404828141070

`lt[0, A065205(n+1)]+1`
-/

namespace A005835.P4295707404828141070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A005835.P4295707404828141070

/-! ## A005835.P13322583972055233230

`eq[1, A210455(n+1)]+1`
-/

namespace A005835.P13322583972055233230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005835.P13322583972055233230

/-! ## A005835.P3150676556427063704

`lt[1, A074971(A028310(n))]`
-/

namespace A005835.P3150676556427063704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074971 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A005835.P3150676556427063704

/-! ## A005835.P11569493697653836034

`A114637(lt[1, A074971(n+1)])`
-/

namespace A005835.P11569493697653836034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A005835.P11569493697653836034

/-! ## A005835.P9306622333419578193

`eq[1, A033630(round(6/A033630(n)))]`
-/

namespace A005835.P9306622333419578193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (SequenceMachineLib.roundAway (6 / (A033630 n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005835.P9306622333419578193

/-! ## A005835.P14949859944934396929

`A001281(A392652(n+1))`
-/

namespace A005835.P14949859944934396929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A392652 (n + 1)).toNat

end

end A005835.P14949859944934396929

/-! ## A005835.P2271131725548030576

`eq[1, A014963(A023196(n+1))%A033630(n)]`
-/

namespace A005835.P2271131725548030576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (A023196 (n + 1)).toNat) (A033630 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005835.P2271131725548030576

/-! ## A005835.P7001197487605574458

`eq[1, A014963(A005101(n+1))%A033630(n)]`
-/

namespace A005835.P7001197487605574458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (A005101 (n + 1)).toNat) (A033630 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005835.P7001197487605574458

/-! ## A005835.P1434584889680320088

`eq[1, A014963(A136446(n+1))%A033630(n)]`
-/

namespace A005835.P1434584889680320088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (A136446 (n + 1)).toNat) (A033630 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005835.P1434584889680320088

/-! ## A005835.P16750128015995708949

`lt[1, A074971(A233583(n+1))]`
-/

namespace A005835.P16750128015995708949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074971 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A005835.P16750128015995708949

/-! ## A005835.P17572121721043801205

`eq[1, A033630(A040149(n+1))%A033630(n)]`
-/

namespace A005835.P17572121721043801205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033630 (A040149 (n + 1)).toNat) (A033630 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005835.P17572121721043801205

/-!
# A005836: Numbers whose base-3 representation contains no 2.

The programs for A005836, the canonical program `A005836.P15698271076616888944` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005836 has offset 1).

The definition of A005836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005836.P15698271076616888944

`3*a(floor(n/2))+n-2*floor(n/2)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005836

/-- `3*a(floor(n/2))+n-2*floor(n/2)` -/
def P15698271076616888944.Spec : Prop :=
  ∀ n, P15698271076616888944.a n = A005836 (n + 1)

theorem P15698271076616888944.correct : P15698271076616888944.Spec := by
  intro n
  simp only [A005836, Nat.add_sub_cancel]

end A005836

/-! ## A005836.P6776556742247875052

`A003278(n+1)-1`
-/

namespace A005836.P6776556742247875052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) - 1

end

end A005836.P6776556742247875052

namespace A005836

/-- `A003278(n+1)-1` -/
def P6776556742247875052.Spec : Prop :=
  ∀ n, P6776556742247875052.a n = A005836 (n + 1)

end A005836

/-! ## A005836.P1566144067630590732

`A033159(n+1)-2`
-/

namespace A005836.P1566144067630590732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033159 (n + 1) - 2

end

end A005836.P1566144067630590732

namespace A005836

/-- `A033159(n+1)-2` -/
def P1566144067630590732.Spec : Prop :=
  ∀ n, P1566144067630590732.a n = A005836 (n + 1)

end A005836

/-! ## A005836.P17361030891082710282

`A033162(n+1)-3`
-/

namespace A005836.P17361030891082710282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033162 (n + 1) - 3

end

end A005836.P17361030891082710282

namespace A005836

/-- `A033162(n+1)-3` -/
def P17361030891082710282.Spec : Prop :=
  ∀ n, P17361030891082710282.a n = A005836 (n + 1)

end A005836

/-! ## A005836.P13796929062847435871

`A005823(n+1)/2`
-/

namespace A005836.P13796929062847435871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005823 (n + 1) : ℚ) / 2

end

end A005836.P13796929062847435871

namespace A005836

/-- `A005823(n+1)/2` -/
def P13796929062847435871.Spec : Prop :=
  ∀ n, P13796929062847435871.a n = (A005836 (n + 1) : ℚ)

end A005836

/-! ## A005836.P7855131815191545799

`(∑[and(n, -n)^log2(3)]+n)/2`
-/

namespace A005836.P7855131815191545799
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2

end

end A005836.P7855131815191545799

namespace A005836

/-- `(∑[and(n, -n)^log2(3)]+n)/2` -/
def P7855131815191545799.Spec : Prop :=
  ∀ n, P7855131815191545799.a n = (A005836 (n + 1) : ℝ)

end A005836

/-! ## A005836.P9081769182619048784

`∑[3*a(floor(n/2))-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A005836.P9081769182619048784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005836.P9081769182619048784

namespace A005836

/-- `∑[3*a(floor(n/2))-a(n-1)]` -/
def P9081769182619048784.Spec : Prop :=
  ∀ n, P9081769182619048784.a n = A005836 (n + 1)

end A005836

/-! ## A005836.P6845824872852451580

`floor(A074938(n)/3)`
-/

namespace A005836.P6845824872852451580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074938 n : ℚ) / 3⌋

end

end A005836.P6845824872852451580

namespace A005836

/-- `floor(A074938(n)/3)` -/
def P6845824872852451580.Spec : Prop :=
  ∀ n, P6845824872852451580.a n = A005836 (n + 1)

end A005836

/-! ## A005836.P911356652779898888

`floor(A074939(n)/3)`
-/

namespace A005836.P911356652779898888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074939 n : ℚ) / 3⌋

end

end A005836.P911356652779898888

namespace A005836

/-- `floor(A074939(n)/3)` -/
def P911356652779898888.Spec : Prop :=
  ∀ n, P911356652779898888.a n = A005836 (n + 1)

end A005836

/-! ## A005836.P8647833433286302522

`A033164(n+1)-4`
-/

namespace A005836.P8647833433286302522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033164 (n + 1) - 4

end

end A005836.P8647833433286302522

namespace A005836

/-- `A033164(n+1)-4` -/
def P8647833433286302522.Spec : Prop :=
  ∀ n, P8647833433286302522.a n = A005836 (n + 1)

end A005836

/-! ## A005836.P9068029948906631152

`(A091311(n)+n)/2`
-/

namespace A005836.P9068029948906631152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091311 n + (n : ℤ) : ℚ) / 2

end

end A005836.P9068029948906631152

namespace A005836

/-- `(A091311(n)+n)/2` -/
def P9068029948906631152.Spec : Prop :=
  ∀ n, P9068029948906631152.a n = (A005836 (n + 1) : ℚ)

end A005836

/-! ## A005836.P13349777719428360642

`floor(A191106(n+1)/2)`
-/

namespace A005836.P13349777719428360642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191106 (n + 1) : ℚ) / 2⌋

end

end A005836.P13349777719428360642

namespace A005836

/-- `floor(A191106(n+1)/2)` -/
def P13349777719428360642.Spec : Prop :=
  ∀ n, P13349777719428360642.a n = A005836 (n + 1)

end A005836

/-! ## A005836.P8862351744240565424

`floor(A191107(n+1)/3)`
-/

namespace A005836.P8862351744240565424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191107 (n + 1) : ℚ) / 3⌋

end

end A005836.P8862351744240565424

namespace A005836

/-- `floor(A191107(n+1)/3)` -/
def P8862351744240565424.Spec : Prop :=
  ∀ n, P8862351744240565424.a n = A005836 (n + 1)

end A005836

/-! ## A005836.P12330044470312809081

`(∑[A061393(n)]-1)/2`
-/

namespace A005836.P12330044470312809081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A005836.P12330044470312809081

namespace A005836

/-- `(∑[A061393(n)]-1)/2` -/
def P12330044470312809081.Spec : Prop :=
  ∀ n, P12330044470312809081.a n = (A005836 (n + 1) : ℚ)

end A005836

/-! ## A005836.P4827140964103416567

`(A191108(n+1)-1)/4`
-/

namespace A005836.P4827140964103416567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191108 (n + 1) - 1 : ℚ) / 4

end

end A005836.P4827140964103416567

namespace A005836

/-- `(A191108(n+1)-1)/4` -/
def P4827140964103416567.Spec : Prop :=
  ∀ n, P4827140964103416567.a n = (A005836 (n + 1) : ℚ)

end A005836

/-! ## A005836.P16546997933697072701

`∪[A074938(n), A074939(n)]`
-/

namespace A005836.P16546997933697072701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074939 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005836.P16546997933697072701

namespace A005836

/-- `∪[A074938(n), A074939(n)]` -/
def P16546997933697072701.Spec : Prop :=
  ∀ n, (P16546997933697072701.a n : ℤ) = A005836 (n + 1)

end A005836

/-! ## A005836.P2625621289158255465

`A004793(n+1)-A000034(n)`
-/

namespace A005836.P2625621289158255465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) - A000034 n

end

end A005836.P2625621289158255465

namespace A005836

/-- `A004793(n+1)-A000034(n)` -/
def P2625621289158255465.Spec : Prop :=
  ∀ n, P2625621289158255465.a n = A005836 (n + 1)

end A005836

/-! ## A005836.P6424856345413603308

`A033160(n+1)-A010693(n)`
-/

namespace A005836.P6424856345413603308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (n + 1) - A010693 n

end

end A005836.P6424856345413603308

namespace A005836

/-- `A033160(n+1)-A010693(n)` -/
def P6424856345413603308.Spec : Prop :=
  ∀ n, P6424856345413603308.a n = A005836 (n + 1)

end A005836

/-! ## A005836.P10302298591318189675

`A033163(n+1)-A010702(n)`
-/

namespace A005836.P10302298591318189675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033163 (n + 1) - A010702 n

end

end A005836.P10302298591318189675

namespace A005836

/-- `A033163(n+1)-A010702(n)` -/
def P10302298591318189675.Spec : Prop :=
  ∀ n, P10302298591318189675.a n = A005836 (n + 1)

end A005836

/-! ## A005836.P4159647744567665580

`A186776(n+1)-A000035(n)`
-/

namespace A005836.P4159647744567665580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186776 (n + 1) - A000035 n

end

end A005836.P4159647744567665580

namespace A005836

/-- `A186776(n+1)-A000035(n)` -/
def P4159647744567665580.Spec : Prop :=
  ∀ n, P4159647744567665580.a n = A005836 (n + 1)

end A005836

/-!
# A005837: Lexicographically earliest increasing sequence of positive numbers that contains no 4-term arithmetic progression.

The programs for A005837, there is no canonical definition to state claims against.
-/

/-! ## A005837.P14149154880985341302

`A005839(n+1)+1`
-/

namespace A005837.P14149154880985341302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005839 (n + 1) + 1

end

end A005837.P14149154880985341302

/-! ## A005837.P7979581033253535472

`eq[0, A276205(n)]+1`
-/

namespace A005837.P7979581033253535472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005837.P7979581033253535472

/-! ## A005837.P1278940117532610666

`eq[1, A322286(n+1)]+1`
-/

namespace A005837.P1278940117532610666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322286 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005837.P1278940117532610666

/-! ## A005837.P14016234163800676805

`record[n+1-A130481(n)*A276205(n)]`
-/

namespace A005837.P14016234163800676805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A130481 n * A276205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005837.P14016234163800676805

/-! ## A005837.P3222905711693135063

`record[n+1-A106349(n+1)*A276205(n)]`
-/

namespace A005837.P3222905711693135063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A106349 (n + 1) * A276205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005837.P3222905711693135063

/-! ## A005837.P3041448030789397135

`record[n+1-A232241(n+1)*A276205(n)]`
-/

namespace A005837.P3041448030789397135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A232241 (n + 1) * A276205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005837.P3041448030789397135

/-! ## A005837.P10876325513075701319

`record[n+1-A100684(n)*A276205(n)]`
-/

namespace A005837.P10876325513075701319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A100684 n * A276205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005837.P10876325513075701319

/-!
# A005838: Lexicographically earliest increasing sequence of positive numbers that contains no arithmetic progression of length 6.

The programs for A005838, there is no canonical definition to state claims against.
-/

/-! ## A005838.P17519229536136006157

`A020656(n+1)+1`
-/

namespace A005838.P17519229536136006157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020656 (n + 1) + 1

end

end A005838.P17519229536136006157

/-!
# A005839: Lexicographically earliest increasing nonnegative sequence that contains no 4-term arithmetic progression.

The programs for A005839, there is no canonical definition to state claims against.
-/

/-! ## A005839.P16807889288612937514

`A005837(n+1)-1`
-/

namespace A005839.P16807889288612937514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005837 (n + 1) - 1

end

end A005839.P16807889288612937514

/-! ## A005839.P10195219374805306652

`A092152(A065287(gcd(n, n+1)))+A005837(n+1)`
-/

namespace A005839.P10195219374805306652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (A065287 (Nat.gcd n (n + 1))).toNat + A005837 (n + 1)

end

end A005839.P10195219374805306652

/-! ## A005839.P3268972629898037464

`(A005837(n+1)+A005836(n+1))%A003278(n+1)`
-/

namespace A005839.P3268972629898037464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005837 (n + 1) + A005836 (n + 1)) (A003278 (n + 1))

end

end A005839.P3268972629898037464

/-! ## A005839.P13120888399308606857

`eq[0, A276205(n)]`
-/

namespace A005839.P13120888399308606857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005839.P13120888399308606857

/-! ## A005839.P8943800483926786976

`lt[A276205(n), A001222(A020639(n+2))]`
-/

namespace A005839.P8943800483926786976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276205 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020639 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A005839.P8943800483926786976

/-! ## A005839.P9599555332395982394

`A355827(A000040(n+1))+A005837(n+1)`
-/

namespace A005839.P9599555332395982394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355827 (A000040 (n + 1)).toNat + A005837 (n + 1)

end

end A005839.P9599555332395982394

/-! ## A005839.P11741353063375371840

`eq[1, A322286(n+1)]`
-/

namespace A005839.P11741353063375371840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322286 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005839.P11741353063375371840

/-! ## A005839.P7894985267443829034

`A023443(A005837(n+1))`
-/

namespace A005839.P7894985267443829034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A005837 (n + 1)).toNat

end

end A005839.P7894985267443829034

/-! ## A005839.P17860208967647029776

`record[n-A130481(n)*A276205(n)]`
-/

namespace A005839.P17860208967647029776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A130481 n * A276205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005839.P17860208967647029776

/-! ## A005839.P11812668710088333651

`record[n-A106349(n+1)*A276205(n)]`
-/

namespace A005839.P11812668710088333651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A106349 (n + 1) * A276205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005839.P11812668710088333651

/-! ## A005839.P6113054116526972225

`record[n-A232241(n+1)*A276205(n)]`
-/

namespace A005839.P6113054116526972225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A232241 (n + 1) * A276205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005839.P6113054116526972225

/-! ## A005839.P3729013542512702484

`lt[A322286(n+1), A001316(A001316(n))]`
-/

namespace A005839.P3729013542512702484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A005839.P3729013542512702484

/-! ## A005839.P15213997518750948265

`lt[A322286(n+1), A020639(A322292(n+5))]`
-/

namespace A005839.P15213997518750948265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A322292 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A005839.P15213997518750948265

/-! ## A005839.P6584506027675578464

`lt[A322286(n+1), A322312(2*n+1)]`
-/

namespace A005839.P6584506027675578464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322312 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A005839.P6584506027675578464

/-! ## A005839.P6951503793524845909

`record[n-A100684(n)*A276205(n)]`
-/

namespace A005839.P6951503793524845909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A100684 n * A276205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005839.P6951503793524845909

/-! ## A005839.P1191373972343777767

`lt[A322286(n+1), A266256(A071044(3*(n+1)))]`
-/

namespace A005839.P1191373972343777767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 (A071044 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A005839.P1191373972343777767

/-! ## A005839.P16387478070119330629

`record[n/A100684(A276205(n)²)]`
-/

namespace A005839.P16387478070119330629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A100684 (A276205 n ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005839.P16387478070119330629

/-!
# A005840: Expansion of (1-x)*e^x/(2-e^x).

The programs for A005840, there is no canonical definition to state claims against.
-/

/-! ## A005840.P10756384371422185100

`A000629(n)-n*A129062(A000124(n))`
-/

namespace A005840.P10756384371422185100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 n - (n : ℤ) * A129062 (A000124 n).toNat

end

end A005840.P10756384371422185100

/-! ## A005840.P8831575576411664947

`A053525(A028310(n))+A053525(A254667(n))`
-/

namespace A005840.P8831575576411664947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053525 (A028310 n).toNat + A053525 (A254667 n).toNat

end

end A005840.P8831575576411664947

/-! ## A005840.P3372806217854434336

`A020639(A219654(n))*A053525(A254667(n))`
-/

namespace A005840.P3372806217854434336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A219654 n).toNat * A053525 (A254667 n).toNat

end

end A005840.P3372806217854434336

/-! ## A005840.P16096494230624292813

`A053525(A233583(n+1))+A053525(A028310(n))`
-/

namespace A005840.P16096494230624292813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053525 (A233583 (n + 1)).toNat + A053525 (A028310 n).toNat

end

end A005840.P16096494230624292813

/-! ## A005840.P14737324299837200791

`A000034(A019428(n))*A053525(A233583(n+1))`
-/

namespace A005840.P14737324299837200791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A019428 n).toNat * A053525 (A233583 (n + 1)).toNat

end

end A005840.P14737324299837200791

/-! ## A005840.P9839755990449246618

`A006530(A003642(n+1))*A053525(A254667(n))`
-/

namespace A005840.P9839755990449246618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003642 (n + 1)).toNat * A053525 (A254667 n).toNat

end

end A005840.P9839755990449246618

/-! ## A005840.P4866707124169720301

`A003642(A003642(n+1)²)*A053525(A254667(n))`
-/

namespace A005840.P4866707124169720301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003642 (A003642 (n + 1) ^ 2).toNat * A053525 (A254667 n).toNat

end

end A005840.P4866707124169720301

/-!
# A005842: a(n) = minimal integer m such that an m X m square contains non-overlapping squares of sides 1, ..., n (some values are only conjectures).

The programs for A005842, there is no canonical definition to state claims against.
-/

/-! ## A005842.P5307154922962825629

`∑[A055642(A276086(n+1)+A276086(n+6))]`
-/

namespace A005842.P5307154922962825629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A276086 (n + 1) + A276086 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005842.P5307154922962825629

/-! ## A005842.P9472310246651131857

`∑[A043562(A006368(A281791(n)))]`
-/

namespace A005842.P9472310246651131857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A006368 (A281791 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005842.P9472310246651131857

/-! ## A005842.P210480483927986640

`∑[A043568(record[A070847(n+1)])]`
-/

namespace A005842.P210480483927986640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070847 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005842.P210480483927986640

/-! ## A005842.P16023285276575131737

`∑[A055642(A226874(2*n+1)+A005153(3*(n+1)))]`
-/

namespace A005842.P16023285276575131737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A226874 (2 * n + 1) + A005153 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005842.P16023285276575131737

/-! ## A005842.P3704086229532121174

`∑[∑[A353494(A015219(n))]]`
-/

namespace A005842.P3704086229532121174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (A015219 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005842.P3704086229532121174

/-!
# A005843: The nonnegative even numbers: a(n) = 2n.

The programs for A005843, the canonical program `A005843.P3167286115683555970` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005843 has offset 0).

The definition of A005843 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n` (program `A005843.P3167286115683555970`, by `A005843.P3167286115683555970.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005843.P3167286115683555970

`2*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005843

/-- `2*n` -/
def P3167286115683555970.Spec : Prop :=
  ∀ n, (P3167286115683555970.a n : ℤ) = A005843 n

theorem P3167286115683555970.correct : P3167286115683555970.Spec := by
  intro n
  simp only [A005843]

end A005843

/-!
# A005845: Bruckman-Lucas pseudoprimes: k | (L_k - 1), where k is composite and L_k = Lucas numbers A000032.

The programs for A005845, there is no canonical definition to state claims against.
-/

/-! ## A005845.P15417538539729466506

`∩[A335670(n+1), A335672(n+1)]`
-/

namespace A005845.P15417538539729466506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005845.P15417538539729466506

/-!
# A005846: Primes of the form k^2 + k + 41.

The programs for A005846, there is no canonical definition to state claims against.
-/

/-! ## A005846.P24899937092047781

`A056561(n+1)²+A056561(n+1)+41`
-/

namespace A005846.P24899937092047781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056561 (n + 1) ^ 2 + A056561 (n + 1) + 41

end

end A005846.P24899937092047781

/-! ## A005846.P11868696740171636838

`A202018(A056561(n+1))`
-/

namespace A005846.P11868696740171636838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (A056561 (n + 1)).toNat

end

end A005846.P11868696740171636838

/-! ## A005846.P9531790222684861334

`A202018(A002837(n+2)-1)`
-/

namespace A005846.P9531790222684861334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (A002837 (n + 2) - 1).toNat

end

end A005846.P9531790222684861334

/-! ## A005846.P10713847357604268733

`p?[∑[2*n]+41]`
-/

namespace A005846.P10713847357604268733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A005846.P10713847357604268733

/-! ## A005846.P14347184786492438350

`or(1, p?[n²+41+n])`
-/

namespace A005846.P14347184786492438350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 41 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A005846.P14347184786492438350

/-! ## A005846.P17910371392357823645

`record[∑{p}[∑[2*n]+41, #]]`
-/

namespace A005846.P17910371392357823645
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 41

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005846.P17910371392357823645

/-! ## A005846.P12360820513676700157

`∏{p}[p?[A202018(n)], #]`
-/

namespace A005846.P12360820513676700157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A005846.P12360820513676700157

/-! ## A005846.P11717742260959957384

`or(p?[A202018(n)], A202022(n))`
-/

namespace A005846.P11717742260959957384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A202022 n)

end

end A005846.P11717742260959957384

/-! ## A005846.P8452770697239703680

`∩[A257362(n+1), A202018(n)]`
-/

namespace A005846.P8452770697239703680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005846.P8452770697239703680

/-! ## A005846.P18145233147015238747

`∩[A296921(n+1), A202018(n)]`
-/

namespace A005846.P18145233147015238747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005846.P18145233147015238747

/-! ## A005846.P9966999187794662356

`∩[A341790(n+1), A202018(n)]`
-/

namespace A005846.P9966999187794662356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005846.P9966999187794662356

/-! ## A005846.P13666811883101880557

`∩[A257362(n+1), A342253(n+1)]`
-/

namespace A005846.P13666811883101880557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005846.P13666811883101880557

/-! ## A005846.P2863753720629261266

`∩[A296921(n+1), A342253(n+1)]`
-/

namespace A005846.P2863753720629261266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005846.P2863753720629261266

/-! ## A005846.P10932802121607276254

`∩[A341790(n+1), A342253(n+1)]`
-/

namespace A005846.P10932802121607276254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005846.P10932802121607276254

/-! ## A005846.P848769882444846526

`∩[A045438(n+1), A202018(n)]`
-/

namespace A005846.P848769882444846526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005846.P848769882444846526

/-! ## A005846.P326018575017289584

`∩[A045448(n+1), A202018(n)]`
-/

namespace A005846.P326018575017289584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005846.P326018575017289584

/-! ## A005846.P12199830155235567688

`∩[A042986(n+1), A202018(n)]`
-/

namespace A005846.P12199830155235567688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005846.P12199830155235567688

/-! ## A005846.P7090905295693126915

`∩[A045321(n+1), A202018(n)]`
-/

namespace A005846.P7090905295693126915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005846.P7090905295693126915

/-! ## A005846.P2721410616060367004

`∩[A045346(n+1), A202018(n)]`
-/

namespace A005846.P2721410616060367004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005846.P2721410616060367004

/-! ## A005846.P3258807191926531822

`∩[A045360(n+1), A202018(n)]`
-/

namespace A005846.P3258807191926531822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005846.P3258807191926531822

/-!
# A005847: Imaginary quadratic fields with class number 2 (a finite sequence).

The programs for A005847, there is no canonical definition to state claims against.
-/

/-! ## A005847.P18250856010213728582

`A020725(eq[2, A008966(n+1)*A202084(n+1)])`
-/

namespace A005847.P18250856010213728582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005847.P18250856010213728582

/-! ## A005847.P17612091125444724287

`A065475(eq[2, A008966(n+1)*A202084(n+1)])`
-/

namespace A005847.P17612091125444724287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005847.P17612091125444724287

/-! ## A005847.P16237683204746472822

`A020725(eq[2/A202084(n+1), A008966(n+1)])`
-/

namespace A005847.P16237683204746472822
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A202084 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A005847.P16237683204746472822

/-! ## A005847.P14369246068222051589

`A065475(eq[2/A202084(n+1), A008966(n+1)])`
-/

namespace A005847.P14369246068222051589
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A202084 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A005847.P14369246068222051589

/-! ## A005847.P9506601162836712161

`A020725(eq[2, A069158(n+1)²*A202084(n+1)])`
-/

namespace A005847.P9506601162836712161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1) ^ 2 * A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005847.P9506601162836712161

/-!
# A005848: Cyclotomic fields with class number 1 (or with unique factorization).

The programs for A005848, there is no canonical definition to state claims against.
-/

/-! ## A005848.P3546020622585404237

`record[A283971(n+1)/A061653(n+1)]`
-/

namespace A005848.P3546020622585404237
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283971 (n + 1) : ℚ) / (A061653 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005848.P3546020622585404237

/-! ## A005848.P14913396898987208870

`record[A042965(n+2)/A061494(n+1)]`
-/

namespace A005848.P14913396898987208870
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042965 (n + 2) : ℚ) / (A061494 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005848.P14913396898987208870

/-! ## A005848.P15510523881660827149

`record[A042965(n+2)/A061653(A004772(n+1)+1)]`
-/

namespace A005848.P15510523881660827149
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042965 (n + 2) : ℚ) / (A061653 (A004772 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005848.P15510523881660827149

/-! ## A005848.P13488103173565424681

`eq[0, A151838(A007431(n))]`
-/

namespace A005848.P13488103173565424681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151838 (A007431 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005848.P13488103173565424681

/-! ## A005848.P15978752970034407321

`lt[A249026(n+2), A249010(n)²]`
-/

namespace A005848.P15978752970034407321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249026 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249010 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A005848.P15978752970034407321

/-!
# A005849: Indices of prime Cullen numbers: numbers k such that k*2^k + 1 is prime.

The programs for A005849, there is no canonical definition to state claims against.
-/

/-! ## A005849.P5971856006549836275

`A128193(n)+a(n-1)` with `a(0)=1`
-/

namespace A005849.P5971856006549836275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128193 n + a (n - 1)

end

end A005849.P5971856006549836275

/-! ## A005849.P2909389643409019130

`∑[A128193(n+1)]+1-A128193(n+1)`
-/

namespace A005849.P2909389643409019130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A128193 (n + 1)

end

end A005849.P2909389643409019130

/-!
# A005850: Primes p such that the NSW number A002315((p-1)/2) is prime.

The programs for A005850, there is no canonical definition to state claims against.
-/

/-! ## A005850.P15448396412497209969

`p?[A099088(n+2)]`
-/

namespace A005850.P15448396412497209969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099088 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005850.P15448396412497209969

/-! ## A005850.P2134199709964565621

`2*A113501(n+1)+1`
-/

namespace A005850.P2134199709964565621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113501 (n + 1) + 1

end

end A005850.P2134199709964565621

/-! ## A005850.P3241736095518691013

`p?[record[A099088(A012257(n))]]`
-/

namespace A005850.P3241736095518691013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099088 (A012257 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005850.P3241736095518691013

/-! ## A005850.P3999940069402866953

`A113501(n+1)+A136406(A136406(n+1))+A113501(n+1)`
-/

namespace A005850.P3999940069402866953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113501 (n + 1) + (A136406 (A136406 (n + 1)).toNat + A113501 (n + 1))

end

end A005850.P3999940069402866953

/-! ## A005850.P5411219128402666595

`A070846(A113501(n+1))`
-/

namespace A005850.P5411219128402666595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A113501 (n + 1)).toNat

end

end A005850.P5411219128402666595

/-!
# A005854: The coding-theoretic function A(n,10,6).

The programs for A005854, there is no canonical definition to state claims against.
-/

/-! ## A005854.P7179346024084563788

`A104307(A188674(n)+char[A065883(n+1)])`
-/

namespace A005854.P7179346024084563788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104307 (A188674 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A005854.P7179346024084563788

/-!
# A005858: The coding-theoretic function A(n,12,8).

The programs for A005858, there is no canonical definition to state claims against.
-/

/-! ## A005858.P4707427830138871546

`A218379(A218379(2*(n+2)))+char[12]`
-/

namespace A005858.P4707427830138871546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218379 (A218379 (2 * (n + 2))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A005858.P4707427830138871546

/-! ## A005858.P11228605431044992608

`A029072(A029158(n)+A029115(n))`
-/

namespace A005858.P11228605431044992608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029072 (A029158 n + A029115 n).toNat

end

end A005858.P11228605431044992608

/-! ## A005858.P9516707485097556472

`A029114(A029156(n)+A029118(n+4))`
-/

namespace A005858.P9516707485097556472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 (A029156 n + A029118 (n + 4)).toNat

end

end A005858.P9516707485097556472

/-! ## A005858.P2153568546511537275

`ceil(A094103(n+1)/A003313(A018917(n)))`
-/

namespace A005858.P2153568546511537275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094103 (n + 1) : ℚ) / (A003313 (A018917 n).toNat : ℚ)⌉

end

end A005858.P2153568546511537275

/-! ## A005858.P5425944423614987516

`or(A218379(A218379(2*(n+2))), A281083(n+4))`
-/

namespace A005858.P5425944423614987516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A218379 (A218379 (2 * (n + 2))).toNat) (A281083 (n + 4))

end

end A005858.P5425944423614987516

/-!
# A005864: The coding-theoretic function A(n,4).

The programs for A005864, there is no canonical definition to state claims against.
-/

/-! ## A005864.P18266898414691390403

`A125508(A000009(n)%A134596(n+1))`
-/

namespace A005864.P18266898414691390403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125508 (Int.tmod (A000009 n) (A134596 (n + 1))).toNat

end

end A005864.P18266898414691390403

/-! ## A005864.P6338949801574023619

`A337225(A094539(n))`
-/

namespace A005864.P6338949801574023619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337225 (A094539 n).toNat

end

end A005864.P6338949801574023619

/-! ## A005864.P12945668166816751895

`A003002(A370589(n)+1)`
-/

namespace A005864.P12945668166816751895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A370589 n + 1).toNat

end

end A005864.P12945668166816751895

/-! ## A005864.P9024796338087499688

`A327790(A200906(n+2))`
-/

namespace A005864.P9024796338087499688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327790 (A200906 (n + 2)).toNat

end

end A005864.P9024796338087499688

/-! ## A005864.P11931662797096446285

`∏{e}[A373340(n), A014681(#)]`
-/

namespace A005864.P11931662797096446285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014681 (Nat.factorization (f1 n).natAbs p)

end

end A005864.P11931662797096446285

/-!
# A005866: The coding-theoretic function A(n,8).

The programs for A005866, there is no canonical definition to state claims against.
-/

/-! ## A005866.P4136804040465011362

`∏[round(atan(A163270(2*(n+1))))]`
-/

namespace A005866.P4136804040465011362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A163270 (2 * (n + 1)) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A005866.P4136804040465011362

/-! ## A005866.P7443881166776978021

`∏[A053150(A003000(n))]`
-/

namespace A005866.P7443881166776978021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A003000 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A005866.P7443881166776978021

/-! ## A005866.P3731440845128743256

`∏[A053150(A063886(n))]`
-/

namespace A005866.P3731440845128743256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A063886 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A005866.P3731440845128743256

/-! ## A005866.P3431720482025794894

`∏[A052343(∏[A086617(n)])]`
-/

namespace A005866.P3431720482025794894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086617 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A005866.P3431720482025794894

/-! ## A005866.P6086141055218372190

`∏[A157196(∏[A278984(n+1)])]`
-/

namespace A005866.P6086141055218372190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157196 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A005866.P6086141055218372190

/-!
# A005867: a(0) = 1; for n > 0, a(n) = (prime(n)-1)*a(n-1).

The programs for A005867, there is no canonical definition to state claims against.
-/

/-! ## A005867.P14929612054957300917

`A058251(n)/A060753(n+1)`
-/

namespace A005867.P14929612054957300917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058251 n : ℚ) / (A060753 (n + 1) : ℚ)

end

end A005867.P14929612054957300917

/-! ## A005867.P14397644126456260631

`A000010(A002110(n))`
-/

namespace A005867.P14397644126456260631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002110 n).toNat

end

end A005867.P14397644126456260631

/-! ## A005867.P1781126723615428128

`A057857(n)-n`
-/

namespace A005867.P1781126723615428128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057857 n - (n : ℤ)

end

end A005867.P1781126723615428128

/-! ## A005867.P4187869492612933865

`a(n-1)*A006093(n)` with `a(0)=1`
-/

namespace A005867.P4187869492612933865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A006093 n

end

end A005867.P4187869492612933865

/-! ## A005867.P17254119669258632494

`a(n-1)*A039915(n)` with `a(0)=1, a(1)=1`
-/

namespace A005867.P17254119669258632494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A039915 n

end

end A005867.P17254119669258632494

/-! ## A005867.P17549926988402335391

`∏[A162753(2*n+1)-1]`
-/

namespace A005867.P17549926988402335391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A005867.P17549926988402335391

/-! ## A005867.P6401047731618230103

`∏[abs(1-comp[A018252(n+1)])]`
-/

namespace A005867.P6401047731618230103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A005867.P6401047731618230103

/-! ## A005867.P647413364839099534

`(A000040(n)-1)*a(n-1)` with `a(0)=1`
-/

namespace A005867.P647413364839099534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000040 n - 1) * a (n - 1)

end

end A005867.P647413364839099534

/-! ## A005867.P16925853511178387299

`∏[A000040(round(sqrt(n²+1)))-1]`
-/

namespace A005867.P16925853511178387299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A005867.P16925853511178387299

/-! ## A005867.P12654009191270637650

`a(n-1)*lt[A000005(n+1), 3]` with `a(0)=1`
-/

namespace A005867.P12654009191270637650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A005867.P12654009191270637650

/-!
# A005868: Molien series for 3-dimensional representation of Z2 X (double cover of A6), u.g.g.r. # 27 of Shephard and Todd.

The programs for A005868, the canonical program `A005868.P4547060795228377744` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005868 has offset 0).

The definition of A005868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005868.P4547060795228377744

`floor((n²+(1+15*(-1)^n)*n+80)/80)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005868

/-- `floor((n²+(1+15*(-1)^n)*n+80)/80)` -/
def P4547060795228377744.Spec : Prop :=
  ∀ n, P4547060795228377744.a n = A005868 n

theorem P4547060795228377744.correct : P4547060795228377744.Spec := by
  intro n
  simp only [A005868]

end A005868

/-! ## A005868.P3262190671673404077

`A025802(n)-A004526(A057979(n))`
-/

namespace A005868.P3262190671673404077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025802 n - A004526 (A057979 n).toNat

end

end A005868.P3262190671673404077

namespace A005868

/-- `A025802(n)-A004526(A057979(n))` -/
def P3262190671673404077.Spec : Prop :=
  ∀ n, P3262190671673404077.a n = A005868 n

end A005868

/-! ## A005868.P16557122013559789749

`A025802(n)-A002265(A093178(n))`
-/

namespace A005868.P16557122013559789749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025802 n - A002265 (A093178 n).toNat

end

end A005868.P16557122013559789749

namespace A005868

/-- `A025802(n)-A002265(A093178(n))` -/
def P16557122013559789749.Spec : Prop :=
  ∀ n, P16557122013559789749.a n = A005868 n

end A005868

/-! ## A005868.P6189122732443671696

`A025802(n)-A130722(A124625(n))`
-/

namespace A005868.P6189122732443671696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025802 n - A130722 (A124625 n).toNat

end

end A005868.P6189122732443671696

namespace A005868

/-- `A025802(n)-A130722(A124625(n))` -/
def P6189122732443671696.Spec : Prop :=
  ∀ n, P6189122732443671696.a n = A005868 n

end A005868

/-! ## A005868.P3746992246347198981

`A033638(A028242(n))-A008616(A000124(n))`
-/

namespace A005868.P3746992246347198981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A028242 n).toNat - A008616 (A000124 n).toNat

end

end A005868.P3746992246347198981

namespace A005868

/-- `A033638(A028242(n))-A008616(A000124(n))` -/
def P3746992246347198981.Spec : Prop :=
  ∀ n, P3746992246347198981.a n = A005868 n

end A005868

/-!
# A005869: Theta series of b.c.c. lattice with respect to short edge.

The programs for A005869, there is no canonical definition to state claims against.
-/

/-! ## A005869.P17692847941596417293

`2*A008443(n)`
-/

namespace A005869.P17692847941596417293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008443 n

end

end A005869.P17692847941596417293

/-! ## A005869.P476380219070773172

`A005886(n)/2`
-/

namespace A005869.P476380219070773172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005886 n : ℚ) / 2

end

end A005869.P476380219070773172

/-! ## A005869.P4075817471799151218

`A001281(A005886(n))`
-/

namespace A005869.P4075817471799151218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005886 n).toNat

end

end A005869.P4075817471799151218

/-! ## A005869.P18234801973056684476

`A004277(A008443(n))`
-/

namespace A005869.P18234801973056684476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008443 n).toNat

end

end A005869.P18234801973056684476

/-! ## A005869.P15863716133505473015

`A002265(2*A005886(n))`
-/

namespace A005869.P15863716133505473015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A005886 n).toNat

end

end A005869.P15863716133505473015

/-! ## A005869.P18073706523561743582

`A002265(A005886(n)+A005886(n)+1)`
-/

namespace A005869.P18073706523561743582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A005886 n + (A005886 n + 1)).toNat

end

end A005869.P18073706523561743582

/-! ## A005869.P13492842638480087921

`A005886(n)-(A008443(n)+A008443(n))`
-/

namespace A005869.P13492842638480087921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005886 n - (A008443 n + A008443 n)

end

end A005869.P13492842638480087921

/-! ## A005869.P13008183484024336161

`2*A238872(Δ[n²])`
-/

namespace A005869.P13008183484024336161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238872 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005869.P13008183484024336161

/-! ## A005869.P18380235903753876701

`A005843(A238872(2*n+1))`
-/

namespace A005869.P18380235903753876701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A238872 (2 * n + 1)).toNat

end

end A005869.P18380235903753876701

/-! ## A005869.P7844732868926678654

`A005878(n)/4`
-/

namespace A005869.P7844732868926678654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005878 n : ℚ) / 4

end

end A005869.P7844732868926678654

/-! ## A005869.P11299748038443516972

`A002265(A005878(n))`
-/

namespace A005869.P11299748038443516972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A005878 n).toNat

end

end A005869.P11299748038443516972

/-! ## A005869.P10857763517257096794

`A026730(2*A005878(n))`
-/

namespace A005869.P10857763517257096794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (2 * A005878 n).toNat

end

end A005869.P10857763517257096794

/-! ## A005869.P2019098834056771800

`A072068(A016825(n))/2`
-/

namespace A005869.P2019098834056771800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072068 (A016825 n).toNat : ℚ) / 2

end

end A005869.P2019098834056771800

/-! ## A005869.P7625862823945296955

`A072068(A130824(n+1))/2`
-/

namespace A005869.P7625862823945296955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072068 (A130824 (n + 1)).toNat : ℚ) / 2

end

end A005869.P7625862823945296955

/-! ## A005869.P4754820984899855557

`A246811(A008586(n)+1)/2`
-/

namespace A005869.P4754820984899855557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246811 (A008586 n + 1).toNat : ℚ) / 2

end

end A005869.P4754820984899855557

/-! ## A005869.P3960287119619368901

`A072068(A111284(n+2))/2`
-/

namespace A005869.P3960287119619368901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072068 (A111284 (n + 2)).toNat : ℚ) / 2

end

end A005869.P3960287119619368901

/-! ## A005869.P9414990460402423166

`2*A292511(2*n)`
-/

namespace A005869.P9414990460402423166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292511 (2 * n)

end

end A005869.P9414990460402423166

/-! ## A005869.P6684161137468868976

`A005843(A292511(2*n))`
-/

namespace A005869.P6684161137468868976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A292511 (2 * n)).toNat

end

end A005869.P6684161137468868976

/-! ## A005869.P14099313450731919540

`2*A005794(8*n+3)`
-/

namespace A005869.P14099313450731919540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005794 (8 * n + 3)

end

end A005869.P14099313450731919540

/-! ## A005869.P16751025772704151219

`A005925(8*n+3)/2`
-/

namespace A005869.P16751025772704151219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005925 (8 * n + 3) : ℚ) / 2

end

end A005869.P16751025772704151219

/-!
# A005870: Numbers represented by hexagonal close-packing.

The programs for A005870, there is no canonical definition to state claims against.
-/

/-! ## A005870.P16906416124314713350

`lt[0, A004012(n)]`
-/

namespace A005870.P16906416124314713350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A005870.P16906416124314713350

/-! ## A005870.P15546756198704889316

`eq[2, A043529(2*A004012(n))]`
-/

namespace A005870.P15546756198704889316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (2 * A004012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005870.P15546756198704889316

/-! ## A005870.P1500564540603910648

`eq[A000038(n), A277928(A004012(n))]`
-/

namespace A005870.P1500564540603910648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277928 (A004012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A005870.P1500564540603910648

/-! ## A005870.P12439926000742143164

`eq[A000038(n+1), A000038(A004012(n))]`
-/

namespace A005870.P12439926000742143164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A004012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A005870.P12439926000742143164

/-! ## A005870.P14177235324150858392

`eq[1, A002828(A004012(n)²)]`
-/

namespace A005870.P14177235324150858392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A004012 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005870.P14177235324150858392

/-! ## A005870.P325100969356945327

`eq[1, A089309(A004012(n)²)]`
-/

namespace A005870.P325100969356945327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A004012 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005870.P325100969356945327

/-! ## A005870.P16353889199237795475

`eq[0, A000038(A004012(n)²)]`
-/

namespace A005870.P16353889199237795475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A004012 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005870.P16353889199237795475

/-! ## A005870.P6526691328508348426

`eq[2, A000122(A004012(n)²)]`
-/

namespace A005870.P6526691328508348426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A004012 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005870.P6526691328508348426

/-!
# A005871: Theta series of hexagonal close-packing with respect to edge within layer.

The programs for A005871, there is no canonical definition to state claims against.
-/

/-! ## A005871.P5957512007681449580

`2*A045838(n)`
-/

namespace A005871.P5957512007681449580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045838 n

end

end A005871.P5957512007681449580

/-! ## A005871.P7361010103345832704

`A005843(A045838(n))`
-/

namespace A005871.P7361010103345832704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A045838 n).toNat

end

end A005871.P7361010103345832704

/-! ## A005871.P9697116196782767426

`A045838(n)/ratio[A000034(n)]`
-/

namespace A005871.P9697116196782767426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045838 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A005871.P9697116196782767426

/-! ## A005871.P3315655713196803766

`Δ[A014206(n)]%(1-A045838(n)+n)`
-/

namespace A005871.P3315655713196803766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (1 - A045838 n + (n : ℤ))

end

end A005871.P3315655713196803766

/-! ## A005871.P14433403004942773090

`A045838(n)+A045838(A093178(n))`
-/

namespace A005871.P14433403004942773090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045838 n + A045838 (A093178 n).toNat

end

end A005871.P14433403004942773090

/-! ## A005871.P13233882800599234959

`A045838(A233583(n+1))+A045838(n)`
-/

namespace A005871.P13233882800599234959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045838 (A233583 (n + 1)).toNat + A045838 n

end

end A005871.P13233882800599234959

/-! ## A005871.P9717612608849654395

`A045838(n)+A045838(A014206(n))+A045838(n)`
-/

namespace A005871.P9717612608849654395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045838 n + (A045838 (A014206 n).toNat + A045838 n)

end

end A005871.P9717612608849654395

/-!
# A005872: Theta series of hexagonal close-packing with respect to octahedral hole.

The programs for A005872, there is no canonical definition to state claims against.
-/

/-! ## A005872.P1369791424760303705

`6*A045827(n)`
-/

namespace A005872.P1369791424760303705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A045827 n

end

end A005872.P1369791424760303705

/-! ## A005872.P4002252614859733142

`A008588(A045827(n))`
-/

namespace A005872.P4002252614859733142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A045827 n).toNat

end

end A005872.P4002252614859733142

/-! ## A005872.P13513556840676149915

`A016945(A045827(n)+n)-A016945(n)`
-/

namespace A005872.P13513556840676149915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (A045827 n + (n : ℤ)).toNat - A016945 n

end

end A005872.P13513556840676149915

/-! ## A005872.P15427868215367014605

`A016969(A045827(n)+n)-A016969(n)`
-/

namespace A005872.P15427868215367014605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A045827 n + (n : ℤ)).toNat - A016969 n

end

end A005872.P15427868215367014605

/-! ## A005872.P7841103196287458706

`A016945(n)-A016945(n-A045827(n))`
-/

namespace A005872.P7841103196287458706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n - A016945 ((n : ℤ) - A045827 n).toNat

end

end A005872.P7841103196287458706

/-! ## A005872.P3803140622984106147

`A016969(n)-A016969(n-A045827(n))`
-/

namespace A005872.P3803140622984106147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - A016969 ((n : ℤ) - A045827 n).toNat

end

end A005872.P3803140622984106147

/-! ## A005872.P18087468587489379245

`and(1, n)*A004012(2*n)`
-/

namespace A005872.P18087468587489379245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A004012 (2 * n)

end

end A005872.P18087468587489379245

/-! ## A005872.P3450706494618002767

`A004012(A266303(n))`
-/

namespace A005872.P3450706494618002767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004012 (A266303 n).toNat

end

end A005872.P3450706494618002767

/-! ## A005872.P4199004451970972068

`A004012(A266722(n))`
-/

namespace A005872.P4199004451970972068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004012 (A266722 n).toNat

end

end A005872.P4199004451970972068

/-! ## A005872.P5885707727127961614

`A004012(A266595(n+1))`
-/

namespace A005872.P5885707727127961614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004012 (A266595 (n + 1)).toNat

end

end A005872.P5885707727127961614

/-! ## A005872.P8096568874891164253

`A004012(A267354(n+1))`
-/

namespace A005872.P8096568874891164253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004012 (A267354 (n + 1)).toNat

end

end A005872.P8096568874891164253

/-! ## A005872.P1752891300397057220

`A004012(2*A093178(n))`
-/

namespace A005872.P1752891300397057220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004012 (2 * A093178 n).toNat

end

end A005872.P1752891300397057220

/-!
# A005873: Theta series of hexagonal close-packing with respect to tetrahedral hole.

The programs for A005873, there is no canonical definition to state claims against.
-/

/-! ## A005873.P8412472773902647997

`n%2*A217511(n)`
-/

namespace A005873.P8412472773902647997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A217511 n

end

end A005873.P8412472773902647997

/-! ## A005873.P9182112315514533915

`A217511(gcd(n, C(xor(1, n), n)))`
-/

namespace A005873.P9182112315514533915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217511 (Nat.gcd n (Nat.choose (Nat.xor 1 n) n))

end

end A005873.P9182112315514533915

/-! ## A005873.P6223547837803490204

`A217511(xor(n, C(xor(1, n), n)))`
-/

namespace A005873.P6223547837803490204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217511 (Nat.xor n (Nat.choose (Nat.xor 1 n) n))

end

end A005873.P6223547837803490204

/-! ## A005873.P478498125491988936

`A217511(char[and(n, -3)]+xor(1, n))`
-/

namespace A005873.P478498125491988936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217511 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + Nat.xor 1 n)

end

end A005873.P478498125491988936

/-! ## A005873.P17177572034770025736

`A217511((-1)^∑[n]+(n+1)/4^val(n+1, 4))`
-/

namespace A005873.P17177572034770025736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217511 (SequenceMachineLib.roundAway (((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) + (n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))).toNat

end

end A005873.P17177572034770025736

/-! ## A005873.P7715830440693219243

`A217511(A093178(n))`
-/

namespace A005873.P7715830440693219243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217511 (A093178 n).toNat

end

end A005873.P7715830440693219243

/-! ## A005873.P17068040170871861700

`A217511(A261671(n))`
-/

namespace A005873.P17068040170871861700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217511 (A261671 n).toNat

end

end A005873.P17068040170871861700

/-! ## A005873.P6949159771047628004

`A217511(A381764(n+1))`
-/

namespace A005873.P6949159771047628004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217511 (A381764 (n + 1)).toNat

end

end A005873.P6949159771047628004

/-! ## A005873.P12882774999731344303

`A000035(n)*A217511(n)`
-/

namespace A005873.P12882774999731344303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A217511 n

end

end A005873.P12882774999731344303

/-! ## A005873.P4665778124628185326

`A007877(n)*A217511(n)`
-/

namespace A005873.P4665778124628185326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n * A217511 n

end

end A005873.P4665778124628185326

/-!
# A005875: Theta series of simple cubic lattice; also number of ways of writing a nonnegative integer n as a sum of 3 squares (zero being allowed).

The programs for A005875, there is no canonical definition to state claims against.
-/

/-! ## A005875.P5417922119534628026

`(-1)^n*A213384(n)`
-/

namespace A005875.P5417922119534628026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A213384 n

end

end A005875.P5417922119534628026

/-! ## A005875.P15056924469817889537

`A014455(2*n)`
-/

namespace A005875.P15056924469817889537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (2 * n)

end

end A005875.P15056924469817889537

/-! ## A005875.P3328990801246678314

`A004015(2*n)`
-/

namespace A005875.P3328990801246678314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (2 * n)

end

end A005875.P3328990801246678314

/-! ## A005875.P14433785953945938252

`A004013(4*n)`
-/

namespace A005875.P14433785953945938252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (4 * n)

end

end A005875.P14433785953945938252

/-! ## A005875.P6608853629036323997

`A169783(4*n)`
-/

namespace A005875.P6608853629036323997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169783 (4 * n)

end

end A005875.P6608853629036323997

/-! ## A005875.P8770120715109501889

`abs(A213384(n))`
-/

namespace A005875.P8770120715109501889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213384 n|

end

end A005875.P8770120715109501889

/-! ## A005875.P1159175240590041488

`sqrt(A138202(n))`
-/

namespace A005875.P1159175240590041488
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A138202 n : ℝ)

end

end A005875.P1159175240590041488

/-! ## A005875.P445928729397445136

`A387658(n)-A004018(n)`
-/

namespace A005875.P445928729397445136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387658 n - A004018 n

end

end A005875.P445928729397445136

/-! ## A005875.P4286628437665772803

`A084101(n)*A246631(n)`
-/

namespace A005875.P4286628437665772803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084101 n * A246631 n

end

end A005875.P4286628437665772803

/-! ## A005875.P11564874703038660824

`gcd(A000038(n), A213384(n))`
-/

namespace A005875.P11564874703038660824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A213384 n)

end

end A005875.P11564874703038660824

/-! ## A005875.P14447046439677483250

`lcm(A000034(n), A213384(n))`
-/

namespace A005875.P14447046439677483250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A213384 n)

end

end A005875.P14447046439677483250

/-! ## A005875.P17028675136809751731

`∑{d}[A213384(n), A000010(#)]`
-/

namespace A005875.P17028675136809751731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A005875.P17028675136809751731

/-! ## A005875.P15724230450818308827

`A246631(n)+A246631(n)-A212885(n)`
-/

namespace A005875.P15724230450818308827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 n + (A246631 n - A212885 n)

end

end A005875.P15724230450818308827

/-! ## A005875.P12706031728677756981

`A000152(n)*A213384(n)/A319307(n)`
-/

namespace A005875.P12706031728677756981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000152 n * A213384 n : ℚ) / (A319307 n : ℚ)

end

end A005875.P12706031728677756981

/-! ## A005875.P14409675355769901329

`A000156(n)*A213384(n)/A319309(n)`
-/

namespace A005875.P14409675355769901329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000156 n * A213384 n : ℚ) / (A319309 n : ℚ)

end

end A005875.P14409675355769901329

/-! ## A005875.P9637006116173941357

`3/A132429(n)*A319078(n)`
-/

namespace A005875.P9637006116173941357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (A132429 n : ℚ) * (A319078 n : ℚ)

end

end A005875.P9637006116173941357

/-! ## A005875.P11462847048604642347

`A132429(A263426(n+1))*A319078(n)`
-/

namespace A005875.P11462847048604642347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132429 (A263426 (n + 1)).toNat * A319078 n

end

end A005875.P11462847048604642347

/-! ## A005875.P2975579360714118884

`A213384(4*n)`
-/

namespace A005875.P2975579360714118884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 (4 * n)

end

end A005875.P2975579360714118884

/-! ## A005875.P11370805235331774313

`gcd(A004013(n), A004013(A008574(n)))`
-/

namespace A005875.P11370805235331774313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004013 n) (A004013 (A008574 n).toNat)

end

end A005875.P11370805235331774313

/-! ## A005875.P9579919951763880064

`A212885(4*n)`
-/

namespace A005875.P9579919951763880064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212885 (4 * n)

end

end A005875.P9579919951763880064

/-!
# A005876: Theta series of cubic lattice with respect to edge.

The programs for A005876, there is no canonical definition to state claims against.
-/

/-! ## A005876.P5458119642010830789

`2*A045834(n)`
-/

namespace A005876.P5458119642010830789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045834 n

end

end A005876.P5458119642010830789

/-! ## A005876.P7566765733745249486

`abs(2*A246954(n))`
-/

namespace A005876.P7566765733745249486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A246954 n|

end

end A005876.P7566765733745249486

/-! ## A005876.P8520197925113266371

`A004277(A045834(n))`
-/

namespace A005876.P8520197925113266371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A045834 n).toNat

end

end A005876.P8520197925113266371

/-! ## A005876.P1393077824174832830

`A004273(A045834(n)+1)-1`
-/

namespace A005876.P1393077824174832830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A045834 n + 1).toNat - 1

end

end A005876.P1393077824174832830

/-! ## A005876.P17730955919402756245

`A267872(A045834(n)-1)+1`
-/

namespace A005876.P17730955919402756245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (A045834 n - 1).toNat + 1

end

end A005876.P17730955919402756245

/-! ## A005876.P13173108132032471765

`A267873(A045834(n)-1)+1`
-/

namespace A005876.P13173108132032471765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 (A045834 n - 1).toNat + 1

end

end A005876.P13173108132032471765

/-! ## A005876.P15965960017110529916

`2*A033999(n)*A246954(n)`
-/

namespace A005876.P15965960017110529916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033999 n * A246954 n)

end

end A005876.P15965960017110529916

/-! ## A005876.P6739937164864539104

`2*gcd(A000038(n), A246954(n))`
-/

namespace A005876.P6739937164864539104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (A000038 n) (A246954 n)

end

end A005876.P6739937164864539104

/-! ## A005876.P8493654137404223431

`2*lcm(A000034(n), A246954(n))`
-/

namespace A005876.P8493654137404223431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm (A000034 n) (A246954 n)

end

end A005876.P8493654137404223431

/-! ## A005876.P13467002513006551790

`2*A246811(2*n)`
-/

namespace A005876.P13467002513006551790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246811 (2 * n)

end

end A005876.P13467002513006551790

/-! ## A005876.P6496823127864962469

`A005887(2*n)/3`
-/

namespace A005876.P6496823127864962469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005887 (2 * n) : ℚ) / 3

end

end A005876.P6496823127864962469

/-! ## A005876.P10326402715127414524

`2*A045826(2*n)/3`
-/

namespace A005876.P10326402715127414524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A045826 (2 * n) : ℚ) / 3)

end

end A005876.P10326402715127414524

/-! ## A005876.P17204720741867020388

`A005843(A246811(2*n))`
-/

namespace A005876.P17204720741867020388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A246811 (2 * n)).toNat

end

end A005876.P17204720741867020388

/-! ## A005876.P11583282729752596713

`A246631(4*n+1)`
-/

namespace A005876.P11583282729752596713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 (4 * n + 1)

end

end A005876.P11583282729752596713

/-! ## A005876.P4923292334067279478

`A329290(4*n+1)`
-/

namespace A005876.P4923292334067279478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329290 (4 * n + 1)

end

end A005876.P4923292334067279478

/-! ## A005876.P17122797360139119026

`abs(A212885(4*n+1))`
-/

namespace A005876.P17122797360139119026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212885 (4 * n + 1)|

end

end A005876.P17122797360139119026

/-! ## A005876.P15366882479038033375

`A083703(8*n+2)`
-/

namespace A005876.P15366882479038033375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083703 (8 * n + 2)

end

end A005876.P15366882479038033375

/-! ## A005876.P16846628653391777716

`A033717(A017089(n))`
-/

namespace A005876.P16846628653391777716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033717 (A017089 n).toNat

end

end A005876.P16846628653391777716

/-! ## A005876.P5682845561369742651

`A319078(4*n+1)`
-/

namespace A005876.P5682845561369742651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319078 (4 * n + 1)

end

end A005876.P5682845561369742651

/-!
# A005877: Theta series of cubic lattice with respect to square.

The programs for A005877, there is no canonical definition to state claims against.
-/

/-! ## A005877.P6023660548531290056

`4*A045828(n)`
-/

namespace A005877.P6023660548531290056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A045828 n

end

end A005877.P6023660548531290056

/-! ## A005877.P7431119544886315264

`A014455(Δ[n²])`
-/

namespace A005877.P7431119544886315264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005877.P7431119544886315264

/-! ## A005877.P6047247844043674648

`abs(4*A246815(n))`
-/

namespace A005877.P6047247844043674648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * A246815 n|

end

end A005877.P6047247844043674648

/-! ## A005877.P8725448057271663453

`abs(4*A246836(n))`
-/

namespace A005877.P8725448057271663453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * A246836 n|

end

end A005877.P8725448057271663453

/-! ## A005877.P9408050679395749374

`abs(4*A246953(n))`
-/

namespace A005877.P9408050679395749374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * A246953 n|

end

end A005877.P9408050679395749374

/-! ## A005877.P15978167014984284904

`A169783(4*n+2)`
-/

namespace A005877.P15978167014984284904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169783 (4 * n + 2)

end

end A005877.P15978167014984284904

/-! ## A005877.P3963441861984375504

`A246631(4*n+2)`
-/

namespace A005877.P3963441861984375504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 (4 * n + 2)

end

end A005877.P3963441861984375504

/-! ## A005877.P15824844990032876232

`A014457(8*n+4)`
-/

namespace A005877.P15824844990032876232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014457 (8 * n + 4)

end

end A005877.P15824844990032876232

/-! ## A005877.P17129003425357969409

`A033717(8*n+4)`
-/

namespace A005877.P17129003425357969409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033717 (8 * n + 4)

end

end A005877.P17129003425357969409

/-! ## A005877.P10462776247825949444

`A072070(8*n+4)`
-/

namespace A005877.P10462776247825949444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072070 (8 * n + 4)

end

end A005877.P10462776247825949444

/-! ## A005877.P8647953105761943576

`2*A033717(Δ[n²])`
-/

namespace A005877.P8647953105761943576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033717 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005877.P8647953105761943576

/-! ## A005877.P6382811515769773995

`A004015(Δ[n²])/3`
-/

namespace A005877.P6382811515769773995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004015 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A005877.P6382811515769773995

/-! ## A005877.P1157332773293583271

`abs(A080965(2*n+1))`
-/

namespace A005877.P1157332773293583271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080965 (2 * n + 1)|

end

end A005877.P1157332773293583271

/-! ## A005877.P17871721041008355464

`abs(A083703(2*n+1))`
-/

namespace A005877.P17871721041008355464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083703 (2 * n + 1)|

end

end A005877.P17871721041008355464

/-! ## A005877.P10442367361030442485

`abs(A212885(4*n+2))`
-/

namespace A005877.P10442367361030442485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212885 (4 * n + 2)|

end

end A005877.P10442367361030442485

/-! ## A005877.P5987792273870575385

`2*A045836(4*n+2)`
-/

namespace A005877.P5987792273870575385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045836 (4 * n + 2)

end

end A005877.P5987792273870575385

/-! ## A005877.P12574392297444941667

`lcm(2, A014455(2*n+1))`
-/

namespace A005877.P12574392297444941667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A014455 (2 * n + 1))

end

end A005877.P12574392297444941667

/-! ## A005877.P4763144199413986502

`abs(2*A127786(2*n+1))`
-/

namespace A005877.P4763144199413986502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A127786 (2 * n + 1)|

end

end A005877.P4763144199413986502

/-! ## A005877.P10822732235522830060

`abs(2*A246816(2*n+1))`
-/

namespace A005877.P10822732235522830060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A246816 (2 * n + 1)|

end

end A005877.P10822732235522830060

/-! ## A005877.P4112588896971707913

`A008574(A045828(n))`
-/

namespace A005877.P4112588896971707913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A045828 n).toNat

end

end A005877.P4112588896971707913

/-!
# A005878: Theta series of cubic lattice with respect to deep hole.

The programs for A005878, there is no canonical definition to state claims against.
-/

/-! ## A005878.P5166959490139437886

`8*A008443(n)`
-/

namespace A005878.P5166959490139437886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A008443 n

end

end A005878.P5166959490139437886

/-! ## A005878.P7413916647364996466

`2*A005886(n)`
-/

namespace A005878.P7413916647364996466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005886 n

end

end A005878.P7413916647364996466

/-! ## A005878.P12023036485387079370

`4*A005869(n)`
-/

namespace A005878.P12023036485387079370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005869 n

end

end A005878.P12023036485387079370

/-! ## A005878.P1882563011333768503

`8*A238872(Δ[n²])`
-/

namespace A005878.P1882563011333768503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A238872 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005878.P1882563011333768503

/-! ## A005878.P2108602775711289897

`A004277(A005886(n))`
-/

namespace A005878.P2108602775711289897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A005886 n).toNat

end

end A005878.P2108602775711289897

/-! ## A005878.P14704946809209220012

`A008574(A005869(n))`
-/

namespace A005878.P14704946809209220012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A005869 n).toNat

end

end A005878.P14704946809209220012

/-! ## A005878.P109785395971777022

`A008590(A008443(n))`
-/

namespace A005878.P109785395971777022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A008443 n).toNat

end

end A005878.P109785395971777022

/-! ## A005878.P7588412416732362932

`A085121(lt[0, A085121(n)])`
-/

namespace A005878.P7588412416732362932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A005878.P7588412416732362932

/-! ## A005878.P8566368005008499361

`A005886(n)²/A005869(n)`
-/

namespace A005878.P8566368005008499361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005886 n ^ 2 : ℚ) / (A005869 n : ℚ)

end

end A005878.P8566368005008499361

/-! ## A005878.P3981281711524869994

`A005887(4*n+1)`
-/

namespace A005878.P3981281711524869994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005887 (4 * n + 1)

end

end A005878.P3981281711524869994

/-! ## A005878.P17632214944752807445

`2*A072068(A016825(n))`
-/

namespace A005878.P17632214944752807445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072068 (A016825 n).toNat

end

end A005878.P17632214944752807445

/-! ## A005878.P11175477370832218394

`2*A072068(A130824(n+1))`
-/

namespace A005878.P11175477370832218394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072068 (A130824 (n + 1)).toNat

end

end A005878.P11175477370832218394

/-! ## A005878.P6970554507391459506

`2*A246811(A008586(n)+1)`
-/

namespace A005878.P6970554507391459506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246811 (A008586 n + 1).toNat

end

end A005878.P6970554507391459506

/-! ## A005878.P8334375061219729698

`2*A072068(A111284(n+2))`
-/

namespace A005878.P8334375061219729698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072068 (A111284 (n + 2)).toNat

end

end A005878.P8334375061219729698

/-! ## A005878.P3609826576633483016

`filter[A085121(2*n+1), A043545(#)]`
-/

namespace A005878.P3609826576633483016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085121 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A005878.P3609826576633483016

/-! ## A005878.P14156104184484096998

`8*A292511(2*n)`
-/

namespace A005878.P14156104184484096998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A292511 (2 * n)

end

end A005878.P14156104184484096998

/-! ## A005878.P12675647527191626738

`A004013(8*n+3)`
-/

namespace A005878.P12675647527191626738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (8 * n + 3)

end

end A005878.P12675647527191626738

/-! ## A005878.P7329556366416960194

`A005875(8*n+3)`
-/

namespace A005878.P7329556366416960194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (8 * n + 3)

end

end A005878.P7329556366416960194

/-! ## A005878.P1851718956271830614

`A212885(8*n+3)`
-/

namespace A005878.P1851718956271830614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212885 (8 * n + 3)

end

end A005878.P1851718956271830614

/-! ## A005878.P14128444197393461108

`2*A005925(8*n+3)`
-/

namespace A005878.P14128444197393461108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005925 (8 * n + 3)

end

end A005878.P14128444197393461108

/-!
# A005879: Theta series of D_4 lattice with respect to deep hole.

The programs for A005879, the canonical program `A005879.P17126699458363166872` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005879 has offset 0).

The definition of A005879 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005880, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005879.P17126699458363166872

`4*A005880(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005879

/-- `4*A005880(n)` -/
def P17126699458363166872.Spec : Prop :=
  ∀ n, P17126699458363166872.a n = A005879 n

theorem P17126699458363166872.correct : P17126699458363166872.Spec := by
  intro n
  simp only [A005879]

end A005879

/-! ## A005879.P9567723693795837614

`8*A008438(n)`
-/

namespace A005879.P9567723693795837614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A008438 n

end

end A005879.P9567723693795837614

namespace A005879

/-- `8*A008438(n)` -/
def P9567723693795837614.Spec : Prop :=
  ∀ n, P9567723693795837614.a n = A005879 n

end A005879

/-! ## A005879.P18408725291316610991

`A000118(2*n+1)`
-/

namespace A005879.P18408725291316610991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (2 * n + 1)

end

end A005879.P18408725291316610991

namespace A005879

/-- `A000118(2*n+1)` -/
def P18408725291316610991.Spec : Prop :=
  ∀ n, P18408725291316610991.a n = A005879 n

end A005879

/-! ## A005879.P15996643451872430052

`-A096727(2*n+1)`
-/

namespace A005879.P15996643451872430052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A096727 (2 * n + 1)

end

end A005879.P15996643451872430052

namespace A005879

/-- `-A096727(2*n+1)` -/
def P15996643451872430052.Spec : Prop :=
  ∀ n, P15996643451872430052.a n = A005879 n

end A005879

/-! ## A005879.P13120763010547096699

`∑{d}[comp[2*n], 8*#]`
-/

namespace A005879.P13120763010547096699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 8 * d

end

end A005879.P13120763010547096699

namespace A005879

/-- `∑{d}[comp[2*n], 8*#]` -/
def P13120763010547096699.Spec : Prop :=
  ∀ n, (P13120763010547096699.a n : ℤ) = A005879 n

end A005879

/-! ## A005879.P16546703520601525262

`8*∑{d}[2*n+1, #]`
-/

namespace A005879.P16546703520601525262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ d ∈ Nat.divisors (f1 n), d)

end

end A005879.P16546703520601525262

namespace A005879

/-- `8*∑{d}[2*n+1, #]` -/
def P16546703520601525262.Spec : Prop :=
  ∀ n, (P16546703520601525262.a n : ℤ) = A005879 n

end A005879

/-! ## A005879.P8999706500464711214

`A129588(n)/2`
-/

namespace A005879.P8999706500464711214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129588 n : ℚ) / 2

end

end A005879.P8999706500464711214

namespace A005879

/-- `A129588(n)/2` -/
def P8999706500464711214.Spec : Prop :=
  ∀ n, P8999706500464711214.a n = (A005879 n : ℚ)

end A005879

/-! ## A005879.P17206813666658390080

`abs(8*A121613(n))`
-/

namespace A005879.P17206813666658390080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 * A121613 n|

end

end A005879.P17206813666658390080

namespace A005879

/-- `abs(8*A121613(n))` -/
def P17206813666658390080.Spec : Prop :=
  ∀ n, P17206813666658390080.a n = A005879 n

end A005879

/-! ## A005879.P14752808156920667787

`8*A000203(Δ[n²])`
-/

namespace A005879.P14752808156920667787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005879.P14752808156920667787

namespace A005879

/-- `8*A000203(Δ[n²])` -/
def P14752808156920667787.Spec : Prop :=
  ∀ n, P14752808156920667787.a n = A005879 n

end A005879

/-! ## A005879.P4382876934441988590

`8*A115607(2*n+1)`
-/

namespace A005879.P4382876934441988590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A115607 (2 * n + 1)

end

end A005879.P4382876934441988590

namespace A005879

/-- `8*A115607(2*n+1)` -/
def P4382876934441988590.Spec : Prop :=
  ∀ n, P4382876934441988590.a n = A005879 n

end A005879

/-! ## A005879.P17738039455437664134

`2*4*A000203(2*n+1)`
-/

namespace A005879.P17738039455437664134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 * A000203 (2 * n + 1))

end

end A005879.P17738039455437664134

namespace A005879

/-- `2*4*A000203(2*n+1)` -/
def P17738039455437664134.Spec : Prop :=
  ∀ n, P17738039455437664134.a n = A005879 n

end A005879

/-! ## A005879.P10862987667355277487

`4*A074400(2*n+1)`
-/

namespace A005879.P10862987667355277487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A074400 (2 * n + 1)

end

end A005879.P10862987667355277487

namespace A005879

/-- `4*A074400(2*n+1)` -/
def P10862987667355277487.Spec : Prop :=
  ∀ n, P10862987667355277487.a n = A005879 n

end A005879

/-! ## A005879.P11731868840178013928

`8*A069184(2*n+1)`
-/

namespace A005879.P11731868840178013928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A069184 (2 * n + 1)

end

end A005879.P11731868840178013928

namespace A005879

/-- `8*A069184(2*n+1)` -/
def P11731868840178013928.Spec : Prop :=
  ∀ n, P11731868840178013928.a n = A005879 n

end A005879

/-! ## A005879.P9676173366028223433

`A122858(Δ[n²])`
-/

namespace A005879.P9676173366028223433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122858 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005879.P9676173366028223433

namespace A005879

/-- `A122858(Δ[n²])` -/
def P9676173366028223433.Spec : Prop :=
  ∀ n, P9676173366028223433.a n = A005879 n

end A005879

/-! ## A005879.P4050562300793944118

`A319528(Δ[n²])`
-/

namespace A005879.P4050562300793944118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319528 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005879.P4050562300793944118

namespace A005879

/-- `A319528(Δ[n²])` -/
def P4050562300793944118.Spec : Prop :=
  ∀ n, P4050562300793944118.a n = A005879 n

end A005879

/-! ## A005879.P16658928125951085434

`2*A239050(Δ[n²])`
-/

namespace A005879.P16658928125951085434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A239050 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005879.P16658928125951085434

namespace A005879

/-- `2*A239050(Δ[n²])` -/
def P16658928125951085434.Spec : Prop :=
  ∀ n, P16658928125951085434.a n = A005879 n

end A005879

/-! ## A005879.P1884997769906379777

`A004011(Δ[n²])/3`
-/

namespace A005879.P1884997769906379777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004011 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A005879.P1884997769906379777

namespace A005879

/-- `A004011(Δ[n²])/3` -/
def P1884997769906379777.Spec : Prop :=
  ∀ n, P1884997769906379777.a n = (A005879 n : ℚ)

end A005879

/-! ## A005879.P9475092642653865696

`A143337(Δ[n²])/3`
-/

namespace A005879.P9475092642653865696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143337 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A005879.P9475092642653865696

namespace A005879

/-- `A143337(Δ[n²])/3` -/
def P9475092642653865696.Spec : Prop :=
  ∀ n, P9475092642653865696.a n = (A005879 n : ℚ)

end A005879

/-! ## A005879.P16400618902293638251

`abs(A122858(2*n+1))`
-/

namespace A005879.P16400618902293638251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122858 (2 * n + 1)|

end

end A005879.P16400618902293638251

namespace A005879

/-- `abs(A122858(2*n+1))` -/
def P16400618902293638251.Spec : Prop :=
  ∀ n, P16400618902293638251.a n = A005879 n

end A005879

/-! ## A005879.P7250639044755628276

`4*A054785(2*n+1)`
-/

namespace A005879.P7250639044755628276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A054785 (2 * n + 1)

end

end A005879.P7250639044755628276

namespace A005879

/-- `4*A054785(2*n+1)` -/
def P7250639044755628276.Spec : Prop :=
  ∀ n, P7250639044755628276.a n = A005879 n

end A005879

/-!
# A005880: Theta series of D_4 lattice with respect to edge.

The programs for A005880, the canonical program `A005880.P13582737720391786459` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005880 has offset 0).

The definition of A005880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005880.P13582737720391786459

`2*∑{d}[Δ[n²], #]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005880

/-- `2*∑{d}[Δ[n²], #]` -/
def P13582737720391786459.Spec : Prop :=
  ∀ n, (P13582737720391786459.a n : ℤ) = A005880 n

theorem P13582737720391786459.correct : P13582737720391786459.Spec := by
  intro n
  simp only [A005880]

end A005880

/-! ## A005880.P2958507204119282876

`∑{d}[comp[2*n], 2*#]`
-/

namespace A005880.P2958507204119282876
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 2 * d

end

end A005880.P2958507204119282876

namespace A005880

/-- `∑{d}[comp[2*n], 2*#]` -/
def P2958507204119282876.Spec : Prop :=
  ∀ n, (P2958507204119282876.a n : ℤ) = A005880 n

end A005880

/-! ## A005880.P16623250080038538180

`2*A008438(n)`
-/

namespace A005880.P16623250080038538180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008438 n

end

end A005880.P16623250080038538180

namespace A005880

/-- `2*A008438(n)` -/
def P16623250080038538180.Spec : Prop :=
  ∀ n, P16623250080038538180.a n = A005880 n

end A005880

/-! ## A005880.P4057868763697898623

`A005879(n)/4`
-/

namespace A005880.P4057868763697898623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005879 n : ℚ) / 4

end

end A005880.P4057868763697898623

namespace A005880

/-- `A005879(n)/4` -/
def P4057868763697898623.Spec : Prop :=
  ∀ n, P4057868763697898623.a n = (A005880 n : ℚ)

end A005880

/-! ## A005880.P963278677860169957

`A129588(n)/8`
-/

namespace A005880.P963278677860169957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129588 n : ℚ) / 8

end

end A005880.P963278677860169957

namespace A005880

/-- `A129588(n)/8` -/
def P963278677860169957.Spec : Prop :=
  ∀ n, P963278677860169957.a n = (A005880 n : ℚ)

end A005880

/-! ## A005880.P9053426396944516720

`abs(2*A121613(n))`
-/

namespace A005880.P9053426396944516720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A121613 n|

end

end A005880.P9053426396944516720

namespace A005880

/-- `abs(2*A121613(n))` -/
def P9053426396944516720.Spec : Prop :=
  ∀ n, P9053426396944516720.a n = A005880 n

end A005880

/-! ## A005880.P8323998253206301036

`2*A000203(Δ[n²])`
-/

namespace A005880.P8323998253206301036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005880.P8323998253206301036

namespace A005880

/-- `2*A000203(Δ[n²])` -/
def P8323998253206301036.Spec : Prop :=
  ∀ n, P8323998253206301036.a n = A005880 n

end A005880

/-! ## A005880.P12490965025207985387

`2*A115607(Δ[n²])`
-/

namespace A005880.P12490965025207985387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115607 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005880.P12490965025207985387

namespace A005880

/-- `2*A115607(Δ[n²])` -/
def P12490965025207985387.Spec : Prop :=
  ∀ n, P12490965025207985387.a n = A005880 n

end A005880

/-! ## A005880.P1700625063311937332

`A000203(2*n+1)*2`
-/

namespace A005880.P1700625063311937332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) * 2

end

end A005880.P1700625063311937332

namespace A005880

/-- `A000203(2*n+1)*2` -/
def P1700625063311937332.Spec : Prop :=
  ∀ n, P1700625063311937332.a n = A005880 n

end A005880

/-! ## A005880.P5633159770563838359

`A000118(2*n+1)/4`
-/

namespace A005880.P5633159770563838359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000118 (2 * n + 1) : ℚ) / 4

end

end A005880.P5633159770563838359

namespace A005880

/-- `A000118(2*n+1)/4` -/
def P5633159770563838359.Spec : Prop :=
  ∀ n, P5633159770563838359.a n = (A005880 n : ℚ)

end A005880

/-! ## A005880.P11817249398425037216

`4*A000203(or(1, 2*n))/2`
-/

namespace A005880.P11817249398425037216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A000203 (Nat.lor 1 (2 * n)) : ℚ) / 2

end

end A005880.P11817249398425037216

namespace A005880

/-- `4*A000203(or(1, 2*n))/2` -/
def P11817249398425037216.Spec : Prop :=
  ∀ n, P11817249398425037216.a n = (A005880 n : ℚ)

end A005880

/-! ## A005880.P2512165294167138230

`4*A000203(xor(1, 2*n))/2`
-/

namespace A005880.P2512165294167138230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A000203 (Nat.xor 1 (2 * n)) : ℚ) / 2

end

end A005880.P2512165294167138230

namespace A005880

/-- `4*A000203(xor(1, 2*n))/2` -/
def P2512165294167138230.Spec : Prop :=
  ∀ n, P2512165294167138230.a n = (A005880 n : ℚ)

end A005880

/-! ## A005880.P9122930729738591983

`A239052(n+1)-A008438(n)`
-/

namespace A005880.P9122930729738591983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239052 (n + 1) - A008438 n

end

end A005880.P9122930729738591983

namespace A005880

/-- `A239052(n+1)-A008438(n)` -/
def P9122930729738591983.Spec : Prop :=
  ∀ n, P9122930729738591983.a n = A005880 n

end A005880

/-! ## A005880.P3055695128359634627

`A005879(n)%A239052(n+1)`
-/

namespace A005880.P3055695128359634627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005879 n) (A239052 (n + 1))

end

end A005880.P3055695128359634627

namespace A005880

/-- `A005879(n)%A239052(n+1)` -/
def P3055695128359634627.Spec : Prop :=
  ∀ n, P3055695128359634627.a n = A005880 n

end A005880

/-! ## A005880.P14654094367162306972

`A000203(n+1+n)+A000203(Δ[n²])`
-/

namespace A005880.P14654094367162306972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1 + n) + A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005880.P14654094367162306972

namespace A005880

/-- `A000203(n+1+n)+A000203(Δ[n²])` -/
def P14654094367162306972.Spec : Prop :=
  ∀ n, P14654094367162306972.a n = A005880 n

end A005880

/-! ## A005880.P2666142620168234906

`A074400(Δ[n²])`
-/

namespace A005880.P2666142620168234906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005880.P2666142620168234906

namespace A005880

/-- `A074400(Δ[n²])` -/
def P2666142620168234906.Spec : Prop :=
  ∀ n, P2666142620168234906.a n = A005880 n

end A005880

/-! ## A005880.P14367391947539781348

`A002659(Δ[n²])+1`
-/

namespace A005880.P14367391947539781348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A005880.P14367391947539781348

namespace A005880

/-- `A002659(Δ[n²])+1` -/
def P14367391947539781348.Spec : Prop :=
  ∀ n, P14367391947539781348.a n = A005880 n

end A005880

/-! ## A005880.P14411223952450385570

`2*A069184(Δ[n²])`
-/

namespace A005880.P14411223952450385570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069184 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005880.P14411223952450385570

namespace A005880

/-- `2*A069184(Δ[n²])` -/
def P14411223952450385570.Spec : Prop :=
  ∀ n, P14411223952450385570.a n = A005880 n

end A005880

/-! ## A005880.P3722011367182706402

`Δ[∑[A074400(2*n+1)]-A074400(2*n+1)]`
-/

namespace A005880.P3722011367182706402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A074400 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005880.P3722011367182706402

namespace A005880

/-- `Δ[∑[A074400(2*n+1)]-A074400(2*n+1)]` -/
def P3722011367182706402.Spec : Prop :=
  ∀ n, P3722011367182706402.a n = A005880 n

end A005880

/-! ## A005880.P11586090069784893241

`filter[A074400(2*n+1), A178226(#)]`
-/

namespace A005880.P11586090069784893241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A005880.P11586090069784893241

namespace A005880

/-- `filter[A074400(2*n+1), A178226(#)]` -/
def P11586090069784893241.Spec : Prop :=
  ∀ n, P11586090069784893241.a n = A005880 n

end A005880

/-!
# A005881: Theta series of planar hexagonal lattice (A2) with respect to edge.

The programs for A005881, the canonical program `A005881.P8037099234371923042` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005881 has offset 0).

The definition of A005881 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033762, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005881.P8037099234371923042

`2*A033762(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A005881

/-- `2*A033762(n)` -/
def P8037099234371923042.Spec : Prop :=
  ∀ n, P8037099234371923042.a n = A005881 n

theorem P8037099234371923042.correct : P8037099234371923042.Spec := by
  intro n
  simp only [A005881]

end A005881

/-! ## A005881.P6224651536035655763

`∑{d}[2*n+1, 3-#%6]`
-/

namespace A005881.P6224651536035655763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (3 - ((d % 6 : ℕ) : ℤ))

end

end A005881.P6224651536035655763

namespace A005881

/-- `∑{d}[2*n+1, 3-#%6]` -/
def P6224651536035655763.Spec : Prop :=
  ∀ n, P6224651536035655763.a n = A005881 n

end A005881

/-! ## A005881.P8739678137998582523

`A033716(Δ[n²])`
-/

namespace A005881.P8739678137998582523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005881.P8739678137998582523

namespace A005881

/-- `A033716(Δ[n²])` -/
def P8739678137998582523.Spec : Prop :=
  ∀ n, P8739678137998582523.a n = A005881 n

end A005881

/-! ## A005881.P18205590013235323815

`abs(2*A129449(n))`
-/

namespace A005881.P18205590013235323815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A129449 n|

end

end A005881.P18205590013235323815

namespace A005881

/-- `abs(2*A129449(n))` -/
def P18205590013235323815.Spec : Prop :=
  ∀ n, P18205590013235323815.a n = A005881 n

end A005881

/-! ## A005881.P3929381889374504460

`abs(2*A262780(n))`
-/

namespace A005881.P3929381889374504460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A262780 n|

end

end A005881.P3929381889374504460

namespace A005881

/-- `abs(2*A262780(n))` -/
def P3929381889374504460.Spec : Prop :=
  ∀ n, P3929381889374504460.a n = A005881 n

end A005881

/-! ## A005881.P8789198548122119869

`2*A096936(Δ[n²])`
-/

namespace A005881.P8789198548122119869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096936 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005881.P8789198548122119869

namespace A005881

/-- `2*A096936(Δ[n²])` -/
def P8789198548122119869.Spec : Prop :=
  ∀ n, P8789198548122119869.a n = A005881 n

end A005881

/-! ## A005881.P9840857968340330522

`2*A115979(Δ[n²])`
-/

namespace A005881.P9840857968340330522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115979 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005881.P9840857968340330522

namespace A005881

/-- `2*A115979(Δ[n²])` -/
def P9840857968340330522.Spec : Prop :=
  ∀ n, P9840857968340330522.a n = A005881 n

end A005881

/-! ## A005881.P7417634877826109609

`A217220(Δ[n²])/2`
-/

namespace A005881.P7417634877826109609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217220 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A005881.P7417634877826109609

namespace A005881

/-- `A217220(Δ[n²])/2` -/
def P7417634877826109609.Spec : Prop :=
  ∀ n, P7417634877826109609.a n = (A005881 n : ℚ)

end A005881

/-! ## A005881.P1792860831892845989

`A217221(2*n+1)/3`
-/

namespace A005881.P1792860831892845989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217221 (2 * n + 1) : ℚ) / 3

end

end A005881.P1792860831892845989

namespace A005881

/-- `A217221(2*n+1)/3` -/
def P1792860831892845989.Spec : Prop :=
  ∀ n, P1792860831892845989.a n = (A005881 n : ℚ)

end A005881

/-! ## A005881.P8056227815379901573

`A005843(A033762(n))`
-/

namespace A005881.P8056227815379901573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A033762 n).toNat

end

end A005881.P8056227815379901573

namespace A005881

/-- `A005843(A033762(n))` -/
def P8056227815379901573.Spec : Prop :=
  ∀ n, P8056227815379901573.a n = A005881 n

end A005881

/-! ## A005881.P2176804066312434313

`lcm(2, A033716(A005408(n)))`
-/

namespace A005881.P2176804066312434313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A033716 (A005408 n).toNat)

end

end A005881.P2176804066312434313

namespace A005881

/-- `lcm(2, A033716(A005408(n)))` -/
def P2176804066312434313.Spec : Prop :=
  ∀ n, (P2176804066312434313.a n : ℤ) = A005881 n

end A005881

/-! ## A005881.P11842634914026360643

`A123530(n)*A131756(n)`
-/

namespace A005881.P11842634914026360643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123530 n * A131756 n

end

end A005881.P11842634914026360643

namespace A005881

/-- `A123530(n)*A131756(n)` -/
def P11842634914026360643.Spec : Prop :=
  ∀ n, P11842634914026360643.a n = A005881 n

end A005881

/-! ## A005881.P13111146195513135292

`A053229(A033762(n)+1)-1`
-/

namespace A005881.P13111146195513135292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053229 (A033762 n + 1).toNat - 1

end

end A005881.P13111146195513135292

namespace A005881

/-- `A053229(A033762(n)+1)-1` -/
def P13111146195513135292.Spec : Prop :=
  ∀ n, P13111146195513135292.a n = A005881 n

end A005881

/-! ## A005881.P14794155374236871632

`A089684(A033762(n)+1)-1`
-/

namespace A005881.P14794155374236871632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (A033762 n + 1).toNat - 1

end

end A005881.P14794155374236871632

namespace A005881

/-- `A089684(A033762(n)+1)-1` -/
def P14794155374236871632.Spec : Prop :=
  ∀ n, P14794155374236871632.a n = A005881 n

end A005881

/-! ## A005881.P10703624072187831665

`filter[A033716(2*n+1), A059841(#)]`
-/

namespace A005881.P10703624072187831665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A005881.P10703624072187831665

namespace A005881

/-- `filter[A033716(2*n+1), A059841(#)]` -/
def P10703624072187831665.Spec : Prop :=
  ∀ n, P10703624072187831665.a n = A005881 n

end A005881

/-! ## A005881.P14516371102075861908

`filter[A033716(2*n+1), A071038(#)]`
-/

namespace A005881.P14516371102075861908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071038 (f1 j).toNat = 1) n)

end

end A005881.P14516371102075861908

namespace A005881

/-- `filter[A033716(2*n+1), A071038(#)]` -/
def P14516371102075861908.Spec : Prop :=
  ∀ n, P14516371102075861908.a n = A005881 n

end A005881

/-! ## A005881.P4819721298921589408

`filter[A033716(2*n+1), A071374(#)]`
-/

namespace A005881.P4819721298921589408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A005881.P4819721298921589408

namespace A005881

/-- `filter[A033716(2*n+1), A071374(#)]` -/
def P4819721298921589408.Spec : Prop :=
  ∀ n, P4819721298921589408.a n = A005881 n

end A005881

/-! ## A005881.P1010130178451651121

`filter[A033716(2*n+1), A102609(#)]`
-/

namespace A005881.P1010130178451651121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A005881.P1010130178451651121

namespace A005881

/-- `filter[A033716(2*n+1), A102609(#)]` -/
def P1010130178451651121.Spec : Prop :=
  ∀ n, P1010130178451651121.a n = A005881 n

end A005881

/-! ## A005881.P3404004074735374657

`filter[A033716(2*n+1), A115789(#)]`
-/

namespace A005881.P3404004074735374657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115789 (f1 j).toNat = 1) n)

end

end A005881.P3404004074735374657

namespace A005881

/-- `filter[A033716(2*n+1), A115789(#)]` -/
def P3404004074735374657.Spec : Prop :=
  ∀ n, P3404004074735374657.a n = A005881 n

end A005881

/-!
# A005882: Theta series of planar hexagonal lattice (A2) with respect to deep hole.

The programs for A005882, the canonical program `A005882.P16544228379664512821` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005882 has offset 0).

The definition of A005882 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033685, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005882.P151668165763711491

`3*A033687(n)`
-/

namespace A005882.P151668165763711491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033687 n

end

end A005882.P151668165763711491

namespace A005882

/-- `3*A033687(n)` -/
def P151668165763711491.Spec : Prop :=
  ∀ n, P151668165763711491.a n = A005882 n

end A005882

/-! ## A005882.P13448127999398064744

`A113062(3*n+1)`
-/

namespace A005882.P13448127999398064744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 (3 * n + 1)

end

end A005882.P13448127999398064744

namespace A005882

/-- `A113062(3*n+1)` -/
def P13448127999398064744.Spec : Prop :=
  ∀ n, P13448127999398064744.a n = A005882 n

end A005882

/-! ## A005882.P16544228379664512821

`A033685(3*n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A005882

/-- `A033685(3*n+1)` -/
def P16544228379664512821.Spec : Prop :=
  ∀ n, P16544228379664512821.a n = A005882 n

theorem P16544228379664512821.correct : P16544228379664512821.Spec := by
  intro n
  simp only [A005882]

end A005882

/-! ## A005882.P11492048780194408089

`abs(3*A227696(n))`
-/

namespace A005882.P11492048780194408089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A227696 n|

end

end A005882.P11492048780194408089

namespace A005882

/-- `abs(3*A227696(n))` -/
def P11492048780194408089.Spec : Prop :=
  ∀ n, P11492048780194408089.a n = A005882 n

end A005882

/-! ## A005882.P6501223250575851468

`A008585(A033687(n))`
-/

namespace A005882.P6501223250575851468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A033687 n).toNat

end

end A005882.P6501223250575851468

namespace A005882

/-- `A008585(A033687(n))` -/
def P6501223250575851468.Spec : Prop :=
  ∀ n, P6501223250575851468.a n = A005882 n

end A005882

/-! ## A005882.P5842245947560350038

`A129576(n)*A176040(n)`
-/

namespace A005882.P5842245947560350038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129576 n * A176040 n

end

end A005882.P5842245947560350038

namespace A005882

/-- `A129576(n)*A176040(n)` -/
def P5842245947560350038.Spec : Prop :=
  ∀ n, P5842245947560350038.a n = A005882 n

end A005882

/-! ## A005882.P559771103339989228

`A174971(n)*A227696(n)`
-/

namespace A005882.P559771103339989228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 n * A227696 n

end

end A005882.P559771103339989228

namespace A005882

/-- `A174971(n)*A227696(n)` -/
def P559771103339989228.Spec : Prop :=
  ∀ n, P559771103339989228.a n = A005882 n

end A005882

/-! ## A005882.P13642709020810900719

`(A033999(n)+2)*A129576(n)`
-/

namespace A005882.P13642709020810900719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + 2) * A129576 n

end

end A005882.P13642709020810900719

namespace A005882

/-- `(A033999(n)+2)*A129576(n)` -/
def P13642709020810900719.Spec : Prop :=
  ∀ n, P13642709020810900719.a n = A005882 n

end A005882

/-! ## A005882.P5159969387111679179

`A122861(n)+2*A129576(n)`
-/

namespace A005882.P5159969387111679179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122861 n + 2 * A129576 n

end

end A005882.P5159969387111679179

namespace A005882

/-- `A122861(n)+2*A129576(n)` -/
def P5159969387111679179.Spec : Prop :=
  ∀ n, P5159969387111679179.a n = A005882 n

end A005882

/-! ## A005882.P8961669351108333883

`(A176563(n)+2)*A122861(n)`
-/

namespace A005882.P8961669351108333883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176563 n + 2) * A122861 n

end

end A005882.P8961669351108333883

namespace A005882

/-- `(A176563(n)+2)*A122861(n)` -/
def P8961669351108333883.Spec : Prop :=
  ∀ n, P8961669351108333883.a n = A005882 n

end A005882

/-! ## A005882.P4824585768638645204

`(A309873(n+1)+2)*A129576(n)`
-/

namespace A005882.P4824585768638645204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A309873 (n + 1) + 2) * A129576 n

end

end A005882.P4824585768638645204

namespace A005882

/-- `(A309873(n+1)+2)*A129576(n)` -/
def P4824585768638645204.Spec : Prop :=
  ∀ n, P4824585768638645204.a n = A005882 n

end A005882

/-! ## A005882.P16764504211788242077

`A129576(∑[A033999(n)])*A129576(n)`
-/

namespace A005882.P16764504211788242077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129576 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A129576 n

end

end A005882.P16764504211788242077

namespace A005882

/-- `A129576(∑[A033999(n)])*A129576(n)` -/
def P16764504211788242077.Spec : Prop :=
  ∀ n, P16764504211788242077.a n = A005882 n

end A005882

/-! ## A005882.P494363254686972733

`A008585(A129576(n)/A276391(n+1))`
-/

namespace A005882.P494363254686972733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (SequenceMachineLib.roundAway ((A129576 n : ℚ) / (A276391 (n + 1) : ℚ))).toNat

end

end A005882.P494363254686972733

namespace A005882

/-- `A008585(A129576(n)/A276391(n+1))` -/
def P494363254686972733.Spec : Prop :=
  ∀ n, P494363254686972733.a n = A005882 n

end A005882

/-! ## A005882.P5455605956256301472

`A010684(n+1)*A129576(n)`
-/

namespace A005882.P5455605956256301472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (n + 1) * A129576 n

end

end A005882.P5455605956256301472

namespace A005882

/-- `A010684(n+1)*A129576(n)` -/
def P5455605956256301472.Spec : Prop :=
  ∀ n, P5455605956256301472.a n = A005882 n

end A005882

/-! ## A005882.P5325170514957366450

`A096936(12*n+4)`
-/

namespace A005882.P5325170514957366450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (12 * n + 4)

end

end A005882.P5325170514957366450

namespace A005882

/-- `A096936(12*n+4)` -/
def P5325170514957366450.Spec : Prop :=
  ∀ n, P5325170514957366450.a n = A005882 n

end A005882

/-! ## A005882.P10387020970708815360

`3*A113063(3*n+1)`
-/

namespace A005882.P10387020970708815360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A113063 (3 * n + 1)

end

end A005882.P10387020970708815360

namespace A005882

/-- `3*A113063(3*n+1)` -/
def P10387020970708815360.Spec : Prop :=
  ∀ n, P10387020970708815360.a n = A005882 n

end A005882

/-! ## A005882.P1956269362625803150

`abs(A005928(3*n+1))`
-/

namespace A005882.P1956269362625803150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005928 (3 * n + 1)|

end

end A005882.P1956269362625803150

namespace A005882

/-- `abs(A005928(3*n+1))` -/
def P1956269362625803150.Spec : Prop :=
  ∀ n, P1956269362625803150.a n = A005882 n

end A005882

/-! ## A005882.P9259925745424022609

`3*A002324(3*n+1)`
-/

namespace A005882.P9259925745424022609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002324 (3 * n + 1)

end

end A005882.P9259925745424022609

namespace A005882

/-- `3*A002324(3*n+1)` -/
def P9259925745424022609.Spec : Prop :=
  ∀ n, P9259925745424022609.a n = A005882 n

end A005882

/-! ## A005882.P8495522287355071255

`A004016(3*n+1)/2`
-/

namespace A005882.P8495522287355071255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 (3 * n + 1) : ℚ) / 2

end

end A005882.P8495522287355071255

namespace A005882

/-- `A004016(3*n+1)/2` -/
def P8495522287355071255.Spec : Prop :=
  ∀ n, P8495522287355071255.a n = (A005882 n : ℚ)

end A005882

/-! ## A005882.P11652854525882846376

`3*A255648(3*n+1)`
-/

namespace A005882.P11652854525882846376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A255648 (3 * n + 1)

end

end A005882.P11652854525882846376

namespace A005882

/-- `3*A255648(3*n+1)` -/
def P11652854525882846376.Spec : Prop :=
  ∀ n, P11652854525882846376.a n = A005882 n

end A005882

/-!
# A005883: Theta series of square lattice with respect to deep hole.

The programs for A005883, the canonical program `A005883.P3734216093274140482` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005883 has offset 0).

The definition of A005883 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005883.P3734216093274140482

`4*A008441(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A005883

/-- `4*A008441(n)` -/
def P3734216093274140482.Spec : Prop :=
  ∀ n, P3734216093274140482.a n = A005883 n

theorem P3734216093274140482.correct : P3734216093274140482.Spec := by
  intro n
  simp only [A005883]

end A005883

/-! ## A005883.P3541336957010846382

`2*A004020(n)`
-/

namespace A005883.P3541336957010846382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004020 n

end

end A005883.P3541336957010846382

namespace A005883

/-- `2*A004020(n)` -/
def P3541336957010846382.Spec : Prop :=
  ∀ n, P3541336957010846382.a n = A005883 n

end A005883

/-! ## A005883.P12784855321132464287

`abs(4*A134343(n))`
-/

namespace A005883.P12784855321132464287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * A134343 n|

end

end A005883.P12784855321132464287

namespace A005883

/-- `abs(4*A134343(n))` -/
def P12784855321132464287.Spec : Prop :=
  ∀ n, P12784855321132464287.a n = A005883 n

end A005883

/-! ## A005883.P14864649064546737711

`A005843(A004020(n))`
-/

namespace A005883.P14864649064546737711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A004020 n).toNat

end

end A005883.P14864649064546737711

namespace A005883

/-- `A005843(A004020(n))` -/
def P14864649064546737711.Spec : Prop :=
  ∀ n, P14864649064546737711.a n = A005883 n

end A005883

/-! ## A005883.P16240720937542934024

`A008586(A008441(n))`
-/

namespace A005883.P16240720937542934024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A008441 n).toNat

end

end A005883.P16240720937542934024

namespace A005883

/-- `A008586(A008441(n))` -/
def P16240720937542934024.Spec : Prop :=
  ∀ n, P16240720937542934024.a n = A005883 n

end A005883

/-! ## A005883.P8374064234546157338

`A027709(A008441(n)²)`
-/

namespace A005883.P8374064234546157338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A008441 n ^ 2).toNat

end

end A005883.P8374064234546157338

namespace A005883

/-- `A027709(A008441(n)²)` -/
def P8374064234546157338.Spec : Prop :=
  ∀ n, P8374064234546157338.a n = A005883 n

end A005883

/-! ## A005883.P14732299360222311331

`A027709(A134343(n)²)`
-/

namespace A005883.P14732299360222311331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A134343 n ^ 2).toNat

end

end A005883.P14732299360222311331

namespace A005883

/-- `A027709(A134343(n)²)` -/
def P14732299360222311331.Spec : Prop :=
  ∀ n, P14732299360222311331.a n = A005883 n

end A005883

/-! ## A005883.P6985697557905524892

`A130824(A008441(n)+1)-2`
-/

namespace A005883.P6985697557905524892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (A008441 n + 1).toNat - 2

end

end A005883.P6985697557905524892

namespace A005883

/-- `A130824(A008441(n)+1)-2` -/
def P6985697557905524892.Spec : Prop :=
  ∀ n, P6985697557905524892.a n = A005883 n

end A005883

/-! ## A005883.P13360621457470070864

`A111284(A008441(n)+2)-2`
-/

namespace A005883.P13360621457470070864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (A008441 n + 2).toNat - 2

end

end A005883.P13360621457470070864

namespace A005883

/-- `A111284(A008441(n)+2)-2` -/
def P13360621457470070864.Spec : Prop :=
  ∀ n, P13360621457470070864.a n = A005883 n

end A005883

/-! ## A005883.P4788890385073713397

`A016813(A004020(n)/2)-1`
-/

namespace A005883.P4788890385073713397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.roundAway ((A004020 n : ℚ) / 2)).toNat - 1

end

end A005883.P4788890385073713397

namespace A005883

/-- `A016813(A004020(n)/2)-1` -/
def P4788890385073713397.Spec : Prop :=
  ∀ n, P4788890385073713397.a n = A005883 n

end A005883

/-! ## A005883.P3992071995323869321

`A004020(n)+A008441(n)+A008441(n)`
-/

namespace A005883.P3992071995323869321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004020 n + (A008441 n + A008441 n)

end

end A005883.P3992071995323869321

namespace A005883

/-- `A004020(n)+A008441(n)+A008441(n)` -/
def P3992071995323869321.Spec : Prop :=
  ∀ n, P3992071995323869321.a n = A005883 n

end A005883

/-! ## A005883.P12173130355889050307

`4*A125079(2*n)`
-/

namespace A005883.P12173130355889050307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A125079 (2 * n)

end

end A005883.P12173130355889050307

namespace A005883

/-- `4*A125079(2*n)` -/
def P12173130355889050307.Spec : Prop :=
  ∀ n, P12173130355889050307.a n = A005883 n

end A005883

/-! ## A005883.P13407608944043995415

`4*A116604(2*n)`
-/

namespace A005883.P13407608944043995415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A116604 (2 * n)

end

end A005883.P13407608944043995415

namespace A005883

/-- `4*A116604(2*n)` -/
def P13407608944043995415.Spec : Prop :=
  ∀ n, P13407608944043995415.a n = A005883 n

end A005883

/-! ## A005883.P5329678731071417181

`4*A129447(2*n)`
-/

namespace A005883.P5329678731071417181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A129447 (2 * n)

end

end A005883.P5329678731071417181

namespace A005883

/-- `4*A129447(2*n)` -/
def P5329678731071417181.Spec : Prop :=
  ∀ n, P5329678731071417181.a n = A005883 n

end A005883

/-! ## A005883.P12488351029891527231

`4*A138741(2*n)`
-/

namespace A005883.P12488351029891527231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138741 (2 * n)

end

end A005883.P12488351029891527231

namespace A005883

/-- `4*A138741(2*n)` -/
def P12488351029891527231.Spec : Prop :=
  ∀ n, P12488351029891527231.a n = A005883 n

end A005883

/-! ## A005883.P1978870570933569800

`A004018(4*n+1)`
-/

namespace A005883.P1978870570933569800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (4 * n + 1)

end

end A005883.P1978870570933569800

namespace A005883

/-- `A004018(4*n+1)` -/
def P1978870570933569800.Spec : Prop :=
  ∀ n, P1978870570933569800.a n = A005883 n

end A005883

/-! ## A005883.P17814977504672297448

`2*A004531(4*n+1)`
-/

namespace A005883.P17814977504672297448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004531 (4 * n + 1)

end

end A005883.P17814977504672297448

namespace A005883

/-- `2*A004531(4*n+1)` -/
def P17814977504672297448.Spec : Prop :=
  ∀ n, P17814977504672297448.a n = A005883 n

end A005883

/-! ## A005883.P4670296981357009143

`2*A105673(4*n+1)`
-/

namespace A005883.P4670296981357009143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105673 (4 * n + 1)

end

end A005883.P4670296981357009143

namespace A005883

/-- `2*A105673(4*n+1)` -/
def P4670296981357009143.Spec : Prop :=
  ∀ n, P4670296981357009143.a n = A005883 n

end A005883

/-! ## A005883.P8812975754767305994

`4*A113446(4*n+1)`
-/

namespace A005883.P8812975754767305994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A113446 (4 * n + 1)

end

end A005883.P8812975754767305994

namespace A005883

/-- `4*A113446(4*n+1)` -/
def P8812975754767305994.Spec : Prop :=
  ∀ n, P8812975754767305994.a n = A005883 n

end A005883

/-! ## A005883.P12319062085255694836

`2*A138951(A008586(n)+1)`
-/

namespace A005883.P12319062085255694836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138951 (A008586 n + 1).toNat

end

end A005883.P12319062085255694836

namespace A005883

/-- `2*A138951(A008586(n)+1)` -/
def P12319062085255694836.Spec : Prop :=
  ∀ n, P12319062085255694836.a n = A005883 n

end A005883

/-!
# A005884: Theta series of f.c.c. lattice with respect to edge.

The programs for A005884, there is no canonical definition to state claims against.
-/

/-! ## A005884.P18323741846354206430

`2*A045828(n)`
-/

namespace A005884.P18323741846354206430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045828 n

end

end A005884.P18323741846354206430

/-! ## A005884.P11352319959878776872

`A005877(n)/2`
-/

namespace A005884.P11352319959878776872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005877 n : ℚ) / 2

end

end A005884.P11352319959878776872

/-! ## A005884.P15652063833610221740

`A033717(Δ[n²])`
-/

namespace A005884.P15652063833610221740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033717 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005884.P15652063833610221740

/-! ## A005884.P13894347736615861346

`abs(2*A246815(n))`
-/

namespace A005884.P13894347736615861346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A246815 n|

end

end A005884.P13894347736615861346

/-! ## A005884.P16281856612276532467

`abs(2*A246836(n))`
-/

namespace A005884.P16281856612276532467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A246836 n|

end

end A005884.P16281856612276532467

/-! ## A005884.P6136969225641142468

`abs(2*A246953(n))`
-/

namespace A005884.P6136969225641142468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A246953 n|

end

end A005884.P6136969225641142468

/-! ## A005884.P1157752590984708390

`A045836(4*n+2)`
-/

namespace A005884.P1157752590984708390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045836 (4 * n + 2)

end

end A005884.P1157752590984708390

/-! ## A005884.P4253533866299943269

`A080917(4*n+2)`
-/

namespace A005884.P4253533866299943269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080917 (4 * n + 2)

end

end A005884.P4253533866299943269

/-! ## A005884.P6464901600079039529

`A028698(8*n+4)`
-/

namespace A005884.P6464901600079039529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028698 (8 * n + 4)

end

end A005884.P6464901600079039529

/-! ## A005884.P1708985515000180122

`A014455(Δ[n²])/2`
-/

namespace A005884.P1708985515000180122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014455 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A005884.P1708985515000180122

/-! ## A005884.P15231189600782814302

`abs(A127786(2*n+1))`
-/

namespace A005884.P15231189600782814302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127786 (2 * n + 1)|

end

end A005884.P15231189600782814302

/-! ## A005884.P1653583614834815514

`abs(A246816(2*n+1))`
-/

namespace A005884.P1653583614834815514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246816 (2 * n + 1)|

end

end A005884.P1653583614834815514

/-! ## A005884.P16633813008488229173

`A004015(2*n+1)/6`
-/

namespace A005884.P16633813008488229173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004015 (2 * n + 1) : ℚ) / 6

end

end A005884.P16633813008488229173

/-! ## A005884.P2834862352969458156

`lcm(2, A033717(2*n+1))`
-/

namespace A005884.P2834862352969458156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A033717 (2 * n + 1))

end

end A005884.P2834862352969458156

/-! ## A005884.P3322750654139036179

`abs(A080965(2*n+1)/2)`
-/

namespace A005884.P3322750654139036179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A080965 (2 * n + 1) : ℚ) / 2|

end

end A005884.P3322750654139036179

/-! ## A005884.P13052139509061095187

`abs(A083703(2*n+1)/2)`
-/

namespace A005884.P13052139509061095187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A083703 (2 * n + 1) : ℚ) / 2|

end

end A005884.P13052139509061095187

/-! ## A005884.P7819920326684251046

`A001281(A005877(n))`
-/

namespace A005884.P7819920326684251046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005877 n).toNat

end

end A005884.P7819920326684251046

/-! ## A005884.P5433495360727571532

`A004277(A045828(n))`
-/

namespace A005884.P5433495360727571532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A045828 n).toNat

end

end A005884.P5433495360727571532

/-! ## A005884.P6644871034634676592

`A033717(A281813(n))/2`
-/

namespace A005884.P6644871034634676592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033717 (A281813 n).toNat : ℚ) / 2

end

end A005884.P6644871034634676592

/-! ## A005884.P7964482973854279523

`A004525(A014455(Δ[n²]))`
-/

namespace A005884.P7964482973854279523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A014455 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A005884.P7964482973854279523

/-!
# A005885: Theta series of f.c.c. lattice with respect to triangle.

The programs for A005885, there is no canonical definition to state claims against.
-/

/-! ## A005885.P9557870398585825054

`A245669(2*(n+1))`
-/

namespace A005885.P9557870398585825054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245669 (2 * (n + 1))

end

end A005885.P9557870398585825054

/-! ## A005885.P1116826125516400723

`A245669(Δ[A027691(n)])%(n+11)`
-/

namespace A005885.P1116826125516400723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245669 (f1 (n + 1) - f1 n).toNat) (n + 11 : ℤ)

end

end A005885.P1116826125516400723

/-! ## A005885.P17851376171794302639

`A033999(n)²*A245669(Δ[A027691(n)])`
-/

namespace A005885.P17851376171794302639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A245669 (f1 (n + 1) - f1 n).toNat

end

end A005885.P17851376171794302639

/-! ## A005885.P4172221983344719189

`A245669(Δ[A027691(n)])+A000007(n+1)`
-/

namespace A005885.P4172221983344719189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245669 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A005885.P4172221983344719189

/-! ## A005885.P10301415904571205428

`A245669(Δ[A027691(n)])/A054977(n+1)`
-/

namespace A005885.P10301415904571205428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245669 (f1 (n + 1) - f1 n).toNat : ℚ) / (A054977 (n + 1) : ℚ)

end

end A005885.P10301415904571205428

/-! ## A005885.P13945500295954573058

`A033999(2*n)*A245669(Δ[A027691(n)])`
-/

namespace A005885.P13945500295954573058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A245669 (f1 (n + 1) - f1 n).toNat

end

end A005885.P13945500295954573058

/-!
# A005886: Theta series of f.c.c. lattice with respect to tetrahedral hole.

The programs for A005886, there is no canonical definition to state claims against.
-/

/-! ## A005886.P6762625668583284618

`2*A005869(n)`
-/

namespace A005886.P6762625668583284618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005869 n

end

end A005886.P6762625668583284618

/-! ## A005886.P1954035508386442107

`4*A008443(n)`
-/

namespace A005886.P1954035508386442107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008443 n

end

end A005886.P1954035508386442107

/-! ## A005886.P11872752015144052060

`A004277(A005869(n))`
-/

namespace A005886.P11872752015144052060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A005869 n).toNat

end

end A005886.P11872752015144052060

/-! ## A005886.P14396096103638703915

`A008574(A008443(n))`
-/

namespace A005886.P14396096103638703915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A008443 n).toNat

end

end A005886.P14396096103638703915

/-! ## A005886.P16812848795744646790

`A008574(A005869(n)/2)`
-/

namespace A005886.P16812848795744646790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.roundAway ((A005869 n : ℚ) / 2)).toNat

end

end A005886.P16812848795744646790

/-! ## A005886.P14086887958262615616

`A059558(A005869(n)/2)`
-/

namespace A005886.P14086887958262615616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059558 (SequenceMachineLib.roundAway ((A005869 n : ℚ) / 2)).toNat

end

end A005886.P14086887958262615616

/-! ## A005886.P8111107575858105637

`A005869(n)²/A008443(n)`
-/

namespace A005886.P8111107575858105637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005869 n ^ 2 : ℚ) / (A008443 n : ℚ)

end

end A005886.P8111107575858105637

/-! ## A005886.P9490989069410764825

`A085121(lt[0, A085121(n)])/2`
-/

namespace A005886.P9490989069410764825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085121 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A005886.P9490989069410764825

/-! ## A005886.P9655599636864239008

`4*A238872(Δ[n²])`
-/

namespace A005886.P9655599636864239008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A238872 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005886.P9655599636864239008

/-! ## A005886.P6991750088623435404

`2*2*A238872(2*n+1)`
-/

namespace A005886.P6991750088623435404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A238872 (2 * n + 1))

end

end A005886.P6991750088623435404

/-! ## A005886.P11432637504362347587

`A005843(2*A238872(2*n+1))`
-/

namespace A005886.P11432637504362347587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (2 * A238872 (2 * n + 1)).toNat

end

end A005886.P11432637504362347587

/-! ## A005886.P14039281744189404519

`A005878(n)/2`
-/

namespace A005886.P14039281744189404519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005878 n : ℚ) / 2

end

end A005886.P14039281744189404519

/-! ## A005886.P16342184217185852192

`A001281(A005878(n))`
-/

namespace A005886.P16342184217185852192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005878 n).toNat

end

end A005886.P16342184217185852192

/-! ## A005886.P3592007744784678162

`A220466(A005878(n)-1)`
-/

namespace A005886.P3592007744784678162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (A005878 n - 1).toNat

end

end A005886.P3592007744784678162

/-! ## A005886.P6348274120410749037

`A002265(2*A005878(n))`
-/

namespace A005886.P6348274120410749037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A005878 n).toNat

end

end A005886.P6348274120410749037

/-! ## A005886.P14581542599299063154

`A026730(A005878(n)+1)-1`
-/

namespace A005886.P14581542599299063154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (A005878 n + 1).toNat - 1

end

end A005886.P14581542599299063154

/-! ## A005886.P6761175806582178186

`A005878(n)-(A005869(n)+A005869(n))`
-/

namespace A005886.P6761175806582178186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005878 n - (A005869 n + A005869 n)

end

end A005886.P6761175806582178186

/-! ## A005886.P40617139866296370

`A026730(2*2*A005878(n))`
-/

namespace A005886.P40617139866296370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (2 * (2 * A005878 n)).toNat

end

end A005886.P40617139866296370

/-! ## A005886.P6014181245264939297

`A246811(4*n+1)`
-/

namespace A005886.P6014181245264939297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246811 (4 * n + 1)

end

end A005886.P6014181245264939297

/-! ## A005886.P12985944723950842959

`A072068(4*n+2)`
-/

namespace A005886.P12985944723950842959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072068 (4 * n + 2)

end

end A005886.P12985944723950842959

/-!
# A005887: Theta series of f.c.c. lattice with respect to octahedral hole.

The programs for A005887, there is no canonical definition to state claims against.
-/

/-! ## A005887.P3064816549118904531

`A005875(2*n+1)`
-/

namespace A005887.P3064816549118904531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (2 * n + 1)

end

end A005887.P3064816549118904531

/-! ## A005887.P8567169985717939424

`2*A045826(n)`
-/

namespace A005887.P8567169985717939424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045826 n

end

end A005887.P8567169985717939424

/-! ## A005887.P14144868389745195535

`A005843(A045826(n))`
-/

namespace A005887.P14144868389745195535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A045826 n).toNat

end

end A005887.P14144868389745195535

/-! ## A005887.P9776464554551261608

`2*A176040(n)*A246811(n)`
-/

namespace A005887.P9776464554551261608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A176040 n * A246811 n)

end

end A005887.P9776464554551261608

/-! ## A005887.P16723949256880412723

`sqrt(A138202(Δ[n²]))`
-/

namespace A005887.P16723949256880412723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A138202 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A005887.P16723949256880412723

/-! ## A005887.P7997848520468273577

`abs(A213384(2*n+1))`
-/

namespace A005887.P7997848520468273577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213384 (2 * n + 1)|

end

end A005887.P7997848520468273577

/-! ## A005887.P14174705376081571990

`-A213384(A005408(n))`
-/

namespace A005887.P14174705376081571990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A213384 (A005408 n).toNat

end

end A005887.P14174705376081571990

/-! ## A005887.P15306502429358117682

`∑{d}[A213384(2*n+1), A000010(#)]`
-/

namespace A005887.P15306502429358117682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A005887.P15306502429358117682

/-! ## A005887.P8113533131529437608

`A117609(2*n+1)-A117609(2*n)`
-/

namespace A005887.P8113533131529437608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117609 (2 * n + 1) - A117609 (2 * n)

end

end A005887.P8113533131529437608

/-! ## A005887.P13466533614682354743

`A246631(2*n+1)+A169783(2*n+1)`
-/

namespace A005887.P13466533614682354743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 (2 * n + 1) + A169783 (2 * n + 1)

end

end A005887.P13466533614682354743

/-! ## A005887.P11722125723697527118

`A387658(2*n+1)-A004018(2*n+1)`
-/

namespace A005887.P11722125723697527118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387658 (2 * n + 1) - A004018 (2 * n + 1)

end

end A005887.P11722125723697527118

/-! ## A005887.P13337829954863148559

`(A057077(2*n)+2)*A246631(2*n+1)`
-/

namespace A005887.P13337829954863148559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057077 (2 * n) + 2) * A246631 (2 * n + 1)

end

end A005887.P13337829954863148559

/-! ## A005887.P17795421779535652368

`(A087960(2*n)+2)*A246631(2*n+1)`
-/

namespace A005887.P17795421779535652368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087960 (2 * n) + 2) * A246631 (2 * n + 1)

end

end A005887.P17795421779535652368

/-! ## A005887.P17662032792570257114

`gcd(A004013(2*n+1), A213384(2*n+1))`
-/

namespace A005887.P17662032792570257114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004013 (2 * n + 1)) (A213384 (2 * n + 1))

end

end A005887.P17662032792570257114

/-! ## A005887.P17870550281162081574

`A000156(2*n)-(A319309(2*n)+A213384(2*n+1))`
-/

namespace A005887.P17870550281162081574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 (2 * n) - (A319309 (2 * n) + A213384 (2 * n + 1))

end

end A005887.P17870550281162081574

/-! ## A005887.P1248892458584149957

`A000152(2*n+1)*A213384(2*n+1)/A319307(2*n+1)`
-/

namespace A005887.P1248892458584149957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000152 (2 * n + 1) * A213384 (2 * n + 1) : ℚ) / (A319307 (2 * n + 1) : ℚ)

end

end A005887.P1248892458584149957

/-! ## A005887.P14078251860154289455

`A000156(2*n+1)*A213384(2*n+1)/A319309(2*n+1)`
-/

namespace A005887.P14078251860154289455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000156 (2 * n + 1) * A213384 (2 * n + 1) : ℚ) / (A319309 (2 * n + 1) : ℚ)

end

end A005887.P14078251860154289455

/-! ## A005887.P7268240692837702020

`A004015(4*n+2)`
-/

namespace A005887.P7268240692837702020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (4 * n + 2)

end

end A005887.P7268240692837702020

/-! ## A005887.P8407002708965594523

`A014455(4*n+2)`
-/

namespace A005887.P8407002708965594523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (4 * n + 2)

end

end A005887.P8407002708965594523

/-! ## A005887.P6006045616404369861

`A132429(2*n)*A319078(2*n+1)`
-/

namespace A005887.P6006045616404369861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132429 (2 * n) * A319078 (2 * n + 1)

end

end A005887.P6006045616404369861

/-!
# A005888: Theta series of hexagonal close-packing with respect to edge between layers.

The programs for A005888, there is no canonical definition to state claims against.
-/

/-! ## A005888.P5024037878319592670

`2*A045837(A093178(n))`
-/

namespace A005888.P5024037878319592670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045837 (A093178 n).toNat

end

end A005888.P5024037878319592670

/-! ## A005888.P18070441500740231567

`2*A045837(n)`
-/

namespace A005888.P18070441500740231567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045837 n

end

end A005888.P18070441500740231567

/-! ## A005888.P15703425608503917217

`A005843(A045837(n))`
-/

namespace A005888.P15703425608503917217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A045837 n).toNat

end

end A005888.P15703425608503917217

/-! ## A005888.P1070523349089895423

`A045837(A028310(n))+A045837(n)`
-/

namespace A005888.P1070523349089895423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045837 (A028310 n).toNat + A045837 n

end

end A005888.P1070523349089895423

/-! ## A005888.P4328490901996696652

`A045837(n)+A045837(A093178(n))`
-/

namespace A005888.P4328490901996696652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045837 n + A045837 (A093178 n).toNat

end

end A005888.P4328490901996696652

/-! ## A005888.P14634684014366457227

`A045837(n)+A045837(A190621(n))`
-/

namespace A005888.P14634684014366457227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045837 n + A045837 (A190621 n).toNat

end

end A005888.P14634684014366457227

/-! ## A005888.P183098356952151837

`A045837(A000007(n)+n)+A045837(n)`
-/

namespace A005888.P183098356952151837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045837 (A000007 n + (n : ℤ)).toNat + A045837 n

end

end A005888.P183098356952151837

/-! ## A005888.P11362678987730223593

`A001222(4^A045837(n))`
-/

namespace A005888.P11362678987730223593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A045837 n : ℤ))).toNat

end

end A005888.P11362678987730223593

/-! ## A005888.P4803747767422429427

`A342001(4^A045837(n))`
-/

namespace A005888.P4803747767422429427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A045837 n : ℤ))).toNat

end

end A005888.P4803747767422429427

/-!
# A005889: Theta series of hexagonal close-packing with respect to triangle between octahedra.

The programs for A005889, there is no canonical definition to state claims against.
-/

/-! ## A005889.P3385309575526750809

`3*A045832(n+1)`
-/

namespace A005889.P3385309575526750809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045832 (n + 1)

end

end A005889.P3385309575526750809

/-! ## A005889.P13120634641018348184

`A008585(A045832(n+1))`
-/

namespace A005889.P13120634641018348184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A045832 (n + 1)).toNat

end

end A005889.P13120634641018348184

/-! ## A005889.P15156800810710890032

`lcm(A005885(n), A045832(n+1))`
-/

namespace A005889.P15156800810710890032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005885 n) (A045832 (n + 1))

end

end A005889.P15156800810710890032

/-! ## A005889.P10532568548174570165

`A005885(n)*(2-A010872(n+1))`
-/

namespace A005889.P10532568548174570165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005885 n * (2 - A010872 (n + 1))

end

end A005889.P10532568548174570165

/-! ## A005889.P1701187979843926580

`A005885(n)*A010872(2*n+1)`
-/

namespace A005889.P1701187979843926580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005885 n * A010872 (2 * n + 1)

end

end A005889.P1701187979843926580

/-! ## A005889.P11313032243575188187

`A005874(4*(n+1))`
-/

namespace A005889.P11313032243575188187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005874 (4 * (n + 1))

end

end A005889.P11313032243575188187

/-!
# A005890: Theta series of hexagonal close-packing with respect to center of triangle between two layers.

The programs for A005890, there is no canonical definition to state claims against.
-/

/-! ## A005890.P11685535952335044119

`and(A211649(A025047(n)), A211649(n))`
-/

namespace A005890.P11685535952335044119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211649 (A025047 n).toNat) (A211649 n)

end

end A005890.P11685535952335044119

/-! ## A005890.P7236174116775935380

`A355676(A207368(3*n+4)-6)`
-/

namespace A005890.P7236174116775935380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355676 (A207368 (3 * n + 4) - 6).toNat

end

end A005890.P7236174116775935380

/-! ## A005890.P7158708911842707391

`A303543(A303547(2*n+3))%4`
-/

namespace A005890.P7158708911842707391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303543 (A303547 (2 * n + 3)).toNat) 4

end

end A005890.P7158708911842707391

/-! ## A005890.P7897948934455844069

`A193352(A032742(2*n+3))%5`
-/

namespace A005890.P7897948934455844069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193352 (A032742 (2 * n + 3)).toNat) 5

end

end A005890.P7897948934455844069

/-! ## A005890.P16833510390695981505

`A046927(A050336(2*n+3)^A324198(n))`
-/

namespace A005890.P16833510390695981505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046927 (SequenceMachineLib.roundAway ((A050336 (2 * n + 3) : ℚ) ^ (A324198 n : ℤ))).toNat

end

end A005890.P16833510390695981505

/-!
# A005891: Centered pentagonal numbers: (5n^2+5n+2)/2; crystal ball sequence for 3.3.3.4.4. planar net.

The programs for A005891, the canonical program `A005891.P7384459603047225477` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005891 has offset 0).

The definition of A005891 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005891.P7384459603047225477

`a(n-1)+5*n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005891

/-- `a(n-1)+5*n` -/
def P7384459603047225477.Spec : Prop :=
  ∀ n, (P7384459603047225477.a n : ℤ) = A005891 n

theorem P7384459603047225477.correct : P7384459603047225477.Spec := by
  intro n
  simp only [A005891]

end A005891

/-! ## A005891.P482124314733220446

`1+5*n*(1+n)/2`
-/

namespace A005891.P482124314733220446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + 5 * ((n : ℚ) * ((1 + n : ℚ) / 2))

end

end A005891.P482124314733220446

namespace A005891

/-- `1+5*n*(1+n)/2` -/
def P482124314733220446.Spec : Prop :=
  ∀ n, P482124314733220446.a n = (A005891 n : ℚ)

theorem P482124314733220446.correct : P482124314733220446.Spec := by
  intro n
  induction n with
  | zero => simp [A005891, A005891.P482124314733220446.a, A005891.P7384459603047225477.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A005891, Nat.add_sub_cancel, A005891.P482124314733220446.a, A005891.P7384459603047225477.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A005891

/-! ## A005891.P11599796047323811204

`-xor(-1, ∑[5*n])`
-/

namespace A005891.P11599796047323811204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005891.P11599796047323811204

namespace A005891

/-- `-xor(-1, ∑[5*n])` -/
def P11599796047323811204.Spec : Prop :=
  ∀ n, P11599796047323811204.a n = A005891 n

end A005891

/-! ## A005891.P11148216042509037752

`∑[round(1/acot(5*n))]`
-/

namespace A005891.P11148216042509037752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (5 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005891.P11148216042509037752

namespace A005891

/-- `∑[round(1/acot(5*n))]` -/
def P11148216042509037752.Spec : Prop :=
  ∀ n, P11148216042509037752.a n = A005891 n

end A005891

/-! ## A005891.P1632104452626972680

`∑[a(n-1)+5]` with `a(0)=1, a(1)=5`
-/

namespace A005891.P1632104452626972680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005891.P1632104452626972680

namespace A005891

/-- `∑[a(n-1)+5]` -/
def P1632104452626972680.Spec : Prop :=
  ∀ n, (P1632104452626972680.a n : ℤ) = A005891 n

end A005891

/-! ## A005891.P17101504688587448087

`Δ[5*C(n+1, 3)+n]`
-/

namespace A005891.P17101504688587448087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose (n + 1) 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A005891.P17101504688587448087

namespace A005891

/-- `Δ[5*C(n+1, 3)+n]` -/
def P17101504688587448087.Spec : Prop :=
  ∀ n, P17101504688587448087.a n = A005891 n

end A005891

/-! ## A005891.P15712600943439067808

`Δ[n^3-C(n+1, 3)]`
-/

namespace A005891.P15712600943439067808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.choose (n + 1) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005891.P15712600943439067808

namespace A005891

/-- `Δ[n^3-C(n+1, 3)]` -/
def P15712600943439067808.Spec : Prop :=
  ∀ n, P15712600943439067808.a n = A005891 n

end A005891

/-! ## A005891.P4912540248176825406

`floor(6*n-(n-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A005891.P4912540248176825406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (6 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A005891.P4912540248176825406

namespace A005891

/-- `floor(6*n-(n-a(n-1)))` -/
def P4912540248176825406.Spec : Prop :=
  ∀ n, P4912540248176825406.a n = A005891 n

end A005891

/-! ## A005891.P6949624396212316284

`floor(n²-∑[a(n-1)-3])` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A005891.P6949624396212316284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005891.P6949624396212316284

namespace A005891

/-- `floor(n²-∑[a(n-1)-3])` -/
def P6949624396212316284.Spec : Prop :=
  ∀ n, P6949624396212316284.a n = A005891 n

end A005891

/-! ## A005891.P2348255527890794690

`∑[a(n-1)/(1-1/n)]` with `a(0)=1, a(1)=5`
-/

namespace A005891.P2348255527890794690
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) / (1 - 1 / (n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005891.P2348255527890794690

namespace A005891

/-- `∑[a(n-1)/(1-1/n)]` -/
def P2348255527890794690.Spec : Prop :=
  ∀ n, P2348255527890794690.a n = (A005891 n : ℚ)

end A005891

/-! ## A005891.P14103864105304061300

`∑[n*(5*n-a(n-1))]` with `a(0)=1, a(1)=5`
-/

namespace A005891.P14103864105304061300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  (n : ℤ) * ((5 * n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005891.P14103864105304061300

namespace A005891

/-- `∑[n*(5*n-a(n-1))]` -/
def P14103864105304061300.Spec : Prop :=
  ∀ n, P14103864105304061300.a n = A005891 n

end A005891

/-! ## A005891.P4706224261259249629

`floor(n-(∑[a(n-1)-5]-2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A005891.P4706224261259249629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A005891.P4706224261259249629

namespace A005891

/-- `floor(n-(∑[a(n-1)-5]-2))` -/
def P4706224261259249629.Spec : Prop :=
  ∀ n, P4706224261259249629.a n = A005891 n

end A005891

/-! ## A005891.P4901195346639114053

`floor(a(n-1)+n+n+n+n+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A005891.P4901195346639114053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + n + n + n + n + n

end

end A005891.P4901195346639114053

namespace A005891

/-- `floor(a(n-1)+n+n+n+n+n)` -/
def P4901195346639114053.Spec : Prop :=
  ∀ n, (P4901195346639114053.a n : ℤ) = A005891 n

theorem P4901195346639114053.correct : P4901195346639114053.Spec := by
  intro n
  simp only [A005891, Nat.add_sub_cancel, A005891.P4901195346639114053.a, A005891.P7384459603047225477.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005891

/-! ## A005891.P5084532194286158040

`∑[A008706(n)]`
-/

namespace A005891.P5084532194286158040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005891.P5084532194286158040

namespace A005891

/-- `∑[A008706(n)]` -/
def P5084532194286158040.Spec : Prop :=
  ∀ n, P5084532194286158040.a n = A005891 n

end A005891

/-! ## A005891.P17236685398227443672

`A164015(n)/5`
-/

namespace A005891.P17236685398227443672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164015 n : ℚ) / 5

end

end A005891.P17236685398227443672

namespace A005891

/-- `A164015(n)/5` -/
def P17236685398227443672.Spec : Prop :=
  ∀ n, P17236685398227443672.a n = (A005891 n : ℚ)

end A005891

/-! ## A005891.P8372242680359383651

`∑[A008574(n)+n]`
-/

namespace A005891.P8372242680359383651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005891.P8372242680359383651

namespace A005891

/-- `∑[A008574(n)+n]` -/
def P8372242680359383651.Spec : Prop :=
  ∀ n, P8372242680359383651.a n = A005891 n

end A005891

/-! ## A005891.P7364864359008484872

`∑[A008458(n)-n]`
-/

namespace A005891.P7364864359008484872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005891.P7364864359008484872

namespace A005891

/-- `∑[A008458(n)-n]` -/
def P7364864359008484872.Spec : Prop :=
  ∀ n, P7364864359008484872.a n = A005891 n

end A005891

/-! ## A005891.P5086466035046795394

`A386485(n+1)/2`
-/

namespace A005891.P5086466035046795394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386485 (n + 1) : ℚ) / 2

end

end A005891.P5086466035046795394

namespace A005891

/-- `A386485(n+1)/2` -/
def P5086466035046795394.Spec : Prop :=
  ∀ n, P5086466035046795394.a n = (A005891 n : ℚ)

end A005891

/-!
# A005892: Truncated square numbers: 7*n^2 + 4*n + 1.

The programs for A005892, the canonical program `A005892.P14421385829800175738` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005892 has offset 0).

The definition of A005892 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n²+4*n+1` (program `A005892.P14421385829800175738`, by `A005892.P14421385829800175738.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005892.P14421385829800175738

`7*n²+4*n+1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005892

/-- `7*n²+4*n+1` -/
def P14421385829800175738.Spec : Prop :=
  ∀ n, (P14421385829800175738.a n : ℤ) = A005892 n

theorem P14421385829800175738.correct : P14421385829800175738.Spec := by
  intro n
  simp only [A005892]

end A005892

/-! ## A005892.P3092480014156649001

`∑[a(n-1)+14]` with `a(0)=1, a(1)=11`
-/

namespace A005892.P3092480014156649001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005892.P3092480014156649001

namespace A005892

/-- `∑[a(n-1)+14]` -/
def P3092480014156649001.Spec : Prop :=
  ∀ n, (P3092480014156649001.a n : ℤ) = A005892 n

end A005892

/-! ## A005892.P14226608345145393503

`abs(Δ[C(4*n, 3)/4]-n²)`
-/

namespace A005892.P14226608345145393503
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) 3 : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - (n ^ 2 : ℚ)|

end

end A005892.P14226608345145393503

namespace A005892

/-- `abs(Δ[C(4*n, 3)/4]-n²)` -/
def P14226608345145393503.Spec : Prop :=
  ∀ n, P14226608345145393503.a n = (A005892 n : ℚ)

end A005892

/-! ## A005892.P8014861496984628301

`ceil(A017006(n)/7)`
-/

namespace A005892.P8014861496984628301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017006 n : ℚ) / 7⌉

end

end A005892.P8014861496984628301

namespace A005892

/-- `ceil(A017006(n)/7)` -/
def P8014861496984628301.Spec : Prop :=
  ∀ n, P8014861496984628301.a n = A005892 n

end A005892

/-! ## A005892.P9888454792478834470

`(A033572(n)+1-n)/2`
-/

namespace A005892.P9888454792478834470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033572 n + (1 - (n : ℤ)) : ℚ) / 2

end

end A005892.P9888454792478834470

namespace A005892

/-- `(A033572(n)+1-n)/2` -/
def P9888454792478834470.Spec : Prop :=
  ∀ n, P9888454792478834470.a n = (A005892 n : ℚ)

end A005892

/-! ## A005892.P7575447162495429362

`(A195026(n)+2+n)/2`
-/

namespace A005892.P7575447162495429362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195026 n + 2 + (n : ℤ) : ℚ) / 2

end

end A005892.P7575447162495429362

namespace A005892

/-- `(A195026(n)+2+n)/2` -/
def P7575447162495429362.Spec : Prop :=
  ∀ n, P7575447162495429362.a n = (A005892 n : ℚ)

end A005892

/-! ## A005892.P4862839050700308155

`abs(A069127(n+1)-2*n-n)`
-/

namespace A005892.P4862839050700308155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069127 (n + 1) - (2 * n : ℤ) - (n : ℤ)|

end

end A005892.P4862839050700308155

namespace A005892

/-- `abs(A069127(n+1)-2*n-n)` -/
def P4862839050700308155.Spec : Prop :=
  ∀ n, P4862839050700308155.a n = A005892 n

end A005892

/-! ## A005892.P10964036189041545990

`abs(n*(A016969(n)+n)+1-n)`
-/

namespace A005892.P10964036189041545990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A016969 n + (n : ℤ)) + 1 - (n : ℤ)|

end

end A005892.P10964036189041545990

namespace A005892

/-- `abs(n*(A016969(n)+n)+1-n)` -/
def P10964036189041545990.Spec : Prop :=
  ∀ n, P10964036189041545990.a n = A005892 n

end A005892

/-! ## A005892.P12280094766214781622

`A079414(n+1)%A108099(n)`
-/

namespace A005892.P12280094766214781622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079414 (n + 1)) (A108099 n)

end

end A005892.P12280094766214781622

namespace A005892

/-- `A079414(n+1)%A108099(n)` -/
def P12280094766214781622.Spec : Prop :=
  ∀ n, P12280094766214781622.a n = A005892 n

end A005892

/-! ## A005892.P17133482775005405411

`A175110(n)%A108928(n+1)`
-/

namespace A005892.P17133482775005405411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175110 n) (A108928 (n + 1))

end

end A005892.P17133482775005405411

namespace A005892

/-- `A175110(n)%A108928(n+1)` -/
def P17133482775005405411.Spec : Prop :=
  ∀ n, P17133482775005405411.a n = A005892 n

end A005892

/-! ## A005892.P11166898776103253470

`A180577(n+1)%A259055(n)`
-/

namespace A005892.P11166898776103253470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180577 (n + 1)) (A259055 n)

end

end A005892.P11166898776103253470

namespace A005892

/-- `A180577(n+1)%A259055(n)` -/
def P11166898776103253470.Spec : Prop :=
  ∀ n, P11166898776103253470.a n = A005892 n

end A005892

/-! ## A005892.P10618132986827579589

`Δ[A050410(n)]`
-/

namespace A005892.P10618132986827579589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005892.P10618132986827579589

namespace A005892

/-- `Δ[A050410(n)]` -/
def P10618132986827579589.Spec : Prop :=
  ∀ n, P10618132986827579589.a n = A005892 n

end A005892

/-! ## A005892.P10799638582036440240

`record[A077043(n)+xor(1, n)²]`
-/

namespace A005892.P10799638582036440240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n + (Nat.xor 1 n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005892.P10799638582036440240

namespace A005892

/-- `record[A077043(n)+xor(1, n)²]` -/
def P10799638582036440240.Spec : Prop :=
  ∀ n, P10799638582036440240.a n = A005892 n

end A005892

/-! ## A005892.P14975727067807268333

`∑[record[A000265(A017029(n))]]`
-/

namespace A005892.P14975727067807268333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017029 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005892.P14975727067807268333

namespace A005892

/-- `∑[record[A000265(A017029(n))]]` -/
def P14975727067807268333.Spec : Prop :=
  ∀ n, P14975727067807268333.a n = A005892 n

end A005892

/-! ## A005892.P2679579443872157616

`∑[A016921(n)+record[2*A064680(n)]]`
-/

namespace A005892.P2679579443872157616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005892.P2679579443872157616

namespace A005892

/-- `∑[A016921(n)+record[2*A064680(n)]]` -/
def P2679579443872157616.Spec : Prop :=
  ∀ n, P2679579443872157616.a n = A005892 n

end A005892

/-! ## A005892.P7897204511948585428

`A212965(2*n)`
-/

namespace A005892.P7897204511948585428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212965 (2 * n)

end

end A005892.P7897204511948585428

namespace A005892

/-- `A212965(2*n)` -/
def P7897204511948585428.Spec : Prop :=
  ∀ n, P7897204511948585428.a n = A005892 n

end A005892

/-! ## A005892.P3583525806830089684

`A036405(A017005(n))`
-/

namespace A005892.P3583525806830089684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036405 (A017005 n).toNat

end

end A005892.P3583525806830089684

namespace A005892

/-- `A036405(A017005(n))` -/
def P3583525806830089684.Spec : Prop :=
  ∀ n, P3583525806830089684.a n = A005892 n

end A005892

/-!
# A005893: Number of points on surface of tetrahedron; coordination sequence for sodalite net (equals 2*n^2+2 for n > 0).

The programs for A005893, the canonical program `A005893.P12560717778126936227` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005893 has offset 0).

The definition of A005893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005893.P12560717778126936227

`a(n-1)+4*n-2` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005893

/-- `a(n-1)+4*n-2` -/
def P12560717778126936227.Spec : Prop :=
  ∀ n, P12560717778126936227.a n = A005893 n

theorem P12560717778126936227.correct : P12560717778126936227.Spec := by
  intro n
  simp only [A005893]

end A005893

/-! ## A005893.P17928658616224979744

`ceil(2/acot(n)²)`
-/

namespace A005893.P17928658616224979744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉

end

end A005893.P17928658616224979744

namespace A005893

/-- `ceil(2/acot(n)²)` -/
def P17928658616224979744.Spec : Prop :=
  ∀ n, P17928658616224979744.a n = A005893 n

end A005893

/-! ## A005893.P2457999145736179439

`ceil(cot(log(cosh(acot(n)))))`
-/

namespace A005893.P2457999145736179439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.log (Real.cosh (SequenceMachineLib.acot (n : ℝ))))⌉

end

end A005893.P2457999145736179439

namespace A005893

/-- `ceil(cot(log(cosh(acot(n)))))` -/
def P2457999145736179439.Spec : Prop :=
  ∀ n, P2457999145736179439.a n = A005893 n

end A005893

/-! ## A005893.P255418976231657850

`floor(2/acot(n)²)+1`
-/

namespace A005893.P255418976231657850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌋ + 1

end

end A005893.P255418976231657850

namespace A005893

/-- `floor(2/acot(n)²)+1` -/
def P255418976231657850.Spec : Prop :=
  ∀ n, P255418976231657850.a n = A005893 n

end A005893

/-! ## A005893.P4555773653784394696

`ceil(2*n/acot(n))+1`
-/

namespace A005893.P4555773653784394696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n : ℝ) / SequenceMachineLib.acot (n : ℝ))⌉ + 1

end

end A005893.P4555773653784394696

namespace A005893

/-- `ceil(2*n/acot(n))+1` -/
def P4555773653784394696.Spec : Prop :=
  ∀ n, P4555773653784394696.a n = A005893 n

end A005893

/-! ## A005893.P10695652924373743373

`round(2*n/acot(n))+1`
-/

namespace A005893.P10695652924373743373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℝ) / SequenceMachineLib.acot (n : ℝ))) + 1

end

end A005893.P10695652924373743373

namespace A005893

/-- `round(2*n/acot(n))+1` -/
def P10695652924373743373.Spec : Prop :=
  ∀ n, P10695652924373743373.a n = A005893 n

end A005893

/-! ## A005893.P6885929072463714338

`floor(2*n/acot(n)+ϕ)`
-/

namespace A005893.P6885929072463714338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) / SequenceMachineLib.acot (n : ℝ) + Real.goldenRatio⌋

end

end A005893.P6885929072463714338

namespace A005893

/-- `floor(2*n/acot(n)+ϕ)` -/
def P6885929072463714338.Spec : Prop :=
  ∀ n, P6885929072463714338.a n = A005893 n

end A005893

/-! ## A005893.P1145696961112471536

`∑[a(n-1)+4]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A005893.P1145696961112471536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005893.P1145696961112471536

namespace A005893

/-- `∑[a(n-1)+4]` -/
def P1145696961112471536.Spec : Prop :=
  ∀ n, (P1145696961112471536.a n : ℤ) = A005893 n

end A005893

/-! ## A005893.P16094834632291882190

`(n²+1)*ceil(atan(n+1))`
-/

namespace A005893.P16094834632291882190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉

end

end A005893.P16094834632291882190

namespace A005893

/-- `(n²+1)*ceil(atan(n+1))` -/
def P16094834632291882190.Spec : Prop :=
  ∀ n, P16094834632291882190.a n = A005893 n

end A005893

/-! ## A005893.P15158971381228725688

`ceil(atan(n+1)+n*2*n)`
-/

namespace A005893.P15158971381228725688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) + (n * (2 * n) : ℝ)⌉

end

end A005893.P15158971381228725688

namespace A005893

/-- `ceil(atan(n+1)+n*2*n)` -/
def P15158971381228725688.Spec : Prop :=
  ∀ n, P15158971381228725688.a n = A005893 n

end A005893

/-! ## A005893.P12719081105961191937

`4*n-(2-a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A005893.P12719081105961191937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (4 * n : ℤ) - (2 - a (n - 1))

end

end A005893.P12719081105961191937

namespace A005893

/-- `4*n-(2-a(n-1))` -/
def P12719081105961191937.Spec : Prop :=
  ∀ n, P12719081105961191937.a n = A005893 n

end A005893

/-! ## A005893.P9436262005180162529

`2*n²+2-C(2, n+2)`
-/

namespace A005893.P9436262005180162529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) + (2 - (Nat.choose 2 (n + 2) : ℤ))

end

end A005893.P9436262005180162529

namespace A005893

/-- `2*n²+2-C(2, n+2)` -/
def P9436262005180162529.Spec : Prop :=
  ∀ n, P9436262005180162529.a n = A005893 n

end A005893

/-! ## A005893.P14906187590412995316

`gcd(2*(n²+1), C(2, n+2))`
-/

namespace A005893.P14906187590412995316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * (n ^ 2 + 1)) (Nat.choose 2 (n + 2))

end

end A005893.P14906187590412995316

namespace A005893

/-- `gcd(2*(n²+1), C(2, n+2))` -/
def P14906187590412995316.Spec : Prop :=
  ∀ n, (P14906187590412995316.a n : ℤ) = A005893 n

end A005893

/-! ## A005893.P9250643905626977029

`(n+1)²+((n-1)%(n+1))²`
-/

namespace A005893.P9250643905626977029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) ^ 2

end

end A005893.P9250643905626977029

namespace A005893

/-- `(n+1)²+((n-1)%(n+1))²` -/
def P9250643905626977029.Spec : Prop :=
  ∀ n, P9250643905626977029.a n = A005893 n

end A005893

/-! ## A005893.P5098812783520193260

`2-(C(n, 2*n)-n*2*n)`
-/

namespace A005893.P5098812783520193260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.choose n (2 * n) : ℤ) - (n * (2 * n) : ℤ))

end

end A005893.P5098812783520193260

namespace A005893

/-- `2-(C(n, 2*n)-n*2*n)` -/
def P5098812783520193260.Spec : Prop :=
  ∀ n, P5098812783520193260.a n = A005893 n

end A005893

/-! ## A005893.P6635984464242383311

`(n+1)²+floor(n²/(n+1))²`
-/

namespace A005893.P6635984464242383311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋ ^ 2

end

end A005893.P6635984464242383311

namespace A005893

/-- `(n+1)²+floor(n²/(n+1))²` -/
def P6635984464242383311.Spec : Prop :=
  ∀ n, P6635984464242383311.a n = A005893 n

end A005893

/-! ## A005893.P523336742609180934

`floor(lcm(2*n+1, ∑[2*n+1])/(n+2)-(n-1))`
-/

namespace A005893.P523336742609180934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 2 : ℚ) - ((n : ℤ) - 1 : ℚ)⌋

end

end A005893.P523336742609180934

namespace A005893

/-- `floor(lcm(2*n+1, ∑[2*n+1])/(n+2)-(n-1))` -/
def P523336742609180934.Spec : Prop :=
  ∀ n, P523336742609180934.a n = A005893 n

end A005893

/-! ## A005893.P3536621727406202903

`∑[A113127(n)]`
-/

namespace A005893.P3536621727406202903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005893.P3536621727406202903

namespace A005893

/-- `∑[A113127(n)]` -/
def P3536621727406202903.Spec : Prop :=
  ∀ n, P3536621727406202903.a n = A005893 n

end A005893

/-!
# A005894: Centered tetrahedral numbers.

The programs for A005894, the canonical program `A005894.P8041375310560838070` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005894 has offset 0).

The definition of A005894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005894.P8041375310560838070

`a(n-1)+2*n²+2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005894

/-- `a(n-1)+2*n²+2` -/
def P8041375310560838070.Spec : Prop :=
  ∀ n, (P8041375310560838070.a n : ℤ) = A005894 n

theorem P8041375310560838070.correct : P8041375310560838070.Spec := by
  intro n
  simp only [A005894]

end A005894

/-! ## A005894.P3068253807374557448

`(2*n+1)*(n²+n+3)/3`
-/

namespace A005894.P3068253807374557448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * ((n ^ 2 + (n + 3) : ℚ) / 3)

end

end A005894.P3068253807374557448

namespace A005894

/-- `(2*n+1)*(n²+n+3)/3` -/
def P3068253807374557448.Spec : Prop :=
  ∀ n, P3068253807374557448.a n = (A005894 n : ℚ)

theorem P3068253807374557448.correct : P3068253807374557448.Spec := by
  intro n
  induction n with
  | zero => simp [A005894, A005894.P3068253807374557448.a, A005894.P8041375310560838070.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A005894, Nat.add_sub_cancel, A005894.P3068253807374557448.a, A005894.P8041375310560838070.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A005894

/-! ## A005894.P293062791649254938

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=15, a(3)=35`
-/

namespace A005894.P293062791649254938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 15, 35] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A005894.P293062791649254938

namespace A005894

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P293062791649254938.Spec : Prop :=
  ∀ n, P293062791649254938.a n = A005894 n

end A005894

/-! ## A005894.P2521374097627515916

`A006527(n)+A006527(n+1)`
-/

namespace A005894.P2521374097627515916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n + A006527 (n + 1)

end

end A005894.P2521374097627515916

namespace A005894

/-- `A006527(n)+A006527(n+1)` -/
def P2521374097627515916.Spec : Prop :=
  ∀ n, P2521374097627515916.a n = A005894 n

end A005894

/-! ## A005894.P13769875604332086120

`∑[ceil(2/acot(n)²)]`
-/

namespace A005894.P13769875604332086120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005894.P13769875604332086120

namespace A005894

/-- `∑[ceil(2/acot(n)²)]` -/
def P13769875604332086120.Spec : Prop :=
  ∀ n, P13769875604332086120.a n = A005894 n

end A005894

/-! ## A005894.P17051892119850508996

`Δ[C(n²+3, 2)]/3`
-/

namespace A005894.P17051892119850508996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + 3) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3

end

end A005894.P17051892119850508996

namespace A005894

/-- `Δ[C(n²+3, 2)]/3` -/
def P17051892119850508996.Spec : Prop :=
  ∀ n, P17051892119850508996.a n = (A005894 n : ℚ)

end A005894

/-! ## A005894.P16396268475390251200

`Δ[n*(C(n+1, 3)+n)]`
-/

namespace A005894.P16396268475390251200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.choose (n + 1) 3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A005894.P16396268475390251200

namespace A005894

/-- `Δ[n*(C(n+1, 3)+n)]` -/
def P16396268475390251200.Spec : Prop :=
  ∀ n, P16396268475390251200.a n = A005894 n

end A005894

/-! ## A005894.P6222504271451890904

`∑[ceil(2*n/acot(n))+1]`
-/

namespace A005894.P6222504271451890904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) / SequenceMachineLib.acot (n : ℝ)⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005894.P6222504271451890904

namespace A005894

/-- `∑[ceil(2*n/acot(n))+1]` -/
def P6222504271451890904.Spec : Prop :=
  ∀ n, P6222504271451890904.a n = A005894 n

end A005894

/-! ## A005894.P6189811989153930684

`∑[∑[a(n-1)+4]]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A005894.P6189811989153930684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005894.P6189811989153930684

namespace A005894

/-- `∑[∑[a(n-1)+4]]` -/
def P6189811989153930684.Spec : Prop :=
  ∀ n, (P6189811989153930684.a n : ℤ) = A005894 n

end A005894

/-! ## A005894.P6538246862564974008

`or(1, ∑[2*n²]+2*n)`
-/

namespace A005894.P6538246862564974008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n)

end

end A005894.P6538246862564974008

namespace A005894

/-- `or(1, ∑[2*n²]+2*n)` -/
def P6538246862564974008.Spec : Prop :=
  ∀ n, (P6538246862564974008.a n : ℤ) = A005894 n

end A005894

/-! ## A005894.P5601534714848758901

`xor(1, ∑[2*n²]+2*n)`
-/

namespace A005894.P5601534714848758901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n)

end

end A005894.P5601534714848758901

namespace A005894

/-- `xor(1, ∑[2*n²]+2*n)` -/
def P5601534714848758901.Spec : Prop :=
  ∀ n, (P5601534714848758901.a n : ℤ) = A005894 n

end A005894

/-! ## A005894.P11490104649904867676

`∑[4*n-(2-a(n-1))]` with `a(0)=1, a(1)=4`
-/

namespace A005894.P11490104649904867676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  (4 * n : ℤ) - (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005894.P11490104649904867676

namespace A005894

/-- `∑[4*n-(2-a(n-1))]` -/
def P11490104649904867676.Spec : Prop :=
  ∀ n, P11490104649904867676.a n = A005894 n

end A005894

/-! ## A005894.P6957547223405962317

`2*n*n+a(n-1)+2` with `a(0)=1`
-/

namespace A005894.P6957547223405962317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (n * n) + (a (n - 1) + 2)

end

end A005894.P6957547223405962317

namespace A005894

/-- `2*n*n+a(n-1)+2` -/
def P6957547223405962317.Spec : Prop :=
  ∀ n, (P6957547223405962317.a n : ℤ) = A005894 n

end A005894

/-! ## A005894.P6772508490429854229

`∑[(n+1)²+((n-1)%(n+1))²]`
-/

namespace A005894.P6772508490429854229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005894.P6772508490429854229

namespace A005894

/-- `∑[(n+1)²+((n-1)%(n+1))²]` -/
def P6772508490429854229.Spec : Prop :=
  ∀ n, P6772508490429854229.a n = A005894 n

end A005894

/-! ## A005894.P14660720402618665927

`abs(1-∑[4*C(n, 2)+n+2+n])`
-/

namespace A005894.P14660720402618665927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 2 + (n + 2) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A005894.P14660720402618665927

namespace A005894

/-- `abs(1-∑[4*C(n, 2)+n+2+n])` -/
def P14660720402618665927.Spec : Prop :=
  ∀ n, P14660720402618665927.a n = A005894 n

end A005894

/-! ## A005894.P89640418642810605

`∑[A005893(n)]`
-/

namespace A005894.P89640418642810605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005894.P89640418642810605

namespace A005894

/-- `∑[A005893(n)]` -/
def P89640418642810605.Spec : Prop :=
  ∀ n, P89640418642810605.a n = A005894 n

end A005894

/-! ## A005894.P1024527802205685258

`∑[∑[A113127(n)]]`
-/

namespace A005894.P1024527802205685258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005894.P1024527802205685258

namespace A005894

/-- `∑[∑[A113127(n)]]` -/
def P1024527802205685258.Spec : Prop :=
  ∀ n, P1024527802205685258.a n = A005894 n

end A005894

/-! ## A005894.P12200383121669764314

`∑[A058331(n)]+n`
-/

namespace A005894.P12200383121669764314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A005894.P12200383121669764314

namespace A005894

/-- `∑[A058331(n)]+n` -/
def P12200383121669764314.Spec : Prop :=
  ∀ n, P12200383121669764314.a n = A005894 n

end A005894

/-! ## A005894.P8187863977333521788

`A159938(n+2)-1`
-/

namespace A005894.P8187863977333521788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159938 (n + 2) - 1

end

end A005894.P8187863977333521788

namespace A005894

/-- `A159938(n+2)-1` -/
def P8187863977333521788.Spec : Prop :=
  ∀ n, P8187863977333521788.a n = A005894 n

end A005894

/-! ## A005894.P10158707539461025001

`A188475(n)+2*n`
-/

namespace A005894.P10158707539461025001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188475 n + (2 * n : ℤ)

end

end A005894.P10158707539461025001

namespace A005894

/-- `A188475(n)+2*n` -/
def P10158707539461025001.Spec : Prop :=
  ∀ n, P10158707539461025001.a n = A005894 n

end A005894

/-!
# A005895: Weighted count of partitions with distinct parts.

The programs for A005895, there is no canonical definition to state claims against.
-/

/-! ## A005895.P11701687225852605375

`A117455(n+1)+A092265(n+1)`
-/

namespace A005895.P11701687225852605375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117455 (n + 1) + A092265 (n + 1)

end

end A005895.P11701687225852605375

/-! ## A005895.P6390989114831362078

`2*A067588(n+1)-A115029(n+1)`
-/

namespace A005895.P6390989114831362078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067588 (n + 1) - A115029 (n + 1)

end

end A005895.P6390989114831362078

/-! ## A005895.P4315278464044137686

`A117455(n+1)+2*A034296(n+1)-A000005(n+1)`
-/

namespace A005895.P4315278464044137686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117455 (n + 1) + (2 * A034296 (n + 1) - A000005 (n + 1))

end

end A005895.P4315278464044137686

/-! ## A005895.P9665320152590517674

`A034296(n+1)+A237665(n+1)+A117455(n+1)`
-/

namespace A005895.P9665320152590517674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 (n + 1) + (A237665 (n + 1) + A117455 (n + 1))

end

end A005895.P9665320152590517674

/-! ## A005895.P14458088985900178436

`A117455(n+1)+A000005(n+1)+A237665(n+1)+A237665(n+1)`
-/

namespace A005895.P14458088985900178436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117455 (n + 1) + (A000005 (n + 1) + (A237665 (n + 1) + A237665 (n + 1)))

end

end A005895.P14458088985900178436

/-! ## A005895.P1266127352327713565

`A067588(n+1)+A005896(n+1)`
-/

namespace A005895.P1266127352327713565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 (n + 1) + A005896 (n + 1)

end

end A005895.P1266127352327713565

/-! ## A005895.P389920587394282287

`A117455(n+1)+A005843(A237665(n+1))+A000005(n+1)`
-/

namespace A005895.P389920587394282287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117455 (n + 1) + (A005843 (A237665 (n + 1)).toNat + A000005 (n + 1))

end

end A005895.P389920587394282287

/-!
# A005896: Weighted count of partitions with odd parts.

The programs for A005896, there is no canonical definition to state claims against.
-/

/-! ## A005896.P6131012209482019120

`A067588(A028310(n))-A115029(n)`
-/

namespace A005896.P6131012209482019120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 (A028310 n).toNat - A115029 n

end

end A005896.P6131012209482019120

/-! ## A005896.P7579340217956016078

`A067588(A000007(n)+n)-A115029(n)`
-/

namespace A005896.P7579340217956016078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 (A000007 n + (n : ℤ)).toNat - A115029 n

end

end A005896.P7579340217956016078

/-! ## A005896.P8556948138626979321

`A000007(n)-(A115029(n)-A067588(n))`
-/

namespace A005896.P8556948138626979321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (A115029 n - A067588 n)

end

end A005896.P8556948138626979321

/-! ## A005896.P3970102195042708865

`(A067588(n)-A115029(n))%A010752(n)`
-/

namespace A005896.P3970102195042708865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067588 n - A115029 n) (A010752 n)

end

end A005896.P3970102195042708865

/-! ## A005896.P3033962406111314750

`(A067588(n)-A115029(n))*char[A117910(n)]`
-/

namespace A005896.P3033962406111314750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067588 n - A115029 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A005896.P3033962406111314750

/-! ## A005896.P6474639760318596723

`(A067588(n)-A115029(n))*A008683(2*A000040(n+1))`
-/

namespace A005896.P6474639760318596723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067588 n - A115029 n) * A008683 (2 * A000040 (n + 1)).toNat

end

end A005896.P6474639760318596723

/-!
# A005897: a(n) = 6*n^2 + 2 for n > 0, a(0)=1.

The programs for A005897, the canonical program `A005897.P17448091336519590882` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005897 has offset 0).

The definition of A005897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005897.P17448091336519590882

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=8, a(2)=26, a(3)=56`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005897

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P17448091336519590882.Spec : Prop :=
  ∀ n, P17448091336519590882.a n = A005897 n

theorem P17448091336519590882.correct : P17448091336519590882.Spec := by
  intro n
  simp only [A005897]

end A005897

/-! ## A005897.P7041963165824154297

`∑[a(n-1)+12]` with `a(0)=1, a(1)=7, a(2)=18`
-/

namespace A005897.P7041963165824154297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 18] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005897.P7041963165824154297

namespace A005897

/-- `∑[a(n-1)+12]` -/
def P7041963165824154297.Spec : Prop :=
  ∀ n, (P7041963165824154297.a n : ℤ) = A005897 n

end A005897

/-! ## A005897.P17293684922583529275

`6*n²+ceil(abs(sin(n)))+1`
-/

namespace A005897.P17293684922583529275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 2 : ℤ) + (⌈|Real.sin (n : ℝ)|⌉ + 1)

end

end A005897.P17293684922583529275

namespace A005897

/-- `6*n²+ceil(abs(sin(n)))+1` -/
def P17293684922583529275.Spec : Prop :=
  ∀ n, P17293684922583529275.a n = A005897 n

end A005897

/-! ## A005897.P9687077003655562559

`3*n*2*n+2-floor(acot(n))`
-/

namespace A005897.P9687077003655562559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n * (2 * n) + 2 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A005897.P9687077003655562559

namespace A005897

/-- `3*n*2*n+2-floor(acot(n))` -/
def P9687077003655562559.Spec : Prop :=
  ∀ n, P9687077003655562559.a n = A005897 n

end A005897

/-! ## A005897.P18150590419973785807

`C(11*n, 2)/11+∑[char[1]+n]+1`
-/

namespace A005897.P18150590419973785807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (11 * n) 2 : ℚ) / 11 + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ)

end

end A005897.P18150590419973785807

namespace A005897

/-- `C(11*n, 2)/11+∑[char[1]+n]+1` -/
def P18150590419973785807.Spec : Prop :=
  ∀ n, P18150590419973785807.a n = (A005897 n : ℚ)

end A005897

/-! ## A005897.P5418557604925928784

`(2*n)²+(n²+1)*ceil(atan(n+1))`
-/

namespace A005897.P5418557604925928784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) + (n ^ 2 + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉

end

end A005897.P5418557604925928784

namespace A005897

/-- `(2*n)²+(n²+1)*ceil(atan(n+1))` -/
def P5418557604925928784.Spec : Prop :=
  ∀ n, P5418557604925928784.a n = A005897 n

end A005897

/-! ## A005897.P18201742538096232622

`A010001(n)+n²`
-/

namespace A005897.P18201742538096232622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n + (n ^ 2 : ℤ)

end

end A005897.P18201742538096232622

namespace A005897

/-- `A010001(n)+n²` -/
def P18201742538096232622.Spec : Prop :=
  ∀ n, P18201742538096232622.a n = A005897 n

end A005897

/-! ## A005897.P10664057358312331393

`A005919(n)-n²`
-/

namespace A005897.P10664057358312331393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n - (n ^ 2 : ℤ)

end

end A005897.P10664057358312331393

namespace A005897

/-- `A005919(n)-n²` -/
def P10664057358312331393.Spec : Prop :=
  ∀ n, P10664057358312331393.a n = A005897 n

end A005897

/-! ## A005897.P1615220494261474456

`floor(A005914(n)/2)+1`
-/

namespace A005897.P1615220494261474456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005914 n : ℚ) / 2⌋ + 1

end

end A005897.P1615220494261474456

namespace A005897

/-- `floor(A005914(n)/2)+1` -/
def P1615220494261474456.Spec : Prop :=
  ∀ n, P1615220494261474456.a n = A005897 n

end A005897

/-! ## A005897.P19385456188978769

`A005893(n)+(2*n)²`
-/

namespace A005897.P19385456188978769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n + ((2 * n) ^ 2 : ℤ)

end

end A005897.P19385456188978769

namespace A005897

/-- `A005893(n)+(2*n)²` -/
def P19385456188978769.Spec : Prop :=
  ∀ n, P19385456188978769.a n = A005897 n

end A005897

/-! ## A005897.P10277708037923555537

`A005899(n)+2*n²`
-/

namespace A005897.P10277708037923555537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n + (2 * n ^ 2 : ℤ)

end

end A005897.P10277708037923555537

namespace A005897

/-- `A005899(n)+2*n²` -/
def P10277708037923555537.Spec : Prop :=
  ∀ n, P10277708037923555537.a n = A005897 n

end A005897

/-! ## A005897.P2227962154386241793

`A005901(n)-(2*n)²`
-/

namespace A005897.P2227962154386241793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n - ((2 * n) ^ 2 : ℤ)

end

end A005897.P2227962154386241793

namespace A005897

/-- `A005901(n)-(2*n)²` -/
def P2227962154386241793.Spec : Prop :=
  ∀ n, P2227962154386241793.a n = A005897 n

end A005897

/-! ## A005897.P3674443553914406829

`A008527(n)-2*n²`
-/

namespace A005897.P3674443553914406829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n - (2 * n ^ 2 : ℤ)

end

end A005897.P3674443553914406829

namespace A005897

/-- `A008527(n)-2*n²` -/
def P3674443553914406829.Spec : Prop :=
  ∀ n, P3674443553914406829.a n = A005897 n

end A005897

/-! ## A005897.P13395485189623211951

`A016742(n)+A005893(n)`
-/

namespace A005897.P13395485189623211951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + A005893 n

end

end A005897.P13395485189623211951

namespace A005897

/-- `A016742(n)+A005893(n)` -/
def P13395485189623211951.Spec : Prop :=
  ∀ n, P13395485189623211951.a n = A005897 n

end A005897

/-! ## A005897.P3510843532854195007

`A033428(n)+A005918(n)`
-/

namespace A005897.P3510843532854195007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + A005918 n

end

end A005897.P3510843532854195007

namespace A005897

/-- `A033428(n)+A005918(n)` -/
def P3510843532854195007.Spec : Prop :=
  ∀ n, P3510843532854195007.a n = A005897 n

end A005897

/-! ## A005897.P7020452421717333004

`A033429(n)+A010000(n)`
-/

namespace A005897.P7020452421717333004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n + A010000 n

end

end A005897.P7020452421717333004

namespace A005897

/-- `A033429(n)+A010000(n)` -/
def P7020452421717333004.Spec : Prop :=
  ∀ n, P7020452421717333004.a n = A005897 n

end A005897

/-! ## A005897.P15436185933930068038

`A054275(n)+A007590(n)`
-/

namespace A005897.P15436185933930068038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054275 n + A007590 n

end

end A005897.P15436185933930068038

namespace A005897

/-- `A054275(n)+A007590(n)` -/
def P15436185933930068038.Spec : Prop :=
  ∀ n, P15436185933930068038.a n = A005897 n

end A005897

/-! ## A005897.P18350135585128245888

`A077588(n)+A028896(n)`
-/

namespace A005897.P18350135585128245888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077588 n + A028896 n

end

end A005897.P18350135585128245888

namespace A005897

/-- `A077588(n)+A028896(n)` -/
def P18350135585128245888.Spec : Prop :=
  ∀ n, P18350135585128245888.a n = A005897 n

end A005897

/-!
# A005898: Centered cube numbers: n^3 + (n+1)^3.

The programs for A005898, the canonical program `A005898.P8127451400230703254` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005898 has offset 0).

The definition of A005898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+(n+1)^3` (program `A005898.P8127451400230703254`, by `A005898.P8127451400230703254.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005898.P8127451400230703254

`n^3+(n+1)^3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005898

/-- `n^3+(n+1)^3` -/
def P8127451400230703254.Spec : Prop :=
  ∀ n, (P8127451400230703254.a n : ℤ) = A005898 n

theorem P8127451400230703254.correct : P8127451400230703254.Spec := by
  intro n
  simp only [A005898]

end A005898

/-! ## A005898.P5119060469449134450

`A005408(n)*A002061(n+1)`
-/

namespace A005898.P5119060469449134450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A002061 (n + 1)

end

end A005898.P5119060469449134450

namespace A005898

/-- `A005408(n)*A002061(n+1)` -/
def P5119060469449134450.Spec : Prop :=
  ∀ n, P5119060469449134450.a n = A005898 n

end A005898

/-! ## A005898.P2034745402624878961

`Δ[C(n²+1, 2)]`
-/

namespace A005898.P2034745402624878961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A005898.P2034745402624878961

namespace A005898

/-- `Δ[C(n²+1, 2)]` -/
def P2034745402624878961.Spec : Prop :=
  ∀ n, P2034745402624878961.a n = A005898 n

end A005898

/-! ## A005898.P16465344327582605378

`Δ[n²²-C(n², 2)]`
-/

namespace A005898.P16465344327582605378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - (Nat.choose (n ^ 2) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005898.P16465344327582605378

namespace A005898

/-- `Δ[n²²-C(n², 2)]` -/
def P16465344327582605378.Spec : Prop :=
  ∀ n, P16465344327582605378.a n = A005898 n

end A005898

/-! ## A005898.P11541875861726437544

`floor((2*n+1)/Δ[atan(n)])`
-/

namespace A005898.P11541875861726437544
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / (f1 (n + 1) - f1 n)⌋

end

end A005898.P11541875861726437544

namespace A005898

/-- `floor((2*n+1)/Δ[atan(n)])` -/
def P11541875861726437544.Spec : Prop :=
  ∀ n, P11541875861726437544.a n = A005898 n

end A005898

/-! ## A005898.P931669981250005576

`round((2*n+1)/Δ[atan(n)])`
-/

namespace A005898.P931669981250005576
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) / (f1 (n + 1) - f1 n))

end

end A005898.P931669981250005576

namespace A005898

/-- `round((2*n+1)/Δ[atan(n)])` -/
def P931669981250005576.Spec : Prop :=
  ∀ n, P931669981250005576.a n = A005898 n

end A005898

/-! ## A005898.P12236980160605254331

`∑[∑[a(n-1)+12]]` with `a(0)=1, a(1)=7, a(2)=18`
-/

namespace A005898.P12236980160605254331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 18] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005898.P12236980160605254331

namespace A005898

/-- `∑[∑[a(n-1)+12]]` -/
def P12236980160605254331.Spec : Prop :=
  ∀ n, (P12236980160605254331.a n : ℤ) = A005898 n

end A005898

/-! ## A005898.P5345236284025295582

`(lcm(n, n+1)+1)*Δ[n²]`
-/

namespace A005898.P5345236284025295582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A005898.P5345236284025295582

namespace A005898

/-- `(lcm(n, n+1)+1)*Δ[n²]` -/
def P5345236284025295582.Spec : Prop :=
  ∀ n, P5345236284025295582.a n = A005898 n

end A005898

/-! ## A005898.P4657612834222543496

`(2*n+1)*or(1, ∑[2*n])`
-/

namespace A005898.P4657612834222543496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005898.P4657612834222543496

namespace A005898

/-- `(2*n+1)*or(1, ∑[2*n])` -/
def P4657612834222543496.Spec : Prop :=
  ∀ n, (P4657612834222543496.a n : ℤ) = A005898 n

end A005898

/-! ## A005898.P599298178828263231

`(2*n+1)*xor(1, ∑[2*n])`
-/

namespace A005898.P599298178828263231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005898.P599298178828263231

namespace A005898

/-- `(2*n+1)*xor(1, ∑[2*n])` -/
def P599298178828263231.Spec : Prop :=
  ∀ n, (P599298178828263231.a n : ℤ) = A005898 n

end A005898

/-! ## A005898.P14045824451657389733

`(2*n+1)*(record[(n-1)²]-n)`
-/

namespace A005898.P14045824451657389733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ))

end

end A005898.P14045824451657389733

namespace A005898

/-- `(2*n+1)*(record[(n-1)²]-n)` -/
def P14045824451657389733.Spec : Prop :=
  ∀ n, P14045824451657389733.a n = A005898 n

end A005898

/-! ## A005898.P16332476646772206930

`(2*n+1)*ceil((n+1)/acot(n))`
-/

namespace A005898.P16332476646772206930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌉

end

end A005898.P16332476646772206930

namespace A005898

/-- `(2*n+1)*ceil((n+1)/acot(n))` -/
def P16332476646772206930.Spec : Prop :=
  ∀ n, P16332476646772206930.a n = A005898 n

end A005898

/-! ## A005898.P8495343426076751288

`(2*n+1)*(∑[lcm(2, 2*n)]+1)`
-/

namespace A005898.P8495343426076751288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A005898.P8495343426076751288

namespace A005898

/-- `(2*n+1)*(∑[lcm(2, 2*n)]+1)` -/
def P8495343426076751288.Spec : Prop :=
  ∀ n, (P8495343426076751288.a n : ℤ) = A005898 n

end A005898

/-! ## A005898.P10984082648831126820

`or(1, (2*n+1)*(n²+1+n))`
-/

namespace A005898.P10984082648831126820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((2 * n + 1) * (n ^ 2 + 1 + n))

end

end A005898.P10984082648831126820

namespace A005898

/-- `or(1, (2*n+1)*(n²+1+n))` -/
def P10984082648831126820.Spec : Prop :=
  ∀ n, (P10984082648831126820.a n : ℤ) = A005898 n

end A005898

/-! ## A005898.P2696200346927794356

`(2*n+1)*(xor(2, n²)+n-1)`
-/

namespace A005898.P2696200346927794356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((Nat.xor 2 (n ^ 2) : ℤ) + ((n : ℤ) - 1))

end

end A005898.P2696200346927794356

namespace A005898

/-- `(2*n+1)*(xor(2, n²)+n-1)` -/
def P2696200346927794356.Spec : Prop :=
  ∀ n, P2696200346927794356.a n = A005898 n

end A005898

/-! ## A005898.P12400259412830469607

`(2*n+1)*(∑[n+1]+C(n, 2))`
-/

namespace A005898.P12400259412830469607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 2)

end

end A005898.P12400259412830469607

namespace A005898

/-- `(2*n+1)*(∑[n+1]+C(n, 2))` -/
def P12400259412830469607.Spec : Prop :=
  ∀ n, (P12400259412830469607.a n : ℤ) = A005898 n

end A005898

/-! ## A005898.P8513821712601537708

`(2*n+1)*(C(n+1, n)+n²)`
-/

namespace A005898.P8513821712601537708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.choose (n + 1) n + n ^ 2)

end

end A005898.P8513821712601537708

namespace A005898

/-- `(2*n+1)*(C(n+1, n)+n²)` -/
def P8513821712601537708.Spec : Prop :=
  ∀ n, (P8513821712601537708.a n : ℤ) = A005898 n

theorem P8513821712601537708.correct : P8513821712601537708.Spec := by
  intro n
  simp only [A005898, Nat.add_sub_cancel, A005898.P8513821712601537708.a, A005898.P8127451400230703254.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A005898

/-! ## A005898.P13707105203569972576

`(2*C(n+1, 2)+1)*(2*n+1)`
-/

namespace A005898.P13707105203569972576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (n + 1) 2 + 1) * (2 * n + 1)

end

end A005898.P13707105203569972576

namespace A005898

/-- `(2*C(n+1, 2)+1)*(2*n+1)` -/
def P13707105203569972576.Spec : Prop :=
  ∀ n, (P13707105203569972576.a n : ℤ) = A005898 n

end A005898

/-! ## A005898.P8876495839600039801

`(2*n+1)*xor(5, (2*n+1)²)/4`
-/

namespace A005898.P8876495839600039801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * ((Nat.xor 5 ((2 * n + 1) ^ 2) : ℚ) / 4)

end

end A005898.P8876495839600039801

namespace A005898

/-- `(2*n+1)*xor(5, (2*n+1)²)/4` -/
def P8876495839600039801.Spec : Prop :=
  ∀ n, P8876495839600039801.a n = (A005898 n : ℚ)

end A005898

/-! ## A005898.P16332136322959320990

`(2*n+1)*((n%(n+1))²+n+1)`
-/

namespace A005898.P16332136322959320990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((n % (n + 1)) ^ 2 + (n + 1))

end

end A005898.P16332136322959320990

namespace A005898

/-- `(2*n+1)*((n%(n+1))²+n+1)` -/
def P16332136322959320990.Spec : Prop :=
  ∀ n, (P16332136322959320990.a n : ℤ) = A005898 n

theorem P16332136322959320990.correct : P16332136322959320990.Spec := by
  intro n
  simp only [A005898, Nat.add_sub_cancel, A005898.P16332136322959320990.a, A005898.P8127451400230703254.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A005898

/-!
# A005899: Number of points on surface of octahedron; also coordination sequence for cubic lattice: a(0) = 1; for n > 0, a(n) = 4n^2 + 2.

The programs for A005899, the canonical program `A005899.P4162979677913820766` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005899 has offset 0).

The definition of A005899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005899.P4162979677913820766

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=18, a(3)=38`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005899

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P4162979677913820766.Spec : Prop :=
  ∀ n, P4162979677913820766.a n = A005899 n

theorem P4162979677913820766.correct : P4162979677913820766.Spec := by
  intro n
  simp only [A005899]

end A005899

/-! ## A005899.P8579442797196767627

`4*n+A008574(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A005899.P8579442797196767627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n : ℤ) + A008574 (n - 1) + a (n - 1)

end

end A005899.P8579442797196767627

namespace A005899

/-- `4*n+A008574(n-1)+a(n-1)` -/
def P8579442797196767627.Spec : Prop :=
  ∀ n, P8579442797196767627.a n = A005899 n

end A005899

/-! ## A005899.P11655183069841131090

`A010014(n)-A195322(n)`
-/

namespace A005899.P11655183069841131090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010014 n - A195322 n

end

end A005899.P11655183069841131090

namespace A005899

/-- `A010014(n)-A195322(n)` -/
def P11655183069841131090.Spec : Prop :=
  ∀ n, P11655183069841131090.a n = A005899 n

end A005899

/-! ## A005899.P9909078443275170744

`floor((2/acot(n))²)`
-/

namespace A005899.P9909078443275170744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / SequenceMachineLib.acot (n : ℝ)) ^ 2⌋

end

end A005899.P9909078443275170744

namespace A005899

/-- `floor((2/acot(n))²)` -/
def P9909078443275170744.Spec : Prop :=
  ∀ n, P9909078443275170744.a n = A005899 n

end A005899

/-! ## A005899.P15842596064347960115

`ceil((2/acot(n))²)-1`
-/

namespace A005899.P15842596064347960115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 / SequenceMachineLib.acot (n : ℝ)) ^ 2⌉ - 1

end

end A005899.P15842596064347960115

namespace A005899

/-- `ceil((2/acot(n))²)-1` -/
def P15842596064347960115.Spec : Prop :=
  ∀ n, P15842596064347960115.a n = A005899 n

end A005899

/-! ## A005899.P13652078293850112068

`ceil((1/acot(n)+n)²)`
-/

namespace A005899.P13652078293850112068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 / SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) ^ 2⌉

end

end A005899.P13652078293850112068

namespace A005899

/-- `ceil((1/acot(n)+n)²)` -/
def P13652078293850112068.Spec : Prop :=
  ∀ n, P13652078293850112068.a n = A005899 n

end A005899

/-! ## A005899.P9191587682317728440

`ceil(cot(atan(acot(2*n))²))`
-/

namespace A005899.P9191587682317728440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.arctan (SequenceMachineLib.acot (2 * n : ℝ)) ^ 2)⌉

end

end A005899.P9191587682317728440

namespace A005899

/-- `ceil(cot(atan(acot(2*n))²))` -/
def P9191587682317728440.Spec : Prop :=
  ∀ n, P9191587682317728440.a n = A005899 n

end A005899

/-! ## A005899.P9679019870015012874

`ceil(cot(tanh(acot(2*n))²))`
-/

namespace A005899.P9679019870015012874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.tanh (SequenceMachineLib.acot (2 * n : ℝ)) ^ 2)⌉

end

end A005899.P9679019870015012874

namespace A005899

/-- `ceil(cot(tanh(acot(2*n))²))` -/
def P9679019870015012874.Spec : Prop :=
  ∀ n, P9679019870015012874.a n = A005899 n

end A005899

/-! ## A005899.P325961486625578477

`∑[a(n-1)+8]` with `a(0)=1, a(1)=5, a(2)=12`
-/

namespace A005899.P325961486625578477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 12] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005899.P325961486625578477

namespace A005899

/-- `∑[a(n-1)+8]` -/
def P325961486625578477.Spec : Prop :=
  ∀ n, (P325961486625578477.a n : ℤ) = A005899 n

end A005899

/-! ## A005899.P10841619200340885475

`ceil(atan(n+1)+(2*n)²)`
-/

namespace A005899.P10841619200340885475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) + ((2 * n) ^ 2 : ℝ)⌉

end

end A005899.P10841619200340885475

namespace A005899

/-- `ceil(atan(n+1)+(2*n)²)` -/
def P10841619200340885475.Spec : Prop :=
  ∀ n, P10841619200340885475.a n = A005899 n

end A005899

/-! ## A005899.P591596336886714130

`gcd(2, C(2, n²))+(2*n)²`
-/

namespace A005899.P591596336886714130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.choose 2 (n ^ 2)) + (2 * n) ^ 2

end

end A005899.P591596336886714130

namespace A005899

/-- `gcd(2, C(2, n²))+(2*n)²` -/
def P591596336886714130.Spec : Prop :=
  ∀ n, (P591596336886714130.a n : ℤ) = A005899 n

end A005899

/-! ## A005899.P6205676664253907840

`or((2*n)², (2%(n+2))!)`
-/

namespace A005899.P6205676664253907840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor ((2 * n) ^ 2) (Nat.factorial (2 % (n + 2)))

end

end A005899.P6205676664253907840

namespace A005899

/-- `or((2*n)², (2%(n+2))!)` -/
def P6205676664253907840.Spec : Prop :=
  ∀ n, (P6205676664253907840.a n : ℤ) = A005899 n

end A005899

/-! ## A005899.P9611483850684766019

`ceil(2*n/acot(2*n))+1`
-/

namespace A005899.P9611483850684766019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) / SequenceMachineLib.acot (2 * n : ℝ)⌉ + 1

end

end A005899.P9611483850684766019

namespace A005899

/-- `ceil(2*n/acot(2*n))+1` -/
def P9611483850684766019.Spec : Prop :=
  ∀ n, P9611483850684766019.a n = A005899 n

end A005899

/-! ## A005899.P2553167531847562021

`round((2*n)²+atan(n+2)²)`
-/

namespace A005899.P2553167531847562021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n) ^ 2 : ℝ) + Real.arctan (n + 2 : ℝ) ^ 2)

end

end A005899.P2553167531847562021

namespace A005899

/-- `round((2*n)²+atan(n+2)²)` -/
def P2553167531847562021.Spec : Prop :=
  ∀ n, P2553167531847562021.a n = A005899 n

end A005899

/-! ## A005899.P6007408770016938978

`8*n+a(n-1)-4` with `a(0)=1, a(1)=6`
-/

namespace A005899.P6007408770016938978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  (8 * n : ℤ) + (a (n - 1) - 4)

end

end A005899.P6007408770016938978

namespace A005899

/-- `8*n+a(n-1)-4` -/
def P6007408770016938978.Spec : Prop :=
  ∀ n, P6007408770016938978.a n = A005899 n

end A005899

/-! ## A005899.P15358683340154251120

`8*n-(4-a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A005899.P15358683340154251120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  (8 * n : ℤ) - (4 - a (n - 1))

end

end A005899.P15358683340154251120

namespace A005899

/-- `8*n-(4-a(n-1))` -/
def P15358683340154251120.Spec : Prop :=
  ∀ n, P15358683340154251120.a n = A005899 n

end A005899

/-! ## A005899.P14313401076435394530

`(2*n)²+2-C(2, n+2)`
-/

namespace A005899.P14313401076435394530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) + (2 - (Nat.choose 2 (n + 2) : ℤ))

end

end A005899.P14313401076435394530

namespace A005899

/-- `(2*n)²+2-C(2, n+2)` -/
def P14313401076435394530.Spec : Prop :=
  ∀ n, P14313401076435394530.a n = A005899 n

end A005899

/-! ## A005899.P16093272145393172332

`2-(C(n, 2*n)-(2*n)²)`
-/

namespace A005899.P16093272145393172332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.choose n (2 * n) : ℤ) - ((2 * n) ^ 2 : ℤ))

end

end A005899.P16093272145393172332

namespace A005899

/-- `2-(C(n, 2*n)-(2*n)²)` -/
def P16093272145393172332.Spec : Prop :=
  ∀ n, P16093272145393172332.a n = A005899 n

end A005899

