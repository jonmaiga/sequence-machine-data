import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
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
# A222000: Number of n X n arrays with each row a permutation of 1..n having at least as many downsteps as the preceding row, with rows in lexicographically nonincreasing order.

The programs for A222000, there is no canonical definition to state claims against.
-/

/-! ## A222000.P4446748524435900771

`A222005(∑[4*n]+1)`
-/

namespace A222000.P4446748524435900771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222005 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222000.P4446748524435900771

/-!
# A222001: Number of n X 3 arrays with each row a permutation of 1..3 having at least as many downsteps as the preceding row, with rows in lexicographically nonincreasing order.

The programs for A222001, the canonical program `A222001.P3078309820610259511` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222001 has offset 1).

The definition of A222001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222001.P3078309820610259511

`C(n+4, 3)+2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222001

/-- `C(n+4, 3)+2` -/
def P3078309820610259511.Spec : Prop :=
  ∀ n, (P3078309820610259511.a n : ℤ) = A222001 (n + 1)

theorem P3078309820610259511.correct : P3078309820610259511.Spec := by
  intro n
  simp only [A222001, Nat.add_sub_cancel]

end A222001

/-! ## A222001.P128526218668438589

`∑[∑[n+2]+1]+3`
-/

namespace A222001.P128526218668438589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A222001.P128526218668438589

namespace A222001

/-- `∑[∑[n+2]+1]+3` -/
def P128526218668438589.Spec : Prop :=
  ∀ n, (P128526218668438589.a n : ℤ) = A222001 (n + 1)

end A222001

/-! ## A222001.P14781132747646234689

`record[a(n-2)+n²]` with `a(0)=6, a(1)=3, a(2)=6`
-/

namespace A222001.P14781132747646234689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 3, 6] fun n f1 =>
  f1 (n - 2) + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222001.P14781132747646234689

namespace A222001

/-- `record[a(n-2)+n²]` -/
def P14781132747646234689.Spec : Prop :=
  ∀ n, (P14781132747646234689.a n : ℤ) = A222001 (n + 1)

end A222001

/-! ## A222001.P16772660932946745310

`record[A000217(n)+a(n-1)]` with `a(0)=6, a(1)=3`
-/

namespace A222001.P16772660932946745310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 3] fun n f1 =>
  A000217 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222001.P16772660932946745310

namespace A222001

/-- `record[A000217(n)+a(n-1)]` -/
def P16772660932946745310.Spec : Prop :=
  ∀ n, P16772660932946745310.a n = A222001 (n + 1)

end A222001

/-! ## A222001.P14472401179254280799

`∑[A000217(A028310(n)+2)]`
-/

namespace A222001.P14472401179254280799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A028310 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222001.P14472401179254280799

namespace A222001

/-- `∑[A000217(A028310(n)+2)]` -/
def P14472401179254280799.Spec : Prop :=
  ∀ n, P14472401179254280799.a n = A222001 (n + 1)

end A222001

/-! ## A222001.P12072123783746335266

`∑[A000217(A004277(n)+2-n)]`
-/

namespace A222001.P12072123783746335266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004277 n + (2 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222001.P12072123783746335266

namespace A222001

/-- `∑[A000217(A004277(n)+2-n)]` -/
def P12072123783746335266.Spec : Prop :=
  ∀ n, P12072123783746335266.a n = A222001 (n + 1)

end A222001

/-! ## A222001.P5455296174714162845

`∑[A000217(or(2, A000122(n))+n)]`
-/

namespace A222001.P5455296174714162845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.lor 2 (A000122 n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222001.P5455296174714162845

namespace A222001

/-- `∑[A000217(or(2, A000122(n))+n)]` -/
def P5455296174714162845.Spec : Prop :=
  ∀ n, P5455296174714162845.a n = A222001 (n + 1)

end A222001

/-! ## A222001.P14257892880558805763

`Δ[A051743(n+1)+n]`
-/

namespace A222001.P14257892880558805763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051743 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222001.P14257892880558805763

namespace A222001

/-- `Δ[A051743(n+1)+n]` -/
def P14257892880558805763.Spec : Prop :=
  ∀ n, P14257892880558805763.a n = A222001 (n + 1)

end A222001

/-! ## A222001.P18148603766588681365

`∑[A253145(A028310(n)+1)]`
-/

namespace A222001.P18148603766588681365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222001.P18148603766588681365

namespace A222001

/-- `∑[A253145(A028310(n)+1)]` -/
def P18148603766588681365.Spec : Prop :=
  ∀ n, P18148603766588681365.a n = A222001 (n + 1)

end A222001

/-! ## A222001.P17795695586892425965

`Δ[A229439(n+2)]`
-/

namespace A222001.P17795695586892425965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229439 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222001.P17795695586892425965

namespace A222001

/-- `Δ[A229439(n+2)]` -/
def P17795695586892425965.Spec : Prop :=
  ∀ n, P17795695586892425965.a n = A222001 (n + 1)

end A222001

/-! ## A222001.P1659735705657764008

`(A155753(n+3)+1)/2`
-/

namespace A222001.P1659735705657764008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155753 (n + 3) + 1 : ℚ) / 2

end

end A222001.P1659735705657764008

namespace A222001

/-- `(A155753(n+3)+1)/2` -/
def P1659735705657764008.Spec : Prop :=
  ∀ n, P1659735705657764008.a n = (A222001 (n + 1) : ℚ)

end A222001

/-! ## A222001.P11105883013850837188

`Δ[A005582(n)+Δ[A005586(n)]]`
-/

namespace A222001.P11105883013850837188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222001.P11105883013850837188

namespace A222001

/-- `Δ[A005582(n)+Δ[A005586(n)]]` -/
def P11105883013850837188.Spec : Prop :=
  ∀ n, P11105883013850837188.a n = A222001 (n + 1)

end A222001

/-! ## A222001.P13752327707939126418

`Δ[A101338(n+2)+n]`
-/

namespace A222001.P13752327707939126418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101338 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222001.P13752327707939126418

namespace A222001

/-- `Δ[A101338(n+2)+n]` -/
def P13752327707939126418.Spec : Prop :=
  ∀ n, P13752327707939126418.a n = A222001 (n + 1)

end A222001

/-! ## A222001.P17847550482684240866

`Δ[Δ[A353232(n+3)]]`
-/

namespace A222001.P17847550482684240866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353232 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222001.P17847550482684240866

namespace A222001

/-- `Δ[Δ[A353232(n+3)]]` -/
def P17847550482684240866.Spec : Prop :=
  ∀ n, P17847550482684240866.a n = A222001 (n + 1)

end A222001

/-! ## A222001.P3668139103055095397

`Δ[A000332(n+4)+2*n]`
-/

namespace A222001.P3668139103055095397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222001.P3668139103055095397

namespace A222001

/-- `Δ[A000332(n+4)+2*n]` -/
def P3668139103055095397.Spec : Prop :=
  ∀ n, P3668139103055095397.a n = A222001 (n + 1)

end A222001

/-! ## A222001.P10784348264268410007

`(A082138(n+1)+A000079(n+1))/A000079(n)`
-/

namespace A222001.P10784348264268410007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082138 (n + 1) + A000079 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A222001.P10784348264268410007

namespace A222001

/-- `(A082138(n+1)+A000079(n+1))/A000079(n)` -/
def P10784348264268410007.Spec : Prop :=
  ∀ n, P10784348264268410007.a n = (A222001 (n + 1) : ℚ)

end A222001

/-! ## A222001.P3976444786376320520

`record[A158824(n+2)+2]`
-/

namespace A222001.P3976444786376320520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158824 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222001.P3976444786376320520

namespace A222001

/-- `record[A158824(n+2)+2]` -/
def P3976444786376320520.Spec : Prop :=
  ∀ n, P3976444786376320520.a n = A222001 (n + 1)

end A222001

/-! ## A222001.P3550358433431504361

`record[A213500(n+2)+2]`
-/

namespace A222001.P3550358433431504361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222001.P3550358433431504361

namespace A222001

/-- `record[A213500(n+2)+2]` -/
def P3550358433431504361.Spec : Prop :=
  ∀ n, P3550358433431504361.a n = A222001 (n + 1)

end A222001

/-! ## A222001.P3067543534323565656

`∑[A000217(A332026(∑[n+1]))]`
-/

namespace A222001.P3067543534323565656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A332026 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222001.P3067543534323565656

namespace A222001

/-- `∑[A000217(A332026(∑[n+1]))]` -/
def P3067543534323565656.Spec : Prop :=
  ∀ n, P3067543534323565656.a n = A222001 (n + 1)

end A222001

/-! ## A222001.P10647892423965242093

`∑[A057944(A167614(n+1))]`
-/

namespace A222001.P10647892423965242093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222001.P10647892423965242093

namespace A222001

/-- `∑[A057944(A167614(n+1))]` -/
def P10647892423965242093.Spec : Prop :=
  ∀ n, P10647892423965242093.a n = A222001 (n + 1)

end A222001

/-!
# A222002: Number of n X 4 arrays with each row a permutation of 1..4 having at least as many downsteps as the preceding row, with rows in lexicographically nonincreasing order.

The programs for A222002, there is no canonical definition to state claims against.
-/

/-! ## A222002.P1386520330332091435

`A222005(∑[n+5]-(n-2))`
-/

namespace A222002.P1386520330332091435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222005 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 2)).toNat

end

end A222002.P1386520330332091435

/-! ## A222002.P11350356657692156895

`A213275(n)*A222005(A055998(n+2))`
-/

namespace A222002.P11350356657692156895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 n * A222005 (A055998 (n + 2)).toNat

end

end A222002.P11350356657692156895

/-!
# A222003: Number of nX5 arrays with each row a permutation of 1..5 having at least as many downsteps as the preceding row, with rows in lexicographically nonincreasing order.

The programs for A222003, there is no canonical definition to state claims against.
-/

/-! ## A222003.P3363832155521524885

`A222005(∑[n+5]+6)`
-/

namespace A222003.P3363832155521524885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222005 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A222003.P3363832155521524885

/-!
# A222005: T(n,k)=Number of nXk arrays with each row a permutation of 1..k having at least as many downsteps as the preceding row, with rows in lexicographically nonincreasing order.

The programs for A222005, there is no canonical definition to state claims against.
-/

/-! ## A222005.P3032889003087817036

`A321898(2*A066119(n+1))`
-/

namespace A222005.P3032889003087817036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321898 (2 * A066119 (n + 1)).toNat

end

end A222005.P3032889003087817036

/-! ## A222005.P456953741367905842

`gcd(12*n, A018744(A066121(n+1))!)`
-/

namespace A222005.P456953741367905842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (12 * n) (Nat.factorial (A018744 (A066121 (n + 1)).toNat).toNat)

end

end A222005.P456953741367905842

/-! ## A222005.P9914439883380093065

`A004736(n+1)!*A213275(n)!!`
-/

namespace A222005.P9914439883380093065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004736 (n + 1)).toNat * Nat.factorial (Nat.factorial (A213275 n).toNat)

end

end A222005.P9914439883380093065

/-! ## A222005.P7074914548461805186

`A004736(n+1)!*A256268(n)!!`
-/

namespace A222005.P7074914548461805186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004736 (n + 1)).toNat * Nat.factorial (Nat.factorial (A256268 n).toNat)

end

end A222005.P7074914548461805186

/-! ## A222005.P15863362455814151701

`A134134(n+1)+A035211(A129638(n))`
-/

namespace A222005.P15863362455814151701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134134 (n + 1) + A035211 (A129638 (n + 11)).toNat

end

end A222005.P15863362455814151701

/-!
# A222006: Number of forests of rooted plane binary trees (all nodes have outdegree of 0 or 2) with n total nodes.

The programs for A222006, there is no canonical definition to state claims against.
-/

/-! ## A222006.P247318423833013980

`A297861(A187187(n+1))+A098745(A258289(n))`
-/

namespace A222006.P247318423833013980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297861 (A187187 (n + 1)).toNat + A098745 (A258289 n).toNat

end

end A222006.P247318423833013980

/-!
# A222009: (Product(primitive roots of p) - 1)/p, where p = prime(n) and n > 2.

The programs for A222009, there is no canonical definition to state claims against.
-/

/-! ## A222009.P9717825464729338284

`(A123475(n+3)-1)/A000040(n+3)`
-/

namespace A222009.P9717825464729338284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123475 (n + 3) - 1 : ℚ) / (A000040 (n + 3) : ℚ)

end

end A222009.P9717825464729338284

/-!
# A222012: G.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n * A(x)^n / (1 + n*x*A(x))^n.

The programs for A222012, there is no canonical definition to state claims against.
-/

/-! ## A222012.P16669568799495863493

`A130766(A176719(n))`
-/

namespace A222012.P16669568799495863493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 (A176719 n).toNat

end

end A222012.P16669568799495863493

/-! ## A222012.P7156514477569318931

`A176672(A176719(n)-1)`
-/

namespace A222012.P7156514477569318931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176672 (A176719 n - 1).toNat

end

end A222012.P7156514477569318931

/-!
# A222013: G.f. satisfies: A(x) = Sum_{n>=0} n! * x^n * A(x)^(n*(n+1)/2) / Product_{k=1..n} (1 + k*x*A(x)^k).

The programs for A222013, there is no canonical definition to state claims against.
-/

/-! ## A222013.P5208612881425272520

`A109497(A263843(n))`
-/

namespace A222013.P5208612881425272520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A263843 n).toNat

end

end A222013.P5208612881425272520

/-! ## A222013.P2373998778961003436

`A008621(or(n, A214611(n+1)))`
-/

namespace A222013.P2373998778961003436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.lor (n : ℤ) (A214611 (n + 1))).toNat

end

end A222013.P2373998778961003436

/-! ## A222013.P13996227969079064483

`A106466(or(1, or(n, A214611(n+1))))`
-/

namespace A222013.P13996227969079064483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (Int.lor 1 (Int.lor (n : ℤ) (A214611 (n + 1)))).toNat

end

end A222013.P13996227969079064483

/-!
# A222014: G.f. satisfies: A(x) = Sum_{n>=0} n! * x^n * A(x)^(n^2) / Product_{k=1..n} (1 + k*x*A(x)^n).

The programs for A222014, there is no canonical definition to state claims against.
-/

/-! ## A222014.P13847080433329827683

`ceil(A006010((n+1)^n)^acot(5)/2)`
-/

namespace A222014.P13847080433329827683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006010 ((n + 1) ^ n) : ℝ) ^ (SequenceMachineLib.acot (5 : ℝ)) / 2⌉

end

end A222014.P13847080433329827683

/-! ## A222014.P10038311003773022345

`A063272(A002720(n))`
-/

namespace A222014.P10038311003773022345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063272 (A002720 n).toNat

end

end A222014.P10038311003773022345

/-!
# A222015: Number of n X 2 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, without move-in move-out straight through or left turns.

The programs for A222015, there is no canonical definition to state claims against.
-/

/-! ## A222015.P17861422065156510765

`A222020(∑[n+1]+2)`
-/

namespace A222015.P17861422065156510765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222020 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222015.P17861422065156510765

/-! ## A222015.P1526609069726780840

`record[gcd(A136431(n), A222020(n+2))]`
-/

namespace A222015.P1526609069726780840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A136431 n) (A222020 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222015.P1526609069726780840

/-! ## A222015.P5755406707240577528

`record[A222020(abs(A201163(n)))]`
-/

namespace A222015.P5755406707240577528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222020 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222015.P5755406707240577528

/-! ## A222015.P13372679286244792886

`record[A222020(A333530(n+1))]`
-/

namespace A222015.P13372679286244792886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222020 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222015.P13372679286244792886

/-! ## A222015.P8953630132498275345

`record[A097806(n+1)*A222020(n+2)]`
-/

namespace A222015.P8953630132498275345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (n + 1) * A222020 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222015.P8953630132498275345

/-!
# A222016: Number of nX3 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, without move-in move-out straight through or left turns.

The programs for A222016, there is no canonical definition to state claims against.
-/

/-! ## A222016.P1520443519343565132

`A222020(∑[n+2]+4)`
-/

namespace A222016.P1520443519343565132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222020 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222016.P1520443519343565132

/-! ## A222016.P6106460531660859530

`A235145(n)+A222020(A167614(n+1))`
-/

namespace A222016.P6106460531660859530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 n + A222020 (A167614 (n + 1)).toNat

end

end A222016.P6106460531660859530

/-! ## A222016.P6961116946056421721

`or(A222020(A167614(n+1)), A316863(n))`
-/

namespace A222016.P6961116946056421721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A222020 (A167614 (n + 1)).toNat) (A316863 n)

end

end A222016.P6961116946056421721

/-! ## A222016.P5523417267548101938

`A193518(n+1)*A222020(A167614(n+1))`
-/

namespace A222016.P5523417267548101938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193518 (n + 1) * A222020 (A167614 (n + 1)).toNat

end

end A222016.P5523417267548101938

/-! ## A222016.P15896539266007093452

`A007318(A048993(n))*A222020(A167614(n+1))`
-/

namespace A222016.P15896539266007093452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A048993 n).toNat * A222020 (A167614 (n + 1)).toNat

end

end A222016.P15896539266007093452

/-!
# A222017: Number of nX4 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, without move-in move-out straight through or left turns.

The programs for A222017, there is no canonical definition to state claims against.
-/

/-! ## A222017.P11736148593954115368

`A222020(A374004(n+1))`
-/

namespace A222017.P11736148593954115368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222020 (A374004 (n + 1)).toNat

end

end A222017.P11736148593954115368

/-! ## A222017.P7003302424843931129

`A222020(A052905(n)+9)`
-/

namespace A222017.P7003302424843931129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222020 (A052905 n + 9).toNat

end

end A222017.P7003302424843931129

/-! ## A222017.P746618977233594466

`A222020(A055999(n)+10)`
-/

namespace A222017.P746618977233594466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222020 (A055999 n + 10).toNat

end

end A222017.P746618977233594466

/-! ## A222017.P4652576913723976638

`A222020(A167614(n+2)+1)`
-/

namespace A222017.P4652576913723976638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222020 (A167614 (n + 2) + 1).toNat

end

end A222017.P4652576913723976638

/-! ## A222017.P11039186335744473723

`A222020(eq[5, A131818(n+1)])`
-/

namespace A222017.P11039186335744473723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222017.P11039186335744473723

/-!
# A222018: Number of nX5 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, without move-in move-out straight through or left turns.

The programs for A222018, there is no canonical definition to state claims against.
-/

/-! ## A222018.P11266005079724440704

`A222020(A374005(n+1))`
-/

namespace A222018.P11266005079724440704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222020 (A374005 (n + 1)).toNat

end

end A222018.P11266005079724440704

/-! ## A222018.P15552314835212969179

`A222020(A167499(n+3))`
-/

namespace A222018.P15552314835212969179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222020 (A167499 (n + 3)).toNat

end

end A222018.P15552314835212969179

/-! ## A222018.P6581806588490754107

`A222020(eq[7, A066657(n)])`
-/

namespace A222018.P6581806588490754107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222018.P6581806588490754107

/-! ## A222018.P9765314670238414845

`A222020(A000217(n+4)+5)`
-/

namespace A222018.P9765314670238414845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222020 (A000217 (n + 4) + 5).toNat

end

end A222018.P9765314670238414845

/-! ## A222018.P4947580777039749389

`A222020(eq[6, A131818(n+1)])`
-/

namespace A222018.P4947580777039749389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222018.P4947580777039749389

/-!
# A222019: Number of nX6 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, without move-in move-out straight through or left turns.

The programs for A222019, there is no canonical definition to state claims against.
-/

/-! ## A222019.P7194155166077363175

`A222020(A374007(n+1))`
-/

namespace A222019.P7194155166077363175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222020 (A374007 (n + 1)).toNat

end

end A222019.P7194155166077363175

/-! ## A222019.P12760047650915159897

`A222020(eq[7, A131818(n+1)])`
-/

namespace A222019.P12760047650915159897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222019.P12760047650915159897

/-! ## A222019.P4012114328471356933

`A222020(Δ[Δ[A006504(n+1)]])`
-/

namespace A222019.P4012114328471356933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222020 (f1 (n + 1) - f1 n).toNat

end

end A222019.P4012114328471356933

/-!
# A222021: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..2 array extended with zeros and convolved with 1,3,3,1.

The programs for A222021, the canonical program `A222021.P5142535665459494344` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222021 has offset 1).

The definition of A222021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 537 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222021.P5142535665459494344

`a(n-1)+a(n-3)+a(n-7)+a(n-9)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=6, a(4)=10, a(5)=15, a(6)=23, a(7)=36, a(8)=55`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222021

/-- `a(n-1)+a(n-3)+a(n-7)+a(n-9)` -/
def P5142535665459494344.Spec : Prop :=
  ∀ n, (P5142535665459494344.a n : ℤ) = A222021 (n + 1)

theorem P5142535665459494344.correct : P5142535665459494344.Spec := by
  intro n
  simp only [A222021, Nat.add_sub_cancel]

end A222021

/-! ## A222021.P16042924848771132626

`A222027(∑[n+2])`
-/

namespace A222021.P16042924848771132626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222021.P16042924848771132626

namespace A222021

/-- `A222027(∑[n+2])` -/
def P16042924848771132626.Spec : Prop :=
  ∀ n, P16042924848771132626.a n = A222021 (n + 1)

end A222021

/-! ## A222021.P9829547450113826079

`A222027(A000096(n+1))+C(n, 64)`
-/

namespace A222021.P9829547450113826079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (A000096 (n + 1)).toNat + (Nat.choose n 64 : ℤ)

end

end A222021.P9829547450113826079

namespace A222021

/-- `A222027(A000096(n+1))+C(n, 64)` -/
def P9829547450113826079.Spec : Prop :=
  ∀ n, P9829547450113826079.a n = A222021 (n + 1)

end A222021

/-! ## A222021.P12081249393629644854

`A222027(A000096(n+1))%A000045(n+6)`
-/

namespace A222021.P12081249393629644854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222027 (A000096 (n + 1)).toNat) (A000045 (n + 6))

end

end A222021.P12081249393629644854

namespace A222021

/-- `A222027(A000096(n+1))%A000045(n+6)` -/
def P12081249393629644854.Spec : Prop :=
  ∀ n, P12081249393629644854.a n = A222021 (n + 1)

end A222021

/-! ## A222021.P3670423409627644288

`A000040(n+2)%2*A222027(A000096(n+1))`
-/

namespace A222021.P3670423409627644288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A222027 (A000096 (n + 1)).toNat

end

end A222021.P3670423409627644288

namespace A222021

/-- `A000040(n+2)%2*A222027(A000096(n+1))` -/
def P3670423409627644288.Spec : Prop :=
  ∀ n, P3670423409627644288.a n = A222021 (n + 1)

end A222021

/-!
# A222022: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..3 array extended with zeros and convolved with 1,3,3,1.

The programs for A222022, there is no canonical definition to state claims against.
-/

/-! ## A222022.P15133190304298205335

`A222027(∑[n+3]+1)`
-/

namespace A222022.P15133190304298205335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222022.P15133190304298205335

/-! ## A222022.P5674430899443121814

`A367667(n+3)%A007865(A017113(n))`
-/

namespace A222022.P5674430899443121814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367667 (n + 3)) (A007865 (A017113 n).toNat)

end

end A222022.P5674430899443121814

/-! ## A222022.P6221695891408681604

`A367667(n+3)+A000007(A000081(n+2))`
-/

namespace A222022.P6221695891408681604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367667 (n + 3) + A000007 (A000081 (n + 2)).toNat

end

end A222022.P6221695891408681604

/-! ## A222022.P15020903362007833096

`A367667(n+3)+A135481(A000079(n+4))`
-/

namespace A222022.P15020903362007833096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367667 (n + 3) + A135481 (A000079 (n + 4)).toNat

end

end A222022.P15020903362007833096

/-! ## A222022.P10813957173809894184

`A367667(n+3)+A135481(A234312(2*n+3))`
-/

namespace A222022.P10813957173809894184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367667 (n + 3) + A135481 (A234312 (2 * n + 3)).toNat

end

end A222022.P10813957173809894184

/-!
# A222023: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..4 array extended with zeros and convolved with 1,3,3,1.

The programs for A222023, there is no canonical definition to state claims against.
-/

/-! ## A222023.P8368641552351260870

`A222027(∑[n+4]+3)`
-/

namespace A222023.P8368641552351260870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A222023.P8368641552351260870

/-! ## A222023.P13724317690094280002

`record[A222027(A027379(n))]`
-/

namespace A222023.P13724317690094280002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222023.P13724317690094280002

/-! ## A222023.P15535682363499216562

`A127161(A173714(n+1))`
-/

namespace A222023.P15535682363499216562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127161 (A173714 (n + 1)).toNat

end

end A222023.P15535682363499216562

/-! ## A222023.P3230970010107892618

`A356944(A222022(n+1))`
-/

namespace A222023.P3230970010107892618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (A222022 (n + 1)).toNat

end

end A222023.P3230970010107892618

/-! ## A222023.P5318835777765786721

`A329978(A243850(n+3))+A265609(n)`
-/

namespace A222023.P5318835777765786721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329978 (A243850 (n + 3)).toNat + A265609 n

end

end A222023.P5318835777765786721

/-!
# A222024: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..5 array extended with zeros and convolved with 1,3,3,1.

The programs for A222024, there is no canonical definition to state claims against.
-/

/-! ## A222024.P17618320710342690792

`A222027(∑[n+5]+6)`
-/

namespace A222024.P17618320710342690792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A222024.P17618320710342690792

/-! ## A222024.P6786097079828662454

`A222027(A052905(n+2)+1)%A221979(n+3)`
-/

namespace A222024.P6786097079828662454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222027 (A052905 (n + 2) + 1).toNat) (A221979 (n + 3))

end

end A222024.P6786097079828662454

/-! ## A222024.P7883641375530350076

`A222025(n+1)-A276570(A027659(n))`
-/

namespace A222024.P7883641375530350076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222025 (n + 1) - A276570 (A027659 n).toNat

end

end A222024.P7883641375530350076

/-! ## A222024.P10224429416844147100

`A222025(n+1)-A185284(A168288(n))`
-/

namespace A222024.P10224429416844147100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222025 (n + 1) - A185284 (A168288 n).toNat

end

end A222024.P10224429416844147100

/-! ## A222024.P8983998855133830068

`A222027(A052905(n+3))-A185284(A168288(n))`
-/

namespace A222024.P8983998855133830068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (A052905 (n + 3)).toNat - A185284 (A168288 n).toNat

end

end A222024.P8983998855133830068

/-!
# A222025: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..6 array extended with zeros and convolved with 1,3,3,1.

The programs for A222025, there is no canonical definition to state claims against.
-/

/-! ## A222025.P4676349090944377455

`A222027(A052905(n+3))`
-/

namespace A222025.P4676349090944377455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (A052905 (n + 3)).toNat

end

end A222025.P4676349090944377455

/-! ## A222025.P3963122881767731717

`A222027(A055999(n+3)+1)`
-/

namespace A222025.P3963122881767731717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (A055999 (n + 3) + 1).toNat

end

end A222025.P3963122881767731717

/-! ## A222025.P5856509112858860319

`A222027(A155212(n+2)+3)`
-/

namespace A222025.P5856509112858860319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (A155212 (n + 2) + 3).toNat

end

end A222025.P5856509112858860319

/-! ## A222025.P8224681110358754279

`A222027(A027379(n+4)-2)`
-/

namespace A222025.P8224681110358754279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (A027379 (n + 4) - 2).toNat

end

end A222025.P8224681110358754279

/-! ## A222025.P154494094930184389

`A222027(A000096(n+5)-4)`
-/

namespace A222025.P154494094930184389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (A000096 (n + 5) - 4).toNat

end

end A222025.P154494094930184389

/-!
# A222026: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..7 array extended with zeros and convolved with 1,3,3,1.

The programs for A222026, there is no canonical definition to state claims against.
-/

/-! ## A222026.P1217262311236612804

`A222027(A055999(n+4))`
-/

namespace A222026.P1217262311236612804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (A055999 (n + 4)).toNat

end

end A222026.P1217262311236612804

/-! ## A222026.P16582334463440681408

`A222027(Δ[A023551(n+2)])`
-/

namespace A222026.P16582334463440681408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (f1 (n + 1) - f1 n).toNat

end

end A222026.P16582334463440681408

/-! ## A222026.P9414630450686905199

`A222027(A155212(n+3)+2)`
-/

namespace A222026.P9414630450686905199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (A155212 (n + 3) + 2).toNat

end

end A222026.P9414630450686905199

/-! ## A222026.P5160251652434577015

`A222027(A052905(n+4)-1)`
-/

namespace A222026.P5160251652434577015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (A052905 (n + 4) - 1).toNat

end

end A222026.P5160251652434577015

/-! ## A222026.P16297865499450568866

`A222027(A000217(n+7)-6)`
-/

namespace A222026.P16297865499450568866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (A000217 (n + 7) - 6).toNat

end

end A222026.P16297865499450568866

/-!
# A222027: T(n,k)=Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..k array extended with zeros and convolved with 1,3,3,1.

The programs for A222027, there is no canonical definition to state claims against.
-/

/-! ## A222027.P7854698430826990317

`A222127(n+1)-A185284(A094761(n))`
-/

namespace A222027.P7854698430826990317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (n + 1) - A185284 (A094761 n).toNat

end

end A222027.P7854698430826990317

/-! ## A222027.P90419137232325888

`A222127(n+1)-A033683(A189988(n+1))`
-/

namespace A222027.P90419137232325888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (n + 1) - A033683 (A189988 (n + 1)).toNat

end

end A222027.P90419137232325888

/-! ## A222027.P17794197053047011183

`A222127(n+1)-A102683(A022166(n))`
-/

namespace A222027.P17794197053047011183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (n + 1) - A102683 (A022166 n).toNat

end

end A222027.P17794197053047011183

/-! ## A222027.P15809634298238302724

`A222127(n+1)-A055641(A154227(n))`
-/

namespace A222027.P15809634298238302724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (n + 1) - A055641 (A154227 n).toNat

end

end A222027.P15809634298238302724

/-! ## A222027.P8181764226446644647

`A222127(n+1)-A055641(A168288(n))`
-/

namespace A222027.P8181764226446644647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (n + 1) - A055641 (A168288 n).toNat

end

end A222027.P8181764226446644647

/-!
# A222029: Triangle of number of functions in a size n set for which the sequence of composition powers ends in a length k cycle.

The programs for A222029, there is no canonical definition to state claims against.
-/

/-! ## A222029.P17353298599834329086

`A241981(ceil(log2(A280466(n))))`
-/

namespace A222029.P17353298599834329086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 ⌈Real.logb 2 (A280466 n : ℝ)⌉.toNat

end

end A222029.P17353298599834329086

/-! ## A222029.P14685486643023922533

`A241981(lt[A007030(n+1), A241981(n)])`
-/

namespace A222029.P14685486643023922533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A222029.P14685486643023922533

/-! ## A222029.P1576999567368626890

`A264902(n)+A102560(A058122(n))`
-/

namespace A222029.P1576999567368626890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 n + A102560 (A058122 n).toNat

end

end A222029.P1576999567368626890

/-! ## A222029.P13038785718207443260

`A344084(A344295(n+1))^A008279(n)`
-/

namespace A222029.P13038785718207443260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344084 (A344295 (n + 1)).toNat : ℚ) ^ (A008279 n : ℤ)

end

end A222029.P13038785718207443260

/-!
# A222030: Primes and quarter-squares.

The programs for A222030, the canonical program `A222030.P10406464568820635234` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222030 has offset 0).

The definition of A222030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222030.P10406464568820635234

`∪[∑[2*n], A089237(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A222030

/-- `∪[∑[2*n], A089237(n+1)]` -/
def P10406464568820635234.Spec : Prop :=
  ∀ n, (P10406464568820635234.a n : ℤ) = A222030 n

theorem P10406464568820635234.correct : P10406464568820635234.Spec := by
  intro n
  simp only [A222030]

end A222030

/-! ## A222030.P18288914309546895023

`∪[A000040(n+1), ∑[ceil(n/2)]]`
-/

namespace A222030.P18288914309546895023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222030.P18288914309546895023

namespace A222030

/-- `∪[A000040(n+1), ∑[ceil(n/2)]]` -/
def P18288914309546895023.Spec : Prop :=
  ∀ n, (P18288914309546895023.a n : ℤ) = A222030 n

end A222030

/-! ## A222030.P2909636820488744669

`∪[A008578(n+1), ∑[ceil(n/2)]]`
-/

namespace A222030.P2909636820488744669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222030.P2909636820488744669

namespace A222030

/-- `∪[A008578(n+1), ∑[ceil(n/2)]]` -/
def P2909636820488744669.Spec : Prop :=
  ∀ n, (P2909636820488744669.a n : ℤ) = A222030 n

end A222030

/-! ## A222030.P11124110962100987819

`∪[floor(((n+1)/2)²), A008864(n+1)-1]`
-/

namespace A222030.P11124110962100987819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℚ) / 2) ^ 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222030.P11124110962100987819

namespace A222030

/-- `∪[floor(((n+1)/2)²), A008864(n+1)-1]` -/
def P11124110962100987819.Spec : Prop :=
  ∀ n, (P11124110962100987819.a n : ℤ) = A222030 n

end A222030

/-! ## A222030.P7945196351074637051

`∪[A089237(n+1), A002378(n)]`
-/

namespace A222030.P7945196351074637051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222030.P7945196351074637051

namespace A222030

/-- `∪[A089237(n+1), A002378(n)]` -/
def P7945196351074637051.Spec : Prop :=
  ∀ n, (P7945196351074637051.a n : ℤ) = A222030 n

end A222030

/-! ## A222030.P4200316954259892620

`∪[A000430(n+1), A182531(n+1)]`
-/

namespace A222030.P4200316954259892620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222030.P4200316954259892620

namespace A222030

/-- `∪[A000430(n+1), A182531(n+1)]` -/
def P4200316954259892620.Spec : Prop :=
  ∀ n, (P4200316954259892620.a n : ℤ) = A222030 n

end A222030

/-! ## A222030.P6175274778576857442

`∪[A009087(n+1), A182531(n+1)]`
-/

namespace A222030.P6175274778576857442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222030.P6175274778576857442

namespace A222030

/-- `∪[A009087(n+1), A182531(n+1)]` -/
def P6175274778576857442.Spec : Prop :=
  ∀ n, (P6175274778576857442.a n : ℤ) = A222030 n

end A222030

/-! ## A222030.P12550874638721976766

`∪[A033946(n+1), A182531(n+1)]`
-/

namespace A222030.P12550874638721976766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222030.P12550874638721976766

namespace A222030

/-- `∪[A033946(n+1), A182531(n+1)]` -/
def P12550874638721976766.Spec : Prop :=
  ∀ n, (P12550874638721976766.a n : ℤ) = A222030 n

end A222030

/-! ## A222030.P18285225713910302072

`∪[A045344(n+1), A182531(n+1)]`
-/

namespace A222030.P18285225713910302072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222030.P18285225713910302072

namespace A222030

/-- `∪[A045344(n+1), A182531(n+1)]` -/
def P18285225713910302072.Spec : Prop :=
  ∀ n, (P18285225713910302072.a n : ℤ) = A222030 n

end A222030

/-! ## A222030.P1408724039930166775

`∪[A046022(n+1), A182531(n+1)]`
-/

namespace A222030.P1408724039930166775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222030.P1408724039930166775

namespace A222030

/-- `∪[A046022(n+1), A182531(n+1)]` -/
def P1408724039930166775.Spec : Prop :=
  ∀ n, (P1408724039930166775.a n : ℤ) = A222030 n

end A222030

/-! ## A222030.P7683903233764267828

`∪[A050376(n+1), A182531(n+1)]`
-/

namespace A222030.P7683903233764267828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222030.P7683903233764267828

namespace A222030

/-- `∪[A050376(n+1), A182531(n+1)]` -/
def P7683903233764267828.Spec : Prop :=
  ∀ n, (P7683903233764267828.a n : ℤ) = A222030 n

end A222030

/-! ## A222030.P10331280994703495336

`∪[A067126(n+1), A182531(n+1)]`
-/

namespace A222030.P10331280994703495336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222030.P10331280994703495336

namespace A222030

/-- `∪[A067126(n+1), A182531(n+1)]` -/
def P10331280994703495336.Spec : Prop :=
  ∀ n, (P10331280994703495336.a n : ℤ) = A222030 n

end A222030

/-! ## A222030.P12525248998218256378

`∪[A087811(n+1), A182986(n+1)]`
-/

namespace A222030.P12525248998218256378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222030.P12525248998218256378

namespace A222030

/-- `∪[A087811(n+1), A182986(n+1)]` -/
def P12525248998218256378.Spec : Prop :=
  ∀ n, (P12525248998218256378.a n : ℤ) = A222030 n

end A222030

/-! ## A222030.P4146591589630799364

`∪[A089237(n+1), A182531(n+1)]`
-/

namespace A222030.P4146591589630799364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222030.P4146591589630799364

namespace A222030

/-- `∪[A089237(n+1), A182531(n+1)]` -/
def P4146591589630799364.Spec : Prop :=
  ∀ n, (P4146591589630799364.a n : ℤ) = A222030 n

end A222030

/-!
# A222033: G.f.: Sum_{n>=0} Product_{k=1..n} (1 - 1/(1+k*x)^3).

The programs for A222033, there is no canonical definition to state claims against.
-/

/-! ## A222033.P10769374203757797458

`∑[∑[A176180(a(n-1))]]` with `a(0)=1, a(1)=1`
-/

namespace A222033.P10769374203757797458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A176180 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222033.P10769374203757797458

/-!
# A222034: G.f. satisfies: A(x) = Sum_{n>=0} n! * x^n * Product_{k=1..n} A(k*x)/(1 + k*x*A(k*x)).

The programs for A222034, there is no canonical definition to state claims against.
-/

/-! ## A222034.P9370280460180236813

`floor(root(A263365(n+1), 5))`
-/

namespace A222034.P9370280460180236813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A263365 (n + 1) : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A222034.P9370280460180236813

/-! ## A222034.P17141658729824583936

`∑[A231330((n-1)^n)]`
-/

namespace A222034.P17141658729824583936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231330 (((n : ℤ) - 1) ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222034.P17141658729824583936

/-!
# A222035: G.f.: Sum_{n>=0} Product_{k=1..n} (1 - 1/(1 + k*(k+1)*(k+2)/3!*x)).

The programs for A222035, there is no canonical definition to state claims against.
-/

/-! ## A222035.P18288244857007247526

`A353304(∏[∑[n!]])`
-/

namespace A222035.P18288244857007247526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353304 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A222035.P18288244857007247526

/-!
# A222036: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..1 array extended with zeros and convolved with -1,2,-1.

The programs for A222036, there is no canonical definition to state claims against.
-/

/-! ## A222036.P10746980761198780976

`A222153(∑[n+1])`
-/

namespace A222036.P10746980761198780976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222036.P10746980761198780976

/-! ## A222036.P13549066823798234843

`record[A222153(A209268(n+1))]`
-/

namespace A222036.P13549066823798234843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (A209268 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222036.P13549066823798234843

/-! ## A222036.P4085044824387054307

`record[A222153(A000217(A032742(n+1)))]`
-/

namespace A222036.P4085044824387054307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (A000217 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222036.P4085044824387054307

/-! ## A222036.P16145622470131263344

`A222153(A000217(n+1))+A000007(n+1)`
-/

namespace A222036.P16145622470131263344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (A000217 (n + 1)).toNat + A000007 (n + 1)

end

end A222036.P16145622470131263344

/-! ## A222036.P792678868949408566

`A222153(A000217(n+1))%A301538(n+1)`
-/

namespace A222036.P792678868949408566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222153 (A000217 (n + 1)).toNat) (A301538 (n + 1))

end

end A222036.P792678868949408566

/-! ## A222036.P9337709728509877116

`A222043(∑[n+1])`
-/

namespace A222036.P9337709728509877116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222036.P9337709728509877116

/-! ## A222036.P9307433681922099358

`record[Δ[Δ[A222043(n+1)]]]`
-/

namespace A222036.P9307433681922099358
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222036.P9307433681922099358

/-!
# A222037: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..2 array extended with zeros and convolved with -1,2,-1.

The programs for A222037, there is no canonical definition to state claims against.
-/

/-! ## A222037.P11333782519836965476

`A222043(∑[n+2])`
-/

namespace A222037.P11333782519836965476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222037.P11333782519836965476

/-! ## A222037.P2156452156080231114

`record[A222043(A000096(A028920(n)))]`
-/

namespace A222037.P2156452156080231114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (A000096 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222037.P2156452156080231114

/-! ## A222037.P13082428762593523694

`record[A222043(A000096(A263131(n)))]`
-/

namespace A222037.P13082428762593523694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (A000096 (A263131 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222037.P13082428762593523694

/-! ## A222037.P4543594000107833510

`record[A222043(A000096(A344180(n)))]`
-/

namespace A222037.P4543594000107833510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (A000096 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222037.P4543594000107833510

/-! ## A222037.P17728748389679436658

`record[A222043(A000096(A003602(n+1)))]`
-/

namespace A222037.P17728748389679436658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222037.P17728748389679436658

/-! ## A222037.P5173540540424922596

`record[A222043(A000096(A108954(n+1)))]`
-/

namespace A222037.P5173540540424922596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (A000096 (A108954 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222037.P5173540540424922596

/-! ## A222037.P2506005083231847214

`record[A222043(A000096(A187185(n+1)))]`
-/

namespace A222037.P2506005083231847214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (A000096 (A187185 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222037.P2506005083231847214

/-! ## A222037.P16449786677620321878

`record[A222043(A000096(A187186(n+1)))]`
-/

namespace A222037.P16449786677620321878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (A000096 (A187186 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222037.P16449786677620321878

/-! ## A222037.P14326627921918752748

`record[A222043(A008805(n)+A001057(n))]`
-/

namespace A222037.P14326627921918752748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (A008805 n + A001057 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222037.P14326627921918752748

/-! ## A222037.P4841305430702790600

`gcd(A000038(n), A222043(A027379(n)+2))`
-/

namespace A222037.P4841305430702790600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A222043 (A027379 n + 2).toNat)

end

end A222037.P4841305430702790600

/-!
# A222038: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..3 array extended with zeros and convolved with -1,2,-1.

The programs for A222038, there is no canonical definition to state claims against.
-/

/-! ## A222038.P16824024213340602763

`A222043(∑[n+3]+1)`
-/

namespace A222038.P16824024213340602763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222038.P16824024213340602763

/-! ## A222038.P2923694744559643615

`A121238(n)²*A222043(A034856(n+2))`
-/

namespace A222038.P2923694744559643615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 n ^ 2 * A222043 (A034856 (n + 2)).toNat

end

end A222038.P2923694744559643615

/-! ## A222038.P3431142942819811068

`A222043(A034856(n+2))%A241930(n+1)`
-/

namespace A222038.P3431142942819811068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222043 (A034856 (n + 2)).toNat) (A241930 (n + 1))

end

end A222038.P3431142942819811068

/-! ## A222038.P779970843750025815

`A222043(A034856(n+2))+char[A224951(n+1)]`
-/

namespace A222038.P779970843750025815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224951 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A222038.P779970843750025815

/-! ## A222038.P2328806091814071700

`A000045(A014963(4*n+2))*A222043(A034856(n+2))`
-/

namespace A222038.P2328806091814071700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A014963 (4 * n + 2)).toNat * A222043 (A034856 (n + 2)).toNat

end

end A222038.P2328806091814071700

/-! ## A222038.P7112274403719707938

`A222043(A034856(n+2))%A002189(n)`
-/

namespace A222038.P7112274403719707938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222043 (A034856 (n + 2)).toNat) (A002189 n)

end

end A222038.P7112274403719707938

/-! ## A222038.P57539843522839332

`A001222(A114008(n+1))*A222043(A034856(n+2))`
-/

namespace A222038.P57539843522839332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A114008 (n + 1)).toNat * A222043 (A034856 (n + 2)).toNat

end

end A222038.P57539843522839332

/-!
# A222039: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..4 array extended with zeros and convolved with -1,2,-1.

The programs for A222039, there is no canonical definition to state claims against.
-/

/-! ## A222039.P17198641603723640948

`A222043(∑[n+4]+3)`
-/

namespace A222039.P17198641603723640948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A222039.P17198641603723640948

/-! ## A222039.P14975613598597499222

`record[A222043(A027379(n))]`
-/

namespace A222039.P14975613598597499222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222039.P14975613598597499222

/-! ## A222039.P16756793609734834749

`A222043(A027379(n+2))%A041932(n)`
-/

namespace A222039.P16756793609734834749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222043 (A027379 (n + 2)).toNat) (A041932 n)

end

end A222039.P16756793609734834749

/-! ## A222039.P10417222468188996575

`gcd(A000038(n), A222043(A027379(n+2)))`
-/

namespace A222039.P10417222468188996575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A222043 (A027379 (n + 2)).toNat)

end

end A222039.P10417222468188996575

/-! ## A222039.P6637674974330516216

`abs(A033999(n)*A222043(A027379(n+2)))`
-/

namespace A222039.P6637674974330516216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A222043 (A027379 (n + 2)).toNat|

end

end A222039.P6637674974330516216

/-! ## A222039.P4347122169833764463

`A222043(A055998(n+2))+A000007(n+1)`
-/

namespace A222039.P4347122169833764463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (A055998 (n + 2)).toNat + A000007 (n + 1)

end

end A222039.P4347122169833764463

/-! ## A222039.P2387425008153876549

`A222043(A027379(n+2))+A000035(2*n)`
-/

namespace A222039.P2387425008153876549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (A027379 (n + 2)).toNat + A000035 (2 * n)

end

end A222039.P2387425008153876549

/-! ## A222039.P15525099767757387

`A001222(A071680(n+1))*A222043(A027379(n+2))`
-/

namespace A222039.P15525099767757387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071680 (n + 1)).toNat * A222043 (A027379 (n + 2)).toNat

end

end A222039.P15525099767757387

/-! ## A222039.P8815641888079125962

`A007318(A072344(n+1))*A222043(A027379(n+2))`
-/

namespace A222039.P8815641888079125962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A072344 (n + 1)).toNat * A222043 (A027379 (n + 2)).toNat

end

end A222039.P8815641888079125962

/-! ## A222039.P16839608995616230023

`A001222(A274589(n+1))*A222043(A027379(n+2))`
-/

namespace A222039.P16839608995616230023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A274589 (n + 1)).toNat * A222043 (A027379 (n + 2)).toNat

end

end A222039.P16839608995616230023

/-!
# A222040: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..5 array extended with zeros and convolved with -1,2,-1.

The programs for A222040, there is no canonical definition to state claims against.
-/

/-! ## A222040.P2554796331893890682

`A222043(∑[n+5]+6)`
-/

namespace A222040.P2554796331893890682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A222040.P2554796331893890682

/-! ## A222040.P10036075595949095029

`or(char[3], A222043(A052905(n+2)+1))`
-/

namespace A222040.P10036075595949095029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A222043 (A052905 (n + 2) + 1).toNat)

end

end A222040.P10036075595949095029

/-! ## A222040.P4453650720213152886

`lcm(A033999(n), A222043(A052905(n+2)+1))`
-/

namespace A222040.P4453650720213152886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A222043 (A052905 (n + 2) + 1).toNat)

end

end A222040.P4453650720213152886

/-! ## A222040.P11655136447247787487

`A222043(A052905(n+2)+1)%A264143(n+1)`
-/

namespace A222040.P11655136447247787487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222043 (A052905 (n + 2) + 1).toNat) (A264143 (n + 1))

end

end A222040.P11655136447247787487

/-! ## A222040.P1969788075907093435

`A014963(A000217(n+3))*A222043(A052905(n+2)+1)`
-/

namespace A222040.P1969788075907093435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 3)).toNat * A222043 (A052905 (n + 2) + 1).toNat

end

end A222040.P1969788075907093435

/-!
# A222041: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..6 array extended with zeros and convolved with -1,2,-1.

The programs for A222041, there is no canonical definition to state claims against.
-/

/-! ## A222041.P8376087731539414008

`A222043((n+4)²-∑[n+1]+1)`
-/

namespace A222041.P8376087731539414008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A222041.P8376087731539414008

/-! ## A222041.P12546750635700781704

`A222043(A052905(n+3))+n-2*n+n`
-/

namespace A222041.P12546750635700781704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (A052905 (n + 3)).toNat + ((n : ℤ) - (2 * n : ℤ)) + (n : ℤ)

end

end A222041.P12546750635700781704

/-! ## A222041.P9557789081765192295

`A222043(A052905(n+3))%A016951(n)`
-/

namespace A222041.P9557789081765192295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222043 (A052905 (n + 3)).toNat) (A016951 n)

end

end A222041.P9557789081765192295

/-! ## A222041.P7669825628242397829

`or(A000038(n), A222043(A052905(n+3)))`
-/

namespace A222041.P7669825628242397829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A222043 (A052905 (n + 3)).toNat)

end

end A222041.P7669825628242397829

/-! ## A222041.P1108357970635865226

`A007318(∑[n])*A222043(A052905(n+3))`
-/

namespace A222041.P1108357970635865226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A222043 (A052905 (n + 3)).toNat

end

end A222041.P1108357970635865226

/-! ## A222041.P15544188605941902640

`A140303(n)%2*A222043(A052905(n+3))`
-/

namespace A222041.P15544188605941902640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140303 n) 2 * A222043 (A052905 (n + 3)).toNat

end

end A222041.P15544188605941902640

/-! ## A222041.P9935118702502604293

`A222043(Δ[A026054(n+3)]+1)+A000035(2*n)`
-/

namespace A222041.P9935118702502604293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (f1 (n + 1) - f1 n + 1).toNat + A000035 (2 * n)

end

end A222041.P9935118702502604293

/-! ## A222041.P14268548777474722476

`A008683(A008574(n))!*A222043(A052905(n+3))`
-/

namespace A222041.P14268548777474722476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (A008574 n).toNat).toNat : ℤ) * A222043 (A052905 (n + 3)).toNat

end

end A222041.P14268548777474722476

/-! ## A222041.P13095420168675264448

`A001222(A001359(n+1))*A222043(A052905(n+3))`
-/

namespace A222041.P13095420168675264448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001359 (n + 1)).toNat * A222043 (A052905 (n + 3)).toNat

end

end A222041.P13095420168675264448

/-! ## A222041.P3602082880449571170

`A001222(A008578(n+2))*A222043(A052905(n+3))`
-/

namespace A222041.P3602082880449571170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 2)).toNat * A222043 (A052905 (n + 3)).toNat

end

end A222041.P3602082880449571170

/-!
# A222042: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..7 array extended with zeros and convolved with -1,2,-1.

The programs for A222042, there is no canonical definition to state claims against.
-/

/-! ## A222042.P6059651226364317655

`A222043(A055999(n+4))`
-/

namespace A222042.P6059651226364317655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (A055999 (n + 4)).toNat

end

end A222042.P6059651226364317655

/-! ## A222042.P16766345176542811619

`A222043(Δ[A026054(n+4)])`
-/

namespace A222042.P16766345176542811619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (f1 (n + 1) - f1 n).toNat

end

end A222042.P16766345176542811619

/-! ## A222042.P14658727698588288359

`A222043(A000217(n+7)-6)`
-/

namespace A222042.P14658727698588288359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (A000217 (n + 7) - 6).toNat

end

end A222042.P14658727698588288359

/-! ## A222042.P160645891700639280

`A222043(A000124(n+7)-7)`
-/

namespace A222042.P160645891700639280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (A000124 (n + 7) - 7).toNat

end

end A222042.P160645891700639280

/-! ## A222042.P304190228693865357

`A222043(A133263(n+5)+A004273(n+3))`
-/

namespace A222042.P304190228693865357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (A133263 (n + 5) + A004273 (n + 3)).toNat

end

end A222042.P304190228693865357

/-!
# A222043: T(n,k)=Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..k array extended with zeros and convolved with -1,2,-1.

The programs for A222043, there is no canonical definition to state claims against.
-/

/-! ## A222043.P4716064842682236765

`A222153(n+1)-A356923(A293724(n))`
-/

namespace A222043.P4716064842682236765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (n + 1) - A356923 (A293724 n).toNat

end

end A222043.P4716064842682236765

/-! ## A222043.P4871050352288810415

`A222153(n+1)-A165766(A324726(n+1))`
-/

namespace A222043.P4871050352288810415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (n + 1) - A165766 (A324726 (n + 1)).toNat

end

end A222043.P4871050352288810415

/-! ## A222043.P7300848768222220233

`A222153(n+1)-A070109(A000032(n+2))`
-/

namespace A222043.P7300848768222220233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (n + 1) - A070109 (A000032 (n + 2)).toNat

end

end A222043.P7300848768222220233

/-! ## A222043.P7595003259520902741

`A091987(A376499(n+1))`
-/

namespace A222043.P7595003259520902741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091987 (A376499 (n + 1)).toNat

end

end A222043.P7595003259520902741

/-! ## A222043.P1277959994004718991

`A289236(A187152(n+1))`
-/

namespace A222043.P1277959994004718991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289236 (A187152 (n + 1)).toNat

end

end A222043.P1277959994004718991

/-!
# A222044: Sum of smallest parts of all partitions of n into an odd number of parts.

The programs for A222044, there is no canonical definition to state claims against.
-/

/-! ## A222044.P10928555614562744008

`A222046(n)+A222045(n)`
-/

namespace A222044.P10928555614562744008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222046 n + A222045 n

end

end A222044.P10928555614562744008

/-! ## A222044.P16424311274886781067

`A046746(n)-A222045(n)`
-/

namespace A222044.P16424311274886781067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 n - A222045 n

end

end A222044.P16424311274886781067

/-! ## A222044.P14255539850951983243

`A222047(n)-A211870(n)`
-/

namespace A222044.P14255539850951983243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222047 n - A211870 n

end

end A222044.P14255539850951983243

/-! ## A222044.P4053851924619536313

`A006128(n)-(A222048(n)+A211870(n))`
-/

namespace A222044.P4053851924619536313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - (A222048 n + A211870 n)

end

end A222044.P4053851924619536313

/-! ## A222044.P12524836832850062956

`A046746(n)+A211881(n)-A222048(n)`
-/

namespace A222044.P12524836832850062956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 n + (A211881 n - A222048 n)

end

end A222044.P12524836832850062956

/-! ## A222044.P3647700016000987847

`A222046(n)+A222048(n)-A211881(n)`
-/

namespace A222044.P3647700016000987847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222046 n + (A222048 n - A211881 n)

end

end A222044.P3647700016000987847

/-!
# A222045: Sum of smallest parts of all partitions of n into an even number of parts.

The programs for A222045, there is no canonical definition to state claims against.
-/

/-! ## A222045.P2225750272299059983

`A222044(n)-A222046(n)`
-/

namespace A222045.P2225750272299059983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222044 n - A222046 n

end

end A222045.P2225750272299059983

/-! ## A222045.P5859872159768977393

`A046746(n)-A222044(n)`
-/

namespace A222045.P5859872159768977393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 n - A222044 n

end

end A222045.P5859872159768977393

/-! ## A222045.P297081667650680676

`A222048(n)-A211881(n)`
-/

namespace A222045.P297081667650680676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222048 n - A211881 n

end

end A222045.P297081667650680676

/-! ## A222045.P15992142899162945892

`A006128(n)-(A222047(n)+A211881(n))`
-/

namespace A222045.P15992142899162945892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - (A222047 n + A211881 n)

end

end A222045.P15992142899162945892

/-! ## A222045.P9574050978974105208

`A046746(n)+A211870(n)-A222047(n)`
-/

namespace A222045.P9574050978974105208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 n + (A211870 n - A222047 n)

end

end A222045.P9574050978974105208

/-! ## A222045.P15269406842951953944

`A222047(n)-(A222046(n)+A211870(n))`
-/

namespace A222045.P15269406842951953944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222047 n - (A222046 n + A211870 n)

end

end A222045.P15269406842951953944

/-!
# A222046: Difference between sums of smallest parts of all partitions of n into odd number of parts and into even number of parts.

The programs for A222046, there is no canonical definition to state claims against.
-/

/-! ## A222046.P32518547863562846

`A222044(n)-A222045(n)`
-/

namespace A222046.P32518547863562846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222044 n - A222045 n

end

end A222046.P32518547863562846

/-! ## A222046.P14377314481888463110

`2*A222044(n)-A046746(n)`
-/

namespace A222046.P14377314481888463110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222044 n - A046746 n

end

end A222046.P14377314481888463110

/-! ## A222046.P12709844951790870262

`A046746(n)-2*A222045(n)`
-/

namespace A222046.P12709844951790870262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 n - 2 * A222045 n

end

end A222046.P12709844951790870262

/-! ## A222046.P5215470724804915575

`A222047(n)-(A222045(n)+A211870(n))`
-/

namespace A222046.P5215470724804915575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222047 n - (A222045 n + A211870 n)

end

end A222046.P5215470724804915575

/-! ## A222046.P12913327009713187270

`A211881(n)+A222044(n)-A222048(n)`
-/

namespace A222046.P12913327009713187270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211881 n + (A222044 n - A222048 n)

end

end A222046.P12913327009713187270

/-!
# A222047: Sum of largest parts of all partitions of n into an odd number of parts.

The programs for A222047, there is no canonical definition to state claims against.
-/

/-! ## A222047.P6480085649024558245

`A222044(n)+A211870(n)`
-/

namespace A222047.P6480085649024558245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222044 n + A211870 n

end

end A222047.P6480085649024558245

/-! ## A222047.P5225303431128851247

`A222049(n)+A222048(n)`
-/

namespace A222047.P5225303431128851247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222049 n + A222048 n

end

end A222047.P5225303431128851247

/-! ## A222047.P7296745467376092894

`A006128(n)-A222048(n)`
-/

namespace A222047.P7296745467376092894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - A222048 n

end

end A222047.P7296745467376092894

/-! ## A222047.P17780579456508707697

`A211870(n)+A222046(n)+A222045(n)`
-/

namespace A222047.P17780579456508707697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211870 n + (A222046 n + A222045 n)

end

end A222047.P17780579456508707697

/-! ## A222047.P14185112024023930281

`A006128(n)-(A222045(n)+A211881(n))`
-/

namespace A222047.P14185112024023930281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - (A222045 n + A211881 n)

end

end A222047.P14185112024023930281

/-! ## A222047.P14526578707524325403

`A046746(n)+A211870(n)-A222045(n)`
-/

namespace A222047.P14526578707524325403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 n + (A211870 n - A222045 n)

end

end A222047.P14526578707524325403

/-!
# A222048: Sum of largest parts of all partitions of n into an even number of parts.

The programs for A222048, there is no canonical definition to state claims against.
-/

/-! ## A222048.P12344557648725071292

`A222045(n)+A211881(n)`
-/

namespace A222048.P12344557648725071292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222045 n + A211881 n

end

end A222048.P12344557648725071292

/-! ## A222048.P11960594050384352942

`A006128(n)-A222047(n)`
-/

namespace A222048.P11960594050384352942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - A222047 n

end

end A222048.P11960594050384352942

/-! ## A222048.P5619367635362278439

`A222047(n)-A222049(n)`
-/

namespace A222048.P5619367635362278439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222047 n - A222049 n

end

end A222048.P5619367635362278439

/-! ## A222048.P17758965786677237035

`A006128(n)-(A222044(n)+A211870(n))`
-/

namespace A222048.P17758965786677237035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - (A222044 n + A211870 n)

end

end A222048.P17758965786677237035

/-! ## A222048.P2615202705943495417

`A046746(n)+A211881(n)-A222044(n)`
-/

namespace A222048.P2615202705943495417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 n + (A211881 n - A222044 n)

end

end A222048.P2615202705943495417

/-! ## A222048.P7131664967756964368

`A211881(n)+A222044(n)-A222046(n)`
-/

namespace A222048.P7131664967756964368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211881 n + (A222044 n - A222046 n)

end

end A222048.P7131664967756964368

/-!
# A222049: Difference between sums of largest parts of all partitions of n into odd number of parts and into even number of parts.

The programs for A222049, there is no canonical definition to state claims against.
-/

/-! ## A222049.P12855415257397035177

`A222047(n)-A222048(n)`
-/

namespace A222049.P12855415257397035177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222047 n - A222048 n

end

end A222049.P12855415257397035177

/-! ## A222049.P9185054063733016334

`2*A222047(n)-A006128(n)`
-/

namespace A222049.P9185054063733016334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222047 n - A006128 n

end

end A222049.P9185054063733016334

/-! ## A222049.P10421382195766068658

`A006128(n)-2*A222048(n)`
-/

namespace A222049.P10421382195766068658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - 2 * A222048 n

end

end A222049.P10421382195766068658

/-! ## A222049.P11732647737119655737

`A211870(n)+A222044(n)-A222048(n)`
-/

namespace A222049.P11732647737119655737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211870 n + (A222044 n - A222048 n)

end

end A222049.P11732647737119655737

/-! ## A222049.P13873752150180385063

`A222047(n)-(A222045(n)+A211881(n))`
-/

namespace A222049.P13873752150180385063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222047 n - (A222045 n + A211881 n)

end

end A222049.P13873752150180385063

/-!
# A222050: G.f. satisfies: A(x) = sqrt(1 + 2*x*A(x)^4 + 3*x^2*A(x)^6).

The programs for A222050, there is no canonical definition to state claims against.
-/

/-! ## A222050.P16453921494475391000

`A222052(n)/(2*n+1)`
-/

namespace A222050.P16453921494475391000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222052 n : ℚ) / (2 * n + 1 : ℚ)

end

end A222050.P16453921494475391000

/-! ## A222050.P12244930457147093926

`floor(A222052(n)/A005408(n))`
-/

namespace A222050.P12244930457147093926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A222052 n : ℚ) / (A005408 n : ℚ)⌋

end

end A222050.P12244930457147093926

/-!
# A222051: Central terms in rows of triangle A220178.

The programs for A222051, there is no canonical definition to state claims against.
-/

/-! ## A222051.P1961157479356313248

`(2*n+1)*C(2*n, n)*A222050(n)`
-/

namespace A222051.P1961157479356313248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.choose (2 * n) n : ℤ) * A222050 n

end

end A222051.P1961157479356313248

/-! ## A222051.P12943142957765332472

`A000984(n)*A222052(n)`
-/

namespace A222051.P12943142957765332472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A222052 n

end

end A222051.P12943142957765332472

/-! ## A222051.P6442844194791787911

`record[A126869(n)]*A222052(n)`
-/

namespace A222051.P6442844194791787911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A222052 n

end

end A222051.P6442844194791787911

/-! ## A222051.P10597484334945935655

`A001405(2*n)*A222052(n)`
-/

namespace A222051.P10597484334945935655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A222052 n

end

end A222051.P10597484334945935655

/-! ## A222051.P3781071499862014680

`A081668(2*n)*A222052(n)`
-/

namespace A222051.P3781071499862014680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * n) * A222052 n

end

end A222051.P3781071499862014680

/-! ## A222051.P15307068374623849830

`A220178(∑[4*n])`
-/

namespace A222051.P15307068374623849830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220178 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222051.P15307068374623849830

/-!
# A222052: a(n) = A222051(n)/binomial(2*n,n), the central terms in rows of triangle A220178 divided by the central binomial coefficients.

The programs for A222052, there is no canonical definition to state claims against.
-/

/-! ## A222052.P11832697723355471250

`(2*n+1)*A222050(n)`
-/

namespace A222052.P11832697723355471250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A222050 n

end

end A222052.P11832697723355471250

/-! ## A222052.P13221446472311004997

`A222051(n)/C(2*n, n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A222052.P13221446472311004997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222051 n : ℚ) / (Nat.choose (2 * n) n : ℚ)

end

end A222052.P13221446472311004997

/-! ## A222052.P5119839154702544060

`lcm(A005408(n)*A222050(n), A005408(n))`
-/

namespace A222052.P5119839154702544060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005408 n * A222050 n) (A005408 n)

end

end A222052.P5119839154702544060

/-! ## A222052.P16578820581146224799

`A222051(n)/A000984(n)`
-/

namespace A222052.P16578820581146224799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222051 n : ℚ) / (A000984 n : ℚ)

end

end A222052.P16578820581146224799

/-! ## A222052.P5907669310826875024

`A220178(∑[4*n])/A000984(n)`
-/

namespace A222052.P5907669310826875024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220178 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A000984 n : ℚ)

end

end A222052.P5907669310826875024

/-!
# A222055: E.g.f.: exp( Sum_{n>=1} x^(2*n-1) / (n*(2*n-1)) ).

The programs for A222055, there is no canonical definition to state claims against.
-/

/-! ## A222055.P10790747688268551438

`A008621(A334270(n)+A111160(n))`
-/

namespace A222055.P10790747688268551438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A334270 n + A111160 n).toNat

end

end A222055.P10790747688268551438

/-! ## A222055.P11918808358434840343

`A008621(A111160(n)-(1-A334270(n)))`
-/

namespace A222055.P11918808358434840343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A111160 n - (1 - A334270 n)).toNat

end

end A222055.P11918808358434840343

/-! ## A222055.P1047946515315860085

`or(A052126(n+1), A247781(A177483(n)))`
-/

namespace A222055.P1047946515315860085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052126 (n + 1)) (A247781 (A177483 n).toNat)

end

end A222055.P1047946515315860085

/-! ## A222055.P15933793948918260093

`or(A246277(n+1), A247781(A177483(n)))`
-/

namespace A222055.P15933793948918260093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A246277 (n + 1)) (A247781 (A177483 n).toNat)

end

end A222055.P15933793948918260093

/-!
# A222057: Triangle read by rows: coefficients of harmonic-geometric polynomials.

The programs for A222057, there is no canonical definition to state claims against.
-/

/-! ## A222057.P17433378750360747865

`A222060(comp[∑[n]])`
-/

namespace A222057.P17433378750360747865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222060 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A222057.P17433378750360747865

/-! ## A222057.P13669875500183327304

`and(-1, A222060(A014132(n+1)))`
-/

namespace A222057.P13669875500183327304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A222060 (A014132 (n + 1)).toNat)

end

end A222057.P13669875500183327304

/-! ## A222057.P16728760789769874907

`A222060(A014132(n+1))%A020695(n)`
-/

namespace A222057.P16728760789769874907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222060 (A014132 (n + 1)).toNat) (A020695 n)

end

end A222057.P16728760789769874907

/-! ## A222057.P3165993558927610008

`A222060(A014132(n+1))/A158388(n)²`
-/

namespace A222057.P3165993558927610008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222060 (A014132 (n + 1)).toNat : ℚ) / (A158388 n ^ 2 : ℚ)

end

end A222057.P3165993558927610008

/-! ## A222057.P16972081695604356130

`A007318(∑[n])*A222060(A014132(n+1))`
-/

namespace A222057.P16972081695604356130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A222060 (A014132 (n + 1)).toNat

end

end A222057.P16972081695604356130

/-! ## A222057.P16057089641356873965

`A222060(A014132(n+1))+A000007(n+1)`
-/

namespace A222057.P16057089641356873965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222060 (A014132 (n + 1)).toNat + A000007 (n + 1)

end

end A222057.P16057089641356873965

/-! ## A222057.P15074838124833369743

`A000254(A002260(n+1))*A008277(n+1)`
-/

namespace A222057.P15074838124833369743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (A002260 (n + 1)).toNat * A008277 (n + 1)

end

end A222057.P15074838124833369743

/-! ## A222057.P10477476737684821969

`A000254(A002262(n)+1)*A008277(n+1)`
-/

namespace A222057.P10477476737684821969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (A002262 n + 1).toNat * A008277 (n + 1)

end

end A222057.P10477476737684821969

/-! ## A222057.P5516174397793948445

`A222060(A014132(n+1))/A007318(C(2, n))`
-/

namespace A222057.P5516174397793948445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222060 (A014132 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A222057.P5516174397793948445

/-! ## A222057.P18388965403326612049

`A222060(A014132(n+1))+A008683(4*(n+1))`
-/

namespace A222057.P18388965403326612049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222060 (A014132 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A222057.P18388965403326612049

/-!
# A222058: Harmonic-geometric numbers.

The programs for A222058, there is no canonical definition to state claims against.
-/

/-! ## A222058.P7734023229928346760

`A337000(A228050(n+1))-A000262(n)`
-/

namespace A222058.P7734023229928346760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337000 (A228050 (n + 1)).toNat - A000262 n

end

end A222058.P7734023229928346760

/-! ## A222058.P6000938534839071494

`A337000(A308070(n+1))-A000262(n)`
-/

namespace A222058.P6000938534839071494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337000 (A308070 (n + 1)).toNat - A000262 n

end

end A222058.P6000938534839071494

/-!
# A222059: a(n) = n-th harmonic-exponential number, multiplied by n!.

The programs for A222059, there is no canonical definition to state claims against.
-/

/-! ## A222059.P14038665975960783536

`A328163(A000713(n))`
-/

namespace A222059.P14038665975960783536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328163 (A000713 n).toNat

end

end A222059.P14038665975960783536

/-!
# A222060: Triangle read by rows: coefficients of harmonic-geometric polynomials.

The programs for A222060, there is no canonical definition to state claims against.
-/

/-! ## A222060.P16392913108013034638

`A000254(A002262(n))*A048993(n)`
-/

namespace A222060.P16392913108013034638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (A002262 n).toNat * A048993 n

end

end A222060.P16392913108013034638

/-! ## A222060.P2189488020278998319

`A048993(n)*A067176(A112367(n))`
-/

namespace A222060.P2189488020278998319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A067176 (A112367 n).toNat

end

end A222060.P2189488020278998319

/-! ## A222060.P6842119141260835091

`A000254(A329221(n))*A048993(n)`
-/

namespace A222060.P6842119141260835091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (A329221 n).toNat * A048993 n

end

end A222060.P6842119141260835091

/-! ## A222060.P12990613736498057785

`A000254(A025668(n+1))*A048993(n)`
-/

namespace A222060.P12990613736498057785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (A025668 (n + 1)).toNat * A048993 n

end

end A222060.P12990613736498057785

/-! ## A222060.P3727839433023785178

`A131689(n)/A028246(n+1)*A176276(n)`
-/

namespace A222060.P3727839433023785178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131689 n : ℚ) / (A028246 (n + 1) : ℚ) * (A176276 n : ℚ)

end

end A222060.P3727839433023785178

/-!
# A222061: Triangle read by rows: coefficients of second-order hypergeometric-harmonic polynomials.

The programs for A222061, there is no canonical definition to state claims against.
-/

/-! ## A222061.P5426459665950974885

`A001705(A002262(n))*A048993(n)`
-/

namespace A222061.P5426459665950974885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001705 (A002262 n).toNat * A048993 n

end

end A222061.P5426459665950974885

/-! ## A222061.P9782056658933899297

`A001705(A025668(n+1))*A048993(n)`
-/

namespace A222061.P9782056658933899297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001705 (A025668 (n + 1)).toNat * A048993 n

end

end A222061.P9782056658933899297

/-! ## A222061.P2292574514203334343

`A048993(n)*A351290(A166350(n+1))`
-/

namespace A222061.P2292574514203334343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A351290 (A166350 (n + 1)).toNat

end

end A222061.P2292574514203334343

/-! ## A222061.P5482775167644331515

`A151511(n)*A351290(A166350(n+1))`
-/

namespace A222061.P5482775167644331515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151511 n * A351290 (A166350 (n + 1)).toNat

end

end A222061.P5482775167644331515

/-! ## A222061.P2609226736387032422

`and(A101031(n), A132103(A320199(n)))`
-/

namespace A222061.P2609226736387032422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101031 n) (A132103 (A320199 n).toNat)

end

end A222061.P2609226736387032422

/-!
# A222062: a(n) = n-th second-order hypergeometric-harmonic number.

The programs for A222062, there is no canonical definition to state claims against.
-/

/-! ## A222062.P1873503325416081408

`A172476(∑[∑[A192259(n)]])`
-/

namespace A222062.P1873503325416081408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192259 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A222062.P1873503325416081408

/-!
# A222063: Triangle read by rows: coefficients of third-order hypergeometric-harmonic polynomials.

The programs for A222063, there is no canonical definition to state claims against.
-/

/-! ## A222063.P12257119417226774961

`A163094(A224114(n+1)%A348171(n+1))`
-/

namespace A222063.P12257119417226774961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163094 (Int.tmod (A224114 (n + 1)) (A348171 (n + 1))).toNat

end

end A222063.P12257119417226774961

/-!
# A222064: a(n) = n-th third-order hypergeometric-harmonic number.

The programs for A222064, there is no canonical definition to state claims against.
-/

/-! ## A222064.P9735046979561250210

`Δ[A245903(round(sqrt(n²+1)))]`
-/

namespace A222064.P9735046979561250210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245903 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222064.P9735046979561250210

/-!
# A222065: a(n) = A143246(2n).

The programs for A222065, there is no canonical definition to state claims against.
-/

/-! ## A222065.P16918146203798407175

`A143246(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A222065.P16918146203798407175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143246 (2 * (n + 1))

end

end A222065.P16918146203798407175

/-! ## A222065.P9885820513972227121

`record[A143246(n+2)]`
-/

namespace A222065.P9885820513972227121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143246 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222065.P9885820513972227121

/-! ## A222065.P10761494993670230232

`2*A003763(n+1)`
-/

namespace A222065.P10761494993670230232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003763 (n + 1)

end

end A222065.P10761494993670230232

/-! ## A222065.P11331786563138868573

`A003763(n+1)+A003763(A216556(n))`
-/

namespace A222065.P11331786563138868573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003763 (n + 1) + A003763 (A216556 n).toNat

end

end A222065.P11331786563138868573

/-! ## A222065.P4807022033273121452

`A003763(n+1)+A003763(A246095(n+1))`
-/

namespace A222065.P4807022033273121452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003763 (n + 1) + A003763 (A246095 (n + 1)).toNat

end

end A222065.P4807022033273121452

/-!
# A222080: 1 = Sum_{n>=0} a(n) * x^n * (1 - (2*n+1)*x)^2.

The programs for A222080, the canonical program `A222080.P680315458236521643` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222080 has offset 0).

The definition of A222080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222080.P680315458236521643

`2*(2*n-1)*a(n-1)-(2*n-3)²*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A222080

/-- `2*(2*n-1)*a(n-1)-(2*n-3)²*a(n-2)` -/
def P680315458236521643.Spec : Prop :=
  ∀ n, P680315458236521643.a n = A222080 n

theorem P680315458236521643.correct : P680315458236521643.Spec := by
  intro n
  simp only [A222080]

end A222080

/-!
# A222081: Self-convolution equals A222080.

The programs for A222081, there is no canonical definition to state claims against.
-/

/-! ## A222081.P14992608751546046773

`A001953(A128329(n))-A082854(n)`
-/

namespace A222081.P14992608751546046773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 (A128329 n).toNat - A082854 n

end

end A222081.P14992608751546046773

/-! ## A222081.P10144833215091863748

`A184618(A128329(n))-A097508(n)`
-/

namespace A222081.P10144833215091863748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184618 (A128329 n).toNat - A097508 n

end

end A222081.P10144833215091863748

/-!
# A222082: Self-convolution square of A090845.

The programs for A222082, there is no canonical definition to state claims against.
-/

/-! ## A222082.P10383259503676325990

`A090845(comp[A090846(n)])`
-/

namespace A222082.P10383259503676325990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090846 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090845 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A222082.P10383259503676325990

/-! ## A222082.P14646444813169324456

`A090845(eq[0, char[A090846(n)]])`
-/

namespace A222082.P14646444813169324456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090846 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090845 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A222082.P14646444813169324456

/-! ## A222082.P2932841262622068443

`A090845(A198081(n)%A144315(n+1))`
-/

namespace A222082.P2932841262622068443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090845 (Int.tmod (A198081 n) (A144315 (n + 1))).toNat

end

end A222082.P2932841262622068443

/-! ## A222082.P7162246521677168637

`A090845(A198081(n))+A010894(A348219(n+1))`
-/

namespace A222082.P7162246521677168637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090845 (A198081 n).toNat + A010894 ((A348219 (n + 1)).toNat + 21)

end

end A222082.P7162246521677168637

/-!
# A222083: Self-convolution cube of A090845.

The programs for A222083, there is no canonical definition to state claims against.
-/

/-! ## A222083.P16695794116175227938

`A090845(A090846(n))`
-/

namespace A222083.P16695794116175227938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090845 (A090846 n).toNat

end

end A222083.P16695794116175227938

/-! ## A222083.P12336355569345193626

`A174512(Δ[A004858(n+1)²])`
-/

namespace A222083.P12336355569345193626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004858 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174512 (f1 (n + 1) - f1 n).toNat

end

end A222083.P12336355569345193626

/-! ## A222083.P15649981982111143568

`A174512(Δ[A004880(n+1)²])`
-/

namespace A222083.P15649981982111143568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004880 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174512 (f1 (n + 1) - f1 n).toNat

end

end A222083.P15649981982111143568

/-!
# A222084: Number of the least divisors of n whose LCM is equal to n.

The programs for A222084, there is no canonical definition to state claims against.
-/

/-! ## A222084.P15502205663841832217

`A334954(n+1)-A322373(n+1)`
-/

namespace A222084.P15502205663841832217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - A322373 (n + 1)

end

end A222084.P15502205663841832217

/-! ## A222084.P11877208466852294999

`Δ[A006218(n)]+1-A322373(n+1)`
-/

namespace A222084.P11877208466852294999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A322373 (n + 1))

end

end A222084.P11877208466852294999

/-! ## A222084.P15554987135337054279

`A000005(n+1)+1-A322373(n+1)`
-/

namespace A222084.P15554987135337054279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (1 - A322373 (n + 1))

end

end A222084.P15554987135337054279

/-! ## A222084.P2907680750879794295

`A320111(2*(n+1))+1-A322373(n+1)`
-/

namespace A222084.P2907680750879794295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1)) + (1 - A322373 (n + 1))

end

end A222084.P2907680750879794295

/-! ## A222084.P13642859648586772363

`n+2-(A322373(n+1)+A049820(n+1))`
-/

namespace A222084.P13642859648586772363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (A322373 (n + 1) + A049820 (n + 1))

end

end A222084.P13642859648586772363

/-! ## A222084.P8296882251548016817

`A020725(Δ[A006218(n)])-A322373(n+1)`
-/

namespace A222084.P8296882251548016817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (f1 (n + 1) - f1 n).toNat - A322373 (n + 1)

end

end A222084.P8296882251548016817

/-! ## A222084.P884747779786187917

`A000005(A338506(n+1))-A322373(n+1)`
-/

namespace A222084.P884747779786187917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A338506 (n + 1)).toNat - A322373 (n + 1)

end

end A222084.P884747779786187917

/-! ## A222084.P9243486694813370917

`A243987(A034699(n+1)+A000217(n))`
-/

namespace A222084.P9243486694813370917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (A034699 (n + 1) + A000217 n).toNat

end

end A222084.P9243486694813370917

/-!
# A222085: Sum of the least divisors of n whose LCM is equal to n.

The programs for A222085, there is no canonical definition to state claims against.
-/

/-! ## A222085.P9290975316769091663

`A337101(A059117(n)!)+A023888(n+1)`
-/

namespace A222085.P9290975316769091663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (Nat.factorial (A059117 n).toNat) + A023888 (n + 1)

end

end A222085.P9290975316769091663

/-! ## A222085.P6631918028260516950

`A048113(A281446(n))+A023888(n+1)`
-/

namespace A222085.P6631918028260516950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048113 (A281446 n).toNat + A023888 (n + 1)

end

end A222085.P6631918028260516950

/-! ## A222085.P8052346162573431584

`A178637(∑{e}[A260371(n+2)+2, #])+A023889(n+1)`
-/

namespace A222085.P8052346162573431584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260371 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178637 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) + A023889 (n + 1)

end

end A222085.P8052346162573431584

/-! ## A222085.P17105343433090244578

`A178637(∑{e}[2*(A000079(n)+3), #])+A023889(n+1)`
-/

namespace A222085.P17105343433090244578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178637 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) + A023889 (n + 1)

end

end A222085.P17105343433090244578

/-! ## A222085.P16336446602585030362

`A178637(∑{e}[A000079(n+1)+6, #])+A023889(n+1)`
-/

namespace A222085.P16336446602585030362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178637 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) + A023889 (n + 1)

end

end A222085.P16336446602585030362

/-!
# A222087: Numbers n for which A222084(n) = A222084(A222085(n)).

The programs for A222087, there is no canonical definition to state claims against.
-/

/-! ## A222087.P12087631480899390309

`eq[A222084(n+1), A222084(A222085(n+1))]+1`
-/

namespace A222087.P12087631480899390309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222084 (A222085 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A222087.P12087631480899390309

/-!
# A222088: Numbers n for which A222085(n)=A222085(n+1).

The programs for A222088, there is no canonical definition to state claims against.
-/

/-! ## A222088.P7673347801209031452

`eq[A222085(n+1), A222085(n+2)]+1`
-/

namespace A222088.P7673347801209031452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222085 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A222088.P7673347801209031452

/-!
# A222089: Where records occur in A222084.

The programs for A222089, there is no canonical definition to state claims against.
-/

/-! ## A222089.P2655106896804683659

`A114810(A395812(n+2))`
-/

namespace A222089.P2655106896804683659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114810 (A395812 (n + 2)).toNat

end

end A222089.P2655106896804683659

/-! ## A222089.P5209823546901845386

`record[A003958(A323307(n+1))]`
-/

namespace A222089.P5209823546901845386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A323307 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222089.P5209823546901845386

/-! ## A222089.P9159525857869641008

`record[A212119(n+1)*A261360(n)]`
-/

namespace A222089.P9159525857869641008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212119 (n + 1) * A261360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222089.P9159525857869641008

/-! ## A222089.P16119323378528424143

`record[A000010(A211956(∑[∑{p}[n+1, gcd(n, #)]]))]`
-/

namespace A222089.P16119323378528424143
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.gcd n p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A211956 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222089.P16119323378528424143

/-!
# A222090: Number of n X 2 arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out left turns.

The programs for A222090, there is no canonical definition to state claims against.
-/

/-! ## A222090.P9012051221759607263

`A222093(∑[n+2])`
-/

namespace A222090.P9012051221759607263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222090.P9012051221759607263

/-! ## A222090.P14106096822577797619

`record[A222093(A198455(n+1))]`
-/

namespace A222090.P14106096822577797619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222090.P14106096822577797619

/-! ## A222090.P4659885465224624483

`record[A222093(A000096(val(n+1, 2)+1))]`
-/

namespace A222090.P4659885465224624483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222090.P4659885465224624483

/-! ## A222090.P8007912895759287635

`A222093(A000096(n+1))+A025466(n)`
-/

namespace A222090.P8007912895759287635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (A000096 (n + 1)).toNat + A025466 n

end

end A222090.P8007912895759287635

/-! ## A222090.P10821363077053754915

`A222093(A000096(n+1))%A222091(n+1)`
-/

namespace A222090.P10821363077053754915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222093 (A000096 (n + 1)).toNat) (A222091 (n + 1))

end

end A222090.P10821363077053754915

/-!
# A222091: Number of nX3 arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out left turns.

The programs for A222091, there is no canonical definition to state claims against.
-/

/-! ## A222091.P11955963382261606572

`A222093(∑[n+3]+1)`
-/

namespace A222091.P11955963382261606572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222091.P11955963382261606572

/-!
# A222092: Number of nX4 arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out left turns.

The programs for A222092, there is no canonical definition to state claims against.
-/

/-! ## A222092.P2277679560153352010

`A222093(A141214(n+1))`
-/

namespace A222092.P2277679560153352010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (A141214 (n + 1)).toNat

end

end A222092.P2277679560153352010

/-! ## A222092.P13719491964237203297

`A222093(A027379(n+2))`
-/

namespace A222092.P13719491964237203297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (A027379 (n + 2)).toNat

end

end A222092.P13719491964237203297

/-! ## A222092.P14045119268181710348

`A222093(A055998(n+2))`
-/

namespace A222092.P14045119268181710348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (A055998 (n + 2)).toNat

end

end A222092.P14045119268181710348

/-!
# A222093: T(n,k)=Number of nXk arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out left turns.

The programs for A222093, there is no canonical definition to state claims against.
-/

/-! ## A222093.P3314934960143618479

`A221001(n+1)+A037912(A084507(n))`
-/

namespace A222093.P3314934960143618479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221001 (n + 1) + A037912 (A084507 n).toNat

end

end A222093.P3314934960143618479

/-! ## A222093.P11404817133240133045

`A221001(n+1)+A037912(A181442(n))`
-/

namespace A222093.P11404817133240133045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221001 (n + 1) + A037912 (A181442 n).toNat

end

end A222093.P11404817133240133045

/-! ## A222093.P7837949225190067372

`A221001(n+1)+A010894(A315335(n))`
-/

namespace A222093.P7837949225190067372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221001 (n + 1) + A010894 ((A315335 n).toNat + 21)

end

end A222093.P7837949225190067372

/-! ## A222093.P4144228161888289599

`A221001(n+1)+A056974(A318813(n+1))`
-/

namespace A222093.P4144228161888289599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221001 (n + 1) + A056974 (A318813 (n + 1)).toNat

end

end A222093.P4144228161888289599

/-!
# A222094: Number of 2 X n arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out left turns.

The programs for A222094, there is no canonical definition to state claims against.
-/

/-! ## A222094.P2669113899006189883

`A222093(∑[n+1]+2)`
-/

namespace A222094.P2669113899006189883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222094.P2669113899006189883

/-! ## A222094.P16546324770497128986

`record[A222093(A114091(n+1)+1)]`
-/

namespace A222094.P16546324770497128986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222094.P16546324770497128986

/-! ## A222094.P3029975225182303112

`record[A222093(A166017(n+1)+1)]`
-/

namespace A222094.P3029975225182303112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (A166017 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222094.P3029975225182303112

/-! ## A222094.P16275357203178750186

`record[A222093(A286235(n+1)+1)]`
-/

namespace A222094.P16275357203178750186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222094.P16275357203178750186

/-! ## A222094.P8150951848512991610

`record[A010054(n)*A222093(n+2)]`
-/

namespace A222094.P8150951848512991610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A222093 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222094.P8150951848512991610

/-!
# A222095: Number of 3Xn arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out left turns.

The programs for A222095, there is no canonical definition to state claims against.
-/

/-! ## A222095.P915048842949569840

`A222093(∑[n+2]+4)`
-/

namespace A222095.P915048842949569840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222095.P915048842949569840

/-! ## A222095.P9520327718055020076

`record[A222093(A286099(n)+4)]`
-/

namespace A222095.P9520327718055020076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (A286099 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222095.P9520327718055020076

/-! ## A222095.P5246570859820482160

`record[root(A222093(n+4), A125172(n+1))]`
-/

namespace A222095.P5246570859820482160
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A222093 (n + 4) : ℝ) ^ (1 / (A125172 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222095.P5246570859820482160

/-! ## A222095.P3008573696603772907

`A222093(A167614(n+1))+A025466(n)`
-/

namespace A222095.P3008573696603772907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (A167614 (n + 1)).toNat + A025466 n

end

end A222095.P3008573696603772907

/-! ## A222095.P5177925519981897919

`A222093(A167614(n+1))+A025469(n)`
-/

namespace A222095.P5177925519981897919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (A167614 (n + 1)).toNat + A025469 n

end

end A222095.P5177925519981897919

/-!
# A222096: Number of 4Xn arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out left turns.

The programs for A222096, there is no canonical definition to state claims against.
-/

/-! ## A222096.P6134099921942239468

`A222093(A141214(n)+7)`
-/

namespace A222096.P6134099921942239468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (A141214 n + 7).toNat

end

end A222096.P6134099921942239468

/-! ## A222096.P14769478565762246378

`A222093(A052905(n)+9)`
-/

namespace A222096.P14769478565762246378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (A052905 n + 9).toNat

end

end A222096.P14769478565762246378

/-! ## A222096.P3018648344090782298

`A222093(A055999(n)+10)`
-/

namespace A222096.P3018648344090782298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (A055999 n + 10).toNat

end

end A222096.P3018648344090782298

/-! ## A222096.P5127963878532609250

`A222093(eq[5, A066657(n)])`
-/

namespace A222096.P5127963878532609250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222096.P5127963878532609250

/-!
# A222097: Number of n X n 0..5 arrays with entries increasing mod 6 by 0, 1, 2 or 3 rightwards and downwards, starting with upper left zero.

The programs for A222097, there is no canonical definition to state claims against.
-/

/-! ## A222097.P7558621568580507953

`A222104((n+1)²+n²)`
-/

namespace A222097.P7558621568580507953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222104 ((n + 1) ^ 2 + n ^ 2)

end

end A222097.P7558621568580507953

/-!
# A222098: Number of n X 2 0..5 arrays with entries increasing mod 6 by 0, 1, 2 or 3 rightwards and downwards, starting with upper left zero.

The programs for A222098, there is no canonical definition to state claims against.
-/

/-! ## A222098.P8841709365752565706

`ogf((4-6x)/(1-13x+17x^2))`
-/

namespace A222098.P8841709365752565706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6] [1, -13, 17] n

end

end A222098.P8841709365752565706

/-! ## A222098.P508502255713395353

`13*a(n-1)-17*a(n-2)` with `a(0)=4, a(1)=46`
-/

namespace A222098.P508502255713395353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 46] fun n a =>
  13 * a (n - 1) - 17 * a (n - 2)

end

end A222098.P508502255713395353

/-! ## A222098.P4576388238367857550

`A222104(∑[n+1]+2)`
-/

namespace A222098.P4576388238367857550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222104 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222098.P4576388238367857550

/-! ## A222098.P11419544770353157150

`record[root(A222104(n+2), A004739(2*n+1))]`
-/

namespace A222098.P11419544770353157150
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A222104 (n + 2) : ℝ) ^ (1 / (A004739 (2 * n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222098.P11419544770353157150

/-! ## A222098.P10489524345647017875

`record[root(A222104(n+2), A258709(n+1))]`
-/

namespace A222098.P10489524345647017875
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A222104 (n + 2) : ℝ) ^ (1 / (A258709 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222098.P10489524345647017875

/-!
# A222099: Number of n X 3 0..5 arrays with entries increasing mod 6 by 0, 1, 2 or 3 rightwards and downwards, starting with upper left zero.

The programs for A222099, there is no canonical definition to state claims against.
-/

/-! ## A222099.P567059525360854110

`A222104(∑[n+2]+4)`
-/

namespace A222099.P567059525360854110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222104 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222099.P567059525360854110

/-! ## A222099.P9005671115390322781

`lcm(2, A222104(A167614(n+1)))`
-/

namespace A222099.P9005671115390322781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A222104 (A167614 (n + 1)).toNat)

end

end A222099.P9005671115390322781

/-! ## A222099.P17532246286330470615

`A276183(n+1)+A222104(A167614(n+1))`
-/

namespace A222099.P17532246286330470615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (n + 1) + A222104 (A167614 (n + 1)).toNat

end

end A222099.P17532246286330470615

/-! ## A222099.P3900333664405327420

`A222104(A167614(n+1))%A222100(n+1)`
-/

namespace A222099.P3900333664405327420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222104 (A167614 (n + 1)).toNat) (A222100 (n + 1))

end

end A222099.P3900333664405327420

/-! ## A222099.P12164181295883271776

`record[A222104(A198464(n+1))]`
-/

namespace A222099.P12164181295883271776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222104 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222099.P12164181295883271776

